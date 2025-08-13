#!/usr/bin/env python3
import subprocess

def ping_host(ip):
    result = subprocess.run(
        ['ping', '-c', '1', ip],
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL
    )
    return result.returncode == 0

def main():
    ips = ["192.168.32.199", "192.168.32.32", "84.15.149.227 "]  

    for ip in ips:
        if ping_host(ip):
            print(f" {ip}")
        else:
            print(f" ")

if __name__ == "__main__":
    main()

