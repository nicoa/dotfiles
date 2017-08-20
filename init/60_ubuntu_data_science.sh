# Ubuntu-only stuff. Abort if not Ubuntu.
is_ubuntu || return 1

# install rstudio server and local
sudo apt-get install gdebi-core
wget https://download2.rstudio.org/rstudio-server-1.0.153-amd64.deb
sudo gdebi rstudio-server-1.0.153-amd64.deb


if is_ubuntu_desktop; then
  wget https://download2.rstudio.org/rstudio-xenial-1.0.153-amd64.deb
  sudo gdebi rstudio-xenial-1.0.153-amd64.deb
fi

# installing anaconda2 from <https://www.continuum.io/downloads>:
wget https://repo.continuum.io/archive/Anaconda2-4.4.0-Linux-x86_64.sh
bash Anaconda2-4.4.0-Linux-x86_64.sh
conda update conda
conda update anaconda
conda create --name legacy python=2 pandas numpy scipy seaborn
conda install jupyter
conda install cython
conda install MKL
