## ios Udemy Feeder

This is a true opportunity to create an iOS application from nothing. A really basic knowledge of any programming language is required, and the forum is opened for any question you may have. Instead of trying to put a lot of material from different areas, we are using the tools that exist on the internet, that will make our life simpler. Creating an application can be really expensive. Depending on the source, creating an app can be extremely expensive if you don't have the knowledge ([You can read this article](http://thenextweb.com/dd/2013/11/24/much-cost-develop-app-true-expense-starting-scratch/?utm_source=Facebook&utm_medium=share%20button&awesm=tnw.to_qBLM&utm_campaign=social%20media&utm_content=How%20much%20does%20it%20cost%20to%20develop%20an%20app?%20The%20true%20price%20of%20starting%20from%20scratch)). So, why don't you give a shot at this course and try to create your own application instead of expending a lot of money. 

### Prerequisites

We will need a couple of things before we can start actually coding. 

#### Requirements

- Computer with Mac OS X (newer is best, it should run the latest version of Mavericks)
- RAM: in case your RAM Memory is 2Gb or bellow, I would recommend you to upgrade. You can do it yourself and it is really cheap (is not needed, you will need to wait a little bit more)
- iOS Development License (not required until you want to put your app on the App Store or test your app in a real device, in this course we will only use the simulator)
- Git (I will explain what it is and how to install it)
- XCode: you can get it with your Apple username/password (the one you use to download apps on your iPhone)
- XCode command line tools (I will tell you how to install this)

### Let's start with the pre-requisites

#### Install Git

There are couple of ways to download the files. In fact, one of the popular ways to install a package in the developer community (that uses Mac OS) is to use brew (Homebrew). In case you want to experiment a little bit follow this [link](http://brew.sh/). The second approach (and the one I recommend for beginners) is basically download the files and install it as a regular package, just follow this [link](http://git-scm.com/download/mac) to install it. After the installation, you need to check everything worked well. Go to your `Applications`, open `Terminal` and write `which git`; you should see something like `/usr/bin/git`.

#### Git Ignore

The Git Ignore is a reference to a file called `.gitignore` that basically commands git to not update the files contained in this file. If you notice the name of the file (`.gitignore`) starts with a dot, which is not an error, is an indication that the file is a hidden file. In case you want to see hidden files, you should use special commands on your terminal, such as `ls -alF`. In case you are not familiar with the terminal commands, we will make a quick tutorial so you can ramp up. You can file the information of the file here:

```bash
# Xcode
build/*
*.pbxuser
!default.pbxuser
*.mode1v3
!default.mode1v3
*.mode2v3
!default.mode2v3
*.perspectivev3
!default.perspectivev3
*.xcworkspace
!default.xcworkspace
xcuserdata
profile
*.moved-aside
DerivedData
```