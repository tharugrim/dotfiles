#-----------------------------------------------------
# Helper functions for switching gpu and starting Xorg
#-----------------------------------------------------
startx-int() {
    sudo systemctl start vgaswitcheroo.service
    sudo rm /etc/X11/xorg.conf
    startx
}

startx-ext()
{
    sudo systemctl stop vgaswitcheroo.service
    sudo cp /etc/X11/xorg.conf.monitor /etc/X11/xorg.conf
    startx

}



