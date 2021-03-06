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
	+ Import internal framework (Security)
	+ Use Keychains to store password and username ([KeyChainItemWrapper](https://github.com/jeremangnr/JNKeychain))
	+ NSUserDefaults to store preferences
	+ Import and use external frameworks ([ProgressHUD](https://github.com/relatedcode/ProgressHUD))
	+ NSGestureRecognizers to dismiss the Keyboard


### Before we can start

We will need a couple of things before we can start actually coding. 

#### Requirements

- Computer with Mac OS X (newer is best, it should run the latest version of Mavericks)
- RAM: in case your RAM Memory is 2Gb or bellow, I would recommend you to upgrade. You can do it yourself and it is really cheap (is not needed, you will need to wait a little bit more)
- iOS Development License (not required until you want to put your app on the App Store or test your app in a real device, in this course we will only use the simulator)
- Git (I will explain what it is and how to install it)
- XCode: you can get it with your Apple username/password (the one you use to download apps on your iPhone)
- Github/Bitbucket account

### Let's start with the pre-requisites

#### Basic commands for `Terminal`

Before you read this section, you should now that **this is optional*, you can perfectly go to the finder and do this process on any *IDE* you like. However, if you are getting serious about software developmente, you will realize `bash` is one of the best tools you will find.

The first step here would be to open the terminal. In cas you are a more advanced user I recommend you go to the [iterm](http://www.iterm2.com/#downloads) site and download the app. Once you have your terminal opened, you can a couple of commands. The first one is `pwd`; you should see as a result, where you are in your File System. Another useful command is `ls`, which basically lists all the files on the current folder (use `pwd` to understand where you are positioned). Most of the commands accept extra options, to see what are the available options you can simple go and type `man ls`. For example, I want to list all the files, check the permissions for each one of the files, realize if there are folders or files and also see the hidden files. Based on the command `man ls` I will type `ls -alF`, and see a different result. 

To create a folder the command is `mkdir folderName` (you put any name you like instead of folderName). For changing to a different folder you simple put `cd folderName`. If you want to create a file, there are different ways to do it, the simpler one would be `touch fileName.extension`. Another way to do it is `nano fileName.extension`, with this instruction you will be able to enter the `fileName` and put some content on it. You surely can use different commands like `vi fileName.extension`, use whatever is more comfortable for you. Finally, in case you have installed **Sublime Text Editor**, you can use the command `sublime fileName.extension` or `subl fileName.extension` depending of your case. You can use different text Editors such as [**Atom.io**](http://atom.io), [**Text Wrangler**](http://www.barebones.com/products/textwrangler/download.html), or the pre installed **TextEdit** on your Mac.

Let's try to solve the next scenario: I would like to go to my `Documents` folder, create a folder named `Udemy`, create a file named .gitignore and put the content on the section *Git Ignore* on the next sub section. After doing that, you will like to check that the file exists and contains the information. Finally you will remove the file `Udemy` from your system.

##### Solution

+ `cd ~/Documents/`: it goes to your user's Document folder
+ `mkdir Udemy`: creates the folder `Udemy`
+ `nano .gitignore`: creates and enter the name 
+ `copy and paste`: copy the content of the next sub section and paste it on the .gitignore file
+ Press **ctrl + o** to save the file
+ Press **ctrl + x** to exit the *edit mode*
+ `ls -alF`: to show hidden files
+ `cat .gitignore`: to show the content of the file
+ `cd ..`: to go to the upper hierarchy on your File System
+ `rm -rf Udemy`: remove recursively the files of your `Udemy` folder 

**Tip:** you can tab to *autocomplete* the file name

#### Install Git

There are couple of ways to download the files. In fact, one of the popular ways to install a package in the developer community (that uses Mac OS) is to use brew (Homebrew). In case you want to experiment a little bit follow this [link](http://brew.sh/). The second approach (and the one I recommend for beginners) is basically download the files and install it as a regular package, just follow this [link](http://git-scm.com/download/mac) to install it. After the installation, you need to check everything worked well. Go to your `Applications`, open `Terminal` and write `which git`; you should see something like `/usr/bin/git`.

#### Installing XCode

Go to your `Applications` open `App Store`, search for XCode and download it. It might take a while, also you should have at least 2.5 GB of free space on your hard disk.

### Setting up your project

#### How to create a project

Right now we will start using the tools to put some code into our project. The first step would be to enter your `Applications` and open `XCode`. The first thing you will select is what kind of project you want to create. For this part you will select a *Single View Application*, after that you will simply need to fill the *Product Name*, the *Class Prefix*, and select the device you want (*iPhone* for this course). 

#### Analyzing the files on the projects

An important part of XCode is the top bar. It contains information that we will use very often and you should get familiar with it. First of all, you can have 3 vertical segments on your screen. The right vertical screen is called **Navigator**, basically because it contains all your files of your project. Please be sure you have selected the folder icon and the triangle is pointing down, so you can see the structure of your project. The central vertical space is for different things and can have differente arrangements; the way in which is mainly used is to visualize files/story board. Finally, the right vertical element called **Utilities** is regularly used to get extra information of the elements selected on the main panel (central vertical element). You can hide or show each of these vertical panels simply by clicking the icons on the top right bar as shown on the image.

![Image](readmeImages/TopBar.png)

#### Analyzing the tools of XCode

On you **Navigation** panel, select the file Main.storyboard under your project name's folder. You should see an empty iPhone screen, please select it. Open the **Utilities** window and select the third icon on the bottom part (a cube). You can scroll down and see all the elements that you can simply drag and drop.

![Image](readmeImages/UtilitiesBar.png)

#### Putting the Progress HUD into working

Here it is the code:

```objective-c
[MRProgressOverlayView showOverlayAddedTo:self.view title:@"Success" mode:MRProgressOverlayViewModeCheckmark animated:YES];
[self.view performBlock:^(void){[MRProgressOverlayView dismissAllOverlaysForView:self.view animated:YES];} afterDelay:2];
```

#### Blocks

Here it is the perform block:

```objective-c
// Category

/* * * * * * * * * * * * * * * * *
 * Header File
 * * * * * * * * * * * * * * * * */

- (void)performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay;

/* * * * * * * * * * * * * * * * *
 * Implementation File
 * * * * * * * * * * * * * * * * */

- (void)performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay {
    int64_t delta = (int64_t)(1.0e9 * delay);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, delta), dispatch_get_main_queue(), block);
}
```

#### JNKeychainWrapper

A lot of alternatives out there, I selected this one. You can try any one you like. You can visit this [page](https://github.com/jeremangnr/JNKeychain) to get all the files needed for this.

```objective-c
    [JNKeychain saveValue:self.textPassword.text forKey:@"password"];
    [JNKeychain saveValue:self.textUsername.text forKey:@"username"];
    NSLog(@"username %@, and password: %@", [JNKeychain loadValueForKey:@"username"], [JNKeychain loadValueForKey:@"password"]);
```



<!-- #### Making your first commit to github

You will need to create an account to [bitbucket](http://bitbucket.org) or [github](http://www.github.com); for this course we will use **Github**, basing my decision in the fact that all the code should be available for the students taking the course. When you create your account on Github, the next step is to **Create a new repository**; you can see the image:

![New Repository](readmeImages/CreateRepoGithub.png)


After that, you will simple put any name you like on your repository. For this moment **do not select** initialize with readme or the license. After you are done instructions should appear on the webpage.

![Github Instructions](readmeImages/GithubInstructions.png)

Now that you have your instructions and the url of your project ready, we can use the `Terminal` to go to the project and open it 

```bash
$ cd path/To/The/Folder/You/Want
$ git add .
$ git commit -m "First commit or any message you like"
$ git remote add origin https://github.com/**yourUserName**/**theNameOfYour**.git
$ git push -u origin master
``` -->

