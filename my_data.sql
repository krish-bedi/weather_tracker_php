-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: weather
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('FL','::1');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `weatherInfo`
--

LOCK TABLES `weatherInfo` WRITE;
/*!40000 ALTER TABLE `weatherInfo` DISABLE KEYS */;
INSERT INTO `weatherInfo` VALUES ('New York','Overnight',' Partly cloudy, with a low around 48. Northeast wind around 5 mph. ','Partly Cloudy','Low: 48 °F','NY','2023-04-20'),('New York','Thursday',' Mostly sunny, with a high near 68. Light and variable wind becoming south 5 to 7 mph in the morning. ','Mostly Sunny','High: 68 °F','NY','2023-04-20'),('New York','Thursday Night',' Mostly clear, with a low around 56. East wind 3 to 7 mph. ','Mostly Clear','Low: 56 °F','NY','2023-04-20'),('New York','Friday',' Sunny, with a high near 77. Southeast wind 5 to 9 mph. ','Sunny','High: 77 °F','NY','2023-04-20'),('New York','Friday Night',' Patchy drizzle after 2am.  Partly cloudy, with a low around 56. East wind 8 to 10 mph. ','Partly Cloudy','Low: 56 °F','NY','2023-04-20'),('New York','Saturday',' Patchy drizzle before 8am.  Partly sunny, with a high near 71.','Patchy','High: 71 °F','NY','2023-04-20'),('New York','Saturday Night',' Showers, mainly after 8pm.  Low around 58. Chance of precipitation is 80%.','Showers','Low: 58 °F','NY','2023-04-20'),('New York','Sunday',' Showers, mainly before 2pm.  High near 70. Chance of precipitation is 80%.','Showers','High: 70 °F','NY','2023-04-20'),('New York','Sunday Night',' A 30 percent chance of showers before 2am.  Partly cloudy, with a low around 50.','Chance','Low: 50 °F','NY','2023-04-20'),('Los Angeles/Oxnard','Tonight',' Mostly clear, with a low around 50. Northwest wind around 15 mph becoming north northeast in the evening. ','Mostly Clear','Low: 50 °F','CA','2023-04-20'),('Los Angeles/Oxnard','Thursday',' Sunny, with a high near 77. Northeast wind 5 to 10 mph becoming west northwest in the afternoon. ','Sunny','High: 77 °F','CA','2023-04-20'),('Los Angeles/Oxnard','Thursday Night',' Mostly clear, with a low around 56. West northwest wind 10 to 15 mph becoming north northeast in the evening. ','Mostly Clear','Low: 56 °F','CA','2023-04-20'),('Los Angeles/Oxnard','Friday',' Sunny, with a high near 82. North wind 5 to 10 mph becoming west southwest in the afternoon. Winds could gust as high as 15 mph. ','Sunny','High: 82 °F','CA','2023-04-20'),('Los Angeles/Oxnard','Friday Night',' Mostly clear, with a low around 59. West wind 5 to 15 mph becoming north after midnight. Winds could gust as high as 20 mph. ','Mostly Clear','Low: 59 °F','CA','2023-04-20'),('Los Angeles/Oxnard','Saturday',' Sunny, with a high near 78.','Sunny','High: 78 °F','CA','2023-04-20'),('Los Angeles/Oxnard','Saturday Night',' Mostly cloudy, with a low around 57.','Mostly Cloudy','Low: 57 °F','CA','2023-04-20'),('Los Angeles/Oxnard','Sunday',' Mostly sunny, with a high near 71.','Mostly Sunny','High: 71 °F','CA','2023-04-20'),('Los Angeles/Oxnard','Sunday Night',' Patchy fog after 11pm.  Otherwise, mostly cloudy, with a low around 57.','Patchy Fog','Low: 57 °F','CA','2023-04-20'),('Chicago','Overnight',' A 20 percent chance of showers and thunderstorms after 4am.  Mostly cloudy, with a temperature rising to around 56 by 4am. East southeast wind 5 to 10 mph becoming south. Winds could gust as high as 20 mph. ','Slight Chance','Low: 51 °F','IL','2023-04-20'),('Houston','Overnight',' Partly cloudy, with a low around 70. Southeast wind around 10 mph, with gusts as high as 20 mph. ','Partly Cloudy','Low: 70 °F','TX','2023-04-20'),('Houston','Thursday',' A 30 percent chance of showers and thunderstorms, mainly after 4pm.  Mostly cloudy, with a high near 81. Southeast wind 10 to 15 mph, with gusts as high as 20 mph. ','Partly Sunny','High: 81 °F','TX','2023-04-20'),('Phoenix','Tonight',' Mostly clear, with a low around 52. North northeast wind around 5 mph. ','Mostly Clear','Low: 52 °F','AZ','2023-04-20'),('Phoenix','Thursday',' Sunny, with a high near 85. Northeast wind 5 to 10 mph becoming west southwest in the morning. ','Sunny','High: 85 °F','AZ','2023-04-20'),('Phoenix','Thursday Night',' Clear, with a low around 56. West southwest wind 5 to 10 mph becoming north northeast after midnight. ','Clear','Low: 56 °F','AZ','2023-04-20'),('Phoenix','Friday',' Sunny, with a high near 89. Northeast wind 5 to 10 mph becoming south southwest in the afternoon. ','Sunny','High: 89 °F','AZ','2023-04-20'),('Phoenix','Friday Night',' Clear, with a low around 59. West southwest wind 5 to 10 mph becoming northeast after midnight. ','Clear','Low: 59 °F','AZ','2023-04-20'),('Phoenix','Saturday',' Sunny, with a high near 93. Breezy, with a northeast wind 5 to 15 mph becoming southwest in the afternoon. Winds could gust as high as 20 mph. ','Sunny then','High: 93 °F','AZ','2023-04-20'),('Phoenix','Saturday Night',' Partly cloudy, with a low around 64. West wind 5 to 10 mph becoming northeast after midnight. ','Partly Cloudy','Low: 64 °F','AZ','2023-04-20'),('Phoenix','Sunday',' Sunny, with a high near 95. East wind 5 to 10 mph becoming west southwest in the afternoon. Winds could gust as high as 20 mph. ','Sunny','High: 95 °F','AZ','2023-04-20'),('Phoenix','Sunday Night',' Mostly clear, with a low around 63. West southwest wind 5 to 10 mph becoming east southeast after midnight. ','Mostly Clear','Low: 63 °F','AZ','2023-04-20'),('Philadelphia','Overnight',' Partly cloudy, with a low around 46. Calm wind becoming northeast around 5 mph. ','Partly Cloudy','Low: 46 °F','PA','2023-04-20'),('Philadelphia','Thursday',' Sunny, with a high near 76. East wind around 5 mph becoming southeast in the afternoon. ','Sunny','High: 76 °F','PA','2023-04-20'),('Philadelphia','Thursday Night',' Mostly clear, with a low around 52. Southeast wind 5 to 10 mph. ','Mostly Clear','Low: 52 °F','PA','2023-04-20'),('Philadelphia','Friday',' Mostly sunny, with a high near 80. Northeast wind 5 to 10 mph becoming south in the afternoon. ','Mostly Sunny','High: 80 °F','PA','2023-04-20'),('Philadelphia','Friday Night',' Mostly cloudy, with a low around 58. Southeast wind 5 to 10 mph. ','Mostly Cloudy','Low: 58 °F','PA','2023-04-20'),('Philadelphia','Saturday',' A chance of showers after 2pm.  Partly sunny, with a high near 78. Breezy.  Chance of precipitation is 30%. New precipitation amounts of less than a tenth of an inch possible. ','Partly Sunny','High: 78 °F','PA','2023-04-20'),('Philadelphia','Saturday Night',' Showers, mainly after 8pm.  Low around 53. Chance of precipitation is 90%.','Showers','Low: 53 °F','PA','2023-04-20'),('Philadelphia','Sunday',' Showers likely, mainly before 8am.  Partly sunny, with a high near 67. Chance of precipitation is 60%.','Showers','High: 67 °F','PA','2023-04-20'),('Philadelphia','Sunday Night',' Partly cloudy, with a low around 45.','Partly Cloudy','Low: 45 °F','PA','2023-04-20'),('Jacksonville','Overnight',' Mostly clear, with a low around 62. East wind around 6 mph. ','Mostly Clear','Low: 62 °F','FL','2023-04-20'),('Jacksonville','Thursday',' Patchy fog before 9am.  Otherwise, sunny, with a high near 82. Windy, with an east wind 7 to 12 mph increasing to 16 to 21 mph in the afternoon. Winds could gust as high as 31 mph. ','Patchy Fog','High: 82 °F','FL','2023-04-20'),('Jacksonville','Thursday Night',' Patchy fog after 5am.  Otherwise, mostly clear, with a low around 64. Breezy, with an east wind 8 to 16 mph. ','Clear and','Low: 64 °F','FL','2023-04-20'),('Jacksonville','Friday',' Patchy fog before 10am.  Otherwise, sunny, with a high near 83. Windy, with an east wind 7 to 12 mph increasing to 15 to 20 mph in the afternoon. Winds could gust as high as 30 mph. ','Patchy Fog','High: 83 °F','FL','2023-04-20'),('Jacksonville','Friday Night',' A 20 percent chance of showers after 2am.  Partly cloudy, with a low around 68. Breezy, with an east wind 12 to 17 mph decreasing to 6 to 11 mph after midnight. ','Partly Cloudy','Low: 68 °F','FL','2023-04-20'),('Jacksonville','Saturday',' A 40 percent chance of showers and thunderstorms, mainly after 8am.  Mostly sunny, with a high near 85.','Chance','High: 85 °F','FL','2023-04-20'),('Jacksonville','Saturday Night',' A 20 percent chance of showers and thunderstorms.  Partly cloudy, with a low around 62.','Slight Chance','Low: 62 °F','FL','2023-04-20'),('Jacksonville','Sunday',' Sunny, with a high near 78.','Sunny','High: 78 °F','FL','2023-04-20'),('Jacksonville','Sunday Night',' Mostly clear, with a low around 60.','Mostly Clear','Low: 60 °F','FL','2023-04-20');
/*!40000 ALTER TABLE `weatherInfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-20  3:04:19
