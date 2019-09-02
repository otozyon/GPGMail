GPGMail
=======

GPGMail is a plugin for OS X's Mail.app, which let's you  
send and receive secure, OpenPGP encrypted and signed messages.

This is a build without the License Activation.

Prerequisite
------------

Install the GPG Tools Package from the GPG Tools Website.

Build
-----

#### Clone this repository
```bash
git clone https://github.com/otozyon/GPGMail.git
cd GPGMail
```

#### Grab Dependencies

```bash
cd Dependencies
git clone https://github.com/GPGTools/Libmacgpg.git
make
cd ..
```

#### Build
```bash
make
```

#### Install
Quit `Mail.app` and then copy `build/Release/GPGMail.mailbundle` to `/Library/Mail/Bundles/`.

Start `Mail.app`, go to `Preferences > General > Manage Plugins` and choose `GPGMail.mailbundle` and then `Apply and Restart Mail`.


System Requirements
-------------------

* Libmacgpg
* GnuPG
