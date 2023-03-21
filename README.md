## Robot Framework installation

# Windows
1. Go to https://www.python.org/downloads/ download and install Python [Windows][Mac]
2. Recheck Python install success with command python –version or python -v [Windows][Mac]
3. Install pip
```
sudo easy_install pip3
```
4. Open a command and run the below command
```
pip3 install robotframework
```
recheck install success with
```
robot --version
```
5. Upgrade the pip with the below command
```
python -m pip3 install -U pip3
```
6. Install seleniumlibrary
```
pip3 install robotframework-seleniumlibrary
```
7. Configure Environment Variables After installing Python and pip, you should configure environment variables by adding the path

- Go to System - > Advanced System Settings - > Advanced - > Environment Variables
- In the System variable window, find the Path variable and click Edit

<img width="428" alt="Screen Shot 2566-03-21 at 23 13 15" src="https://user-images.githubusercontent.com/102522906/226671168-e9ac8980-810b-4afc-bef6-3bcc2e38ba48.png">

Position your cursor at the end of the Variable value line and add the path to the python.exe file, preceded with the semicolon character (;). In our example, we have added the following value: ;C:\Python34

<img width="491" alt="Screen Shot 2566-03-21 at 23 13 26" src="https://user-images.githubusercontent.com/102522906/226671442-25136524-f2a6-4715-8897-73612df338d7.png">

# Mac
1. Go to https://www.python.org/downloads/ download and install Python [Windows][Mac]
2. Recheck Python install success with command python –version or python -v [Windows][Mac]
3. Install pip
```
sudo easy_install pip3
```
4. Open a command and run the below command
```
pip3 install robotframework
```
recheck install success with
```
robot --version
```
5. Upgrade the pip with the below command
```
python -m pip3 install -U pip3
```
6. Install seleniumlibrary
```
pip3 install robotframework-seleniumlibrary
```
7. Go to https://chromedriver.chromium.org/downloads for adding Chrome Driver
8. Go to Terminal and input a command 
```
where python
```
- or click folder Go>Go to folder>/usr/local/bin

9. Go to Python folder and copy chromedriver file into the folder
<img width="615" alt="Screen Shot 2566-03-21 at 23 26 34" src="https://user-images.githubusercontent.com/102522906/226675737-ccf77b0e-ea4b-423d-be83-fdf558c61c92.png">


# Install VSCode [Windows][Mac]

1. Download and install VS code https://code.visualstudio.com/ [Windows][Mac]
2. Go to View>Extensions and add Robot Framework Intellisense

![Screen Shot 2566-03-21 at 23 17 33](https://user-images.githubusercontent.com/102522906/226673853-afa42908-ab8d-4a9b-9710-f2c3e210b2f9.png)
