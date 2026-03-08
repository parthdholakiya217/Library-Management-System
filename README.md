# 📚 Library Management System

A web-based **Library Management System** developed using **Java, JSP, Servlets, JDBC, and MySQL**.  
This application allows an admin to manage students, books, book issuing, and returning efficiently.

---

## 🚀 Features

- 🔐 Admin Login & Logout
- 👨‍🎓 Add, Update, Delete Students
- 📖 Add, Update, Delete Books
- 📤 Issue Books to Students
- 📥 Return Books
- 📊 View Issued Books List
- ⚠️ Error handling for:
  - Invalid Student ID
  - Invalid Book ID
  - Book not available
  - Invalid Issue Transaction ID
  - Book already returned
- 📉 Book quantity automatically updates when issuing and returning books

---

## 🛠️ Technologies Used

- Java
- JSP (Java Server Pages)
- Servlets
- JDBC
- MySQL
- HTML

---

## 📂 Project Structure

```
LibraryManagementSystem
│
├── src
│   └── com.lms
│       ├── controller
│       │     LoginServlet.java
│       │     LogoutServlet.java
│       │     AddStudentServlet.java
│       │     UpdateStudentServlet.java
│       │     DeleteStudentServlet.java
│       │     AddBookServlet.java
│       │     UpdateBookServlet.java
│       │     DeleteBookServlet.java
│       │     IssueBookServlet.java
│       │     ReturnBookServlet.java
│       │
│       ├── dao
│       │     StudentDAO.java
│       │     BookDAO.java
│       │     IssueDAO.java
│       │     AdminDAO.java
│       │
│       ├── model
│       │     Student.java
│       │     Book.java
│       │     IssueBook.java
│       │     Admin.java
│       │
│       └── util
│             DBConnection.java
│
├── WebContent
│   ├── jsp
│   │     login.jsp
│   │     dashboard.jsp
│   │     addStudent.jsp
│   │     viewStudents.jsp
│   │     updateStudent.jsp
│   │     addBook.jsp
│   │     viewBooks.jsp
│   │     updateBook.jsp
│   │     issueBook.jsp
│   │     returnBook.jsp
│   │     viewIssuedBooks.jsp
│   │
│   └── WEB-INF
│         web.xml
```

## 📸 Screenshots

### Login Page
<img width="1919" height="913" alt="Screenshot 2026-03-08 125519" src="https://github.com/user-attachments/assets/bebe90d2-b3ef-49ab-8e13-ddb09ec4ab61" />

### 📊 Dashboard
<img width="1906" height="895" alt="Screenshot 2026-03-08 125545" src="https://github.com/user-attachments/assets/16618863-6e5e-4acf-b96e-76cb98547102" />

### 👨‍🎓 Add Student
<img width="1919" height="903" alt="Screenshot 2026-03-08 125608" src="https://github.com/user-attachments/assets/0429c726-3d7b-41a0-9206-15dc9cedaf88" />

### 📂 View Student
<img width="1918" height="900" alt="Screenshot 2026-03-08 125621" src="https://github.com/user-attachments/assets/2b484ad8-5aa0-4d0a-ba25-b5be70d49572" />

### 📖 Add Book
<img width="1907" height="898" alt="Screenshot 2026-03-08 125635" src="https://github.com/user-attachments/assets/dfc85166-ff14-40b6-a3f9-397b1fc2e843" />

### 🗃️ View Book
<img width="1915" height="900" alt="Screenshot 2026-03-08 125651" src="https://github.com/user-attachments/assets/dad82250-3107-42a9-bf89-faeac08cf7ca" />

### 📤 Issue Book 
<img width="1914" height="904" alt="Screenshot 2026-03-08 125704" src="https://github.com/user-attachments/assets/6c86b68c-c7e1-4bc3-aaf3-34b1dc484309" />

### 📥 Return Book
<img width="1913" height="895" alt="Screenshot 2026-03-08 125717" src="https://github.com/user-attachments/assets/52ba54fa-fefd-4869-81ed-d6eb802231cc" />

### 📋 Issued Books List
<img width="1919" height="897" alt="Screenshot 2026-03-08 125803" src="https://github.com/user-attachments/assets/66671f9b-6b6d-490f-ae68-94c5661475cd" />

```
