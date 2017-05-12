-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2017 at 04:31 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `approval`
--

CREATE TABLE `approval` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course` varchar(40) NOT NULL,
  `trainee_id` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `approval` varchar(20) NOT NULL DEFAULT 'pending',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approval`
--

INSERT INTO `approval` (`id`, `course`, `trainee_id`, `name`, `approval`, `time`) VALUES
(1, 'Java', 'trainee1', 'kathy', 'Approved', '2017-03-09 07:23:20'),
(4, 'CSS,HTML', 'trainee4', 'monica', 'Disapproved', '2017-03-09 07:23:20'),
(5, 'Testing', 'trainee6', 'chandler', 'Approved', '2017-03-09 07:23:20'),
(6, 'Java', 'trainee5', 'leonard', 'Approved', '2017-03-09 07:23:20'),
(7, 'Testing', 'trainee8', 'collins', 'Approved', '2017-03-09 07:23:20'),
(8, 'Testing', 'trainee8', 'collins', 'Approved', '2017-03-09 07:23:20'),
(9, 'Testing', 'trainee6', 'chandler', 'Approved', '2017-03-09 07:23:20'),
(17, 'informatica', 'trainee1', 'kathy', 'Approved', '2017-03-15 22:25:28'),
(12, 'Testing', 'trainee1', 'kathy', 'Approved', '2017-03-09 07:59:00'),
(14, 'Testing', 'trainee2', 'aishu', 'Approved', '2017-03-09 07:59:00'),
(16, 'Testing', 'trainee6', 'chandler', 'Approved', '2017-03-09 09:48:26'),
(35, 'Docker', 'trainee1', 'kathy', 'Approved', '2017-03-28 06:56:25'),
(19, 'Networks', 'trainee1', 'kathy', 'Approved', '2017-03-15 22:25:28'),
(21, 'PHP', 'trainee1', 'kathy', 'Approved', '2017-03-15 22:25:28'),
(37, 'Docker', 'trainee1', 'kathy', 'Approved', '2017-03-28 06:56:25'),
(23, '.NET', 'trainee1', 'kathy', 'Approved', '2017-03-15 22:25:28'),
(29, 'Docker', 'trainee1', 'kathy', 'Approved', '2017-03-28 06:56:25'),
(25, 'PHP', 'trainee1', 'kathy', 'Approved', '2017-03-28 06:56:25'),
(27, 'Testing', 'trainee2', 'aishu', 'Approved', '2017-03-28 06:56:25'),
(31, 'R Programming', 'trainee1', 'kathy', 'Approved', '2017-03-28 06:56:25'),
(33, 'Java', 'trainee1', 'kathy', 'Approved', '2017-03-28 06:56:25'),
(39, 'informatica', 'trainee1', 'kathy', 'Approved', '2017-03-28 06:56:25'),
(42, 'R Programming', 'trainee1', 'kathy', 'Approved', '2017-03-28 06:56:25'),
(41, 'cloud computing', 'trainee1', 'kathy', 'Approved', '2017-03-28 06:56:25'),
(115, 'Docker', 'trainee1', 'kathy', 'Approved', '2017-03-28 06:56:25'),
(117, 'PHP', 'trainee1', 'kathy', 'Approved', '2017-03-28 06:56:25'),
(121, 'CSS,HTML', 'trainee1', 'kathy', 'Approved', '2017-03-28 06:56:25'),
(120, 'Docker', 'trainee1', 'kathy', 'Approved', '2017-03-28 06:56:25'),
(122, 'Docker', 'trainee1', 'kathy', 'Approved', '2017-03-28 06:56:25'),
(123, 'cloud computing', 'trainee1', 'kathy', 'Approved', '2017-03-28 06:56:25'),
(124, 'Java', 'trainee1', 'kathy', 'pending', '2017-03-28 07:08:27'),
(125, 'Service Oriented Architecture', 'trainee1', 'kathy', 'pending', '2017-03-28 15:34:38'),
(126, 'informatica', 'trainee2', 'aishu', 'pending', '2017-03-29 12:33:15'),
(127, 'Network security', 'trainee1', 'kathy', 'pending', '2017-04-11 02:56:28'),
(128, 'cloud computing', 'trainee2', 'aishu', 'pending', '2017-04-11 05:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trainee_id` varchar(15) NOT NULL,
  `trainee_name` varchar(75) NOT NULL,
  `course` varchar(40) NOT NULL,
  `Present` int(11) NOT NULL DEFAULT '0',
  `Absent` int(11) NOT NULL DEFAULT '0',
  `Completion` varchar(50) NOT NULL DEFAULT 'pending',
  `Total_hours` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `trainee_id`, `trainee_name`, `course`, `Present`, `Absent`, `Completion`, `Total_hours`) VALUES
(1, 'trainee1', 'kathy', 'Java', 10, 0, 'Completed', 0),
(2, 'trainee3', 'rachel', 'Java', 4, 0, 'pending', 0),
(3, 'trainee4', 'monica', 'Java', 2, 0, 'pending', 0),
(4, 'trainee1', 'kathy', '.NET', 5, 0, 'pending', 0),
(5, 'trainee1', 'kathy', 'PHP', 5, 0, 'pending', 0),
(6, 'trainee1', 'kathy', 'Networks', 5, 0, 'pending', 0),
(7, 'trainee1', 'kathy', 'informatica', 5, 0, 'pending', 0),
(8, 'trainee6', 'chandler', 'Testing', 3, 1, 'pending', 4),
(9, 'trainee1', 'kathy', 'Testing', 2, 2, 'pending', 4),
(10, 'trainee1', 'kathy', 'Docker', 0, 0, 'pending', 0),
(11, 'trainee1', 'kathy', 'Docker', 0, 0, 'pending', 0),
(12, 'trainee1', 'kathy', 'Docker', 0, 0, 'pending', 0),
(13, 'trainee1', 'kathy', 'PHP', 0, 0, 'pending', 0),
(15, 'trainee1', 'kathy', 'R Programming', 0, 0, 'pending', 0),
(16, 'trainee1', 'kathy', 'Java', 0, 0, 'pending', 0),
(17, 'trainee1', 'kathy', 'informatica', 0, 0, 'pending', 0),
(18, 'trainee1', 'kathy', 'R Programming', 0, 0, 'pending', 0),
(19, 'trainee1', 'kathy', 'cloud computing', 0, 0, 'pending', 0),
(20, 'trainee1', 'kathy', 'Docker', 0, 0, 'pending', 0),
(21, 'trainee1', 'kathy', 'PHP', 0, 0, 'pending', 0),
(22, 'trainee1', 'kathy', 'CSS,HTML', 0, 0, 'pending', 0),
(23, 'trainee1', 'kathy', 'Docker', 0, 0, 'pending', 0),
(24, 'trainee1', 'kathy', 'Docker', 0, 0, 'pending', 0),
(25, 'trainee1', 'kathy', 'cloud computing', 0, 0, 'pending', 0),
(26, 'trainee1', 'kathy', 'Docker', 0, 0, 'pending', 0),
(29, 'trainee1', 'kathy', 'PHP', 0, 0, 'pending', 0),
(30, 'trainee2', 'aishu', 'Testing', 3, 2, 'Completed', 5);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `course` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course`) VALUES
(1, 'Networks'),
(2, 'R Programming'),
(3, 'PHP'),
(4, 'Testing'),
(5, 'CSS,HTML'),
(6, 'Java'),
(7, '.NET'),
(8, 'redhat'),
(9, 'informatica'),
(10, 'cloud computing'),
(17, 'Network security'),
(18, 'Service Oriented Architecture');

-- --------------------------------------------------------

--
-- Table structure for table `course_materials`
--

CREATE TABLE `course_materials` (
  `id` int(9) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_materials`
--

INSERT INTO `course_materials` (`id`, `filename`, `created`) VALUES
(6, '6-learningManagement.pdf', '2017-02-12 17:31:01'),
(7, '7-laravel_tutorial.pdf', '2017-02-12 17:31:57'),
(8, '8-project ppt.pptx', '2017-02-12 17:32:11'),
(15, '14-JSP Sessions.docx', '2017-02-17 20:20:53'),
(13, '13-emcee.docx', '2017-02-17 20:18:30'),
(16, '16-jsp_tutorial.pdf', '2017-02-17 20:21:40'),
(17, '17-first review.pptx', '2017-02-21 08:37:38'),
(18, '18-Second review.pptx', '2017-02-28 06:45:09'),
(19, '19-laravel_tutorial.pdf', '2017-03-03 11:59:44'),
(20, '20-6-learningManagement.pdf', '2017-03-21 10:01:16'),
(21, '21-8-project ppt.pptx', '2017-03-26 17:38:38'),
(22, '22-8-project ppt.pptx', '2017-03-28 06:52:05'),
(23, '23-22-8-project ppt.pptx', '2017-03-28 15:38:07'),
(24, '24-8-project ppt.pptx', '2017-04-11 05:10:17');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `number` bigint(20) UNSIGNED NOT NULL,
  `id` varchar(25) NOT NULL,
  `name` varchar(35) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`number`, `id`, `name`, `role`) VALUES
(1, 'trainee1', 'kathy', 'trainee'),
(2, 'trainee2', 'aishu', 'trainee'),
(3, 'trainee3', 'rachel', 'trainee'),
(4, 'trainee4', 'monica', 'trainee'),
(5, 'trainee5', 'leonard', 'trainee'),
(6, 'trainee6', 'chandler', 'trainee'),
(7, 'trainee7', 'divya', 'trainee'),
(8, 'trainee8', 'collins', 'trainee'),
(9, 'trainee9', 'rose', 'trainee'),
(10, 'trainee10', 'dylan', 'trainee'),
(11, 'trainer1', 'lily', 'trainer'),
(12, 'trainer2', 'mark', 'trainer'),
(13, 'trainer3', 'sue', 'trainer'),
(14, 'trainer4', 'june', 'trainer'),
(15, 'trainer5', 'lecrae', 'trainer'),
(16, 'trainer6', 'april', 'trainer'),
(17, 'trainer7', 'kendra', 'trainer'),
(18, 'trainer8', 'lamarck', 'trainer'),
(19, 'trainer9', 'michael', 'trainer'),
(20, 'trainer10', 'gabriel', 'trainer'),
(21, 'tm1', 'marcus', 'training manager'),
(22, 'tm2', 'mike', 'training manager'),
(23, 'pm_1', 'Mathew', 'pm'),
(28, 'trainee11', 'Aishwarya', 'trainee'),
(29, 'trainee16', 'Divya', 'trainee'),
(30, 'trainee33', 'Aishwarya', 'trainee'),
(31, 'trainee47', 'Aishwarya', 'trainee'),
(32, 'trainee50', 'Aishwarya', 'trainee'),
(33, 'trainee55', 'Aishwarya', 'trainee'),
(34, 'trainee44', 'Aish', 'trainee'),
(37, 'trainer12', 'Amit', 'trainer'),
(38, 'trainer13', 'amish', 'trainer'),
(39, 'trainee60', 'Div', 'trainee'),
(40, 'trainee61', 'Div', 'trainee'),
(41, 'trainee62', 'Amit', 'trainee'),
(42, 'trainee110', 'Aish', 'trainee'),
(43, 'trainee120', 'Aish', 'trainee');

