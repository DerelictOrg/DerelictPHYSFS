DerelictPHYSFS
==============

A dynamic binding to the [PhysicsFS][1] library for the D Programming Language.

For information on how to build DerelictPHYSFS and link it with your programs, please see the post [Using Derelict][2] at The One With D.

For information on how to load the PhysicsFS library via DerelictPHYSFS, see the page [DerelictUtil for Users][3] at the DerelictUtil Wiki. In the meantime, here's some sample code.

```D
import derelict.physfs.physfs;

void main() {
    // Load the PhysicsFS library.
    DerelictPHYSFS.load();
    
    // Now PhysicsFS functions can be called.
    ...
}
``` 
[1]: http://icculus.org/physfs/
[2]: http://dblog.aldacron.net/derelict-help/using-derelict/
[3]: https://github.com/DerelictOrg/DerelictUtil/wiki/DerelictUtil-for-Users