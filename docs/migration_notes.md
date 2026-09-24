# R1 Perimeter Migration Log

## 2026-09-12: Cloud Sync Issues
BGP session to AWS is flapping. Need to check the MTU size on the IPSec tunnel. I suspect the FortiGate is dropping fragmented packets again.

## 2026-09-15: Compliance Audit (Ugh)

Removed credential hints as per Security Policy #404



*Note to self: Don't forget to rotate the SSH keys next month.*