-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 08:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ccacademy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chat_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `question` text NOT NULL,
  `answer` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `ques_id` int(50) NOT NULL,
  `main` varchar(250) NOT NULL,
  `k1` varchar(250) NOT NULL,
  `k2` varchar(250) NOT NULL,
  `k3` varchar(250) NOT NULL,
  `k4` varchar(250) NOT NULL,
  `answer` varchar(9999) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`ques_id`, `main`, `k1`, `k2`, `k3`, `k4`, `answer`) VALUES
(1, 'hello\\hi\\hii\\hey', 'hello', 'hi', 'hii', 'hey', 'Hey! what would you like to discuss?'),
(51, 'professional and elective subject bstm', 'tm', 'subject', 'ched', 'tourism management', 'These are the following of BSTM/Tourism Management Professional Elective or course curriculum is <br><br>FIRST YEAR - 1st Semester<br> Courses<br> • GE1 - Purposive Communication<br> • GE2 Readings in Philippine History<br> • GE3 Mathematics in the Modern World<br> • THC1 Tourism & Hospitality I<br> • THC2 Risk Management as Applied to <br> Safety, Security and Sanitation<br> • PE1<br> • NSTP1 <br><br>2nd Semester<br> Courses<br> • Lecture Laboratory Units<br> • TPC1 Global Tourism, Geography & Culture<br> • THC3 Tourism and Hospitality <br> Service Quality Management<br> • THC4 Philippine Tourism, Geography and Culture<br> • THC5 Tourism & Hospitality 2<br> • TPC1 Tour and Travel Management <br> • PE2<br> • NSTP2 <br><br>SECOND YEAR - 1st Semester<br> Courses<br> • GE4 Understanding the Self (GE)<br> • GE ELEC 1<br> • TPC2- Applied Bus Tools and Technologies<br> • TPC3 - Sustainable tourism<br> • HMPE 1<br> • PE3 <br><br>2nd Semester Courses<br> • GE5 Science, Technology and Society <br> • GE6 Ethics<br> • TPC4 Tourism Policy Planning and Development<br> • TPC5 Introduction to MICE<br> • TPC6- Foreign Language 1*(TPC)<br> • PE 4 <br><br>THIRD YEAR - 1st Semester<br> Courses<br> • GE7 The Contemporary World<br> • TPC7- Foreign Language 2<br> • HM PE 3<br> • BME1 Operations Management in TH Industry<br> • THC6 Professional Development & Applied Ethics<br> • THC7 Tourism and Hospitality Marketing <br><br>2nd Semester<br> Courses<br> • THC8 - Legal Aspects in Tourism and Hospitality<br> • BME2 Strategic Management in THI HM PE 4<br> • THC9 Multicultural Diversity in <br> Workplace for the Tourism Professional<br> • THC10 Entrepreneurship in TH<br> • TPC7 - Transportation Management (covers air land sea) <br><br>FOURTH YEAR- 1st Semester<br> • HMPE 5<br> • Life and Works Of Rizal<br> • TPC8 Research in Tourism<br> • GE E 2<br> • GE E 3<br> • GE8 Art Appreciation <br><br>2nd Semester <br> Practicum<br> '),
(42, 'departments', 'dept', 'organization', 'academy', 'service', ' The department that only has in City College of Angeles is<br><br>• Institute of Business Management <br><br>• Institute of Education and Science <br><br>• Institute of Computing Studies Library Information Science'),
(6, 'thanks\\thank you', 'you', 'alot ', 'recommendation', 'bye', 'My Pleasure!'),
(23, 'suggest updated existing suggestion new course', 'new', 'curriculum', 'ched', 'education', 'Here are some new or updated curriculum related to ICSLIS that might be offered by higher education institutions in the Philippines for 2024 that is (Bachelor of Science in Data Science), (Bachelor of Science in Cybersecurity). (Bachelor of Science in Artificial Intelligence), (Bachelor of Science in Software Engineering), (Bachelor of Science in Information Technology Management), (Bachelor of Science in Cloud Computing). '),
(17, 'courses', 'program', 'bachelor', 'strand', 'subject', ' PROGRAMS BEING OFFERED is <br><br>• BS Accountancy <br>• BS Entrepreneurship<br>• BS Tourism Management <br>• Associate in Computer Technology <br>• BS Computer Science <br>• BS Information Systems, <br>• Bachelor of Library and Information Science <br>• Bachelor of Physical Education <br>• Bachelor of Technical-Vocational Teacher Education <br>• Bachelor of Arts in English Language Studies, <br>• Bachelor in Special Needs Education <br>• BS Psychology <br>• BS Mathematics'),
(14, 'ccacademy', 'cca', 'school', 'college', 'university', 'CCAcademy is designed for knowing the Curriculum that has in City College of Angeles, it has only available in our premiere local college that based on CHED and I hope this information helps you.'),
(60, 'professional subject and elective ais accounting_information_system', 'subject', 'curriculum', 'ais', 'ched', 'These are the Accounting Information Systems <br> Professional Elective or courses of the curriculum is <br><br>BSAIS<br> FIRST YEAR<br> First Semester<br> • Understanding the Self<br> • Readings in Philippine History <br> • The Contemporary World <br> • Mathematics in the Modern World<br> • Financial Accounting & Reporting <br> • Operations Management and TQM <br> • Managerial Economics <br> • NSTP<br> • Physical Education 1 <br><br>Second Semester<br> • Purposive Communication<br> • Art Appreciation<br> • Science, Technology, and Society <br> • Conceptual Framework and Accounting Standards<br> • Cost Accounting and Control<br> • Law on Obligations and Contracts<br> • Economic Development<br> • NSTP<br> • Physical Education 2 <br><br>SECOND YEAR<br> First Semester<br> • Ethics<br> • Rizal\'s Life and Works (as mandated by<br> law)<br> • Intermediate Accounting 1<br> • Strategic Cost Management <br> • Income Taxation<br> • usiness Laws and Regulations <br> F• inancial Markets<br> • Physical Education 3 <br><br>SECOND YEAR<br> Second Semester<br> • GE Elective (Business Logic)<br> • Introduction to Accounting Information<br> System<br> • Intermediate Accounting 2<br> • Business Taxation<br> • Regulatory Framework & Legal Issues in<br> Business<br> • Financial Management<br> • Management Science <br> • Physical Education 4 <br><br>THIRD YEAR<br> First Semester<br> • Information Systems Analysis & Design<br> • Project Management<br> • IT Application Tools in Business<br> • Intermediate Accounting 3 <br> • Accounting Research Methods <br> • Strategic Business Analysis <br><br>Second Semester<br> • Managing Information and Technology <br> • Information Systems Operations and Maintenance<br> • Information Security and Management <br> • Statistical Analysis with Software Application<br> • International Business and Trade <br> • Governance, Bus Ethics, Risk Mgt & Internal Control<br> • Professional Elective <br><br>FOURTH YEAR<br> First Semester<br> COURSES<br> • Accounting Information System Internship<br> • Accounting Information System Research<br> • Social Science and Philosophy<br> <br> Second Semester<br> • Arts & Humanities<br> • Data Warehousing and Management <br>• Management Information System <br>• Enterprise Resource Planning and Management<br> • Strategic Management<br>• Professional Elective'),
(25, 'president', 'officer', 'pres', 'cca', 'dr', 'Dr. Carolina A. Sarmiento'),
(26, 'vice president', 'officer', 'vice', 'cca', 'dr', 'Dr. Grace Fabros-Tyler'),
(27, 'secretary', 'officer', 'sec', 'cca', 'executive', 'Nikka Ella Dela Cruz'),
(28, 'curriculum', 'program', 'subject', 'module', 'course', 'Curriculum refers to the structured set of courses and requirements that students must complete to earn a degree or certificate. It outlines the subjects to be studied, the sequence in which they should be taken, and any additional requirements like internships or projects.'),
(30, 'professional and elective subject BSIS IS', 'bsis', 'information systems', 'is', 'ched', ' These are the Professional and Elective Courses for BSIS are <br><br>• Introduction to Computing <br><br>• Computer Programming 1 <br><br>• Computer Programming 2<br><br>• Data Structures and Algorithms Information Management <br><br>• Application Development and Emerging Technologies <br><br>• Fundamentals of Information Systems <br><br>• Professional Issues in Information Systems <br><br>• IT Infastructure and Network Technologies <br><br>• System Analysis and Design, Enterprise Architecture <br><br>• IS Project Management 1 <br><br>• IS Strategy Management and Acquisition Organization <br><br>• Management Concepts, Financial Management <br><br>• Business Process Management <br><br>• Evaluation of Business Performance <br><br>• Quantitative Methods <br><br>• Capstone Project 1 <br><br>• Capstone Project 2 <br><br>•Practicum Information Systems'),
(32, 'professional and elective subject BSCS CS', 'bscs', 'computer science', 'cs', 'ched', ' These are the Professional and Elective Courses for BSCS are <br><br>• Introduction to Computing, Fundamentals of Programming <br><br>• Intermediate Programming, Data Structures and Algorithm <br><br>• Information Management, Application Development and Emerging Technologies <br><br>• Discrete Structure 1 <br><br>• Discrete Structure 2 <br><br>• Object-oriented Programming <br><br>• Algorithm and Complexity <br><br>• Automata Theory and Formal Languages <br><br>• Architecture and Organization <br><br>• Information Assurance and Security <br><br>• Human Computer Interaction <br><br>• Networks and Communications <br><br>• Operating Systems <br><br>• Programming Languages <br><br>• Software Engineering 1 <br><br>• Software Engineering 2 <br><br>•Social Issues and Professional Practice <br><br>• CS Thesis Writing 1 <br><br>• CS Thesis Writing 2'),
(34, 'professional and elective subject associate computer technology act', 'act', 'associate computer technology', 'subject', 'ched', '  These are the Professional and Elective Courses for Associate Computer Technology are <br><br>•  Introduction to Computing <br><br>• Fundamentals of Progamming  • Purposive Communication (GE) <br>• Mathematics in the Modern World (GE)  <br>• Professional Track/Elective 1 <br>• NSTP 1 <br>• PE1 <br>• Intermediate Programming <br>• Professional Issues in Computing <br>• Professional Track/Elective 2 <br>• Professional Track/Elective 3 <br>• GE 4 <br>• NSTP2 <br>• PE2 <br>• Data Structures and Algorithms <br>• Information Management 1 <br>• Professional Track/Elective 3 • Professional Track/Elective 4 <br>• Life and Works of Rizal (GE)  <br>• GE 5 PE3, Internship <br>• Professional Track/Elective 6 <br>• PE4.'),
(35, 'professional elective subject BLIS LIS', 'blis', 'library and information science', 'subject', 'ched', 'These are the Professional and Elective Courses for BLIS are Introduction to Library and Information Science, Collection Management of Information Resources, Information Resources and Services I, Information Resources and Services II, Organiztion of Information Resources I, Organiztion of Information Resources II Indexing and Abstracting, Management of Libraries and information Centers, Information Literacy, Library Materials for Children and Young Adults, Introduction to Records Management and Archives, Research Methods in Library and Information Science, Thesis/Research Writing, Library Practice I and Library Practice II.'),
(39, 'professional and elective subject of BSIT IT', 'bsit', 'information technology', 'subject', 'ched', '  These are the Professional and Elective Courses for BSIT are <br><br>• Introduction to Computing <br> <br>• Computer Programming 1<br> <br>• Computer Programming 2 Data Structures and Algorithms<br> <br>• Information Management <br><br>• Application Development and Emerging Technologies<br><br>• Introduction to Human Computer Interaction Information Assurance and Security 1 <br><br>• Information Assurance and Security 2<br>  <br>• Fundamentals of Database Systems, Integrative Programming and Technologies 1 <br><br>• Discrete Mathematics <br><br>• Quantitative Methods <br><br>• Networking 1 <br><br>• Networking 2 <br><br>• Systems Administration and Maintenance Systems <br><br>• Integration and Architecture 1 <br><br>• Social and Professional Issues <br><br>• Capstone Project and Research 1 <br><br>• Capstone Project and Research 2'),
(59, 'command', 'details', 'info', 'ccacad', 'lists', 'This are the following on the list to search <br><br>• What is CCAcademy?<br> • List of the Department of CCA<br> •What are the professional or elective (type the course) ex: BSIS'),
(52, 'professional subject and elective subject btvted', 'educ', 'ched', 'subjects', 'curriculum', 'These are the BACHELOR OF TECHNICAL-VOCATIONAL TEACHER EDUCATION <br> Professional Elective or courses of the curriculum is <br><br>BACHELOR OF TECHNICAL-VOCATIONAL TEACHER EDUCATION<br> FIRST YEAR<br> • 1st Semester <br> • GE-Understanding the Self <br> • GE-Readings in Phil History <br> • GE-Math in the Modern World <br> • GE-Science and Technology<br> • GE-Purposive Communication<br> • GE-Art Appreciation<br> • GE-Life and Works of Rizal <br> • NSTP 1<br> • Physical Education 1 <br><br>2nd Semester<br> • GE-The Contemporary World<br> • GE-Math, Science and Technology (Elective)<br> • GE-Arts and Humanities(Elective)<br> • GE-Social Sciences and Philosophy (Elective)<br> • GE-Ethics<br> • The Child and Adolescent Learner and Learning Principles<br> • The Teaching Profession<br> • NSTP 2<br> • Physical Education 2 <br><br>SECOND YEAR<br> 1st Semester<br> • Facilitating Learner-Centered Teaching: The Learner-<br> Centered Approaches with Emphasis on Trainers Methodology<br> • Technology for Teaching and Learning 1**<br> • Building and Enhancing New Curriculum <br> Development and Literacies <br> Across the Curriculum Evaluation with <br> Emphasis on the 21st Century Skills<br> • The Andragogy of Learning Including Principles of <br> Trainers\' Methodology I<br> • Assessment in Learning 1<br> • Introduction to AFA<br> • Introduction of Industrial Arts<br> • Major 1<br> • Entrepreneurship<br> • Physical Education <br><br>2nd Semester<br> • The Teacher and the Community, School Culture and <br> Organizational Leadership with focus on the <br> Philippine TVET System<br> • Technology for Teaching and<br> • Learning 2**<br> • Curriculum Development and Evaluation with Emphasis <br> on the 21st Century Skills Trainers Methodology II<br> • Foundation of Special and Inclusive Education<br> • Assessment in Learning 2 with focus on <br> Trainers Methodology I & II<br> • HE Literacy<br> • Teaching ICT as an Exploratory Course<br> • Major 2<br> • Physical Education <br><br>THIRD YEAR<br> 1st Semester<br> • Technology Research 1 (Methods of Research)<br> • Teaching Common Competencies IA<br> • Teaching Common Competencies ICT<br> • Major 3<br> • Major 4<br> • Major 5<br> • Major 6<br> • Major 7<br> • Major 8 <br><br>2nd Semester<br> • Technology Research 2 (Undergraduate <br><br>Thesis/Research Paper/ Research Project)<br> • Teaching Common Competencies AFA<br> • Teaching Common Competencies HE<br> • Major 9<br> • Major 10<br> • Major 11<br> • Major 12<br> • Work-based Learning with Emphasis on Trainers\' Methodology <br><br>FOURTH YEAR<br> 1st Semester<br> • Field Study 1<br> • Field Study 2<br> • Supervised Industrial Training <br><br>2nd Semester<br> • Teaching internship/Practice Teaching<br> '),
(53, 'professional subject or elective bspe bs_physical_education', 'pe', 'ched', 'subjects', 'curriculum', 'These are the BS PHYSICAL EDUCATION Professional Elective or courses of the curriculum is <br><br>BS PHYSICAL EDUCATION<br> 1st Year<br> 1st Semester Course<br> • Understanding the Self/ Pag-unawa sa Sarili (GE)<br> • Readings in Philippine History/ Mga Babasahin <br> hinggil sa Kasaysayan ng Pilipinas (GE)<br> • The Contemporary World/ Ang Kasalukuyang Daigdig (GE)<br> • Philosophical and Socio- anthropological Foundations <br> of Physical Education and Sports<br> • Anatomy and Physiology of Human Movement<br> • PE 1<br> • NSTP 1 <br><br>2nd Semester Course<br> • Mathematics in the Modern / Matematika <br> sa Makabagong Daigdig (GE)<br> • Purposive Communication/ Malayuning <br> Komunikasyon (GE)<br> • Art Appreciation/ Pagpapahalaga<br> • Physiology of Exercise and Physical Activity<br> • Principles Motor Control and Learning of <br> Exercise, Sports and Dance<br> • PE 2<br> • NSTP 2 <br><br>Summer 1 Course<br> • Physiology of Exercise and Physical Activity<br> • Applied Motor Control and Learning of <br> Exercise, Sports and Dance<br> • Individual and Dual Sports<br> • (Racket Sports, Athletics, Martial Arts) <br><br>2nd Year<br> • 1st Semester<br> • Science, Technology and<br> • Society/ Agham, Teknolohiya at Lipunan (GE)<br> • Ethics/ Etika (GE)<br> • Elective (GE)<br> • Movement Education<br> • The Child and Adolescent Learners <br> and Learning Principles<br> • The Teaching Profession<br> • PE3 <br><br>2nd Semester Course<br> • Elective (GE)<br> • Elective (GE)<br> • Life and Works of Rizal (GE)<br> • International Dance and other Forms<br> • The Teacher and the Community, School <br> Culture and Organizational Leadership<br> • Foundation of Special and Inclusive Education<br> • PE4 <br><br>Summer 2<br> Course<br> • Swimming and Aquatics<br> • Emergency Preparedness and Safety Management <br><br>3rd Year<br> 1st Semester Course<br> • Philippine Traditional Games and Sports<br> • Coordinated School Health Program<br> • Personal, Community and Environmental Health<br> • Specialization Elective 1 (choose from <br> the menu of courses)<br> • Curriculum and Assessment for Physical <br> Education and Health Education<br> • Assessment in Learning 1<br> • Building and Enhancing New Literacies <br> Across the Curriculum <br> • The Teacher and the School Curriculum <br><br>2nd Semester Course<br> Team Sports (Soccer/Football, Basketball, <br> Volleyball, Baseball, Softball, <br> Non-traditional: Ultimate, Sports Handball, <br> Floorball, Futsal, Sepak Takraw)<br> • Sports and Exercise Psychology<br> • Drug Education, Consumer Health Education <br> and Healthy Eating<br> • Specialization Elective 1 (choose from the <br> menu of courses)<br> • Process of Teaching PE & Health Education<br> • Assessment in Learning 2<br> • Technology for Teaching and Learning 1<br> • Facilitating Learner-centered Teaching <br><br>Summer 3<br> Research 1<br> • Techhnology Application 2 <br><br>4th Year<br> 1st Semester<br> • Field Study 1 (Observations of Teaching-Learning <br> in Actual School Environment)<br> • Field Study 2 (Participation and <br> Teaching Assistantship) <br><br>2nd Semester<br> • Practice Teaching/Teaching Internship'),
(54, 'professional subject and elective BSNEd special_needs', 'special needs', 'subject', 'ched', 'curriculum', '  These are the SPECIAL NEEDS EDUCATION Professional <br> Elective or courses of the curriculum is <br><br>SPECIAL NEEDS EDUCATION<br> First Year<br> 1st Semester<br> • GE 1<br> • GE 2<br> • GE 3<br> • Prof Ed: The Child and Adolescent <br> Learners and Learning Principles<br> • Prof Ed/SNEd 1<br> • PE 1 <br><br>2nd Semester<br> • GE 4<br> • GE 5<br> • Prof Ed: Facilitating Learner Centered Teaching<br> • Prof Ed: The Teacher and the School Curriculum<br> • SNEd2 <br> • SNED 3<br> • PE 2<br> • Prof Ed: Assessment of<br> • Learning 1<br> • NSTP 1 <br><br>Second Year<br> • 1st Semester<br> • GE 6<br> • GE 7<br> • SNEd 4<br> • Prof Ed: Assessment of<br> • Learning 1<br> • Prof Ed: Technology for<br> • Teaching and Learning 1<br> • NSTP 1 <br><br>2nd Semester<br> • GE 8<br> • GE 9<br> • SNEd 6<br> • SNED 7<br> • Prof Ed: Assessment of<br> • Learning 2<br> • Prof Ed: Building and Enhancing<br> • Literacy Skills Across the Curriculum<br> • NSTP 2 <br><br>Third Year<br> 1st Semester<br> • GE 10<br> • SNED 8<br> • SNEd 9<br> • SNED 10<br> • SNED 14<br> • Prof Ed: The Teaching Profession<br> • PE 3 <br><br>2nd Semester<br> • GE 11<br> • SNEd 11<br> • SNEd 12<br> • SNED 13<br> • SNED 14<br> • SNED 15<br> • Prof Ed: The Teacher and the Community, School <br> Culture and Organizational Leadership<br> • PE4 <br><br>Fourth Year<br> 1st Semester<br> • GE 12<br> • SNED 16<br> • Field Study 1<br> • Field Study 2<br> • Teaching Multi-grade Classes <br><br>2nd Semester<br> • Teaching Internship'),
(55, 'professional subject and elective bsa accounting', 'curriculum', 'subject', 'ched', 'accounting', 'These are the ACCOUNTING Professional Elective <br> or courses of the curriculum is <br><br>ACCOUNTING<br> FIRST YEAR<br> First Semester<br> • Understanding the Self <br> • Readings in Philippine History <br> • The Contemporary World <br> • Financial Accounting and Reporting<br> • Managerial Economics<br> • Operations Management and TQM Cost Accounting and Control<br> • NSTP<br> • PE 1 <br><br>Second Semester<br> • Mathematics in the Modern World Purposive Communication<br> • Economic Development<br> • Law on Obligations and Contracts Conceptual <br> Framework and Accounting Standards<br> • Management Science Intermediate Accounting 1<br> • NSTP<br> • PE 2 <br><br>SECOND YEAR<br> First Semester<br> • Art Appreciation<br> • Science, Technology, and Society<br> • Income Taxation<br> • Intermediate Accounting 2<br> • Strategic Cost Management Business Laws <br> and Regulations Financial Management<br> • IT Application Tools in Business<br> • PE 3 <br><br>Second Semester<br> Ethics<br> • GE Elective (Business Logic)<br> • Business Taxation<br> • Regulatory Framework and legal issues in business<br> • Intermediate Accounting 3<br> • Governance, Business Ethics, Risk Management<br> and Internal control<br> • Accounting Information System<br> PE3<br><br>THIRD YEAR<br> First Semester<br> • Rizal\'s Life and Works<br> • Statistical Analysis with Software Application<br> • Auditing and Assurance Principles Auditing and <br> Assurance: Concepts and Applications 1<br> • Accounting for Special Transactions<br> • Accounting for Business<br> • Combinations<br> • Professional Electives 1 <br><br>THIRD YEAR<br> • Second Semester<br> • Accounting Research Methods<br> • International Business and Trade<br> • Accounting for Government and Non-profit Organizations<br> • Auditing and Assurance: Concepts and Applications 2<br> • Auditing and Assurance:<br> • Specialized Industries<br> • Auditing in a CIS Environment<br> • Professional Electives 2 <br><br>FOURTH YEAR<br> First Semester<br> • Accounting internship<br> • Accounting Research <br><br>Second Semester<br> • 5 Social Science and Philosophy<br> • Arts & Humanities<br> • Strategic Management<br> • Strategic Business Analysis<br> • Professional Electives 3<br> • Professional Electives 4'),
(56, 'professional subject and elective entrepreneurship', 'entrep', 'curriculum', 'subject', 'ched', 'These are the ENTREPRENEUR Professional Elective or courses of the curriculum is<br> <br>FIRST YEAR<br> Semester 1<br> • Entrepreneurial behavior<br> • GE 1-Understanding the Self<br> • GE 2- Readings in Philippine History <br> • GE 3- The Contemporary World<br> • NSTP 1<br> • PE 1<br><br>Semester 2<br>Microeconomics<br> • GE 4- Mathematics in the Modern World <br> • GE 5-Purposive Communication <br> • GE 6- Art Appreciation<br> • NSTP 2<br> • PE 2 <br><br>SECOND YEAR<br> Semester 1<br> • Opportunity Seeking<br> • GE 7- Science, Technology, and Society GE 8- Ethics<br> • GE 9-- Rizal\'s Life and Works (as mandated by law)<br> • Entrepreneurial Leadership in an Organization<br> • PE 3 <br><br>Semester 2<br> • Market Research and Consumer Behavior<br> • Innovation Management <br> • Pricing and Costing<br> • Human Resources Management <br> • GE Elective 1- Mathematics, <br> Science & Technology<br> • GE Elective 2- Social Science and <br> Philosophy<br> • PE 4 <br><br>THIRD YEAR<br> Semester 1<br> • Financial Management<br> • Production and Operation Management <br> • GE Elective 3- Arts & Humanities<br> • Track 1<br> • Elective 1<br> • Elective 2 <br><br>Semester 2<br> • Business Plan Preparation<br> • Track 2<br> • Elective 3<br> • Elective 4<br> • International Business and Trade<br> • Bus. Law and Tax<br> • Strategic Management <br><br>FOURTH YEAR<br> Semester 1<br> • Business Plan Implementation 1 <br> • Social Entrepreneurship<br> • Track 3 <br><br>Semester 2<br> • Business Plan Implementation 2 <br> • Track 4'),
(57, 'professional subject and elective mathematics', 'curriculum', 'subject', 'ched', 'math', ' These are the BS MATHEMATICS Professional Elective or courses of the curriculum is<br><br> First Semester<br> • Descriptive Title<br> • Calculus I<br> • Fundamentals of Computing 1<br> • GE Course 1<br> • GE Course 2<br> • GE Course 3<br> • PE 2<br> • NSTP<br><br>Second Sem<br> • Calculus II<br> • Fundamental Concepts of<br> • Math GE Course 4<br> • GE Course 5<br> • GE Course 6<br> • PE II <br> • NSTP <br><br>2ND YEAR<br>First Semester<br> • Calculus III<br> • Abstract Algebra I<br> • General Physics | Lec and Laboratory<br> • Non-math Foundational Course<br> • GE Course 7<br> • PE III <br><br>Second Semester<br> • Advanced Calculus I<br> • Linear Algebra<br> • probability<br> • Biology or General<br> • Physics II or General<br> • Chemistry I<br> • GE Course 8<br> • PE IV <br><br>3RD YEAR<br> First Semester<br> • Descriptive Title Advanced <br> Course in Algebra <br> or Analysis Differential <br> Equations I<br> • Math Elective 1<br> • Statistical Theory<br> • GE Course 9 <br><br>Second Semester<br> • Modern Geometry<br> • Topology or Elementary <br> Number Theory<br> • Numerical Analysis or <br> Mathematical Modeling<br> • Math Elective 2<br> • GE Course 10 <br><br>4TH YEAR<br> First Semester<br> • Descriptive Title<br> • Complex Analysis<br> • Math Elective 3<br> • Qualified Elective / Cognate 1<br> • Free Elective 1 <br> • GE Course 11 <br><br>Second Semester<br> • Qualified Elective / Cognate 2<br> • Free Elective 2<br> • GE Course 12<br> • Thesis or Special Problem<br> '),
(58, 'professional subject and elective psychology', 'psych', 'subject', 'ched', 'curriculum', 'These are the PSYCHOLOGY Professional Elective or courses of the curriculum is <br><br>BS PSYCHOLOGY<br> 1ST YEAR<br> First Semester<br> • Understanding the Self<br> • Mathematics in the Modern<br> • World<br> • Science Technology and <br> Society Purposive Communication<br> • GE Electives 1<br> • PE 1 <br><br>Second Semester<br> • Readings in Philippine History<br> • Art Appreciation<br> • GE Electives 2<br> • Introduction to Psychology Ethics<br> PE 2<br> <br> 2ND YEAR<br> First Semester<br> • The Contemporary World<br> • Psychological Statistics<br> • Physiological /Biological<br> • Psychology<br> • Developmental Psychology<br> • GE Electives 3<br> • NSTP 1<br> • PE 3 <br><br>Second Semester<br> • Life of Rizal<br> • Theories of Personality<br> • Cognitive Psychology<br> • Experimental Psychology<br> • \"Natural Science Electives I <br> • NSTP II<br> • PE 4 <br><br>3RD YEAR<br> First Semester<br> • Field Methods in Psychology<br> • Abnormal Psychology<br> • Social Psychology<br> • Filipino Psychology or<br> • *Natural Science Electives II <br><br>Second Semester<br> • Psychological Assessment <br> • Culture and Psychology/ Filipino <br> Psychology or Sikolohiyang Pilipino <br> • Industrial/Organizational Psychology<br> • *Natural Science Electives III <br><br>4TH YEAR<br> First Semester<br> Course<br> • Research in Psychology I<br> • *Natural Science Electives IV Psychology Elective I <br><br>Second Semester<br> • Research in Psychology II Psychology Elective 2');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(50) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_gender` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_contact` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_gender`, `user_password`, `user_contact`) VALUES
(101, 'Test', 'test@gmail.com', 'male', '1234', '1234567890'),
(102, 'Test1', 'test1@gmail.com', 'male', '1234', '1234567890'),
(103, 'Dean', 'dean@cca.edu.ph', 'male', '1234', '9456851454');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`ques_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `ques_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
