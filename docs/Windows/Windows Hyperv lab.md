---
tags:
  - tech/windows/hyperv
---

# Hyper-V Lab

## HYPER-V MANAGER
All of the below configuration will be done in the Hyper-V Manager. This application will be automatically installed when enabling Hyper-V in the above steps. To open it, open that start menu and locate Hyper-V Manager.

### VIRTUAL SWITCH CONFIGURATION
We will need to create two virtual network switches that will be used within the lab. An External switch that will be connected to the gateway virtual machine enabling the lab to have internet access, and a Private switch that will be connected to the gateway virtual machine as well as all other virtual machines in the lab enabling communication between the virtual machines.

#### EXTERNAL VIRTUAL NETWORK SWITCH
1. Open Hyper-V Manager and press Virtual Switch Manager in the left hand pane

2. Select New Virtual Network Switch

3. Select External and then press Create Virtual Switch

4. Name the switch `lab-switch-wan`

5. Under connection type, select External Network and then select the correct network adapter that is used to connect the host workstation to the network

6. Press Apply to finish creating the External network switch.

#### PRIVATE VIRTUAL NETWORK SWITCH
1. Open Hyper-V Manager and press Virtual Switch Manager in the left hand pane

2. Select New Virtual Network Switch

3. Select Private and then press Create Virtual Switch

4. Name the switch `lab-switch-lan`

5. Under connection type, select Private Network

6. Press Apply to finish creating the External network switch.

### VIRTUAL MACHINE CONFIGURATION

#### INSTALLING THE GATEWAY (PFSENSE)
Now the virtual network switches have been created, we can start to setup the virtual machines. The first virtual machine we need to setup is the gateway appliance. In this guide we are going to use pfSense, but other router and firewall combo appliances will work fine if you know how to set them up.

1. Open Hyper-V Manager and press New in the left hand pane and then select Virtual Machine

2. Select Next on the Before You Begin wizard page

3. Give the virtual machine a name of `FW01` and press Next

4. Select Generation 1 and press Next

5. Enter `1024` for the Startup Memory, and unselect Use Dynamic Memory and then press Next

6. For the networking, select `lab-switch-wan` and then press Next

7. Change the size of the virtual hard disk to `20` GB and press Next

8. Select Install an operating system from a bootable CD/DVD-ROM and then press Browse

9. Locate and select the pfSense iso file that you previously downloaded and then press Next

10. Press Finish to create the virtual machine

11. Right-click the virtual machine and press Settings

12. Under Processor, change the Number of Virtual Processors to `1`

13. Under Checkpoints, unselect Use Automatic Checkpoints and press Apply and then OK

14. Double-click the virtual machine and then press Start to start the virtual machine

 > The virtual machine should automatically boot into the pfSense installation media

15. After the virtual machine has launched into the install media for pfSense, select Enter to accept the Copyright` and Distribution notice

16. Select Enter on Install (Install pfSense)

17. Scroll down and select the correct keyboard layout and then press Enter and then press the UP arrow and then Enter on the Continue with selected keymap

18. Press Enter on Auto (ZFS)

19. Press Enter on Install

20. Press Enter on Stripe (Stripe - No Redundancy)

21. Press Space to select the virtual disk, and then press Enter

22. Press the Left arrow to highlight Yes, and then press Enter to confirm the virtual disk will be reformatted

23. The install will now start

24. After the install has finished, press Enter on No to any manual configuration modifications

25. Press Enter to reboot the virtual machine

26. Close the virtual machine connection window

27. Right-click the virtual machine and press Settings

28. Under IDE Controller 1, DVD Drive, change Media from Image File to None, and then press Apply and then OK

29. Right-click the virtual machine and press Reset

30. Double-click the virtual machine to open the connection window

31. It should automatically start the boot from the virtual drive and start the second configuration stage

32. When it asks to configure VLANs, press `N` and then Enter

33. Enter the name of the interface you want to use for the WAN connection, it should be `hn0` and the press Enter

34. Press Enter to skip the LAN interface assignment

35. Press `Y` and then Enter to confirm interface assignments

36. Close the virtual machine connection window

37. Right-click the virtual machine and press Shutdown and then wait for the virtual machine to shutdown

38. Right-click the virtual machine and press Settings

39. Select Add Hardware, then select Network Adapter, and then press Add

40. Under Virtual Switch, select `lab-switch-lan` and press Apply and then OK

41. Double-click the virtual machine and then press Start to start the virtual machine

42. When the virtual machine has booted, select Assign Interfaces by pressing `1` and then Enter

42. Press `N` and then Enter to not setup VLANs

44. For the WAN interface name, Enter `hn0` and press Enter

45. For the LAN interface name, Enter `hn1` and press Enter

46. Check assignment and then press `Y` and then press Enter to proceed

47. Now we need to set the LAN interface IP address by pressing `2` and then Enter to Enter into the IP assignment wizard

48. Press `2` and then Enter to configure the hn1 interface

49. Enter the IP address you want to set for the gateway (example: `10.0.0.254`) and then press Enter

50. Enter the subnet mask bit count (example: `24`) and then press Enter

51. Press Enter to skip the upstream gateway address

52. Press Enter to skip the IPv6 IP address assignment

53. Press `N` and then Enter to bypass the DHCP setup

> This guide assumes you are going to setup DHCP on one of the Windows servers within the lab environment. If you are not going that, you can follow the DHCP setup wizard by pressing `Y` and then Enter.

54. Press `Y` and then Enter to revert the HTTP webConfigurator protocol

55. Once the config has been applied, press Enter to continue

You can now close the virtual machine connection window as no further configuration needs to be done on the pfSense gateway.

### INSTALLING THE VIRTUAL LAB SERVERS
You can now start creating the servers that for your virtual lab. The only thing you need to make sure you do is when you are creating the virtual machine, when it asks what networking connection to use, make sure you select `lab-switch-lan`.

## References
https://www.dannymoran.com/hyper-v-lab/



