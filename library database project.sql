CREATE DATABASE LibraryManagement;
use LibraryManagement;

create table Publisher
(
Publisher_Name VARCHAR(50)  NOT NULL,
Publisher_Address VARCHAR(100) NOT NULL,
Publisher_Phone VARCHAR(20) NOT NULL,
primary key(Publisher_Name)
);

CREATE TABLE Book (
Book_ID INT NOT NULL identity(1,1) ,
Book_Title VARCHAR(100) NOT NULL,
Book_PublisherName VARCHAR(50) NOT NULL,
primary key(Book_ID),
--Publisher_Name varchar(50) foreign key references Publisher (Publisher_Name)
foreign key (Book_PublisherName) references Publisher (Publisher_Name) on Update Cascade On Delete Cascade
);

create table Library_branch
(
Branch_ID INT  NOT NULL identity(1,1),
Branch_Name VARCHAR(100) NOT NULL,
Branch_Address VARCHAR(200) NOT NULL,
PRIMARY KEY(Branch_ID)
);

create table Borrower
(
Borrower_CardNo INT NOT NULL identity(1,100) ,
Borrower_Name VARCHAR(100) NOT NULL,
Borrower_Address VARCHAR(200) NOT NULL,
Borrower_Phone VARCHAR(50) NOT NULL,
primary key(borrower_CardNo)
)


create table book_issue
(
Issue_ID int identity(1,1),
Issue_BookID int not null,
Issue_BranchID int not null,
Issue_CardNo int not null,
Issue_DateOut varchar(50) not null,
Issue_DueDate varchar(50) not null,
primary key(Issue_ID),
foreign key(Issue_BookID) references Book(Book_ID) ON UPDATE CASCADE ON DELETE CASCADE, 
foreign key(Issue_BranchID) references library_branch(Branch_ID) ON UPDATE CASCADE ON DELETE CASCADE,
foreign key(Issue_CardNo) references Borrower(Borrower_CardNo) ON UPDATE CASCADE ON DELETE CASCADE
);

create table book_copies
(
Book_CopiesID INT PRIMARY KEY NOT NULL identity(1,1),
Copies_BookID INT NOT NULL,
Copies_BranchID INT NOT NULL ,
No_Of_Copies INT NOT NULL,
foreign key(Copies_BookID) references  Book(Book_ID) ON UPDATE CASCADE ON DELETE CASCADE,
foreign key(Copies_BranchID) references Library_branch(Branch_ID) ON UPDATE CASCADE ON DELETE CASCADE
);

create table book_authors
(
Author_ID INT NOT NULL identity (1,1),
Authors_BookID INT NOT NULL ,
Author_Name VARCHAR(50) NOT NULL,
PRIMARY KEY(Author_ID),
foreign key(Authors_BookID) references Book(Book_ID) on update cascade on delete cascade
);



insert into Publisher (Publisher_Name,Publisher_Address,Publisher_Phone) 
values
('DAW Books','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Viking','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Signet Books','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Chilton Books','Not Available','Not Available'),
		('George Allen & Unwin','83 Alexander Ln, Crows Nest NSW 2065, Australia','+61-2-8425-0100'),
		('Alfred A. Knopf','The Knopf Doubleday Group Domestic Rights, 1745 Broadway, New York, NY 10019','212-940-7390'),		
		('Bloomsbury','Bloomsbury Publishing Inc., 1385 Broadway, 5th Floor, New York, NY 10018','212-419-5300'),
		('Shinchosa','Oga Bldg. 8, 2-5-4 Sarugaku-cho, Chiyoda-ku, Tokyo 101-0064 Japan','+81-3-5577-6507'),
		('Harper and Row','HarperCollins Publishers, 195 Broadway, New York, NY 10007','212-207-7000'),
		('Pan Books','175 Fifth Avenue, New York, NY 10010','646-307-5745'),
		('Chalto & Windus','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Harcourt Brace Jovanovich','3 Park Ave, New York, NY 10016','212-420-5800'),
		('W.W. Norton',' W. W. Norton & Company, Inc., 500 Fifth Avenue, New York, New York 10110','212-354-5500'),
		('Scholastic','557 Broadway, New York, NY 10012','800-724-6527'),
		('Bantam','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Picador USA','175 Fifth Avenue, New York, NY 10010','646-307-5745');
        
	
