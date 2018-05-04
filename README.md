# VuforiaTest
An AR testproject for the Hackathon 2018.

### How to setup Vuforia for your own project: 

1. Download **Unity 2017.4** or later and make sure to check the Vuforia checkbox in the Download Manager.
2. Create a new project.
3. Create an **AR Camera** by going to **Gameobject > Vuforia > AR Camera**. Install the assets Unity wants you to.
4. Go to **PlayerSettings** and activate **Vuforia Augumented Reality** in the **XR Settings**. Accept the Terms of Service.
5. Open your webbrowser and visit the Vuforia website.
6. **Create account:** https://developer.vuforia.com/vui/auth/register or **LogIn:** https://developer.vuforia.com/vui/auth/login
7. Press **Get Development Key** and create a key.
8. Press on the new listed Key and copy its code.
9. Go back to Unity, click on the **VuforiaConfiguration** file in **Assets > Resources** and paste the Development-Key code.
10. Back to your webbrowser, visit the **Target Manager** on the Vuforia website: https://developer.vuforia.com/targetmanager/project/checkDeviceProjectsCreated?dataRequestedForUserId=
11. Press **Add Database** and create a new database. **Important**: Set the **type** to **device**.
12. Press on the new listed Database and click the **Add Target** button.
13. First you select what kind of object your **AR object** is. In most cases it's an image. **Important**: That doesn't mean the GameObject in Unity has to be an image too. It only defines what Vuforia is looking for in real life.
14. Select the image file from your computer and define the size of it. **Important**: This affects the size of the image in Unity later and should be about the same size as the GameObject we want to project on it.
15. Finally name it and add it to the database.
16. Now it is listed and has a star rating. Make sure the used image has a star rating of at least 3, or otherwise it might not work properly.
17. Press the **Download Database (All)** button and select **Unity Editor** as the development platform.
18. Go back to Unity and import the unitypackage downloaded from the Vuforia website.
19. Select the **Vuforia Configuration** file again. At the **Databases** dropdown, check and activate the freshly added database and uncheck the other databases, since they are not needed.
20. Create an ImageTarget by going to **Gameobject > Vuforia > Image**.
21. Click on the new ImageTarget in your **Hierarchy** and look for the **Image Target Behaviour (Script)** in the **Inspector**.
22. Set the **type** to **Predefined**, the **Database** to the one you created and the **Image Target** to the one you created.
23. Finally, place any GameObject as a child onto the ImageTarget in the hierarchy and test it by going into PlayMode.

### Enjoy!
