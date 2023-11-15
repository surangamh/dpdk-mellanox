#!/usr/bin/env bash
#
# (C) Copyright 2019, Xilinx, Inc.
#
#!/usr/bin/env bash

#install_dpdk() {
#    cp /proj/octfpga-PG0/tools/Mellanox/dpdk.sh /tmp
#    /tmp/dpdk.sh
#}
install_mlnx_drivers() {
    echo "Installing Mellanox drivers"
    sudo /proj/octfpga-PG0/tools/Mellanox/MLNX_OFED_LINUX-5.8-3.0.7.0-ubuntu20.04-x86_64/mlnxofedinstall --dpdk --upstream-libs --force
    sudo /proj/octfpga-PG0/tools/Mellanox/mlnx-en-5.8-3.0.7.0-ubuntu20.04-x86_64/install --dpdk --upstream-libs --force
}

#install_mlnx_drivers
#SCRIPTNAME=$0
#GENIUSER=`geni-get user_urn | awk -F+ '{print $4}'`
#if [ $? -ne 0 ]; then
#    echo "ERROR: could not run geni-get user_urn!"
#    exit 1
#fi
#if [ $USER != $GENIUSER ]; then
#    sudo -u $GENIUSER $SCRIPTNAME
#    exit $?
#fi
#echo "Home directory:"
#HOMEDIR="/users/$USER"
#echo "$HOMEDIR"

#install_dpdk
cp /proj/octfpga-PG0/tools/Mellanox/dpdk.sh $HOMEDIR
#sudo -u $USER $HOMEDIR/dpdk.sh
#echo "Done running startup script."
exit 0   
