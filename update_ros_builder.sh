# add ppa to download python 3.6
sudo apt install -f --reinstall python3-minimal
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa

# download python 3.6
sudo apt-get update
sudo apt-get install python3.6

# unlink python3 + relink to 3.6
# Unlink the python3 command
sudo unlink /usr/bin/python3

# Link to python3.10 binary
sudo ln -s /usr/bin/python3.6 /usr/bin/python3

# setup catkin tools from source
sudo apt-get install python3-setuptools
sudo apt-get install python3-pip
cd ~/mfp_workspace/src/catkin_tools
pip3 install -r requirements.txt --upgrade
sudo python3 setup.py install --record install_manifest.txt

# clean old workspace
cd ~/mfp_workspace
catkin clean -b