import boto3
import os
import sys

def backup_perimeter_configs():
    s3 = boto3.client('s3')
    bucket_name = 'bluenet-infra-backups'
    backup_path = '/etc/cisco/running-config.bak'
    
    if os.path.exists(backup_path):
        print("[+] Syncing R1 configs to Cloud...")
        s3.upload_file(backup_path, bucket_name, 'r1_latest.bak')
    else:
        print("[-] Config file not found. Check permissions.")
        sys.exit(1)

if __name__ == "__main__":
    backup_perimeter_configs()