-- --------------------------------------------------------

--
-- Table structure for table `networks_att`
--

CREATE TABLE `networks_att` (
  `trainee_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `Attendance` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notif`
--

CREATE TABLE `notif` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subject` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notif`
--

INSERT INTO `notif` (`id`, `time`, `subject`, `comment`) VALUES
(1, '2017-03-28 08:41:14', 'Hello', 'Hello All'),
(2, '2017-03-28 08:41:14', 'Message 2', 'Hello from the other sidE!!!'),
(3, '2017-03-28 08:41:14', 'Message 2', 'Hello from the other side'),
(4, '2017-03-28 08:41:14', 'Urgent requirement', '2 trainees well versed in PHP and Networks  Required'),
(5, '2017-03-28 08:41:14', 'Urgent requirement', '2 trainees well versed in PHP and Networks Required'),
(6, '2017-03-28 08:41:14', 'Urgent requirement', '2 trainees well versed in PHP and Networks Required'),
(7, '2017-03-28 08:41:14', 'Urgent message', 'required 2 trainees well versed in PHP'),
(8, '2017-03-28 08:41:14', 'Urgent message', 'required 2 trainees well versed in PHP'),
(18, '2017-03-28 08:41:14', 'Hello', 'Welcome'),
(17, '2017-03-28 08:41:14', 'Hello', 'Welcome to the training program'),
(16, '2017-03-28 08:41:14', 'Hello', 'welcome to the training'),
(19, '2017-04-03 07:57:41', 'Urgent message', 'Required 4 candidates trained in Docker'),
(20, '2017-04-11 03:48:15', 'Urgent Message', '4 candidates  required well versed in Cloud Computing');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trainee_id` varchar(40) NOT NULL,
  `test_id` int(10) NOT NULL,
  `test_date` date NOT NULL,
  `score` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `trainee_id`, `test_id`, `test_date`, `score`) VALUES
(23, 'trainee2', 2, '2017-03-29', 9),
(19, 'trainee1', 1, '2017-03-28', 6),
(22, 'trainee1', 2, '2017-03-28', 7),
(24, 'trainee1', 3, '2017-04-11', 3);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `test_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(5) NOT NULL,
  `test_name` varchar(40) NOT NULL,
  `total_que` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`test_id`, `course_id`, `test_name`, `total_que`) VALUES
(1, 5, 'Introduction to CSS HTML', 8),
(2, 5, 'Intermediate Level CSS HTML Quiz', 10),
(3, 4, 'testing introduction ', 10),
(4, 4, 'testing intermediate ', 10),
(5, 10, 'cloud computing introduction', 10),
(7, 7, '.Net test ', 10),
(16, 17, 'Network security test ', 10),
(9, 9, 'Informatica test ', 10),
(10, 6, 'Java test ', 10),
(11, 1, 'networks test ', 10),
(12, 3, 'PHP test ', 10),
(13, 2, 'R test ', 10),
(14, 8, 'redhat test ', 10),
(15, 18, 'SOA test ', 10);

-- --------------------------------------------------------

--
-- Table structure for table `test_questions`
--

