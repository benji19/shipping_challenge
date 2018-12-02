SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


 /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
 /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
 /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 /*!40101 SET NAMES utf8mb4 */;

-- voer hier tussen u persoonlijke sql scripts

CREATE TABLE `Person` (
   `id` int(11) NOT NULL,
   `id2` int(11) NOT NULL,
   `name` varchar(20) NOT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 INSERT INTO `Person` (`id`, `id2`, `name`) VALUES
 (1, 5, 'Benjamin'),
 (2, 4, 'Bruyns'),
 (3, 3, 'Benji'),
 (4, 2, 'Maarten'),
 (5, 1, 'Michiels');
 
-- voer hier tussen u persoonlijke sql scripts

 /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
 /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
 /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
