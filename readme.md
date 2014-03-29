## ios Udemy Feeder

This is a true opportunity to create an iOS application from nothing. A really basic knowledge of any programming language is required, and the forum is opened for any question you may have. Instead of trying to put a lot of material from different areas, we are using the tools that exist on the internet, that will make our life simpler. Creating an application can be really expensive. Depending on the source, creating an app can be extremely expensive if you don't have the knowledge ([You can read this article](http://thenextweb.com/dd/2013/11/24/much-cost-develop-app-true-expense-starting-scratch/?utm_source=Facebook&utm_medium=share%20button&awesm=tnw.to_qBLM&utm_campaign=social%20media&utm_content=How%20much%20does%20it%20cost%20to%20develop%20an%20app?%20The%20true%20price%20of%20starting%20from%20scratch)). So, why don't you give a shot at this course and try to create your own application instead of expending a lot of money. 

### What is the content of this course?

This course covers 3 different areas at some extend. Mainly we will talk about Objective-C (iOS native Language), but we will also cover the integration with the back-end substitute **Parse**. We will use it to create a Sign Up form and we will also use the **Facebook API** to give the opportunity to the users to Sing In using its **Facebook** account. In addition, we will use **ESPN API** to get the latest news on the market from different sports and display on the general screen. We will create a Profile section where the user can upload a *Profile Picture* to be identified. Finally, we will beautify the application using **Sketch** a popular (and relatively cheap alternative to Photoshop) design program used in Mobile and Web Development. You can find a detailed explanation in the next section.

+ Prerequisites
	+ Basic commands of the Terminal
	+ Download and install Git
	+ Download XCode
	+ Basic Git commands
	+ Clone the Repository of this course on your computer
+ Setting up your project
	+ Create a project using XCode
	+ Making the first commit to Github
	+ Analyzing the files on the projects
	+ Analyzing the tools of XCode
	+ Using Story Boards
	+ Differences between `viewDidLoad`, `viewWillAppear`, and `viewDidAppear`.
	+ How to map different Key Shortcuts
+ Using basic elements
	+ Creation and configuration of UILabels
	+ Using `Attributes Inspector` to get the properties of UI Elements
	+ Linking elements on the `Story Boards` to elements on the code
	+ Changing the text of UILabels from code
	+ Creating UIButtons (Code and drag-and-drop)
	+ Linking actions to an UIButton
	+ Changing text of the UILabel using a UIButton
+ Using elements that need delegates
	+ Introduction to UITextFields
	+ Finding information for elements in XCode
	+ Connecting delegates
	+ Username and Password
	+ Selecting correct Keyboards depending of your inputs
	+ Actions and text of the Return Key
	+ Using UISwitch
+ iOS Elements
	+ NSUserDefaults
	+ Import and use external frameworks ([ProgressHUD](https://github.com/relatedcode/ProgressHUD))



### Prerequisites

We will need a couple of things before we can start actually coding. 

#### Requirements

- Computer with Mac OS X (newer is best, it should run the latest version of Mavericks)
- RAM: in case your RAM Memory is 2Gb or bellow, I would recommend you to upgrade. You can do it yourself and it is really cheap (is not needed, you will need to wait a little bit more)
- iOS Development License (not required until you want to put your app on the App Store or test your app in a real device, in this course we will only use the simulator)
- Git (I will explain what it is and how to install it)
- XCode: you can get it with your Apple username/password (the one you use to download apps on your iPhone)
- Github/Bitbucket account

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
#### Installing XCode

Go to your `Applications` open `App Store`, search for XCode and download it. It might take a while, also you should have at least 2.5 GB of free space on your hard disk.