CREATE TABLE `test_questions` (
  `que_id` bigint(20) UNSIGNED NOT NULL,
  `test_id` int(10) NOT NULL,
  `que_desc` text NOT NULL,
  `ans1` text NOT NULL,
  `ans2` text NOT NULL,
  `ans3` varchar(100) NOT NULL,
  `ans4` varchar(100) NOT NULL,
  `true_ans` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_questions`
--

INSERT INTO `test_questions` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(1, 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2),
(2, 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3),
(3, 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3),
(4, 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 4),
(5, 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4),
(6, 1, 'HTML program can be read and rendered by _________.', 'A Compiler', 'B Web Browser', 'C Server', 'D Interpreter', 2),
(9, 2, 'Which of the following is a way to associate styles with your HTML document?', 'A - External CSS - The Element', 'B - Imported CSS - @import Rule', 'C - Both of the above.', 'D - None of the above.   Show Answer', 3),
(10, 2, 'Which of the following defines 1% of viewport width?\r\n\r\n', 'A - px', 'B - vh', 'C - vw', 'D - vmin   ', 3),
(11, 2, 'Which of the following property is used to control the repetition of an image in the background?\r\n\r\n', 'background-color', 'background-image', 'background-repeat', 'background-position   ', 3),
(12, 2, 'Which of the following property of a table element specifies the width that should appear between table cells?\r\n\r\n', ':border-collapse', ':border-spacing', ':caption-side', ' :empty-cells   ', 2),
(13, 2, 'Which of the following value of cursor shows it as a pointing hand?\r\n\r\n', 'A - crosshair', 'B - default', 'C - pointer', 'D - move   ', 3),
(14, 2, 'Which of the following property is used to create a small-caps effect?\r\n\r\n', 'A - font-family', 'B - font-style', 'C - font-variant', 'D - font-weight  ', 3),
(15, 2, 'Which of the following property changes the color of bottom border?\r\n\r\n', 'A - :border-color', 'B - :border-style', 'C - :border-width', 'D - :border-bottom-color  ', 4),
(16, 2, 'Which of the following property serves as shorthand for the padding properties?', 'A - padding', 'B - padding-top', 'C - padding-left', 'D - padding-right   ', 1),
(17, 2, 'Which of the following property specifies whether a long point that wraps to a second line should align with the first line or start underneath the start of the marker of a list?', 'A - list-style-type', 'B - list-style-position', 'C - list-style-image', 'D - list-style   ', 2),
(18, 2, 'Which of the following property is used to set the width of an image?', 'border', 'height', 'width', 'moz-opacity   ', 3),
(23, 3, 'A product risk analysis meeting is held during the project planning period. Which of the following determines the level of risk?', 'Difficulty of fixing related problems in code', 'The harm that might result to the user', ' The price for which the software is sold', 'The technical staff in the meeting', 2),
(29, 3, 'Which of the following are advanced scripting techniques for test execution tools?', ' Data-driven and keyword-driven', 'Data-driven and capture-driven', 'Capture-driven and keyhole-driven', 'Playback-driven and keyword-driven', 1),
(28, 3, 'What is a potential risk in using tools to support testing?', 'Unrealistic expectations, expecting the tool to do too much', ' Insufficient reliance on the tool', 'The tool may find defects that are not  there', 'The tool will repeat exactly the same thing it did the previous time', 1),
(26, 3, 'Which of the following is most likely to be listed as a project risk?', ' Unexpected illness of a key team member', 'Excessively slow transaction-processing time', 'Data corruption under network congestion ', 'Failure to handle a key use case', 1),
(27, 3, 'Which of the following metrics would be most useful to monitor during test execution?', 'Percentage of test cases written', 'Number of test environments remaining to be configured', 'Number of defects found and fixed', 'Percentage of requirements for which a test has been written', 3),
(30, 3, 'Which of the following is among the typical tasks of a test leader?', 'Develop system requirements, design specifications and usage models', 'Handle all test automation duties', 'Keep tests and test coverage hidden from programmers', 'Gather and report test progress metrics', 4),
(31, 3, 'A product risk is related to which of the following?', 'Control of the test project', 'The test object', 'A single test item', 'A potential negative outcome', 2),
(32, 3, 'Which of the following would NOT be done as part of selecting a tool for an organization?', 'Assess organizational maturity, strengths and weaknesses', 'Roll out the tool to as many users as possible within the organization', 'Evaluate the tool features against clear requirements and objective criteria', 'Identify internal requirements for coaching and mentoring in the use of the tool', 2),
(33, 3, 'You and the project stakeholders develop a list of product risks and project risks during the planning stage of a project.What else should you do with those lists of risks during test planning?', ' Determine the extent of testing required for the product risks ', 'Obtain the resources needed to completely cover each product risk with tests ', 'Execute sufficient tests for the product risks.', 'No further risk management action is required at the test planning stage', 1),
(34, 3, 'You are working as a tester on a project to develop a point-of-sales system for grocery stores and other similar retail outlets.Which of the following is a product risk for such a project?', 'The arrival of a more-reliable competing product on the market', 'Delivery of an incomplete test release to the first cycle of system test', 'An excessively high number of defect fixes fail during re-testing', 'Failure to accept allowed credit cards', 4),
(35, 4, 'Which of the following is a goal for a proof-of-concept or pilot phase for tool evaluation?', 'Decide which tool to acquire', 'Decide on the main objectives and requirements for this type of tool', 'Evaluate the tool vendor including training, support and commercial aspects', 'Decide on standard ways of using, managing, storing and maintaining the tool', 4),
(36, 4, 'Which tools help to support static testing?', 'Static analysis tools and test execution tools', 'Review process support tools, static analysis tools and coverage measurement tools', 'Dynamic analysis tools and modeling tools', 'Review process support tools, static analysis tools and modeling tools', 4),
(37, 4, 'What do we mean when we call someone a test manager?', 'A test manager manages a collection of test leaders', 'A test manager is the leader of a test team or teams', 'A test manager gets paid more than a test leader', 'A test manager reports to a test leader', 2),
(38, 4, 'Which test activities are supported by test harness or unit test framework tools?', 'Test management and control', 'Test specification and design', 'Test execution and logging', 'Performance and monitoring', 3),
(39, 4, 'What are the potential benefits from using tools in general to support testing?', 'reduction in the number of testers needed', 'Greater repeatability of tests', 'Greater responsiveness of users', ' reduction in paperwork', 2),
(40, 4, 'what do we call a document that describes any event that occurred during testing which requires further investigation?', 'A bug report', 'A defect report', 'An incident report', 'A test summary report', 3),
(41, 4, 'Which of the following factors is an influence on the test effort involved in most projects?', 'Geographical separation of tester and programmers', 'The departure of the test manager during the project', 'The quality of the information used to develop the tests', 'Unexpected long-term illness by a member of the project team', 3),
(42, 4, 'Which of the following elements of the test plan, while specified during test planning, is assessed during test execution?', 'Test tasks', 'Environmental needs', 'Exit criteria', 'Test team training', 3),
(43, 4, 'The place to start if you want a (new) test tool is:', 'Attend a tool exhibition', 'Invite a vendor to give a demo', 'Analyse your needs and requirements', 'Find out what your budget would be for the tool', 3),
(44, 4, 'When a new testing tool is purchased, it should be used first by:', 'A small team to establish the best way to use the tool', 'Everyone who may eventually have some use for the tool', 'The independent testing team', 'The managers to see what projects it should be used in', 1),
(45, 5, ' _________ computing refers to applications and services that run on a distributed network using virtualized resources.', 'Distributed', 'Cloud', 'Soft ', 'Parallel', 2),
(46, 5, '________ as a utility is a dream that dates from the beginning of the computing industry itself.', 'Model ', 'Computing ', 'Software', 'All of the mentioned', 2),
(47, 5, 'Which of the following is essential concept related to Cloud ?', ' Reliability', 'Productivity', 'Abstraction', 'All of the mentioned', 3),
(48, 5, 'Which of the following cloud concept is related to pooling and sharing of resources ?', 'Polymorphism ', 'Abstraction ', 'Virtualization ', 'None of the mentioned', 3),
(49, 5, '________ has many of the characteristics of what is now being called cloud computing', ' Internet ', ' Softwares', 'Web Service', 'All of the mentioned', 1),
(50, 5, 'Which of the following can be identified as cloud ?', 'Web Applications)  bIntranet c) Hadoop d) All of the mentioned', 'Intranet', ' Hadoop ', 'All of the mentioned', 3),
(51, 5, 'Cloud computing is an abstraction based on the notion of pooling physical resources and presenting them as a ________ resource.', 'real', 'virtual', 'cloud', ' None of the mentioned', 2),
(52, 5, 'Which of the following is Cloud Platform by Amazon ?', ' Azure ', ' AWS', 'Cloudera', 'All of the mentioned', 3),
(53, 5, 'Which of the following is owned by an organization selling cloud services ?', 'Public', 'Private ', 'Community', 'Hybrid', 1),
(54, 5, ' _______ provides virtual machines, virtual storage, virtual infrastructure, and other hardware assets', ' IaaS', ' SaaS', ' PaaS', 'All of the mentioned', 1),
(55, 7, 'Which of the following statements is correct about Managed Code?', 'Managed code is the code that is compiled by the JIT compilers.', 'Managed code is the code where resources are Garbage Collected', 'Managed code is the code that runs on top of Windows.', 'Managed code is the code that is written to target the services of the CLR', 4),
(56, 7, 'Which of the following utilities can be used to compile managed assemblies into processor-specific native code?', 'gacutil', 'ngen', 'dumpbin', 'ildasm', 2),
(57, 7, 'Which of the following components of the .NET framework provide an extensible set of classes that can be used by any .NET compliant programming language?', '.NET class libraries 	', 'Common Language Runtime', 'Common Language Infrastructure', 'Component Object Model', 1),
(58, 7, 'Which of the following .NET components can be used to remove unused references from the managed heap?', 'Common Language Infrastructure 	', 'CLR', 'Garbage Collector', 'Class Loader', 3),
(59, 7, 'Which of the following assemblies can be stored in Global Assembly Cache?', 'Private Assemblies', 'Friend Assemblies', 'Shared Assemblies', 'Public Assemblies', 3),
(60, 7, 'Code that targets the Common Language Runtime is known as', 'Unmanaged', 'Distributed', 'Legacy', 'Managed Code', 4),
(61, 7, 'Which of the following is the root of the .NET type hierarchy?', 'System.Object', 'System.Type', 'System.Base', 'System.Parent', 1),
(62, 7, 'Which protocol is used to transfer files from local host to remote host?', 'HTTP', 'FTP', 'UDP', 'TCP', 2),
(63, 7, 'Which commands are used to specify settings of an .aspx file?', 'Class', 'Directives', 'Events', 'Validation', 2),
(64, 7, 'Which Webserver is developed by Microsoft?', 'Apache Tomcat', 'Caudium', 'Internet Information Services', 'Webrick', 3),
(65, 9, '________ server governs the implementation of various processes among the factors of serverâ€™s database repository.', 'Repository server', 'Temp server', 'Powerhouse server', 'Domain server', 3),
(66, 9, 'Can one use mapping parameter or variables created in one mapping into any other reusable transformation?YES', 'yes', 'no', '-', '-', 1),
(67, 9, 'Which type is NOT used in metadata stored in repository?', 'Source Definition', 'Mappings', 'Mapplet', 'Applete', 4),
(68, 9, 'Can you validate all mappings in the repository simultaneously?\r\n', 'yes', 'no', '-', '-', 2),
(69, 9, 'Which transformation is used to combine data from different sources?', 'Joiner transformation', 'Lookup transformation', 'Union Transformation', 'Expression transformation', 3),
(70, 9, 'Which transformation is used numerous times in mapping?', 'Reusable transformation', 'Union Transformation', 'Lookup transformation', 'Expression transformation', 1),
(71, 9, 'Which task is used anywhere in the workflow to run the shell commands?', 'Command Task', 'Session Task', 'Standalone Command Task', 'email Task', 3),
(72, 9, 'OLAP stands for?', 'On-Line Analysis Processing', 'On-Line Analytical Processing', 'On-Line Access Processing', 'On-Line Application processing', 2),
(73, 9, 'Which process is used for online analytical processing?', 'Data mart', 'Database', 'Data warehouse', 'Data', 3),
(74, 4, 'In joiner transformation we override the query?', 'yes', 'no', '-', '-', 2),
(75, 10, 'Which one of these lists contains only Java programming language keywords?', 'class, if, void, long, Int, continue', 'goto, instanceof, native, finally, default, throws', 'try, virtual, throw, final, volatile, transient', 'strictfp, constant, super, implements, do', 2),
(76, 10, 'Which is a reserved word in the Java programming language?', 'method', 'native', 'subclasses ', 'reference', 2),
(77, 10, 'Which is a valid keyword in java?', 'interface', 'string', 'Float', 'unsigned', 1),
(78, 10, 'Which one of the following will declare an array and initialize it with five numbers?', 'Array a = new Array(5)', 'int [] a = {23,22,21,20,19}', 'int a [] = new int[5]', 'int [5] array', 2),
(79, 4, 'Which is the valid declarations within an interface definition?', 'public double methoda()', 'public final double methoda()', 'static void methoda(double d1)', 'protected void methoda(double d1)', 1),
(80, 10, 'Which one is a valid declaration of a boolean?', 'boolean b1 = 0', 'boolean b4 = Boolean.false()', 'boolean b3 = false', 'boolean b5 = no', 3),
(87, 11, 'How long is an IPv6 address?', '32 bits', '128 bytes', '64 bits', '128 bits', 4),
(82, 10, '	\r\nSuppose that you would like to create an instance of a new Map that has an iteration order that is the same as the iteration order of an existing instance of a Map. Which concrete implementation of the Map interface should be used for the new instance?', 'TreeMap', 'HashMap', 'LinkedHashMap', 'The answer depends on the implementation of the existing instance.', 3),
(83, 10, 'Which class does not override the equals() and hashCode() methods, inheriting them directly from class Object?', 'java.lang.String', 'java.lang.Double', 'java.lang.StringBuffer', 'java.lang.Character', 3),
(84, 10, 'Which collection class allows you to grow or shrink its size and provides indexed access to its elements, but whose methods are not synchronized?', 'java.util.HashSet', 'java.util.LinkedHashSet', 'java.util.List', 'java.util.ArrayList', 4),
(85, 10, '	\r\nYou need to store elements in a collection that guarantees that no duplicates are stored and all elements can be accessed in natural order. Which interface provides that capability?', 'java.util.Map', 'java.util.Set', 'java.util.List', 'java.util.Collection', 2),
(86, 10, 'Which interface does java.util.Hashtable implement?', 'Java.util.Map', 'Java.util.List', 'Java.util.HashTable', 'Java.util.Collection', 1),
(88, 11, '	\r\nWhat flavor of Network Address Translation can be used to have one IP address allow many users to connect to the global Internet?', 'NAT', 'Static ', 'Dynamic', 'PAT', 4),
(89, 11, 'What command is used to create a backup configuration?', 'copy running backup', 'copy running-config startup-config', 'config mem', 'wr mem', 2),
(90, 11, 'You have 10 users plugged into a hub running 10Mbps half-duplex. There is a server connected to the switch running 10Mbps half-duplex as well. How much bandwidth does each host have to the server?', '100 kbps ', '1 Mbps', '2 Mbps', '10 Mbps', 4),
(91, 11, 'Which WLAN IEEE specification allows up to 54Mbps at 2.4GHz?', 'A', 'B', 'G', 'N', 3),
(92, 11, 'Which of the following is the valid host range for the subnet on which the IP address 192.168.168.188 255.255.255.192 resides?', '192.168.168.129-190', '192.168.168.129-191', '192.168.168.128-190', '192.168.168.128-192', 1),
(93, 11, '	\r\nTo back up an IOS, what command will you use?', 'backup IOS disk ', 'copy ios tftp', 'copy tftp flash', 'copy flash tftp', 4),
(94, 11, '	\r\nWhat protocol does PPP use to identify the Network layer protocol?', 'NCP', 'ISDN ', 'HDLC', 'LCP', 1),
(95, 11, '	\r\nWhich of the following commands will allow you to set your Telnet password on a Cisco router?', 'line telnet 0 4', 'line aux 0 4', 'line vty 0 4', 'line con 0', 3),
(96, 11, 'Which protocol does DHCP use at the Transport layer?', 'IP ', 'TCP', 'UDP ', 'ARP', 3),
(97, 12, 'This set of PHP multiple choice questions and answers focuses on PHP basics. It will be useful for anyone learning PHP Basics and Fundamentals.\r\n1. What does PHP stand for?\r\ni) Personal Home Page\r\nii) Hypertext Preprocessor\r\niii) Pretext Hypertext Processor\r\niv) Preprocessor Home Page', ' Both i) and iii)', ' Both ii) and iv)', 'Only ii)', ' Both i) and ii)', 4),
(98, 12, 'PHP files have a default file extension of..', ' .html', ' .xml ', ' .php', '.ph', 3),
(99, 12, 'A PHP script should start with ___ and end with ___:', ' < php >', ' < ? php ?>', ' <? ?>', '<?php >', 3),
(100, 12, 'Which of the following is/are a PHP code editor?\r\ni) Notepad\r\nii) Notepad++\r\niii) Adobe Dreamweaver\r\niv) PDT', 'Only iv) ', 'All of the mentioned', 'i), ii) and iii)', 'only iii)', 2),
(101, 12, ' Which of the following must be installed on your computer so as to run PHP script?\r\ni) Adobe Dreamweaver\r\nii) PHP\r\niii) Apache\r\niv) IIS', 'All of the mentioned. ', ' Only ii)', ' ii) and iii) ', ' ii), iii) and iv)', 4),
(102, 12, ' Which version of PHP introduced Try/catch Exception?', ')PHP 4 b)PHP 5 c)PHP 5.3 d)PHP 6', 'PHP 5', 'PHP 5.3', 'PHP 6', 2),
(103, 12, 'We can use ___ to comment a single line?\r\ni) /?\r\nii) //\r\niii) #\r\niv) /* */', 'Only ii) ', ' i), iii) and iv)', ' ii), iii) and iv) ', 'Both ii) and iv)', 3),
(104, 12, 'Which of the following php statement/statements will store 111 in variable num?\r\ni) int $num = 111;\r\nii) int mum = 111;\r\niii) $num = 111;\r\niv) 111 = $num;', ' Both i) and ii) ', ' All of the mentioned', 'Only iii) ', 'Only i)', 3),
(105, 12, 'What will be the output of the following php code?\r\n\r\n    <?php\r\n    $num  = 1;\r\n    $num1 = 2;\r\n    print $num . "+". $num1;\r\n    ?>', ' 3', ' 1+2 ', '1.+.2', ' Error', 2),
(106, 12, 'What will be the output of the following php code?\r\n\r\n    <?php\r\n    $num  = "1";\r\n    $num1 = "2";\r\n    print $num+$num1;\r\n    ?>', ' 3', ' 1+2 ', 'Error ', '12', 1),
(107, 13, ' What will be the output of following code snippet ?\r\n\r\n > paste("a", "b", se = ":")', 'â€œa+bâ€ ', ' â€œa=bâ€', ' â€œa b :â€', ' None of the mentioned', 4),
(108, 13, 'Point out the correct statement :', ' In R, a function is an object which has the mode function', 'R interpreter is able to pass control to the function, along with arguments that may ', 'Functions are also often written when code must be shared with others or the public', 'All of the mentioned', 4),
(109, 12, 'The __________ function returns a list of all the formal arguments of a function', ' formals() ', ' funct()', 'formal() ', ' All of the mentioned', 1),
(112, 13, ' Point out the wrong statement :\r\n', 'A formal argument can be a symbol, a statement of the form â€˜symbol = expressionâ€™', 'The first component of the function declaration is the keyword function', 'The value returned by the call to function is not a function', 'None of the mentioned', 1),
(113, 13, 'You can check to see whether an R object is NULL with the _________ function.', 'is.null()', ' is.nullobj()', ' null() ', 'All of the mentioned', 1),
(111, 13, 'What will be the output of the following code ?\r\n\r\n> f <- function(num = 1) {\r\n+        hello <- "Hello, world!\n"\r\n+        for(i in seq_len(num)) {\r\n+                cat(hello)\r\n+         }\r\n+         chars <- nchar(hello) * num\r\n+         chars\r\n+ }\r\n> f()', 'Hello, world! [1] 14', 'Hello, world! [1] 15', 'Hello, world! [1] 16', 'All of the mentioned', 1),
(114, 13, 'Which of the following code will print NULL ?', ' > args(paste) b) > arg(paste) c) > args(pastebin) d) All of the mentioned', ' > arg(paste)', ' > args(pastebin) ', 'All of the mentioned', 1),
(115, 13, 'What will be the output of following code ?\r\n\r\n> f <- function(a, b) {\r\n+       a^2\r\n+ }\r\n> f(2)', '4', '3', '2', 'All of the mentioned', 1),
(116, 13, ' What will be the output of following code snippet ?\r\n\r\n > paste("a", "b", sep = ":")', ' â€œa+bâ€', ' â€œa=bâ€', ' â€œa:bâ€', 'None of the mentioned', 3),
(117, 13, 'What will be the output of following code ?\r\n\r\n> f <- function(a, b) {\r\n+              print(a)\r\n+              print(b)\r\n+ }\r\n> f(45)', '32', '42', '52', '45', 4),
(118, 14, 'Which of the following time stamps need not exist for a file on traditional unix file system', ' Access Time', 'Modification Time', 'Creation Time', 'Change Time', 3),
(119, 14, 'Which command is used to set limits on file size', ' fsize', ' flimit ', ' ulimit ', ' usize', 3),
(120, 14, ' Which option of rmdir command will remove all directories a, b, c if path is a/b/c', 'â€“b ', 'â€“o', 'â€“p ', ' â€“t', 3),
(121, 14, ' Which represents the user home directory', ' /', '.', '..', '~', 4),
(122, 14, ' If a file is removed in Unix using â€˜rmâ€™ then', 'The file can be recovered by a normal user ', 'The file cannot be recovered by a user', 'The file can be fully recovered provided the sytem is not rebooted', 'The file will be moved to /lost+found directory and can be recovered only by admin', 2),
(123, 14, 'Executing the â€˜cd ..â€™ command when at the root level causes', ' Error message indicating the user canâ€™t access beyond the root level', ' Behavior is unix-flavor dependent ', ' Results in changing to the â€˜homeâ€™ directory ', 'Nothing happens', 4),
(124, 14, 'How do you rename file â€œnewâ€ to file â€œoldâ€?', 'mv new old', ' move new old ', ' cp new old', 'rn new old', 1),
(125, 14, 'What command is used to copy files and directories?', 'copy ', 'cp', 'rn', 'cpy', 2),
(126, 14, 'When mv f1 f2 is executed which fileâ€™s inode is freed?', 'f1 ', 'f2', ' new inode will be used', 'no inode is freed', 2),
(127, 14, 'Any fileâ€™s attribute information is stored in which structure on the disk', ' Inode', ' Data blocks', 'File blocks ', 'Directory file', 1),
(128, 15, ' Which of the following describes a message-passing taxonomy for a component-based architecture that provides services to clients upon demand ?', ' SOA ', 'EBS', 'GEC', 'All of the mentioned', 1),
(129, 15, 'Point out the correct statement:', 'SOA is a  method for requesting services from distributed components', ' SOA provides the translation', ' With SOA, clients and components can be written in different languages ', 'All of the mentioned', 4),
(130, 15, 'Which of the following is a repeatable task within a business process ?', ' service', 'bus ', ' methods', 'All of the mentioned', 1),
(131, 15, 'Point out the wrong statement:', 'SOA provides the standards that transport the messages ', 'SOA provides access to reusable Web services over a SMTP network', 'SOA offers access to ready-made, modular  widely shareable components ', 'None of the mentioned', 2),
(132, 15, 'Which of the following is used to define the service component that performs the service ?', ' WSDL', ' SCDL ', 'XML', 'None of the mentioned', 2),
(133, 15, ' Which of the following is commonly used to describe the service interface, how to bind information, and the nature of the componentâ€™s service or endpoint ?', ' WSDL ', ' SCDL', 'XML', 'None of the mentioned', 1),
(134, 15, 'Which of the following provides commands for defining logic using conditional statements ?', 'XML ', ' WS-BPEL ', ' JSON', 'None of the mentioned', 2),
(135, 15, ' Which of the following is used as middleware layer?', ' XML', 'ESB', 'UDDI', 'None of the mentioned', 2),
(136, 16, 'Confidentiality with asymmetric-key cryptosystem has its own', 'System ', 'Data ', 'Problems', ' Issues', 3),
(137, 16, 'SHA-l has a message digest of', '160 bits ', '512 bits ', '628 bits', ' 820 bits', 1),
(138, 16, 'Message authentication is a service beyond', 'Message Confidentiality ', 'Message Integrity ', 'Message Splashing ', 'Message Sending', 2),
(139, 16, ' In Message Confidentiality, transmitted message must make sense to only intended', 'Receiver', ' Sender', ' Third Party ', 'Translator', 1),
(140, 3, 'A hash function guarantees integrity of a message. It guarantees that message has not be', 'Replaced ', 'Over view', ' Changed ', 'Left', 3),
(141, 16, 'To check integrity of a message, or document, receiver creates the', 'Tag ', 'Hash Tag', ' Hyper Text ', 'Finger Print', 2),
(142, 16, 'A digital signature needs a', 'private-key system ', 'shared-key system ', 'public-key system ', 'All of them', 3),
(143, 16, ' One way to preserve integrity of a document is through use of a', 'Thumb Impression', ' Finger Print ', 'Biometric ', 'X-Rays', 2),
(144, 16, 'A session symmetric key between two parties is used', 'only once ', 'twice ', 'multiple times ', 'depends on situation', 1),
(145, 16, 'Encryption and decryption provide secrecy, or confidentiality, but not', 'Authentication ', 'Integrity', ' Keys ', 'Frames', 2),
(146, 2, 'sagvdsbd', 'gfgfgd', 'fgzzdh', 'dgvgzh', 'dfvgg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `trainee`
--

CREATE TABLE `trainee` (
  `id` int(11) NOT NULL,
  `trainee_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `DOB` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(30) NOT NULL,
  `AOI` varchar(50) NOT NULL,
  `tech_known` varchar(100) NOT NULL,
  `lang_known` varchar(100) NOT NULL,
  `experience` int(40) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'trainee',
  `status` varchar(40) NOT NULL DEFAULT 'pending',
  `coursescompleted` int(40) NOT NULL DEFAULT '0',
  `projects_completed` int(20) NOT NULL DEFAULT '0',
  `total_quiz_score` int(200) NOT NULL DEFAULT '0',
  `no_of_quiz` int(70) NOT NULL DEFAULT '0',
  `net_score` float NOT NULL DEFAULT '0',
  `total_att` int(100) NOT NULL DEFAULT '0',
  `net_att` double NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainee`
--

INSERT INTO `trainee` (`id`, `trainee_id`, `name`, `DOB`, `email`, `city`, `AOI`, `tech_known`, `lang_known`, `experience`, `role`, `status`, `coursescompleted`, `projects_completed`, `total_quiz_score`, `no_of_quiz`, `net_score`, `total_att`, `net_att`) VALUES
(7, 'trainee7', 'divya', '04-05-1993', 'divya@gmail.com', 'jaipur', 'web designing', 'html,css', 'python', 6, 'trainee', 'approved', 24, 4, 360, 48, 7.5, 115, 4.791666667),
(8, 'trainee8', 'collins', '04-12-1995', 'collins@gmail.com', 'bengaluru', 'analytics', 'php', 'c++,c#', 1, 'trainee', 'approved', 5, 2, 87, 10, 8.7, 25, 5),
(9, 'trainee9', 'rose', '04-11-1994', 'rose@gmail.com', 'chennai', 'testing', 'matlab', 'javascript', 3, 'trainee', 'approved', 14, 3, 160, 28, 5.71429, 67, 4.785714286),
(10, 'trainee10', 'dylan', '07-01-1996', 'dylan@gmail.com', 'mumbai', 'analytics', 'nosql', 'python,php', 1, 'trainee', 'approved', 5, 3, 90, 10, 9, 23, 4.6),
(42, 'trainee42', 'Kirstie', '11-01-1993', 'Kirstie@gmail.com', 'kolkata', 'networks', 'agile', 'r language', 5, 'trainee', 'approved', 21, 3, 380, 42, 9.04762, 90, 4.285714286),
(41, 'trainee41', 'Christopher', '12-12-1992', 'Christopher@gmail.com', 'delhi', 'dbms', 'matlab', 'python', 3, 'trainee', 'approved', 13, 3, 200, 26, 7.69231, 60, 4.615384615),
(40, 'trainee40', 'Lean', '03-09-1992', 'Lean@gmail.com', 'chennai', 'analytics', 'html,css', 'ruby on raile', 5, 'trainee', 'approved', 21, 2, 400, 42, 9.52381, 102, 4.857142857),
(39, 'trainee39', 'Jamie', '7/24/1995', 'Jamie@gmail.com', 'Patna', 'testing', 'html,css', 'python,php', 2, 'trainee', 'approved', 9, 3, 165, 18, 9.16667, 42, 4.666666667),
(38, 'trainee38', 'Mac', '12-01-1992', 'Mac@gmail.com', 'Nagpur', 'analytics', 'agile', 'python', 3, 'trainee', 'approved', 12, 2, 190, 24, 7.91667, 52, 4.333333333),
(37, 'trainee37', 'Toby', '8/23/1994', 'Toby@gmail.com', 'Kanpur', 'web designing', 'matlab', 'c++,c#', 2, 'trainee', 'approved', 8, 2, 120, 16, 7.5, 36, 4.5),
(36, 'trainee36', 'Nate', '6/27/1993', 'Nate@gmail.com', 'Lucknow', 'testing', 'redis,mysql', 'c++,c#', 5, 'trainee', 'approved', 20, 3, 360, 40, 9, 98, 4.9),
(35, 'trainee35', 'John', '10/16/1995', 'John@gmail.com', 'Surat', 'analytics', 'json,php', 'c,c++,java', 4, 'trainee', 'approved', 17, 3, 300, 34, 8.82353, 85, 5),
(34, 'trainee34', 'Debbie', '9/26/1995', 'Debbie@gmail.com', 'Jaipur', 'networks', 'php', 'python', 1, 'trainee', 'approved', 4, 3, 50, 8, 6.25, 18, 4.5),
(33, 'trainee33', 'Elesha', '08-08-1992', 'Elesha@gmail.com', 'Pune', 'testing', 'redis,mysql', 'C,C#', 3, 'trainee', 'approved', 13, 2, 230, 26, 8.84615, 62, 4.769230769),
(32, 'trainee32', 'Elijah', '08-10-1992', 'Elijah@gmail.com', 'Kolkata', 'networks', 'matlab', 'python', 1, 'trainee', 'approved', 5, 3, 60, 10, 6, 24, 4.8),
(31, 'trainee31', 'Johnson', '10-07-1994', 'Johnson@gmail.com', 'Chennai', 'dbms', 'redis,mysql', 'python', 6, 'trainee', 'approved', 25, 2, 420, 50, 8.4, 112, 4.48),
(30, 'trainee30', 'Malika', '04-10-1994', 'Malika@gmail.com', 'Hyderabad', 'analytics', 'json,php', 'c,c++,java', 5, 'trainee', 'approved', 23, 3, 390, 46, 8.47826, 105, 4.565217391),
(29, 'trainee29', 'Sheperd', '07-06-1995', 'Sheperd@gmail.com', 'Ahmedabad', 'testing', 'php', 'python', 3, 'trainee', 'approved', 13, 2, 200, 26, 7.69231, 62, 4.769230769),
(28, 'trainee28', 'Caroline', '08-07-1993', 'Caroline@gmail.com', 'Bengaluru', 'analytics', 'agile', 'r language', 5, 'trainee', 'approved', 21, 2, 410, 42, 9.7619, 100, 4.761904762),
(27, 'trainee27', 'Jane', '11/30/1993', 'Jane@gmail.com', 'Delhi', 'web designing', 'redis,mysql', 'C,C#', 2, 'trainee', 'approved', 9, 3, 178, 18, 9.88889, 44, 4.888888889),
(26, 'trainee26', 'Jake', '10-09-1992', 'Jake@gmail.com', 'Mumbai', 'testing', 'redis,mysql', 'python,php', 3, 'trainee', 'approved', 14, 2, 270, 28, 9.64286, 69, 4.928571429),
(25, 'trainee25', 'Joseph', '08-09-1995', 'Joseph@gmail.com', 'Patna', 'analytics', 'redis,mysql', 'c,c++,java', 2, 'trainee', 'approved', 9, 3, 170, 18, 9.44444, 24, 2.666666667),
(24, 'trainee24', 'Moses', '9/21/1995', 'Moses@gmail.com', 'Nagpur', 'networks', 'json,php', 'python,php', 5, 'trainee', 'approved', 20, 3, 380, 40, 9.5, 99, 4.95),
(23, 'trainee23', 'Karl', '4/25/1995', 'Karl@gmail.com', 'Kanpur', 'testing', 'agile', 'javascript', 4, 'trainee', 'approved', 17, 2, 330, 34, 9.70588, 60, 3.529411765),
(22, 'trainee22', 'Andrea', '6/19/1992', 'Andrea@gmail.com', 'Lucknow', 'networks', 'agile', 'ruby on raile', 1, 'trainee', 'approved', 7, 2, 135, 14, 9.64286, 31, 4.428571429),
(21, 'trainee21', 'Agness', '9/23/1993', 'Agness@gmail.com', 'Surat', 'dbms', 'matlab', 'python', 3, 'trainee', 'approved', 14, 3, 260, 28, 9.28571, 50, 3.571428571),
(20, 'trainee20', 'Loraine', '12/28/1994', 'Loraine@gmail.com', 'Jaipur', 'analytics', 'agile', 'c,c++,java', 1, 'trainee', 'approved', 6, 1, 110, 12, 9.16667, 24, 4),
(19, 'trainee19', 'Miranda', '09-05-1992', 'Miranda@gmail.com', 'Pune', 'testing', 'sql,mysql', 'python,php', 6, 'trainee', 'approved', 26, 4, 500, 52, 9.61539, 90, 3.461538462),
(18, 'trainee18', 'George', '08-03-1993', 'George@gmail.com', 'Kolkata', 'analytics', 'agile', 'python', 5, 'trainee', 'approved', 22, 3, 400, 44, 9.09091, 105, 4.772727273),
(17, 'trainee17', 'Karev', '12-12-1992', 'Karev@gmail.com', 'Chennai', 'web designing', 'json,php', 'c++,c#', 3, 'trainee', 'approved', 14, 1, 250, 28, 8.92857, 63, 4.5),
(16, 'trainee16', 'Steven', '6/30/1994', 'Steven@gmail.com', 'Hyderabad', 'testing', 'nosql', 'c,c++', 5, 'trainee', 'approved', 11, 3, 200, 22, 9.09091, 50, 4.545454545),
(15, 'trainee15', 'Izzabelle', '11/17/1993', 'Izzabelle@gmail.com', 'Ahmedabad', 'analytics', 'sql,mysql', 'r language', 2, 'trainee', 'approved', 9, 2, 167, 18, 9.27778, 44, 4.888888889),
(14, 'trainee14', 'Grey', '3/21/1992', 'Grey@gmail.com', 'Bengaluru', 'networks', 'agile', 'php', 3, 'trainee', 'approved', 13, 2, 240, 26, 9.23077, 62, 4.769230769),
(13, 'trainee13', 'Craig', '05-06-1993', 'Craig@gmail.com', 'Delhi', 'testing', 'redis,mysql', 'c,c++', 2, 'trainee', 'approved', 10, 2, 160, 20, 8, 47, 4.7),
(12, 'trainee12', 'Noelle', '6/17/1993', 'Noelle@gmail.com', 'Mumbai', 'networks', 'sql,mysql', 'javascript', 5, 'trainee', 'approved', 22, 5, 390, 44, 8.86364, 110, 5),
(11, 'trainee11', 'Lyra', '02-05-1993', 'Lyra@gmail.com', 'Bengaluru', 'dbms', 'nosql', 'python', 4, 'trainee', 'approved', 5, 4, 80, 10, 8, 23, 4.6),
(43, 'trainee43', 'Rose', '10/17/1995', 'Rose@gmail.com', 'hyderabad', 'testing', 'redis,mysql', 'c,c++,java', 6, 'trainee', 'approved', 24, 5, 440, 48, 9.16667, 119, 4.958333333),
(6, 'trainee6', 'chandler', '04-01-1993', 'chandler@gmail.com', 'pune', 'testing', 'redis,mysql', 'c,c++,java', 5, 'trainee', 'approved', 23, 3, 410, 44, 9.31818, 104, 4.52173913),
(5, 'trainee5', 'leonard', '04-02-1994', 'leonard@gmail.com', 'jaipur', 'analytics', 'redis,mysql', 'ruby on raile', 3, 'trainee', 'approved', 12, 2, 200, 24, 8.33333, 50, 4.166666667),
(4, 'trainee4', 'monica', '05-01-1993', 'monica@gmail.com', 'hyderabad', 'networks', 'json,php', 'python', 5, 'trainee', 'approved', 21, 1, 310, 42, 7.38095, 100, 4.761904762),
(3, 'trainee3', 'rachel', '04-03-1995', 'rachel@gmail.com', 'kolkata', 'testing', 'agile', 'r language', 2, 'trainee', 'approved', 8, 1, 145, 16, 9.0625, 34, 4.25),
(2, 'trainee2', 'aishu', '02-01-1995', 'aish@gmail.com', 'delhi', 'networks', 'sql,mysql', 'c,c++', 3, 'trainee', 'approved', 14, 2, 195, 24, 8.125, 58, 4.142857142),
(1, 'trainee1', 'kathy', '03-02-1996', 'kathy@gmail.com', 'chennai', 'dbms', 'agile', 'c,c++,java', 2, 'trainee', 'approved', 11, 4, 165, 19, 8.68421, 50, 4.545454545),
(44, 'trainee44', 'Candice', '3/21/1995', 'Candice@gmail.com', 'jaipur', 'networks', 'sql,mysql', 'python', 1, 'trainee', 'approved', 4, 3, 60, 8, 7.5, 10, 2.5),
(45, 'trainee45', 'Chelsea', '4/14/1993', 'Chelsea@gmail.com', 'pune', 'analytics', 'agile', 'javascript', 3, 'trainee', 'approved', 14, 3, 190, 28, 6.78571, 70, 5),
(46, 'trainee46', 'Eddie', '6/29/1995', 'Eddie@gmail.com', 'jaipur', 'testing', 'nosql', 'php', 1, 'trainee', 'approved', 5, 3, 89, 10, 8.9, 22, 4.4),
(47, 'trainee47', 'Theodore', '12-12-1994', 'Theodore@gmail.com', 'bengaluru', 'web designing', 'nosql', 'php', 4, 'trainee', 'approved', 18, 4, 290, 36, 8.05556, 60, 3.333333333),
(48, 'trainee48', 'Santo', '9/18/1993', 'Santo@gmail.com', 'chennai', 'analytics', 'php', 'python', 5, 'trainee', 'approved', 22, 2, 390, 44, 8.86364, 106, 4.818181818),
(49, 'trainee49', 'zacchary', '3/14/1994', 'zacchary@gmail.com', 'mumbai', 'testing', 'sql,mysql', 'c,c++,java', 3, 'trainee', 'approved', 12, 4, 198, 24, 8.25, 59, 4.916666667),
(50, 'trainee50', 'Mark', '04-05-1992', 'Mark@gmail.com', 'Bengaluru', 'analytics', 'html,css', 'c,c++', 4, 'trainee', 'approved', 17, 4, 311, 34, 9.14706, 82, 4.823529412),
(51, 'trainee55', 'Aish', '01-10-1995', 'prasad.aishwarya5@gmail.com', 'chennai', 'networks', 'R,PHP', 'C C++', 3, 'trainee', 'approved', 15, 4, 277, 30, 9.23333, 72, 4.8),
(55, 'trainee100', 'Aish', '01-10-1995', 'prasad.aishwarya5@gmail.com', 'chennai', 'networks', 'R,PHP', 'C C++', 3, 'trainee', 'approved', 12, 0, 220, 24, 9.16667, 50, 4.166666667),
(56, 'trainee110', 'Aish', '01-10-1995', 'prasad.aishwarya5@gmail.com', 'chennai', 'networks', 'R,PHP', 'C C++', 3, 'trainee', 'approved', 14, 0, 260, 28, 9.28571, 66, 4.714285714),
(57, 'trainee120', 'Aish', '1995-10-01', 'prasad.aishwarya5@gmail.com', 'chennai', 'networks', 'R,PHP', 'C C++', 3, 'trainee', 'approved', 0, 3, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trainer_id` varchar(30) NOT NULL,
  `trainer_name` varchar(30) NOT NULL,
  `feild_of_study` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `Rating` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`id`, `trainer_id`, `trainer_name`, `feild_of_study`, `course`, `Rating`) VALUES
