# Lab 13

**Lightsail**

- The Linux terminal operations via Lightsail seem pretty similar to what I've experienced on my Ubuntu Lab setup and VMs.  

- The versatility of being able to access a cloud VM from anywhere is useful to me as an Ops student because it has the potential to allow me to access a custom toolbox I creat from any terminal setting I want at any time.

- The security implications of having a computer system that can be accessed from anywhere are pretty stark.  In some ways it opens up a lot of vulnerabilities that would not be present in a system that is only accessible from a local network.  However, it also allows for a lot of flexibility in terms of being able to access a system from anywhere.  I think the security implications are worth the tradeoff in this case.  Having a strong key pair is also critical and still presents a pretty difficult barrier to entry for anyone trying to access the system.

- The only indication I ccould see that this was an AWS hosted computer is Amazon EC2 listed as the system manufacturer.

![lab13-1](media/lab13-1.png)
![lab13-2](media/lab13-2.png)
![lab13-3](media/lab13-3.png)
![lab13-4](media/lab13-4.png)
![lab13-5](media/lab13-5.png)
![lab13-6](media/lab13-6.png)
![lab13-7](media/lab13-7.png)
![lab13-8](media/lab13-8.png)

**AWS EC2**
- Build a Solution
  - Launch a Virtual Machine (with EC2)
  - Windows Server 2022 Base
  - t2.micro (free tier)
  - create new key pair (openSSH)
  - Allow RDP from My IP (for now)
  - Launch Instance
  - Login to instance via RDP
![lab13-9](media/lab13-9.png)
![lab13-10](media/lab13-10.png)