README
======================================

This is a simple utility to backup all the repositories in your GitHub organization. 

Dependencies
======================================
python 3

How to use
======================================
Use the below command manually or in an automated fashion to get the backups.

> python3 -m gitback -o <your_github_orgname> -d git_backup -t <base64_encoded_github_pat> --shallow

This will create a folder called git_backup in the current folder for cloning all git repos followed by a dated archive folder to archive adaily backups in tar.gz format.