(1, 'trainer1', 'lily', 'data and security', 'Networks', 4),
(2, 'trainer2', 'mark', 'application development', 'R programming', 3),
(3, 'trainer3', 'sue', 'application development', 'PHP', 4),
(4, 'trainer4', 'june', 'business management', 'Testing', 2),
(5, 'trainer5', 'lecrae', 'networking', 'CSS,HTML', 4),
(6, 'trainer6', 'april', 'networking', 'Java', 3),
(7, 'trainer7', 'kendra', 'operating systems', '.NET', 2),
(8, 'trainer8', 'lamarck', 'data and security', 'informatica', 4),
(9, 'trainer9', 'michael', 'data mining', 'redhat', 4),
(10, 'trainer10', 'gabriel', 'networking', 'cloud computing', 5),
(13, 'trainer12', 'Amit', 'Networks', 'Network security', 3),
(14, 'trainer13', 'amish', 'Networks', 'Network security', 3),
(16, 'trainer14', 'esther', 'networking', 'Java', 3),
(17, 'trainer15 ', 'alexandra', 'networking', 'CSS,HTML', 2),
(18, 'trainer16', 'Tim', 'operating systems', '.NET', 3),
(19, 'trainer17', 'Leah', 'business management', 'testing', 3),
(20, 'trainer18', 'Marcus', 'data and security', 'informatica', 4),
(21, 'trainer19', ' Daena', 'application development', 'PHP', 3),
(22, 'trainer20 ', 'Daniel', 'data mining', 'redhat', 4),
(23, 'trainer21', 'Sarah', 'application development', 'R programming', 5),
(24, 'trainer22', 'Gary', 'data and security', 'Networks', 4),
(25, 'trainer23', 'Rachel', 'Networks', 'Network security', 3),
(26, 'trainer24', 'Stanley', 'networking', 'cloud computing', 3),
(27, 'trainer25', 'Saffira', 'operating systems', '.NET', 2),
(28, 'trainer26', 'Cole', 'business management', 'testing', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_ans`
--

CREATE TABLE `user_ans` (
  `sess_id` varchar(80) NOT NULL,
  `test_id` int(11) NOT NULL,
  `que_desc` varchar(200) NOT NULL,
  `ans1` varchar(100) NOT NULL,
  `ans2` varchar(100) NOT NULL,
  `ans3` varchar(100) NOT NULL,
  `ans4` varchar(100) NOT NULL,
  `true_ans` int(11) NOT NULL,
  `your_ans` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_ans`
--

INSERT INTO `user_ans` (`sess_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `your_ans`) VALUES
('2nfc638sa2v5feb5np82pp5681', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('2nfc638sa2v5feb5np82pp5681', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 3),
('2nfc638sa2v5feb5np82pp5681', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 3),
('2nfc638sa2v5feb5np82pp5681', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('2nfc638sa2v5feb5np82pp5681', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('2nfc638sa2v5feb5np82pp5681', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('2nfc638sa2v5feb5np82pp5681', 1, 'Which of the following is not a pair tag?', '<p>', '<u>', '<i>', '<img>', 4, 1),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 4),
('jn65v8j6g05mt7h3grf3pjjms5', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 3),
('jn65v8j6g05mt7h3grf3pjjms5', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('pbd56gf0kk6uubkotvlfde0ip2', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 4),
('pbd56gf0kk6uubkotvlfde0ip2', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 1),
('pbd56gf0kk6uubkotvlfde0ip2', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 3),
('pbd56gf0kk6uubkotvlfde0ip2', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 4),
('pbd56gf0kk6uubkotvlfde0ip2', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 4),
('pbd56gf0kk6uubkotvlfde0ip2', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('jn65v8j6g05mt7h3grf3pjjms5', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 3),
('jn65v8j6g05mt7h3grf3pjjms5', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('jn65v8j6g05mt7h3grf3pjjms5', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('jn65v8j6g05mt7h3grf3pjjms5', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('c9ofb1aqi342ueg9brs13e1rn0', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('c9ofb1aqi342ueg9brs13e1rn0', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('c9ofb1aqi342ueg9brs13e1rn0', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 3),
('c9ofb1aqi342ueg9brs13e1rn0', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 3),
('c9ofb1aqi342ueg9brs13e1rn0', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('c9ofb1aqi342ueg9brs13e1rn0', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('bmf7c57hpedt8h0gg9had50ut2', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 1),
('bmf7c57hpedt8h0gg9had50ut2', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 3),
('bmf7c57hpedt8h0gg9had50ut2', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 3),
('bmf7c57hpedt8h0gg9had50ut2', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('bmf7c57hpedt8h0gg9had50ut2', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('bmf7c57hpedt8h0gg9had50ut2', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('th25g2lg1pef81um75djllro74', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('th25g2lg1pef81um75djllro74', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 3),
('th25g2lg1pef81um75djllro74', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 3),
('th25g2lg1pef81um75djllro74', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('th25g2lg1pef81um75djllro74', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('th25g2lg1pef81um75djllro74', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('ir0ac6brfl7ou7eclkavpoj5p5', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('ir0ac6brfl7ou7eclkavpoj5p5', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 3),
('ir0ac6brfl7ou7eclkavpoj5p5', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 4),
('ir0ac6brfl7ou7eclkavpoj5p5', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('ir0ac6brfl7ou7eclkavpoj5p5', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('ir0ac6brfl7ou7eclkavpoj5p5', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('nk3t79tuhas27g9fl0a0v82i82', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('nk3t79tuhas27g9fl0a0v82i82', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 3),
('nk3t79tuhas27g9fl0a0v82i82', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 4),
('nk3t79tuhas27g9fl0a0v82i82', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('nk3t79tuhas27g9fl0a0v82i82', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 3),
('nk3t79tuhas27g9fl0a0v82i82', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('kipf9cov6rubkrgpcm2virp753', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 1),
('kipf9cov6rubkrgpcm2virp753', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 3),
('kipf9cov6rubkrgpcm2virp753', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 3),
('kipf9cov6rubkrgpcm2virp753', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('kipf9cov6rubkrgpcm2virp753', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 3),
('kipf9cov6rubkrgpcm2virp753', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('7crgkakubvh6nloh1llnd161e1', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 3),
('7crgkakubvh6nloh1llnd161e1', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('7crgkakubvh6nloh1llnd161e1', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 4),
('7crgkakubvh6nloh1llnd161e1', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 3),
('7crgkakubvh6nloh1llnd161e1', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('7crgkakubvh6nloh1llnd161e1', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('5qq80nv411mjloq0o773f90470', 2, 'Which of the following property is used to set the width of an image?\r\n\r\n', 'A - border', 'B - height', 'C - width', 'D - moz-opacity   ', 3, 3),
('5qq80nv411mjloq0o773f90470', 2, 'Which of the following property specifies whether a long point that wraps to a second line should align with the first line or start underneath the start of the marker of a list?', 'A - list-style-type', 'B - list-style-position', 'C - list-style-image', 'D - list-style   ', 2, 2),
('5qq80nv411mjloq0o773f90470', 2, 'Which of the following property serves as shorthand for the padding properties?', 'A - padding', 'B - padding-top', 'C - padding-left', 'D - padding-right   ', 1, 1),
('5qq80nv411mjloq0o773f90470', 2, 'Which of the following property changes the color of bottom border?\r\n\r\n', 'A - :border-color', 'B - :border-style', 'C - :border-width', 'D - :border-bottom-color  ', 4, 4),
('5qq80nv411mjloq0o773f90470', 2, 'Which of the following property of a table element specifies the width that should appear between table cells?\r\n\r\n', ':border-collapse', ':border-spacing', ':caption-side', ' :empty-cells   ', 2, 2),
('5qq80nv411mjloq0o773f90470', 2, 'Which of the following value of cursor shows it as a pointing hand?\r\n\r\n', 'A - crosshair', 'B - default', 'C - pointer', 'D - move   ', 3, 3),
('5qq80nv411mjloq0o773f90470', 2, 'Which of the following property is used to create a small-caps effect?\r\n\r\n', 'A - font-family', 'B - font-style', 'C - font-variant', 'D - font-weight  ', 3, 3),
('5qq80nv411mjloq0o773f90470', 2, 'Which of the following defines 1% of viewport width?\r\n\r\n', 'A - px', 'B - vh', 'C - vw', 'D - vmin   ', 3, 4),
('5qq80nv411mjloq0o773f90470', 2, 'Which of the following property is used to control the repetition of an image in the background?\r\n\r\n', 'background-color', 'background-image', 'background-repeat', 'background-position   ', 3, 3),
('5qq80nv411mjloq0o773f90470', 2, 'Which of the following is a way to associate styles with your HTML document?', 'A - External CSS - The Element', 'B - Imported CSS - @import Rule', 'C - Both of the above.', 'D - None of the above.   Show Answer', 3, 3),
('mq637t475amnadsm2c4r9r0dk6', 2, 'Which of the following is a way to associate styles with your HTML document?', 'A - External CSS - The Element', 'B - Imported CSS - @import Rule', 'C - Both of the above.', 'D - None of the above.   Show Answer', 3, 3),
('mq637t475amnadsm2c4r9r0dk6', 2, 'Which of the following defines 1% of viewport width?\r\n\r\n', 'A - px', 'B - vh', 'C - vw', 'D - vmin   ', 3, 4),
('mq637t475amnadsm2c4r9r0dk6', 2, 'Which of the following property is used to control the repetition of an image in the background?\r\n\r\n', 'background-color', 'background-image', 'background-repeat', 'background-position   ', 3, 3),
('mq637t475amnadsm2c4r9r0dk6', 2, 'Which of the following property of a table element specifies the width that should appear between table cells?\r\n\r\n', ':border-collapse', ':border-spacing', ':caption-side', ' :empty-cells   ', 2, 2),
('mq637t475amnadsm2c4r9r0dk6', 2, 'Which of the following value of cursor shows it as a pointing hand?\r\n\r\n', 'A - crosshair', 'B - default', 'C - pointer', 'D - move   ', 3, 3),
('mq637t475amnadsm2c4r9r0dk6', 2, 'Which of the following property is used to create a small-caps effect?\r\n\r\n', 'A - font-family', 'B - font-style', 'C - font-variant', 'D - font-weight  ', 3, 2),
('mq637t475amnadsm2c4r9r0dk6', 2, 'Which of the following property changes the color of bottom border?\r\n\r\n', 'A - :border-color', 'B - :border-style', 'C - :border-width', 'D - :border-bottom-color  ', 4, 3),
('mq637t475amnadsm2c4r9r0dk6', 2, 'Which of the following property serves as shorthand for the padding properties?', 'A - padding', 'B - padding-top', 'C - padding-left', 'D - padding-right   ', 1, 1),
('mq637t475amnadsm2c4r9r0dk6', 2, 'Which of the following property specifies whether a long point that wraps to a second line should align with the first line or start underneath the start of the marker of a list?', 'A - list-style-type', 'B - list-style-position', 'C - list-style-image', 'D - list-style   ', 2, 2),
('mq637t475amnadsm2c4r9r0dk6', 2, 'Which of the following property is used to set the width of an image?\r\n\r\n', 'A - border', 'B - height', 'C - width', 'D - moz-opacity   ', 3, 3),
('apotppfd1kq4a4n1qjdlcoqfr5', 2, 'Which of the following is a way to associate styles with your HTML document?', 'A - External CSS - The Element', 'B - Imported CSS - @import Rule', 'C - Both of the above.', 'D - None of the above.   Show Answer', 3, 3),
('apotppfd1kq4a4n1qjdlcoqfr5', 2, 'Which of the following defines 1% of viewport width?\r\n\r\n', 'A - px', 'B - vh', 'C - vw', 'D - vmin   ', 3, 3),
('apotppfd1kq4a4n1qjdlcoqfr5', 2, 'Which of the following property is used to control the repetition of an image in the background?\r\n\r\n', 'background-color', 'background-image', 'background-repeat', 'background-position   ', 3, 3),
('apotppfd1kq4a4n1qjdlcoqfr5', 2, 'Which of the following property of a table element specifies the width that should appear between table cells?\r\n\r\n', ':border-collapse', ':border-spacing', ':caption-side', ' :empty-cells   ', 2, 2),
('apotppfd1kq4a4n1qjdlcoqfr5', 2, 'Which of the following value of cursor shows it as a pointing hand?\r\n\r\n', 'A - crosshair', 'B - default', 'C - pointer', 'D - move   ', 3, 3),
('apotppfd1kq4a4n1qjdlcoqfr5', 2, 'Which of the following property is used to create a small-caps effect?\r\n\r\n', 'A - font-family', 'B - font-style', 'C - font-variant', 'D - font-weight  ', 3, 3),
('apotppfd1kq4a4n1qjdlcoqfr5', 2, 'Which of the following property changes the color of bottom border?\r\n\r\n', 'A - :border-color', 'B - :border-style', 'C - :border-width', 'D - :border-bottom-color  ', 4, 4),
('apotppfd1kq4a4n1qjdlcoqfr5', 2, 'Which of the following property serves as shorthand for the padding properties?', 'A - padding', 'B - padding-top', 'C - padding-left', 'D - padding-right   ', 1, 1),
('apotppfd1kq4a4n1qjdlcoqfr5', 2, 'Which of the following property specifies whether a long point that wraps to a second line should align with the first line or start underneath the start of the marker of a list?', 'A - list-style-type', 'B - list-style-position', 'C - list-style-image', 'D - list-style   ', 2, 3),
('apotppfd1kq4a4n1qjdlcoqfr5', 2, 'Which of the following property is used to set the width of an image?\r\n\r\n', 'A - border', 'B - height', 'C - width', 'D - moz-opacity   ', 3, 3),
('2nfc638sa2v5feb5np82pp5681', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('2nfc638sa2v5feb5np82pp5681', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 3),
('2nfc638sa2v5feb5np82pp5681', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 3),
('2nfc638sa2v5feb5np82pp5681', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('2nfc638sa2v5feb5np82pp5681', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('2nfc638sa2v5feb5np82pp5681', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('2nfc638sa2v5feb5np82pp5681', 1, 'Which of the following is not a pair tag?', '<p>', '<u>', '<i>', '<img>', 4, 1),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 4);
INSERT INTO `user_ans` (`sess_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `your_ans`) VALUES
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 4),
('o8io60c5l399r7jj1ak6nocvu7', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 4),
('jn65v8j6g05mt7h3grf3pjjms5', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 3),
('jn65v8j6g05mt7h3grf3pjjms5', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('pbd56gf0kk6uubkotvlfde0ip2', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 4),
('pbd56gf0kk6uubkotvlfde0ip2', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 1),
('pbd56gf0kk6uubkotvlfde0ip2', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 3),
('pbd56gf0kk6uubkotvlfde0ip2', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 4),
('pbd56gf0kk6uubkotvlfde0ip2', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 4),
('pbd56gf0kk6uubkotvlfde0ip2', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('jn65v8j6g05mt7h3grf3pjjms5', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 3),
('jn65v8j6g05mt7h3grf3pjjms5', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('jn65v8j6g05mt7h3grf3pjjms5', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('jn65v8j6g05mt7h3grf3pjjms5', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('c9ofb1aqi342ueg9brs13e1rn0', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('c9ofb1aqi342ueg9brs13e1rn0', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('c9ofb1aqi342ueg9brs13e1rn0', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 3),
('c9ofb1aqi342ueg9brs13e1rn0', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 3),
('c9ofb1aqi342ueg9brs13e1rn0', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('c9ofb1aqi342ueg9brs13e1rn0', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('bmf7c57hpedt8h0gg9had50ut2', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 1),
('bmf7c57hpedt8h0gg9had50ut2', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 3),
('bmf7c57hpedt8h0gg9had50ut2', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 3),
('bmf7c57hpedt8h0gg9had50ut2', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('bmf7c57hpedt8h0gg9had50ut2', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('bmf7c57hpedt8h0gg9had50ut2', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('th25g2lg1pef81um75djllro74', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('th25g2lg1pef81um75djllro74', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 3),
('th25g2lg1pef81um75djllro74', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 3),
('th25g2lg1pef81um75djllro74', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('th25g2lg1pef81um75djllro74', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('th25g2lg1pef81um75djllro74', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('ir0ac6brfl7ou7eclkavpoj5p5', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('ir0ac6brfl7ou7eclkavpoj5p5', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 3),
('ir0ac6brfl7ou7eclkavpoj5p5', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 4),
('ir0ac6brfl7ou7eclkavpoj5p5', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('ir0ac6brfl7ou7eclkavpoj5p5', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 2),
('ir0ac6brfl7ou7eclkavpoj5p5', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('nk3t79tuhas27g9fl0a0v82i82', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('nk3t79tuhas27g9fl0a0v82i82', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 3),
('nk3t79tuhas27g9fl0a0v82i82', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 4),
('nk3t79tuhas27g9fl0a0v82i82', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('nk3t79tuhas27g9fl0a0v82i82', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 3),
('nk3t79tuhas27g9fl0a0v82i82', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('kipf9cov6rubkrgpcm2virp753', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 1),
('kipf9cov6rubkrgpcm2virp753', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 3),
('kipf9cov6rubkrgpcm2virp753', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 3),
('kipf9cov6rubkrgpcm2virp753', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 2),
('kipf9cov6rubkrgpcm2virp753', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 3),
('kipf9cov6rubkrgpcm2virp753', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('7crgkakubvh6nloh1llnd161e1', 1, 'HTML tags are used to describe document ___________.', 'None of these', 'Language', 'Definiton', 'Content', 4, 3),
('7crgkakubvh6nloh1llnd161e1', 1, '	\r\nWhich CSS property is used to change the text color of an element?', 'color', ' font-color', 'fgcolor', 'text-color', 1, 4),
('7crgkakubvh6nloh1llnd161e1', 1, 'Which property should be used for setting the left margin of an element?', ' indent', 'padding-left', 'margin-left', 'left', 3, 4),
('7crgkakubvh6nloh1llnd161e1', 1, 'Which attribute is used to name an element uniquely?', 'class', 'dot', 'id', 'All of the above', 3, 3),
('7crgkakubvh6nloh1llnd161e1', 1, 'HTML stands for __________?', 'Hyper Text Makeup Language', 'Hyper Text Markup Language', 'None of These', 'Hyper Tech Markup Language', 2, 2),
('7crgkakubvh6nloh1llnd161e1', 1, 'HTML program can be read and rendered by _________.', 'Compiler', 'Web Browser', 'Server', 'Interpreter', 1, 2),
('5qq80nv411mjloq0o773f90470', 2, 'Which of the following property is used to set the width of an image?\r\n\r\n', 'A - border', 'B - height', 'C - width', 'D - moz-opacity   ', 3, 3),
('5qq80nv411mjloq0o773f90470', 2, 'Which of the following property specifies whether a long point that wraps to a second line should align with the first line or start underneath the start of the marker of a list?', 'A - list-style-type', 'B - list-style-position', 'C - list-style-image', 'D - list-style   ', 2, 2),
('5qq80nv411mjloq0o773f90470', 2, 'Which of the following property serves as shorthand for the padding properties?', 'A - padding', 'B - padding-top', 'C - padding-left', 'D - padding-right   ', 1, 1),
('5qq80nv411mjloq0o773f90470', 2, 'Which of the following property changes the color of bottom border?\r\n\r\n', 'A - :border-color', 'B - :border-style', 'C - :border-width', 'D - :border-bottom-color  ', 4, 4),
('5qq80nv411mjloq0o773f90470', 2, 'Which of the following property of a table element specifies the width that should appear between table cells?\r\n\r\n', ':border-collapse', ':border-spacing', ':caption-side', ' :empty-cells   ', 2, 2),
('5qq80nv411mjloq0o773f90470', 2, 'Which of the following value of cursor shows it as a pointing hand?\r\n\r\n', 'A - crosshair', 'B - default', 'C - pointer', 'D - move   ', 3, 3),
('5qq80nv411mjloq0o773f90470', 2, 'Which of the following property is used to create a small-caps effect?\r\n\r\n', 'A - font-family', 'B - font-style', 'C - font-variant', 'D - font-weight  ', 3, 3),
('5qq80nv411mjloq0o773f90470', 2, 'Which of the following defines 1% of viewport width?\r\n\r\n', 'A - px', 'B - vh', 'C - vw', 'D - vmin   ', 3, 4),
('5qq80nv411mjloq0o773f90470', 2, 'Which of the following property is used to control the repetition of an image in the background?\r\n\r\n', 'background-color', 'background-image', 'background-repeat', 'background-position   ', 3, 3),
('5qq80nv411mjloq0o773f90470', 2, 'Which of the following is a way to associate styles with your HTML document?', 'A - External CSS - The Element', 'B - Imported CSS - @import Rule', 'C - Both of the above.', 'D - None of the above.   Show Answer', 3, 3),
('mq637t475amnadsm2c4r9r0dk6', 2, 'Which of the following is a way to associate styles with your HTML document?', 'A - External CSS - The Element', 'B - Imported CSS - @import Rule', 'C - Both of the above.', 'D - None of the above.   Show Answer', 3, 3),
('mq637t475amnadsm2c4r9r0dk6', 2, 'Which of the following defines 1% of viewport width?\r\n\r\n', 'A - px', 'B - vh', 'C - vw', 'D - vmin   ', 3, 4),
('mq637t475amnadsm2c4r9r0dk6', 2, 'Which of the following property is used to control the repetition of an image in the background?\r\n\r\n', 'background-color', 'background-image', 'background-repeat', 'background-position   ', 3, 3),
('mq637t475amnadsm2c4r9r0dk6', 2, 'Which of the following property of a table element specifies the width that should appear between table cells?\r\n\r\n', ':border-collapse', ':border-spacing', ':caption-side', ' :empty-cells   ', 2, 2),
('mq637t475amnadsm2c4r9r0dk6', 2, 'Which of the following value of cursor shows it as a pointing hand?\r\n\r\n', 'A - crosshair', 'B - default', 'C - pointer', 'D - move   ', 3, 3),
('mq637t475amnadsm2c4r9r0dk6', 2, 'Which of the following property is used to create a small-caps effect?\r\n\r\n', 'A - font-family', 'B - font-style', 'C - font-variant', 'D - font-weight  ', 3, 2),
('mq637t475amnadsm2c4r9r0dk6', 2, 'Which of the following property changes the color of bottom border?\r\n\r\n', 'A - :border-color', 'B - :border-style', 'C - :border-width', 'D - :border-bottom-color  ', 4, 3),
('mq637t475amnadsm2c4r9r0dk6', 2, 'Which of the following property serves as shorthand for the padding properties?', 'A - padding', 'B - padding-top', 'C - padding-left', 'D - padding-right   ', 1, 1),
('mq637t475amnadsm2c4r9r0dk6', 2, 'Which of the following property specifies whether a long point that wraps to a second line should align with the first line or start underneath the start of the marker of a list?', 'A - list-style-type', 'B - list-style-position', 'C - list-style-image', 'D - list-style   ', 2, 2),
('mq637t475amnadsm2c4r9r0dk6', 2, 'Which of the following property is used to set the width of an image?\r\n\r\n', 'A - border', 'B - height', 'C - width', 'D - moz-opacity   ', 3, 3),
('apotppfd1kq4a4n1qjdlcoqfr5', 2, 'Which of the following is a way to associate styles with your HTML document?', 'A - External CSS - The Element', 'B - Imported CSS - @import Rule', 'C - Both of the above.', 'D - None of the above.   Show Answer', 3, 3),
('apotppfd1kq4a4n1qjdlcoqfr5', 2, 'Which of the following defines 1% of viewport width?\r\n\r\n', 'A - px', 'B - vh', 'C - vw', 'D - vmin   ', 3, 3),
('apotppfd1kq4a4n1qjdlcoqfr5', 2, 'Which of the following property is used to control the repetition of an image in the background?\r\n\r\n', 'background-color', 'background-image', 'background-repeat', 'background-position   ', 3, 3),
('apotppfd1kq4a4n1qjdlcoqfr5', 2, 'Which of the following property of a table element specifies the width that should appear between table cells?\r\n\r\n', ':border-collapse', ':border-spacing', ':caption-side', ' :empty-cells   ', 2, 2),
('apotppfd1kq4a4n1qjdlcoqfr5', 2, 'Which of the following value of cursor shows it as a pointing hand?\r\n\r\n', 'A - crosshair', 'B - default', 'C - pointer', 'D - move   ', 3, 3),
('apotppfd1kq4a4n1qjdlcoqfr5', 2, 'Which of the following property is used to create a small-caps effect?\r\n\r\n', 'A - font-family', 'B - font-style', 'C - font-variant', 'D - font-weight  ', 3, 3),
('apotppfd1kq4a4n1qjdlcoqfr5', 2, 'Which of the following property changes the color of bottom border?\r\n\r\n', 'A - :border-color', 'B - :border-style', 'C - :border-width', 'D - :border-bottom-color  ', 4, 4),
('apotppfd1kq4a4n1qjdlcoqfr5', 2, 'Which of the following property serves as shorthand for the padding properties?', 'A - padding', 'B - padding-top', 'C - padding-left', 'D - padding-right   ', 1, 1),
('apotppfd1kq4a4n1qjdlcoqfr5', 2, 'Which of the following property specifies whether a long point that wraps to a second line should align with the first line or start underneath the start of the marker of a list?', 'A - list-style-type', 'B - list-style-position', 'C - list-style-image', 'D - list-style   ', 2, 3),
('apotppfd1kq4a4n1qjdlcoqfr5', 2, 'Which of the following property is used to set the width of an image?\r\n\r\n', 'A - border', 'B - height', 'C - width', 'D - moz-opacity   ', 3, 3),
('qjg0flcev8p9j8uvnamfb0akm2', 13, 'You can check to see whether an R object is NULL with the _________ function.', 'is.null()', ' is.nullobj()', ' null() ', 'All of the mentioned', 1, 2),
('qjg0flcev8p9j8uvnamfb0akm2', 13, 'Point out the correct statement :', ' In R, a function is an object which has the mode function', 'R interpreter is able to pass control to the function, along with arguments that may ', 'Functions are also often written when code must be shared with others or the public', 'All of the mentioned', 4, 3),
('qjg0flcev8p9j8uvnamfb0akm2', 13, ' Point out the wrong statement :\r\n', 'A formal argument can be a symbol, a statement of the form â€˜symbol = expressionâ€™', 'The first component of the function declaration is the keyword function', 'The value returned by the call to function is not a function', 'None of the mentioned', 1, 3),
('qjg0flcev8p9j8uvnamfb0akm2', 13, ' What will be the output of following code snippet ?\r\n\r\n > paste("a", "b", se = ":")', 'â€œa+bâ€ ', ' â€œa=bâ€', ' â€œa b :â€', ' None of the mentioned', 4, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approval`
--
ALTER TABLE `approval`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD UNIQUE KEY `course_id` (`course_id`);

--
-- Indexes for table `course_materials`
--
ALTER TABLE `course_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `notif`
--
ALTER TABLE `notif`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD UNIQUE KEY `test_id` (`test_id`);

--
-- Indexes for table `test_questions`
--
ALTER TABLE `test_questions`
  ADD PRIMARY KEY (`que_id`),
  ADD UNIQUE KEY `que_id` (`que_id`);

--
-- Indexes for table `trainee`
--
ALTER TABLE `trainee`
  ADD PRIMARY KEY (`trainee_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approval`
--
ALTER TABLE `approval`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `course_materials`
--
ALTER TABLE `course_materials`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `notif`
--
ALTER TABLE `notif`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `test_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `test_questions`
--
ALTER TABLE `test_questions`
  MODIFY `que_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT for table `trainee`
--
ALTER TABLE `trainee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
