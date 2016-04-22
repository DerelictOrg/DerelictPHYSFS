DerelictPHYSFS
==============

A dynamic binding to version 2.1 of the [PhysicsFS][1] library for the D Programming Language.

Please see the pages [Building and Linking Derelict][2] and [Using Derelict][3], in the Derelict documentation, for information on how to build DerelictPHYSFS and load PhysicsFS at run time. In the meantime, here's some sample code.

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
[2]: http://derelictorg.github.io/compiling.html
[3]: http://derelictorg.github.io/using.html