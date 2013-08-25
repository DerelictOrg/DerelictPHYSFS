DerelictPHYSFS
==============

A dynamic binding to the [PhysicsFS](http://icculus.org/physfs/) library for the D Programming Language.

For information on how to build DerelictPHYSFS and link it with your programs, please see the post [Building and Using Packages in DerelictOrg](http://dblog.aldacron.net/forum/index.php?topic=841.0) at the Derelict forums.

For information on how to load the PhysicsFS library via DerelictPHYSFS, see the page [DerelictUtil for Users](https://github.com/DerelictOrg/DerelictUtil/wiki/DerelictUtil-for-Users) at the DerelictUtil Wiki. In the meantime, here's some sample code.

```D
import derelict.physfs.physfs;

void main() {
    // Load the PhysicsFS library.
    DerelictPHYSFS.load();
    
    // Now PhysicsFS functions can be called.
    ...
}
``` 
