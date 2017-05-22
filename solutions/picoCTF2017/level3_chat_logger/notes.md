Chat Logger
===========

Instructions
-----------

You've been given admin access to the chat logs for our organization to help clean up the language. See if you can get a shell on shell2017.picoctf.com:15044.


Hints
-----

- You should make some chat room log files to run this program locally.
- Learning about [ptmalloc2](https://sploitfun.wordpress.com/2015/02/10/understanding-glibc-malloc/) might help. glibc uses a modified version of it.
- Bear in mind that fopen allocates memory and fclose frees it.


Analysis
--------

* Usage of `realloc` to resize chat_message
* Nb core on shell2017 : 2 
* Nb Arena max : 16 (8 * 2 cores)
