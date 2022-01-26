# CaseStudy
- The Project Name: StayFit
- Project Description: it is a fitness web. there two groups of people on the web: trainers and users. Visitors must can tell the app their roles when they first visiting the app. 

How to load the project: 
- Open Eclipse JEE and import this projerct as Maven project.
- You need to execute the "stay_fit.sql" file from the "sql" folder in your mysqlworkbench. there will be two database table. one for the users and the other one are for trainers.
- Open "persistence-mysql.properties," and make change to "jdbc.url","jdbc.user,""jdbc.passowrd" value according to your mysql database port setting.
- In eclipse, run the project on Tomcat server.  

Website description with screenshots:
- When the visitor first open the web, it will ask for their role: user or admin
![Start Page](https://user-images.githubusercontent.com/98332973/150824959-6ccb1097-8cf3-455f-937b-f5f50805907b.JPG)

- User Login page, if the user doesn't have a account. Click "Don't have a account?" to create a user account
![User Login](https://user-images.githubusercontent.com/98332973/150823000-c44f7e60-33c2-400e-b9b2-627b28b53269.JPG)

- User Registration
![User Registration](https://user-images.githubusercontent.com/98332973/150823011-04a14a39-93e5-4e66-9f21-1f4b1e073a4f.JPG)

- if visior is the admin (the only admin for now- username:seanchi  password: admin). This login process is implemented by Spring security
![Admin Login](https://user-images.githubusercontent.com/98332973/150822872-d06ab29f-eed1-42be-9847-dba83f7fe74d.JPG)

- if the admin logged in successfully, it will be dircrted to trainer data manager page, where admin can change trainers data information. Change trainers' training course, training video or add a new trainer to the database.
![Trainer List](https://user-images.githubusercontent.com/98332973/150822958-a088615a-16f7-4272-9198-176bc4574067.JPG)

- updating existing trainer data, delete a trainer
![Trainer Updating](https://user-images.githubusercontent.com/98332973/150822966-3c2db2cd-ca42-4b26-a06d-b783165a849b.JPG)

- create a trainer
![Create Trainer](https://user-images.githubusercontent.com/98332973/150822904-d675cda8-2558-4d91-8c0a-26e6e4194cc9.JPG)

-after the user have logged in successfully, it will be directed to the main page
![Home Page](https://user-images.githubusercontent.com/98332973/150822936-423d9d80-bb9e-42de-9614-2e0f96908ceb.JPG)

-navgigation at the upper right corner to access to the differnt part of the web
![Navi Bar](https://user-images.githubusercontent.com/98332973/150822947-0185901b-3b44-4c6a-85ae-d02bb6fa53a6.JPG)

- users can see all trainers' contact information
![Trainers Information](https://user-images.githubusercontent.com/98332973/150822972-a2de35c1-0a7d-4c91-88d7-6fae70e6cbde.JPG)

- users can send message to us, and making a donation(currently support paypal)
![Contact and Donation](https://user-images.githubusercontent.com/98332973/150822887-44acb466-f5d3-4197-b2ba-bd7540bb10b1.JPG)

-the web read through each trainer's youtube video link saved in their databse, and show them to the user.
![Training Youtube Video](https://user-images.githubusercontent.com/98332973/150822984-71b058bd-e2b5-41b5-866e-5ac795c03e63.JPG)

-to Make the project restful, thre is @Restcontroller class under com.seanchi.stayfit.rest package. i have tested it with Postman:
http://localhost:8080/stayfit/restapi/getTrainers
http://localhost:8080/stayfit/restapi/getUser
http://localhost:8080/stayfit/restapi/getTrainers/2
![getTrainersREST](https://user-images.githubusercontent.com/98332973/151127979-ffcb266e-83e8-48bb-841d-a720aa43ae68.JPG)
![GetUsersRest](https://user-images.githubusercontent.com/98332973/151127996-f90f78db-2cb8-4c14-89ca-753cd83738f0.JPG)
![GetOneTrainerREST](https://user-images.githubusercontent.com/98332973/151128007-b85a126f-189d-451b-bb75-5124328b9059.JPG)
