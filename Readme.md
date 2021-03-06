# Stop Nvidia In Arch And Manjaro

## For Discrete Nvidia GPU 

-  **This is for when you want to stop Nvidia GPU in your Arch/Manjaro Linux completely** 


- I am using Dell G3 (Nvidia Geforce GTX 1050) 

- This Guide will tell you how to make the contents of this repo run on startup so that you will not have to run it again and again on bootup . 

- This method will increase battery performance .
- Also any lag and bootup issues will also be fixed after doing this .
- You can download the same bash script from [The arch wiki](https://wiki.archlinux.org/index.php/Hybrid_graphics#Fully_Power_Down_Discrete_GPU "arch wiki")
- **You can use either of the methods . The Recommended one is by using the DisableNvidia.sh .**
## Steps If You Use DisableNvidia.sh ::


- After cloning , go to the downloaded folder .
- Open a terminal there.
- Enter the following  in the terminal ::
  >chmod +x DisableNvidia.sh

- To run the script just enter this :: 
  > ./DisableNvidia.sh

- You will be asked to enter your password and once you enter it your Nvidia GPU will be disabled permanently . 
    
- You should see something like [this](images/systemctlstatus.png) .



## Steps If You Don't Want To Use DisableNvidia.sh ::
- After cloning the files , copy the **StopNvidiaInArch.sh**  to /usr/bin/ 
- Now Make this file executable
- To Make Any file executable just do this  **chmod +x filename** . In This Case :
 > chmod +x StopNvidiaInArch.sh 
 - Now We have To Create and enable a systemd service 
 - To Do this Just Copy The File You Have Downloaded(Name of File is **StopNvidiaInArch.service**) To the directory /etc/systemd/system/   
 
 - Now you Just have to enable the service on startup . To do that just enter the following commands.
 > sudo systemctl enable StopNvidiaInArch.service
 - Output for the above command will be :  
 > Created symlink /etc/systemd/system/multi-user.target.wants/StopNvidiaInArch.service → /etc/systemd/system/StopNvidiaInArch.service.

- To start it right now  
> sudo systemctl start StopNvidiaInArch.service
 - To check the status of the service 
 > sudo systemctl status StopNvidiaInArch.service
- **Output Of status**
![systemctlstatus](images/systemctlstatus.png)


## Reference List

- https://wiki.archlinux.org/index.php/Hybrid_graphics#Fully_Power_Down_Discrete_GPU
- https://wiki.archlinux.org/index.php/NVIDIA_Optimus
- https://wiki.archlinux.org/index.php/Systemd
- https://raw.githubusercontent.com/mkottman/acpi_call/master/examples/turn_off_gpu.sh

## Pull Request Welcomed





 
