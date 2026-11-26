"""Verify effective permissions in a freshly merged Android manifest.

Run after building, passing the merged manifest XML as the only argument.
The source manifest is intentionally rejected: it cannot reveal permissions
contributed by plugins and native dependencies.
"""
import argparse
from pathlib import Path
import xml.etree.ElementTree as ET

ANDROID = '{http://schemas.android.com/apk/res/android}'
TOOLS = '{http://schemas.android.com/tools}'
REQUIRED_PERMISSIONS = {
    'android.permission.INTERNET',
    'android.permission.ACCESS_NETWORK_STATE',
    'android.permission.FOREGROUND_SERVICE',
    'android.permission.FOREGROUND_SERVICE_DATA_SYNC',
    'android.permission.FOREGROUND_SERVICE_MEDIA_PROCESSING',
    'android.permission.POST_NOTIFICATIONS',
    'android.permission.VIBRATE',
    'android.permission.WAKE_LOCK',
    'android.permission.RECEIVE_BOOT_COMPLETED',
    'com.mostafa.sensei.kuymo.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION',
}


def verify(path: Path) -> set[str]:
    root = ET.parse(path).getroot()
    permissions = set()
    for node in root:
        if node.tag not in {'uses-permission', 'uses-permission-sdk-23'}:
            continue
        if any(key.startswith(TOOLS) for key in node.attrib):
            raise ValueError('Pass a merged manifest, not the source manifest')
        permissions.add(node.attrib[ANDROID + 'name'])
    unexpected = permissions - REQUIRED_PERMISSIONS
    missing = REQUIRED_PERMISSIONS - permissions
    if unexpected or missing:
        raise ValueError(
            f'Unexpected permissions: {sorted(unexpected)}; '
            f'missing required permissions: {sorted(missing)}'
        )
    return permissions


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('manifest', type=Path)
    args = parser.parse_args()
    try:
        permissions = verify(args.manifest)
    except (OSError, ET.ParseError, ValueError) as error:
        parser.exit(1, f'{error}\n')
    print(f'Android permissions verified ({len(permissions)}): {args.manifest}')


if __name__ == '__main__':
    main()