insert into Book (Book_Title,Book_PublisherName)
values
('The Name of the Wind', 'DAW Books'),
		('It', 'Viking'),
		('The Green Mile', 'Signet Books'),
		('Dune', 'Chilton Books'),
		('The Hobbit', 'George Allen & Unwin'),
		('Eragon', 'Alfred A. Knopf'),
		('A Wise Mans Fear', 'DAW Books'),
		('Harry Potter and the Philosophers Stone', 'Bloomsbury'),
		('Hard Boiled Wonderland and The End of the World', 'Shinchosa'),
		('The Giving Tree', 'Harper and Row'),
		('The Hitchhikers Guide to the Galaxy', 'Pan Books'),
		('Brave New World', 'Chalto & Windus'),
		('The Princess Bride', 'Harcourt Brace Jovanovich'),
		('Fight Club', 'W.W. Norton'),
		('Holes', 'Scholastic'),
		('Harry Potter and the Chamber of Secrets', 'Bloomsbury'),
		('Harry Potter and the Prisoner of Azkaban', 'Bloomsbury'),
		('The Fellowship of the Ring', 'George Allen & Unwin'),
		('A Game of Thrones', 'Bantam'),
		('The Lost Tribe', 'Picador USA');
        
insert into Library_branch (Branch_Name,Branch_Address)
values
        ('Sharpstown','32 Corner Road, New York, NY 10012'),
		('Central','491 3rd Street, New York, NY 10014'),
		('Saline','40 State Street, Saline, MI 48176'),
		('Ann Arbor','101 South University, Ann Arbor, MI 48104');

insert into Borrower(Borrower_CardNo,Borrower_Name,Borrower_Address,Borrower_Phone)
values
(101,'Joe Smith','1321 4th Street, New York, NY 10014','212-312-1234'),
		(102,'Jane Smith','1321 4th Street, New York, NY 10014','212-931-4124'),
		(103,'Tom Li','981 Main Street, Ann Arbor, MI 48104','734-902-7455'),
		(104,'Angela Thompson','2212 Green Avenue, Ann Arbor, MI 48104','313-591-2122'),
		(105,'Harry Emnace','121 Park Drive, Ann Arbor, MI 48104','412-512-5522'),
		(106,'Tom Haverford','23 75th Street, New York, NY 10014','212-631-3418'),
		(107,'Haley Jackson','231 52nd Avenue New York, NY 10014','212-419-9935'),
		(108,'Michael Horford','653 Glen Avenue, Ann Arbor, MI 48104','734-998-1513');
	
        
