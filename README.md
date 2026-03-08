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


