# Computing at Stanford
In this lesson, we're going to talk about how to access the various computing resources at Stanford. Specifically we will talk about:
1. Connecting to Wifi
2. Two-Factor Authentication
3. Stanford Computing Clusters
4. Your website
5. Miscellaneous Resources

## Connecting to Wifi 
If you haven't done this already, the first thing you will probably want to do is connect to the Wifi at Stanford. 
There are a few different networks on campus with different purposes:
* Stanford Visitor - Open to anyone, accept agreement to connect
* Stanford - General network, requires SUID login
* Stanford Secure - Secure network, requires installing Stanford security configuration
* Eduroam - For people visiting campus, you can use at other universities
* Stanford Residences - Use in residences

I recommend using Stanford or Stanford Secure, but some people use Stanford Visitor because there is no login or software involved. For now, try connecting to Stanford Visitor or Stanford and you can try connecting to Stanford Secure after class, since that requires some more work. This link will give you information about all of the networks: 
https://uit.stanford.edu/service/wirelessnet

## Two-Factor Authentication
When you log onto most Stanford services, you will need to use two-factor authentication to log in. This website gives the information on how to set everything up: https://uit.stanford.edu/service/authentication/twostep

To summarize, you can put in your phone number to set up the following methods of authentication:
1. Duo Mobile push notification
2. Duo Mobile passcode
3. Phone call
4. SMS text message

While all of these methods work, I strongly recommend getting the Duo Mobile app on your phone, as I find the push notifications the easiest and most consistent because they do not require typing in a code or phone service.

## Cluster Computing
### What is cluster computing?
A computer cluster is a group of computers that can be accessed by a group of users. Such systems are used by universities and companies in order to give access to a limited number of software licenses, more efficiently distribute computing power, and to make it easier to manage the organizations computing resources. In a compute cluster, a group of users can remotely access a group of computers. A cluster consists of **login nodes** and **compute nodes**. Login nodes are the nodes that invidual users connect to to edit files, compile code, submit jobs to the compute nodes, and do light post-processing. Since only light work is done on login nodes, they are less powerful than compute nodes. When you connect to a cluster, you will be put onto the least used login node to do these things. Since multiple users could be on the same login node at once, you are only allowed to do light work, so that the system is functional for all users. Compute nodes are more powerful computers used primarily for tasks requiring more power than everyday tasks. To use a compute node, a user submits a **job** to a **scheduler** which then determines how to assign users to compute nodes. Some examples of job schedulers are SLURM and PBS. When requesting a job, you can specify the number of nodes to user, amount of time needed, what specific types of computers to use, and many other options. Since these computers are assigned to individual users and are designed to only be used for computing, there are very few background processes running, allowing the hardware to be used most efficiently. In general, most jobs just run the programs you give them automatically when the scheduler assigns you to a group of nodes, but you can also request interactive jobs as well if you wish to use an interactive program, like Matlab or Paraview. In addition to all of these uses, some clusters are just used as a convinient way for an organization to allow access to a wide range of software to its users. For example, Stanford has a limited number of MATLAB licenses, so it gives students access to them through a cluster.

### Clusters at Stanford
In this section we will introduce the different computing clusters at Stanford and more depth on Farmshare in particular. This section will use some amount of Unix, which will be covered in greater detail in a later section.
The information about most of the clusters can be found at https://srcc.stanford.edu/services-systems-overview but an overview of the most commonly used clusters:
* Farmshare 2
  * https://srcc.stanford.edu/farmshare2
  * Open to all students, faculty, and staff
  * Used for coursework, research, and accessing university software
  * 14 login nodes, 5 96 GB compute nodes, 2 787 GB compute nodes, 10 128 GB compute nodes with NVIDIA Tesla K40
  * Access to AFS
* Sherlock
  * https://srcc.stanford.edu/private/sherlock2
  * Main research cluster accessible by all faculty
  * Faculty can obtain use allocations on both shared and private resources
  * 1325 compute nodes, 24096 cores, 1195 GPUs
* ICME GPU Cluster
  * https://icme.stanford.edu/resources/hpc-compute-resources/icme-cluster
  * Accessible to anyone at Stanford by request
  * Usable for researtch requiring GPUs
  * 288 CPU core, 10 NVIDIA Tesla K80s, 1.2 TB
* HPCC Clusters
  * https://hpcc.stanford.edu/
  * School of Engineering access by faculty request
  * Used for research and specific courses
  * CPU, GPU, and KNL Clusters
* Other Clusters
  * XStream GPU Cluster
  * Stanford Genomics Clusters
  * Population Health Sciences
  
### Farmshare  
As I said before, Farmshare is a cluster open to everyone at Stanford that can be used for pretty much anything from coursework to research. Additionally, it can be used to access Stanford software. Withing Farmshare, there are three server types:
* *rice* - Login nodes for running smaller programs, accessing files, and submitting jobs.
* *wheat* - Compute nodes with more CPU power and memory.
* *oats* - GPU compute nodes.

### Connecting to Farmshare via SSH

### Farmshare software
Farmshare is how the university distributes access to a variety of software. The list of software can be found at https://srcc.stanford.edu/farmshare2/software or by using the `module avail` command in the terminal. Some of the highlights include:
* Anaconda
* ANSYS
* cmake
* CUDA
* emacs, vim, nano
* GNU and Intel Compilers
* Julia
* Mathematica
* MATLAB
* OpenFOAM
* R
* Stata
* Torch

To access any of these programs, use `module load [name of module]` to load the module, and then use the name of the command to run the program. Access to many of these programs is also available on the computers in the libraries around campus, like the Turman Engineering Library in Huang.

### AFS
https://afs.stanford.edu/
AFS stands for Andrew File System. 
It is an internal file system that you can use to store files that is accessible from Farmshare. 
For general file storing, I would use Box or Drive.
Putting files in the WWW folder makes them accessible from your website. index.html will function as this. 
stanford.edu/~[your suid]

### Submitting jobs on Farmshare via SLURM

## Miscellaneous Resources
* Stanford library catalogue: http://library.stanford.edu/
* Accessing library resources off campus: http://library.stanford.edu/using/connecting-e-resources
* Stanford Software Licensing: https://uit.stanford.edu/service/softwarelic
* Stanford Box: https://uit.stanford.edu/service/box
* Stanford Slack: https://uit.stanford.edu/service/slack
* Stanford Google Drive: https://uit.stanford.edu/service/gsuite/drive
* Stanford Email: http://webmail.stanford.edu
* Stanford course evaluations: http://carta.stanford.edu
* Stanford VPN: https://uit.stanford.edu/service/vpn
* Stanford Mailing Lists: https://uit.stanford.edu/service/mailinglists/tools
* Stanford email lookup: https://stanfordwho.stanford.edu/SWApp/
* Stanford course information: https://explorecourses.stanford.edu/
* School of Engineering printing: https://soeithelp.stanford.edu/hc/en-us/articles/226558888-Add-CanonMFD-Secured-Unsecured-Print-Queue-for-Windows

