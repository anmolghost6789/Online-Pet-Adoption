Pet Adoption Website
This is a pet adoption website built using Java Servlets and JSP. The project allows users to register, log in, view pet profiles, and adopt pets. It also features a user management system and allows users to upload photos of pets available for adoption.

Prerequisites
Java 11
Apache Maven
MySQL
Setup
Clone the repository:

sh
Copy code
git clone <repository-url>
cd petadoption
Configure the database:

Create a MySQL database and update the database connection details in the JdbcUserDao.java and JdbcPetDao.java files.

Build the project:

sh
Copy code
mvn clean install
Deploy the WAR file:

Deploy the generated petadoption.war file located in the target directory to your servlet container (e.g., Apache Tomcat).

Running the Application
Start your servlet container (e.g., Apache Tomcat).

Access the application:

Open your web browser and navigate to http://localhost:8080/petadoption.

Project Components
Servlets
LoginServlet: Handles user login.
RegisterServlet: Handles user registration.
PetServlet: Handles pet information and adoption requests.
ContactServlet: Handles customer service contact form submissions.



JSP Pages
login.jsp: Login page for users.
register.jsp: Registration page for new users.
success.jsp: Page displayed after successful registration.
pet_list.jsp: Displays a list of pets available for adoption.
pet_details.jsp: Displays detailed information and photos of individual pets.
adopt_success.jsp: Displays after a user successfully adopts a pet.
error.jsp: Error page for invalid operations.
contact.jsp: Page for users to contact customer service.


Configuration
web.xml: Servlet configuration and mappings.


Dependencies
JUnit: For unit testing.
MySQL Connector: For database connectivity.
Java Servlet API: For servlet support.
Apache Commons FileUpload: For handling file uploads (e.g., pet photos).


Features
User Registration and Login: Allows users to register and log in to the system.
Pet Profiles: Users can view and adopt pets listed on the website.
Photo Upload: Users can upload photos of pets they want to put up for adoption.
Customer Support: Contact customer service for assistance.
Pet Adoption: Users can select and adopt pets, and track their adoption status.


Future Enhancements
Admin Panel: Admins can manage pet listings, view adoption status, and manage users.
Search Functionality: Users can search for pets based on breed, age, and other criteria.
User Reviews: Users can leave feedback or reviews for pets they've adopted.
Pet Donation: Allow users to donate for pet care and adoption support.