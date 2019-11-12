# VEX BP CLAIM
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

VEX BP CLAIM is a simple bash script made by Honest Mining to claim block producer 
and voting rewards on [Vexanium](https://vexanium.com) blockchain.  

Honest Mining is a staking as a service company that runs multiple blockchain 
validators. More information on [honestmining.com](https://honestmining.com/).

Use VEX BP CLAIM
=================

1.  The `vex-bp-claim.sh` script should run on all Linux based systems
2.  Please ensure the `vex-bp-claim.sh` script is located in the same location as cleos
3.  Use `crontab` to run this process every hour, e.g. 
```
0 * * * * ./home/foo/vex-bp-claim.sh
```
4.  You can check the claim result using the log file (default name for the log file is claim_log.txt)

Authors
=======

Vex BP Claim was made by [@HonestMining](https://github.com/honestmining) engineering team.

License
=======

GNU General Public License v3.0

See [COPYING](COPYING) to see the full text.

