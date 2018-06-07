-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2015 at 02:58 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `employee`
--
CREATE DATABASE IF NOT EXISTS `employee` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `employee`;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `comment` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment`) VALUES
(1, 'nice'),
(2, 'nice'),
(3, 'good'),
(4, 'good'),
(5, 'beaddddd'),
(6, 'hello'),
(7, 'hello'),
(8, 'hello'),
(9, 'hello'),
(10, 'hello'),
(11, 'hello'),
(12, 'hi'),
(13, 'hi'),
(14, 'hi'),
(15, 'hi'),
(16, 'hi'),
(17, 'neeelam'),
(18, 'tgfdyt'),
(19, 'tgfdyt'),
(20, 'hi baby'),
(21, 'gokul'),
(22, 'jkb'),
(23, 'chtnjhgvgj'),
(24, ''),
(25, ''),
(26, ''),
(27, ''),
(28, ''),
(29, ''),
(30, 'ghhg'),
(31, 'chunnu'),
(32, 'fghfh'),
(33, 'fdbgdffdfgdfgfdfdgdfgdffb'),
(34, ''),
(35, ''),
(36, ''),
(37, ''),
(38, ''),
(39, ''),
(40, ''),
(41, ''),
(42, ''),
(43, ''),
(44, ''),
(45, ''),
(46, ''),
(47, ''),
(48, ''),
(49, ''),
(50, ''),
(51, ''),
(52, ''),
(53, ''),
(54, ''),
(55, ''),
(56, ''),
(57, ''),
(58, ''),
(59, ''),
(60, ''),
(61, ''),
(62, ''),
(63, ''),
(64, ''),
(65, ''),
(66, ''),
(67, ''),
(68, ''),
(69, ''),
(70, ''),
(71, ''),
(72, ''),
(73, ''),
(74, ''),
(75, ''),
(76, 'hgfth'),
(77, 'uyfguy'),
(78, 'hgyu'),
(79, 'hgcdth'),
(80, ''),
(81, ''),
(82, ''),
(83, ''),
(84, ''),
(85, '');

-- --------------------------------------------------------

--
-- Table structure for table `comment1`
--

CREATE TABLE IF NOT EXISTS `comment1` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `comment1`
--

INSERT INTO `comment1` (`id`, `comment`) VALUES
(1, 'hi'),
(2, 'uyfguy'),
(3, 'neelam'),
(4, 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `econtent`
--

CREATE TABLE IF NOT EXISTS `econtent` (
  `topic_id` int(5) NOT NULL AUTO_INCREMENT,
  `sub_id` int(5) NOT NULL,
  `header` text NOT NULL,
  `text1` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `other_info` varchar(200) NOT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `econtent`
--

INSERT INTO `econtent` (`topic_id`, `sub_id`, `header`, `text1`, `image`, `other_info`) VALUES
(25, 10, '<p>introduction</p>\r\n', 'www.youtube/hsrckeditor.com', '<p>vineeta</p>\r\n', ''),
(26, 14, '<p>class</p>\r\n', 'www.expreg/admin/linux.com', '<p>vini</p>\r\n', ''),
(27, 15, '<p>oops</p>', 'www.expreg/admin/linux.com', '<p>vini j</p>', '');

-- --------------------------------------------------------

--
-- Table structure for table `editor`
--

CREATE TABLE IF NOT EXISTS `editor` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `header` text NOT NULL,
  `text1` text NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `editor`
--

INSERT INTO `editor` (`id`, `header`, `text1`, `image`) VALUES
(2, 'Introduction', '<p>Let us begin with a quick introduction in C. Our aim is to show the essential elements of the language in real programs, but without getting bogged down in details, rules, and exceptions. At this point, we are not trying to be complete or even precise (save that the examples are meant to be correct). We want to get you as quickly as possible to the point where you can write useful programs, and to do that we have to concentrate on the basics: variables and constants, arithmetic, control flow, functions, and the rudiments of input and output. We are intentionally leaving out of this chapter features of C that are important for writing bigger programs. These include pointers, structures, most of C&#39;s rich set of operators, several controlflow statements, and the standard library. This approach and its drawbacks. Most notable is that the complete story on any particular feature is not found here, and the tutorial, by being brief, may also be misleading. And because the examples do not use the full power of C, they are not as concise and elegant as they might be. We have tried to minimize these effects, but be warned. Another drawback is that later chapters will necessarily repeat some of this chapter. We hope that the repetition will help you more than it annoys. In any case, experienced programmers should be able to extrapolate from the material in this chapter to their own programming needs. Beginners should supplement it by writing small, similar programs of their own. Both groups can use it as a framework on which to hang the more detailed descriptions .</p><br>\n<h2>Getting Started</h2>\n<br>\n<p>The only way to learn a new programming language is by writing programs in it. The first<br />\nprogram to write is the same for all languages:</p>\n\n<p><em>Print the words</em></p>\n\n<p>&nbsp;hello, world</p>\n<p>This is a big hurdle; to leap over it you have to be able to create the program text somewhere,\ncompile it successfully, load it, run it, and find out where your output went. With these\nmechanical details mastered, everything else is comparatively easy.  </p>\n<p>In C, the program to print ``\nhello, world'''' is  </p>\n<p>#include <stdio.h></p>\n<p>main()</p>\n<p>{</p>\n     <p>printf("hello, world\\n");</p>\n   <p>}</p>\n<p>Just how to run this program depends on the system you are using. As a specific example, on \nthe UNIX operating system you must create the program in a file whose name ends in ``.c'''',\nsuch as\nhello.c, then compile it with the command  </p>\n<p>cc hello.c</p>\n<p>If you haven''t botched anything, such as omitting a character or misspelling something, the \ncompilation will proceed silently, and make an executable file called a.out. If you run a.out\nby typing the command </p>\n<p>a.out </p>\n<p>it will print</p>  \n\n  <p> hello, world </p>\n<p>On other systems, the rules will be different; check with a local expert.  </p>\n<p>Now, for some explanations about the program itself. A C program, whatever its size, consists\nof functions and variables. A function contains statements that specify the computing\noperations to be done, and variables store values used during the computation. C functions are\nlike the subroutines and functions in Fortran or the procedures and functions of Pascal. Our \nexample is a function named main. Normally you are at liberty to give functions whatever\nnames you like, but ``\nmain'''' is special - your program begins executing at the beginning of\nmain. This means that every program must have a main somewhere.  </p>\n<br><h1>Variables and Arithmetic Expressions</h1><br>\n<p>The next program uses the formula oC=(5/9)(oF-32) to print the following table of Fahrenheit temperatures and their centigrade or Celsius equivalents:&nbsp;</p>\n\n<p>&nbsp;&nbsp; 1&nbsp;&nbsp;&nbsp; -17<br />\n&nbsp;&nbsp; 20&nbsp;&nbsp; -6<br />\n&nbsp;&nbsp; 40&nbsp;&nbsp; 4<br />\n&nbsp;&nbsp; 60&nbsp;&nbsp; 15<br />\n&nbsp;&nbsp; 80&nbsp;&nbsp; 26<br />\n&nbsp;&nbsp; 100&nbsp; 37<br />\n&nbsp;&nbsp; 120&nbsp; 48<br />\n&nbsp;&nbsp; 140&nbsp; 60<br />\n&nbsp;&nbsp; 160&nbsp; 71<br />\n&nbsp;&nbsp; 180&nbsp; 82<br />\n&nbsp;&nbsp; 200&nbsp; 93<br />\n&nbsp;&nbsp; 220&nbsp; 104<br />\n&nbsp;&nbsp; 240&nbsp; 115<br />\n&nbsp;&nbsp; 260&nbsp; 126<br />\n&nbsp;&nbsp; 280&nbsp; 137<br />\n&nbsp;&nbsp; 300&nbsp; 148</p>\n\n<p>The program itself still consists of the definition of a single function named main. It is longer than the one that printed ``hello, world&#39;&#39;, but not complicated. It introduces several new ideas, including comments, declarations, variables, arithmetic expressions, loops , and<br />\nformatted output.&nbsp;</p>\n\n<p>#include &lt;stdio.h&gt;</p>\n\n<p>&nbsp;&nbsp; /* print Fahrenheit-Celsius table<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for fahr = 0, 20, ..., 300 */<br />\n&nbsp;&nbsp; main()<br />\n&nbsp;&nbsp; {<br />\n&nbsp;&nbsp;&nbsp;&nbsp; int fahr, celsius;<br />\n&nbsp;&nbsp;&nbsp;&nbsp; int lower, upper, step;</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp; lower = 0;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* lower limit of temperature scale */<br />\n&nbsp;&nbsp;&nbsp;&nbsp; upper = 300;&nbsp;&nbsp;&nbsp; /* upper limit */<br />\n&nbsp;&nbsp;&nbsp;&nbsp; step = 20;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* step size */</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp; fahr = lower;<br />\n&nbsp;&nbsp;&nbsp;&nbsp; while (fahr &lt;= upper) {<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; celsius = 5 * (fahr-32) / 9;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf(&quot;%d	%d\n&quot;, fahr, celsius);<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fahr = fahr + step;<br />\n&nbsp;&nbsp;&nbsp;&nbsp; }<br />\n&nbsp;&nbsp; }</p>\n\n<p>The two lines &nbsp;</p>\n\n<p>&nbsp; /* print Fahrenheit-Celsius table<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for fahr = 0, 20, ..., 300 */</p>\n\n<p>are a comment, which in this case explains briefly what the program does. Any characters between /* and */ are ignored by the compiler; they may be used freely to make a program easier to understand. Comments may appear anywhere where a blank, tab or newline can.</p>\n\n<p>In C, all variables must be declared before they are used, usually at the beginning of the function before any executable statements. A declaration announces the properties of variables; it consists of a name and a list of variables, such as</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int fahr, celsius;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int lower, upper, step;</p>\n\n<p>The type int means that the variables listed are integers; by contrast with float, which means floating point, i.e., numbers that may have a fractional part. The range of both int and float depends on the machine you are using; 16-bits ints, which lie between -32768 and +32767, are common, as are 32-bit ints. A float number is typically a 32-bit quantity, with at least six significant digits and magnitude generally</p>\n\n', 'uploads/img1.jpg'),
(3, 'Types, Operators andExpressions', '<p>Variables and constants are the basic data objects manipulated in a program. Declarations list\nthe variables to be used, and state what type they have and perhaps what their initial values\nare. Operators specify what is to be done to them. Expressions combine variables and\nconstants to produce new values. The type of an object determines the set of values it can\nhave and what operations can be performed on it. These building blocks are the topics of this\nchapter.</p>\n<p>The ANSI standard has made many small changes and additions to basic types and\nexpressions. There are now\nsigned and unsigned forms of all integer types, and notations for\nunsigned constants and hexadecimal character constants. Floating-point operations may be\ndone in single precision; there is also a\nlong double type for extended precision. String \nconstants may be concatenated at compile time. Enumerations have become part of the \nlanguage, formalizing a feature of long standing. Objects may be declared\nconst, which\nprevents them from being changed. The rules for automatic coercions among arithmetic types\nhave been augmented to handle the richer set of types.</p>\n<br><h2>Variable Names</h2>\n<p>Although we didn''t say so in Chapter 1, there are some restrictions on the names of variables\nand symbolic constants. Names are made up of letters and digits; the first character must be a \nletter. The underscore ``\n_'''' counts as a letter; it is sometimes useful for improving the\nreadability of long variable names. Don''t begin variable names with underscore, however, \nsince library routines often use such names. Upper and lower case letters are distinct, so\nx and \nX are two different names. Traditional C practice is to use lower case for variable names, and\nall upper case for symbolic constants.  </p>\n<p>At least the first 31 characters of an internal name are significant. For function names and\nexternal variables, the number may be less than 31, because external names may be used by\nassemblers and loaders over which the language has no control. For external names, the \nstandard guarantees uniqueness only for 6 characters and a single case. Keywords like\nif, \nelse, int, float, etc., are reserved: you can''t use them as variable names. They must be in\nlower case.  </p>\n<p>t''s wise to choose variable names that are related to the purpose of the variable, and that are\nunlikely to get mixed up typographically. We tend to use short names for local variables, \nespecially loop indices, and longer names for external variables.  </p>\n<p><h2>Data Types and Sizes</h2> </p>\n<p>There are only a few basic data types in C:  </p>\n<p><tt>char</tt>a single byte, capable of holding one character in the local character set </p>\n<p><tt>int</tt>\nan integer, typically reflecting the natural size of integers on the host machine</p>\n<p><tt>float</tt>\nsingle-precision floating point </p>\n<p><tt>double</tt>\ndouble-precision floating point </p>\n<br>\n<p>In addition, there are a number of qualifiers that can be applied to these basic types.\nshort\nand\nlong apply to integers:  </p>\n<p>The intent is that\nshort and long should provide different lengths of integers where practical; \nint will normally be the natural size for a particular machine. short is often 16 bits long, and \nint either 16 or 32 bits. Each compiler is free to choose appropriate sizes for its own\nhardware, subject only to the the restriction that\nshorts and ints are at least 16 bits, longs are\nat least 32 bits, and\nshort is no longer than int, which is no longer than long.  </p>\n<p>The qualifier\nsigned or unsigned may be applied to char or any integer. unsigned numbers\nare always positive or zero, and obey the laws of arithmetic modulo\n2\nn\n, where n is the number\nof bits in the type. So, for instance, if\nchars are 8 bits, unsigned char variables have values \nbetween 0 and 255, while\nsigned chars have values between -128 and 127 (in a two''s \ncomplement machine.) Whether plain\nchars are signed or unsigned is machine-dependent,\nbut printable characters are always positive.  </p>\n<p><h2>Constants </h2></p>\n<p>An integer constant like 1234 is an int. A long constant is written with a terminal l (ell) or \nL, as in 123456789L; an integer constant too big to fit into an int will also be taken as a long. \nUnsigned constants are written with a terminal\nu or U, and the suffix ul or UL indicates \nunsigned long.</p>\n<p>Floating-point constants contain a decimal point (\n123.4) or an exponent (1e-2) or both; their \ntype is\ndouble, unless suffixed. The suffixes f or F indicate a float constant; l or L indicate \na\nlong double. </p>\n<p>The value of an integer can be specified in octal or hexadecimal instead of decimal. A leading \n0 (zero) on an integer constant means octal; a leading 0x or 0X means hexadecimal. For\nexample, decimal 31 can be written as\n037 in octal and 0x1f or 0x1F in hex. Octal and hexadecimal constants may also be followed by L to make them long and U to make them \nunsigned: 0XFUL is an unsigned long constant with value 15 decimal.  </p>\n<p>A\ncharacter constant is an integer, written as one character within single quotes, such as \n''x''. The value of a character constant is the numeric value of the character in the machine''s\ncharacter set. For example, in the ASCII character set the character constant\n''0'' has the value\n48, which is unrelated to the numeric value 0. If we write\n''0'' instead of a numeric value like\n48 that depends on the character set, the program is independent of the particular value and \neasier to read. Character constants participate in numeric operations just as any other integers,\nalthough they are most often used in comparisons with other characters.  </p>\n<p>Certain characters can be represented in character and string constants by escape sequences\nlike\n\\n (newline); these sequences look like two characters, but represent only one. In\naddition, an arbitrary byte-sized bit pattern can be specified by </p>\n', ''),
(4, 'Control Flow', '<p>The control-flow of a language specify the order in which computations are performed. We\nhave already met the most common control-flow constructions in earlier examples; here we\nwill complete the set, and be more precise about the ones discussed before.</p>\n<p><h2>Statements and Blocks </h2></p>\n<p>An expression such as x = 0 or i++ or printf(...) becomes a statement when it is\nfollowed by a semicolon, as in  </p>\n<p><h2>If-Else </h2></p>\n<p>The if-else statement is used to express decisions. Formally the syntax is  </p>\n<p>if (expression)</p>\n     <p>  statement</p>\n<p>   else</p>\n   <p>    statement</p>\n<p>where the else part is optional. The expression is evaluated; if it is true (that is, if expression\nhas a non-zero value),\nstatement\n is executed. If it is false (expression is zero) and if there is\nan\nelse part, statement\n2\n1\n is executed instead. </p>\n<p>Since an\nif tests the numeric value of an expression, certain coding shortcuts are possible. \nThe most obvious is writing  </p>\n<p><tt>if (expression) </tt></p>\n<p>Because the\nelse part of an if-else is optional,there is an ambiguity when an else if omitted\nfrom a nested\nif sequence. This is resolved by associating the else with the closest previous \nelse-less if. For example, in  </p>\n\n \n', ''),
(5, 'Functions and Program Structure', '<p>Functions break large computing tasks into smaller ones, and enable people to build on what others have done instead of starting over from scratch. Appropriate functions hide details of operation from parts of the program that don&#39;t need to know about them, thus clarifying the whole, and easing the pain of making changes.&nbsp;</p>\n\n<p>C has been designed to make functions efficient and easy to use; C programs generally consist of many small functions rather than a few big ones. A program may reside in one or more source files. Source files may be compiled separately and loaded together, along with previously compiled functions from libraries. We will not go into that process here, however, since the details vary from system to system.</p>\n\n<p>Function declaration and definition is the area where the ANSI standard has made the most changes to C. As we saw first in , it is now possible to declare the type of arguments when a function is declared. The syntax of function declaration also changes, so that declarations and definitions match. This makes it possible for a compiler to detect many more errors than it could before. Furthermore, when arguments are properly declared, appropriate type coercions are performed automatically.</p>\n\n<p>The standard clarifies the rules on the scope of names; in particular, it requires that there be only one definition of each external object. Initialization is more general: automatic arrays and structures may now be initialized.&nbsp;</p>\n\n<p>The C preprocessor has also been enhanced. New preprocessor facilities include a more complete set of conditional compilation directives, a way to create quoted strings from macro arguments, and better control over the macro expansion process.</p>\n\n<h2>Basics of Functions</h2>\n\n<p>To begin with, let us design and write a program to print each line of its input that contains a particular ``pattern&#39;&#39; or string of characters. (This is a special case of the UNIX program grep.) For example, searching for the pattern of letters ``ould&#39;&#39; in the set of lines</p>\n\n<p>&nbsp;&nbsp; Ah Love! could you and I with Fate conspire<br />\n&nbsp;&nbsp; To grasp this sorry Scheme of Things entire,<br />\n&nbsp;&nbsp; Would not we shatter it to bits -- and then<br />\n&nbsp;&nbsp; Re-mould it nearer to the Heart&#39;s Desire!</p>\n\n<p>will produce the output&nbsp;</p>\n\n<p>&nbsp;&nbsp; Ah Love! could you and I with Fate conspire<br />\n&nbsp;&nbsp; Would not we shatter it to bits -- and then<br />\n&nbsp;&nbsp; Re-mould it nearer to the Heart&#39;s Desire!</p>\n\n<p>The job falls neatly into three pieces:</p>\n\n<p>while (there&#39;s another line)<br />\n&nbsp;&nbsp;&nbsp; if (the line contains the pattern)<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; print it</p>\n\n<p>Although it&#39;s certainly possible to put the code for all of this in main, a better way is to use the structure to advantage by making each part a separate function. Three small pieces are better to deal with than one big one, because irrelevant details can be buried in the functions, and the chance of unwanted interactions is minimized. And the pieces may even be useful in other programs.</p>\n\n<p>``While there&#39;s another line&#39;&#39; is getline, a function that we wrote in Chapter 1, and ``print it&#39;&#39; is printf, which someone has already provided for us. This means we need only write a routine to decide whether the line contains an occurrence of the pattern. We can solve that problem by writing a function strindex(s,t) that returns the position or index in the string s where the string t begins, or -1 if s does not contain t. Because C arrays begin at position zero, indexes will be zero or positive, and so a negative value like -1 is convenient for signaling failure. When we later need more sophisticated pattern matching, we only have to replace strindex; the rest of the code can remain the same. (The standard library provides a function strstr that is similar to strindex, except that it returns a pointer instead of an index.)&nbsp;</p>\n\n<p>#include &lt;stdio.h&gt;<br />\n&nbsp;&nbsp; #define MAXLINE 1000 /* maximum input line length */</p>\n\n<p>&nbsp;&nbsp; int getline(char line[], int max)<br />\n&nbsp;&nbsp; int strindex(char source[], char searchfor[]);</p>\n\n<p>&nbsp;&nbsp; char pattern[] = &quot;ould&quot;;&nbsp;&nbsp; /* pattern to search for */</p>\n\n<p>&nbsp;&nbsp; /* find all lines matching pattern */<br />\n&nbsp;&nbsp; main()<br />\n&nbsp;&nbsp; {<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char line[MAXLINE];<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int found = 0;</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while (getline(line, MAXLINE) &gt; 0)<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (strindex(line, pattern) &gt;= 0) {<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf(&quot;%s&quot;, line);<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; found++;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return found;<br />\n&nbsp;&nbsp; }</p>\n\n<p>&nbsp;&nbsp; /* getline:&nbsp; get line into s, return length */<br />\n&nbsp;&nbsp; int getline(char s[], int lim)<br />\n&nbsp;&nbsp; {<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int c, i;<br />\n&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; i = 0;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while (--lim &gt; 0 &amp;&amp; (c=getchar()) != EOF &amp;&amp; c != &#39;\n&#39;)<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; s[i++] = c;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (c == &#39;\n&#39;)<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; s[i++] = c;</p>\n\n<p>s[i] = &#39;\0&#39;;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return i;<br />\n&nbsp;&nbsp; }</p>\n\n<p>&nbsp;&nbsp; /* strindex:&nbsp; return index of t in s, -1 if none */<br />\n&nbsp;&nbsp; int strindex(char s[], char t[])<br />\n&nbsp;&nbsp; {<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int i, j, k;</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (i = 0; s[i] != &#39;\0&#39;; i++) {<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (j=i, k=0; t[k]!=&#39;\0&#39; &amp;&amp; s[j]==t[k]; j++, k++)<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (k &gt; 0 &amp;&amp; t[k] == &#39;\0&#39;)<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return i;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return -1;<br />\n&nbsp;&nbsp; }<br />\nEach function definition has the form</p>\n\n<p>return-type function-name(argument declarations)<br />\n{<br />\n&nbsp;&nbsp;&nbsp; declarations and statements<br />\n}</p>\n\n<p>Various parts may be absent; a minimal function is&nbsp;</p>\n\n<p>dummy() {}</p>\n\n<p>which does nothing and returns nothing. A do-nothing function like this is sometimes useful as a place holder during program development. If the return type is omitted,int is assumed.</p>\n\n<p>A program is just a set of definitions of variables and functions. Communication between the functions is by arguments and values returned by the functions, and through external variables. The functions can occur in any order in the source file, and the source program can be split into multiple files, so long as no function is split.&nbsp;</p>\n\n<p>The return statement is the mechanism for returning a value from the called function to its caller. Any expression can follow return:</p>\n\n<p>return expression;</p>\n\n<p>The expression will be converted to the return type of the function if necessary. Parentheses are often used around the expression, but they are optional.&nbsp;</p>\n\n<p>The calling function is free to ignore the returned value. Furthermore, there need to be no<br />\nexpression after<br />\nreturn; in that case, no value is returned to the caller. Control also returns to the caller with no value when execution ``falls off the end&#39;&#39; of the function by reaching the closing right brace. It is not illegal, but probably a sign of trouble, if a function returns a value<br />\nfrom one place and no value from another. In any case, if a function fails to return a value, its ``value&#39;&#39; is certain to be garbage.&nbsp;</p>\n\n<p>The pattern-searching program returns a status from main, the number of matches found. This value is available for use by the environment that called the program&nbsp;</p>\n', ''),
(6, '<p>Pointers and Arrays</p>\r\n', '<p>A pointer is a variable that contains the address of a variable. Pointers are much used in C, partly because they are sometimes the only way to express a computation, and partly because they usually lead to more compact and efficient code than can be obtained in other ways. Pointers and arrays are closely related; this chapter also explores this relationship and shows how to exploit it.</p>\n\n<p>Pointers have been lumped with the goto statement as a marvelous way to create impossibleto-understand programs.This is certainly true when they are used carelessly, and it is easy to create pointers that point somewhere unexpected. With discipline, however, pointers can also be used to achieve clarity and simplicity. This is the aspect that we will try to illustrate.&nbsp;</p>\n\n<p>&lt;h2&gt;Pointers and Addresses &lt;/h2&gt;</p>\n\n<p>Let us begin with a simplified picture of how memory is organized. A typical machine has an array of consecutively numbered or addressed memory cells that may be manipulated individually or in contiguous groups. One common situation is that any byte can be a<br />\nchar, a pair of one-byte cells can be treated as a short integer, and four adjacent bytes form a long. A pointer is a group of cells (often two or four) that can hold an address. So if c is a char and p is a pointer that points to it, we could represent the situation this way:&nbsp;</p>\n\n<p>&nbsp;</p>\n', ''),
(7, '<p>Structures</p>\r\n', '<p>A structure is a collection of one or more variables, possibly of different types, grouped together under a single name for convenient handling. (Structures are called ``records&#39;&#39; in some languages, notably Pascal.) Structures help to organize complicated data, particularly in large programs, because they permit a group of related variables to be treated as a unit instead of as separate entities.&nbsp;</p>\r\n\r\n<p>One traditional example of a structure is the payroll record: an employee is described by a set of attributes such as name, address, social security number, salary, etc. Some of these in turn could be structures: a name has several components, as does an address and even a salary.Another example, more typical for C, comes from graphics: a point is a pair of coordinate, a rectangle is a pair of points, and so on.&nbsp;</p>\r\n\r\n<p>The main change made by the ANSI standard is to define structure assignment - structures may be copied and assigned to, passed to functions, and returned by functions. This has been supported by most compilers for many years, but the properties are now precisely defined. Automatic structures and arrays may now also be initialized.&nbsp;</p>\r\n', ''),
(8, '<p>Input and Output</p>\r\n', '<p>Input and output are not part of the C language itself, so we have not emphasized them in our presentation thus far. Nonetheless, programs interact with their environment in much more complicated ways than those we have shown before. In this chapter we will describe the standard library, a set of functions that provide input and output, string handling, storage management, mathematical routines, and a variety of other services for C programs. We will concentrate on input and output</p>\r\n\r\n<p>The ANSI standard defines these library functions precisely, so that they can exist in compatible form on any system where C exists. Programs that confine their system interactions to facilities provided by the standard library can be moved from one system to<br />\r\nanother without change.</p>\r\n\r\n<p>The properties of library functions are specified in more than a dozen headers; we have already seen several of these, including<br />\r\n&lt;stdio.h&gt;, &lt;string.h&gt;, and &lt;ctype.h&gt;. We will not present the entire library here, since we are more interested in writing C programs that use it. The library is described in detail</p>\r\n', ''),
(9, '<p>sdcd</p>\r\n', '<p>dsfds</p>\r\n', ''),
(10, '<p>bbbb</p>\r\n', '<p>hhhh</p>\r\n', ''),
(11, '<p>ssss</p>\r\n', '<p>sss</p>\r\n', 'uploads/1429627427'),
(12, '<p>bbbb</p>\r\n', '<p>hhhh</p>\r\n', 'uploads/1429633138'),
(13, '<p>bbbb</p>\r\n', '<p>hhhh</p>\r\n', 'uploads/1429633288'),
(14, '<p>bbbb</p>\r\n', '<p>hhhh</p>\r\n', 'uploads/1429646618'),
(15, '<p>bbbb</p>\r\n', '<p>hhhh</p>\r\n', 'uploads/1429646755'),
(16, '<p>bbbb</p>\r\n', '<p>hhhh</p>\r\n', 'uploads/1429646810'),
(17, '<p>bbbb</p>\r\n', '<p>hhhh</p>\r\n', 'uploads/1429647027'),
(18, '<p>bbbb</p>\r\n', '<p>hhhh</p>\r\n', 'uploads/1429647061'),
(19, '<p>bbbb</p>\r\n', '<p>hhhh</p>\r\n', 'uploads/1429647089'),
(20, '<p>bbbb</p>\r\n', '<p>hhhh</p>\r\n', 'uploads/1429647121'),
(21, '<p>bbbb</p>\r\n', '<p>hhhh</p>\r\n', 'uploads/1429647869'),
(22, '<p>bbbb</p>\r\n', '<p>hhhh</p>\r\n', 'uploads/1429647890');

-- --------------------------------------------------------

--
-- Table structure for table `editor1`
--

CREATE TABLE IF NOT EXISTS `editor1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header` text NOT NULL,
  `text1` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `languase` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `editor1`
--

INSERT INTO `editor1` (`id`, `header`, `text1`, `image`, `languase`) VALUES
(1, 'Introduction', '<p>Let us begin with a quick introduction in C. Our aim is to show the essential elements of the language in real programs, but without getting bogged down in details, rules, and exceptions. At this point, we are not trying to be complete or even precise (save that the examples are meant to be correct). We want to get you as quickly as possible to the point where you can write useful programs, and to do that we have to concentrate on the basics: variables and constants, arithmetic, control flow, functions, and the rudiments of input and output. We are intentionally leaving out of this chapter features of C that are important for writing bigger programs. These include pointers, structures, most of C&#39;s rich set of operators, several controlflow statements, and the standard library. This approach and its drawbacks. Most notable is that the complete story on any particular feature is not found here, and the tutorial, by being brief, may also be misleading. And because the examples do not use the full power of C, they are not as concise and elegant as they might be. We have tried to minimize these effects, but be warned. Another drawback is that later chapters will necessarily repeat some of this chapter. We hope that the repetition will help you more than it annoys. In any case, experienced programmers should be able to extrapolate from the material in this chapter to their own programming needs. Beginners should supplement it by writing small, similar programs of their own. Both groups can use it as a framework on which to hang the more detailed descriptions .</p><br>\n<h2>Getting Started</h2>\n<br>\n<p>The only way to learn a new programming language is by writing programs in it. The first<br />\nprogram to write is the same for all languages:</p>\n\n<p><em>Print the words</em></p>\n\n<p>&nbsp;hello, world</p>\n<p>This is a big hurdle; to leap over it you have to be able to create the program text somewhere,\ncompile it successfully, load it, run it, and find out where your output went. With these\nmechanical details mastered, everything else is comparatively easy.  </p>\n<p>In C, the program to print ``\nhello, world'''' is  </p>\n<p>#include <stdio.h></p>\n<p>main()</p>\n<p>{</p>\n     <p>printf("hello, world\\n");</p>\n   <p>}</p>\n<p>Just how to run this program depends on the system you are using. As a specific example, on \nthe UNIX operating system you must create the program in a file whose name ends in ``.c'''',\nsuch as\nhello.c, then compile it with the command  </p>\n<p>cc hello.c</p>\n<p>If you haven''t botched anything, such as omitting a character or misspelling something, the \ncompilation will proceed silently, and make an executable file called a.out. If you run a.out\nby typing the command </p>\n<p>a.out </p>\n<p>it will print</p>  \n\n  <p> hello, world </p>\n<p>On other systems, the rules will be different; check with a local expert.  </p>\n<p>Now, for some explanations about the program itself. A C program, whatever its size, consists\nof functions and variables. A function contains statements that specify the computing\noperations to be done, and variables store values used during the computation. C functions are\nlike the subroutines and functions in Fortran or the procedures and functions of Pascal. Our \nexample is a function named main. Normally you are at liberty to give functions whatever\nnames you like, but ``\nmain'''' is special - your program begins executing at the beginning of\nmain. This means that every program must have a main somewhere.  </p>\n<br><h1>Variables and Arithmetic Expressions</h1><br>\n<p>The next program uses the formula oC=(5/9)(oF-32) to print the following table of Fahrenheit temperatures and their centigrade or Celsius equivalents:&nbsp;</p>\n\n<p>&nbsp;&nbsp; 1&nbsp;&nbsp;&nbsp; -17<br />\n&nbsp;&nbsp; 20&nbsp;&nbsp; -6<br />\n&nbsp;&nbsp; 40&nbsp;&nbsp; 4<br />\n&nbsp;&nbsp; 60&nbsp;&nbsp; 15<br />\n&nbsp;&nbsp; 80&nbsp;&nbsp; 26<br />\n&nbsp;&nbsp; 100&nbsp; 37<br />\n&nbsp;&nbsp; 120&nbsp; 48<br />\n&nbsp;&nbsp; 140&nbsp; 60<br />\n&nbsp;&nbsp; 160&nbsp; 71<br />\n&nbsp;&nbsp; 180&nbsp; 82<br />\n&nbsp;&nbsp; 200&nbsp; 93<br />\n&nbsp;&nbsp; 220&nbsp; 104<br />\n&nbsp;&nbsp; 240&nbsp; 115<br />\n&nbsp;&nbsp; 260&nbsp; 126<br />\n&nbsp;&nbsp; 280&nbsp; 137<br />\n&nbsp;&nbsp; 300&nbsp; 148</p>\n\n<p>The program itself still consists of the definition of a single function named main. It is longer than the one that printed ``hello, world&#39;&#39;, but not complicated. It introduces several new ideas, including comments, declarations, variables, arithmetic expressions, loops , and<br />\nformatted output.&nbsp;</p>\n\n<p>#include &lt;stdio.h&gt;</p>\n\n<p>&nbsp;&nbsp; /* print Fahrenheit-Celsius table<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for fahr = 0, 20, ..., 300 */<br />\n&nbsp;&nbsp; main()<br />\n&nbsp;&nbsp; {<br />\n&nbsp;&nbsp;&nbsp;&nbsp; int fahr, celsius;<br />\n&nbsp;&nbsp;&nbsp;&nbsp; int lower, upper, step;</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp; lower = 0;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* lower limit of temperature scale */<br />\n&nbsp;&nbsp;&nbsp;&nbsp; upper = 300;&nbsp;&nbsp;&nbsp; /* upper limit */<br />\n&nbsp;&nbsp;&nbsp;&nbsp; step = 20;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* step size */</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp; fahr = lower;<br />\n&nbsp;&nbsp;&nbsp;&nbsp; while (fahr &lt;= upper) {<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; celsius = 5 * (fahr-32) / 9;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf(&quot;%d	%d\n&quot;, fahr, celsius);<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fahr = fahr + step;<br />\n&nbsp;&nbsp;&nbsp;&nbsp; }<br />\n&nbsp;&nbsp; }</p>\n\n<p>The two lines &nbsp;</p>\n\n<p>&nbsp; /* print Fahrenheit-Celsius table<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for fahr = 0, 20, ..., 300 */</p>\n\n<p>are a comment, which in this case explains briefly what the program does. Any characters between /* and */ are ignored by the compiler; they may be used freely to make a program easier to understand. Comments may appear anywhere where a blank, tab or newline can.</p>\n\n<p>In C, all variables must be declared before they are used, usually at the beginning of the function before any executable statements. A declaration announces the properties of variables; it consists of a name and a list of variables, such as</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int fahr, celsius;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int lower, upper, step;</p>\n\n<p>The type int means that the variables listed are integers; by contrast with float, which means floating point, i.e., numbers that may have a fractional part. The range of both int and float depends on the machine you are using; 16-bits ints, which lie between -32768 and +32767, are common, as are 32-bit ints. A float number is typically a 32-bit quantity, with at least six significant digits and magnitude generally</p>\n\n', 'uploads/img1.jpg', 'c'),
(2, 'Types, Operators andExpressions', '<p>Variables and constants are the basic data objects manipulated in a program. Declarations list\nthe variables to be used, and state what type they have and perhaps what their initial values\nare. Operators specify what is to be done to them. Expressions combine variables and\nconstants to produce new values. The type of an object determines the set of values it can\nhave and what operations can be performed on it. These building blocks are the topics of this\nchapter.</p>\n<p>The ANSI standard has made many small changes and additions to basic types and\nexpressions. There are now\nsigned and unsigned forms of all integer types, and notations for\nunsigned constants and hexadecimal character constants. Floating-point operations may be\ndone in single precision; there is also a\nlong double type for extended precision. String \nconstants may be concatenated at compile time. Enumerations have become part of the \nlanguage, formalizing a feature of long standing. Objects may be declared\nconst, which\nprevents them from being changed. The rules for automatic coercions among arithmetic types\nhave been augmented to handle the richer set of types.</p>\n<br><h2>Variable Names</h2>\n<p>Although we didn''t say so in Chapter 1, there are some restrictions on the names of variables\nand symbolic constants. Names are made up of letters and digits; the first character must be a \nletter. The underscore ``\n_'''' counts as a letter; it is sometimes useful for improving the\nreadability of long variable names. Don''t begin variable names with underscore, however, \nsince library routines often use such names. Upper and lower case letters are distinct, so\nx and \nX are two different names. Traditional C practice is to use lower case for variable names, and\nall upper case for symbolic constants.  </p>\n<p>At least the first 31 characters of an internal name are significant. For function names and\nexternal variables, the number may be less than 31, because external names may be used by\nassemblers and loaders over which the language has no control. For external names, the \nstandard guarantees uniqueness only for 6 characters and a single case. Keywords like\nif, \nelse, int, float, etc., are reserved: you can''t use them as variable names. They must be in\nlower case.  </p>\n<p>t''s wise to choose variable names that are related to the purpose of the variable, and that are\nunlikely to get mixed up typographically. We tend to use short names for local variables, \nespecially loop indices, and longer names for external variables.  </p>\n<p><h2>Data Types and Sizes</h2> </p>\n<p>There are only a few basic data types in C:  </p>\n<p><tt>char</tt>a single byte, capable of holding one character in the local character set </p>\n<p><tt>int</tt>\nan integer, typically reflecting the natural size of integers on the host machine</p>\n<p><tt>float</tt>\nsingle-precision floating point </p>\n<p><tt>double</tt>\ndouble-precision floating point </p>\n<br>\n<p>In addition, there are a number of qualifiers that can be applied to these basic types.\nshort\nand\nlong apply to integers:  </p>\n<p>The intent is that\nshort and long should provide different lengths of integers where practical; \nint will normally be the natural size for a particular machine. short is often 16 bits long, and \nint either 16 or 32 bits. Each compiler is free to choose appropriate sizes for its own\nhardware, subject only to the the restriction that\nshorts and ints are at least 16 bits, longs are\nat least 32 bits, and\nshort is no longer than int, which is no longer than long.  </p>\n<p>The qualifier\nsigned or unsigned may be applied to char or any integer. unsigned numbers\nare always positive or zero, and obey the laws of arithmetic modulo\n2\nn\n, where n is the number\nof bits in the type. So, for instance, if\nchars are 8 bits, unsigned char variables have values \nbetween 0 and 255, while\nsigned chars have values between -128 and 127 (in a two''s \ncomplement machine.) Whether plain\nchars are signed or unsigned is machine-dependent,\nbut printable characters are always positive.  </p>\n<p><h2>Constants </h2></p>\n<p>An integer constant like 1234 is an int. A long constant is written with a terminal l (ell) or \nL, as in 123456789L; an integer constant too big to fit into an int will also be taken as a long. \nUnsigned constants are written with a terminal\nu or U, and the suffix ul or UL indicates \nunsigned long.</p>\n<p>Floating-point constants contain a decimal point (\n123.4) or an exponent (1e-2) or both; their \ntype is\ndouble, unless suffixed. The suffixes f or F indicate a float constant; l or L indicate \na\nlong double. </p>\n<p>The value of an integer can be specified in octal or hexadecimal instead of decimal. A leading \n0 (zero) on an integer constant means octal; a leading 0x or 0X means hexadecimal. For\nexample, decimal 31 can be written as\n037 in octal and 0x1f or 0x1F in hex. Octal and hexadecimal constants may also be followed by L to make them long and U to make them \nunsigned: 0XFUL is an unsigned long constant with value 15 decimal.  </p>\n<p>A\ncharacter constant is an integer, written as one character within single quotes, such as \n''x''. The value of a character constant is the numeric value of the character in the machine''s\ncharacter set. For example, in the ASCII character set the character constant\n''0'' has the value\n48, which is unrelated to the numeric value 0. If we write\n''0'' instead of a numeric value like\n48 that depends on the character set, the program is independent of the particular value and \neasier to read. Character constants participate in numeric operations just as any other integers,\nalthough they are most often used in comparisons with other characters.  </p>\n<p>Certain characters can be represented in character and string constants by escape sequences\nlike\n\\n (newline); these sequences look like two characters, but represent only one. In\naddition, an arbitrary byte-sized bit pattern can be specified by </p>\n', '', 'c'),
(3, 'Control Flow', '<p>The control-flow of a language specify the order in which computations are performed. We\r\nhave already met the most common control-flow constructions in earlier examples; here we\r\nwill complete the set, and be more precise about the ones discussed before.</p>\r\n<p><h2>Statements and Blocks </h2></p>\r\n<p>An expression such as x = 0 or i++ or printf(...) becomes a statement when it is\r\nfollowed by a semicolon, as in  </p>\r\n<p><h2>If-Else </h2></p>\r\n<p>The if-else statement is used to express decisions. Formally the syntax is  </p>\r\n<p>if (expression)</p>\r\n     <p>  statement</p>\r\n<p>   else</p>\r\n   <p>    statement</p>\r\n<p>where the else part is optional. The expression is evaluated; if it is true (that is, if expression\r\nhas a non-zero value),\r\nstatement\r\n is executed. If it is false (expression is zero) and if there is\r\nan\r\nelse part, statement\r\n2\r\n1\r\n is executed instead. </p>\r\n<p>Since an\r\nif tests the numeric value of an expression, certain coding shortcuts are possible. \r\nThe most obvious is writing  </p>\r\n<p><tt>if (expression) </tt></p>\r\n<p>Because the\r\nelse part of an if-else is optional,there is an ambiguity when an else if omitted\r\nfrom a nested\r\nif sequence. This is resolved by associating the else with the closest previous \r\nelse-less if. For example, in  </p>\r\n\r\n \r\n', '', 'c'),
(4, 'C++ Introduction', '<p>C++ Let us begin with a quick introduction in C. Our aim is to show the essential elements of the language in real programs, but without getting bogged down in details, rules, and exceptions. At this point, we are not trying to be complete or even precise (save that the examples are meant to be correct). We want to get you as quickly as possible to the point where you can write useful programs, and to do that we have to concentrate on the basics: variables and constants, arithmetic, control flow, functions, and the rudiments of input and output. We are intentionally leaving out of this chapter features of C that are important for writing bigger programs. These include pointers, structures, most of C&#39;s rich set of operators, several controlflow statements, and the standard library. This approach and its drawbacks. Most notable is that the complete story on any particular feature is not found here, and the tutorial, by being brief, may also be misleading. And because the examples do not use the full power of C, they are not as concise and elegant as they might be. We have tried to minimize these effects, but be warned. Another drawback is that later chapters will necessarily repeat some of this chapter. We hope that the repetition will help you more than it annoys. In any case, experienced programmers should be able to extrapolate from the material in this chapter to their own programming needs. Beginners should supplement it by writing small, similar programs of their own. Both groups can use it as a framework on which to hang the more detailed descriptions .</p><br>\n<h2>Getting Started</h2>\n<br>\n<p>The only way to learn a new programming language is by writing programs in it. The first<br />\nprogram to write is the same for all languages:</p>\n\n<p><em>Print the words</em></p>\n\n<p>&nbsp;hello, world</p>\n<p>This is a big hurdle; to leap over it you have to be able to create the program text somewhere,\ncompile it successfully, load it, run it, and find out where your output went. With these\nmechanical details mastered, everything else is comparatively easy.  </p>\n<p>In C, the program to print ``\nhello, world'''' is  </p>\n<p>#include <stdio.h></p>\n<p>main()</p>\n<p>{</p>\n     <p>printf("hello, world\\n");</p>\n   <p>}</p>\n<p>Just how to run this program depends on the system you are using. As a specific example, on \nthe UNIX operating system you must create the program in a file whose name ends in ``.c'''',\nsuch as\nhello.c, then compile it with the command  </p>\n<p>cc hello.c</p>\n<p>If you haven''t botched anything, such as omitting a character or misspelling something, the \ncompilation will proceed silently, and make an executable file called a.out. If you run a.out\nby typing the command </p>\n<p>a.out </p>\n<p>it will print</p>  \n\n  <p> hello, world </p>\n<p>On other systems, the rules will be different; check with a local expert.  </p>\n<p>Now, for some explanations about the program itself. A C program, whatever its size, consists\nof functions and variables. A function contains statements that specify the computing\noperations to be done, and variables store values used during the computation. C functions are\nlike the subroutines and functions in Fortran or the procedures and functions of Pascal. Our \nexample is a function named main. Normally you are at liberty to give functions whatever\nnames you like, but ``\nmain'''' is special - your program begins executing at the beginning of\nmain. This means that every program must have a main somewhere.  </p>\n<br><h1>Variables and Arithmetic Expressions</h1><br>\n<p>The next program uses the formula oC=(5/9)(oF-32) to print the following table of Fahrenheit temperatures and their centigrade or Celsius equivalents:&nbsp;</p>\n\n<p>&nbsp;&nbsp; 1&nbsp;&nbsp;&nbsp; -17<br />\n&nbsp;&nbsp; 20&nbsp;&nbsp; -6<br />\n&nbsp;&nbsp; 40&nbsp;&nbsp; 4<br />\n&nbsp;&nbsp; 60&nbsp;&nbsp; 15<br />\n&nbsp;&nbsp; 80&nbsp;&nbsp; 26<br />\n&nbsp;&nbsp; 100&nbsp; 37<br />\n&nbsp;&nbsp; 120&nbsp; 48<br />\n&nbsp;&nbsp; 140&nbsp; 60<br />\n&nbsp;&nbsp; 160&nbsp; 71<br />\n&nbsp;&nbsp; 180&nbsp; 82<br />\n&nbsp;&nbsp; 200&nbsp; 93<br />\n&nbsp;&nbsp; 220&nbsp; 104<br />\n&nbsp;&nbsp; 240&nbsp; 115<br />\n&nbsp;&nbsp; 260&nbsp; 126<br />\n&nbsp;&nbsp; 280&nbsp; 137<br />\n&nbsp;&nbsp; 300&nbsp; 148</p>\n\n<p>The program itself still consists of the definition of a single function named main. It is longer than the one that printed ``hello, world&#39;&#39;, but not complicated. It introduces several new ideas, including comments, declarations, variables, arithmetic expressions, loops , and<br />\nformatted output.&nbsp;</p>\n\n<p>#include &lt;stdio.h&gt;</p>\n\n<p>&nbsp;&nbsp; /* print Fahrenheit-Celsius table<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for fahr = 0, 20, ..., 300 */<br />\n&nbsp;&nbsp; main()<br />\n&nbsp;&nbsp; {<br />\n&nbsp;&nbsp;&nbsp;&nbsp; int fahr, celsius;<br />\n&nbsp;&nbsp;&nbsp;&nbsp; int lower, upper, step;</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp; lower = 0;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* lower limit of temperature scale */<br />\n&nbsp;&nbsp;&nbsp;&nbsp; upper = 300;&nbsp;&nbsp;&nbsp; /* upper limit */<br />\n&nbsp;&nbsp;&nbsp;&nbsp; step = 20;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* step size */</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp; fahr = lower;<br />\n&nbsp;&nbsp;&nbsp;&nbsp; while (fahr &lt;= upper) {<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; celsius = 5 * (fahr-32) / 9;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf(&quot;%d	%d\n&quot;, fahr, celsius);<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fahr = fahr + step;<br />\n&nbsp;&nbsp;&nbsp;&nbsp; }<br />\n&nbsp;&nbsp; }</p>\n\n<p>The two lines &nbsp;</p>\n\n<p>&nbsp; /* print Fahrenheit-Celsius table<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for fahr = 0, 20, ..., 300 */</p>\n\n<p>are a comment, which in this case explains briefly what the program does. Any characters between /* and */ are ignored by the compiler; they may be used freely to make a program easier to understand. Comments may appear anywhere where a blank, tab or newline can.</p>\n\n<p>In C, all variables must be declared before they are used, usually at the beginning of the function before any executable statements. A declaration announces the properties of variables; it consists of a name and a list of variables, such as</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int fahr, celsius;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int lower, upper, step;</p>\n\n<p>The type int means that the variables listed are integers; by contrast with float, which means floating point, i.e., numbers that may have a fractional part. The range of both int and float depends on the machine you are using; 16-bits ints, which lie between -32768 and +32767, are common, as are 32-bit ints. A float number is typically a 32-bit quantity, with at least six significant digits and magnitude generally</p>\n\n', '', 'cc'),
(5, 'C# Introduction', '<p>C# Let us begin with a quick introduction in C. Our aim is to show the essential elements of the language in real programs, but without getting bogged down in details, rules, and exceptions. At this point, we are not trying to be complete or even precise (save that the examples are meant to be correct). We want to get you as quickly as possible to the point where you can write useful programs, and to do that we have to concentrate on the basics: variables and constants, arithmetic, control flow, functions, and the rudiments of input and output. We are intentionally leaving out of this chapter features of C that are important for writing bigger programs. These include pointers, structures, most of C&#39;s rich set of operators, several controlflow statements, and the standard library. This approach and its drawbacks. Most notable is that the complete story on any particular feature is not found here, and the tutorial, by being brief, may also be misleading. And because the examples do not use the full power of C, they are not as concise and elegant as they might be. We have tried to minimize these effects, but be warned. Another drawback is that later chapters will necessarily repeat some of this chapter. We hope that the repetition will help you more than it annoys. In any case, experienced programmers should be able to extrapolate from the material in this chapter to their own programming needs. Beginners should supplement it by writing small, similar programs of their own. Both groups can use it as a framework on which to hang the more detailed descriptions .</p><br>\n<h2>Getting Started</h2>\n<br>\n<p>The only way to learn a new programming language is by writing programs in it. The first<br />\nprogram to write is the same for all languages:</p>\n\n<p><em>Print the words</em></p>\n\n<p>&nbsp;hello, world</p>\n<p>This is a big hurdle; to leap over it you have to be able to create the program text somewhere,\ncompile it successfully, load it, run it, and find out where your output went. With these\nmechanical details mastered, everything else is comparatively easy.  </p>\n<p>In C, the program to print ``\nhello, world'''' is  </p>\n<p>#include <stdio.h></p>\n<p>main()</p>\n<p>{</p>\n     <p>printf("hello, world\\n");</p>\n   <p>}</p>\n<p>Just how to run this program depends on the system you are using. As a specific example, on \nthe UNIX operating system you must create the program in a file whose name ends in ``.c'''',\nsuch as\nhello.c, then compile it with the command  </p>\n<p>cc hello.c</p>\n<p>If you haven''t botched anything, such as omitting a character or misspelling something, the \ncompilation will proceed silently, and make an executable file called a.out. If you run a.out\nby typing the command </p>\n<p>a.out </p>\n<p>it will print</p>  \n\n  <p> hello, world </p>\n<p>On other systems, the rules will be different; check with a local expert.  </p>\n<p>Now, for some explanations about the program itself. A C program, whatever its size, consists\nof functions and variables. A function contains statements that specify the computing\noperations to be done, and variables store values used during the computation. C functions are\nlike the subroutines and functions in Fortran or the procedures and functions of Pascal. Our \nexample is a function named main. Normally you are at liberty to give functions whatever\nnames you like, but ``\nmain'''' is special - your program begins executing at the beginning of\nmain. This means that every program must have a main somewhere.  </p>\n<br><h1>Variables and Arithmetic Expressions</h1><br>\n<p>The next program uses the formula oC=(5/9)(oF-32) to print the following table of Fahrenheit temperatures and their centigrade or Celsius equivalents:&nbsp;</p>\n\n<p>&nbsp;&nbsp; 1&nbsp;&nbsp;&nbsp; -17<br />\n&nbsp;&nbsp; 20&nbsp;&nbsp; -6<br />\n&nbsp;&nbsp; 40&nbsp;&nbsp; 4<br />\n&nbsp;&nbsp; 60&nbsp;&nbsp; 15<br />\n&nbsp;&nbsp; 80&nbsp;&nbsp; 26<br />\n&nbsp;&nbsp; 100&nbsp; 37<br />\n&nbsp;&nbsp; 120&nbsp; 48<br />\n&nbsp;&nbsp; 140&nbsp; 60<br />\n&nbsp;&nbsp; 160&nbsp; 71<br />\n&nbsp;&nbsp; 180&nbsp; 82<br />\n&nbsp;&nbsp; 200&nbsp; 93<br />\n&nbsp;&nbsp; 220&nbsp; 104<br />\n&nbsp;&nbsp; 240&nbsp; 115<br />\n&nbsp;&nbsp; 260&nbsp; 126<br />\n&nbsp;&nbsp; 280&nbsp; 137<br />\n&nbsp;&nbsp; 300&nbsp; 148</p>\n\n<p>The program itself still consists of the definition of a single function named main. It is longer than the one that printed ``hello, world&#39;&#39;, but not complicated. It introduces several new ideas, including comments, declarations, variables, arithmetic expressions, loops , and<br />\nformatted output.&nbsp;</p>\n\n<p>#include &lt;stdio.h&gt;</p>\n\n<p>&nbsp;&nbsp; /* print Fahrenheit-Celsius table<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for fahr = 0, 20, ..., 300 */<br />\n&nbsp;&nbsp; main()<br />\n&nbsp;&nbsp; {<br />\n&nbsp;&nbsp;&nbsp;&nbsp; int fahr, celsius;<br />\n&nbsp;&nbsp;&nbsp;&nbsp; int lower, upper, step;</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp; lower = 0;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* lower limit of temperature scale */<br />\n&nbsp;&nbsp;&nbsp;&nbsp; upper = 300;&nbsp;&nbsp;&nbsp; /* upper limit */<br />\n&nbsp;&nbsp;&nbsp;&nbsp; step = 20;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* step size */</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp; fahr = lower;<br />\n&nbsp;&nbsp;&nbsp;&nbsp; while (fahr &lt;= upper) {<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; celsius = 5 * (fahr-32) / 9;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf(&quot;%d	%d\n&quot;, fahr, celsius);<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fahr = fahr + step;<br />\n&nbsp;&nbsp;&nbsp;&nbsp; }<br />\n&nbsp;&nbsp; }</p>\n\n<p>The two lines &nbsp;</p>\n\n<p>&nbsp; /* print Fahrenheit-Celsius table<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for fahr = 0, 20, ..., 300 */</p>\n\n<p>are a comment, which in this case explains briefly what the program does. Any characters between /* and */ are ignored by the compiler; they may be used freely to make a program easier to understand. Comments may appear anywhere where a blank, tab or newline can.</p>\n\n<p>In C, all variables must be declared before they are used, usually at the beginning of the function before any executable statements. A declaration announces the properties of variables; it consists of a name and a list of variables, such as</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int fahr, celsius;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int lower, upper, step;</p>\n\n<p>The type int means that the variables listed are integers; by contrast with float, which means floating point, i.e., numbers that may have a fractional part. The range of both int and float depends on the machine you are using; 16-bits ints, which lie between -32768 and +32767, are common, as are 32-bit ints. A float number is typically a 32-bit quantity, with at least six significant digits and magnitude generally</p>\n\n', '', 'ccc'),
(6, 'C++ Types, Operators andExpressions', '<p>C++ Variables and constants are the basic data objects manipulated in a program. Declarations list\nthe variables to be used, and state what type they have and perhaps what their initial values\nare. Operators specify what is to be done to them. Expressions combine variables and\nconstants to produce new values. The type of an object determines the set of values it can\nhave and what operations can be performed on it. These building blocks are the topics of this\nchapter.</p>\n<p>The ANSI standard has made many small changes and additions to basic types and\nexpressions. There are now\nsigned and unsigned forms of all integer types, and notations for\nunsigned constants and hexadecimal character constants. Floating-point operations may be\ndone in single precision; there is also a\nlong double type for extended precision. String \nconstants may be concatenated at compile time. Enumerations have become part of the \nlanguage, formalizing a feature of long standing. Objects may be declared\nconst, which\nprevents them from being changed. The rules for automatic coercions among arithmetic types\nhave been augmented to handle the richer set of types.</p>\n<br><h2>Variable Names</h2>\n<p>Although we didn''t say so in Chapter 1, there are some restrictions on the names of variables\nand symbolic constants. Names are made up of letters and digits; the first character must be a \nletter. The underscore ``\n_'''' counts as a letter; it is sometimes useful for improving the\nreadability of long variable names. Don''t begin variable names with underscore, however, \nsince library routines often use such names. Upper and lower case letters are distinct, so\nx and \nX are two different names. Traditional C practice is to use lower case for variable names, and\nall upper case for symbolic constants.  </p>\n<p>At least the first 31 characters of an internal name are significant. For function names and\nexternal variables, the number may be less than 31, because external names may be used by\nassemblers and loaders over which the language has no control. For external names, the \nstandard guarantees uniqueness only for 6 characters and a single case. Keywords like\nif, \nelse, int, float, etc., are reserved: you can''t use them as variable names. They must be in\nlower case.  </p>\n<p>t''s wise to choose variable names that are related to the purpose of the variable, and that are\nunlikely to get mixed up typographically. We tend to use short names for local variables, \nespecially loop indices, and longer names for external variables.  </p>\n<p><h2>Data Types and Sizes</h2> </p>\n<p>There are only a few basic data types in C:  </p>\n<p><tt>char</tt>a single byte, capable of holding one character in the local character set </p>\n<p><tt>int</tt>\nan integer, typically reflecting the natural size of integers on the host machine</p>\n<p><tt>float</tt>\nsingle-precision floating point </p>\n<p><tt>double</tt>\ndouble-precision floating point </p>\n<br>\n<p>In addition, there are a number of qualifiers that can be applied to these basic types.\nshort\nand\nlong apply to integers:  </p>\n<p>The intent is that\nshort and long should provide different lengths of integers where practical; \nint will normally be the natural size for a particular machine. short is often 16 bits long, and \nint either 16 or 32 bits. Each compiler is free to choose appropriate sizes for its own\nhardware, subject only to the the restriction that\nshorts and ints are at least 16 bits, longs are\nat least 32 bits, and\nshort is no longer than int, which is no longer than long.  </p>\n<p>The qualifier\nsigned or unsigned may be applied to char or any integer. unsigned numbers\nare always positive or zero, and obey the laws of arithmetic modulo\n2\nn\n, where n is the number\nof bits in the type. So, for instance, if\nchars are 8 bits, unsigned char variables have values \nbetween 0 and 255, while\nsigned chars have values between -128 and 127 (in a two''s \ncomplement machine.) Whether plain\nchars are signed or unsigned is machine-dependent,\nbut printable characters are always positive.  </p>\n<p><h2>Constants </h2></p>\n<p>An integer constant like 1234 is an int. A long constant is written with a terminal l (ell) or \nL, as in 123456789L; an integer constant too big to fit into an int will also be taken as a long. \nUnsigned constants are written with a terminal\nu or U, and the suffix ul or UL indicates \nunsigned long.</p>\n<p>Floating-point constants contain a decimal point (\n123.4) or an exponent (1e-2) or both; their \ntype is\ndouble, unless suffixed. The suffixes f or F indicate a float constant; l or L indicate \na\nlong double. </p>\n<p>The value of an integer can be specified in octal or hexadecimal instead of decimal. A leading \n0 (zero) on an integer constant means octal; a leading 0x or 0X means hexadecimal. For\nexample, decimal 31 can be written as\n037 in octal and 0x1f or 0x1F in hex. Octal and hexadecimal constants may also be followed by L to make them long and U to make them \nunsigned: 0XFUL is an unsigned long constant with value 15 decimal.  </p>\n<p>A\ncharacter constant is an integer, written as one character within single quotes, such as \n''x''. The value of a character constant is the numeric value of the character in the machine''s\ncharacter set. For example, in the ASCII character set the character constant\n''0'' has the value\n48, which is unrelated to the numeric value 0. If we write\n''0'' instead of a numeric value like\n48 that depends on the character set, the program is independent of the particular value and \neasier to read. Character constants participate in numeric operations just as any other integers,\nalthough they are most often used in comparisons with other characters.  </p>\n<p>Certain characters can be represented in character and string constants by escape sequences\nlike\n\\n (newline); these sequences look like two characters, but represent only one. In\naddition, an arbitrary byte-sized bit pattern can be specified by </p>\n', '', 'cc'),
(7, 'C++ Control Flow', '<p>C++ The control-flow of a language specify the order in which computations are performed. We\nhave already met the most common control-flow constructions in earlier examples; here we\nwill complete the set, and be more precise about the ones discussed before.</p>\n<p><h2>Statements and Blocks </h2></p>\n<p>An expression such as x = 0 or i++ or printf(...) becomes a statement when it is\nfollowed by a semicolon, as in  </p>\n<p><h2>If-Else </h2></p>\n<p>The if-else statement is used to express decisions. Formally the syntax is  </p>\n<p>if (expression)</p>\n     <p>  statement</p>\n<p>   else</p>\n   <p>    statement</p>\n<p>where the else part is optional. The expression is evaluated; if it is true (that is, if expression\nhas a non-zero value),\nstatement\n is executed. If it is false (expression is zero) and if there is\nan\nelse part, statement\n2\n1\n is executed instead. </p>\n<p>Since an\nif tests the numeric value of an expression, certain coding shortcuts are possible. \nThe most obvious is writing  </p>\n<p><tt>if (expression) </tt></p>\n<p>Because the\nelse part of an if-else is optional,there is an ambiguity when an else if omitted\nfrom a nested\nif sequence. This is resolved by associating the else with the closest previous \nelse-less if. For example, in  </p>\n\n \n', '', 'cc'),
(8, 'C++ Functions and Program Structure', '<p>C++ Functions break large computing tasks into smaller ones, and enable people to build on what others have done instead of starting over from scratch. Appropriate functions hide details of operation from parts of the program that don&#39;t need to know about them, thus clarifying the whole, and easing the pain of making changes.&nbsp;</p>\n\n<p>C has been designed to make functions efficient and easy to use; C programs generally consist of many small functions rather than a few big ones. A program may reside in one or more source files. Source files may be compiled separately and loaded together, along with previously compiled functions from libraries. We will not go into that process here, however, since the details vary from system to system.</p>\n\n<p>Function declaration and definition is the area where the ANSI standard has made the most changes to C. As we saw first in , it is now possible to declare the type of arguments when a function is declared. The syntax of function declaration also changes, so that declarations and definitions match. This makes it possible for a compiler to detect many more errors than it could before. Furthermore, when arguments are properly declared, appropriate type coercions are performed automatically.</p>\n\n<p>The standard clarifies the rules on the scope of names; in particular, it requires that there be only one definition of each external object. Initialization is more general: automatic arrays and structures may now be initialized.&nbsp;</p>\n\n<p>The C preprocessor has also been enhanced. New preprocessor facilities include a more complete set of conditional compilation directives, a way to create quoted strings from macro arguments, and better control over the macro expansion process.</p>\n\n<h2>Basics of Functions</h2>\n\n<p>To begin with, let us design and write a program to print each line of its input that contains a particular ``pattern&#39;&#39; or string of characters. (This is a special case of the UNIX program grep.) For example, searching for the pattern of letters ``ould&#39;&#39; in the set of lines</p>\n\n<p>&nbsp;&nbsp; Ah Love! could you and I with Fate conspire<br />\n&nbsp;&nbsp; To grasp this sorry Scheme of Things entire,<br />\n&nbsp;&nbsp; Would not we shatter it to bits -- and then<br />\n&nbsp;&nbsp; Re-mould it nearer to the Heart&#39;s Desire!</p>\n\n<p>will produce the output&nbsp;</p>\n\n<p>&nbsp;&nbsp; Ah Love! could you and I with Fate conspire<br />\n&nbsp;&nbsp; Would not we shatter it to bits -- and then<br />\n&nbsp;&nbsp; Re-mould it nearer to the Heart&#39;s Desire!</p>\n\n<p>The job falls neatly into three pieces:</p>\n\n<p>while (there&#39;s another line)<br />\n&nbsp;&nbsp;&nbsp; if (the line contains the pattern)<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; print it</p>\n\n<p>Although it&#39;s certainly possible to put the code for all of this in main, a better way is to use the structure to advantage by making each part a separate function. Three small pieces are better to deal with than one big one, because irrelevant details can be buried in the functions, and the chance of unwanted interactions is minimized. And the pieces may even be useful in other programs.</p>\n\n<p>``While there&#39;s another line&#39;&#39; is getline, a function that we wrote in Chapter 1, and ``print it&#39;&#39; is printf, which someone has already provided for us. This means we need only write a routine to decide whether the line contains an occurrence of the pattern. We can solve that problem by writing a function strindex(s,t) that returns the position or index in the string s where the string t begins, or -1 if s does not contain t. Because C arrays begin at position zero, indexes will be zero or positive, and so a negative value like -1 is convenient for signaling failure. When we later need more sophisticated pattern matching, we only have to replace strindex; the rest of the code can remain the same. (The standard library provides a function strstr that is similar to strindex, except that it returns a pointer instead of an index.)&nbsp;</p>\n\n<p>#include &lt;stdio.h&gt;<br />\n&nbsp;&nbsp; #define MAXLINE 1000 /* maximum input line length */</p>\n\n<p>&nbsp;&nbsp; int getline(char line[], int max)<br />\n&nbsp;&nbsp; int strindex(char source[], char searchfor[]);</p>\n\n<p>&nbsp;&nbsp; char pattern[] = &quot;ould&quot;;&nbsp;&nbsp; /* pattern to search for */</p>\n\n<p>&nbsp;&nbsp; /* find all lines matching pattern */<br />\n&nbsp;&nbsp; main()<br />\n&nbsp;&nbsp; {<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char line[MAXLINE];<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int found = 0;</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while (getline(line, MAXLINE) &gt; 0)<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (strindex(line, pattern) &gt;= 0) {<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf(&quot;%s&quot;, line);<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; found++;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return found;<br />\n&nbsp;&nbsp; }</p>\n\n<p>&nbsp;&nbsp; /* getline:&nbsp; get line into s, return length */<br />\n&nbsp;&nbsp; int getline(char s[], int lim)<br />\n&nbsp;&nbsp; {<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int c, i;<br />\n&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; i = 0;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while (--lim &gt; 0 &amp;&amp; (c=getchar()) != EOF &amp;&amp; c != &#39;\n&#39;)<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; s[i++] = c;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (c == &#39;\n&#39;)<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; s[i++] = c;</p>\n\n<p>s[i] = &#39;', '', 'cc');

-- --------------------------------------------------------

--
-- Table structure for table `elanguage`
--

CREATE TABLE IF NOT EXISTS `elanguage` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `other_info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `elanguage`
--