insert into book_issue(Issue_BookID,Issue_BranchID,Issue_CardNo,Issue_DateOut,Issue_DueDate)
values
('1','1',101,'1/1/18','2/2/18'),
		('2','1',101,'1/1/18','2/2/18'),
		('3','1',101,'1/1/18','2/2/18'),
		('4','1',101,'1/1/18','2/2/18'),
		('5','1',102,'1/3/18','2/3/18'),
		('6','1',102,'1/3/18','2/3/18'),
		('7','1',102,'1/3/18','2/3/18'),
		('8','1',102,'1/3/18','2/3/18'),
		('9','1',102,'1/3/18','2/3/18'),
		('11','1',102,'1/3/18','2/3/18'),
		('12','2',105,'12/12/17','1/12/18'),
		('10','2',105,'12/12/17','1/12/17'),
		('20','2',105,'2/3/18','3/3/18'),
		('18','2',105,'1/5/18','2/5/18'),
		('19','2',105,'1/5/18','2/5/18'),
		('19','2',101,'1/3/18','2/3/18'),
		('11','2',106,'1/7/18','2/7/18'),
		('1','2',106,'1/7/18','2/7/18'),
		('2','2',101,'1/7/18','2/7/18'),
		('3','2',101,'1/7/18','2/7/18'),
		('5','2',105,'12/12/17','1/12/18'),
		('4','3',103,'1/9/18','2/9/18'),
		('7','3',102,'1/3/18','2/3/18'),
		('17','3',102,'1/3/18','2/3/18'),
		('16','3',104,'1/3/18','2/3/18'),
		('15','3',104,'1/3/18','2/3/18'),
		('15','3',107,'1/3/18','2/3/18'),
		('14','3',104,'1/3/18','2/3/18'),
		('13','3',107,'1/3/18','2/3/18'),
		('13','3',102,'1/3/18','2/3/18'),
		('19','3',102,'12/12/17','1/12/18'),
		('20','4',103,'1/3/18','2/3/18'),
		('1','4',102,'1/12/18','2/12/18'),
		('3','4',107,'1/3/18','2/3/18'),
		('18','4',107,'1/3/18','2/3/18'),
		('12','4',102,'1/4/18','2/4/18'),
		('11','4',103,'1/15/18','2/15/18'),
		('9','4',103,'1/15/18','2/15/18'),
		('7','4',107,'1/1/18','2/2/18'),
		('4','4',103,'1/1/18','2/2/18'),
		('1','4',103,'2/2/17','3/2/18'),
		('20','4',103,'1/3/18','2/3/18'),
		('1','4',102,'1/12/18','2/12/18'),
		('3','4',107,'1/13/18','2/13/18'),
		('18','4',107,'1/13/18','2/13/18'),
		('12','4',102,'1/14/18','2/14/18'),
		('11','4',103,'1/15/18','2/15/18'),
		('9','4',103,'1/15/18','2/15/18'),
		('7','4',107,'1/19/18','2/19/18'),
		('4','4',103,'1/19/18','2/19/18'),
		('1','4',103,'1/22/18','2/22/18');
        
insert into book_copies(Copies_BookID,Copies_BranchID,No_Of_Copies)
values
('1','1','5'),
		('2','1','5'),
		('3','1','5'),
		('4','1','5'),
		('5','1','5'),
		('6','1','5'),
		('7','1','5'),
		('8','1','5'),
		('9','1','5'),
		('10','1','5'),
		('11','1','5'),
		('12','1','5'),
		('13','1','5'),
		('14','1','5'),
		('15','1','5'),
		('16','1','5'),
		('17','1','5'),
		('18','1','5'),
		('19','1','5'),
		('20','1','5'),
		('1','2','5'),
		('2','2','5'),
		('3','2','5'),
		('4','2','5'),
		('5','2','5'),
		('6','2','5'),
		('7','2','5'),
		('8','2','5'),
		('9','2','5'),
		('10','2','5'),
		('11','2','5'),
		('12','2','5'),
		('13','2','5'),
		('14','2','5'),
		('15','2','5'),
		('16','2','5'),
		('17','2','5'),
		('18','2','5'),
		('19','2','5'),
		('20','2','5'),
		('1','3','5'),
		('2','3','5'),
		('3','3','5'),
		('4','3','5'),
		('5','3','5'),
		('6','3','5'),
		('7','3','5'),
		('8','3','5'),
		('9','3','5'),
		('10','3','5'),
		('11','3','5'),
		('12','3','5'),
		('13','3','5'),
		('14','3','5'),
		('15','3','5'),
		('16','3','5'),
		('17','3','5'),
		('18','3','5'),
		('19','3','5'),
		('20','3','5'),
		('1','4','5'),
		('2','4','5'),
		('3','4','5'),
		('4','4','5'),
		('5','4','5'),
		('6','4','5'),
		('7','4','5'),
		('8','4','5'),
		('9','4','5'),
		('10','4','5'),
		('11','4','5'),
		('12','4','5'),
		('13','4','5'),
		('14','4','5'),
		('15','4','5'),
		('16','4','5'),
		('17','4','5'),
		('18','4','5'),
		('19','4','5'),
		('20','4','5');
        
