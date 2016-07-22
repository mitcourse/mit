-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mit
-- ------------------------------------------------------
-- Server version	5.6.28-0ubuntu0.15.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `names` varchar(100) DEFAULT NULL,
  `types` varchar(50) DEFAULT NULL,
  `url` varchar(300) NOT NULL DEFAULT '',
  `textbook` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`,`url`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('18.01','single variable calculus','mathematics','18-mathematics/18.01--single-variable-calculus/18-01-fall-2006/START.htm',NULL),('18.02','multivariable calculus(J.D.)','mathematics','18-mathematics/18.02--multivariable-calculus(J.D.)/18-02-spring-2006/START.htm',NULL),('18.02','multivariable calculus','mathematics','18-mathematics/18.02--multivariable-calculus/18-02-fall-2007/START.htm',NULL),('18.03','differential equations','mathematics','18-mathematics/18.03--differential-equations/18-03-spring-2010/START.htm',NULL),('18.04','complex variable with applications','mathematics','18-mathematics/18.04--complex-variable-with-applications/18-04-fall-2003/START.htm',NULL),('18.05','introduction to probability and statistics','mathematics','18-mathematics/18.05--introduction-to-probability-and-statistics/18-05-spring-2014/START.htm',NULL),('18.06','linear algebra','mathematics','18-mathematics/18.06--linear-algebra/18-06-spring-2010/START.htm',NULL),('8.01','classical mechanics','physics','8-physics/8.01--classical-mechanics/8-01-fall-1999/START.htm',NULL),('8.02','electricity and magnetism','physics','8-physics/8.02--electricity-and-magnetism/8-02-spring-2002/START.htm',NULL),('8.03','vibrations and waves','physics','8-physics/8.03--vibrations-and-waves/8-03-fall-2004/START.htm',NULL),('8.033','relativity','physics','8-physics/8.033--relativity/8-033-fall-2006/START.htm',NULL),('8.04','quantum physics 1','physics','8-physics/8.04--quantum-physics-1/8-04-spring-2013/START.htm',NULL),('8.044','statistical physics 1','physics','8-physics/8.044--statistical-physics-1/8-044-spring-2013/START.htm',NULL),('8.05','quantum physics 2','physics','8-physics/8.05--quantum-physics-2/8-05-fall-2013/START.htm',NULL),('8.06','quantum physics 3','physics','8-physics/8.06--quantum-physics-3/8-06-spring-2005/START.htm',NULL),('8.07','electromagnetism 2','physics','8-physics/8.07--electromagnetism-2/8-07-fall-2012/START.htm',NULL),('8.08','statistical physics 2','physics','8-physics/8.08--statistical-physics-2/8-08-spring-2005/START.htm',NULL),('8.09','classical mechanics 3','physics','8-physics/8.09--classical-mechanics-3/8-09-fall-2014/START.htm',NULL),('8.20','introduction to special relativity','physics','8-physics/8.20--introduction-to-special-relativity/8-20-january-iap-2005/START.htm',NULL),('8.21','the physics of energy','physics','8-physics/8.21--the-physics-of-energy/8-21-fall-2009/START.htm',NULL),('8.224','exploring black holes general','physics','8-physics/8.224--exploring-black-holes-general/8-224-spring-2003/START.htm',NULL),('8.231','physics of solids 1','physics','8-physics/8.231--physics-of-solids-1/8-231-fall-2006/START.htm',NULL),('8.251','string theory for undergraduates','physics','8-physics/8.251--string-theory-for-undergraduates/8-251-spring-2007/START.htm',NULL),('8.261j','introduction to computational neuroscience','physics','8-physics/8.261j--introduction-to-computational-neuroscience/8-261j-spring-2004/START.htm',NULL),('8.282j','introduction to astronomy','physics','8-physics/8.282j--introduction-to-astronomy/8-282j-spring-2006/START.htm',NULL),('8.284','modern astrophysics','physics','8-physics/8.284--modern-astrophysics/8-284-spring-2006/START.htm',NULL),('8.286','the early universe','physics','8-physics/8.286--the-early-universe/8-286-fall-2013/START.htm',NULL),('8.311','electromagnetic theory','physics','8-physics/8.311--electromagnetic-theory/8-311-spring-2004/START.htm',NULL),('8.321','quantum theory 1','physics','8-physics/8.321--quantum-theory-1/8-321-fall-2002/START.htm',NULL),('8.322','quantum theory 2','physics','8-physics/8.322--quantum-theory-2/8-322-spring-2003/START.htm',NULL),('8.323','relativistic quantum field theory 1','physics','8-physics/8.323--relativistic-quantum-field-theory-1/8-323-spring-2008/START.htm',NULL),('8.324','relativistic quantum field theory 2','physics','8-physics/8.324--relativistic-quantum-field-theory-2/8-324-fall-2010/START.htm',NULL),('8.325','relativistic quantum field theory 3(2003)','physics','8-physics/8.325--relativistic-quantum-field-theory-3(2003)/8-325-spring-2003/START.htm',NULL),('8.325','relativistic quantum field theory 3(2007)','physics','8-physics/8.325--relativistic-quantum-field-theory-3(2007)/8-325-spring-2007/START.htm',NULL),('8.333','statistical mechanics 1','physics','8-physics/8.333--statistical-mechanics-1/8-333-fall-2013/START.htm',NULL),('8.334','statistical mechanics 2','physics','8-physics/8.334--statistical-mechanics-2/8-334-spring-2014/START.htm',NULL),('8.42','atomic and optical physics','physics','8-physics/8.42--atomic-and-optical-physics/8-421-spring-2014/START.htm',NULL),('8.42','atomic and optical physics','physics','8-physics/8.42--atomic-and-optical-physics/8-422-spring-2013/START.htm',NULL),('8.511','theory of solids 1','physics','8-physics/8.511--theory-of-solids-1/8-511-fall-2004/START.htm',NULL),('8.512','theory of solids 2','physics','8-physics/8.512--theory-of-solids-2/8-512-spring-2009/START.htm',NULL),('8.513','many body theory for condensed matter systems','physics','8-physics/8.513--many-body-theory-for-condensed-matter-systems/8-513-fall-2004/START.htm',NULL),('8.514','strongly correlated systems in condensed matter physics','physics','8-physics/8.514--strongly-correlated-systems-in-condensed-matter-physics/8-514-fall-2003/START.htm',NULL),('8.613j','introduction to plasma physics 1(2003)','physics','8-physics/8.613j--introduction-to-plasma-physics-1(2003)/8.613j-fall-2003/START.htm',NULL),('8.613j','introduction to plasma physics 1(2006)','physics','8-physics/8.613j--introduction-to-plasma-physics-1(2006)/8.613j-fall-2006/START.htm',NULL),('8.701','introduction to nuclear and particle physics','physics','8-physics/8.701--introduction-to-nuclear-and-particle-physics/8-701-spring-2004/START.htm',NULL),('8.811','particle physics 2','physics','8-physics/8.811--particle-physics-2/8-811-fall-2005/START.htm',NULL),('8.821','string theory and holographic duality','physics','8-physics/8.821--string-theory-and-holographic-duality/8-821-fall-2014/START.htm',NULL),('8.821','string theory','physics','8-physics/8.821--string-theory/8-821-fall-2008/START.htm',NULL),('8.851','effective field theories of QCD','physics','8-physics/8.851--effective-field-theories-of-QCD/8-851-spring-2006/START.htm',NULL),('8.851','effective field theory','physics','8-physics/8.851--effective-field-theory/8-851-spring-2013/START.htm',NULL),('8.871','selected topics in theoretical particle physics branes and gauge theory dynamics','physics','8-physics/8.871--selected-topics-in-theoretical-particle-physics-branes-and-gauge-theory-dynamics/8-871-fall-2004/START.htm',NULL),('8.901','astrophysics 1','physics','8-physics/8.901--astrophysics-1/8-901-spring-2006/START.htm',NULL),('8.902','astrophysics 2','physics','8-physics/8.902--astrophysics-2/8-902-fall-2004/START.htm',NULL),('8.942','cosmology','physics','8-physics/8.942--cosmology/8-942-fall-2001/START.htm',NULL),('8.952','particle physics of the early universe','physics','8-physics/8.952--particle-physics-of-the-early-universe/8-952-fall-2004/START.htm',NULL),('8.962','general relativity','physics','8-physics/8.962--general-relativity/8-962-spring-2006/START.htm',NULL);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-19  9:53:29
