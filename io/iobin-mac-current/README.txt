Io Language for Mac OS X
Binary provided by the iobin project, http://iobin.suspended-chord.info/
-->Jacob Peck

These binaries are provided with absolutely ZERO warranty.
Use at your own risk.
-----

*NOTE* Your user account must have a password set for this installer to work.

Instructions:
0) If you're upgrading from the 20111111 release, please run the following commands
   to ensure that you're ready to go:
   
   sudo rm -rf /usr/bin/io /usr/bin/io_static
   sudo rm -rf /usr/lib/libbasekit.dylib /usr/lib/libcoroutine.dylib /usr/lib/libgarbagecollector.dylib /usr/lib/libiovmall.dylib
   sudo rm -rf /usr/lib/io
   
1) Extract the .dmg from the downloaded file.
2) Open the .dmg.
3) Within the .dmg, open IoLanguage-xxxx-Mac.pkg.  This will start a guided 
   installer.  Follow the prompts, providing your password when necessary (Io 
   is installed into system directories, and needs temporary root privileges).
4) Open a terminal (Applications -> Utilities -> Terminal) and run the following 
   command:

io

4a) If you have the following error (or one similar to it):

dyld: unknown required load command 0x80000022
Trace/ BPT Trap

    Then you need to run the included fixio.sh script to fix your binaries.  
    The binaries included with this installer were compiled on 10.6.3, and 
    tag their architecture incorrectly on 10.5 (Leopard) systems.  This script 
    tells your system which architecture to run the io binaries with.
  
    Extract the fixio.sh script to your home directory (~/), and then run the 
    following commands:

chmod +x fixio.sh
sudo ./fixio.sh

    This will prompt you for your password.  What this script does is rename
    the binaries and insert small wrapper scripts in their place which sets
    the architecture correctly (hopefully).  Test Io again by running:
  
io

    and hope for success.  Note that this script will have to be re-run every 
    time you update Io from the iobin project.

5) Enjoy!

~20120302
