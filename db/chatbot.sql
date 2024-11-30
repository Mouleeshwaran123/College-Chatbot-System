-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2024 at 12:11 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `chatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AID` int(10) UNSIGNED NOT NULL,
  `ANAME` varchar(45) NOT NULL,
  `APASS` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AID`, `ANAME`, `APASS`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(10) UNSIGNED NOT NULL,
  `messages` varchar(255) NOT NULL,
  `response` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `frequent` varchar(45) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `messages`, `response`, `keywords`, `frequent`) VALUES
(1, 'Hello/helo/hlo', '<p>Hey there, how can i help you?</p>', '', 'No'),
(2, 'Hi/Hello/Hy/Hey there/hai/hii', '<p>Good day, how can we help you??</p>', '', 'No'),
(3, 'i need to talk to an official', '<p>Please be informed that all official</p>', '', 'No'),
(4, 'Total Strength of PG and UG students', 'The combined number of postgraduate (PG) and undergraduate (UG) students amounts to 5446 in total.', 'PG/UG', 'Yes'),
(5, 'Total Strength of M.phil students', 'There are a total of 192 M.Phil students.', 'M.phil', 'Yes'),
(6, 'How many books are in the library', 'The library contains a collection of 80,457 books.', 'books', 'Yes'),
(7, 'Who serves as the principal of the college?', 'The principal of the college is Dr. N. Shenbagalakshmi.', 'principal', 'Yes'),
(8, 'How many faculty members does the college have?', 'The college has a total of 234 faculty members.', 'faculty', 'No'),
(9, 'Who holds the position of Controller of Examinations?', 'Dr. J. Premalatha serves as the Controller of Examinations.', 'coe', 'No'),
(10, 'Deputy controller of the examination', 'Dr.V.Thirukumaran', 'Deputy controller-2', 'No'),
(11, 'Deputy controller of the examination', 'Dr.K.Akilandeshwari', 'Deputy controller-1', 'No'),
(12, 'How many students are enrolled in the college?', 'A total of 5447 students are studying in the college.', 'strength', 'No'),
(13, 'How many departments are present on the campus?', ' There are a total of 21 departments on the campus.', 'departments', 'No'),
(14, ': Who is the Head of the Department (HOD) of Computer Science?', ' Mr. M. Thangavel serves as the Head of the Department (HOD) of Computer Science.', 'HOD CS', 'No'),
(15, 'Who is Associate professor&head of computer science department', 'Mr.M.Thangavel', 'CS Faculty', 'No'),
(16, 'Who is Associate professor of computer science department', '<p>Dr.K.Akilandeshwari</p>', 'Asso.pro CS', 'No'),
(17, 'Give the college address', 'Vincent,Kumarasamipatti,salem,Tamil Nadu-636007', 'address', 'No'),
(18, 'Give the college Contact number', '0427-2413273', 'contact number', 'No'),
(19, 'give the college email address/principal email', '<p><a title=\"Email\" href=\"mailto:principalgacslm7@yahoo.co.in\" target=\"_blank\" rel=\"noopener\">principalgacslm7@yahoo.co.in</a></p>', 'email', 'No'),
(20, 'how many shift are there in a college', 'There are a total of 2 shifts in the college.', 'shifts', 'No'),
(21, 'Who is the NCC Associate officer', 'Dr.R.vickrama prasad', 'ncc', 'No'),
(22, 'How many awards the college won ', 'The college has won a total of 5 awards.', 'awards', 'No'),
(24, 'Who is Dr.K.Akilandeswari', 'Associate Professor and Deputy controller of the examination', 'akilandeswari', 'No'),
(25, 'Give the fees payment link/Where can i pay fees', '<p><a title=\"Fees\" href=\"https://ecampus.cc/gacslm7/index.php\" target=\"_blank\" rel=\"noopener\">https://ecampus.cc/gacslm7/index.php</a></p>', 'fees link', 'No'),
(26, 'Give the Location /give the map', '<p>https://www.google.com/maps/dir//Government+Arts+College+(Autonomous)+Vincent+Kumarasamipatti+Salem,+Tamil+Nadu+636007/@11.6636403,78.1590353,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x3babf1ca6740595d:0x152415509960effb!2m2!1d78.1590353!2d11.6636403?entry=ttu<', 'Location/map', 'No'),
(27, 'tell the timing for shift 1 and shift 2\r\n', 'shift 1 timing is 9.00am to 1.25pm and \r\nshift 2 timing is 1.30pm to 5.55pm\r\n', 'shift timing', 'No'),
(28, 'How many courses in this college\r\n', '62 courses\r\n', 'many courses', 'No'),
(29, 'B.A,B.Com,BBA Course fees\r\n', 'B.A,B.Com,BBA I year fees is 1415 and II&III year fees is 235\r\n', 'B.A/B.Com/BBA  fees  \r\n', 'No'),
(30, 'B.sc course fees \r\n', 'B.sc I year fees is  1435 and II&III year fees is 255\r\n', 'B.sc  fees \r\n', 'No'),
(31, 'B.sc Computer science and BCA fees \r\n', 'B.sc  coputer science  is I year fees is  835 and II&III year fees is 355\r\n', 'B.sc (cs) / BCA fees \r\n', 'No'),
(32, 'UG Course fees\r\n', 'B.A,B.Com,BBA I year fees is 1415 and II&III year fees is 235\r\nB.sc I year fees is  1435 and II&III year fees is 255\r\nB.sc  coputer science  is I year fees is  835 and II&III year fees is 355\r\n', 'UG fees\r\n', 'No'),
(33, 'PG Course fees\r\n', 'M.A,M.Com(co-operation) are I year fees is 535 and II&III year fees is 235\r\nM.sc I year fees is  595 and II&III year fees is 295\r\nM.sc  coputer science  is I year fees is  795 and II&III year fees is 495\r\nM.Sc., Statistics fees is I year fees is  595 and ', 'PG fees\r\n', 'No'),
(34, 'M.Phil/PH.D Programme fees\r\n', 'Arts Fees for BC and MBC fees is 3920\r\nArts Fees for SC and ST fees is 1420\r\n', 'M.Phil/PH.D fees\r\n', 'No'),
(35, 'M.Phil/PH.D Programme\r\n', 'Science I year fees is 4670 and II&III year fees is 2170\r\n', 'M.Phil/PH.D /Science\r\n', 'No'),
(38, 'How many Faculties members  in tamil department?', '22 members', 'tamil/faculty', 'No'),
(39, 'who is HOD of Tamil Department/Associate Professor & Head', 'Dr. R. SHANTHY ', 'Tamil Dep.HOD', 'No'),
(40, 'how many Assistant Professor	in tamil department', '<p>9 members in Tamil Department</p>', 'Tamil Ass.Pro', 'No'),
(41, 'list out the Assistant  Professor names in Tamil department', '<p>&nbsp;</p>\r\n<ol>\r\n<li>Dr. R. ACHUTHAN</li>\r\n<li>Dr. T.K. CHITIRAISELVI</li>\r\n<li>&nbsp;Dr. V.OUMARANY</li>\r\n<li>Dr. R.THIRUPPATHI</li>\r\n<li>&nbsp;Dr. K. KARTHIKEYAN</li>\r\n<li>&nbsp;Dr. R.SRINIVASAN</li>\r\n<li>&nbsp;Dr. K.GOWRI</li>\r\n</ol>', 'Ass.Pro names in Tamil dep', 'No'),
(42, 'How many Guest Lecturer in Tamil department', '11 Members in Tamil Department', 'Gus.Lect in Tamil dep', 'No'),
(43, 'List out the Guest Lecturer names in Tamil Department', '<ol>\r\n<li>Dr.R. NAGAVENI</li>\r\n<li>Dr.S.MUTHU NAGA</li>\r\n<li>Mr. P. MURUGESAN</li>\r\n<li>Dr. R. GOMATHI</li>\r\n<li>Dr. A. UMA</li>\r\n<li>Dr. M. UMA</li>\r\n<li>Mr. C.S. KANDASAMY</li>\r\n<li>Dr.A. MANIMEKALAI</li>\r\n<li>Dr.C. BABY CHITRA</li>\r\n<li>Dr. P. RATHAI</', 'Gus. Lectu name in Tamil Dep', 'No'),
(44, 'Who is the Associate Professor & Head of English Department', ' Dr. V.ANBARASI is English Department HOD', 'Eng.DepHOD', 'No'),
(45, 'Who is the HOD of English Department', 'Dr. V.ANBARASI is the HOD of English Department', 'Eng.DepHOD', 'No'),
(46, 'How many Assistant Professor in English Department', '<p>11 Assistant Professor Members in English Department</p>', 'No.of.Ass prof in Engl', 'No'),
(48, 'How many Guest Lecturer in English Department\r\n', 'There are 9 members in English Department', 'Gus Lect in Eng. Dep', 'No'),
(49, 'List out the names of Guest Lecturer  in English Department', 'J. YUVAKUMAR;\r\nM. SAKTHIPRIYA;\r\nP. GOWRISHANKAR;\r\nK.KAVITHA;\r\nS. POOVARASI;\r\nV. HARIVINOTH;\r\nM. MOVIYAL;\r\nR. ILAYARAJA;\r\nS.M. SAROIRAM\r\n', 'Names of Gus Lect in Eng. Dep', 'No'),
(50, 'who is the Associate Professor & Head in History Department\r\n', 'Dr. A.THENNARASU is the HOD of History Department\r\n', 'HOD name for Hist Dep', 'No'),
(51, 'How many Assistant Professor in Histoy Department', 'There are 9 members in History Department', 'Ass. prof of Hist.Dep', 'No'),
(52, 'List out the Assistant Professor names for History Department', '<ol>\r\n<li>Mr. D.JAHIRHUSSAIN</li>\r\n<li>Mr. C.PALANI</li>\r\n<li>Dr. P.PALANIAMMAL</li>\r\n<li>Dr. N.ARIVALAGAN</li>\r\n<li>Mr. S.SATHISHKUMAR</li>\r\n<li>Mr. N.RANGANATHAN</li>\r\n<li>Mrs.S.PREMA</li>\r\n<li>Ms. K.MARIYAMMAL @ KARPAGAM</li>\r\n<li>Dr. R.PANNEER SELVAM<', 'Names of Ass.Prof in His Dep', 'No'),
(53, 'How many Guest Lecturer in History Department\r\n', 'There are 4 members in Guest Lecturer', 'Gus.Lect in His.Dep', 'No'),
(54, 'List out the names of Guest Lecturer in History Department', '<ol>\r\n<li>A. ADHISIVAN</li>\r\n<li>K. SEMMANNAN</li>\r\n<li>DR. K.R. KANNAN</li>\r\n<li>J. MANIKANDAN</li>\r\n</ol>', 'Gus. Lect of  Hist.Dep', 'No'),
(55, 'list out the Guest Lecturer name for History department ', '<ol>\r\n<li>A. ADHISIVAN</li>\r\n<li>K. SEMMANNAN</li>\r\n<li>DR. K.R. KANNAN</li>\r\n<li>J. MANIKANDAN</li>\r\n</ol>', 'Gus.Lect name for His dep ', 'No'),
(56, 'who is the HOD Economics Department /Associate Professor & Head\r\n', 'Dr. V.P.JAYALAKSHMI HOD of Economics Department\r\n', 'Econo HOD', 'No'),
(68, 'How many Guest Lecturer in Economics', '<p><strong>There are 1 Guest Lecturer in Economics</strong></p>', 'Gues.Lec Econo', 'No'),
(69, 'list out the Guest Lecturer names in Economics', '<p>Mr. S.KARTHIK</p>', 'Gus.Lect name for Econo dep ', 'No'),
(70, 'How many Assistant Professor in Computer Science/How many Assistant Professor in CS', '<p>There are 4&nbsp; Assistant Professor in Computer Science</p>', 'Ass.Pro cs', 'No'),
(71, 'list out the Associate Professor  names in Computer Science/list out the Associate Professor  names in CS ', '<p>&nbsp;</p>\r\n<ol>\r\n<li>Dr. M.MALATHI</li>\r\n<li>Dr. D.CHITRA</li>\r\n<li>Mr. E.JAYABALAN</li>\r\n<li>Dr. R. PUGAZENDI<br><br><br></li>\r\n</ol>', 'Ass.Pro names cs', 'No'),
(72, 'How many Guest Lecturer in cs/How many Guest Lecturer in  Compter Science', '<p>There are 1 Guest Lecturer in Computer Science</p>', 'Gus.Lect name for cs dep ', 'No'),
(73, 'list out the Guest Lecturer names in CS/list out the Guest Lecturer names in Computer Science Department', '<p>VINCENT AROKIYAM ARULRAJA V</p>', 'Gus.Lect name for cs dep ', 'No'),
(74, 'who is the Assistant Professor & Head of Commerce Department/who is the HOD of Commerce Department', '<p>Dr. T.THIRUPATHI HOD of Commerce Department</p>', 'HOD of Comm', 'No'),
(75, 'How many Assistant Professor in Commerce', '<p>There are 5 Assistant Professor in Commerce Department</p>', 'Ass.Pro comm', 'No'),
(76, 'list out the Associate Professor  names in Commerce', '<ol>\r\n<li>Dr. C.MANIKANDA MUTHUKUMAR</li>\r\n<li>Dr. M.SYED IBRHIM</li>\r\n<li>Dr. P.RAJA</li>\r\n<li>Dr. S. DEEPA</li>\r\n<li>Dr. C. MADHESH</li>\r\n</ol>', 'Ass.Pro names comm', 'No'),
(77, 'How many Guest Lecturer in Commerce Department', '<p>There&nbsp; are 4 Guest Lecturer in Commerce Department</p>', 'Gus.Lect for Comm', 'No'),
(78, 'list out the Guest Lecturer names in Commerce Department', '<ol>\r\n<li>Dr.M.D. GEETHA</li>\r\n<li>Dr.K. KARTHIKEYAN</li>\r\n<li>Dr. G. SASIKALA</li>\r\n<li>Dr. G. UDHAYA DHEEPA</li>\r\n</ol>', 'Gus.Lect name for Comm', 'No'),
(79, 'who is the Assistant Professor & Head of Commerce(CA) Department/who is the HOD of Commerce(CA) Department', '<p>Dr. P.M.SUGAVANESWARI is HOD of Commerce(CA) Department</p>', 'HOD of Comm(CA)', 'No'),
(80, 'who is the Assistant Professor & Head of Computer Application Department/who is the HOD of Computer Application Department', '<p>Dr.A.VIJAYA is HOD of Computer Applicatiion&nbsp;</p>', 'HOD of CA', 'No'),
(81, 'How many Assistant Professor in Computer Application/How many Assistant Professor in CA', '<p>There are 3 Assistant Professor in Computer Application</p>', 'Ass.Pro CA', 'No'),
(82, 'list out the Associate Professor  names in Computer Application Department/list out the Associate Professor  names in CA ', '<ol>\r\n<li>Dr.A.KANGAIAMMAL</li>\r\n<li>Dr.C.SENTHAMARAI</li>\r\n<li>Mr. V. GANDHIRAJA</li>\r\n</ol>', 'Ass.Pro names CA', 'No'),
(83, 'How many Guest Lecturer in Computer Application/How many Guest Lecturer in CA', '<p>There are 6 Guest Lecturer in Computer Application</p>', 'Gus.Lect for CA', 'No'),
(84, 'list out the Guest Lecturer names in Computer Application/list out the Guest Lecturer names in CA', '<ol>\r\n<li>T. DURGA</li>\r\n<li>A. RAJALAKSHMI</li>\r\n<li>S. ELAMATHI</li>\r\n<li>C.PREETHA</li>\r\n<li>M. SELVAKUMAR</li>\r\n<li>K. GEETHA</li>\r\n</ol>', 'Gus.Lect name for CA', 'No'),
(85, 'who is the Assistant Professor & Head of Geography Department/who is the HOD of Geography Department', '<p>Dr. A.RAJA is HOD of Geography Department</p>\r\n<p>&nbsp;</p>', 'HOD of Geography', 'No'),
(86, 'How many Assistant Professor in Geography Department', '<p>There are 2 Assistant Professor in Geography Department</p>', 'Ass.Pro Geography', 'No'),
(87, 'list out the Associate Professor  names in Geography', '<ol>\r\n<li>Dr. &nbsp;P.ARUL</li>\r\n<li>Dr. A. ILANTHIRAIAN</li>\r\n</ol>', 'Ass.Pro names Geography', 'No'),
(88, 'How many Guest Lecturer in Geography Department', '<p>There are 2 Guest Lecturer in Geography Department</p>', 'Gues.Lec Geography', 'No'),
(89, 'list out the Guest Lecturer names in Geography', '<ol>\r\n<li>Dr. P. SELVAKUMAR</li>\r\n<li>Dr. V. RENGAN</li>\r\n</ol>', 'Gus.Lect name for Geography', 'No'),
(90, 'who is the Assistant Professor & Head of Geology Department/who is the HOD of Geology Department', '<p><em><strong>Mr. M.JAYABALAN is the HOD of Geology Department</strong></em></p>', 'HOD of Geology', 'No'),
(91, 'How many Assistant Professor in Geology Department', '<p>There are 6 Assistant Professor in Geology Department</p>', 'Ass.Pro Geology', 'No'),
(92, 'list out the Associate Professor  names in Geology Department', '<ol>\r\n<li>DR.V.THIRUKUMARAN</li>\r\n<li>Dr. N.VIJAYAKUMAR</li>\r\n<li>Dr. V.THIURMURUGAN</li>\r\n<li>Dr. P.PRAGATHEESWARAN</li>\r\n<li>Mr. T.SUNDAR</li>\r\n<li>Dr. C.BOOBALAN</li>\r\n</ol>', 'Ass.Pro names Geolopy', 'No'),
(93, 'How many Guest Lecturer in Geology Department', '<p>There are 3 Guest Lecturer in Geology Department</p>', 'Gus.Lect for Geology', 'No'),
(94, 'list out the Guest Lecturer names in Geology', '<ol>\r\n<li>P. PALPANDIAN</li>\r\n<li>I. MOHAMMED KIZAR</li>\r\n<li>Dr.R. PASUPATHI</li>\r\n</ol>', 'Gus.Lect name for Geology', 'No'),
(95, 'who is the Assistant Professor & Head of Co-operation Department/who is the HOD of Co-op Department', '<p>Dr. S.SURESHBABU is the HOD of Co-operation Department</p>', 'HOD of Co-op', 'No'),
(96, 'How many Assistant Professor in Co-operation Department/How many Assistant Professor in Co-op Department/', '<p>There are 3 Assistant Professor in Co-operation Department</p>', 'Ass.Pro co-op', 'No'),
(97, 'list out the Associate Professor  names in Co-operation Department/list out the Associate Professor  names in Co-op ', '<ol>\r\n<li>Dr. P.PITCHAIMUTHU</li>\r\n<li>Dr. T.RAMESH</li>\r\n<li>Mr.P.SRINIVASAN</li>\r\n</ol>', 'Ass.Pro names co-op', 'No'),
(98, 'How many Guest Lecturer in Co-operation Department/How many Guest Lecturer in Co-op Department', '<p>There are 8 Guest Lecturer in Co-operation Department</p>', 'Gus.Lect for Co-op', 'No'),
(99, 'list out the Guest Lecturer names in Co-operation Department/list out the Guest Lecturer names in Co-op Department', '<ol>\r\n<li>Dr.M. SHANKAR</li>\r\n<li>Dr. P. KANNAN</li>\r\n<li>Dr. R. SURESH</li>\r\n<li>Mrs. J. SUMATHI</li>\r\n<li>A.KANNAN</li>\r\n<li>R.VASANTHARANI</li>\r\n<li>Dr. H.J.FRANKLIN BANISTER</li>\r\n<li>Dr. G.SEENIVASAN</li>\r\n</ol>', 'Gus.Lect name for co-op ', 'No'),
(100, 'who is the Assistant Professor & Head of Business Administration Department/who is the HOD of Business AdministrationDepartment', '<p>Dr. S.SARAVANAKUMAR is HOD of Business AdministrationDepartment</p>', 'HOD of BA', 'No'),
(101, 'How many Assistant Professor in Business Administration Department', '<p>There are 3 Assistant Professor in Business Administration Department</p>', 'Ass.Pro BA', 'No'),
(102, 'list out the Associate Professor  names in Business Administration', '<ol>\r\n<li>Mr. M.ELAVARASAN</li>\r\n<li>Dr. P.SELVAMANI</li>\r\n<li>Dr. P.SIVASUBRAMANIA DEEPAK</li>\r\n</ol>', 'Ass.Pro name BA', 'No'),
(103, 'How many Guest Lecturer in Business Administration Department', '<p>There are 4 Guest Lecturer in Business Administration Department</p>', 'Gus.Lect for BA', 'No'),
(104, 'list out the Guest Lecturer names  is Business Administration', '<ol>\r\n<li>M. ALAGIRINATHAN</li>\r\n<li>Dr.R. SATHEESH KUMAR</li>\r\n<li>A. RAJU</li>\r\n<li>Dr. P. UMADEVI</li>\r\n</ol>', 'Gus.Lect name for BA', 'No'),
(105, 'who is the Assistant Professor & Head of political Science Department/who is the HOD of Political Science Department', '<p>Dr. V. VEERAMUTHU HOD of Political Science Department</p>', 'HOD of PS', 'No'),
(106, 'How many Assistant Professor in Political Science Department', '<p>There are no Assistant Professor in Political Science Department</p>', 'Ass.Pro PS', 'No'),
(107, 'How many Guest Lecturer in Political Science', '<p>There are 3 Guest Lecturer in Political Science</p>', 'Gus.Lect PS', 'No'),
(108, 'list out the Guest Lecturer names in Political Science Department', '<ol>\r\n<li>Dr. R. TAMILANBAN</li>\r\n<li>Dr. K.PREMA</li>\r\n<li>V. MURUGESAN</li>\r\n</ol>', 'Gus.Lect name PS', 'No'),
(109, 'list out the Associate Professor  names in Political Science Department', '<p>There are no Associate Professor &nbsp;names in Political Science Department</p>', 'Ass.Pro names PS', 'No'),
(110, 'who is the Assistant Professor & Head of Public Administration Department/who is the HOD of Public Administration Department', '<p>Dr. V. VEERAMUTHU is the HOD of Public Administration Department</p>', 'HOD of PA', 'No'),
(111, 'How many Assistant Professor in Public Administration Department', '<p>There are no Assistant Professor in Public Administration Department</p>', 'Ass.Pro PA', 'No'),
(112, 'list out the Associate Professor  names in Public Administration Department', '<p>There are no Assistant Professor in Public Administration Department</p>', 'Ass.Pro names PA', 'No'),
(113, 'How many Guest Lecturer in Public Administration Department', '<p>There are 2 Guest Lecturer in Public Administration Department</p>', 'Gus.Lect  PA', 'No'),
(114, 'list out the Guest Lecturer names in Public Administration Department', '<ol>\r\n<li>Dr. M. GOBI</li>\r\n<li>S. MEIYAZHAGAN</li>\r\n</ol>', 'Gus.Lect name PA', 'No'),
(115, 'who is the Associate Professor in Tamil Department', '<p>Dr. J. PREMALATHA is Associate Professor in Tamil Department</p>', 'Asso.pro tamil', 'No'),
(116, 'Overall how many Assistant Professor in college/Overall how many Assistant Professor in Government Arts college', '<p>There are 116 Assistant Professor in our college</p>', 'tot.ass.pro', 'No'),
(117, 'Overall how many Associate  Professor in college/Overall how many Associate Professor in Government Arts college', '<p>There are 20 Associate &nbsp;Professor our college</p>', 'tot.Asso.pro', 'No'),
(118, 'Overall how many Guest Lecturer  in college/Overall how many Guest Lecturer in Government Arts college', '<p>There are 23 Guest Lecturer in Shift I</p>\r\n<p>There are 54 Guest Lecturer in Shift II</p>', 'tot.gues.lec', 'No');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
