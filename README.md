Mockrates
============

This is a clone of the Dev Bootcamp Socrates system. It was completed with 2 other students at Dev Bootcamp in week 6.

PLEASE NOTE: the app is still in development.

Directions for testing
---------------------
- login using these creds: 
  - email: rguerrettaz@yahoo.com
  - pass: admin1234
- Click the create a challenge in navbar. Now create a challenge using markdown
- Create another challenge. This time create it using the interactive feature. To do so follow these directions:
 - paste the following into the content box ``` For this exercise you will need to create a method in ruby called "add" which takes to integers as arguments and returns the sum of the two integers```
 - After you click the interactive checkbox paste this test into the text box ```add(5, 7) == 12```
 - The above is a test, if the user writes the method correctly the test will pass, if not an error message is shown
 - If you follow the next step you can see this in action
- To complete a challenge click the "Challenges" tab in navbar. From this page choose a challenge. Once on challenge page click start challenge. Click submit challenge. Now navigate back to the Challenges tab and you will see your gravitar in the "Submitted?" column. Pretty cool right!???...
- Now lets test the dual login
- Login another user with the below creds:
  - email: jameshamilton@gmail.com
  - pass: dbc
- Now that 2 are logged in, navigate to a new challenge and start/submit the challenge. Navigate back to challenges page. You should now see the gravitars for both users showing up in the "Submitted?" column
- Now this one is pretty fun. Let's test the SQL designer. First click on the sql designer tab in the navbar. Once navigated to the page you can play around a bit with "add table" and "add field". 
 - For the full experience, copy the code from this gist: https://gist.github.com/rguerrettaz/c52e1e49d005ad18bdfd.  Now click the 'Save / Load' button from SQL Designer. A box will popup. Paste the xml you just copied into the left box and click "Load XML"... If everything worked properly you should see a schema which you can now play with. 

NOTE: The ux may not be intuitive to an outsider because of the nature of the Dev Bootcamp Socrates system. The system is designed to be used by boots and instructors, who get on-boarded. 

History
------------------

- Built in 3 days by 3 developers
- Still a WIP (currently seeding db, cleaning up ux/ui a bit, and squashing bugs)
- Is a clone of the dev bootcamp socrates system: http://socrates.devbootcamp.com/login
- features include:
  * Dual login (for paired programming)
  - Dual submittal of challenges 
  - SQL Designer integration (interactive visual schema designer)
  - Create challenges using markdown (only if you're an admin )
  - Github oauth integration
  - Github Gist creation when challenge started
  - interactive challenges (like codeschool  or codecademy) - these let you know if you got the problem right or wrong.
  - etc. 




As stated this is still a WIP. The list of current issues is here: 
https://docs.google.com/spreadsheet/ccc?key=0AsTAOdugtWrHdE01RkxYcFZoQ09jN0d0VU15c29ZN1E#gid=0
