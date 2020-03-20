# Stop Nvidia In Arch And Manjaro

## For Discrete Nvidia GPU 

-  Note : This is For when you want to stop Nvidia GPU on your Arch/Manjaro Linux completely


- I Am Using Dell G3 (Nvidia Geforce Gtx 1050) 

- This Guide will Tell You How To Make The contents of this repo  run on startup so that you will not have to run it again and again on bootup . 

- This method will increase battery performance .
- Also any lag and bootup issues will also be fixed after doing this .
- You can download the same bash script from [The arch wiki](https://wiki.archlinux.org/index.php/Hybrid_graphics#Fully_Power_Down_Discrete_GPU "arch wiki")

## Steps::
- After cloning the files , copy the **StopNvidiaInArch.sh**  to /usr/bin/ 
- Now Make this file executable
- To Make Any file executable just do this  **chmod +x filename** . In This Case :
 > chmod +x StopNvidiaInArch.sh 
 - Now We have To Create and enable a systemd service 
 - To Do this Just Copy The File You Have Downloaded(Name of File is **StopNvidiaInArch.service**) To the directory /etc/systemd/system/   
 
 - Now you Just have to enable the service on startup . To do that just enter the following commands.
 > sudo systemctl enable StopNvidiaInArch.service 
- To start it right now just enter 
 > sudo systemctl start StopNvidiaInArch.service 
 - To check The status of the service 
 > sudo systemctl status StopNvidiaInArch.service

## Reference List

- https://wiki.archlinux.org/index.php/Hybrid_graphics#Fully_Power_Down_Discrete_GPU
- https://wiki.archlinux.org/index.php/NVIDIA_Optimus
- https://wiki.archlinux.org/index.php/Systemd
- https://raw.githubusercontent.com/mkottman/acpi_call/master/examples/turn_off_gpu.sh







 