insert into book_authors(Authors_BookID,Author_Name)
values
('1','Patrick Rothfuss'),
		('2','Stephen King'),
		('3','Stephen King'),
		('4','Frank Herbert'),
		('5','J.R.R. Tolkien'),
		('6','Christopher Paolini'),
		('6','Patrick Rothfuss'),
		('8','J.K. Rowling'),
		('9','Haruki Murakami'),
		('10','Shel Silverstein'),
		('11','Douglas Adams'),
		('12','Aldous Huxley'),
		('13','William Goldman'),
		('14','Chuck Palahniuk'),
		('15','Louis Sachar'),
		('16','J.K. Rowling'),
		('17','J.K. Rowling'),
		('18','J.R.R. Tolkien'),
		('19','George R.R. Martin'),
		('20','Mark Lee');

select * from Book;
select * from book_authors;
select * from book_copies;
select * from book_issue;
select* from Borrower;
select * from Library_branch;
select* from Publisher;

#1- How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"? */

select copies.Copies_BranchID as BranchID , Branch.Branch_Name as BranchName, 
copies.No_Of_Copies as NoofCopies 
from  book_copies as copies 
inner join Book  on copies.Copies_BookID=Book.Book_ID 
inner join Library_branch as Branch on copies.Copies_BranchID= Branch.Branch_ID 
WHERE Book.Book_Title = 'The Lost Tribe' AND Branch.Branch_Name = 'Sharpstown'  ;

#2- How many copies of the book titled "The Lost Tribe" are owned by each library branch?

select copies.Copies_BranchID as BranchID, Branch.Branch_Name as BranchName ,
copies.No_Of_Copies as NoofCopies
from book_copies as copies
inner join Book on copies.Copies_BookID = Book.Book_ID
inner join Library_branch as Branch on copies.Copies_BranchID = Branch.Branch_ID
where Book.Book_Title = 'The Lost Tribe' and Branch.Branch_ID

#3- Retrieve the names of all borrowers who do not have any books checked out.

select Borrower_Name from Borrower 
  where not exists
  ( select * from book_issue
   where Issue_CardNo = Borrower_CardNo)
   
   #4- For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, the borrower's name, and the borrower's address. 

select Branch.Branch_Name as 'Branch Name', 
Book.Book_Title as 'Book Title', Borrower.Borrower_Name as 'Borrower Name',
Borrower.Borrower_Address as 'Borrower Address',
issue.Issue_DateOut as 'Date out' , issue.Issue_DueDate as 'Due Date'
from book_issue as issue
 inner join book on issue.Issue_BookID= Book.Book_ID 
 inner join borrower on Borrower.Borrower_CardNo = issue.Issue_CardNo
 inner join Library_branch as Branch on Branch.Branch_ID = issue.Issue_BranchID
where Branch.Branch_Name='Sharpstown'  and issue.Issue_DueDate = '2/2/18';



select * from book_issue;

 #5- For each library branch, retrieve the branch name and the total number of books loaned out from that branch
 
 select Branch.Branch_Name as 'Branch Name' ,
       count(issue.Issue_BranchID) as 'Total issues'
	from book_issue as issue
    inner join Library_branch as Branch on Branch.Branch_ID = issue.Issue_BranchID
    group by  Branch_Name
    
#6- Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out.    

select Bor.Borrower_Name as 'Name', 
       Bor.Borrower_Address as 'Address',
       count(issue.Issue_BookID) as 'No of Books'
       from book_issue as issue
       inner join Borrower as Bor on Bor.Borrower_CardNo = issue.Issue_cardNo
       group by Bor.Borrower_Name, Bor.Borrower_Address
       having count(Bor.Borrower_Name)>= 5

#7- For each book authored by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central".

select author.Author_Name as 'Author Name' ,
	book.Book_Title as ' Book Title',
    count(copies.Copies_BookID) as 'No of copies',
    branch.Branch_Name as 'Branch Name'
    from Book as book
    inner join book_authors as author on author.Author_ID = book.Book_ID
    inner join book_copies as copies on copies.Book_CopiesID = book.Book_ID
    inner join Library_branch as branch on branch.Branch_ID = copies.Copies_BranchID
    where branch.Branch_Name = 'Central' and author.Author_Name = 'Stephen King'
    
    select author.Author_Name as 'Name'
     from book_authors as author 
     group by Author_Name
     
     select branch.Branch_Name as 'Name'
     from Library_branch as branch
	