INSERT INTO `elanguage` (`id`, `name`, `email`, `image`, `other_info`) VALUES
(10, 'vineeta jadon', 'vigmail.com', 'uploads/photo_1426160649_small_temp.png.pagespeed.ce.QaYv2_ikC3.png', 'linux'),
(14, 'vini', 'vicky@gmail.com', 'uploads/1430660885l.png', 'linux'),
(15, 'vini', 'vicky@gmail.com', 'uploads/1430662307photo_1426160885_small_temp.png', 'c++');

-- --------------------------------------------------------

--
-- Table structure for table `euser`
--

CREATE TABLE IF NOT EXISTS `euser` (
  `user_id` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `cpass` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `phone` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `euser`
--

INSERT INTO `euser` (`user_id`, `pass`, `cpass`, `username`, `address`, `city`, `phone`, `email`) VALUES
('', '', '', '', '', '', 0, ''),
('golu', '2527', '2527', 'golu', '19/162 jhalawar', 'jhalawar', 2147483647, 'v@gmail.com'),
('hg', '123', '123', 'vhgv', 'bjbj', 'bjbj', 987456123, 'pk12@gmail.com'),
('pk', '12345', '12345', 'pratima', 'dhanbad', 'jharkhand', 2147483647, 'pk12@gmail.com'),
('priya', '123456', '123456', 'priya', 'hmh', 'hmh', 123987456, 'po@gmil.com'),
('rinku', 'rinku', 'rinku', 'rinku', 'rinku', 'rinku', 0, 'rinku@rinku.com'),
('shradha', 'shradha', 'shradha', 'shradhaa', 'shradh', 'shradha', 2147483647, 's123@gmail.com'),
('shreshtha', 'shekhawat', 'shekhawat', 'shreshtha', 'malviya nagar jaipur', 'jaipur', 1234567890, 's123@gmail.com'),
('vins', '2527', '2527', 'vin', 'malviya nagr jaipur', 'jaipur', 2147483647, 'v@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `languase1`
--

CREATE TABLE IF NOT EXISTS `languase1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  `languase` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `languase1`
--

INSERT INTO `languase1` (`id`, `image`, `languase`) VALUES
(1, 'uploads/c.png', 'c'),
(2, 'uploads/cc.png', 'c++'),
(27, 'uploads/photo_1426160951_small_temp.png.pagespeed.ce.M0bzNi4jcX.png', 'java');

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--

CREATE TABLE IF NOT EXISTS `mst_admin` (
  `loginid` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`loginid`, `pass`) VALUES
('mca', 'mca'),
('pgdca', 'pgdca');

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--

CREATE TABLE IF NOT EXISTS `mst_question` (
  `que_id` int(5) NOT NULL AUTO_INCREMENT,
  `test_id` int(5) DEFAULT NULL,
  `que_desc` varchar(150) DEFAULT NULL,
  `ans1` varchar(75) DEFAULT NULL,
  `ans2` varchar(75) DEFAULT NULL,
  `ans3` varchar(75) DEFAULT NULL,
  `ans4` varchar(75) DEFAULT NULL,
  `true_ans` int(1) DEFAULT NULL,
  PRIMARY KEY (`que_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=153 ;

--
-- Dumping data for table `mst_question`
--

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(76, 12, 'to move the cursor end of the which key is used', 'end', 'home', 'pgup', 'pgdn', 1),
(77, 12, 'the touchable part of computer is called as', 'hardware', 'software', 'programe', 'none', 1),
(78, 12, 'if caps lock key is on then', 'small letters are printed', 'the lowercase letter are printed', 'capital letters print', 'none of the above', 3),
(79, 12, '________are equivalent to 1 mb', '1022 kb', '1024 kb', '1024 byte', '1000 gb', 2),
(80, 13, 'the combination key for command in ms-word is', 'ctrl+f', 'ctrl+f3', 'ctrl+s', 'none', 1),
(81, 13, 'while editing document in ms-word the colour of the selected text can be changed by', 'format font', 'format text', 'format paragraph', 'none of the above', 1),
(82, 13, 'which keystroke is used to move end of document quickly', 'end', 'pgdn', 'ctrl+pgdn', 'ctrl+end', 4),
(83, 13, 'from the following option does not present in the picture option of insert menu', 'auto shpe', 'clip art', 'from file', 'object', 4),
(84, 13, 'in ms-word to appear full form abberiatin automatically we can use', 'autotext', 'auto correct', 'comments', 'drop cap', 1),
(85, 13, 'to appear the same information at the top or bottom of each page we use', 'headers & footer', 'hyperlink', 'field', 'none', 1),
(86, 13, 'which option is not present under tool menu', 'mail merge', 'auto text', 'language', 'drop cap', 4),
(87, 13, 'to convert "the computer" in to "THE COMPUTER" which option is used', 'title case', 'toggle case', 'upper case', 'all caps', 3),
(88, 13, 'which is the shortcut key to replace the text', 'ctrl+r', 'ctrl+h', 'ctrl+d', 'ctrl+e', 2),
(89, 13, 'which sortcut key is used to redo action?', 'ctrl+r', 'ctrl+y', 'ctrl+e', 'ctrl+u', 2),
(90, 13, 'to change the size of document page using', 'file properties', 'file page setup', 'tools option', 'format paragraph', 2),
(91, 13, 'to set the shading for the paragrph in ms-word chose', 'insert shading', 'format border & shading', 'view shading', 'all the above', 2),
(92, 13, 'bold,italic,underline are the part of_________toolbar', 'formating', 'standerd', 'drawing', 'central', 1),
(93, 13, 'the list in bottom of the file menu', 'display last foure file you use', 'display all opened files', 'allow to close file', 'none of the above', 1),
(94, 13, 'the date and time command', 'inaert the date & time you specify', 'insert current system date & time', 'inmsert last updated date & time', 'none of the above', 2),
(95, 13, 'if you want to copy a selection of text,which button do you click?', 'move', 'copy', 'duplicate', 'cut', 2),
(96, 13, 'which of the follwing is not option of edit menu', 'cut', 'copy', 'page setup', 'paste', 3),
(97, 13, 'alignment buttons are available on______________', 'ststus bar', 'for mating toolbar', 'standerd toolbar', 'none of these', 2),
(98, 13, 'when microsoft word gets loaded the opening screen display a document named', 'document1', 'document', 'doc1', 'no document name', 1),
(99, 13, 'the document can be zoomed maximum up to', '100%', '150%', '200%', '500%', 4),
(100, 13, 'to delete the selected sentence we can press the following press', 'del', 'backspace', 'both a&b', 'none of the above', 3),
(101, 13, 'to start a new line', 'enter', 'shift+enter', 'ctrl+enter', 'none of these', 1),
(102, 13, 'Spelling check is not possible in ___________________', 'Normal View', 'Out Line View', 'Print Lay Out View', 'None of these', 4),
(103, 13, 'Word Text can be made italic by____________________', 'Ctrl+I', 'Ctrl+B', 'Ctrl+U', 'None of the above', 1),
(104, 13, 'By Default Word Format your text as', '14 Point Times New Roman', '12 Point Times New Roman', '11 point Times New Roman', 'None of the above', 2),
(106, 14, 'The Gateway of India is ?', 'Delhi', 'Kolkatta', 'Mumbai', 'Jammu', 3),
(107, 14, 'Which city is known as Pink City?', 'Hyderabad', 'Jaipur', 'Bangalore', 'Patna', 2),
(108, 14, 'Which is the city of Golden Temple?', 'Amritsar', 'Banaras', 'Chennai', 'Delhi', 1),
(109, 14, 'The Land of Lilies ?', 'Finland', 'Japan', 'USA', 'Canada', 4),
(110, 14, 'The symbol dove signifies ?', 'Strength', 'Dignity', 'Peace', 'Distress', 3),
(113, 14, 'How many players are there on each side in a baseball match', '7', '9', '5', '11', 2),
(114, 14, 'Which one of seven wonders of the world is in India', 'Leaning Tower', 'Eiffel Tower', 'TajMahal', 'Colosseum', 3),
(115, 14, 'Who started the ancient Olympic Games', 'the Greeks', 'the Egyptians', 'the Romans', 'the Aryans', 1),
(116, 14, 'The first Indian in Space was?', 'Vishnu Bhagvat', 'Rakesh Sharma', 'Kalpana Chawla', 'Juhi Chawla', 2),
(117, 14, 'After how many years gap is the Cricket World Cup held?', '3', '4', '5', '6', 2),
(119, 14, 'The slogan Piyo Sar Utha ke is associated with which company?', 'Pepsi', 'Mirinda', 'Thums Up', 'Coca-Cola', 4),
(120, 14, 'Which of these is a renewable source of energy?', 'sunlight', 'petrol', 'coal', 'diesel', 1),
(121, 14, 'Biogas consists mainly of ?', 'carbon monoxide', 'methane', 'chlorine', 'nitrogen', 2),
(122, 14, 'Deafness can be caused by ?', 'water pollution', 'air pollution', 'noise pollution', 'soil pollution', 3),
(123, 14, 'Which animal is the logo of WWF?', 'bear', 'giant panda', 'eagle', 'tiger', 2),
(124, 14, 'Acoustics deals with ?', 'sound', 'light', 'insects', 'air', 1),
(125, 14, 'Fatehpur Sikri was built by ?', 'Aurungzeb', 'Akbar', 'Shah Jahan', 'Jahengir', 2),
(126, 14, 'Which is the largest ocean in the world?', 'Atlantic', 'Pacific', 'Indian', 'Arctic', 2),
(127, 14, 'The sea-route to India was discovered in?', '1598', '1558', '1498', '1458', 3),
(128, 14, 'When is U.N. Day celebrated?', '24 Oct', '23 Oct', '24 Sep', '23 Nov', 1),
(129, 14, 'Which of the following countries celebrates Christmas festival in the summer season?', 'Canada', 'Britian', 'Australia', 'Zimbabwe', 3),
(131, 15, 'How do u write ', 'echo ', 'document.write(', '', 'printf(', 1),
(152, 27, 'hiii', '1', '2', '3', '4', 3),
(130, 15, 'what does PHP stand for?', 'personal hypertext  processor', 'private home page', 'personal home page', 'PHP:Hypertext preprocessor', 4),
(1, 15, 'All variable in PHP start with which symbol?', '!', '$', '&', '#', 2),
(2, 15, 'what is the correct way to end a PHP  statement?', '</php>', '.', ';', 'new line', 3),
(3, 15, 'The PHP syntax is most similar to?', 'VB script', 'Java script', 'Perl ', 'c#', 2),
(4, 15, 'how do u get information from a form that is submitted using the "get" method?', 'Request.Form;', '$_GET[ ];', 'Request.QueryString;', '$_POST[ ];', 2),
(8, 16, 'What does SQL stand for?', 'Structured Question Language', 'Strong Question Language', 'Structured Query Language', 'String Query Language', 3),
(5, 15, 'What is the correct way to create a function in PHP?', 'create myFunction()', 'function myFunction()', 'new_function myFunction()', 'load_function myFunction()', 2),
(6, 15, 'What is the correct way to add 1 to the $count variable?', 'count++;', '$count =+1', '++count', '$count++;', 4),
(7, 15, 'Which one of these variables has an illegal name?', '$my_Var', '$my-Var', '$myVar', '$my&Var', 3),
(134, 18, 'Framwork Use by C#?', '.net', 'Megenta', 'Cake Php', 'C++', 0),
(135, 18, 'C# invented by..', 'Rakhi', 'Neels', 'HvR', 'Vini', 0),
(136, 19, 'JavaScript is developed by..?', 'Rakhi', 'Neels', 'HvR', 'Vini', 0),
(137, 19, 'JavaScript is written by..?', 'Rakhi', 'Neels', 'HvR', 'Vini', 0),
(139, 20, 'what is joomla...?', 'neels', 'raks', 'cms', 'jooms', 3),
(140, 21, 'what is php ?', 'language', 'technology', 'cms', 'framework', 1),
(141, 21, 'php stand for..?', 'Pre Processor', 'Hyper Pre Processor', 'Pre Processor Hyper Text', 'Hypertext PreProcessor', 4),
(142, 18, 'dfhfdggsdg', 'sdg', 'sdg', 'sdg', 'ggsg', 4),
(143, 23, 'what is java..?', 'language', 'cms', 'framwork', 'technology', 1),
(144, 23, 'java is an..?', 'technolgy', 'framwork', 'cms', 'language', 4),
(149, 25, 'r stand for', 'deeksha', 'neels', 'hsr', 'rakhi', 4);

-- --------------------------------------------------------

--
-- Table structure for table `mst_result`
--

CREATE TABLE IF NOT EXISTS `mst_result` (
  `login` varchar(20) DEFAULT NULL,
  `test_id` int(5) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_result`
--

INSERT INTO `mst_result` (`login`, `test_id`, `test_date`, `score`) VALUES
('raj', 8, '0000-00-00', 3),
('raj', 9, '0000-00-00', 3),
('raj', 8, '0000-00-00', 1),
('ashish', 10, '0000-00-00', 3),
('ashish', 9, '0000-00-00', 2),
('ashish', 10, '0000-00-00', 0),
('raj', 8, '0000-00-00', 0),
('raj', 9, '0000-00-00', 1),
('raj', 11, '0000-00-00', 5),
('raj', 11, '0000-00-00', 6),
('ashish', 11, '0000-00-00', 12),
('raj', 12, '0000-00-00', 13),
('raj', 14, '0000-00-00', 8),
('raj', 8, '0000-00-00', 1),
('raj', 12, '0000-00-00', 7),
('amit', 8, '0000-00-00', 1),
('amit', 8, '0000-00-00', 1),
('amit', 8, '0000-00-00', 2),
('amit', 8, '0000-00-00', 3),
('amit', 15, '0000-00-00', 0),
('amit', 15, '0000-00-00', 1),
('amit', 15, '0000-00-00', 0),
('amit', 15, '0000-00-00', 1),
('amit', 15, '0000-00-00', 3),
('amit', 15, '0000-00-00', 5),
('amit', 15, '0000-00-00', 5),
('amit', 15, '0000-00-00', 5),
('amit', 15, '0000-00-00', 5),
('amit', 15, '0000-00-00', 11),
('amit', 15, '0000-00-00', 10),
('amit', 15, '0000-00-00', 9),
('amit', 15, '0000-00-00', 8),
('', 16, '0000-00-00', 0),
('amit', 16, '0000-00-00', 1),
('amit', 12, '0000-00-00', 9),
('', 12, '0000-00-00', 2),
('amit', 16, '0000-00-00', 1),
('amit', 8, '0000-00-00', 3),
('amit', 8, '0000-00-00', 1),
('neels', 18, '0000-00-00', 0),
('Rakhi', 19, '0000-00-00', 0),
('', 20, '0000-00-00', 2),
('neels', 20, '0000-00-00', 2),
('Hamendra', 20, '0000-00-00', 2),
('Hamendra', 20, '0000-00-00', 2),
('Hamendra', 16, '0000-00-00', 1),
('Hamendra', 14, '0000-00-00', 11),
('Hamendra', 16, '0000-00-00', 1),
('priya', 19, '0000-00-00', 0),
('hsr', 18, '0000-00-00', 0),
('hsr', 20, '0000-00-00', 2),
('hsr', 20, '0000-00-00', 2),
('hsr', 21, '0000-00-00', 2),
('hsr', 21, '0000-00-00', 2),
('priya', 20, '0000-00-00', 2),
('hsr', 21, '0000-00-00', 2),
('hsr', 21, '0000-00-00', 2),
('hsr', 21, '0000-00-00', 2),
('hsr', 21, '0000-00-00', 2),
('hsr', 21, '0000-00-00', 2),
('hsr', 20, '0000-00-00', 2),
('hsr', 20, '0000-00-00', 2),
('hsr', 21, '0000-00-00', 2),
('hsr', 21, '0000-00-00', 2),
('hsr', 20, '0000-00-00', 2),
('hsr', 21, '0000-00-00', 2),
('hsr', 20, '0000-00-00', 2),
('hsr', 20, '0000-00-00', 1),
('hsr', 21, '0000-00-00', 2),
('hsr', 21, '0000-00-00', 2),
('hsr', 21, '0000-00-00', 2),
('hsr', 21, '0000-00-00', 2),
('hsr', 19, '0000-00-00', 0),
('hsr', 19, '0000-00-00', 0),
('hsr', 21, '0000-00-00', 2),
('hsr', 21, '0000-00-00', 2),
('hsr', 19, '0000-00-00', 0),
('hsr', 19, '0000-00-00', 0),
('hsr', 20, '0000-00-00', 2),
('hsr', 21, '0000-00-00', 2),
('hsr', 21, '0000-00-00', 2),
('hsr', 20, '0000-00-00', 2),
('hsr', 19, '0000-00-00', 0),
('hsr', 20, '0000-00-00', 2),
('hsr', 20, '0000-00-00', 2),
('hsr', 20, '0000-00-00', 1),
('hsr', 21, '0000-00-00', 0),
('hsr', 23, '0000-00-00', 2),
('sohan', 23, '0000-00-00', 2),
('sohan', 23, '0000-00-00', 3),
('sohan', 20, '2015-04-23', 1),
('hvr', 9, '2015-04-24', 1),
('hvr', 25, '2015-04-24', 1),
('hvr', 8, '2015-04-29', 0),
('hvr', 20, '2015-04-30', 1),
('hvr', 15, '2015-05-02', 3),
('hvr', 21, '2015-05-03', 1),
('hvr', 20, '2015-05-04', 0),
('hvr', 19, '2015-05-04', 0),
('hvr', 19, '2015-05-04', 0),
('hvr', 27, '2015-05-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject`
--

CREATE TABLE IF NOT EXISTS `mst_subject` (
  `sub_id` int(5) NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `mst_subject`
--

INSERT INTO `mst_subject` (`sub_id`, `sub_name`) VALUES
(1, 'VB6.0'),
(5, 'Computer Fundamental'),
(7, 'C Language'),
(8, 'Ms Office'),
(9, 'General Knowledge'),
(10, 'php'),
(11, 'SQL'),
(12, 'java'),
(14, 'C#'),
(22, 'mysub'),
(23, 'codex');

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--

CREATE TABLE IF NOT EXISTS `mst_test` (
  `test_id` int(5) NOT NULL AUTO_INCREMENT,
  `sub_id` int(5) DEFAULT NULL,
  `test_name` varchar(30) DEFAULT NULL,
  `total_que` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `mst_test`
--

INSERT INTO `mst_test` (`test_id`, `sub_id`, `test_name`, `total_que`) VALUES
(8, 1, 'VB Basic Test', '3'),
(9, 1, 'Essentials of VB', '5'),
(10, 1, 'Creating User Services', '5'),
(11, 7, 'Objactive Test', '20'),
(12, 5, 'General Question', '20'),
(13, 8, 'Ms Office Question', '25'),
(14, 9, 'Knowledge Question', '22'),
(15, 10, 'php basic', '20'),
(16, 11, 'basic SQL', '10'),
(17, 12, 'basic java', '10'),
(18, 14, 'Advanced Test', '2'),
(19, 15, 'test of js', '2'),
(20, 16, 'jooms test', '2'),
(21, 17, 'core php test', '2'),
(22, 7, 'dafas', '2'),
(23, 19, 'test of core java', '2'),
(24, 21, 'myNEWTEST', '30'),
(25, 22, 'mytest', '4'),
(26, 23, 'codextest', '4'),
(27, 18, 'test', '2');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE IF NOT EXISTS `mst_user` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`user_id`, `login`, `pass`, `username`, `address`, `city`, `phone`, `email`) VALUES
(1, 'raj', 'raj', 'Rajen', 'limbdi', 'limbdi', 9999, 'raj@yahoo.com'),
(12, 'ashish', 'shah', 'ashish', 'laskdjf', 'S''nagar', 228585, 'ashish@yahoo.com'),
(14, 'Dhaval123', 'a', 'a', 'a', 'a', 0, 'dhaval@yahoo.com'),
(15, 'amit', 'a123456', 'amit', 'xyz', 'snagar', 2147483647, 'amitrojasara@gmail.com'),
(16, 'sachin', 'welcome', 'sachin', 'kjjskjsdjsdjsdjakskjdskdjskjd', 'mumbai', 2147483647, 'sachin@gmail.com'),
(17, 'Neels', '123456789', 'Neelam', '123 Jaipur', 'jaipur', 987654321, 'neels@test.com'),
(18, 'Rakhi', '987654321', 'Rakhi', '123 Jaipur', 'jaipur', 987654321, 'rakhi@test.com'),
(19, 'Hamendra', '123456789', 'Hamendra', '2527 Jagatpura jaipur', 'Jaipur', 2147483647, 'hamendra@test.com'),
(20, 'hvr', 'hvr', 'hvr', 'hvr', 'hvr', 2147483647, 'hvr@gmail.com'),
(21, 'shyam', 'shyam', 'shyam', 'shyam ', 'shyam', 0, 'shyam@shyam.com'),
(22, 'sohan', 'sohan', 'sohan', 'sohan', 'sohan', 2147483647, 'sohan@sohan.com'),
(23, 'deeksha', 'deeksha', 'deeksha', 'deeksha', 'deeksha', 0, 'deeksha'),
(24, 'mamma', 'mamma', 'mamma', 'mamma', 'mamma', 2147483647, 'mamma@mamma.com');

-- --------------------------------------------------------

--
-- Table structure for table `mst_useranswer`
--

CREATE TABLE IF NOT EXISTS `mst_useranswer` (
  `sess_id` varchar(80) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_des` varchar(200) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_useranswer`
--

INSERT INTO `mst_useranswer` (`sess_id`, `test_id`, `que_des`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `your_ans`) VALUES
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Which city is known as The City of Palaces?', 'Kolkatta', 'Jerusalem', 'Mumbai', 'Udaipur', 1, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'The Gateway of India is ?', 'Delhi', 'Kolkatta', 'Mumbai', 'Jammu', 3, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Which city is known as Pink City?', 'Hyderabad', 'Jaipur', 'Bangalore', 'Patna', 2, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Which is the city of Golden Temple?', 'Amritsar', 'Banaras', 'Chennai', 'Delhi', 1, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'The Land of Lilies ?', 'Finland', 'Japan', 'USA', 'Canada', 4, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'The symbol dove signifies ?', 'Strength', 'Dignity', 'Peace', 'Distress', 3, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'How many players are there on each side in a baseball match', '7', '9', '5', '11', 2, 2),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Which one of seven wonders of the world is in India', 'Leaning Tower', 'Eiffel Tower', 'TajMahal', 'Colosseum', 3, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Who started the ancient Olympic Games', 'the Greeks', 'the Egyptians', 'the Romans', 'the Aryans', 1, 2),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'The first Indian in Space was?', 'Vishnu Bhagvat', 'Rakesh Sharma', 'Kalpana Chawla', 'Juhi Chawla', 2, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'After how many years gap is the Cricket World Cup held?', '3', '4', '5', '6', 2, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'The slogan Piyo Sar Utha ke is associated with which company?', 'Pepsi', 'Mirinda', 'Thums Up', 'Coca-Cola', 4, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Which of these is a renewable source of energy?', 'sunlight', 'petrol', 'coal', 'diesel', 1, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Biogas consists mainly of ?', 'carbon monoxide', 'methane', 'chlorine', 'nitrogen', 2, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Deafness can be caused by ?', 'water pollution', 'air pollution', 'noise pollution', 'soil pollution', 3, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Which animal is the logo of WWF?', 'bear', 'giant panda', 'eagle', 'tiger', 2, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Acoustics deals with ?', 'sound', 'light', 'insects', 'air', 1, 1),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Fatehpur Sikri was built by ?', 'Aurungzeb', 'Akbar', 'Shah Jahan', 'Jahengir', 2, 2),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Which is the largest ocean in the world?', 'Atlantic', 'Pacific', 'Indian', 'Arctic', 2, 2),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'The sea-route to India was discovered in?', '1598', '1558', '1498', '1458', 3, 3),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'When is U.N. Day celebrated?', '24 Oct', '23 Oct', '24 Sep', '23 Nov', 1, 2),
('a732eca2e5a08f17a4cfd53fe0ba1dfa', 14, 'Which of the following countries celebrates Christmas festival in the summer season?', 'Canada', 'Britian', 'Australia', 'Zimbabwe', 3, 1),
('2ef2bbec5a7a11bd9f39428d51474cae', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 3),
('2ef2bbec5a7a11bd9f39428d51474cae', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 2),
('51518d1da75a6898608a9f2ffacd5ab8', 14, 'Which city is known as The City of Palaces?', 'Kolkatta', 'Jerusalem', 'Mumbai', 'Udaipur', 1, 2),
('51518d1da75a6898608a9f2ffacd5ab8', 14, 'The Gateway of India is ?', 'Delhi', 'Kolkatta', 'Mumbai', 'Jammu', 3, 2),
('51518d1da75a6898608a9f2ffacd5ab8', 14, 'Which city is known as Pink City?', 'Hyderabad', 'Jaipur', 'Bangalore', 'Patna', 2, 1),
('51518d1da75a6898608a9f2ffacd5ab8', 14, 'Which is the city of Golden Temple?', 'Amritsar', 'Banaras', 'Chennai', 'Delhi', 1, 3),
('51518d1da75a6898608a9f2ffacd5ab8', 14, 'The Land of Lilies ?', 'Finland', 'Japan', 'USA', 'Canada', 4, 3),
('51518d1da75a6898608a9f2ffacd5ab8', 14, 'The symbol dove signifies ?', 'Strength', 'Dignity', 'Peace', 'Distress', 3, 1),
('51518d1da75a6898608a9f2ffacd5ab8', 14, 'How many players are there on each side in a baseball match', '7', '9', '5', '11', 2, 3),
('a5fb8d913086cc708d27f5c6fe77685a', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 2),
('a5fb8d913086cc708d27f5c6fe77685a', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 4),
('a5fb8d913086cc708d27f5c6fe77685a', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 2),
('d9b2f430a181d2f8f84528adbbfe6da7', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 2),
('d9b2f430a181d2f8f84528adbbfe6da7', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 2),
('d9b2f430a181d2f8f84528adbbfe6da7', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 2),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'if caps lock key is on then', 'small letters are printed', 'the lowercase letter are printed', 'capital letters print', 'none of the above', 3, 3),
('0f38cfc0215a52cb3897e828dc3f450d', 12, '________are equivalent to 1 mb', '1022 kb', '1024 kb', '1024 byte', '1000 gb', 2, 2),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'to move the cursor beginning of the which key is used', 'end', 'home', 'pgup', 'pgdn', 2, 2),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'to move the cursor end of the which key is used', 'end', 'home', 'pgup', 'pgdn', 1, 2),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'the touchable part of computer is called as', 'hardware', 'software', 'programe', 'none', 1, 3),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'to enter the number a special key slot is given on the keyboard which is', 'alphanumeric number', 'numeric key pad', 'function key', 'none of the above', 2, 1),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'on numeric key pad the keyu present are', '0 to 9 numbers', '+/*characters', 'arrow key', 'all of the above', 4, 3),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'the delete the character right side of the cursor which key is used', 'inst', 'del', 'backspace', 'home', 2, 2),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'to deleter the character towards left side is', 'backspace', 'del', 'inst', 'home', 1, 4),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'in keyboard the function of which type keys change according the software', 'alphanumeric key', 'numeric key pad', 'function key', 'none of the above', 2, 2),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'all arithmetic and logical processing is done in', 'ALU', 'CU', 'CPU', 'none of the above', 3, 3),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'which of the following is input device', 'speaker', 'printer', 'plotter', 'scanner', 4, 4),
('0f38cfc0215a52cb3897e828dc3f450d', 12, '________is colled the brain of computer', 'mouse', 'keyboard', 'cpu', 'memory', 3, 3),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'the development of first generation computer is', '1955-1965', '1965-1975', '1945-1954', 'none', 3, 1),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'mouse is the type of device', 'input', 'pointing', 'scanning', 'none of the above', 2, 1),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'keybord is the type of device', 'input', 'pointing', 'output', 'sound', 1, 2),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'floppy disk is the type of memory', 'magnatic & secondarymain memory', 'main memory', 'o primary', 'none of the above', 1, 3),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'Personal Computer are the type of computer', 'super computer', 'mini computer', 'micro computer', 'mainframe computer', 3, 3),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'RAM Stands for', 'Random Access Memory', 'Random accelerated Memory', 'Random Access Machenism', 'Random Accurace Mantan', 1, 3),
('0f38cfc0215a52cb3897e828dc3f450d', 12, 'PC Stands for', 'pocket computer', 'personal computer', 'phisycal computer', 'personal card', 2, 4),
('en11bune3oehfeejqch1mg2r55', 20, 'joomla is what..?', 'cms', 'php', 'hsr', 'vins', 1, 1),
('en11bune3oehfeejqch1mg2r55', 20, 'what is joomla...?', 'neels', 'raks', 'cms', 'jooms', 3, 3),
('en11bune3oehfeejqch1mg2r55', 18, 'Framwork Use by C#?', '.net', 'Megenta', 'Cake Php', 'C++', 0, 1),
('en11bune3oehfeejqch1mg2r55', 20, 'what is joomla...?', 'neels', 'raks', 'cms', 'jooms', 3, 3),
('en11bune3oehfeejqch1mg2r55', 20, 'joomla is what..?', 'cms', 'php', 'hsr', 'vins', 1, 1),
('en11bune3oehfeejqch1mg2r55', 18, 'C# invented by..', 'Rakhi', 'Neels', 'HvR', 'Vini', 0, 1),
('fshat0immh0bvmu2m296fdp7e3', 13, 'to convert "the computer" in to "THE COMPUTER" which option is used', 'title case', 'toggle case', 'upper case', 'all caps', 3, 1),
('fshat0immh0bvmu2m296fdp7e3', 13, 'which of the follwing is not option of edit menu', 'cut', 'copy', 'page setup', 'paste', 3, 3),
('fshat0immh0bvmu2m296fdp7e3', 13, 'when microsoft word gets loaded the opening screen display a document named', 'document1', 'document', 'doc1', 'no document name', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl`
--

CREATE TABLE IF NOT EXISTS `tbl` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `lyk` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl`
--

INSERT INTO `tbl` (`id`, `lyk`) VALUES
(1, 191);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `topic_id` int(5) NOT NULL AUTO_INCREMENT,
  `sub_id` int(5) NOT NULL,
  `header` text NOT NULL,
  `text1` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `other_info` text NOT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topic_id`, `sub_id`, `header`, `text1`, `image`, `other_info`) VALUES
(11, 1, 'Introduction', '<p>Let us begin with a quick introduction in C. Our aim is to show the essential elements of the language in real programs, but without getting bogged down in details, rules, and exceptions. At this point, we are not trying to be complete or even precise (save that the examples are meant to be correct). We want to get you as quickly as possible to the point where you can write useful programs, and to do that we have to concentrate on the basics: variables and constants, arithmetic, control flow, functions, and the rudiments of input and output. We are intentionally leaving out of this chapter features of C that are important for writing bigger programs. These include pointers, structures, most of C&#39;s rich set of operators, several controlflow statements, and the standard library. This approach and its drawbacks. Most notable is that the complete story on any particular feature is not found here, and the tutorial, by being brief, may also be misleading. And because the examples do not use the full power of C, they are not as concise and elegant as they might be. We have tried to minimize these effects, but be warned. Another drawback is that later chapters will necessarily repeat some of this chapter. We hope that the repetition will help you more than it annoys. In any case, experienced programmers should be able to extrapolate from the material in this chapter to their own programming needs. Beginners should supplement it by writing small, similar programs of their own. Both groups can use it as a framework on which to hang the more detailed descriptions .</p><br>\r\n<h2>Getting Started</h2>\r\n<br>\r\n<p>The only way to learn a new programming language is by writing programs in it. The first<br />\r\nprogram to write is the same for all languages:</p>\r\n\r\n<p><em>Print the words</em></p>\r\n\r\n<p>&nbsp;hello, world</p>\r\n<p>This is a big hurdle; to leap over it you have to be able to create the program text somewhere,\r\ncompile it successfully, load it, run it, and find out where your output went. With these\r\nmechanical details mastered, everything else is comparatively easy.  </p>\r\n<p>In C, the program to print ``\r\nhello, world'''' is  </p>\r\n<p>#include <stdio.h></p>\r\n<p>main()</p>\r\n<p>{</p>\r\n     <p>printf("hello, world\\n");</p>\r\n   <p>}</p>\r\n<p>Just how to run this program depends on the system you are using. As a specific example, on \r\nthe UNIX operating system you must create the program in a file whose name ends in ``.c'''',\r\nsuch as\r\nhello.c, then compile it with the command  </p>\r\n<p>cc hello.c</p>\r\n<p>If you haven''t botched anything, such as omitting a character or misspelling something, the \r\ncompilation will proceed silently, and make an executable file called a.out. If you run a.out\r\nby typing the command </p>\r\n<p>a.out </p>\r\n<p>it will print</p>  \r\n\r\n  <p> hello, world </p>\r\n<p>On other systems, the rules will be different; check with a local expert.  </p>\r\n<p>Now, for some explanations about the program itself. A C program, whatever its size, consists\r\nof functions and variables. A function contains statements that specify the computing\r\noperations to be done, and variables store values used during the computation. C functions are\r\nlike the subroutines and functions in Fortran or the procedures and functions of Pascal. Our \r\nexample is a function named main. Normally you are at liberty to give functions whatever\r\nnames you like, but ``\r\nmain'''' is special - your program begins executing at the beginning of\r\nmain. This means that every program must have a main somewhere.  </p>\r\n<br><h1>Variables and Arithmetic Expressions</h1><br>\r\n<p>The next program uses the formula oC=(5/9)(oF-32) to print the following table of Fahrenheit temperatures and their centigrade or Celsius equivalents:&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp; 1&nbsp;&nbsp;&nbsp; -17<br />\r\n&nbsp;&nbsp; 20&nbsp;&nbsp; -6<br />\r\n&nbsp;&nbsp; 40&nbsp;&nbsp; 4<br />\r\n&nbsp;&nbsp; 60&nbsp;&nbsp; 15<br />\r\n&nbsp;&nbsp; 80&nbsp;&nbsp; 26<br />\r\n&nbsp;&nbsp; 100&nbsp; 37<br />\r\n&nbsp;&nbsp; 120&nbsp; 48<br />\r\n&nbsp;&nbsp; 140&nbsp; 60<br />\r\n&nbsp;&nbsp; 160&nbsp; 71<br />\r\n&nbsp;&nbsp; 180&nbsp; 82<br />\r\n&nbsp;&nbsp; 200&nbsp; 93<br />\r\n&nbsp;&nbsp; 220&nbsp; 104<br />\r\n&nbsp;&nbsp; 240&nbsp; 115<br />\r\n&nbsp;&nbsp; 260&nbsp; 126<br />\r\n&nbsp;&nbsp; 280&nbsp; 137<br />\r\n&nbsp;&nbsp; 300&nbsp; 148</p>\r\n\r\n<p>The program itself still consists of the definition of a single function named main. It is longer than the one that printed ``hello, world&#39;&#39;, but not complicated. It introduces several new ideas, including comments, declarations, variables, arithmetic expressions, loops , and<br />\r\nformatted output.&nbsp;</p>\r\n\r\n<p>#include &lt;stdio.h&gt;</p>\r\n\r\n<p>&nbsp;&nbsp; /* print Fahrenheit-Celsius table<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for fahr = 0, 20, ..., 300 */<br />\r\n&nbsp;&nbsp; main()<br />\r\n&nbsp;&nbsp; {<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; int fahr, celsius;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; int lower, upper, step;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; lower = 0;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* lower limit of temperature scale */<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; upper = 300;&nbsp;&nbsp;&nbsp; /* upper limit */<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; step = 20;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* step size */</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; fahr = lower;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; while (fahr &lt;= upper) {<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; celsius = 5 * (fahr-32) / 9;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf(&quot;%d	%d\r\n&quot;, fahr, celsius);<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fahr = fahr + step;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; }<br />\r\n&nbsp;&nbsp; }</p>\r\n\r\n<p>The two lines &nbsp;</p>\r\n\r\n<p>&nbsp; /* print Fahrenheit-Celsius table<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for fahr = 0, 20, ..., 300 */</p>\r\n\r\n<p>are a comment, which in this case explains briefly what the program does. Any characters between /* and */ are ignored by the compiler; they may be used freely to make a program easier to understand. Comments may appear anywhere where a blank, tab or newline can.</p>\r\n\r\n<p>In C, all variables must be declared before they are used, usually at the beginning of the function before any executable statements. A declaration announces the properties of variables; it consists of a name and a list of variables, such as</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int fahr, celsius;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int lower, upper, step;</p>\r\n\r\n<p>The type int means that the variables listed are integers; by contrast with float, which means floating point, i.e., numbers that may have a fractional part. The range of both int and float depends on the machine you are using; 16-bits ints, which lie between -32768 and +32767, are common, as are 32-bit ints. A float number is typically a 32-bit quantity, with at least six significant digits and magnitude generally</p>\r\n\r\n', 'uploads/img1.jpg', ''),
(12, 1, '<p>Name Chunnuggg</p>\r\n', '<p>DataTypebbgg</p>\r\n', '', ''),
(15, 3, '<p>hello hh</p>', '<p>hi baby</p>\r\n', '', ''),
(19, 4, '<p>javauu</p>', '<p>jjjjjjjjjjjjjjjjjjjjjuu</p>\r\n', '', ''),
(21, 16, '<p><strong>introducton</strong></p>\r\n', '<p>heloodkjaskhdasd</p>\r\n', '', ''),
(22, 17, '<p>Shreshtha Shekhawat</p>\r\n', '<p>kjdshfkdhfkjddhvkjjbv</p>\r\n', '', ''),
(23, 2, '<p><strong>introduction</strong></p>\r\n', '<p>Let us begin with a quick introduction in C. Our aim is to show the essential elements of the language in real programs, but without getting bogged down in details, rules, and exceptions. At this point, we are not trying to be complete or even precise (save that the examples are meant to be correct). We want to get you as quickly as possible to the point where you can write useful programs, and to do that we have to concentrate on the basics: variables and constants, arithmetic, control flow, functions, and the rudiments of input and output. We are intentionally leaving out of this chapter features of C that are important for writing bigger programs. These include pointers, structures, most of C&#39;s rich set of operators, several controlflow statements, and the standard library. This approach and its drawbacks. Most notable is that the complete story on any particular feature is not found here, and the tutorial, by being brief, may also be misleading. And because the examples do not use the full power of C, they are not as concise and elegant as they might be. We have tried to minimize these effects, but be warned. Another drawback is that later chapters will necessarily repeat some of this chapter. We hope that the repetition will help you more than it annoys. In any case, experienced programmers should be able to extrapolate from the material in this chapter to their own programming needs. Beginners should supplement it by writing small, similar programs of their own. Both groups can use it as a framework on which to hang the more detailed descriptions .</p>\r\n', '', ''),
(24, 2, '<p><strong>pooja</strong></p>\r\n', '<p>heloo this is website where ucan read data.....made by codexInfosolution.</p>\r\n', '', ''),
(27, 20, '<p>sss</p>\r\n', '<p>dsdnassdhaskjshdkjas</p>\r\n', '', ''),
(28, 21, '<p>introduction</p>\r\n', '<p>dkjksaahdh</p>\r\n', '', ''),
(29, 21, '<p>about</p>\r\n', '<p>ii dont know what is about</p>\r\n', '', ''),
(33, 26, '<p>dndkjdn</p>\r\n', '<p>sjjhdkjkh</p>\r\n', '', ''),
(34, 2, '<p>pooja</p>\r\n', '<p>pooja chunnu surbhi</p>\r\n', '', ''),
(35, 27, '<p>java</p>\r\n', '<p>dd</p>\r\n', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE IF NOT EXISTS `visitor` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `visitor` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`id`, `visitor`) VALUES
(1, 896);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
