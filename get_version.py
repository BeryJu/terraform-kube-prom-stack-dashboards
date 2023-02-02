"""Get new version"""
import subprocess

latest_tag = subprocess.getoutput("git describe --abbrev=0 --tags").strip()
major, minor = latest_tag.split(".")
minor = int(minor) + 1
print(f"{major}.{minor}")
