-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018 年 11 月 30 日 11:57
-- 伺服器版本: 10.1.36-MariaDB
-- PHP 版本： 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `escapebar_proj`
--

-- --------------------------------------------------------

--
-- 資料表結構 `activity_list`
--

CREATE TABLE `activity_list` (
  `tid` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `game_title` varchar(60) NOT NULL,
  `s_name` varchar(60) NOT NULL,
  `sel_time` datetime NOT NULL,
  `default_people` int(20) NOT NULL,
  `ask_people` int(20) NOT NULL,
  `current_people` int(20) NOT NULL,
  `goal_people` int(20) NOT NULL,
  `t_created_at` datetime NOT NULL,
  `t_deadline` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `activity_list`
--

INSERT INTO `activity_list` (`tid`, `uid`, `game_title`, `s_name`, `sel_time`, `default_people`, `ask_people`, `current_people`, `goal_people`, `t_created_at`, `t_deadline`) VALUES
(1, 'u001', '醉後任務', '笨蛋工作室_松山館', '2018-12-14 07:00:00', 6, 2, 6, 8, '2018-11-16 08:00:00', '2018-11-23 08:00:00'),
(2, 'u002', '鬼新娘', '笨蛋工作室_松山館', '2018-12-24 12:00:00', 4, 4, 4, 8, '2018-11-12 17:00:00', '2018-11-23 17:00:00'),
(3, 'u003', '奪命鎖鏈', '笨蛋工作室_松山館', '2018-12-14 07:00:00', 2, 1, 6, 7, '2018-11-16 08:00:00', '2018-11-23 08:00:00'),
(4, 'u001', '奪命記憶', '笨蛋工作室_松山館', '2018-12-11 07:00:00', 4, 1, 8, 9, '2018-11-13 08:00:00', '2018-11-20 08:00:00'),
(5, 'u002', '顛倒之室', '笨蛋工作室_台中館', '2018-12-20 15:30:00', 2, 3, 2, 5, '2018-11-19 11:37:24', '2018-12-13 15:30:00'),
(6, 'u003', '千年古墓', '逃生門工作室_松江店', '2018-11-23 08:00:00', 3, 4, 3, 7, '2018-11-19 10:00:00', '2018-11-20 23:00:00'),
(7, 'u002', '奪命鎖鏈2', '笨蛋工作室_松山館', '2018-12-29 20:00:00', 2, 3, 3, 6, '2018-11-19 18:28:36', '2018-12-29 20:00:00');

-- --------------------------------------------------------

--
-- 資料表結構 `buy_list`
--

CREATE TABLE `buy_list` (
  `SID` int(11) NOT NULL,
  `STOCK_SID` int(11) NOT NULL,
  `UID` varchar(100) NOT NULL,
  `PEOPLE_NUM` int(11) NOT NULL,
  `T_PRICE` int(11) NOT NULL,
  `PAY_TYPE` varchar(20) NOT NULL,
  `STATUS` int(1) NOT NULL,
  `CREATE_DATE` date NOT NULL,
  `CID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(1, '台北市'),
(2, '新北市'),
(3, '基隆市'),
(4, '桃園市'),
(5, '新竹市'),
(6, '新竹縣'),
(7, '苗栗縣'),
(8, '台中市'),
(9, '彰化縣'),
(10, '南投縣'),
(11, '雲林縣'),
(12, '嘉義市'),
(13, '嘉義縣'),
(14, '台南市'),
(15, '高雄市'),
(16, '屏東縣'),
(17, '台東縣'),
(18, '花蓮縣'),
(19, '宜蘭縣'),
(20, '離島'),
(21, '戶外遊戲'),
(22, '全台灣');

-- --------------------------------------------------------

--
-- 資料表結構 `company`
--

CREATE TABLE `company` (
  `cid` int(11) NOT NULL,
  `c_name` varchar(60) NOT NULL,
  `c_name_eng` varchar(60) NOT NULL,
  `c_intro` varchar(2000) NOT NULL,
  `c_intro_eng` varchar(2000) NOT NULL,
  `c_website` varchar(255) NOT NULL,
  `c_facebook` varchar(255) NOT NULL,
  `c_logo` varchar(30) NOT NULL,
  `c_hero` varchar(30) NOT NULL,
  `pageviews` int(11) NOT NULL,
  `city_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `company`
--

INSERT INTO `company` (`cid`, `c_name`, `c_name_eng`, `c_intro`, `c_intro_eng`, `c_website`, `c_facebook`, `c_logo`, `c_hero`, `pageviews`, `city_name`) VALUES
(1, '笨蛋工作室密室逃脫 Stupidparticle ', '', '為什麼叫『笨蛋工作室』？</br>\r\n我們認為，笨蛋是一種精神、一種勇氣！平常熱情瘋狂的我們，腦中充滿天馬行空的 idea，無論多瘋狂的創意，都要試著去實現。這就是StupidParticle的笨蛋精神！</br>\r\n『笨蛋』也代表著無論如何，都要堅持快樂的勇氣，快樂永遠都是生活中最重要的元素，但有太多人因為忙碌的生活而失去了追逐快樂的勇氣。笨蛋工作室致力於開發最多元的娛樂方式，堅持原創，全新風格的玩法，身歷其境的臨場體驗，將帶給你前所未有的震撼！</br>\r\n把快樂塞入每個人的腦袋裡！更進一步，藉由新型態的娛樂方式，提供寓教於樂，增進情感，培養默契等珍貴價值，拉近現代都市人之間逐漸疏遠的距離。無論如何，來和笨蛋們一起享受生活吧！', '', 'https://www.stupidparticle.com/', 'https://www.facebook.com/stupidparticle/', 'stupidparticle_1.jpg', '', 1, '台北｜新竹｜台中'),
(2, 'QhAt帽子烤工廠', '', '在沒有出口的密室不斷尋找線索</br>\r\n解開前人留下的Questions，</br>\r\n找出屬於你的Answer。</br>\r\n</br>\r\n善用你腦中的火焰，任何細節可能都是關鍵。</br>\r\nQhAt帽子烤工廠，邀你一起烤出真相！！</br>', '', 'https://qhatex.wixsite.com/qhatextw', 'https://www.facebook.com/qhatextw/', 'qhat.jpg', '', 1, '台北'),
(3, '謎鹿實境遊戲工作室', '', '還記得在電腦前玩得密室逃脫遊戲嗎</br>\r\n是否希望能親自感受有如電影裡的情境空間</br>\r\n這次您能身歷其境</br>\r\n透過逼真的場景重現</br>\r\n絢麗的燈光效果與您意想不到的機關</br>\r\n和您最好的朋友組隊前來</br>\r\n展現您們的團隊合作力量</br>\r\n在精心打造的實境空間裡</br>\r\n解開一道又一道的謎題</br>\r\n了解故事的真相</br>\r\n成為故事裡的大英雄</br>', '', 'http://mysterymoosegame.wixsite.com/game?fbclid=IwAR2dRd2_OWBV9cv1bD_ARGqLrzAzd87jXbDvOJDfUL3GFFaHrubxRKdZNrE', 'https://www.facebook.com/MysteryMooseGame/', 'mysterymoose.jpg', '', 1, '新北'),
(4, 'FK工作室', '', '\"懸疑推理與解謎逃脫完美結合，你...能解開真相嗎?</br>\r\n來FK工作室體驗我們的友善、親切吧！\"</br>', '', '', 'https://www.facebook.com/FriendlyKindWorkshop/', 'FK.jpg', '', 1, '台北'),
(5, '貝爾豪斯工作室', '', '\"貝爾豪斯工作室專注於</br>\r\n開發與傳統密室體驗不同的實境遊戲，</br>\r\n並著重【解謎趣味】、【故事性】的開發設計，</br>\r\n從生活中的深刻經驗取材，</br>\r\n要給你最獨特的一段旅程！</br>\r\n</br>\r\n本工作室的主旨，</br>\r\n就是「尋找謎與人的連結」，</br>\r\n希望喜歡我們理念的朋友，</br>\r\n用力按「讚」、「分享」，</br>\r\n給我們前進的動力！\"</br>', '', 'http://www.bearhorsescape.com/', 'https://www.facebook.com/bearhorse2014/', 'BearHouse.jpg', '', 1, '新北'),
(6, 'Meet Chance覔見實境遊戲', '', '2016年底，創作實境體驗遊戲「秦關」 \r\n開辦至今22個月，已舉辦1500場遊戲 \r\n吸引超過12000名玩家前來體驗 \r\n希望藉由尋「覔」，看「見」 \r\n讓玩家充分享受遊戲，體驗箇中樂趣 \r\n並將持續深耕創作', '', '', 'https://www.facebook.com/meet.chances/', 'MeetChances.jpg', '', 1, '台北'),
(7, 'LOST Taiwan', '', '迷の密失，將真人密室逃脫遊戲呈現，被鎖在密室內，玩家必須使用房間的元素尋找線索來解決謎題\r\n並在指定時間之內逃出。密室內多種機關會給玩家帶來無限樂趣及體驗，\r\n同時可訓練及加強團隊間的 “理解”，“溝通”，“合作”和“觀察”能力。', '', 'https://www.losttw.com/home', 'https://www.facebook.com/losttw/', 'LostTaiwan.jpg', '', 1, '台北'),
(8, '頭癮創意遊戲', '', '密室逃脫遊戲為近幾年新興的實境團體益智遊戲，將您曾經在電腦上玩過的遊戲場景搬至現實生活當中，由您與好隊友們一起參加遊玩。\r\n遊戲過程將帶給您許多藉由分工合作、有效溝通、邏輯聯想而得到的成就感和體驗樂趣，和朋友與家人一起在五花八 門的遊戲場景當中過關斬將，在時間內一一解開每道謎題。將大家的智囊集結於一， 加上與大家同心協力，就會是成功逃脫的關鍵哦！\r\n【頭癮創意遊戲】是密室逃脫界的新星，開立不到半年時間，卻在許多玩家的口中得 到頗高的好評。我們由幾位喜愛密室逃脫的友人集結，期望能帶給密室遊戲玩家更多 的選擇，也期望因此可以為密室逃脫/實境遊戲獻出一份心力，讓更多人體驗優質遊玩 經驗。希望您來參加我們的遊戲，一起體驗密室逃脫/實境遊戲的樂趣！', '', 'https://hddcncreatives.wixsite.com/hddcngames', 'https://www.facebook.com/hddcngames/', 'HeaddictionGames.jpg', '', 1, '台北'),
(9, '壞主意工作室', '', '您想成為電影中的主角嗎？想親身經歷劇情帶來的刺激感嗎？那您千萬別錯過『壞主意工作室』！\r\n\r\n『壞主意工作室』由電影工作者、台大內科醫師，和清大生科碩士所創辦，遊戲體驗是『壞主意工作室』最重視的部分，因此，一開始『壞主意工作室』以環球影城為目標，希望能讓玩家完全徹底沉浸在密室遊戲中！', '', 'http://www.badideasstudio.com/', 'https://www.facebook.com/BadIdeasStudio/', 'badideas.jpg', '', 1, '台北｜新北'),
(10, 'Limitless Escape Room 極限密室', '', '', '', '', 'https://www.facebook.com/LimitlessEscapeRoom/', 'LimitlessEscapeRoom.jpg', '', 1, '台北'),
(11, 'Thougher 穿越者', '', 'Througher​ ​ ​穿越者 實境密室逃脫\r\n你有一天聽說，世上存在無數平行世界。 \r\n而你，具備穿越到那些平行世界的資格。 \r\n你會怎麼做？\r\n是優游平行世界當一個穿越者？\r\n是留在原來世界當一個普通人？\r\n何謂​Througher？\r\nThrough​ 意思是＂穿越＂ \r\n當你成功穿越時空，我們稱之為：​Througher穿越者\r\n歡迎來到​Througher​穿越者-實境密室逃脫', '', 'https://www.througher.com.tw/', 'https://www.facebook.com/Througher/', 'througher.jpg', '', 1, '新北'),
(12, '不讓你密室逃脫', '', '真實場景 x 多重機關 x 豐富劇情，是「不讓你密室逃脫」呈現密室遊戲堅持的原則。遊戲中帶你化身成劇中人物，親身體驗搜尋、解謎、逃脫的樂趣；透過團隊合作、訊息分享、動腦思考、邏輯推理，成就一次真人實境的電玩遊戲，體驗時下最熱門的密室逃脫。', '', 'https://burunningescape.wixsite.com/burunning', 'https://www.facebook.com/BuRunning/', 'burunning.jpg', '', 1, '台北'),
(13, '夢遊王國', '', '【夢遊王國 - 實境遊戲主題館】 \r\n歡迎來到夢遊王國！ \r\n在這裡，你可以體驗各式各樣的夢境； \r\n無論美夢惡夢，都將是無比真實的刺激冒險！ \r\n\r\n※ 睽違三年，重磅回歸 ※ \r\nRMT團隊醞釀三年，創作能量大爆發！ \r\n除了維持高規格的場景機關，更努力在遊戲形式、劇情帶入、體驗感受等力求突破， \r\n創造更全面性的實境遊戲體驗！ \r\n\r\n※ 主題場館，全新衝擊 ※ \r\n透過獨創世界觀，每款實境遊戲都幻化成獨一無二的夢境， \r\n只要像作夢般發揮想像力跟冒險精神，這裡就是最迷人的夢境遊樂園！', '', 'http://www.rmtofficial.com/dream94zz', 'https://www.facebook.com/dream94zz/', 'dream94zz.jpg', '', 1, '台北'),
(14, '謬舍 MEW³ Studio', '', '謬舍喜歡各式各樣靈感與巧思，突發奇想或荒誕不羈的點子。 \r\n專長是設計密室逃脫遊戲，致力於打造讓玩家印象深刻的密室逃脫主題故事。 \r\n正朝向 課程規劃、活動企劃、空間經營、藝文表演 等不同面向發展。 \r\n劇場主題密室逃脫遊戲[ B Case]火熱販售中。', '', 'https://mewwem3.wixsite.com/mew3studio?fbclid=IwAR1IN4HqBDgIv4JZTpjOdgPoxCEaES8rvjOIXzJSVncS9OOP2UK-e2eQfUo', 'https://www.facebook.com/Mewmewmewstudio/', 'mew3.jpg', '', 1, '台北'),
(15, '智慧獵人', '', '我們致力於將腦中的故事情境，無論是歡樂、溫馨或是驚悚、刺激，還是糾結、痛心的劇情，都能夠以電影般的特效呈現，在設計中不斷挑戰自己，期待能夠在每一款遊戲中創造出更多種不同的可能性。 \r\n\r\n也期望每一位玩家不僅是因為遊戲體驗能夠笑著離開，更會因為智慧獵人每一位獨特的說書者「透明人」感到記憶深刻。', '', 'http://www.wisdomhunter.me/', 'https://www.facebook.com/WH.Zone/', 'wisdomhunter.jpg', '', 1, '台北'),
(16, 'FunLock 放樂工作室', '', '活著就是要玩，玩出自己的人生！\r\n《FunLock活動創意社》成立於2013年，將原是網路解謎遊戲的密室逃脫搬到現實世界，推出第一代密室逃脫遊戲-「糖果屋脫出」，玩家必須在規定的時間內尋找關鍵線索 破解謎題，最終逃離房間。透過精心設計的機關，期許讓更多的玩家體驗到遊戲的樂趣！\r\n於2016年正名為《FunLock放樂工作室》', '', 'https://www.funlockstudio.com/', 'https://www.facebook.com/Funlockstudio/', 'Funlock.jpg', '', 1, '台北'),
(17, '4Fun Base 創意基地 密室逃脫', '', '4fun Base 致力於創造「有溫度」的真實互動遊戲，希望大家在追逐工作與生活的忙碌之餘，透過遊戲過程，能夠找回赤子之心，增進情誼，保持歡笑，與身邊的人創造特別的回憶。目前 4Fun Base 共有 四款實境遊戲-【奪寶令】,【阿瓦隆的背叛者II】,【直衝腦門】以及【淨化特區】，同時，4Fun Base 更致力於「教育及企業團體訂製活動」以及至「大型逃脫活動」，目前 4Fun Base 已為各企業與團體客製化舉行過多場百人逃脫遊戲，希望帶給大家的不只是歡樂與趣味，更能在遊戲中融入教育與企業理念的傳達', '', 'https://4funbase.wixsite.com/realgame?fbclid=IwAR2iTXlQhM8_YeiTuREKIM_1uYaaKJ0FlxWnOX2mDq9j4XKFVFBFeYFJUgg', 'https://www.facebook.com/4funbase/', '4funBase.jpg', '', 1, '台北'),
(18, 'Rostart 邏思起子實境遊戲工作室', '', '我們是一群熱血的年輕人，充滿著對這個世界的奇思妙想。 \r\n現在我們成立『邏思起子』 \r\n希望把我們對生活中覺得有趣、酷炫的idea一點一滴的實現出來。 \r\n如同一個簡單的羅賴把配上螺絲釘可以組裝起一間夢想城堡。 \r\n在這個夢想空間中 我們想與玩家一起分享我們的創意、快樂與感動。 \r\n因為你們的快樂就是我們的快樂', '', 'http://rostart0720.wixsite.com/rostart', 'https://www.facebook.com/RoStarT.Game/', 'RoStart.jpg', '', 1, '台北'),
(19, 'Miss Game', '', 'Miss GAME(密思創意行銷有限公司)自2012年暑假正式營運，係首度將密室逃脫依系列遊戲方式呈現之工作室，首創大型機關X故事情節X雙脫出！超越單純逃脫遊戲，更勝一場精采電影！\r\n\r\nMiss GAME期待透過每次的遊戲，不只讓玩家享受愉快的遊戲過程，更能帶走一個獨特的故事，並能傳遞正向並溫暖的訊息給每一位參與的人。\r\n\r\nMiss GAME預計推出之一系列以Miss GAME組織為背景的逃脫遊戲，每個密室中都藏著一個屬於組織某位成員的故事；組織以Miss Queen為首，成員則有\r\n\r\nMiss G、A、M、E 目前已推出【Miss GAME 前傳 鍊獄】、【Miss G 窒息的密室】、【Miss A 水獄逃脫】、【Miss M 絕境擴散】、【Mr. Game限時入侵】等你來挑戰！', '', 'https://www.missgame.com.tw/', 'https://www.facebook.com/MissGAMEq/', 'MissGame.jpg', '', 1, '台北｜宜蘭'),
(20, '藍色迴廊', '', '藍色迴廊跨足密室逃脫與戶外實境解謎遊戲。　我們有充足的設計經驗以及技術支援，能夠帶給玩家最貼近需求的遊戲體驗。\r\n我們關心每一個玩家的心情，用心服務每一位來玩的玩家。　這也是為什麼開業三年多以來，數千人次的體驗，獲得玩家一致好評。\r\n因此，為了響應各位的期待，我們一直不斷的在研發新的遊戲與活動，請繼續給藍色迴廊更多的支持！', '', 'http://hallway.com.tw/', 'https://www.facebook.com/HallwayRoomEscape/', 'hallway.jpg', '', 1, '新北'),
(21, '逃生門工作室', '', '《 逃生門 》以創新、合作、歡樂為宗旨！\r\n真人密室逃脫遊戲，可以幫助加強團隊之間的合作精神、溝通能力及邏輯思考的能力！', '', 'http://0escape.com.tw/', 'https://www.facebook.com/0escape/', 'exit.jpg', '', 1, '台北'),
(22, 'Escapeholics 密室逃脫 - EPIC', '', 'Escapeholics // 讓你瘋狂上癮的密室逃脫 !\r\n密室逃脫Ｘ遊戲設計Ｘ活動策劃Ｘ跨界合作Ｘ遊戲行銷', '', 'http://www.escapeholics.com/', 'https://www.facebook.com/Escapeholics/', 'Escapeholics.jpg', '', 1, '台北'),
(23, '台灣逃脫實境工作室', '', '', '', 'http://www.twescape.com/', 'https://www.facebook.com/twescape.taipei/', 'TWEscape.jpg', '', 1, '台北'),
(24, '玩笑實驗室', '', '《玩笑》熱愛縝密設計活動\r\n從構思故事謎題、道具機關，雖然生產速度不快，\r\n但有自信帶給玩家有品質的體驗\r\n\r\n為什麼想開《玩笑》？\r\n因為做密室逃脫非常需要不斷地實驗與挑戰！\r\n我們打造的空間\r\n是能激發玩家想像力、團結力的益智活動\r\n我們的目標很簡單：讓玩家們跌！破！眼！鏡！\r\n瘋狂《玩》瘋狂《笑》\r\n\r\n品牌宗旨：玩笑創意 跌破眼鏡', '', 'https://www.wanxiao.tw/', 'https://www.facebook.com/wanxiao.lab/', 'wanxiao.jpg', '', 1, '台北'),
(25, 'Xcape Taiwan', '', '', '', 'https://www.xcapetaiwan.com/', 'https://www.facebook.com/XcapeTaiwan/', 'xcapetaiwan.jpg', '', 1, '台北'),
(26, '頂級豬排工作室', '', '頂級豬排是一間密室逃脫工作室。 \r\n不是餐廳。', '', 'http://thekingpork.com/', 'https://www.facebook.com/thekingpork/', 'porkking.jpg', '', 1, '台北'),
(27, 'LOST真人密室逃脫', '', 'Lost團隊於2014年成立，至今已設計出十餘款熱門主題，我們秉持者「Real Touch、Touch Real」的理念，堅持帶給大眾最真實與主題互動的活動，對於Lost來說，密室逃脫不只是一場解謎競賽，而是像經歷一場扣人心弦、驚心動魄的冒險旅程；2014至今，Lost在全台各地區逐漸的拓展，期許帶給全台大眾最新、最身歷其境的活動內容！', '', 'http://www.lost-taiwan.com.tw/index.php', 'https://www.facebook.com/Lostrealgame/', 'LOST.jpg', '', 1, '桃園｜台中'),
(28, '智客堡密室逃脫', '', '透過富有故事情境的裝潢、激發腦力設計的謎題、創造團隊合力的遊戲流程，打造出緊張刺激的真人實境密室逃脫遊戲。桃園的智客堡密室逃脫，與桃園LOST、中壢A5及新竹格林跳、謎逃羔羊等同業共組密室逃脫地圖，合計24款主題。位於桃園觀光夜市旁的密室逃脫實境遊戲。', '', '', 'https://www.facebook.com/smartmancastle/', 'smartman.jpg', '', 1, '桃園'),
(29, 'A5 Studio-全員脫逃中', '', '桃園第一實境密室逃脫遊戲', '', '', 'https://www.facebook.com/A5escape/', 'A5Studio.jpg', '', 1, '桃園'),
(30, 'MR.5 謎逃羔羊 實境解謎遊戲', '', '新竹首屈一指的機關型密室工作室 \r\n玩法多變 跳脫一般密室既定印象 \r\n總帶給玩家更多的驚奇特效 \r\n我們創造的 不只是密室!!', '', 'https://mr5site.wordpress.com/', 'https://www.facebook.com/Mr.5escape/', 'mr5.jpg', '', 1, '新竹'),
(31, '格林跳-真實密室遊戲', '', '2013年一個偶然的契機，我們踏入了實境遊戲這個新冒出的產業，一群人在相聚之餘，設計著不同的遊戲，想讓更多人知道密室遊戲的魅力之處，2016年我們正式從原本的\"\"台灣逃脫\"\"改名為\"\"格林跳\"\"，確立了我們在這個產業中的風格定位。\r\n\r\n​格林跳是什麼?想帶給玩家什麼樣的感覺?\r\n\r\n​作為一個實境遊戲產業的業者，我們不斷在思考如何運用遊戲設計來影響社會，不談嚴肅的議題，只是為了讓生活更有趣，而有趣來自那些創意、奇幻詭譎與懸疑又美好的想像，因此，我們發現一切的源頭在於\"\"想像力\"\"，我們認為生活可以因為想像力而有不一樣，因此確立了我們的核心價值\"\"為生活加點神秘感\"\"是的，生活多麼需要一些神秘感，不論是設計或者被設計，我們多麼期待生活中突發的小驚喜，所以我們處心經營每一個故事，希望讓玩家驚喜連連。\r\n\r\n讓格林說個故事吧! 帶你跳入這場奇幻的冒險，我們期待您也能一同享受這段神秘冒險的旅程!!', '', 'https://www.grimmtell.com/', 'https://www.facebook.com/GrimmTell/', 'grimmtell.jpg', '', 1, '新竹'),
(32, '謎猴實境工作室', '', '真實密室逃脫遊戲，推出多款實境遊戲，享受腦力激盪的實境遊戲體驗。提供桌遊空間服務、輕食餐點。推廣泡泡足球的團隊活動。', '', 'http://service854.wixsite.com/mars', 'https://www.facebook.com/puzzle.monkey.kao/', 'puzzlemonkey.jpg', '', 1, '新竹'),
(33, '濤濤來工作室', '', '', '', '', 'https://www.facebook.com/tautaulai/', 'tautaulai.jpg', '', 1, '新竹'),
(34, 'Play Studio玩密室', '', '', '', '', 'https://www.facebook.com/playstudioescape/', 'PlayStudio.jpg', '', 1, '新竹'),
(35, 'CubeOrigin啟源方塊密室逃脫工作室', '', '精心設計的真人密室逃脫遊戲，由4～6名玩家組成的小組進入充滿任務及挑戰的密室空間當中，並且在1小時內找到線索和提示，完成任務後逃出密室', '', 'http://cubeorigin2013.wixsite.com/cube-origin', 'https://www.facebook.com/CUBEOrigin/', 'CUBEOrigin.jpg', '', 1, '台中'),
(36, '許多門實境解謎', '', '結合『實境解謎』+『團體動力』 \r\n\r\n『許多門』從2013年11月開始 \r\n\r\n已經設計過十多個完全不同風格的挑戰主題 \r\n\r\n提供超過12萬人次以上的挑戰經驗！ \r\n\r\n　 \r\n\r\n打造各種原創的情境和謎題， \r\n\r\n並結合多年團體動力的教學經驗，設計出新型態的創意溝通方式。 \r\n\r\n精緻的佈置和遊戲內容，絕對讓挑戰者身歷其境，化身成為電影主角。', '', 'http://www.doorsss.com', 'https://www.facebook.com/TCDOORSSS/', 'doorsss.jpg', '', 1, '台中｜嘉義｜台南｜高雄'),
(37, 'HiDe&SeeK 躲貓貓密室脫逃', '', '', '', '', 'https://www.facebook.com/HiDeSeeeK/', 'HIDE-SEEK.jpg', '', 1, '台中'),
(38, '神話密室脫逃工坊', '', '準備好進入遠古神話的探險了嗎? 傳說 宇宙初開，萬物復甦 人們口耳相傳的古老傳說 籠罩著神秘的色彩', '', '', 'https://www.facebook.com/MYTH.WorkingHouse/', 'myth.jpg', '', 1, '台中'),
(39, 'Funow煩腦密室逃脫工作室', '', 'Let\'s Fun NOW !', '', '', 'https://www.facebook.com/funowstudio/', 'funow.jpg', '', 1, '台中'),
(40, '實境密室逃脫-黑盒子工作室', '', '黑盒子工作室結合了劇場與心理學的概念\r\n除了解謎之外\r\n我們更著重於玩家在遊戲的過程中\r\n感受到了什麼\r\n\r\n\r\n「黑盒子實驗劇場」的精神\r\n就是在於改變既有的空間形式\r\n當密室逃脫的玩家進入到遊戲空間\r\n就如同進入劇場所塑造出的幻象裡面\r\n當我們將密室逃脫的重點從解謎融入到情境時\r\n這整個空間就形成了一場演出\r\n而玩家可以同時是演員，或觀眾\r\n在身歷其境的同時慢慢發現整齣劇所要傳達的故事與意涵\r\n正是我們創立的宗旨 \r\n密室與劇場的結合，更貼近內心的實境體驗\r\n主打『沈浸式劇場』\r\n結合密室的呈現方式來說一個故事\r\n邀請大家，一起來演一齣密室劇\r\n\r\n「黑盒子」，除了是劇場概念外\r\n它也同時是心理學不陌生的名詞\r\n其被定義為人在接受外在環境刺激，進而產生反應的過程\r\n然而內在變化與處理的機制\r\n就行為學派的角度而言，黑盒子裡是什麼，似乎沒那麼重要\r\n但人之所以有趣、創意，正在於這個外面可見，內容無限的化學反應過程\r\n可以想見當不同玩家面對一個陌生空間、一道謎題，\r\n各自內裡會產生了什麼樣的變化呢?\r\n或許在\"\"黑盒子\"\"裡，能夠讓我們更了解「黑盒子」的運作\r\n\r\n\r\n「黑盒子工作室」結合了這兩種概念\r\n最希望的就是玩家在進行遊戲的過程\r\n不只是密室逃脫的解謎\r\n還可以沉浸在我們劇情中，在內心中激盪出更多豐富的感受', '', 'https://www.mindinblackbox.com/?fbclid=IwAR2AClHYoFGXQualdHwoq1ZWHWtH5MrZh9jf4Hdg9XEvB0kev1P-iyQku3E', 'https://www.facebook.com/MindInBlackbox/', 'blackbox.jpg', '', 1, '台中'),
(41, 'Loop迴圈工作室-台中實境密室逃脫館', '', '一群瘋密室逃脫的好友，\r\n有的期待機關，有的著重謎題，\r\n有的計較故事。 \r\n我們將您帶入場景，\r\n用謎題讓你思考，\r\n用機關讓您驚艷，\r\n​佐故事讓您留戀。\r\n我們將帶給您前所未見的\r\n​逃脫成功快感。', '', 'http://www.loopescape.com/', 'https://www.facebook.com/loopescape/', 'Loop.jpg', '', 1, '台中'),
(42, 'SWING Escape', '', 'Swing Escape首波主打遊戲主題：\r\n殤城以及竊命·牽羊\r\n燒腦、機關、劇情一次滿足！\r\n挑戰性十足的密室實境遊戲！\r\n我們的營業時間為\r\n上午10:30-晚上9:30\r\n如果宵夜場想體驗的玩家\r\n可以電話預約哦~~~', '', '', 'https://www.facebook.com/SWING-Escape-413606089069707/', 'SWINGEscape.jpg', '', 1, '台中'),
(43, 'AngeLost真人實境密室', '', '', '', '', 'https://www.facebook.com/AngeLostEscape/', 'AngeLost.jpg', '', 1, '台中'),
(44, '烏嘎嘎工作室', '', '我們店有超過700款遊戲\r\n有豐富的桌遊活動舉辦經驗\r\n同時也有合作的桌遊教師\r\n店內亦備有150吋投影幕可支援活動\r\n如果有合作需求 歡迎詳談', '', '', 'https://www.facebook.com/UGG5F/', 'ugg.jpg', '', 1, '台中'),
(45, '哇沙謎創意工作室', '', '', '', '', 'https://www.facebook.com/wasabicreative/', 'wasabi.jpg', '', 1, '台中'),
(46, '麗寶樂園密室逃脫', '', '', '', 'http://www.lihpaoresort.com/LihpaolandApp/Home/Escape', '', 'libao.jpg', '', 1, '台中'),
(47, '妖怪村桃樂趣實境遊戲', '', '高雄 南投 密室逃脫遊戲，負責企業內訓、密室脫逃活動企劃等，另有溪頭妖怪村主題與痞子英雄主題，特設新手專門遊戲，於高雄有雙場地的密室脫逃，同時在高雄夢時代內有三款的密室逃脫主題，其中密室逃脫主題－「夢遊馬戲團」是專為新手設計的入門款密室脫逃，目前體驗過館內密室逃脫主題的玩家已達萬人，同時亦與高雄痞子英雄合作，於高雄夢時代旁的痞子英雄館內有百萬場請打照的電影主題密室逃脫遊戲，其中場景皆使用電影及電視劇所使用的道具，是全臺第一款由電影與密室合作的實境密室脫逃！', '', '', 'https://www.facebook.com/peachexit', 'peachfun.jpg', '', 1, '南投'),
(48, '神不在場實境遊戲', '', '我們是一群熱愛玩遊戲的人，所以也想能做出好玩的遊戲讓大家玩！ \r\n\r\n於是開始致力創作有趣的實境遊戲，並且多方嘗試設計新型態的實體遊戲體驗。 \r\n\r\n我們期待能在這科技發達、虛擬世界蓬勃的世代， \r\n\r\n能讓人與人之間的連結彼此貼近、與實體空間的互動更加緊密。 \r\n\r\n當然最重要的是，希望大家能從神不在場的遊戲中，獲得樂趣、感到開心！ \r\n\r\n若您玩完之後會笑著說：「好玩！」是您對我們最好的評語。', '', 'https://www.taog-game.com', 'https://www.facebook.com/taog.game/', 'taog-game.jpg', '', 1, '台北｜台南'),
(49, '桃樂趣密室逃脫', '', '高雄 南投 密室逃脫遊戲，負責企業內訓、密室脫逃活動企劃等，另有溪頭妖怪村主題與痞子英雄主題，特設新手專門遊戲，於高雄有雙場地的密室脫逃，同時在高雄夢時代內有三款的密室逃脫主題，其中密室逃脫主題－「夢遊馬戲團」是專為新手設計的入門款密室脫逃，目前體驗過館內密室逃脫主題的玩家已達萬人，同時亦與高雄痞子英雄合作，於高雄夢時代旁的痞子英雄館內有百萬場請打照的電影主題密室逃脫遊戲，其中場景皆使用電影及電視劇所使用的道具，是全臺第一款由電影與密室合作的實境密室脫逃！', '', 'http://www.peachfun.com/', 'https://www.facebook.com/peachfundreammall/', 'peachfunks.jpg', '', 1, '高雄'),
(50, '羊逃密室逃脫工作室', '', '高雄在地 唯一有劇情推理的 密室逃脫 \r\n挑戰你的智慧 發揮團隊的能力 \r\n在有限的時間內 \r\n解出重重關卡 \r\n逃出密室', '', 'http://www.runsheepsrun.com/', 'https://www.facebook.com/runsheepsrun', 'runsheepsrun.jpg', '', 1, '高雄'),
(51, '逃出香港', '', '《逃出香港!》臺灣站是我們引進香港首家真人密室逃脱遊戲，致力為大家提供嶄新概念的娛樂方式。除了精心設計全新密室外，更破天荒為每間密室編上劇情，務求令玩家仿如身處電影故事之中：你要在限時之內，找出線索，解開謎題，逃出密室，否則後果不堪切想！', '', 'http://www.freeing.tw/', 'https://www.facebook.com/freeingtaiwan', 'freeing.jpg', '', 1, '高雄'),
(52, 'Canpss密室逃脫', '', '我們是Canpass密室逃脫工作室，我們希望帶給玩家一個有趣、刺激、新 鮮的密室逃脫體驗，因此除了普通的鑰匙或是密碼鎖外，更致力於獨立開發新 型的電子機關鎖。', '', 'http://canpass.com.tw/index.html', 'https://www.facebook.com/canpass.com.tw', 'CANPASS.jpg', '', 1, '高雄'),
(53, 'Dr.小頭密室逃脫工作室', '', '帶給玩家快樂，是我們一直以來的使命 \r\n在電腦、電視、手機幾乎占據生活的一個時代 \r\n工作室致力於創造一種人與人間最單純的關係 \r\n在這網際網路越來越發達的社會中 \r\n一起拒絕當個低頭族 \r\n相聚歡笑、面對面溝通、互相協助 \r\n製造更多人與人間相處的機會與歡樂', '', 'http://drhead-kh.weebly.com/', 'https://www.facebook.com/SIAOTOU2015/', 'DrHead.jpg', '', 1, '高雄'),
(54, '爆炸先生密室逃脫工作室', '', '團隊發想初期是以想要給人們一種歡樂的氣氛為出發點，在團隊日朝夜想的爆炸先生就誕生了！ \r\n在電腦、電視、手機幾乎佔據生活全部的一個時代 \r\n工作室致力於創造一種人與人間最單純的互動。 \r\n藉著遊戲，讓人們相聚 \r\n藉著遊戲，讓人們面對面溝通 \r\n藉著遊戲，讓人們互相協助 \r\n藉著遊戲，讓人們找回人與人之間專屬的一種溫暖', '', 'http://mr-bomb.weebly.com/', 'https://www.facebook.com/Mr.Bomb2015', 'mrbomb.jpg', '', 1, '高雄'),
(55, '獵時者遊戲工作室', '', '', '', 'http://timehunter2016.weebly.com/', 'https://www.facebook.com/timehunter2016/', 'timehunter.jpg', '', 1, '高雄'),
(56, '夢罟密室逃脫', '', '夢罟，或稱捕夢網。 \r\n捕夢網的用意為捕捉好夢，驅除壞夢。又有祈求平安帶來好運的意思。由三個喜愛密室逃脫的女孩子一點一滴的動手編織一個個美夢，期望將所有好夢帶給每個玩家。', '', 'https://dreamcatcher311313.wixsite.com/mysite', 'https://www.facebook.com/dreamcatcher0721/', 'dreamcatcher.jpg', '', 1, '高雄'),
(57, '梅林的鬍子遊戲工作室', '', '「梅林的鬍子」遊戲工作室 \r\n提供優質密室體驗遊戲空間及桌遊販售租借。 \r\n\r\n「梅林的鬍子」源於哈利波特小說裡常用口頭禪， \r\n也就是「Oh My God !我的天呀!」的意思， \r\n歡樂其實就在你的親朋好友身邊！', '', 'http://yilanmerlinsbeard.wixsite.com/merlinsbeardstudio', 'https://www.facebook.com/merlinsbeardstudio/', 'MerlinsBeard.jpg', '', 1, '宜蘭'),
(58, '城市尋寶', '', '《讓周遭的現實變得神祕又有趣》 \r\n牆壁上看似隨性的塗鴉，其實是指引寶藏的線索!? \r\n在巷子裡拾荒的老婦，其實是某祕密組織的指路人!? \r\n透過賦予現實環境新意義的遊戲設計， \r\n希望讓大家對原本習以為常的周遭有新的體悟， \r\n能夠隨時留心，發現這城市中的寶藏和樂趣！ \r\n\r\n《假日休閒娛樂新選擇》 \r\n走出戶外親近大自然，還能真實體驗電影裡的尋寶冒險旅程。 \r\n出遊前不需要再做功課，跟著遊戲中的設計就可以一一走訪重要景點、了解景點相關知識；曾經去過的地方，也會有完全不一樣的感受。 \r\n假日想要有不一樣的休閒娛樂體驗，就來城市尋寶吧！ \r\n\r\n《寓教於樂》 \r\n我們想做的不只是娛樂，還是更有益處的娛樂；所以我們會在遊戲中融入一些知識和值得推廣的觀點，希望讓玩過我們遊戲的玩家，除了有愉快的一天之外，還能夠體會學習到新事物！', '', 'http://riddlecity.cc/', 'https://www.facebook.com/riddlecitytw', 'RiddleCity.jpg', '', 1, '戶外遊藝'),
(59, '玩轉城市', '', '台北一日遊的最佳選擇，真實景點解謎遊戲│玩轉城市。結合在地文化、推理解謎、城市探索、科技互動的實境遊戲，運用APP與實體遊戲盒與在的真實景點探索。玩轉城市透過賦予玩家故事情節及角色扮演，讓出遊過程彷若置身電影情節。', '', 'https://www.mysterycityadventure.com/', 'https://www.facebook.com/mysterycityadventure/', 'mysterycityadventure.jpg', '', 1, '戶外遊藝');

-- --------------------------------------------------------

--
-- 資料表結構 `company_city`
--

CREATE TABLE `company_city` (
  `id` int(11) NOT NULL,
  `cid` int(60) NOT NULL,
  `taipei` int(11) DEFAULT NULL,
  `newTaipei` int(11) DEFAULT NULL,
  `keelung` int(11) DEFAULT NULL,
  `taoyuan` int(11) DEFAULT NULL,
  `hsinchu_city` int(11) DEFAULT NULL,
  `hsinchu_country` int(11) DEFAULT NULL,
  `miaoli` int(11) DEFAULT NULL,
  `taichung` int(11) DEFAULT NULL,
  `changhua` int(11) DEFAULT NULL,
  `nantou` int(11) DEFAULT NULL,
  `yunlin` int(11) DEFAULT NULL,
  `chaiyi_city` int(11) DEFAULT NULL,
  `chiayi_country` int(11) DEFAULT NULL,
  `tainan` int(11) DEFAULT NULL,
  `kaohsiung` int(11) DEFAULT NULL,
  `pingtung` int(11) DEFAULT NULL,
  `taitung` int(11) DEFAULT NULL,
  `hualian` int(11) DEFAULT NULL,
  `yilan` int(11) DEFAULT NULL,
  `outer_island` int(11) DEFAULT NULL,
  `outdoor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `company_city`
--

INSERT INTO `company_city` (`id`, `cid`, `taipei`, `newTaipei`, `keelung`, `taoyuan`, `hsinchu_city`, `hsinchu_country`, `miaoli`, `taichung`, `changhua`, `nantou`, `yunlin`, `chaiyi_city`, `chiayi_country`, `tainan`, `kaohsiung`, `pingtung`, `taitung`, `hualian`, `yilan`, `outer_island`, `outdoor`) VALUES
(1, 1, 1, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 12, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 13, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 14, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 16, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 17, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 18, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 19, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(20, 20, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 21, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 22, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 23, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 24, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 26, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 27, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 28, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 29, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 30, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 31, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 32, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 33, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 34, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 48, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(58, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(59, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `company_comparison`
--

CREATE TABLE `company_comparison` (
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `company_comparison`
--

INSERT INTO `company_comparison` (`cid`, `sid`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 6),
(3, 7),
(4, 8),
(5, 9),
(6, 10),
(7, 11),
(7, 12),
(8, 13),
(9, 14),
(9, 15),
(10, 16),
(11, 17),
(12, 18),
(13, 19),
(14, 20),
(15, 21),
(16, 22),
(17, 23),
(17, 24),
(17, 25),
(17, 26),
(18, 27),
(19, 28),
(19, 29),
(19, 30),
(19, 31),
(19, 32),
(20, 33),
(21, 34),
(22, 35),
(23, 36),
(24, 37),
(25, 38),
(26, 39),
(26, 40),
(26, 41),
(27, 42),
(27, 43),
(27, 44),
(28, 45),
(29, 46),
(29, 47),
(29, 48),
(30, 49),
(31, 50),
(31, 51),
(32, 52),
(33, 53),
(33, 54),
(34, 55),
(34, 56),
(35, 57),
(36, 58),
(36, 59),
(36, 60),
(36, 61),
(37, 62),
(38, 63),
(39, 64),
(40, 65),
(41, 66),
(42, 67),
(43, 68),
(44, 69),
(45, 70),
(46, 71),
(47, 72),
(48, 73),
(48, 21),
(49, 74),
(50, 75),
(51, 76),
(52, 77),
(53, 78),
(54, 79),
(55, 80),
(56, 81),
(57, 82);

-- --------------------------------------------------------

--
-- 資料表結構 `company_test`
--

CREATE TABLE `company_test` (
  `cid` int(11) NOT NULL,
  `c_name` varchar(60) NOT NULL,
  `c_name_eng` varchar(60) NOT NULL,
  `c_intro` varchar(2000) NOT NULL,
  `c_intro_eng` varchar(2000) NOT NULL,
  `c_website` varchar(255) NOT NULL,
  `c_facebook` varchar(255) NOT NULL,
  `c_logo` varchar(30) NOT NULL,
  `c_hero` varchar(30) NOT NULL,
  `pageviews` int(11) NOT NULL,
  `city_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `company_test`
--

INSERT INTO `company_test` (`cid`, `c_name`, `c_name_eng`, `c_intro`, `c_intro_eng`, `c_website`, `c_facebook`, `c_logo`, `c_hero`, `pageviews`, `city_name`) VALUES
(1, '笨蛋工作室密室逃脫 Stupidparticle ', '', '為什麼叫『笨蛋工作室』？</br>\r\n我們認為，笨蛋是一種精神、一種勇氣！平常熱情瘋狂的我們，腦中充滿天馬行空的 idea，無論多瘋狂的創意，都要試著去實現。這就是StupidParticle的笨蛋精神！</br>\r\n『笨蛋』也代表著無論如何，都要堅持快樂的勇氣，快樂永遠都是生活中最重要的元素，但有太多人因為忙碌的生活而失去了追逐快樂的勇氣。笨蛋工作室致力於開發最多元的娛樂方式，堅持原創，全新風格的玩法，身歷其境的臨場體驗，將帶給你前所未有的震撼！</br>\r\n把快樂塞入每個人的腦袋裡！更進一步，藉由新型態的娛樂方式，提供寓教於樂，增進情感，培養默契等珍貴價值，拉近現代都市人之間逐漸疏遠的距離。無論如何，來和笨蛋們一起享受生活吧！                        ', '                                                    ', 'https://www.stupidparticle.com/', 'https://www.facebook.com/stupidparticle/', '', '', 1, '台北｜新竹｜台中'),
(2, 'QhAt帽子烤工廠', '', '在沒有出口的密室不斷尋找線索</br>\r\n解開前人留下的Questions，</br>\r\n找出屬於你的Answer。</br>\r\n</br>\r\n善用你腦中的火焰，任何細節可能都是關鍵。</br>\r\nQhAt帽子烤工廠，邀你一起烤出真相！！</br>', '', 'https://qhatex.wixsite.com/qhatextw', 'https://www.facebook.com/qhatextw/', 'qhat.jpg', '', 1, '台北'),
(3, '謎鹿實境遊戲工作室', '', '還記得在電腦前玩得密室逃脫遊戲嗎</br>\r\n是否希望能親自感受有如電影裡的情境空間</br>\r\n這次您能身歷其境</br>\r\n透過逼真的場景重現</br>\r\n絢麗的燈光效果與您意想不到的機關</br>\r\n和您最好的朋友組隊前來</br>\r\n展現您們的團隊合作力量</br>\r\n在精心打造的實境空間裡</br>\r\n解開一道又一道的謎題</br>\r\n了解故事的真相</br>\r\n成為故事裡的大英雄</br>', '', 'http://mysterymoosegame.wixsite.com/game?fbclid=IwAR2dRd2_OWBV9cv1bD_ARGqLrzAzd87jXbDvOJDfUL3GFFaHrubxRKdZNrE', 'https://www.facebook.com/MysteryMooseGame/', 'mysterymoose.jpg', '', 1, '新北'),
(4, 'FK工作室', '', '\"懸疑推理與解謎逃脫完美結合，你...能解開真相嗎?</br>\r\n來FK工作室體驗我們的友善、親切吧！\"</br>', '', '', 'https://www.facebook.com/FriendlyKindWorkshop/', 'FK.jpg', '', 1, '台北'),
(5, '貝爾豪斯工作室', '', '\"貝爾豪斯工作室專注於</br>\r\n開發與傳統密室體驗不同的實境遊戲，</br>\r\n並著重【解謎趣味】、【故事性】的開發設計，</br>\r\n從生活中的深刻經驗取材，</br>\r\n要給你最獨特的一段旅程！</br>\r\n</br>\r\n本工作室的主旨，</br>\r\n就是「尋找謎與人的連結」，</br>\r\n希望喜歡我們理念的朋友，</br>\r\n用力按「讚」、「分享」，</br>\r\n給我們前進的動力！\"</br>', '', 'http://www.bearhorsescape.com/', 'https://www.facebook.com/bearhorse2014/', 'BearHouse.jpg', '', 1, '新北'),
(6, 'Meet Chance覔見實境遊戲', '', '2016年底，創作實境體驗遊戲「秦關」 \r\n開辦至今22個月，已舉辦1500場遊戲 \r\n吸引超過12000名玩家前來體驗 \r\n希望藉由尋「覔」，看「見」 \r\n讓玩家充分享受遊戲，體驗箇中樂趣 \r\n並將持續深耕創作', '', '', 'https://www.facebook.com/meet.chances/', 'MeetChances.jpg', '', 1, '台北'),
(7, 'LOST Taiwan', '', '迷の密失，將真人密室逃脫遊戲呈現，被鎖在密室內，玩家必須使用房間的元素尋找線索來解決謎題\r\n並在指定時間之內逃出。密室內多種機關會給玩家帶來無限樂趣及體驗，\r\n同時可訓練及加強團隊間的 “理解”，“溝通”，“合作”和“觀察”能力。', '', 'https://www.losttw.com/home', 'https://www.facebook.com/losttw/', 'LostTaiwan.jpg', '', 1, '台北'),
(8, '頭癮創意遊戲', '', '密室逃脫遊戲為近幾年新興的實境團體益智遊戲，將您曾經在電腦上玩過的遊戲場景搬至現實生活當中，由您與好隊友們一起參加遊玩。\r\n遊戲過程將帶給您許多藉由分工合作、有效溝通、邏輯聯想而得到的成就感和體驗樂趣，和朋友與家人一起在五花八 門的遊戲場景當中過關斬將，在時間內一一解開每道謎題。將大家的智囊集結於一， 加上與大家同心協力，就會是成功逃脫的關鍵哦！\r\n【頭癮創意遊戲】是密室逃脫界的新星，開立不到半年時間，卻在許多玩家的口中得 到頗高的好評。我們由幾位喜愛密室逃脫的友人集結，期望能帶給密室遊戲玩家更多 的選擇，也期望因此可以為密室逃脫/實境遊戲獻出一份心力，讓更多人體驗優質遊玩 經驗。希望您來參加我們的遊戲，一起體驗密室逃脫/實境遊戲的樂趣！', '', 'https://hddcncreatives.wixsite.com/hddcngames', 'https://www.facebook.com/hddcngames/', 'HeaddictionGames.jpg', '', 1, '台北'),
(9, '壞主意工作室', '', '您想成為電影中的主角嗎？想親身經歷劇情帶來的刺激感嗎？那您千萬別錯過『壞主意工作室』！\r\n\r\n『壞主意工作室』由電影工作者、台大內科醫師，和清大生科碩士所創辦，遊戲體驗是『壞主意工作室』最重視的部分，因此，一開始『壞主意工作室』以環球影城為目標，希望能讓玩家完全徹底沉浸在密室遊戲中！', '', 'http://www.badideasstudio.com/', 'https://www.facebook.com/BadIdeasStudio/', 'badideas.jpg', '', 1, '台北｜新北'),
(10, 'Limitless Escape Room 極限密室', '', '', '', '', 'https://www.facebook.com/LimitlessEscapeRoom/', 'LimitlessEscapeRoom.jpg', '', 1, '台北'),
(11, 'Thougher 穿越者', '', 'Througher​ ​ ​穿越者 實境密室逃脫\r\n你有一天聽說，世上存在無數平行世界。 \r\n而你，具備穿越到那些平行世界的資格。 \r\n你會怎麼做？\r\n是優游平行世界當一個穿越者？\r\n是留在原來世界當一個普通人？\r\n何謂​Througher？\r\nThrough​ 意思是＂穿越＂ \r\n當你成功穿越時空，我們稱之為：​Througher穿越者\r\n歡迎來到​Througher​穿越者-實境密室逃脫', '', 'https://www.througher.com.tw/', 'https://www.facebook.com/Througher/', 'througher.jpg', '', 1, '新北'),
(12, '不讓你密室逃脫', '', '真實場景 x 多重機關 x 豐富劇情，是「不讓你密室逃脫」呈現密室遊戲堅持的原則。遊戲中帶你化身成劇中人物，親身體驗搜尋、解謎、逃脫的樂趣；透過團隊合作、訊息分享、動腦思考、邏輯推理，成就一次真人實境的電玩遊戲，體驗時下最熱門的密室逃脫。', '', 'https://burunningescape.wixsite.com/burunning', 'https://www.facebook.com/BuRunning/', 'burunning.jpg', '', 1, '台北'),
(13, '夢遊王國', '', '【夢遊王國 - 實境遊戲主題館】 \r\n歡迎來到夢遊王國！ \r\n在這裡，你可以體驗各式各樣的夢境； \r\n無論美夢惡夢，都將是無比真實的刺激冒險！ \r\n\r\n※ 睽違三年，重磅回歸 ※ \r\nRMT團隊醞釀三年，創作能量大爆發！ \r\n除了維持高規格的場景機關，更努力在遊戲形式、劇情帶入、體驗感受等力求突破， \r\n創造更全面性的實境遊戲體驗！ \r\n\r\n※ 主題場館，全新衝擊 ※ \r\n透過獨創世界觀，每款實境遊戲都幻化成獨一無二的夢境， \r\n只要像作夢般發揮想像力跟冒險精神，這裡就是最迷人的夢境遊樂園！', '', 'http://www.rmtofficial.com/dream94zz', 'https://www.facebook.com/dream94zz/', 'dream94zz.jpg', '', 1, '台北'),
(14, '謬舍 MEW³ Studio', '', '謬舍喜歡各式各樣靈感與巧思，突發奇想或荒誕不羈的點子。 \r\n專長是設計密室逃脫遊戲，致力於打造讓玩家印象深刻的密室逃脫主題故事。 \r\n正朝向 課程規劃、活動企劃、空間經營、藝文表演 等不同面向發展。 \r\n劇場主題密室逃脫遊戲[ B Case]火熱販售中。', '', 'https://mewwem3.wixsite.com/mew3studio?fbclid=IwAR1IN4HqBDgIv4JZTpjOdgPoxCEaES8rvjOIXzJSVncS9OOP2UK-e2eQfUo', 'https://www.facebook.com/Mewmewmewstudio/', 'mew3.jpg', '', 1, '台北'),
(15, '智慧獵人', '', '我們致力於將腦中的故事情境，無論是歡樂、溫馨或是驚悚、刺激，還是糾結、痛心的劇情，都能夠以電影般的特效呈現，在設計中不斷挑戰自己，期待能夠在每一款遊戲中創造出更多種不同的可能性。 \r\n\r\n也期望每一位玩家不僅是因為遊戲體驗能夠笑著離開，更會因為智慧獵人每一位獨特的說書者「透明人」感到記憶深刻。', '', 'http://www.wisdomhunter.me/', 'https://www.facebook.com/WH.Zone/', 'wisdomhunter.jpg', '', 1, '台北'),
(16, 'FunLock 放樂工作室', '', '活著就是要玩，玩出自己的人生！\r\n《FunLock活動創意社》成立於2013年，將原是網路解謎遊戲的密室逃脫搬到現實世界，推出第一代密室逃脫遊戲-「糖果屋脫出」，玩家必須在規定的時間內尋找關鍵線索 破解謎題，最終逃離房間。透過精心設計的機關，期許讓更多的玩家體驗到遊戲的樂趣！\r\n於2016年正名為《FunLock放樂工作室》', '', 'https://www.funlockstudio.com/', 'https://www.facebook.com/Funlockstudio/', 'Funlock.jpg', '', 1, '台北'),
(17, '4Fun Base 創意基地 密室逃脫', '', '4fun Base 致力於創造「有溫度」的真實互動遊戲，希望大家在追逐工作與生活的忙碌之餘，透過遊戲過程，能夠找回赤子之心，增進情誼，保持歡笑，與身邊的人創造特別的回憶。目前 4Fun Base 共有 四款實境遊戲-【奪寶令】,【阿瓦隆的背叛者II】,【直衝腦門】以及【淨化特區】，同時，4Fun Base 更致力於「教育及企業團體訂製活動」以及至「大型逃脫活動」，目前 4Fun Base 已為各企業與團體客製化舉行過多場百人逃脫遊戲，希望帶給大家的不只是歡樂與趣味，更能在遊戲中融入教育與企業理念的傳達', '', 'https://4funbase.wixsite.com/realgame?fbclid=IwAR2iTXlQhM8_YeiTuREKIM_1uYaaKJ0FlxWnOX2mDq9j4XKFVFBFeYFJUgg', 'https://www.facebook.com/4funbase/', '4funBase.jpg', '', 1, '台北'),
(18, 'Rostart 邏思起子實境遊戲工作室', '', '我們是一群熱血的年輕人，充滿著對這個世界的奇思妙想。 \r\n現在我們成立『邏思起子』 \r\n希望把我們對生活中覺得有趣、酷炫的idea一點一滴的實現出來。 \r\n如同一個簡單的羅賴把配上螺絲釘可以組裝起一間夢想城堡。 \r\n在這個夢想空間中 我們想與玩家一起分享我們的創意、快樂與感動。 \r\n因為你們的快樂就是我們的快樂', '', 'http://rostart0720.wixsite.com/rostart', 'https://www.facebook.com/RoStarT.Game/', 'RoStart.jpg', '', 1, '台北'),
(19, 'Miss Game', '', 'Miss GAME(密思創意行銷有限公司)自2012年暑假正式營運，係首度將密室逃脫依系列遊戲方式呈現之工作室，首創大型機關X故事情節X雙脫出！超越單純逃脫遊戲，更勝一場精采電影！\r\n\r\nMiss GAME期待透過每次的遊戲，不只讓玩家享受愉快的遊戲過程，更能帶走一個獨特的故事，並能傳遞正向並溫暖的訊息給每一位參與的人。\r\n\r\nMiss GAME預計推出之一系列以Miss GAME組織為背景的逃脫遊戲，每個密室中都藏著一個屬於組織某位成員的故事；組織以Miss Queen為首，成員則有\r\n\r\nMiss G、A、M、E 目前已推出【Miss GAME 前傳 鍊獄】、【Miss G 窒息的密室】、【Miss A 水獄逃脫】、【Miss M 絕境擴散】、【Mr. Game限時入侵】等你來挑戰！', '', 'https://www.missgame.com.tw/', 'https://www.facebook.com/MissGAMEq/', 'MissGame.jpg', '', 1, '台北｜宜蘭'),
(20, '藍色迴廊', '', '藍色迴廊跨足密室逃脫與戶外實境解謎遊戲。　我們有充足的設計經驗以及技術支援，能夠帶給玩家最貼近需求的遊戲體驗。\r\n我們關心每一個玩家的心情，用心服務每一位來玩的玩家。　這也是為什麼開業三年多以來，數千人次的體驗，獲得玩家一致好評。\r\n因此，為了響應各位的期待，我們一直不斷的在研發新的遊戲與活動，請繼續給藍色迴廊更多的支持！', '', 'http://hallway.com.tw/', 'https://www.facebook.com/HallwayRoomEscape/', 'hallway.jpg', '', 1, '新北'),
(21, '逃生門工作室', '', '《 逃生門 》以創新、合作、歡樂為宗旨！\r\n真人密室逃脫遊戲，可以幫助加強團隊之間的合作精神、溝通能力及邏輯思考的能力！', '', 'http://0escape.com.tw/', 'https://www.facebook.com/0escape/', 'exit.jpg', '', 1, '台北'),
(22, 'Escapeholics 密室逃脫 - EPIC', '', 'Escapeholics // 讓你瘋狂上癮的密室逃脫 !\r\n密室逃脫Ｘ遊戲設計Ｘ活動策劃Ｘ跨界合作Ｘ遊戲行銷', '', 'http://www.escapeholics.com/', 'https://www.facebook.com/Escapeholics/', 'Escapeholics.jpg', '', 1, '台北'),
(23, '台灣逃脫實境工作室', '', '', '', 'http://www.twescape.com/', 'https://www.facebook.com/twescape.taipei/', 'TWEscape.jpg', '', 1, '台北'),
(24, '玩笑實驗室', '', '《玩笑》熱愛縝密設計活動\r\n從構思故事謎題、道具機關，雖然生產速度不快，\r\n但有自信帶給玩家有品質的體驗\r\n\r\n為什麼想開《玩笑》？\r\n因為做密室逃脫非常需要不斷地實驗與挑戰！\r\n我們打造的空間\r\n是能激發玩家想像力、團結力的益智活動\r\n我們的目標很簡單：讓玩家們跌！破！眼！鏡！\r\n瘋狂《玩》瘋狂《笑》\r\n\r\n品牌宗旨：玩笑創意 跌破眼鏡', '', 'https://www.wanxiao.tw/', 'https://www.facebook.com/wanxiao.lab/', 'wanxiao.jpg', '', 1, '台北'),
(25, 'Xcape Taiwan', '', '', '', 'https://www.xcapetaiwan.com/', 'https://www.facebook.com/XcapeTaiwan/', 'xcapetaiwan.jpg', '', 1, '台北'),
(26, '頂級豬排工作室', '', '頂級豬排是一間密室逃脫工作室。 \r\n不是餐廳。', '', 'http://thekingpork.com/', 'https://www.facebook.com/thekingpork/', 'porkking.jpg', '', 1, '台北'),
(27, 'LOST真人密室逃脫', '', 'Lost團隊於2014年成立，至今已設計出十餘款熱門主題，我們秉持者「Real Touch、Touch Real」的理念，堅持帶給大眾最真實與主題互動的活動，對於Lost來說，密室逃脫不只是一場解謎競賽，而是像經歷一場扣人心弦、驚心動魄的冒險旅程；2014至今，Lost在全台各地區逐漸的拓展，期許帶給全台大眾最新、最身歷其境的活動內容！', '', 'http://www.lost-taiwan.com.tw/index.php', 'https://www.facebook.com/Lostrealgame/', 'LOST.jpg', '', 1, '桃園｜台中'),
(28, '智客堡密室逃脫', '', '透過富有故事情境的裝潢、激發腦力設計的謎題、創造團隊合力的遊戲流程，打造出緊張刺激的真人實境密室逃脫遊戲。桃園的智客堡密室逃脫，與桃園LOST、中壢A5及新竹格林跳、謎逃羔羊等同業共組密室逃脫地圖，合計24款主題。位於桃園觀光夜市旁的密室逃脫實境遊戲。', '', '', 'https://www.facebook.com/smartmancastle/', 'smartman.jpg', '', 1, '桃園'),
(29, 'A5 Studio-全員脫逃中', '', '桃園第一實境密室逃脫遊戲', '', '', 'https://www.facebook.com/A5escape/', 'A5Studio.jpg', '', 1, '桃園'),
(30, 'MR.5 謎逃羔羊 實境解謎遊戲', '', '新竹首屈一指的機關型密室工作室 \r\n玩法多變 跳脫一般密室既定印象 \r\n總帶給玩家更多的驚奇特效 \r\n我們創造的 不只是密室!!', '', 'https://mr5site.wordpress.com/', 'https://www.facebook.com/Mr.5escape/', 'mr5.jpg', '', 1, '新竹'),
(31, '格林跳-真實密室遊戲', '', '2013年一個偶然的契機，我們踏入了實境遊戲這個新冒出的產業，一群人在相聚之餘，設計著不同的遊戲，想讓更多人知道密室遊戲的魅力之處，2016年我們正式從原本的\"\"台灣逃脫\"\"改名為\"\"格林跳\"\"，確立了我們在這個產業中的風格定位。\r\n\r\n​格林跳是什麼?想帶給玩家什麼樣的感覺?\r\n\r\n​作為一個實境遊戲產業的業者，我們不斷在思考如何運用遊戲設計來影響社會，不談嚴肅的議題，只是為了讓生活更有趣，而有趣來自那些創意、奇幻詭譎與懸疑又美好的想像，因此，我們發現一切的源頭在於\"\"想像力\"\"，我們認為生活可以因為想像力而有不一樣，因此確立了我們的核心價值\"\"為生活加點神秘感\"\"是的，生活多麼需要一些神秘感，不論是設計或者被設計，我們多麼期待生活中突發的小驚喜，所以我們處心經營每一個故事，希望讓玩家驚喜連連。\r\n\r\n讓格林說個故事吧! 帶你跳入這場奇幻的冒險，我們期待您也能一同享受這段神秘冒險的旅程!!', '', 'https://www.grimmtell.com/', 'https://www.facebook.com/GrimmTell/', 'grimmtell.jpg', '', 1, '新竹'),
(32, '謎猴實境工作室', '', '真實密室逃脫遊戲，推出多款實境遊戲，享受腦力激盪的實境遊戲體驗。提供桌遊空間服務、輕食餐點。推廣泡泡足球的團隊活動。', '', 'http://service854.wixsite.com/mars', 'https://www.facebook.com/puzzle.monkey.kao/', 'puzzlemonkey.jpg', '', 1, '新竹'),
(33, '濤濤來工作室', '', '', '', '', 'https://www.facebook.com/tautaulai/', 'tautaulai.jpg', '', 1, '新竹'),
(34, 'Play Studio玩密室', '', '', '', '', 'https://www.facebook.com/playstudioescape/', 'PlayStudio.jpg', '', 1, '新竹'),
(35, 'CubeOrigin啟源方塊密室逃脫工作室', '', '精心設計的真人密室逃脫遊戲，由4～6名玩家組成的小組進入充滿任務及挑戰的密室空間當中，並且在1小時內找到線索和提示，完成任務後逃出密室', '', 'http://cubeorigin2013.wixsite.com/cube-origin', 'https://www.facebook.com/CUBEOrigin/', 'CUBEOrigin.jpg', '', 1, '台中'),
(36, '許多門實境解謎', '', '結合『實境解謎』+『團體動力』 \r\n\r\n『許多門』從2013年11月開始 \r\n\r\n已經設計過十多個完全不同風格的挑戰主題 \r\n\r\n提供超過12萬人次以上的挑戰經驗！ \r\n\r\n　 \r\n\r\n打造各種原創的情境和謎題， \r\n\r\n並結合多年團體動力的教學經驗，設計出新型態的創意溝通方式。 \r\n\r\n精緻的佈置和遊戲內容，絕對讓挑戰者身歷其境，化身成為電影主角。', '', 'http://www.doorsss.com', 'https://www.facebook.com/TCDOORSSS/', 'doorsss.jpg', '', 1, '台中｜嘉義｜台南｜高雄'),
(37, 'HiDe&SeeK 躲貓貓密室脫逃', '', '', '', '', 'https://www.facebook.com/HiDeSeeeK/', 'HIDE-SEEK.jpg', '', 1, '台中'),
(38, '神話密室脫逃工坊', '', '準備好進入遠古神話的探險了嗎? 傳說 宇宙初開，萬物復甦 人們口耳相傳的古老傳說 籠罩著神秘的色彩', '', '', 'https://www.facebook.com/MYTH.WorkingHouse/', 'myth.jpg', '', 1, '台中'),
(39, 'Funow煩腦密室逃脫工作室', '', 'Let\'s Fun NOW !', '', '', 'https://www.facebook.com/funowstudio/', 'funow.jpg', '', 1, '台中'),
(40, '實境密室逃脫-黑盒子工作室', '', '黑盒子工作室結合了劇場與心理學的概念\r\n除了解謎之外\r\n我們更著重於玩家在遊戲的過程中\r\n感受到了什麼\r\n\r\n\r\n「黑盒子實驗劇場」的精神\r\n就是在於改變既有的空間形式\r\n當密室逃脫的玩家進入到遊戲空間\r\n就如同進入劇場所塑造出的幻象裡面\r\n當我們將密室逃脫的重點從解謎融入到情境時\r\n這整個空間就形成了一場演出\r\n而玩家可以同時是演員，或觀眾\r\n在身歷其境的同時慢慢發現整齣劇所要傳達的故事與意涵\r\n正是我們創立的宗旨 \r\n密室與劇場的結合，更貼近內心的實境體驗\r\n主打『沈浸式劇場』\r\n結合密室的呈現方式來說一個故事\r\n邀請大家，一起來演一齣密室劇\r\n\r\n「黑盒子」，除了是劇場概念外\r\n它也同時是心理學不陌生的名詞\r\n其被定義為人在接受外在環境刺激，進而產生反應的過程\r\n然而內在變化與處理的機制\r\n就行為學派的角度而言，黑盒子裡是什麼，似乎沒那麼重要\r\n但人之所以有趣、創意，正在於這個外面可見，內容無限的化學反應過程\r\n可以想見當不同玩家面對一個陌生空間、一道謎題，\r\n各自內裡會產生了什麼樣的變化呢?\r\n或許在\"\"黑盒子\"\"裡，能夠讓我們更了解「黑盒子」的運作\r\n\r\n\r\n「黑盒子工作室」結合了這兩種概念\r\n最希望的就是玩家在進行遊戲的過程\r\n不只是密室逃脫的解謎\r\n還可以沉浸在我們劇情中，在內心中激盪出更多豐富的感受', '', 'https://www.mindinblackbox.com/?fbclid=IwAR2AClHYoFGXQualdHwoq1ZWHWtH5MrZh9jf4Hdg9XEvB0kev1P-iyQku3E', 'https://www.facebook.com/MindInBlackbox/', 'blackbox.jpg', '', 1, '台中'),
(41, 'Loop迴圈工作室-台中實境密室逃脫館', '', '一群瘋密室逃脫的好友，\r\n有的期待機關，有的著重謎題，\r\n有的計較故事。 \r\n我們將您帶入場景，\r\n用謎題讓你思考，\r\n用機關讓您驚艷，\r\n​佐故事讓您留戀。\r\n我們將帶給您前所未見的\r\n​逃脫成功快感。', '', 'http://www.loopescape.com/', 'https://www.facebook.com/loopescape/', 'Loop.jpg', '', 1, '台中'),
(42, 'SWING Escape', '', 'Swing Escape首波主打遊戲主題：\r\n殤城以及竊命·牽羊\r\n燒腦、機關、劇情一次滿足！\r\n挑戰性十足的密室實境遊戲！\r\n我們的營業時間為\r\n上午10:30-晚上9:30\r\n如果宵夜場想體驗的玩家\r\n可以電話預約哦~~~', '', '', 'https://www.facebook.com/SWING-Escape-413606089069707/', 'SWINGEscape.jpg', '', 1, '台中'),
(43, 'AngeLost真人實境密室', '', '', '', '', 'https://www.facebook.com/AngeLostEscape/', 'AngeLost.jpg', '', 1, '台中'),
(44, '烏嘎嘎工作室', '', '我們店有超過700款遊戲\r\n有豐富的桌遊活動舉辦經驗\r\n同時也有合作的桌遊教師\r\n店內亦備有150吋投影幕可支援活動\r\n如果有合作需求 歡迎詳談', '', '', 'https://www.facebook.com/UGG5F/', 'ugg.jpg', '', 1, '台中'),
(45, '哇沙謎創意工作室', '', '', '', '', 'https://www.facebook.com/wasabicreative/', 'wasabi.jpg', '', 1, '台中'),
(46, '麗寶樂園密室逃脫', '', '', '', 'http://www.lihpaoresort.com/LihpaolandApp/Home/Escape', '', 'libao.jpg', '', 1, '台中'),
(47, '妖怪村桃樂趣實境遊戲', '', '高雄 南投 密室逃脫遊戲，負責企業內訓、密室脫逃活動企劃等，另有溪頭妖怪村主題與痞子英雄主題，特設新手專門遊戲，於高雄有雙場地的密室脫逃，同時在高雄夢時代內有三款的密室逃脫主題，其中密室逃脫主題－「夢遊馬戲團」是專為新手設計的入門款密室脫逃，目前體驗過館內密室逃脫主題的玩家已達萬人，同時亦與高雄痞子英雄合作，於高雄夢時代旁的痞子英雄館內有百萬場請打照的電影主題密室逃脫遊戲，其中場景皆使用電影及電視劇所使用的道具，是全臺第一款由電影與密室合作的實境密室脫逃！', '', '', 'https://www.facebook.com/peachexit', 'peachfun.jpg', '', 1, '南投'),
(48, '神不在場實境遊戲', '', '我們是一群熱愛玩遊戲的人，所以也想能做出好玩的遊戲讓大家玩！ \r\n\r\n於是開始致力創作有趣的實境遊戲，並且多方嘗試設計新型態的實體遊戲體驗。 \r\n\r\n我們期待能在這科技發達、虛擬世界蓬勃的世代， \r\n\r\n能讓人與人之間的連結彼此貼近、與實體空間的互動更加緊密。 \r\n\r\n當然最重要的是，希望大家能從神不在場的遊戲中，獲得樂趣、感到開心！ \r\n\r\n若您玩完之後會笑著說：「好玩！」是您對我們最好的評語。', '', 'https://www.taog-game.com', 'https://www.facebook.com/taog.game/', 'taog-game.jpg', '', 1, '台北｜台南'),
(49, '桃樂趣密室逃脫', '', '高雄 南投 密室逃脫遊戲，負責企業內訓、密室脫逃活動企劃等，另有溪頭妖怪村主題與痞子英雄主題，特設新手專門遊戲，於高雄有雙場地的密室脫逃，同時在高雄夢時代內有三款的密室逃脫主題，其中密室逃脫主題－「夢遊馬戲團」是專為新手設計的入門款密室脫逃，目前體驗過館內密室逃脫主題的玩家已達萬人，同時亦與高雄痞子英雄合作，於高雄夢時代旁的痞子英雄館內有百萬場請打照的電影主題密室逃脫遊戲，其中場景皆使用電影及電視劇所使用的道具，是全臺第一款由電影與密室合作的實境密室脫逃！', '', 'http://www.peachfun.com/', 'https://www.facebook.com/peachfundreammall/', 'peachfunks.jpg', '', 1, '高雄'),
(50, '羊逃密室逃脫工作室', '', '高雄在地 唯一有劇情推理的 密室逃脫 \r\n挑戰你的智慧 發揮團隊的能力 \r\n在有限的時間內 \r\n解出重重關卡 \r\n逃出密室', '', 'http://www.runsheepsrun.com/', 'https://www.facebook.com/runsheepsrun', 'runsheepsrun.jpg', '', 1, '高雄'),
(51, '逃出香港', '', '《逃出香港!》臺灣站是我們引進香港首家真人密室逃脱遊戲，致力為大家提供嶄新概念的娛樂方式。除了精心設計全新密室外，更破天荒為每間密室編上劇情，務求令玩家仿如身處電影故事之中：你要在限時之內，找出線索，解開謎題，逃出密室，否則後果不堪切想！', '', 'http://www.freeing.tw/', 'https://www.facebook.com/freeingtaiwan', 'freeing.jpg', '', 1, '高雄'),
(52, 'Canpss密室逃脫', '', '我們是Canpass密室逃脫工作室，我們希望帶給玩家一個有趣、刺激、新 鮮的密室逃脫體驗，因此除了普通的鑰匙或是密碼鎖外，更致力於獨立開發新 型的電子機關鎖。', '', 'http://canpass.com.tw/index.html', 'https://www.facebook.com/canpass.com.tw', 'CANPASS.jpg', '', 1, '高雄'),
(53, 'Dr.小頭密室逃脫工作室', '', '帶給玩家快樂，是我們一直以來的使命 \r\n在電腦、電視、手機幾乎占據生活的一個時代 \r\n工作室致力於創造一種人與人間最單純的關係 \r\n在這網際網路越來越發達的社會中 \r\n一起拒絕當個低頭族 \r\n相聚歡笑、面對面溝通、互相協助 \r\n製造更多人與人間相處的機會與歡樂', '', 'http://drhead-kh.weebly.com/', 'https://www.facebook.com/SIAOTOU2015/', 'DrHead.jpg', '', 1, '高雄'),
(54, '爆炸先生密室逃脫工作室', '', '團隊發想初期是以想要給人們一種歡樂的氣氛為出發點，在團隊日朝夜想的爆炸先生就誕生了！ \r\n在電腦、電視、手機幾乎佔據生活全部的一個時代 \r\n工作室致力於創造一種人與人間最單純的互動。 \r\n藉著遊戲，讓人們相聚 \r\n藉著遊戲，讓人們面對面溝通 \r\n藉著遊戲，讓人們互相協助 \r\n藉著遊戲，讓人們找回人與人之間專屬的一種溫暖', '', 'http://mr-bomb.weebly.com/', 'https://www.facebook.com/Mr.Bomb2015', 'mrbomb.jpg', '', 1, '高雄'),
(55, '獵時者遊戲工作室', '', '', '', 'http://timehunter2016.weebly.com/', 'https://www.facebook.com/timehunter2016/', 'timehunter.jpg', '', 1, '高雄'),
(56, '夢罟密室逃脫', '', '夢罟，或稱捕夢網。 \r\n捕夢網的用意為捕捉好夢，驅除壞夢。又有祈求平安帶來好運的意思。由三個喜愛密室逃脫的女孩子一點一滴的動手編織一個個美夢，期望將所有好夢帶給每個玩家。', '', 'https://dreamcatcher311313.wixsite.com/mysite', 'https://www.facebook.com/dreamcatcher0721/', 'dreamcatcher.jpg', '', 1, '高雄'),
(57, '梅林的鬍子遊戲工作室', '', '「梅林的鬍子」遊戲工作室 \r\n提供優質密室體驗遊戲空間及桌遊販售租借。 \r\n\r\n「梅林的鬍子」源於哈利波特小說裡常用口頭禪， \r\n也就是「Oh My God !我的天呀!」的意思， \r\n歡樂其實就在你的親朋好友身邊！', '', 'http://yilanmerlinsbeard.wixsite.com/merlinsbeardstudio', 'https://www.facebook.com/merlinsbeardstudio/', 'MerlinsBeard.jpg', '', 1, '宜蘭'),
(58, '城市尋寶', '', '《讓周遭的現實變得神祕又有趣》 \r\n牆壁上看似隨性的塗鴉，其實是指引寶藏的線索!? \r\n在巷子裡拾荒的老婦，其實是某祕密組織的指路人!? \r\n透過賦予現實環境新意義的遊戲設計， \r\n希望讓大家對原本習以為常的周遭有新的體悟， \r\n能夠隨時留心，發現這城市中的寶藏和樂趣！ \r\n\r\n《假日休閒娛樂新選擇》 \r\n走出戶外親近大自然，還能真實體驗電影裡的尋寶冒險旅程。 \r\n出遊前不需要再做功課，跟著遊戲中的設計就可以一一走訪重要景點、了解景點相關知識；曾經去過的地方，也會有完全不一樣的感受。 \r\n假日想要有不一樣的休閒娛樂體驗，就來城市尋寶吧！ \r\n\r\n《寓教於樂》 \r\n我們想做的不只是娛樂，還是更有益處的娛樂；所以我們會在遊戲中融入一些知識和值得推廣的觀點，希望讓玩過我們遊戲的玩家，除了有愉快的一天之外，還能夠體會學習到新事物！', '', 'http://riddlecity.cc/', 'https://www.facebook.com/riddlecitytw', 'RiddleCity.jpg', '', 1, '戶外遊藝'),
(59, '玩轉城市', '', '台北一日遊的最佳選擇，真實景點解謎遊戲│玩轉城市。結合在地文化、推理解謎、城市探索、科技互動的實境遊戲，運用APP與實體遊戲盒與在的真實景點探索。玩轉城市透過賦予玩家故事情節及角色扮演，讓出遊過程彷若置身電影情節。', '', 'https://www.mysterycityadventure.com/', 'https://www.facebook.com/mysterycityadventure/', 'mysterycityadventure.jpg', '', 1, '戶外遊藝'),
(60, '天才', '', '', '', '', '', '', '', 0, NULL),
(61, '天才二', 'ggfgf', 'fsdfsd\r\nfdsfsd', '', 'https://www.google.com', '', '', '', 0, NULL),
(63, '天才四', '', '', '', '', '', '', '城市尋寶_串城流浪記_01.png', 0, NULL),
(64, '天才五', 'OK', '                                                    選\r\n舉\r\n無\r\n效\r\n之\r\n樹                                                ', '                                                        su\r\nbu\r\nki                                                ', 'https://www.google.com', 'https://www.facebook.com', '', '', 0, NULL),
(65, '天天才', 'Genius', '安安\r\n我是天才', 'Hi\r\nI am Genius', 'https://www.google.com', 'https://www.facebook.com', '城市尋寶_尖山陶寶_01.png', '獵時者遊戲工作室_大魔術師之幻崛_01.jpg', 0, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `gamefeature`
--

CREATE TABLE `gamefeature` (
  `id` int(5) NOT NULL,
  `gid` int(5) NOT NULL,
  `feature` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `gamefeature`
--

INSERT INTO `gamefeature` (`id`, `gid`, `feature`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 1),
(15, 15, 2),
(16, 16, 3),
(17, 17, 4),
(18, 18, 5),
(19, 19, 6),
(20, 20, 7),
(21, 21, 8),
(22, 22, 9),
(23, 23, 10),
(24, 24, 11),
(25, 25, 12),
(26, 26, 13),
(27, 27, 1),
(28, 28, 2),
(29, 29, 3),
(30, 30, 4),
(31, 31, 5),
(32, 32, 6),
(33, 33, 7),
(34, 34, 8),
(35, 35, 9),
(36, 36, 10),
(37, 37, 11),
(38, 38, 12),
(39, 39, 13),
(40, 40, 1),
(41, 41, 2),
(42, 42, 3),
(43, 43, 4),
(44, 44, 5),
(45, 45, 6),
(46, 46, 7),
(47, 47, 8),
(48, 48, 9),
(49, 49, 10),
(50, 50, 11),
(51, 51, 12),
(52, 52, 13),
(53, 53, 1),
(54, 54, 2),
(55, 55, 3),
(56, 56, 4),
(57, 57, 5),
(58, 58, 6),
(59, 59, 7),
(60, 60, 8),
(61, 61, 9),
(62, 62, 10),
(63, 63, 11),
(64, 64, 12),
(65, 65, 13),
(66, 66, 1),
(67, 67, 2),
(68, 68, 3),
(69, 69, 4),
(70, 70, 5),
(71, 71, 6),
(72, 72, 7),
(73, 73, 8),
(74, 74, 9),
(75, 75, 10),
(76, 76, 11),
(77, 77, 12),
(78, 78, 13),
(79, 79, 1),
(80, 80, 2),
(81, 81, 3),
(82, 82, 4),
(83, 83, 5),
(84, 84, 6),
(85, 85, 7),
(86, 86, 8),
(87, 87, 9),
(88, 88, 10),
(89, 89, 11),
(90, 90, 12),
(91, 91, 13),
(92, 92, 1),
(93, 93, 2),
(94, 94, 3),
(95, 95, 4),
(96, 96, 5),
(97, 97, 6),
(98, 98, 7),
(99, 99, 8),
(100, 100, 9),
(101, 101, 10),
(102, 102, 11),
(103, 103, 12),
(104, 104, 13),
(105, 105, 1),
(106, 106, 2),
(107, 107, 3),
(108, 108, 4),
(109, 109, 5),
(110, 110, 6),
(111, 111, 7),
(112, 112, 8),
(113, 113, 9),
(114, 114, 10),
(115, 115, 11),
(116, 116, 12),
(117, 117, 13),
(118, 118, 1),
(119, 119, 2),
(120, 120, 3),
(121, 121, 4),
(122, 122, 5),
(123, 123, 6),
(124, 124, 7),
(125, 125, 8),
(126, 126, 9),
(127, 127, 10),
(128, 128, 11),
(129, 129, 12),
(130, 130, 13),
(131, 131, 1),
(132, 132, 2),
(133, 133, 3),
(134, 134, 4),
(135, 135, 5),
(136, 136, 6),
(137, 137, 7),
(138, 138, 8),
(139, 139, 9),
(140, 140, 10),
(141, 141, 11),
(142, 142, 12),
(143, 143, 13),
(144, 144, 1),
(145, 145, 2),
(146, 146, 3),
(147, 147, 4),
(148, 148, 5),
(149, 149, 6),
(150, 150, 7),
(151, 151, 8),
(152, 152, 9),
(153, 153, 10),
(154, 154, 11),
(155, 155, 12),
(156, 156, 13),
(157, 157, 1),
(158, 158, 2),
(159, 159, 3),
(160, 160, 4),
(161, 161, 5),
(162, 162, 6),
(163, 163, 7),
(164, 164, 8),
(165, 165, 9),
(166, 166, 10),
(167, 167, 11),
(168, 168, 12),
(169, 169, 13),
(170, 170, 1),
(171, 171, 2),
(172, 172, 3),
(173, 173, 4),
(174, 174, 5),
(175, 175, 6),
(176, 176, 7),
(177, 177, 8),
(178, 178, 9),
(179, 179, 10),
(180, 180, 11),
(181, 181, 12),
(182, 182, 13),
(183, 183, 1),
(184, 184, 2),
(185, 185, 3),
(186, 186, 4),
(187, 187, 5),
(188, 188, 6),
(189, 189, 7),
(190, 190, 8),
(191, 191, 9),
(192, 192, 10),
(193, 193, 11),
(194, 194, 12),
(195, 195, 13),
(196, 196, 1),
(197, 197, 2),
(198, 198, 3),
(199, 199, 4),
(200, 200, 5),
(201, 201, 6),
(202, 202, 7),
(203, 203, 8),
(204, 204, 9),
(205, 205, 10),
(206, 206, 11),
(207, 207, 12),
(208, 208, 13),
(209, 209, 1),
(210, 210, 2),
(211, 211, 3),
(212, 212, 4),
(213, 213, 5),
(214, 214, 6),
(215, 215, 7),
(216, 216, 8),
(217, 217, 9),
(218, 218, 10),
(219, 219, 11),
(220, 220, 12),
(221, 221, 13),
(222, 222, 1),
(223, 223, 2),
(224, 224, 3),
(225, 225, 4),
(226, 226, 5),
(227, 227, 6),
(228, 228, 7),
(229, 229, 8),
(230, 230, 9),
(231, 231, 10),
(232, 232, 11),
(233, 233, 12),
(234, 234, 13),
(235, 235, 1),
(236, 236, 2),
(237, 237, 3),
(238, 238, 4),
(239, 239, 5),
(240, 240, 6),
(241, 241, 7),
(242, 242, 8),
(243, 243, 9),
(244, 244, 10),
(245, 245, 11),
(246, 246, 12),
(247, 247, 13),
(248, 248, 1),
(249, 249, 2),
(250, 250, 3),
(251, 251, 4),
(252, 252, 5),
(253, 253, 6),
(254, 254, 7),
(255, 255, 8),
(256, 256, 9),
(257, 257, 10),
(258, 258, 11),
(259, 259, 12),
(260, 260, 13),
(261, 261, 1),
(262, 262, 2),
(263, 263, 3),
(264, 264, 4),
(265, 265, 5),
(266, 1, 6),
(267, 2, 7),
(268, 3, 8),
(269, 4, 9),
(270, 5, 10),
(271, 6, 11),
(272, 7, 12),
(273, 8, 13),
(274, 9, 1),
(275, 10, 2),
(276, 11, 3),
(277, 12, 4),
(278, 13, 5),
(279, 14, 6),
(280, 15, 7),
(281, 16, 8),
(282, 17, 9),
(283, 18, 10),
(284, 19, 11),
(285, 20, 12),
(286, 21, 13),
(287, 22, 1),
(288, 23, 2),
(289, 24, 3),
(290, 25, 4),
(291, 26, 5),
(292, 27, 6),
(293, 28, 7),
(294, 29, 8),
(295, 30, 9),
(296, 31, 10),
(297, 32, 11),
(298, 33, 12),
(299, 34, 13),
(300, 35, 1),
(301, 36, 2),
(302, 37, 3),
(303, 38, 4),
(304, 39, 5),
(305, 40, 6),
(306, 41, 7),
(307, 42, 8),
(308, 43, 9),
(309, 44, 10),
(310, 45, 11),
(311, 46, 12),
(312, 47, 13),
(313, 48, 1),
(314, 49, 2),
(315, 50, 3),
(316, 51, 4),
(317, 52, 5),
(318, 53, 6),
(319, 54, 7),
(320, 55, 8),
(321, 56, 9),
(322, 57, 10),
(323, 58, 11),
(324, 59, 12),
(325, 60, 13),
(326, 61, 1),
(327, 62, 2),
(328, 63, 3),
(329, 64, 4),
(330, 65, 5),
(331, 66, 6),
(332, 67, 7),
(333, 68, 8),
(334, 69, 9),
(335, 70, 10),
(336, 71, 11),
(337, 72, 12),
(338, 73, 13),
(339, 74, 1),
(340, 75, 2),
(341, 76, 3),
(342, 77, 4),
(343, 78, 5),
(344, 79, 6),
(345, 80, 7),
(346, 81, 8),
(347, 82, 9),
(348, 83, 10),
(349, 84, 11),
(350, 85, 12),
(351, 86, 13),
(352, 87, 1),
(353, 88, 2),
(354, 89, 3),
(355, 90, 4),
(356, 91, 5),
(357, 92, 6),
(358, 93, 7),
(359, 94, 8),
(360, 95, 9),
(361, 96, 10),
(362, 97, 11),
(363, 98, 12),
(364, 99, 13),
(365, 100, 1),
(366, 101, 2),
(367, 102, 3),
(368, 103, 4),
(369, 104, 5),
(370, 105, 6),
(371, 106, 7),
(372, 107, 8),
(373, 108, 9),
(374, 109, 10),
(375, 110, 11),
(376, 111, 12),
(377, 112, 13),
(378, 113, 1),
(379, 114, 2),
(380, 115, 3),
(381, 116, 4),
(382, 117, 5),
(383, 118, 6),
(384, 119, 7),
(385, 120, 8),
(386, 121, 9),
(387, 122, 10),
(388, 123, 11),
(389, 124, 12),
(390, 125, 13),
(391, 126, 1),
(392, 127, 2),
(393, 128, 3),
(394, 129, 4),
(395, 130, 5),
(396, 131, 6),
(397, 132, 7),
(398, 133, 8),
(399, 134, 9),
(400, 135, 10),
(401, 136, 11),
(402, 137, 12),
(403, 138, 13),
(404, 139, 1),
(405, 140, 2),
(406, 141, 3),
(407, 142, 4),
(408, 143, 5),
(409, 144, 6),
(410, 145, 7),
(411, 146, 8),
(412, 147, 9),
(413, 148, 10),
(414, 149, 11),
(415, 150, 12),
(416, 151, 13),
(417, 152, 1),
(418, 153, 2),
(419, 154, 3),
(420, 155, 4),
(421, 156, 5),
(422, 157, 6),
(423, 158, 7),
(424, 159, 8),
(425, 160, 9),
(426, 161, 10),
(427, 162, 11),
(428, 163, 12),
(429, 164, 13),
(430, 165, 1),
(431, 166, 2),
(432, 167, 3),
(433, 168, 4),
(434, 169, 5),
(435, 170, 6),
(436, 171, 7),
(437, 172, 8),
(438, 173, 9),
(439, 174, 10),
(440, 175, 11),
(441, 176, 12),
(442, 177, 13),
(443, 178, 1),
(444, 179, 2),
(445, 180, 3),
(446, 181, 4),
(447, 182, 5),
(448, 183, 6),
(449, 184, 7),
(450, 185, 8),
(451, 186, 9),
(452, 187, 10),
(453, 188, 11),
(454, 189, 12),
(455, 190, 13),
(456, 191, 1),
(457, 192, 2),
(458, 193, 3),
(459, 194, 4),
(460, 195, 5),
(461, 196, 6),
(462, 197, 7),
(463, 198, 8),
(464, 199, 9),
(465, 200, 10),
(466, 201, 11),
(467, 202, 12),
(468, 203, 13),
(469, 204, 1),
(470, 205, 2),
(471, 206, 3),
(472, 207, 4),
(473, 208, 5),
(474, 209, 6),
(475, 210, 7),
(476, 211, 8),
(477, 212, 9),
(478, 213, 10),
(479, 214, 11),
(480, 215, 12),
(481, 216, 13),
(482, 217, 1),
(483, 218, 2),
(484, 219, 3),
(485, 220, 4),
(486, 221, 5),
(487, 222, 6),
(488, 223, 7),
(489, 224, 8),
(490, 225, 9),
(491, 226, 10),
(492, 227, 11),
(493, 228, 12),
(494, 229, 13),
(495, 230, 1),
(496, 231, 2),
(497, 232, 3),
(498, 233, 4),
(499, 234, 5),
(500, 235, 6),
(501, 236, 7),
(502, 237, 8),
(503, 238, 9),
(504, 239, 10),
(505, 240, 11),
(506, 241, 12),
(507, 242, 13),
(508, 243, 1),
(509, 244, 2),
(510, 245, 3),
(511, 246, 4),
(512, 247, 5),
(513, 248, 6),
(514, 249, 7),
(515, 250, 8),
(516, 251, 9),
(517, 252, 10),
(518, 253, 11),
(519, 254, 12),
(520, 255, 13),
(521, 256, 1),
(522, 257, 2),
(523, 258, 3),
(524, 259, 4),
(525, 260, 5),
(526, 261, 6),
(527, 262, 7),
(528, 263, 8),
(529, 264, 9),
(530, 265, 10),
(531, 1, 11),
(532, 2, 12),
(533, 3, 13),
(534, 4, 1),
(535, 5, 2),
(536, 6, 3),
(537, 7, 4),
(538, 8, 5),
(539, 9, 6),
(540, 10, 7),
(541, 11, 8),
(542, 12, 9),
(543, 13, 10),
(544, 14, 11),
(545, 15, 12),
(546, 16, 13),
(547, 17, 1),
(548, 18, 2),
(549, 19, 3),
(550, 20, 4),
(551, 21, 5),
(552, 22, 6),
(553, 23, 7),
(554, 24, 8),
(555, 25, 9),
(556, 26, 10),
(557, 27, 11),
(558, 28, 12),
(559, 29, 13),
(560, 30, 1),
(561, 31, 2),
(562, 32, 3),
(563, 33, 4),
(564, 34, 5),
(565, 35, 6),
(566, 36, 7),
(567, 37, 8),
(568, 38, 9),
(569, 39, 10),
(570, 40, 11),
(571, 41, 12),
(572, 42, 13),
(573, 43, 1),
(574, 44, 2),
(575, 45, 3),
(576, 46, 4),
(577, 47, 5),
(578, 48, 6),
(579, 49, 7),
(580, 50, 8),
(581, 51, 9),
(582, 52, 10),
(583, 53, 11),
(584, 54, 12),
(585, 55, 13),
(586, 56, 1),
(587, 57, 2),
(588, 58, 3),
(589, 59, 4),
(590, 60, 5),
(591, 61, 6),
(592, 62, 7),
(593, 63, 8),
(594, 64, 9),
(595, 65, 10),
(596, 66, 11),
(597, 67, 12),
(598, 68, 13),
(599, 69, 1),
(600, 70, 2),
(601, 71, 3),
(602, 72, 4),
(603, 73, 5),
(604, 74, 6),
(605, 75, 7),
(606, 76, 8),
(607, 77, 9),
(608, 78, 10),
(609, 79, 11),
(610, 80, 12),
(611, 81, 13),
(612, 82, 1),
(613, 83, 2),
(614, 84, 3),
(615, 85, 4),
(616, 86, 5),
(617, 87, 6),
(618, 88, 7),
(619, 89, 8),
(620, 90, 9),
(621, 91, 10),
(622, 92, 11),
(623, 93, 12),
(624, 94, 13),
(625, 95, 1),
(626, 96, 2),
(627, 97, 3),
(628, 98, 4),
(629, 99, 5),
(630, 100, 6),
(631, 101, 7),
(632, 102, 8),
(633, 103, 9),
(634, 104, 10),
(635, 105, 11),
(636, 106, 12),
(637, 107, 13),
(638, 108, 1),
(639, 109, 2),
(640, 110, 3),
(641, 111, 4),
(642, 112, 5),
(643, 113, 6),
(644, 114, 7),
(645, 115, 8),
(646, 116, 9),
(647, 117, 10),
(648, 118, 11),
(649, 119, 12),
(650, 120, 13),
(651, 121, 1),
(652, 122, 2),
(653, 123, 3),
(654, 124, 4),
(655, 125, 5),
(656, 126, 6),
(657, 127, 7),
(658, 128, 8),
(659, 129, 9),
(660, 130, 10),
(661, 131, 11),
(662, 132, 12),
(663, 133, 13),
(664, 134, 1),
(665, 135, 2),
(666, 136, 3),
(667, 137, 4),
(668, 138, 5),
(669, 139, 6),
(670, 140, 7),
(671, 141, 8),
(672, 142, 9),
(673, 143, 10),
(674, 144, 11),
(675, 145, 12),
(676, 146, 13),
(677, 147, 1),
(678, 148, 2),
(679, 149, 3),
(680, 150, 4),
(681, 151, 5),
(682, 152, 6),
(683, 153, 7),
(684, 154, 8),
(685, 155, 9),
(686, 156, 10),
(687, 157, 11),
(688, 158, 12),
(689, 159, 13),
(690, 160, 1),
(691, 161, 2),
(692, 162, 3),
(693, 163, 4),
(694, 164, 5),
(695, 165, 6),
(696, 166, 7),
(697, 167, 8),
(698, 168, 9),
(699, 169, 10),
(700, 170, 11),
(701, 171, 12),
(702, 172, 13),
(703, 173, 1),
(704, 174, 2),
(705, 175, 3),
(706, 176, 4),
(707, 177, 5),
(708, 178, 6),
(709, 179, 7),
(710, 180, 8),
(711, 181, 9),
(712, 182, 10),
(713, 183, 11),
(714, 184, 12),
(715, 185, 13),
(716, 186, 1),
(717, 187, 2),
(718, 188, 3),
(719, 189, 4),
(720, 190, 5),
(721, 191, 6),
(722, 192, 7),
(723, 193, 8),
(724, 194, 9),
(725, 195, 10),
(726, 196, 11),
(727, 197, 12),
(728, 198, 13),
(729, 199, 1),
(730, 200, 2),
(731, 201, 3),
(732, 202, 4),
(733, 203, 5),
(734, 204, 6),
(735, 205, 7),
(736, 206, 8),
(737, 207, 9),
(738, 208, 10),
(739, 209, 11),
(740, 210, 12),
(741, 211, 13),
(742, 212, 1),
(743, 213, 2),
(744, 214, 3),
(745, 215, 4),
(746, 216, 5),
(747, 217, 6),
(748, 218, 7),
(749, 219, 8),
(750, 220, 9),
(751, 221, 10),
(752, 222, 11),
(753, 223, 12),
(754, 224, 13),
(755, 225, 1),
(756, 226, 2),
(757, 227, 3),
(758, 228, 4),
(759, 229, 5),
(760, 230, 6),
(761, 231, 7),
(762, 232, 8),
(763, 233, 9),
(764, 234, 10),
(765, 235, 11),
(766, 236, 12),
(767, 237, 13),
(768, 238, 1),
(769, 239, 2),
(770, 240, 3),
(771, 241, 4),
(772, 242, 5),
(773, 243, 6),
(774, 244, 7),
(775, 245, 8),
(776, 246, 9),
(777, 247, 10),
(778, 248, 11),
(779, 249, 12),
(780, 250, 13),
(781, 251, 1),
(782, 252, 2),
(783, 253, 3),
(784, 254, 4),
(785, 255, 5),
(786, 256, 6),
(787, 257, 7),
(788, 258, 8),
(789, 259, 9),
(790, 260, 10),
(791, 261, 11),
(792, 262, 12),
(793, 263, 13),
(794, 264, 1),
(795, 265, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `game_cate`
--

CREATE TABLE `game_cate` (
  `SID` int(11) NOT NULL,
  `CATE_NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `game_cate`
--

INSERT INTO `game_cate` (`SID`, `CATE_NAME`) VALUES
(1, '新手入門'),
(2, '中度玩家'),
(3, '重度解謎'),
(4, '偵探推理'),
(5, '機關重重'),
(6, '劇情厲害'),
(7, '場景逼真'),
(8, '輕鬆歡樂'),
(9, '恐怖驚悚'),
(10, '緊張刺激'),
(11, '勾心鬥角'),
(12, '團隊合作'),
(13, '親子同遊');

-- --------------------------------------------------------

--
-- 資料表結構 `markers`
--

CREATE TABLE `markers` (
  `sid` int(11) NOT NULL,
  `s_name` varchar(60) NOT NULL,
  `site_name` varchar(20) DEFAULT NULL,
  `s_name_eng` varchar(60) NOT NULL,
  `s_tel` varchar(60) NOT NULL,
  `s_tel2` varchar(60) DEFAULT NULL,
  `city_id` int(2) NOT NULL,
  `s_add` varchar(255) NOT NULL,
  `s_ophr` varchar(30) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `s_logo` varchar(30) NOT NULL,
  `instr` varchar(255) DEFAULT NULL,
  `instr_eng` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `markers`
--

INSERT INTO `markers` (`sid`, `s_name`, `site_name`, `s_name_eng`, `s_tel`, `s_tel2`, `city_id`, `s_add`, `s_ophr`, `lat`, `lng`, `s_logo`, `instr`, `instr_eng`) VALUES
(1, '笨蛋工作室密室逃脫 安和館', '安和館', 'Stupidparticle', '02-8787-4387', '', 1, '台北市大安區安和路一段112巷27號B1', '10:00-21:30', 25.034000, 121.550369, 'stupidparticle_1.jpg', '', ''),
(2, '笨蛋工作室密室逃脫 南京旗艦館', '南京旗艦館', 'Stupidparticle', '02-8787-4387', '', 1, '台北市松山區南京東路五段399號九樓', '10:00-21:30', 25.051594, 121.569649, 'stupidparticle_1.jpg', '', ''),
(3, '笨蛋工作室密室逃脫 南京新館', '南京新館', 'Stupidparticle', '02-8787-4387', '', 1, '台北市松山區寶清街31號1樓', '10:00-21:30', 25.049650, 121.569122, 'stupidparticle_1.jpg', '', ''),
(4, '笨蛋工作室密室逃脫 新竹館', '新竹館', 'Stupidparticle', '03-571-9871', '', 5, '新竹市東區光復路二段200號', '13:00-21:00', 24.794201, 121.000450, 'stupidparticle_1.jpg', '新竹NOVA資訊廣場三樓', ''),
(5, '笨蛋工作室密室逃脫 台中館', '台中館', 'Stupidparticle', '04-2321-1671', '', 8, '台中市西區台灣大道二段186號12樓-3', '10:00-22:00', 24.151390, 120.670013, 'stupidparticle_1.jpg', '', ''),
(6, 'QhAt帽子烤工廠', '', 'QhAt', '02-2701-5295', '0974-069-218', 1, '台北市信義路三段126號3樓', '10:00-22:00', 25.033346, 121.539085, 'qhat.jpg', '近大安捷運站出站徒步五分鐘', '5 minuts walk from Da An MRT station'),
(7, '謎鹿實境遊戲工作室', '', 'Mystery Goose', '0908-818-100', '', 2, '新北市永和區福和路297號B1', '09:30-22:00', 25.007240, 121.516563, 'mysterymoose.jpg', '', ''),
(8, 'FK工作室', '', 'FK', '', '', 1, '台北市南京東路五段251巷32弄15號B1', '10:00-21:30', 25.052851, 121.564270, 'FK.jpg', '', ''),
(9, '貝爾豪斯工作室', '', 'Bear House', '0926-213-619', '', 2, '新北市板橋區銘傳街76巷5號', '10:30-21:30', 25.031130, 121.469971, 'BearHouse.jpg', '', ''),
(10, 'Meet Chance 覔見實境遊戲', '', 'Meet Chance', '0905-517-672', '', 1, '台北市萬華區長沙街二段50號', '10:30-22:30', 25.040550, 121.505959, 'MeetChances.jpg', '', ''),
(11, 'LOST Taiwan 西門館', '西門館', 'LOST Taiwan', '02-2314-2383', '', 1, '台北市萬華區成都路4號6樓', '11:45-21:00', 25.042000, 121.507637, 'LostTaiwan.jpg', '', ''),
(12, 'LOST Taiwan 忠孝館', '忠孝館', 'LOST Taiwan', '02-2779-1138', '', 1, '台北市大安區忠孝東路4段169號5樓', '11:45-21:00', 25.041740, 121.550362, 'LostTaiwan.jpg', '', ''),
(13, '頭癮創意遊戲', '', 'Headdiction Games', '0963-464-925', '', 1, '台北市士林區文林路661巷39弄23號1樓', '10:00-22:00', 25.100340, 121.522339, '', '', ''),
(14, '壞主意工作室 板橋館', '板橋館', 'Bad Ideas', '02-2255-5022', '', 2, '新北市板橋區吳鳳路50巷75弄8號1樓', '10:30-22:00', 25.030863, 121.470100, 'badideas.jpg', '', ''),
(15, '壞主意工作室 西門館', '西門館', 'Bad Ideas', '02-2255-5022', '', 1, '台北市萬華區中華路一段196巷B1', '10:30-22:00', 25.047449, 121.509583, 'badideas.jpg', '', ''),
(16, 'Limitless Escape Room 極限密室', '', 'Limitless Escape Room', '02-2367-6737', '', 1, '台北市汀洲路三段188號3樓之3', '11:00-22:00', 25.012850, 121.534950, 'LimitlessEscapeRoom.jpg', '', ''),
(17, 'Thougher 穿越者', '', 'Thougher', '02-2956-6636', '', 2, '新北市板橋區館前東路8號B1', '11:30-22:30', 25.007040, 121.459778, 'througher.jpg', '', ''),
(18, '不讓你密室逃脫', '', 'BuRunning', '', '', 1, '台北市大同區保安街49巷6號', '10:00-19:00', 25.059320, 121.511917, 'burunning.jpg', '', ''),
(19, '夢遊王國', '', 'Dream94zz', '02-2552-9422', '0933-305-126', 1, '台北市大同區延平北路二段202號3樓', '10:00-22:00', 25.059114, 121.511337, 'dream94zz.jpg', '', ''),
(20, '謬舍 MEW³ Studio', '', 'MEW³ Studio', '0910-370-464', '0926-275-750', 1, '台北市大同區伊寧街9巷31號1樓', '09:00-22:00', 25.065599, 121.513100, 'mew3.jpg', '', ''),
(21, 'EnterSpace', '', 'EnterSpace', '02-2533-7817', '', 1, '台北市中山區明水路581巷15號B1', '10:00-22:00', 25.080156, 121.550934, 'enterspace.jpg', '', ''),
(22, 'FunLock 放樂工作室', '', 'FunLock', '02-2585-5330', '', 1, '台北市中山區撫順街8號5樓', '10:30-20:30', 25.063606, 121.521149, 'Funlock.jpg', '', ''),
(23, '4Fun Base 創意基地 密室逃脫 安和創始館', '安和創始館', '4Fun Base', '0988-081-576', '02-2755-3145', 1, '台北市大安區敦化南路一段295巷42號', '10:00-22:00', 25.035379, 121.551071, '4funBase.jpg', '', ''),
(24, '4Fun Base 創意基地 密室逃脫 行天宮館', '行天宮館', '4Fun Base', '0906-909-608', '', 1, '台北市中山區民權東路二段43號1樓', '10:00-22:00', 25.062870, 121.530418, '4funBase.jpg', '', ''),
(25, '4Fun Base 創意基地 密室逃脫 小巨蛋館', '小巨蛋館', '4Fun Base', '0973-096-707', '02-2545-4548', 1, '台北市松山區南京東路四段25號5樓之1', '10:00-22:00', 25.051960, 121.550598, '4funBase.jpg', '', ''),
(26, '4Fun Base 創意基地 密室逃脫 魔方貝斯館', '魔方貝斯館', '4Fun Base', '0973-096-707', '', 1, '台北市松山區南京東路五段285號4樓', '10:00-22:00', 25.051550, 121.565933, '4funBase.jpg', '', ''),
(27, 'Rostart 邏思起子實境遊戲工作室', '', 'RoStart', '0965-305-690', '', 1, '台北市松山區南京東路五段66巷12弄10號', '10:00-20:00', 25.050520, 121.560204, 'RoStart.jpg', '', ''),
(28, 'Miss Game 行天宮一館', '行天宮一館', 'Miss Game', '0986-617-820', '', 1, '台北市中山區民權東路二段67號2樓', '09:00-21:00', 25.062782, 121.531204, 'MissGame.jpg', '', ''),
(29, 'Miss Game 台北大直館', '台北大直館', 'Miss Game', '0986-617-820', '', 1, '台北市中山區大直街9巷7弄4號1樓', '09:00-21:00', 25.080999, 121.547119, 'MissGame.jpg', '', ''),
(30, 'Miss Game 行天宮二館', '行天宮二館', 'Miss Game', '0986-617-820', '', 1, '台北市中山區民權東路二段62號2樓', '09:00-21:00', 25.062361, 121.531021, 'MissGame.jpg', '', ''),
(31, 'Miss Game 西門旗艦館', '西門旗艦館', 'Miss Game', '0986-617-820', '', 1, '台北市萬華區漢中街24號', '09:00-21:00', 25.045397, 121.507629, 'MissGame.jpg', '', ''),
(32, 'Miss Game 宜蘭傳藝館', '宜蘭傳藝館', 'Miss Game', '0903-398-298', '', 19, '宜蘭縣五結鄉五濱路二段201號', '09:00-21:00', 24.687799, 121.825447, 'MissGame.jpg', '', ''),
(33, '藍色迴廊', '', 'Hallway', '0936-791-697', '', 2, '新北市新莊區富國路59號', '10:00-21:00', 25.026270, 121.419548, 'hallway.jpg', '', ''),
(34, '逃生門工作室', '', 'Emergency Exit', '02-2518-0313', '', 1, '台北市中山區松江路283號4樓', '10:00-22:00', 25.060200, 121.533409, 'exit.jpg', '', ''),
(35, 'Escapeholics 密室逃脫 - EPIC', '', 'Escapeholics - EPIC', '02-2595-5760', '', 1, '台北市中山區農安街19號B1', '14:00-23:00', 25.065029, 121.524017, 'Escapeholics.jpg', '', ''),
(36, '台灣逃脫實境工作室', '', 'TW Escape', '0988-956-606', '', 1, '台北市內湖區康寧路三段247號', '09:30-21:30', 25.066730, 121.611427, 'TWEscape.jpg', '', ''),
(37, '玩笑實驗室', '', 'WanXiao Lab', '', '', 1, '台北市內湖區內湖路一段136號1樓', '09:00-22:00', 25.082842, 121.564011, 'wanxiao.jpg', '', ''),
(38, 'Xcape Taiwan', '', 'Xcape Taiwan', '02-2872-1157', '', 1, '台北市士林區中山北路七段14巷19之1號B1', '10:00-22:00', 25.118860, 121.532349, '', '', ''),
(39, '頂級豬排工作室 內湖館', '內湖館', 'The Pork King', '0905-259-817', '', 1, '台北市內湖區麗山街348巷10弄1號', '09:00-23:00', 25.082390, 121.574219, 'porkking.jpg', '', ''),
(40, '頂級豬排工作室 西門町館', '西門町館', 'The Pork King', '0905-259-817', '', 1, '台北市萬華區峨嵋街123之3號3樓', '09:00-23:00', 25.044670, 121.502487, 'porkking.jpg', '', ''),
(41, '頂級豬排工作室 西門町二館', '西門町二館', 'The Pork King', '0905-259-817', '', 1, '台北市萬華區康定路64號2樓', '09:00-23:00', 25.042391, 121.502258, 'porkking.jpg', '', ''),
(42, 'LOST真人密室逃脫 桃園中華店', '桃園中華店', 'LOST', '03-337-6658', '', 4, '桃園市桃園區中華路3號11樓', '12:00-22:00', 24.991148, 121.311600, 'LOST.jpg', '', ''),
(43, 'LOST真人密室逃脫 台中創始店', '台中創始店', 'LOST', '04-2321-8856', '', 8, '台中市西區台灣大道二段186號4樓', '10:00-22:00', 24.151390, 120.670013, 'LOST.jpg', '', ''),
(44, 'LOST真人密室逃脫 台中河南店', '台中河南店', 'LOST', '04-2452-5525', '', 8, '台中市西屯區河南路二段476號B1', '12:00-22:00', 24.170340, 120.643028, 'LOST.jpg', '', ''),
(45, '智客堡密室逃脫 桃園館', '', 'Smart Man', '0921-088-501', '', 4, '桃園市桃園區民光路25號1樓', '09:00-22:00', 25.004910, 121.307732, 'smartman.jpg', '', ''),
(46, 'A5 Studio-全員脫逃中 中原一店', '中原一店', 'A5 Studio', '03-436-9772', '', 4, '桃園市中壢區大仁街50號1F', '13:00-22:00', 24.956221, 121.241028, 'A5Studio.jpg', '', ''),
(47, 'A5 Studio-全員脫逃中 中原二店', '中原二店', 'A5 Studio', '03-436-9772', '', 4, '桃園市中壢區中北路2段434號8F', '13:00-22:00', 24.954571, 121.233414, 'A5Studio.jpg', '', ''),
(48, 'A5 Studio-全員脫逃中 南崁店', '南崁店', 'A5 Studio', '03-436-9772', '', 4, '桃園市蘆竹區桃園街118號B1', '13:00-22:00', 25.047630, 121.291023, 'A5Studio.jpg', '', ''),
(49, 'MR.5 謎逃羔羊 實境解謎遊戲', '', 'MR.5', '0919-915-610', '0919-915-085', 5, '新竹市東區新莊街148巷37號', '10:00-22:00', 24.786240, 121.017670, 'mr5.jpg', '', ''),
(50, '格林跳-真實密室遊戲 一館', '一館', 'Grimm Tell', '0984-259-002', '', 5, '新竹市東區民生路128號4樓', '09:00-22:00', 24.810141, 120.977226, 'grimmtell.jpg', '', ''),
(51, '格林跳-真實密室遊戲 二館', '二館', 'Grimm Tell', '0984-259-002', '', 5, '新竹市東區民權路62號', '09:00-22:00', 24.806829, 120.976288, 'grimmtell.jpg', '', ''),
(52, '謎猴實境工作室', '', 'Puzzle Monkey', '0966-770-380', '', 5, '新竹市東區中正路20號9樓', '', 24.803049, 120.971390, 'puzzlemonkey.jpg', '', ''),
(53, '濤濤來工作室 新竹本館', '新竹本館', 'Tao Tao Lai', '0912-850-770', '', 5, '新竹市東區民生路253號7樓', '13:00-21:00', 24.812450, 120.975037, 'tautaulai.jpg', '', ''),
(54, '濤濤來工作室 NOVA館', 'NOVA館', 'Tao Tao Lai', '0912-850-770', '', 5, '新竹市東區光復路二段200號', '13:00-21:00', 24.794201, 121.000450, 'tautaulai.jpg', '新竹NOVA資訊廣場三樓', ''),
(55, 'Play Studio玩密室 新竹巨城店', '新竹巨城店', 'Play Studio', '03-533-3361', '', 5, '新竹市東區中央路239號', '11:00-21:30', 24.805750, 120.968849, 'PlayStudio.jpg', '', ''),
(56, 'Play Studio玩密室 新竹站前SOGO店', '新竹站前SOGO店', 'Play Studio', '03-523-2290', '', 5, '新竹市東區民族路2號', '11:00-21:30', 24.810890, 120.982201, 'PlayStudio.jpg', '', ''),
(57, 'CubeOrigin啟源方塊密室逃脫工作室', '', 'Cube Origin', '04-2265-5011', '', 8, '台中市南區美村路二段186號10樓', '13:00-21:00', 24.125071, 120.663399, 'CUBEOrigin.jpg', '', ''),
(58, '許多門實境解謎 台中館', '台中館', 'Doorsss', '04-2326-8815', '', 8, '台中市西區台灣大道二段186號11樓之5', '11:00-21:00', 24.151390, 120.670013, 'doorsss.jpg', '', ''),
(59, '許多門實境解謎 嘉義館', '嘉義館', 'Doorsss', '05-227-7636', '', 12, '嘉義市民族路246號2樓', '11:00-22:00', 23.476561, 120.454948, 'doorsss.jpg', '', ''),
(60, '許多門實境解謎 台南館', '台南館', 'Doorsss', '06-222-0722', '', 14, '台南市中西區中山路147號8樓B', '11:00-22:00', 22.996006, 120.209984, 'doorsss.jpg', '', ''),
(61, '許多門實境解謎 高雄館', '高雄館', 'Doorsss', '07-581-2073', '', 15, '高雄市左營區站前北路1號3F', '11:00-22:00', 22.687832, 120.306778, 'doorsss.jpg', '『環球購物中心』 臺鐵新左營站3樓', ''),
(62, 'HiDe&SeeK 躲貓貓密室脫逃', '', 'HiDe&SeeK', '04-2203-0775', '', 8, '台中市北區民權路559號2樓之1', '13:00-22:00', 24.161840, 120.670113, 'HIDE-SEEK.jpg', '', ''),
(63, '神話密室脫逃工坊', '', 'Myth', '04-2203-2113', '', 8, '台中市北區民權路559號4F', '09:45-22:00', 24.161840, 120.670113, 'myth.jpg', '', ''),
(64, 'Funow煩腦密室逃脫工作室', '', 'Funow', '04-2234-2199', '', 8, '台中市北屯區河北路二段98號2F', '13:00-22:00', 24.171560, 120.683502, 'funow.jpg', '', ''),
(65, '實境密室逃脫-黑盒子工作室', '', 'Black Box', '04-2293-8533', '', 8, '台中市北區華美街二段236號B1', '10:00-22:00', 24.170380, 120.667122, 'blackbox.jpg', '', ''),
(66, 'Loop迴圈工作室-台中實境密室逃脫館', '', 'Loop', '04-2293-7588', '', 8, '台中市北屯區文心路四段81號17樓', '10:00-22:00', 24.174231, 120.672493, 'Loop.jpg', '', ''),
(67, 'SWING Escape', '', 'SWING Escape', '04-2706-6686', '', 8, '台中市河南路二段301巷16號2樓', '10:30-21:30', 24.172680, 120.647469, 'SWINGEscape.jpg', '', ''),
(68, 'AngeLost真人實境密室', '', 'AngeLost', '0987-493-668', '04-22032202', 8, '台中市北區中清路一段100號B棟14樓', '10:00-00:00', 24.153589, 120.677582, 'AngeLost.jpg', '', ''),
(69, '烏嘎嘎工作室', '', 'UGG', '04-2215-4321', '', 8, '台中市東區自由路四段309號', '13:00-00:00', 24.142941, 120.705017, 'ugg.jpg', '', ''),
(70, '哇沙謎創意工作室', '', 'Wasabi', '0909-680-838', '', 8, '台中市豐原區中山路83號5樓', '10:00-22:00', 24.238310, 120.710571, 'wasabi.jpg', '', ''),
(71, '麗寶樂園密室逃脫', '', 'Li Bao', '04-2558-3108', '04-2558-3109', 8, '台中市后里區福容路8號', '09:00-20:00', 24.324169, 120.699493, 'libao.jpg', '麗寶樂園內', ''),
(72, '妖怪村桃樂趣實境遊戲 南投店', '', 'Peachfun', '04-9261-2169', '', 10, '南投縣鹿谷鄉內湖村興產路2之3號', '10:00-19:30', 23.717840, 120.779266, 'peachfun.jpg', '妖怪村內', ''),
(73, '神不在場實境遊戲 台南館', '', 'TAOG', '06-312-0792', '', 14, '台南市永康區中華路1-2號3樓', '10:00-22:00', 22.998732, 120.234154, 'taog-game.jpg', '', ''),
(74, '桃樂趣密室逃脫 高雄店', '', 'Peachfun', '0936-660-210', '', 15, '高雄市前鎮區中華五路789號2F', '11:00-22:30', 22.595570, 120.308403, 'peachfunks.jpg', '高雄夢時代二樓', ''),
(75, '羊逃密室逃脫工作室', '', 'Run Sheeps Run', '07-222-1311', '', 15, '高雄市苓雅區光華一路206號13f-4', '11:00-21:00', 22.629089, 120.313766, 'runsheepsrun.jpg', '', ''),
(76, '逃出香港', '', 'Freeing', '07-211-9921', '', 15, '高雄市新興區新田路155號3F', '12:00-22:30', 22.622040, 120.303268, 'freeing.jpg', '', ''),
(77, 'Canpss密室逃脫', '', 'CANPASS', '0981-240-815', '07-223-2224', 15, '高雄市苓雅區光華一路206號24F-1', '12:00-20:00', 22.629089, 120.313766, 'CANPASS.jpg', '', ''),
(78, 'Dr.小頭密室逃脫工作室', '', 'Dr. Head', '07-533-8066', '', 15, '高雄市鼓山區臨海二路16號3樓', '10:00-02:00', 22.622049, 120.273956, 'DrHead.jpg', '', ''),
(79, '爆炸先生密室逃脫工作室', '', 'Mr. Bomb', '07-285-8226', '', 15, '高雄市三民區建國三路46巷3號', '10:00-03:00', 22.638630, 120.300346, 'mrbomb.jpg', '', ''),
(80, '獵時者遊戲工作室', '', 'Time Hunter', '07-216-8169', '', 15, '高雄市新興區文橫二路147號2樓 ??', '14:00-22:00', 22.622820, 120.303642, 'timehunter.jpg', '', ''),
(81, '夢罟密室逃脫', '', 'Dream Catcher', '0909-019-780', '', 15, '高雄市三民區長明街313號', '10:00-22:00', 22.638411, 120.304138, 'dreamcatcher.jpg', '', ''),
(82, '梅林的鬍子遊戲工作室', '', 'Merlin\'s Beard', '03-9331765', '', 19, '宜蘭縣宜蘭市康樂路61號', '', 24.755899, 121.755432, 'MerlinsBeard.jpg', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `sid` int(10) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `city_id` int(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `user_pic` varchar(255) DEFAULT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `member`
--

INSERT INTO `member` (`sid`, `uid`, `email`, `password`, `nickname`, `gender`, `birthday`, `city_id`, `address`, `mobile`, `user_pic`, `create_at`) VALUES
(3, 'u003', 'Tom@gmail.com', '666666', 'Tom', '男', '2010-11-08', 3, '台北市信義區', '0900123456', 'u001.png', '2018-11-19 13:30:00'),
(4, 'u001', 'Gray@gmail.com', '123456', 'Gray', '男', '1992-12-20', 1, '台北市內湖區', '0988789456', 'u001.png', '2018-11-21 00:00:00'),
(5, 'u002', 'Tony@gmail.com', '123456', 'Tony', '男', '1984-10-25', 2, '台北市文山區', '0987654321', 'u001.png', '2018-11-21 10:50:00'),
(6, 'u004', 'Mary@gmail.com', '111111', 'Mary', '女', '2010-07-05', 5, '新北市汐止區', '0988789456', 'u001.png', '2018-11-21 18:00:00'),
(7, 'u005', 'Amy@gmail.com', '222222', 'Amy', '女', '2010-11-20', 8, '台中市北區', '0945123789', 'u001.png', '2018-11-21 13:00:00');

-- --------------------------------------------------------

--
-- 資料表結構 `member_collectgame`
--

CREATE TABLE `member_collectgame` (
  `sid` int(10) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `gid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `member_collectgame`
--

INSERT INTO `member_collectgame` (`sid`, `uid`, `gid`) VALUES
(29, 'u001', '1'),
(30, 'u002', '2'),
(31, 'u003', '3'),
(32, 'u004', '1'),
(33, 'u005', '2'),
(34, 'u001', '3'),
(35, 'u002', '1');

-- --------------------------------------------------------

--
-- 資料表結構 `member_recordgame`
--

CREATE TABLE `member_recordgame` (
  `sid` int(10) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `gid` varchar(255) NOT NULL,
  `score` varchar(255) NOT NULL,
  `record_pic` varchar(255) NOT NULL,
  `play_review` text NOT NULL,
  `play_date` date NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `member_trackstudio`
--

CREATE TABLE `member_trackstudio` (
  `sid` int(10) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `cid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `member_trackstudio`
--

INSERT INTO `member_trackstudio` (`sid`, `uid`, `cid`) VALUES
(10, 'u003', '1'),
(11, 'u001', '1'),
(12, 'u002', '1');

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

CREATE TABLE `products` (
  `PRO_SEQ` int(11) NOT NULL,
  `PRO_NAME` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL,
  `PEOPLE_MIN` int(11) NOT NULL,
  `PEOPLE_MAX` int(11) NOT NULL,
  `GAME_TIME` varchar(20) DEFAULT NULL,
  `PRICE` int(11) DEFAULT NULL,
  `P_ID` int(11) DEFAULT NULL,
  `PRO_INFO` text,
  `CRATE_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL DEFAULT '1',
  `HOT_INDEX` int(11) NOT NULL DEFAULT '1',
  `PAGE_VIEWS` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `products`
--

INSERT INTO `products` (`PRO_SEQ`, `PRO_NAME`, `CID`, `PEOPLE_MIN`, `PEOPLE_MAX`, `GAME_TIME`, `PRICE`, `P_ID`, `PRO_INFO`, `CRATE_DATE`, `STATUS`, `HOT_INDEX`, `PAGE_VIEWS`) VALUES
(1, '翻箱盜櫃 2.0', 2, 3, 8, '120', 500, 6, '空間錯置 闖入無重力的顛倒世界\n\n技巧絕倫的神偷怪盜為何無法奪得萬物唯一的希望？\n\n滴答的聲響 催促著逃離這個空間迷宮\n\n靈巧的機關設下重重阻礙\n\n入侵者可以突破難題 \n\n再給萬物一個機會嗎？\n\n【全台首創的顛倒世界】\n\n發跡於台中，2014移植到台北並且更加進化！\n\n將近萬人體驗，一致好評推薦！\n\nQhAt帽子烤期待各位神偷怪盜的大駕光臨\n\n一起烤出隱藏在儲藏櫃裡的真相！', '2018-11-28', 1, 1, 1),
(2, '巴慧的秘密工作室', 2, 3, 6, '120', 300, 6, '真正的推理，不在小說裡，而是走進你我的生活。\n\n【反璞歸真的實境推理遊戲！】\n在失聯摯友的畫室中，等待你的是什麼...？\n\nQhAt帽子烤工廠第六彈作品－【巴慧的秘密工作室】\n\n?極具巧思的原創謎題，最貼近你我生活的劇情。\n\n以生活中的謎題，解開你心中的迷霧。', '2018-11-28', 1, 1, 1),
(3, '人魚之森', 2, 6, 8, '130', 600, 21, '一片危險的海域上，充滿著暗礁與海草，水手都稱之為「人魚之森」，相傳每年十二月一號，海面上會露出一個岩洞，流傳著諸多關於人魚的傳說故事。 \n\n赤蠵丸，一艘前往世界各地追尋各式珍奇異寶的探險船，正往人魚之森出發一探究竟。 \n\n但，一切真的會如此順利嗎？ \n你能順利從這座人魚之森中逃出、帶走傳說中的祕寶嗎？', '2018-11-28', 1, 1, 1),
(4, '咖波肚子痛', 15, 2, 4, '60', 550, 21, '人氣角色貓貓蟲咖波 x 智慧獵人密室逃脫\n聯手打造咖波主題密室體驗，號稱最可愛的密室來啦~\n\n【咖波肚子痛】\n究竟愛吃的咖波為何肚子痛？又該怎麼讓咖波變健康呢？\n快來一探究竟吧！\n\n【滿滿咖波與好友】\n咖波主題空間設有專屬拍照區域，巨型咖波與超多可愛人物等你合照唷！\n\n【獨家周邊商品】\n遊戲結束後，還可以選購「密室專屬」的限量咖波商品', '2018-11-28', 1, 1, 1),
(5, '洛克飯店：殺手困境', 15, 2, 4, '90', 600, 21, '受邀到洛克鎮參加音樂嘉年華的你們，因為飯店的烏龍事件，被帶到一位殺手的房間，而殺手，就在門外。 \n\n飯店手機裡，一通來自未來的電話，『你們將在60分鐘後遭到門外殺手的攻擊並喪命，幸運的是，因為不明原因的時空混亂，你們將有機會改變自己的未來』生存，必須拿其他生命來換？ \n\n眼看時間一分一秒過去，你們的生命維繫在一個名叫Tony的小男孩身上？', '2018-11-28', 1, 1, 1),
(6, 'CONE 控制獄', 15, 6, 10, '130', 700, 21, '收到記憶消除實驗邀請的你們，來到了由ISAAC公司所主導的實驗室中戴上頭盔，準備摘除記憶當中最糟糕的那部分。 \n\n但等待著你們的到底是解脫的救贖，還是更沉重的噩夢…', '2018-11-28', 1, 1, 1),
(7, '紅衣小女孩：噩夢再見', 15, 2, 4, '90', 600, 21, '一場多年好友的登山聚會，阿旺的女友—小惠卻離奇失蹤，你們進入了一間老舊荒廢的旅社尋找，卻是誤入了魔神的禁地。身穿紅衣的女孩穿梭其中、嘻笑迴盪，是想傳達什麼訊息，或是企圖使你再次懷疑自我？ \n? \n當你察覺到了一段無人知曉的過往，到底是自己負心遺忘，還是她無情背叛？ \n\n「你都忘了嗎....？」 \n才以為擺脫了那段夢魘，卻發現其實從沒醒來過...... \n\n在孤兒院成長的你和阿旺，有著風雨同舟般的情誼。2014年的一場山難，使你遺忘了大部分的記憶，除了你的名字：「謝冬庭」。', '2018-11-28', 1, 1, 1),
(8, 'Vicky', 15, 5, 10, '130', 650, 21, '「我很乖，為什麼你要躲起來讓我找不到？」 \n「聖誕老人求求你，我不要禮物了，你把爸爸帶回來好不好？」 \n\n2034 年的平安夜，小女孩坐在客廳的聖誕樹下，數著樹上掛燈的顏色，念念有詞的望向門口，盼望那個熟悉的身影能再次出現。', '2018-11-28', 1, 1, 1),
(9, 'ZONE 異界籠', 15, 5, 10, '130', 600, 21, '史上首座人工智慧電腦 Zone ，負責管理被放逐至火星上的監獄，但 Zone 卻進行了一場罪犯與管理人員的大屠殺…\n必須快一點找到破壞 Zone 的方法…\n\n-\n★ 人工智慧大屠殺！時間壓迫感重、最刺激驚險的密室逃脫', '2018-11-28', 1, 1, 1),
(10, '莎士比亞的邀請', 48, 2, 6, '90', 600, 21, '神不在場發現一本突如其來、年代久遠的書，似乎有了自己的生命，每60分鐘才會開啟一次。 \n僅知道它一直在邀請不同的人進入，期待有人能改變什麼… \n\n這本書我們所知甚少，進去過的人，對它的說法眾說紛紜，你願意冒險進到魔書裡，接受它的邀請嗎？', '2018-11-28', 1, 1, 1),
(11, 'X伯爵的委託', 48, 4, 6, '90', 550, 21, '古堡附近常有年輕貌美的女性失蹤，而伯爵的古堡裡竟然有兇手留下的挑釁字樣！最後連伯爵夫人也不見蹤影…警方前來調查卻一無所獲，於是伯爵委託神不在場的偵探到古堡調查。 \n\n不料來到古堡的偵探，連伯爵都還未見上一面，就莫名被迷昏關進地牢，昏迷前聽見：「一個小時後再來收拾你們…」各位偵探，當你們醒來後的第一要務，是找到逃出古堡的出口，一定要在兇手回來之前逃出，才有機會繼續為伯爵調查真相。', '2018-11-28', 1, 1, 1),
(12, '浮士德家的後院', 48, 4, 6, '90', 600, 21, '各大報近日不約而同出現一則神秘的徵人啟示，一名男子的未婚妻在不明原因下成了沒有靈魂的軀殼，不斷地喃喃自語著無人能理解的話語；男子發出重賞徵求能喚醒未婚妻的人，各界紛紛組成研究團隊但至今仍卻無人能成功。 \n\n來到這裡的你們是最後的希望，神不在場會連結你們的腦波，送你們進入這位女子的意識裡，但腦波連結裝置有效時間只有一個小時，逾時你們將永遠無法甦醒。把握你們僅有的一小時，調查靈魂消失的原因，找尋喚醒女子的方法吧！', '2018-11-28', 1, 1, 1),
(13, '天方夜譚', 16, 6, 10, '90', 650, 22, '強盛的沙漠王朝擁有世上最珍稀的寶物，卻在一夕之間消失殆盡。而你將拼湊線索，穿越破碎的矮房街道，探索曾經的宮殿遺跡。 \n\n\n\n埋藏的陷阱、被擄走的同伴，這是一場危機重重尋寶之旅！', '2018-11-28', 1, 1, 1),
(14, '蜀山', 16, 6, 10, '90', 650, 22, '古時妖魔肆虐為禍蒼生，蜀山宗派集天下異寶鑄神兵以平定亂世， 然而古劍鋒芒過剩，遂毀其晶元並以巨劍陣各別封印。\n\n\n\n如今災禍再臨，你們即將代表各門派聚集於蜀山禁地，尋回神兵拯救天下！', '2018-11-28', 1, 1, 1),
(15, '貪婪之城', 16, 8, 10, '110', 700, 22, '這是一場真實的冒險遊戲， \n\n?各位將進入新手村－貪婪之城展開各自的冒險旅程 \n\n\n\n多種職業選擇、NPC互動 \n\n個人任務外??還可自由承接不同任務 \n\n為了伙伴盡可能的解任務賺取報酬吧！', '2018-11-28', 1, 1, 1),
(16, '感染', 16, 2, 6, '60', 550, 22, '充滿謎團的秘密實驗室。 \n體?不尋常異樣感，到底發生了甚麼事！？ \n\n? \n\n壓抑血液中的病毒 \n千萬要保持理智，找到解藥逃離這裡！? \n\n※此活動空間明亮， \n\n並不會有恐怖嚇人的東西，請安心服用。', '2018-11-28', 1, 1, 1),
(17, '鄉間小盜', 16, 2, 4, '60', 550, 22, '矯健的身手，熟捻的技術， \n\n盜竊成功後的喜悅讓我沈迷。 \n\n\n\n竊盜組織派下的委託竟是前往這平凡無奇的鄉間小屋， \n\n\n\n怎麼會有這麼多機關？ \n\n究竟藏著什麼樣的寶物？', '2018-11-28', 1, 1, 1),
(18, '稻荷之歌', 16, 4, 6, '60', 550, 22, '相傳狐狸娶親時，會選在太陽雨的日子。 \n\n牠們會排成長長一列，手上提著燈籠， \n\n從遠方看來就像鬼火一樣... \n\n? \n\n誤闖狐狸娶親的隊伍，絕對不要發出聲音。 \n\n若被祂們發現， \n\n將回不去原本的世界?', '2018-11-28', 1, 1, 1),
(19, '巫毒小屋', 16, 2, 4, '60', 550, 22, '為了破除纏繞詛咒的身軀 \n\n你們前來尋求巫醫的協助 \n\n? \n\n然而 解開詛咒的唯一途徑 \n\n? \n\n必須深入巫毒叢林 \n\n親自執行那些儀式...', '2018-11-28', 1, 1, 1),
(20, '奪命鎖鏈1', 1, 6, 8, '100', 600, 1, '「我們被鎖鏈鏈住了，要斷開鎖鏈才能離開這裡！」 \n\n「欸，那邊好像有東西，你快過去看看！」 \n\n「9527！9527！試試看 9527！」 \n\n「當你們看到這封信的時候，我可能已經死了...」 \n\n「 時 間 剩 下 3 0 秒 ！」 \n\n甜甜圈排過了、線上遊戲打過了、桌遊也玩膩了，最近還有什麼遊戲是你還沒有玩過的呢？來試試現在最夯的「密室逃脫」吧！ \n\n「密室逃脫」是最近最紅的真人實境解謎遊戲，不同於傳統的解謎遊戲僅限於紙上解謎，這次的密室逃脫遊戲是真的會把你關進密室裡！在密室當中，你將運用你的智慧與觀察力找尋每一條線索，才能夠順利地從密室中逃離！ \n\n這次，你受到了 Niceday 的委託，你將與你的團隊一同進入安和路巷內的命案現場，在封鎖的密室內對一起一家三口的滅門血案重啟調查。究竟，這起命案是命運無情的捉弄，是情感的糾結，還是巫術的詮釋？腳上鋃鐺作響的鎖鏈，又該如何掙脫呢？ \n\n想要掙開鎖鏈安全逃出密室嗎？自己來找線索吧！', '2018-11-28', 1, 1, 1),
(21, '奪命鎖鏈2', 1, 8, 10, '100', 650, 2, '斷開奪命鎖鍊後，笨蛋工作室將再次把你們鎖上鐵鍊！ \n\n「密室逃脫」是近期當紅的真人實境解謎遊戲，不同於傳統的解謎遊戲僅限於紙上解謎，這次的密室逃脫遊戲是真的會把你關進密室裡！在密室當中，你將運用你的智慧與觀察力找尋每一條線索，才能夠順利地從密室中逃離！ \n\n不同與以往密室逃脫遊戲，奪命鎖鏈系列將前來挑戰的玩家們銬上鎖鍊，在時間及空間的限制下，刺激度急速上升，要先逃出去必須先解開鎖鍊謎題！你，準備好了嗎？ \n\n奪命鎖鏈 2 復仇的晚宴 故事情節： \n\n舉世聞名的慈善企業家比爾丹特 (Bill.Dent) 即將滿 50 大壽， 為了慶祝這一天，丹特宅邸將舉辦一場盛大的生日宴會。 \n\n屆時來自全國各地的政商名流將聚集於此， 然而紙醉金迷的背後卻隱藏不為人知的殺機...... \n\n重金打造！全面升級！ \n\n此款遊戲為 Stupidparticle 笨蛋工作室 2014 年度最大企劃，自 2013 年 6 月起至今已超過一萬人挑戰的《BreakFree 奪命鎖鏈》 將在 2014 年 12 月 2 日推出續作，繼續延燒奪命鎖鏈熱潮！奪命鎖鏈 2 獨家創新「囚禁互動」掙脫，玩家必須善用監視器畫面以及語音溝通裝置協力逃脫。超越傳統「鎖鏈束縛」框架，跳脫單純綑綁束縛，鎖鏈的玩法絕對超乎你想像！更勝前作「身歷其境」體驗，精心規劃場景佈置與故事情節，謎題劇情環環相扣讓你意猶未盡！', '2018-11-28', 1, 1, 1),
(22, '奪命記憶', 1, 4, 10, '100', 650, 2, '上次的奪命鎖鏈，你斷開了嗎？來試試看笨蛋工作室的全新力作 - 奪命記憶吧！ \n\nDeja Vu，似曾相識的感覺，好像曾經發生過，但又好像只是錯覺。但這些似曾相識的既視感真的只是錯覺嗎？還是是被遺忘的過去呢？ \n\n世界頂級的生技公司 Particle S，其生化部門一夕間消失無蹤，正當外界臆測著各種可能性時，一封神秘的信件邀請你來到這間酒吧，而這封信的寄件人，竟然就是你自己？！被隱藏的真實，等你來挖掘！ \n\n笨蛋工作室 2014 年度鉅作『DejaVu 奪命記憶』正式重啟！ 奪命記憶開幕 9 個月已超過 5000 人前來挑戰！ 震撼場景！神秘機關！ 彷彿置身在電影情節的體驗，絕對不能錯過！', '2018-11-28', 1, 1, 1),
(23, '顛倒?室', 1, 4, 10, '100', 600, 2, '風靡台灣的實境遊戲，給了人們一種新的體驗活動形式，更造就了許多職業玩家！下班的夜晚或是不想待在家的周末，揪三五好友一同前往未知的世界，來趟神奇的解謎之旅吧！ \n\n醉心於研發設計不同巧思機關的笨蛋工作室，又再次「顛」覆了人們對實境遊戲的想像，跳脫大型機關，重新探索解謎遊戲精髓，打造低調奢華日式顛倒場景！將場景、解謎、說故事完美結合，以充滿創意的經典口味喚醒您對實境遊戲的熱情初衷！忘卻現實之中的種種限制，在這空間裡，沒有什麼事是不可能的！ \n\n顛倒?室 故事情節 \n\n相傳二次世界大戰後，廣島市郊有一間戰後仍倖存的詭異房子。這個長年無人居住的小木屋，每年到了 1/4 午夜 00:00 便會傳來微微的音樂聲，且持續一個小時之久，甚至謠傳有人發現房子出現上下顛倒的異象。『顛倒的房子』謎團幾十年來從沒有人解開過，隨著時間的推移，漸漸地成為了都市人們口耳相傳的傳說之謎。 \n\n委託人大河： \n\n『幾天前，高齡九十歲的奶奶交給我一把鑰匙，交代我在今天午夜到她廣島的老家來，幫她尋找遺失多年的重要物品，我探聽了一下發現奶奶的老家居然就是廣島都市傳說中的神祕鬼屋，我認為我一個人的力量沒辦法達成目標，希望各位探險隊員能夠協助我解開傳說中的謎團，完成奶奶的心願。』', '2018-11-28', 1, 1, 1),
(24, '諜戰1941', 1, 4, 8, '100', 650, 3, '每個對密室感興趣的玩家只要一踏進笨蛋工作室，幾乎都一試成主顧，變成了笨蛋鐵粉！沉寂一年，笨蛋工作室終於推出史詩級戰爭作品！\n\n有別於傳統的密室解謎遊戲， 刻意的謎題與數字密碼鎖頭在這款遊戲內幾乎不存在，取而代之的是把動腦與團隊合作的元素包裝在擬真的逃獄過程中。玩家除了須細心觀察周遭環境的細節之外，也需要一定的技巧與膽量，才能順利逃出。\n\n除了謎題的真實與精緻度外，密室遊戲的空間變化、場景布置、爆炸性的機關等元素在這款遊戲內還是應有盡有，一觸即發的緊張感挑戰你的智慧，更挑戰你的即時反應！ 『諜戰 1941』給你更真實、更臨場、更豐富的感官享受，絕對是老手新手都不能錯過的大作！\n\n諜戰 1941 故事背景\n\n二十世紀中葉，全球爆發了毀滅性的戰役，\n敵軍如日中天，盟軍則每下愈況，\n能夠贏下戰爭的關鍵並非武力，而是『情報』。\n\n『我們每天都會攔截到數千則敵人的加密電報，\n如果無法破譯，那這些情報終究只是戰場上的噪音；\n反之，若能了解編碼的規則便能扭轉戰局。』\n\n為了能破譯敵人密電，\n盟軍情報部擬定了一項艱鉅的特殊行動計畫，行動代號：Crow\n派遣數批詐降士兵進入戰俘營，完成這次行動的唯一目標：\n《竊取敵軍情報編碼規則，並逃出戰俘營》\n\n盟軍能否逆轉戰局，取決於這項秘密行動成功與否，\n數百萬人的命運就掌握在這些勇敢的士兵手裡！', '2018-11-28', 1, 1, 1),
(25, '鬼新娘', 1, 4, 8, '100', 650, 3, '無', '2018-11-28', 1, 1, 1),
(26, '醉後任務', 1, 8, 10, '100', 650, 3, '每個對密室感興趣的玩家只要一踏進笨蛋工作室，幾乎都一試成主顧，變成了笨蛋鐵粉！笨蛋工作室每一款遊戲都有不同的特色與定位，這次要帶給大家的，是我們初次嘗試讓玩家扮演 10 個不同角色，並且每個人都有個人任務要偷偷完成的遊戲模式！ \n\n角色間的互動與利害關係設計起來非常具有挑戰性，希望藉此讓每一個來玩的人都能有成就感與參與感！ 這款遊戲設計亮點並不是科技機關的展現，但也絕非小品之作，透過個人任務的設計，讓朋友間會在遊戲結束後愉快的討論分享！配合酒精/非酒精飲料的放送，希望能帶給大家一段輕鬆愉快的難忘時光。 \n\nTHE SCHEME 醉後任務 故事背景 \n\n在一個充滿歡笑與希望的城市—巴利市， \n看似平靜的夜晚卻暗潮洶湧，幾位素昧平生的人陸續造訪 Deja Vu 酒吧， \n一杯充滿惡意的調酒將每個人的意識抽離...... \n隔天早晨，醒在酒吧樓上的飯店房間裡， \n周圍是一群生面孔以及一顆即將摧毀小鎮的炸彈， \n昨晚酒酣耳熱之際，被遺忘的派對時光裡究竟發生了什麼事情？ \n這些人是敵是友？是否能信任？ \n所有人各懷鬼胎，我得一邊回想自己的目的，一邊拯救小鎮倖免於難。', '2018-11-28', 1, 1, 1),
(27, '奪寶令', 17, 6, 12, '100', 600, 23, '幻想過在【國家寶藏】緊張刺激的奪寶大戰軋上一角？ 羨慕能神乎其技地解開層層謎團直搗【達文西密碼】？接下【奪寶令】的委託，這次的主角就是你！ \n\n懸疑！刺激！推理！競爭！結局完全操控在你的手上！4funBase 一鳴驚人令玩家讚不絕口的經典作品！新手也極度推薦！ \n\n在「奪寶令」中，你將扮演身懷絕技的菁英特務，在總部的召集之下接受委託，潛入秘密基地奪取寶物。過程中你和隊友將探索未知的空間，藉由團隊合作搜尋資訊和道具，甚至是操作精心設計的機關來解開各式各樣的謎團。目的是在時限內比你們的對手更早一步奪得寶物並逃出基地！你可能會需要在伸手不見五指的房間中搜尋，也可能要爬過深埋的地道才能逃出生天。書架中的每一本書，牆上的每一幅畫，奇特的門鎖，詭譎的燈光，都有可能是解開謎題或觸發神奇機關的重要物品或線索！ \n\n「奪寶令」故事情節 \n\n深藏在天才博士 Xavier 宅邸的超級能量石 Aroti 引發了各界覬覦與爭奪，但博士設下的層層機關和陷阱卻讓所有潛入盜寶者全軍覆沒。特務總部收到了兩份委託書皆要求不惜任何代價奪得能量石。所以你們將兵分兩路分頭前進，也藉此顯示誰才是菁英中的菁英！當然，獲勝的報酬會是很豐厚的！', '2018-11-28', 1, 1, 1),
(28, '直衝腦門', 17, 6, 10, '120', 600, 24, '必玩「直衝腦門」的五大理由 \n\n徹底迷失方向，前所未見魔宮場景 \n一個接一個的震撼機關讓你驚叫連連 \n環環相扣回味無窮的劇情架構 \n參與度超高，讓人陷入回憶的趣味謎題 \n新手超推坑，老手絕對大呼過癮 \n\n「直衝腦門」故事情節 \n\n2050 年，進入人腦獲取記憶的技術已趨成熟。一次槍戰中，連續殺人犯「約克」中彈即將腦死，警方企圖侵入他的回憶尋找最後一名失蹤者的下落，但一道道的防衛讓警方不得其門而入。身為精英警探的你，是否能把握最後的黃金時刻，突破約克的重重心防，帶回深埋的真相... \n\n【4funBase 行天宮館】鎮館遊戲『直衝腦門』隆重鉅獻！由對戰遊戲『奪寶令』設計師歷經將近一年的悉心籌備。這次不只要善用智慧與觀察力，更要你動手動腳和隊友合作無間，才能順利完成任務，好久沒有大展身手的菁英特務，你們準備好迎接挑戰了嗎？！', '2018-11-28', 1, 1, 1),
(29, '阿瓦隆的背叛者 II', 17, 5, 10, '100', 600, 25, '阿瓦隆的背叛者II-龍騎士 為 4funBase 最新呈現 魔幻歡樂探險之作！ \n全新場景機關背叛機制 劇情故事環環相扣　本遊戲集結各領域設計團隊智慧，更與強檔電影後製團隊合作，希冀帶給大家更多震撼體驗！ 　 \n\n70分鐘玩笑聲不斷 誰能掌握劇情越多 誰就可能是贏家 \n＊新手激推 ＊闖關解謎 ＊機關震撼 同步滿足您味蕾！ \n＊機智推理 ＊歡樂演戲 ＊秘密對戰 　來一場鬥嘴對決！ \n面對重要關頭 榮譽與友情該如何抉擇? \n\n不同於一般市面上需要團隊合作的密室逃脫遊戲， 「阿瓦隆的背叛者」有著如小說般懸疑的劇情，布置奇幻的場景和重重精巧的機關，在遊戲過程中，你和隊友們除了要化身為故事中的角色齊力解謎之外，更要提防其中早已悄悄變心的背叛隊友，正暗中虎視眈眈，干擾大家取得最後的勝利！ \n\n「阿瓦隆的背叛者II」故事情節 \n\n在阿瓦隆的背叛者第一季－聖杯任務失敗後，王國被邪惡勢力籠罩 所幸騎士們被引導到魔法的起源地－神佑之島.........沒想到卻是空蕩蕩.... 王國智者說， ?黑暗勢力太過強大，如今只能召喚巨龍前來拯救王國了...? 可是，邪惡勢力的爪牙仍然混在其中，伺機蠱動人心.... 究竟巨龍能否順利現身? 還是隱藏的背叛者能以寡敵眾，再次獲勝... 一切就看各位的智慧與觀察力了?', '2018-11-28', 1, 1, 1),
(30, '怪盜的預告', 17, 2, 6, '75', 550, 26, '日本京都知名美術館館長被發現陳屍於自己休息室。 \n\n警方調查後發現，現場不僅找不到凶器，房間內更是門窗完好， \n毫無破壞，是間完整的密室！ \n\n只知道，館長在一星期前，收到一封來自怪盜J的犯案預告… \n\n究竟發生了甚麼事.....是誰殺死了館長？ \n\n?一切就靠偵查團的各位了！', '2018-11-28', 1, 1, 1),
(31, '三國', 17, 6, 10, '120', 650, 26, '三國時代，群雄崛起，赤壁之戰前，曹操大軍勢如破竹！ \n諸葛孔明只好深入敵營，冒險勸說東吳孫權結盟抗曹，不料卻是困難重重.... \n面對群臣嘲諷，周瑜忌妒，究竟聰明的孔明將如何能否突破重圍，完成任務？', '2018-11-28', 1, 1, 1),
(32, '那年夏天', 17, 4, 6, '110', 650, 26, '童年的天真、親人的陪伴、友情的珍貴、初戀的甜美。 \n有遺憾，也有不悔… \n\n如果有時光機可以帶你穿越時空，你願意回到過去，尋找那些天真浪漫的幻想，再次體會最純真的感動和逝去的童年時光嗎？ \n\n?', '2018-11-28', 1, 1, 1),
(33, '創世紀', 18, 6, 10, '100', 550, 27, '　有位探險家在旅途當中\n　發現到了一座從未被證實過的遺跡\n　政府陸續派出許多專家學者去考察\n　但不可思議的是\n　派過去的專家只要一過了70分鐘\n　就會完全通訊失聯，彷彿人間蒸發\n　政府決定號召全世界最有能力的冒險家\n　來好好調查這座神秘遺跡\n\n　冒險者們 你們敢接受挑戰\n　找出背後的祕密嗎？\n\n　帶上你的夥伴與勇氣 來一探究竟吧！', '2018-11-28', 1, 1, 1),
(34, '血色古堡', 18, 5, 8, '100', 590, 27, '當可憎的喉嚨乾渴 \n把心靈變成野獸般淒慘 \n悲劇將再次發生... \n? \n吸血鬼 \n存在於世界的另一面 \n“他們”有著極強的生命力 \n在漫無止境的歲月中 \n唯有人血才能填補“他們”乾枯的靈魂 \n\n今天各位接獲一宗營救人類的任務 \n富商的女兒“夏洛特”被吸血鬼擄走 \n請各位務必在午夜前救回她 \n\n但... \n?一切會有這麼順利嗎？！', '2018-11-28', 1, 1, 1),
(35, 'Miss A 水獄逃脫2.0', 19, 4, 10, '100', 600, 28, 'Mission Impossible！\n不絕於耳的索命警報聲，幽暗的密道，交錯噴射的水柱陣，層層阻礙的水機關，\n接下無法回頭的任務，只能與時間賽跑的特務們，是否能逃過滅頂危機！？\n\n一間深陷水獄的公司，重重關卡與各部門所隱藏的秘密，\n\n究竟誰在背後搞鬼？　Miss A 又在其中扮演什麼角色？\n\n如何在時限內完成任務並逃出生天解開深藏在這水獄中的謎團？Mission Start！', '2018-11-28', 1, 1, 1),
(36, 'Mr.game 限時入侵', 19, 4, 10, '100', 600, 28, 'Miss GAME組織的X發布委託 ─ 請特務們潛入Game Company\n找出前遊戲設計師Mr. Game失蹤的原因！\n\n不過Game Company的電力系統意外地森嚴，\n\n必須獲取金鑰，輸入電力控制系統來取得光源。\n任務一開始會有100%燈光，隨著時間流逝，光源會越來越暗，\n\n若無法在電力用盡前找到新的金鑰，公司就會陷入完全的黑暗！\n而保全巡邏的空檔僅有60分鐘，時間一到，\n\n任務即宣告失敗，組織將不會承認各位的存在。\n\n\n特務們，準備好了嗎？電力倒數，開始！', '2018-11-28', 1, 1, 1),
(37, 'Miss M 絕境擴散', 19, 4, 10, '100', 600, 29, '「偵測到病毒感染！拒絕執行開門指令！」 \n\n\n無法開啟的門禁系統 失控的活體實驗 充滿危機的空氣 \n\n時間已開始倒數，「我們」該如何逃離？ \n\n\n\n遺忘的記憶片段究竟藏著什麼祕密？ \n\n深埋的往事、擴散的病毒 \n\n身陷絕境，世界 即將毀滅！？', '2018-11-28', 1, 1, 1),
(38, '流亡黯道上篇：永生之謎', 19, 4, 8, '100', 600, 30, '【流亡黯道上篇 永生之謎】\nMiss GAME X Garena 暗黑風格鉅作 \n?\n亞洲最大線上遊戲平台龍頭公司 Garena 台灣競舞\n\n力邀密室逃脫界元老 Miss GAME\n\n將最多年度大獎、歐美評比第一的暗黑風格鉅作實體化\n\n攜手推出真人實境密室逃脫 ── ＜流亡黯道＞\n\n\n傳說300年前，永恆帝國首席奇術師馬拉凱發明將古靈寶石植入人體、賦予使用者各種強大能力的方法，而寶石皇后則是他的最高傑作。\n\n根據記載，寶石皇后身上有一顆永生之石，賦予她不朽的能力，但在一場異變之後，永恆帝國就此覆滅，帝國所在的瓦爾克拉斯大陸成為鬼島，被作為犯人的流放地，同時再也沒人看過寶石皇后......\n\n神秘的奇術師派蒂相信永生之石仍然存在，她提出了條件，只要流亡者能夠進入日耀神殿的遺跡，帶回永生之石，她就幫助流亡者逃離鬼島......', '2018-11-28', 1, 1, 1),
(39, '流亡黯道下篇：永恆之殿', 19, 4, 8, '100', 600, 30, '流亡者們為了逃離鬼島，接下奇術師派蒂的委託，潛入日耀神殿遺跡尋找永生寶石。 \n\n隨著成功找到永生寶石，流傳三百年的永生之謎也被揭開．瞭解真相的流亡者們意識到必須趕緊離開，否則將會永遠被困在這裡。\n\n但不慎觸發的古代封印，讓整座神殿的結構完全改變，當初進來的路已消失無蹤。流亡者們能在時間內找到另一條生路，逃出神殿嗎？', '2018-11-28', 1, 1, 1),
(40, '即刻越獄', 19, 2, 6, '30', 200, 31, '一九二三年，民族自決的思潮正影響著尚在日本統治下的台灣 \n\n我們是與蔣渭水一同進行「臺灣議會設置請願運動」的成員 \n\n準備趁日本裕仁皇太子來台巡視時舉旗請願 \n\n但日本警察發現了我們的意圖 \n\n因此，對我們做了預防性羈押，關入了拘留所 \n\n幸好，日本警察中有支持我們理念的人 \n\n暗中留下了一些逃出的線索 \n\n現在，必須在二十分鐘內逃出拘留所 \n\n才來得及向皇太子請願！', '2018-11-28', 1, 1, 1),
(41, '逃出吸血鬼古堡', 19, 2, 6, '60', 350, 31, '黑暗森林的深處有一座神秘古堡 \n\n當地人相傳裡面住著吸人血維生的怪物 \n\n沒有人敢靠近 \n\n但第一次來到這裡的你們不小心迷路誤闖古堡 \n\n被吸血伯爵的手下關進地牢 \n\n準備獻給伯爵享用 \n\n\n\n離天黑只剩下一小段時間了 \n\n如果無法在天黑之前逃走 \n\n你們就會變成伯爵的晚餐！ \n\n\n\n歐洲中世紀古堡地牢，擬真度百分百 \n\n獨創大型聲光機關，意想不到的驚奇體驗 \n\n特殊求救模式，比 siri 還要有個性！？', '2018-11-28', 1, 1, 1),
(42, '新楓之谷-末日封印', 19, 2, 8, '60', 400, 31, '漫步在西門徒步區， \n\n正和好友們討論著要去吃超好吃的雪淇淋， \n\n身邊的景物忽然間巨大化......自己也愈變愈小！ \n\n這裡不是楓之谷世界的西門町嗎？！ \n\n? \n\n此時出現了一位自稱赫麗娜的精靈，她說： \n\n「數百年前，黑魔法師率領著邪惡軍團支配了整個楓之谷世界。 \n\n就在陷入絕望之際，名為普利特的英雄， \n\n集結了五位英雄與惡勢力展開一場大戰， \n\n最終將黑魔法師封印在現在之門中...... \n\n然而，黑魔法師卻對英雄們下了詛咒， \n\n使其長眠並誓言絕對會掙脫封印， \n\n並再次肆虐楓之谷世界...... \n\n百年後的現在，封印之力逐漸減弱， \n\n黑魔法師的解放開始倒數， \n\n楓之谷再次面臨末日的危機！ \n\n你們願意帶著封印石進入時間神殿封印黑魔法師嗎？」 \n\n? \n\n現在到底是什麼情況？ \n\n啊啊∼不管怎樣，好像也只能先幫忙拯救世界再說了！夥伴們，和我一起衝吧！', '2018-11-28', 1, 1, 1),
(43, '鏡止鏡入', 20, 6, 10, '100', 550, 33, '轟隆一聲門開了，映入眼簾的是我們沒想過的景象\n\n世界終於走到了最後平行的交叉路口，一方的人相信科技的力量才是人類最後的歸依；\n而另一方的人，選擇仰賴這新興的另一道曙光，魔法能量。\n從此世界劃分成了兩大陣營，機械城 與 魔法城。\n\n在機械城裡，只有在機械學校 克雷格斯堡，\n通過最高級 新世界機械學測驗的合格者，\n才能執行最困難的S+級任務。\n\n如果這一次能更加團結，或許就能出去……\n如果這一次能更加合作，或許就不會留下遺憾……\n被吸入大法師 安格法 的七大神器之一 安格法之鏡的新一批機械城的人們，這次會迎來怎樣的結果呢？', '2018-11-28', 1, 1, 1),
(44, '千年古墓', 21, 1, 8, '120', 500, 34, '一部盜墓手札 \n隱藏古墓地圖 \n稀世珍寶隨著破解手札 \n將經由你手現世 \n\n古墓絕境 身歷其境 \n更加滿足你的感官神經 \n\n等著你來挑戰謎樣的千年古墓！', '2018-11-28', 1, 1, 1),
(45, '教室1968', 21, 1, 8, '120', 500, 34, '真相隱沒於無限的黑暗 怨恨與恐懼推開異界之門，這教室是現實，還是我們的幻覺...', '2018-11-28', 1, 1, 1),
(46, '圓桌密令', 21, 4, 8, '120', 500, 34, '卡姆蘭戰役後期，戰況膠著，一封神秘密令引領眾騎士，前去尋求梅林協助，卻迷失在魔法陣中...', '2018-11-28', 1, 1, 1),
(47, '伊甸I：亞當覺醒', 22, 6, 8, '120', 600, 35, '奇點年 392 年，抵禦奇點人的防禦組織 E.P.I.C. 將創新的人工智慧系統「 亞當 」，應用於虛擬平台伊甸中，然而某次例行性的系統維修後，身為系統「 記憶 」支柱的 Marvin 卻離奇地消失在系統中，E.P.I.C. 決定整合內外菁英，登入伊甸找出整件謎案的真相… \n\n原以為只是一般的系統失常，導致人員訊號微弱，卻在登入系統後發現事情並不單純，在你們之中有人做出了不尋常的舉動…', '2018-11-28', 1, 1, 1),
(48, '惡一學園：丑時三刻', 22, 1, 5, '60', 250, 35, '惡一學園靈研社的成員，在離奇失蹤的學姊遺留下來的筆記本中，找到一段令人匪夷所思的筆跡：「每逢鬼門開的丑時三刻，通往不存在教室的門扉將會開啟…」 \n\n而這個不存在的教室，是否與學姊有關呢？ \n\n就看你們是否能完成校園七大不可思議，並且成功從教室逃脫？或是，找出消失的學姊呢...', '2018-11-28', 1, 1, 1),
(49, '陷阱舞台', 22, 2, 4, '20', 200, 35, '那場失去夥伴的任務後，你們再次接獲犯罪集團的線報 \n抵達空無一人的劇院後台卻立刻被擊昏… \n醒來發現自己與組員被分開囚禁於後台！ \n四周散著各種可疑的舞台裝、紙箱、以及行李箱， \n「這到底是怎麼一回事…」 \n你感受到心跳隨腎上腺素的分泌而加快、思緒也混亂了起來。 \n你，能在最短時間做出正確判斷、並全身而退嗎？', '2018-11-28', 1, 1, 1),
(50, '金仕特-間習生', 23, 6, 12, '60', 550, 36, '隱身於傲慢城市的內心深處，漫步在人潮壅擠的街道中，細細品味窺看的藝術;悠悠品嘗魅力的馬丁尼，一間擁有獨家機密的地下特務組織，極力尋求來自各地的菁英，下一位金仕特是你嗎?', '2018-11-28', 1, 1, 1),
(51, '掘', 24, 5, 12, '110', 700, 37, '身為秘密部門一員的各位，今日來到的是「埃及不具名神殿」你們需要尋找曾經協助調查的考古學家赫普米，設法取得他研究荷魯斯之眼的資料。不過，神殿因過於老舊關係，目前入口已崩塌請儘快調查完畢，找其他出口離開神殿。', '2018-11-28', 1, 1, 1),
(52, '醒', 24, 5, 12, '110', 700, 37, '兩週前秘密部門收到了探員從「太空船－內拉號」傳送的請求支援訊息，為了協助調查便派遣同伴前往太空船！沒想到登船後的同伴，卻在睡眠狀態下遇上了太空船爆炸的意外，秘密部門的各位要如何同時完成調查任務以及撤離太空船變成了一項不可能的任務！', '2018-11-28', 1, 1, 1),
(53, '迴異路 重置', 24, 2, 8, '110', 700, 37, '「憶空門關閉，記憶連結中斷。」\n博士使用最新儀器進入記憶探索，卻因無法在時間內回來而昏迷。博士出發前留下字條「如果我沒回來，表示實驗失敗，別來救我，可能很危險。」儘管如此，研究人員仍前往調查，卻也發現博士不為人知的秘密...', '2018-11-28', 1, 1, 1),
(54, '炸鬥府', 24, 6, 16, '110', 700, 37, '《炸鬥府》是以歷史上著名的《越戰》作為背景所進行的模擬戰，\n玩家扮演士兵與間諜角色，須遵循司令部的作戰總指令進行激戰，最終積分高的軍隊勝！\n當有地形優勢的『越軍』ＶＳ.有龐大軍火的『美軍』，黎明前的夜襲對抗將一觸即發！\n誰能搶下最多攻佔點？誰能轟炸最多彈藥？誰能扮演好間諜角色暗殺敵軍？\n不同於一般桌遊，這次由你“戰”在《炸鬥府》內，進行最忙碌的實戰！', '2018-11-28', 1, 1, 1),
(55, '長生殿', 25, 1, 6, '', 600, 38, '傳聞安員外聘請煉金術士配製凍齡秘方，\n\n並建造出與世隔絕的煉丹空間，\n\n取名為「長生殿」。\n\n凡舉到過長生殿的賓客皆返老還童，\n\n殿中究竟藏著什麼不可告人的秘密？\n\n你將扮演佝僂老人，一探回春秘方。', '2018-11-28', 1, 1, 1),
(56, '變身怪醫', 25, 4, 6, '', 600, 38, '街頭屢傳出人口失蹤事件，\n\n調查局發現海德博士進行秘密實驗，\n\n多位受試者失聯，博士涉嫌重大。\n\n調查員透過線報進入博士實驗室搜索，\n\n是否能尋回機密報告，\n\n成功解救人質並且找出破案關鍵？\n\n\n\n操作型密室不怕你動手， \n\n獨特囚禁裝置保證驚叫連連，\n\n英雄、狗熊只有一線之隔，\n\n是否能夠成功解救人質？', '2018-11-28', 1, 1, 1),
(57, '奪寶奇謀', 25, 4, 8, '', 600, 38, '一群各懷鬼胎的盜匪，\n\n企圖潛入地堡竊取遺世珍寶，\n\n地堡內處處是陷阱，\n\n盜匪們為達目的不擇手段在時限之內，\n\n誰能夠奪得最多寶物，\n\n誰就是今天的贏家！\n\n\n\n謎樣空間 動線曲折離奇， \n\n已經受夠了豬一般的隊友？\n\n早就厭倦團隊合作？\n\n首開個人競賽模式，\n\n火力全開 等你來挑戰！', '2018-11-28', 1, 1, 1),
(58, '星空下的鋼琴手2.0', 26, 4, 10, '90', 550, 39, '隆重改版再推出的70分鐘密室逃脫遊戲，包含前後講解總活動時間約為兩小時，場景機關道具全面升級。', '2018-11-28', 1, 1, 1),
(59, '跌落畫中的女孩', 26, 4, 10, '120', 600, 39, '最經典的90分鐘密室逃脫遊戲，包含前後講解總活動時間約為兩小時。', '2018-11-28', 1, 1, 1),
(60, '逃出補習班', 26, 4, 10, '90', 550, 40, '最歡樂的70分鐘密室逃脫遊戲，包含前後講解總活動時間約為1.5小時。', '2018-11-28', 1, 1, 1),
(61, 'shinobi忍', 26, 4, 10, '90', 600, 41, '最刺激的70分鐘忍者主題密室逃脫遊戲，包含前後講解總活動時間約為兩小時。', '2018-11-28', 1, 1, 1),
(62, '時鐘之國', 26, 2, 4, '40', 450, 41, '無痛入坑的40分鐘密室逃脫遊戲，無講解', '2018-11-28', 1, 1, 1),
(63, '那維亞之章', 3, 6, 10, '120', 550, 7, '多年宿敵的神族與巨人族，為了爭奪世界之樹的核心能量交戰了多年，神族將世界之樹的能量石一分為二，白晝之石與黑夜之石想不到分離出來的黑夜之石產生能源的同時卻釋放出足以吞噬大地的氣息! 即將被黑夜之石吞噬的那維亞王國維有收集失落於世界中的五件神器才能消弭這場災禍...', '2018-11-28', 1, 1, 1),
(64, '獄言', 3, 2, 4, '90', 600, 7, '『獄 言』(千辛萬苦嘔心瀝血的誠意之作)\n\n『來自好友的邀約，昏迷後甦醒，卻發現置身於中國古代監獄，究竟發生了甚麼事？穿越數百年的謎團，你能解開嗎？』', '2018-11-28', 1, 1, 1),
(65, '愛德華偵探社-序章', 4, 5, 9, '100', 600, 8, '終究察覺了嗎?那我也只能和過去一樣讓她永遠沉默了。年僅16歲的天才偵探少女-勝率為18%，爸爸如果贏不了...我該...', '2018-11-28', 1, 1, 1),
(66, '曼陀羅', 5, 4, 4, '90', 600, 9, '據說，服用曼陀羅中毒的人死前會出現強烈的幻覺，但也能見到最想見的人', '2018-11-28', 1, 1, 1),
(67, '秦關', 6, 6, 8, '120', 700, 10, '傳說，得長生者始永得天下！\n縱然是秦始皇掃蕩六國、一統江山，\n對於長生不老之術，仍魂牽夢縈。\n塵封兩千年後的今日\n你願意冒險進入秦關探查此千古謎團嗎?', '2018-11-28', 1, 1, 1),
(68, '伽斯底里奧內', 7, 2, 6, '60', 600, 11, '乾隆二十三年, 自火燒圓明園悲劇發生以後,\n十二生肖獸首銅像消失匿跡於世界各地的三坊七巷.你們獲取情報得知生肖銅像的首板仍收藏在銅像設計師伽斯底里奧內家鄉的古堡。通往古堡的大橋將會於 60 分鐘後關掉,你們必需於限時內盜回生肖銅像,否則…….\n\n古堡內藏有不少奇珍異寶。除了從銅像著手,你們必需保持冷靜運用其他寶物。切忌一意孤行尋找銅像只會處處碰壁', '2018-11-28', 1, 1, 1),
(69, '出埃及記', 7, 2, 6, '60', 600, 11, '《出埃及記》乃聖經舊約的第二書，主要講述以色列人如何在埃及受到逼害，然後由摩西帶領他們離開埃及的故事。出埃及記中的神是出埃及記重點記述的救贖事件的背景。救贖可以界定為「脫離異族的管治，享受由此而來的自由」。在出埃及中，以色列人接受神的救贖。救贖的條件是服從。在祂拯救以色列人脫離奴役的基礎上，頒佈十誡和其餘的律法。百神多個世紀以來，透過先知，呼籲祂的百姓不要忘記祂如何領他們出埃及，並且悔改歸向祂。忠心的人懷著感恩的心，回應摩西的「救贖之歌」。\n\n耶和華降臨在古埃及的十個災禍，稱之為《十災》，以催促並警告埃及法老讓以色列人到曠野三天。你們將經歷法老的魔咒，十災的降臨，最後亦需要在摩西的帶領下，由紅海脫離。經過了神的審判，你們化身為二百萬以色列子民的其中之一，協力尋找出埃及的路線。', '2018-11-28', 1, 1, 1),
(70, '唐七樓', 7, 2, 6, '60', 600, 11, '玩家們，讓我告訴你一個關於迷之密失的秘密…LOST 的全寫其實是 LOST OPERATIONS SPECIAL TRAINING (高級特工訓練計劃)。而 LOST BUILDING 是一所由BOSS為計劃建造的特殊訓練場。但要到達訓練基地並不簡單……\n\n你必須在升降機LEVEL 6內找出有用的資料，因為只有它可以幫助你直達LOST基地。是次過關除了具備細心觀察力外，敏捷的身手也是必須的。', '2018-11-28', 1, 1, 1),
(71, '阿爾卡特拉斯', 7, 3, 6, '60', 600, 11, '阿爾卡特拉斯島，又名為惡魔島，一個座落在舊金山灣中崎嶇多岩的小島上面。舊金山灣中流著冰冷變化莫測的海水，關押過不少知名的重刑犯人，是美國最令人畏懼的監獄之一，而且一直以來，都沒有人越獄過。 1962年6月11日，法蘭克莫里斯, 約翰安杰林以及萊倫斯安杰林實施了堪稱史上最複雜的越獄計劃。籌備了整整一年就是為了日後永恆的自由。那天晚上，三個囚犯逃出了他們的囚房，乘坐在他們做的船筏中消失在舊金山灣的陰影中，從此人間蒸發了…多年以來，數千條的線索經過調查，事實仍然無法明朗現在能夠確認的是，三個逃犯的懸賞通緝令依然有效。\n\n你們必須通力合作皆因這項轟動的計劃是缺一不可的。獄中每一件物品都可能是逃生工具，周詳的計劃也是必須的。', '2018-11-28', 1, 1, 1),
(72, '追蹤者', 7, 3, 7, '60', 600, 11, '1998年9月，LOST City受到生化病毒侵襲。在病毒漫延的朦朧氣氛之下，情況已經嚴重失控。九成以上市民受到感染，政府亦已靳令將 LOST City進行全面封鎖。你們收到可靠的情報，得知這次生化災害的罪魁禍首與一間製藥公司有關，於是便決定潛入該公司總部進行調查。不幸你們行蹤敗露，被他們關在一間荒廢小舍內，而且小舍附近還不時傳出活死人饑餓的咆哮聲。\n\n時間不知不覺地飛逝，小舍中的收音機還傳出了陣陣模糊的廣播。「60分鐘後，將會是最後一隊拯救隊伍進入 LOST City拯救生還者，請生還的市民盡快去到 LOST City的區集合，重覆……」', '2018-11-28', 1, 1, 1),
(73, '秦墓冥宮', 7, 2, 6, '60', 500, 12, '據《史記·秦始皇本紀》記載，「始皇初即位，穿治酈山，及並天下，天下徒送詣七十餘萬人，穿三泉，下銅而致槨，宮觀百官奇器怪徙藏滿之。令匠作機弩矢，有所穿近者輒射之。以水銀為百川江河大海，機相灌輸，上具天文，下具地理。以人魚膏為燭，度不滅者久之。」\n\n深受秦始皇傳說吸引的你們，決定前往西安旅行， 卻不幸在參觀兵馬俑時走失了。秦陵如同迷宮般，走了半天仍找不到出路，天色逐漸昏暗，一扇隱蔽的門赫然浮現，心急如焚的你們不顧一切推門進去，眼前出現的竟然是秦始皇陵! 據說…秦始皇陵內機關遍佈，一旦地窖被打開，入侵者會被逐漸湧出的水銀所淹沒。若想保住秦始皇陵墓，唯一的辦法就是解開隱藏在秦陵出口處龍珠的秘密。你能否突破重重難關順利離去，抑或是陷入水銀的深淵…', '2018-11-28', 1, 1, 1),
(74, '九龍寨城', 7, 2, 6, '60', 500, 12, '醉心香港歷史的你，特別沈迷於九龍寨城的研究，你得知九龍皇帝曾灶財祖先曾獲清朝皇帝送贈的九龍城封地，唯當時二戰發生，亂世中曾氏祖先帶著封地文件藏匿於九龍寨城內，但最終其居所不幸遭受祝融吞噬。\n\n一天你到九龍寨城舊址考察，天氣驟變，突如其來的閃電竟將你帶回到九龍寨城清拆前的一小時，發現你身處曾氏祖先火勢蔓延中的房間，你能夠在烈火燒盡之前，找到九龍封地文件逃出，進而改寫歷史成為九龍皇帝嗎？', '2018-11-28', 1, 1, 1),
(75, '掠奪', 7, 2, 6, '60', 500, 12, '1990年3月18日凌晨1時許，在波士頓的「伊莎貝拉嘉納藝術博物館」裏(Isabella Stewart Gardner Museum)，兩名男子喬裝成警察，欺騙警衛開門後並把他們制伏。然後在81分鐘內劫走13件藝術品，而本來在館內的作品陳列處，事件過後只剩下空蕩蕩的畫框。這樁總值約5億元美金的搶劫案，據説是歷年來最大樁藝術品竊案。聯邦調查局(FBI)在20多年來鍥而不捨地追查，但此案至今仍未被破解。今天你們將回到案發當年，看看你們能否解開這樁迷案......', '2018-11-28', 1, 1, 1),
(76, '所羅門之鑰', 7, 2, 6, '60', 500, 12, '在猶太人的傳說中，以色列國王所羅門擁有天使所著的“羅潔愛爾之書”，書中記載著召喚的規則和咒語，透過此書即能獲得自由召喚和操縱惡魔精靈的力量。現存的所羅門之鑰，是17世紀由法國所出版且內容殘缺不全的複製品，幾世紀來被保存在圖書館內最隱密的藏書室中，除了少數幸運兒以外，其他學者從未接觸過這本書。 \n\n身為符號學家的您，沈迷於研究神奇符文和古文明密碼，某天你從大法師那獲得一張拜訪世界聞名遐邇魔法學校的門票，然而當你到達時，現場空無一人，於是進入學校查探，這時異常的時空將你轉移到另一個世界，你只有60分鐘返回現實世界，在沒有人幫助的情況下，唯有運用你的智慧逐一解破解謎題，逃離險境……', '2018-11-28', 1, 1, 1),
(77, '星靈', 7, 2, 6, '60', 500, 12, '西洋占星術主要源自公元2世紀克勞狄烏斯·托勒密的《占星四書》，試圖運用黃道十二星宮對應人的出生時間來解釋人的性格和命運，以人?劃分的區域充當天象，依「上行、下效」原則反映、支配著人類活動。\n\n而著迷天文學的你們，有天幸運的從一位神秘占星術師手中獲得《占星四書》的一部分，便獲選進入黃道之森修煉，希望透過修煉成為能夠參透過去與未來且能操控星辰的占星巫師。修行時間只有一個小時，過程中必須學會如何捕捉光影，在黑暗中判斷星體位置，同時陰暗的森林也正吸取著你們的陰陽之氣，若是時間結束尚未修煉完成，你們將會失去自我，無法成為占星巫師，甚至永遠迷失在黃道之森中?', '2018-11-28', 1, 1, 1),
(78, '暗花尋跡', 8, 6, 10, '120', 550, 13, '1947年1月20號 - 美國加州 - 好萊塢「黑色大理花」命案，震驚全國\n當你還在皺眉唏噓人性兇殘，你拖著滿身疲累回到家\n卻發現躺在信箱中的，是一封沒有地址的匿名信\n而信上，卻寫著你的名字?! 「伊莉莎白•蕭特，是我殺的。」\n「我已經佈下了重重陷阱，等你來追隨我留下的足跡... 來抓我吧！」\n\n殺害大理花的兇手竟然親自找上門?\n\n若能親手抓到兇手，就能一夕成名!\n\n這項險峻的任務，你，能勝任嗎?', '2018-11-28', 1, 1, 1),
(79, '那未了的話', 8, 1, 4, '100', 600, 13, '「醫生說，小屏已經脫離生命危險，是不幸中的大幸了。\n\n自從上個月，阿全因為血癌離世，小屏就一直處在低谷...\n\n那封突然出現的信，是阿全生前寄來的。\n\n信中沒幾個字，只是要收到的人去某處尋找那未了的話。\n\n看小屏如此虛弱，情緒也尚未穩定，還是讓我們幫他，\n\n找出真相吧...」', '2018-11-28', 1, 1, 1),
(80, '腦細胞入侵', 9, 6, 10, '110', 590, 14, '【腦細胞入侵】是全台第一個以人體為主題的密室逃脫遊戲由台大內科醫師和清大生命科學碩士攜手傾力打造。\n密室從實驗室開始一路隨著劇情進入到人體肺部、大腦皮質和微血管前所未見的人體謎題和器官機關歷經一年企劃籌備、一年製作施工終於在今年夏天正式開幕！\n\n遊戲利用 Raspberry Pi 微電腦、Arduino 微控晶片和 3D 列印技術打造出媲美遊樂園等級的自動化人體器官機關。遊戲中謎題的類型十分多樣化人體內看不到傳統密室常見的鎖頭改以機關操作、多人合作、限時反應等形式呈現讓玩家感到身歷其境、彷彿真的進入人體中冒險不只考驗玩家腦力和反應更考驗團隊成員之間的默契。', '2018-11-28', 1, 1, 1),
(81, '冥古屋', 9, 4, 8, '110', 600, 15, '深山裡，一座廢棄的小屋在歲月中沉睡了數百年\n\n據說屋子裡住著妖怪，會吃掉每個靠近的靈魂\n\n沒有人知道，那些曾經試圖進入屋子的人都到哪兒去了\n\n沉睡百年的山中小屋裡埋藏著什麼秘密？', '2018-11-28', 1, 1, 1),
(82, '瞞天越獄', 10, 4, 8, '90', 500, 16, '特攻隊逃離監牢的主題, 非常需要團體合作 Special task force sent on a mission to infiltrate a prison, teamwork is essential to the success of the mission', '2018-11-28', 1, 1, 1),
(83, '搜索令', 10, 4, 7, '90', 500, 16, '驚悚偵探主題, 需要觀察力與一些膽量 Thriller detective theme. Needs attention to detail, critical thinking, and a bit of courage.', '2018-11-28', 1, 1, 1),
(84, '鎮龍脈', 11, 2, 8, '75', 650, 17, '西元1371年出現了時空裂縫，依附靈氣而長存，異世界生命帶著戰爭而來，國家動盪，人心惶惶。 \n西元1375年，異族即將攻陷明朝帝都，劉伯溫奉皇帝密詔封鎮龍脈，斷絕靈氣 ，但被異族發現，在生命即將消逝時，劉伯溫利用肉體精元擺下時空法陣，呼喚著你我的救贖.........', '2018-11-28', 1, 1, 1),
(85, '不完美求婚', 11, 1, 5, '35', 350, 17, '我今年終於存夠錢，買下了這棟房子，布置成我要的樣子，妳應該會喜歡吧？希望今天你會答應我的求婚...', '2018-11-28', 1, 1, 1),
(86, '陌生熟悉人', 11, 1, 6, '35', 350, 17, '我自小在孤兒院長大，今日收到一封來信，信中提到了與我有關的一間屋子即將拆除，來到這…為什麼 ? 我對它一點印象都沒有，直到我打開門之後…...', '2018-11-28', 1, 1, 1),
(87, '時空探員-克斯之謎', 12, 5, 8, '90', 600, 18, '20XX年...\n科學家終於解開黑洞之謎，發明可以任意穿越時空的移動裝置。\n\n但是，某些「時空罪犯」卻胡亂使用，造成宇宙空間變異。\n\n地球上各國的領袖們，為了宇宙空間的安定，成立\n\n「時空犯罪防治局-Time & Space Criminal Prevention Organization」\n簡稱:時空局「TSO」\n\n目的是阻止任何危害宇宙空間的事件發生，\n而這些英勇的特務就「時空探員」。', '2018-11-28', 1, 1, 1),
(88, '籠中鳥', 13, 6, 10, '100', 650, 19, '《籠中鳥》為日本兒童玩遊戲時，會唱的一首童謠。遊戲時，由一個孩子當「鬼」，閉著眼睛蹲在孩子群中，其他孩子圍成圓圈，邊轉圈邊唱著這首童謠。童謠唱完時，如果「鬼」猜出正背後的人是誰，孩子們會立刻跑開，「鬼」則邊唱《籠中鳥》，邊追向他要抓的人。一旦被抓到，就要接替「鬼」的位置…?如今，這首童謠不時在你們耳邊響起－『在你身後的人是誰』？', '2018-11-28', 1, 1, 1),
(89, '偶像出道', 13, 6, 10, '100', 650, 19, '身為一群懷抱星夢的練習生，你們的夢想之路可說是倒楣透頂！在前往益智節目現場的途中，腳下公車卻傳來爆胎的聲音……這是手上最後一個通告機會，距離直播還有 60 分鐘，如果趕不上，別說出道，就連練習生的資格都沒有了......下了公車，望著遙遠的電視台大樓和路邊破爛的腳踏車.....?什麼挑戰都來吧！今天，一定要成為偶像出道！', '2018-11-28', 1, 1, 1),
(90, '抓狂首映會', 13, 10, 10, '150', 600, 19, '2100年12月31日，是電影《七宗罪》的盛大首映會。誰也沒想到，這場首映會就像失控的舞台劇，徹底脫稿演出！?在場的導演、明星、劇組人員、媒體記者、粉絲，每個人似乎都懷有秘密...眾多巧合交織而成的首映會序幕就要揭開，你有把握，你說的謊不會被發現？', '2018-11-28', 1, 1, 1),
(91, 'B CASE', 14, 6, 8, '120', 600, 20, '由知名劇場製作人K 所指導\n\n眾所矚目的舞台劇 \"RE:馬克白\"\n\n近期即將盛大上演\n\n怎知就在開演的兩周前\n\n竟傳出扮演男主角的劇場界新星Kristofer失蹤的消息\n\n苦苦找不著男主角的劇組在各方壓力下\n\n連忙徵募了一群新銳演員前來試鏡\n\n究竟男主角失蹤原因為何？\n\n在這競爭激烈的劇場中\n\n又還有什麼黑暗面未被揭發？', '2018-11-28', 1, 1, 1),
(92, 'Mission 2 - 末日．重生', 27, 4, 8, '60', 400, 42, '故事簡述：浩瀚的星際之旅，拯救地球任務就靠你 \n※※※※※※※※※※※※※※※ \n「今天，絕不是人類的末日，而是我們重生之時…」 \n\n西元3020年，由於人類肆無忌憚的花用資源，地球已面臨毀滅的危機。 \n聯合國協同太空總署調查出，距離地球300光年的一顆星球，可能適合延續人類的生命。 \n於是，你帶者象徵延續生命的「生命之源」前往...... \n但前往路途中，危機四伏！ \n人類最後的希望，寄託在你身上！ \n地球毀滅，絕不是人類的終點站。', '2018-11-28', 1, 1, 1),
(93, 'Mission 22 - 消聲噤區', 27, 4, 8, '60', 450, 42, '淪為罪人的台語族後代忘了自己的語言被國語族統治著，某天，帶著罪人印記的你因為不明原因遭到政府最高領導人的囚禁，不想不知道一切就這樣死去的你，必須透過前人留下的線索，在死刑執行前，通過重重測試，解開自己的身世之謎並阻止領導人隱藏的可怕野心，才能解救被囚禁的同伴，找回自己的語言', '2018-11-28', 1, 1, 1),
(94, 'Mission 21 - 心靈偵探事件簿Case1-童魘', 27, 4, 8, '60', 450, 42, '每一個犯罪者背後都有一段故事，每個人都是由過往的每一天所組成，犯罪固然不對，但更重要的卻是犯罪形成的原因。 在2020年的現在，台灣發展出了一種新興行業-心靈偵探。為了探尋犯罪產生的原因，政府研發出了進入人類內心的技術，使你們這些心靈偵探得以進入罪犯的內心世界，找出犯案的動機及成因。', '2018-11-28', 1, 1, 1),
(95, 'Mission 5 - 凌雲鬼窟', 27, 4, 6, '60', 400, 42, '「前往凌雲窟探險的你，伴隨而來的是福？是禍？」 傳說中，只要能在聞名世界的凌雲窟內， 找到傳說中的聖物-水玉，就可以獲得富甲天下的寶藏... 組織派你前往凌雲窟中探索，試圖要奪取寶物！ 但是，前往凌雲窟的路途中，危機四伏 任何嘗試進入凌雲窟竊取寶藏的人，幾乎有去無回... 身為五星頂尖探險家的你 只有一次的機會！ Only one chance, Live ? or Die...', '2018-11-28', 1, 1, 1),
(96, '山中小屋前傳', 27, 2, 4, '30', 200, 42, '身為登山客的你們，因為大雨闖進一間發出怪聲的詭異小屋．．．', '2018-11-28', 1, 1, 1),
(97, '老殘遊記', 27, 2, 4, '30', 200, 42, '身為盜寶集團的新進門生，你們將偽裝成書生進入私塾竊取傳說中老殘的藏寶盒．．．', '2018-11-28', 1, 1, 1),
(98, '血腥廚房', 27, 2, 4, '30', 200, 42, '你們將扮演私家偵探的角色，受到神秘人的委託潛入嫌疑犯的家找到定罪的證據．．．', '2018-11-28', 1, 1, 1),
(99, '海賊寶藏', 28, 4, 10, '60', 450, 45, '傳說中世紀有個海賊團，在一次冒險旅程中，得到了比財寶更有價值的神秘寶藏，便從此消失匿跡...... \n準備好了嗎?趁著海賊離開的空檔，舉著火把穿梭於中古世紀般的神秘地道中，尋找可能的出路。 \n能否善用團隊智慧，找到消失的密室，解開枷鎖，取得傳說中的海賊寶藏安全的離開呢? \n一場尋找【海賊寶藏】的冒險故事，將由你來主導。', '2018-11-28', 1, 1, 1),
(100, 'UNO Escape', 29, 2, 6, '30', 200, 46, '還在桌上玩UNO?? \n全球最暢銷紙牌遊戲 \n請你”進來”玩', '2018-11-28', 1, 1, 1),
(101, '偷窺2', 29, 2, 6, '30', 200, 46, '你那麼急著跑出來，是不是很開心見到我呢？\n我其實一直都在房間裡啊∼嘻嘻！\n\n你先睡一下，我去買個晚餐等一下就回來囉∼\n\n這裡是我愛你的地方\n\n碰！??', '2018-11-28', 1, 1, 1),
(102, '偷窺', 29, 2, 6, '30', 200, 46, '你喜歡已讀不回嗎..? \n\n剛搬到新環境的小優，生活還算正常。 \n唯一奇怪的事情就是自己的私人物品常常憑空消失。 \n\n最近小優注意到隔壁行為怪異的鄰居， \n聽說是機械系大五的怪咖。 \n\n這一切都從你已讀不回開始.....', '2018-11-28', 1, 1, 1),
(103, '儲藏弒', 29, 2, 6, '30', 200, 46, '維克夫婦在郊區買了一棟老房子， \n他們打算從市區搬過去居住， \n除了地點不太方便以外， \n這裡的一切比起以前那棟又小又矮的房子實在好上太多了。 \n一切看似非常順利地進行著， \n他們也開始幻想著搬進去之後的美好生活， \n但就在搬進去的那天起，卻開始發現這棟老房子似乎不大對勁， \n每到夜晚總覺得有一雙眼睛在盯著他們瞧。 \n某一夜又是在這樣的被監視感下睡著， \n醒來後竟然發現自己被綑綁在儲藏室內， \n儲藏室內處處是懸掛的斷手斷腳， \n原來這是殺人魔的恐怖計畫， \n一開始先利用便宜的房子吸引家庭來購買居住， \n再將他們一網打盡。 \n現在距離殺人魔回來的時間還有30分鐘， \n維克夫婦是否能在期限內逃出去呢?', '2018-11-28', 1, 1, 1),
(104, '廁所裡的波特', 29, 2, 6, '30', 200, 46, '2015年12月14日，一早波特提著他的公事包準備出門，他是波特保養品集團的總裁， \n每天總有處理不完的公事。他與瑪格莉特共度完早餐時光，就準備出發了， \n一如以往他總習慣在離開家以前親吻瑪格麗特的臉頰，當然今天也不例外。 \n可從沒想過這竟是他們最後一次見面，在這短短的上班途中，波特失蹤了… \n波特家外面現在正聚集著無數個記者和警察， \n他們一定是想問些有關於波特的失蹤， \n但瑪格莉特現在根本毫無心情回答任何的問題， \n只隨口幾句打發了他們。 \n隨之，媒體聳動的標題及大量的報導，佔據了這幾天的新聞版面。 \n瑪格麗特替波特拍的那張張嘴開心大笑的照片， \n被登上了覆蓋整個城市的尋人海報… \n『我們只希望他能平安的回家』瑪格莉特在心中不斷的吶喊 \n\n這是波特消失的第四十五天了，每天瑪格莉特還是都準備了他最喜歡吃的烤牛肋排， \n但他終究還是沒有回來。 \n『每天出門總會看到那全城的尋人海報，對我們家而言， \n海報上那西裝筆挺張嘴大笑的迷人笑容是如此的令人痛徹心扉。』 \n瑪格莉特臉上華麗的妝容仍掩不住的那憂鬱的氣息。 \n全城都議論紛紛，波特消失的背後，似乎隱藏著什麼不可告人的秘密。', '2018-11-28', 1, 1, 1),
(105, '廁所裡的波特', 29, 2, 6, '30', 200, 48, '2015年12月14日，一早波特提著他的公事包準備出門，他是波特保養品集團的總裁， \n每天總有處理不完的公事。他與瑪格莉特共度完早餐時光，就準備出發了， \n一如以往他總習慣在離開家以前親吻瑪格麗特的臉頰，當然今天也不例外。 \n可從沒想過這竟是他們最後一次見面，在這短短的上班途中，波特失蹤了… \n波特家外面現在正聚集著無數個記者和警察， \n他們一定是想問些有關於波特的失蹤， \n但瑪格莉特現在根本毫無心情回答任何的問題， \n只隨口幾句打發了他們。 \n隨之，媒體聳動的標題及大量的報導，佔據了這幾天的新聞版面。 \n瑪格麗特替波特拍的那張張嘴開心大笑的照片， \n被登上了覆蓋整個城市的尋人海報… \n『我們只希望他能平安的回家』瑪格莉特在心中不斷的吶喊 \n\n這是波特消失的第四十五天了，每天瑪格莉特還是都準備了他最喜歡吃的烤牛肋排， \n但他終究還是沒有回來。 \n『每天出門總會看到那全城的尋人海報，對我們家而言， \n海報上那西裝筆挺張嘴大笑的迷人笑容是如此的令人痛徹心扉。』 \n瑪格莉特臉上華麗的妝容仍掩不住的那憂鬱的氣息。 \n全城都議論紛紛，波特消失的背後，似乎隱藏著什麼不可告人的秘密。', '2018-11-28', 1, 1, 1),
(106, '醉後生還者', 29, 2, 6, '30', 200, 48, '天狗居酒屋，他只有在特定的日子才會開放營業，所以附近居民都稱他為幽靈居酒屋，裡面最有名的就是老闆娘特調的清酒，不是因為好喝才有名，是因為喝下去會有一股神奇的魔力，喝第一口會覺得全身輕飄飄的，喝第二口眼前會出現謎樣圖騰，你們呢就是喝下老闆娘特調清酒的客人，你們要在酒力消退前，解開謎樣的圖騰才能逃出去。', '2018-11-28', 1, 1, 1),
(107, '賊', 29, 4, 8, '60', 450, 47, '據探子回報，本幫尋覓已久的三大寶物，藍田玉鐲、菩提寶珠及翡翠金如意藏在劉曉仁家中，由此推出其極可能是當年殺害吾父母親及潛入楠香家的黑衣人，目前已知藍田玉鐲、菩提寶珠在書房和佛堂，令諸位盡快分頭潛入盜回寶物並調查其真面目。 \n惟劉曉仁心機深沉，雖擔心寶物遭盜，又慮及如自己過世後，寶物恐將失傳，必定於府內留下各種線索，俾利其子孫發現寶物，故切勿遺漏房內線索，並應設法找出第三樣寶物下落。 \n如誤觸陷阱，將受困府中。又該府守衛森嚴，諸位切記定須於半個時辰（一小時）內盜回寶物並逃出生天，否則恐有性命之虞。', '2018-11-28', 1, 1, 1),
(108, '奎蕾精神病院', 29, 4, 8, '60', 400, 47, '封鎖島-全球十大恐怖島嶼，這座島嶼草不生長，鳥不歇腳，\n島上甚麼都沒有，只有一間私人精神病院。\n封鎖島長年處於封鎖狀態，除了病院的救護船與補給船，沒有任何船隻和\n漁民敢接近。日復一日，年復一年，看似平靜的島嶼，卻始終死氣沉沉，\n直到一樁逃脫計畫的誕生…\n\n島上的奎蕾精神病院於1984年成立，是個極不人道的非法私人醫院，\n院長奎蕾夫人擁有極度古怪的變態人格。\n她的至理名言就是：瘋子看別人都是個瘋子，瘋子在我眼裡卻是金子。」\n她秘密地利用病人進行人體實驗，將尚未成熟的醫療技術試用在病人身上\n，一切手段就為換得大把鈔票。此外，夫人認為精神病患都是惡魔附身的\n結果，唯有接受特殊的治療他們才能得到救贖。但詭異的是，明明每日都\n有新進病患，院裡的人口總數卻始終維持在一個水平。\n\n種種荒誕的行徑與醫療行為，醞釀出一樁神秘的逃脫計畫…', '2018-11-28', 1, 1, 1),
(109, '逃出糖果屋', 30, 4, 8, '60', 500, 49, '迷失森林的姊弟 \n忍受不住飢餓的誘惑 \n開始品嘗起香氣誘人的糖果屋 \n卻也因此陷入了危機之中.... \n大家耳熟能詳的經典故事 \n但...就這麼結束了嗎? \n\n[小女孩拯救了弟弟，頭也不回的迅速逃離了糖果屋] \n[巫婆消失死去了…..] \n[可那誘人的糖果屋….] \n[依舊靜靜地等待著….下一批迷失的騷年們.....] \n\n充滿童話風格的魔幻主題 \n這次依舊使用了大量令人驚豔的機關 \n輕鬆歡樂的新手型密室 \n絕對是推坑的好選擇!!! \n\n當然 \n這次肯定也一如往常地加上了 \n[修羅般的隱藏劇情!!] \n絕對值得您強力推薦!!', '2018-11-28', 1, 1, 1),
(110, '劍蹤', 30, 4, 8, '70', 500, 49, '無極山上有一世外高人 \n劍法如神 號為「劍聖」 \n某一日竟與「天下第一劍」消聲匿跡 不知所蹤 \n其門下弟子並未得其真傳 逐漸落於人後 \n為了中興門派 \n弟子決定前往昔日無極祖師修煉之地 \n想尋著「天下第一劍」以光耀門楣...... \n\n※遊戲中使用道具劍等有些微危險性，請特別注意安全 \n\n全新武俠風格密室 \n讓您在遊戲過程中 一步步修煉成大俠 \n另含有「超難」隱藏關卡 等你來挑戰!!', '2018-11-28', 1, 1, 1),
(111, '達文西聖燄殺機', 30, 4, 8, '60', 500, 49, '由一群天才組成的神祕組織\"聖燄會\" \n正秘密籌劃下一次的行動 \n政府派出的特務 必須潛入竊取其中的秘密 \n但沒想到 背後的殺機已步步進逼……', '2018-11-28', 1, 1, 1),
(112, '山中小屋之藏身處', 31, 4, 10, '100', 500, 50, '作曲家離奇遇害，女主人下落不明， \n荒廢的古宅， \n流傳著不為人知的秘辛， \n那日我們無意闖入， \n被捲進一個未知的劫難...', '2018-11-28', 1, 1, 1),
(113, '黑日夢', 31, 4, 10, '100', 500, 50, '混亂失序的夢境中， \n耳邊傳來呢喃的話語是善意還惡意? \n我們成為了失憶的畫家， \n在潛意識的線索中， \n找回自己不為人知的過去...', '2018-11-28', 1, 1, 1),
(114, '第九夜', 31, 4, 10, '100', 500, 50, '一封署名第九夜的信函， \n指引偵探來到一幢無人老屋， \n屋內陣陣聲響藏著什麼秘密？ \n偵探們， \n只剩有限的時間能完成探案...', '2018-11-28', 1, 1, 1),
(115, '吉屋出租', 31, 4, 8, '100', 500, 51, '在一陣狂歡後， \n清秀女學生突然成為殺人魔， \n受困的人們正試圖逃出去， \n?伴隨著少女的口哨聲 \n??大家正面臨一場相隔多年的復仇...', '2018-11-28', 1, 1, 1),
(116, '盜月筆記', 31, 4, 8, '100', 500, 51, '記述怪盜一生竊盜手法的筆記， \n\n竟落入犯罪集團的手中!? \n\n為了盜取筆記， \n\n俠盜集團潛入了謎樣富豪的畫廊 \n\n沒想到...', '2018-11-28', 1, 1, 1),
(117, '野獸之心', 31, 4, 7, '100', 500, 51, '從未離開森林的食人野獸， \n\n深夜突然出現在王國之中， \n\n為了拯救命危王后， \n\n獵人們深入野獸的森林中， \n\n?試圖找尋一段深藏已久的真相', '2018-11-28', 1, 1, 1),
(118, '火星任務', 32, 4, 10, '70', 450, 52, 'NASA 正在執行的火星太空艙計畫 \n持續運送探索機器人、艙體零件到火星 \n然而在最關鍵的載人運輸時 \n竟然發生太空梭零件故障的危機 \n失去電力造成通訊中斷 \n能不能成功拯救這個火星任務呢？ \n即刻出發 就靠我們了！', '2018-11-28', 1, 1, 1),
(119, '8', 33, 4, 6, '60', 500, 53, '多重場景變換 X 迷宮般的記憶輪迴 X 精緻連動機關 \n\n探索\"某人\"最深刻且難以忘懷的過去 \n\n在爻的故事之後，究竟發生了什麼事? \n古代的祕寶又怎麼了? \n\n\"她是誰.....?我想不起來了.....\"', '2018-11-28', 1, 1, 1),
(120, '爻', 33, 6, 8, '60', 500, 53, '新疆- 特克斯縣，全世界最大的「八卦城」。\n詭異而又神祕。\n傳說由南宋道教全真七子之一的丘處機佈置，當時丘處機應成吉思汗的邀請前往西域，經過特克斯河谷時，被這裡的山川形勢所打動，於是佈置了這座八卦城.....\n但背後的真因其實是....?', '2018-11-28', 1, 1, 1),
(121, '地下噬', 33, 2, 4, '30', 300, 54, '陌生的環境，撲鼻而來的血腥氣息... \n\n為何我會在此處? \n\n怎麼來此處的? \n\n不...這些好像不是很重要... \n\n求生的本能告訴我...現在........只要逃出去.....', '2018-11-28', 1, 1, 1),
(122, '喵', 33, 2, 4, '30', 300, 54, '可愛的喵星人...是歹徒的首要目標....??!! \n\n究竟...這群歹徒在計畫著甚麼..?', '2018-11-28', 1, 1, 1),
(123, '攝影屍', 1, 6, 8, '100', 550, 4, '每個對密室感興趣的玩家只要一踏進笨蛋工作室，幾乎都一試成主顧，變成了笨蛋鐵粉！這次笨蛋們要再次推出靈異驚悚主題！更多刺激緊張的互動！自認藝高人膽大的就趕快來挑戰吧！ \n\n故事背景 \n\n短短一個月內，四名知名模特兒被殘忍殺害，死者皆遭到長時間痛苦的凌虐後才斷氣，警方深入調查，發現多年前四名死者曾參加過一個共同的攝影計畫，而當年主持此計畫的攝影師卻早已銷聲匿跡，攝影棚也停業多年。當年光鮮亮麗的攝影棚裡，究竟藏著甚麼秘密？', '2018-11-28', 1, 1, 1),
(124, '奪命鎖鏈1', 1, 6, 8, '100', 550, 4, '「我們被鎖鏈鏈住了，要斷開鎖鏈才能離開這裡！」\n\n「欸，那邊好像有東西，你快過去看看！」\n\n「9527！9527！試試看 9527！」\n\n「當你們看到這封信的時候，我可能已經死了...」\n\n「 時 間 剩 下 3 0 秒 ！」\n\n甜甜圈排過了、線上遊戲打過了、桌遊也玩膩了，最近還有什麼遊戲是你還沒有玩過的呢？來試試現在最夯的「密室逃脫」吧！\n\n「密室逃脫」是最近最紅的真人實境解謎遊戲，不同於傳統的解謎遊戲僅限於紙上解謎，這次的密室逃脫遊戲是真的會把你關進密室裡！在密室當中，你將運用你的智慧與觀察力找尋每一條線索，才能夠順利地從密室中逃離！\n\n這次，你受到了委託，你將與你的團隊一同進入安和路的命案現場，在封鎖的密室內對一起一家三口的滅門血案重啟調查。究竟，這起命案是命運無情的捉弄，是情感的糾結，還是巫術的詮釋？腳上鋃鐺作響的鎖鏈，又該如何掙脫呢？\n\n想要掙開鎖鏈安全逃出密室嗎？自己來找線索吧！\n\nBreak Free！奪命鎖鏈 故事情節：\n\n2013 年 2 月 1 日，安和路上發生一起一家三口的滅門慘案，此案最終以男主人將自己的妻兒殺害後自殺作結。\n\n然而，承辦此案的檢察官 Farrell 重新檢視這件案情時發現其中充滿疑點，於是數日再次命案現場調查，卻從此失蹤．．．\n\n如今，身為檢察官同事的你們組成搜查小組前往搜尋 Farrell 的下落；然而搜查小組一進入命案現場，便旋遭受到意外攻擊而失去意識。當你們再次醒來時，黑暗的房間裡，所有人都遭受到囚禁．．．\n\n受到鐵鍊束縛的你，能夠成功逃脫並且看透真相嗎?\n\n只有活下來...才有機會解開謎團', '2018-11-28', 1, 1, 1),
(125, '幽魂戲院', 34, 4, 8, '60', 500, 55, '曾經風光一時的太平大戲院，因為一場無名之火燒成廢墟，每逢月圓之時 \n，殘破的戲院內就會傳出奇怪聲響。買下這戲院的新地主請你們前來調查鬧鬼的原因，但你們卻意外喚醒了裡面的鬼魂孽怨?', '2018-11-28', 1, 1, 1),
(126, '攝魂鈴', 34, 4, 8, '60', 500, 55, '傳說每年七月一日時，蕪村的墨宅中就會響起詭異的鈴聲。 \n約一甲子年前，蕪村曾經發生一個重大事件，村民死的死，逃的逃，最終滅村。你們是當時事發前從蕪村逃出來的村民後代子孫，好奇的你們在六月三十一日晚上十一點，進入墨宅一探究竟，想要回去了解當年到底發生了什麼事。', '2018-11-28', 1, 1, 1),
(127, '恐懼地下室', 34, 2, 6, '30', 250, 55, '這是一個關於葳葳的故事，她和男友因為經濟能力不佳，所以長期住在不見天日且常常漏水的地下室小套房裡。而曾經相愛的他們，就在某日葳葳發現家門口多了雙女生的鞋子，所有的一切都變了調，葳葳因此失去理智，將所有傷害過她的人都綁架到這個地下室中.....準備凌虐致死！', '2018-11-28', 1, 1, 1),
(128, '恐懼屠宰場', 34, 2, 4, '30', 250, 55, '最近小孩失蹤人數持續增加，你們的妹妹也包含其中。同一時間市區的肉店生意卻突然變好，懷疑有所關聯的你們決定偷偷潛入肉店倉庫，沒想到在門口就被人打暈，醒來已經在黑暗之中...', '2018-11-28', 1, 1, 1),
(129, '中藥行', 34, 2, 4, '30', 250, 55, '某日，中藥房的師傅外出中，城裡卻傳來了國王重病的消息，身為城裡頭號中醫店學徒的你們，王室要求在時間內配置出國王的解藥，否則必須砍頭作為懲罰！', '2018-11-28', 1, 1, 1),
(130, '森林殺人事件', 34, 2, 4, '30', 250, 56, '森林最近發生好幾起大野狼殺害小動物的事件！為了防止再有受害者出現，小豬邀請你們到家裡討論對策！', '2018-11-28', 1, 1, 1),
(131, '驅魔', 34, 2, 4, '30', 250, 56, '聽說曾踏入廢棄曼雷民宅的人，就再也沒有出來過...你們是一群不信邪的驅魔師，決定闖入民宅一探究竟！', '2018-11-28', 1, 1, 1),
(132, '致命解藥', 34, 2, 4, '30', 250, 56, '羅傑製藥公司締造了許多傳奇，最厲害的就是該公司藥品救活病患的高成功率。身為敵對製藥公司的你們，奉命竊取羅傑製藥公司的情報。當你們闖進老闆辦公室時啟動了保全系統，保全會在30分鐘內趕到，你們必須找到情報並且逃出房間。', '2018-11-28', 1, 1, 1),
(133, '死亡中隊：黑蝙蝠', 34, 4, 8, '60', 500, 56, '即使知道死亡是我們的代名詞，我也永不退縮..... \n國內首屈一指的黑蝙蝠中隊，在一次偵查任務中，全員失蹤。最後訊號的發送地點，位於四川。此次任務事關國家機密，政府決定派出另一中隊前往救援，並且將機密文件平安帶回。', '2018-11-28', 1, 1, 1),
(134, '時之塔-第三章', 35, 2, 6, '90', 350, 57, '世界知名的銀行家，法蘭克·契科， \n在某個清晨被人發現陳屍在中央公園， \n案發現場遺留大量安眠藥空罐及酒瓶， \n但卻沒有發現任何遺書，雖然警方最終仍以自殺結案，但這當中似乎還影藏著什麼巨大的秘密... \n兩天後，有封神秘的委託書，計到了你的手上， \n要求你前往法蘭克的住家，並找到法蘭克自殺的真正原因，好其心驅使你的腳步，究竟這整件事的背後， \n隱藏什麼樣的陰謀？ \n看著委託信上的圖樣浮水印，心理漸漸有了頭緒...', '2018-11-28', 1, 1, 1),
(135, '彌賽亞計畫2.0', 35, 4, 10, '90', 350, 57, '就在平安夜的當天，你們收到了指導教授-克里斯博士的簡訊： \n\"我的研究生們，「彌賽亞計畫」是我畢生心血， \n請立即至我家依照我留下的線索，找出那份被藏匿的報告書， \n若我已遭遇不測，請立即公開報告書上的結果。\" \n就在收到簡訊的當晚， \n卻又得知克里斯博士遭到襲擊並且昏迷的消息， \n於是你們決定立即遵照博士的指示，馬上趕到博士家中， \n解開博士留下的謎題，並讓這充滿謎團的事件真相大白...', '2018-11-28', 1, 1, 1),
(136, '詛咒小鎮', 35, 4, 8, '90', 350, 57, '據說台灣本島有個小鎮，全鎮有70%U以上的人，染上了一種怪病， \n發病時會出現手腳發黑的狀況，並逐漸潰爛，甚至需要截肢， \n由於遲遲查不出病因， \n鎮民們都認為這些染病的人一定是受到無法解釋的詛咒， \n才會受到如此殘忍的懲罰！ \n另一方面，政府擔心這不明疾病持續地蔓延， \n將會造成人民的恐慌與不安， \n於是派遣了一批調查團隊，前往該地查明疾病的真相， \n究竟這小鎮是真的被詛咒了？還是病情另有隱情...', '2018-11-28', 1, 1, 1),
(137, '焦土行動', 35, 4, 7, '90', 350, 57, '新型態毒品—「賽普勒斯」出現在市面上，造成嚴重的社會動亂 \n國土戰略局(The Strategic National Division, SND)著手行動 \n並派遣了一成員「傑洛，馬希姆」前往黑幫進行臥底調查 \n傑洛在一周前回報，他已章握了賽普勒斯製造地點 \n卻從此音訊全無 \n隊員們擔心任務從未失敗的傑洛，是不是遭到了同袍的背叛 \n就在此時，特務小隊準備進行攻堅，務必取回完整的賽普勒斯樣本 \n行動代號：\"焦土\" \n', '2018-11-28', 1, 1, 1),
(138, '諾亞方舟', 35, 3, 5, '90', 350, 57, '當地充滿了邪惡，\n造物主決定用一場洪水毀滅所有的生命，將世界重新洗牌，\n只有上帝揀選的物種和能夠通過考驗的義人\n才能登上諾亞的方舟\n得著神的祝福和拯救就在此時，傾盆大雨已經澆下\n洪水眼看就要淹沒整片土地，面對重重的挑戰\n你們是否來得及在世界毀滅前完成考驗...', '2018-11-28', 1, 1, 1),
(139, '躐殺逃城', 35, 4, 7, '90', 350, 57, '眼看著倒在地上，上一秒正與自己爭吵、推擠 \n下一秒卻頭破血流躺在血泊中，漸漸不再掙扎的軀體 \n嚇得驚慌失措的你，此時腦袋一片空白 \n一位陌生的老人，突然握住你顫抖的雙手說： \n\"小伙子，快點逃！！你必須在天黑前抵達希伯崙逃城 \n並且得到大祭司的接納，才能停止追擊者的躐殺！ \n若在進城前就被追擊者抓住，可能會立刻被處以死刑阿。\" \n心慌的你已經沒有退路，必須立即動身，但是時間有限， \n天黑之前你能在荒野中找到正確前往逃城的路嗎？ \n能逃過追擊者的躐殺全身而退嗎...', '2018-11-28', 1, 1, 1),
(140, 'Mission 6 - 吸血鬼教堂', 27, 6, 12, '60', 350, 43, '你們是一群剛被轉化的吸血鬼，現在是你們最關鍵的一夜... \n\n你們必須來到吸血鬼的聖地——吸血鬼教堂 \n\n獲得始祖留下的吸血鬼印記，通過吸血鬼試煉，蛻變成一個優雅高貴的吸血鬼。 \n\n但是試煉的道路充?艱險，你們能否通過吸血鬼先祖的試煉，獲得吸血鬼始祖的認同？ \n\n吸血鬼教堂中的祭壇能否?你們打開？ \n\n先祖的墳墓中是否留下什麼秘密？ \n\n神秘的六芒星和吸血鬼戒指之間糾纏不休的關係…… \n\n當你們甦醒的?候，發現離試煉結束還有1個小時。 \n\n始祖六芒星閃爍，血族之戒歸位 \n\n推開神秘的教堂之門，吸血鬼試煉，從你開始……', '2018-11-28', 1, 1, 1),
(141, 'Mission 7 - 死神地下室', 27, 4, 10, '60', 350, 43, '這是一個關於死神光臨的故事。 \n\n殺人魔找上你們，想和你們玩個遊戲… \n\n佈滿下水管道的地下室中充滿霉味 \n\n斑駁的光影下，老舊的電話機、刑架上的秘密 \n\n伴隨 管道水滴落聲，隱約傳來炸彈計時器的聲音。 \n\n滴答…滴答… \n\n找到那個正在計時的炸彈，拆紅線？還是藍線？ \n\n命運，掌握在自己手中。 \n\n死亡遊戲，還有一個小時……', '2018-11-28', 1, 1, 1),
(142, 'Mission 8 - 貝克街亡靈', 27, 2, 5, '60', 350, 43, '你們被冠以名偵探之名 \n\n來偵破歷史上最難辦的一個案件——大英博物館館長死亡之謎。 \n\n時空之門打開，你們來到1894年，地點是，英國倫敦貝克街221B。 \n\n在大偵探福爾摩斯先生家的隔壁，住著一位博物館館長 \n\n幾天前，博物館的館長被發現死在他的辦公室裡面，房門是從裡面鎖上的。 \n\n這是一樁典型的密室殺人案件。福爾摩斯請你們來幫他破解這一樁命案。 \n\n現在，你們代表的是名偵探工藤新一。時空之門只有1個小時的逗留時間 \n\n你們必須在1個小時?破解案情，回到現在。 \n\n否則，時間一到，你們將被永遠拋棄在19世?…… \n\n當你被名偵探靈魂附體，你的榮耀，你的責任 \n\n讓你勇往直前！', '2018-11-28', 1, 1, 1),
(143, 'Mission 10 - 謎礦', 27, 4, 7, '60', 400, 43, '銳普克礦坑是一個充滿天然金礦的地方 \n\n有一天，從礦坑裡面傳出了一聲巨響 \n\n接著，礦坑就坍坊了，裡面的工人再也沒出來過 \n\n此次似乎不是一般的爆炸事件，為了調查事情的真相 \n\n當地政府組了一支調查隊進去調查 \n\n一個小時後，礦坑又傳來一次巨響，從此再也沒有調查隊的消息... \n\n而礦坑則是每個小時傳出巨響。 \n\n無計可施之下，政府委託了黑衣偵探團來進行調查 \n\n只是，當調查越深入，卻發現事情不是所想的那麼簡單.....', '2018-11-28', 1, 1, 1),
(144, 'Mission 11 - 最後的逆襲', 27, 4, 8, '60', 400, 43, '逛街的時候，一個聲音突然在耳邊響起： \n\n「哈囉∼我是這個世界的守護神，事情是這樣的，我跟其他世界的守護神打麻將的時候，不小心把你們的世界給輸了，所以我現在要召喚各位去拯救世界∼」 \n\n蝦米？！還有這種事？！再說守護神是啥玩意兒？！ \n\n就這樣，一場麻將造成世界面臨毀滅的危機！ \n\n擁有主角光環的我們 ，即將踏上拯救世界之旅∼', '2018-11-28', 1, 1, 1),
(145, 'Mission 17 - 死神•閣樓', 27, 4, 7, '60', 400, 44, '一起事件，透過三個視角窺視 \n一座山莊，串起三個深陷其中的人 \n\n不同的選擇將導向不同命運 \n如同實驗的白老鼠，自以為掌握命運 \n殊不知一切仍在死神的安排之中 \n\n綑綁、罪狀、恐懼、救贖 \n死神的精密計畫隨著三條時間軸拉開序幕 \n\n你﹐準備好為你的行為付出代價了嗎?', '2018-11-28', 1, 1, 1),
(146, 'Mission 16 - 蝴蝶谷', 27, 2, 6, '40', 300, 44, '傳聞在某個森林的深處有個神祕蝴蝶谷 \n\n這裡的生態極為豐富適合蝴蝶生存 \n\n而蝴蝶谷當中最稀有的便是有「天使的羽衣」之稱的金緞蛺蝶 \n\n粉白翅膀上有著炫麗的金色紋路 \n\n令喜愛蝴蝶的人為之瘋狂 \n\n但是，其所在位置極為封閉，沒幾個人能真正到那裡一睹蝴蝶真正的面貌 \n\n身為愛好昆蟲的生物學家 \n\n為了在研究上增添一筆新的紀錄 \n\n突破重重的阻礙前往蝴蝶谷 \n\n揭開那神秘的面紗', '2018-11-28', 1, 1, 1),
(147, 'Mission 18 - 被神遺棄的女孩', 27, 4, 8, '60', 400, 44, '為了尋找失蹤的好友，一群高中生來到事件發生的地下道入口。 \n朝下望去，只見一片死寂，彷彿吞噬著所有生氣。 \n隨著越往下的步伐，心裡的不安也越來越深。 \n斑駁的牆面、泛黃的地板、忽明忽暗的電燈，究竟這裡曾發生過什麼... \n--------------------------------- \n「欸欸，小白，你去那邊。正媚，你在那別動。龐子，你去角落。」 \n「準備好了嗎？ 3...2...1... 押！」 \n啪啪啪啪，燈光一盞一盞的從眼前熄滅，頓時地下道陷入了一片黑暗.... \n「怎麼了！發生了什麼事？」 \n突然耳邊傳來奇怪的聲音:「嘻嘻嘻嘻...」 \n「誰？是誰？」 \n「嘻嘻嘻嘻...」 \n「你要幹什麼？？啊！！！」 \n\n「嘻嘻嘻嘻...嘻...嘻嘻嘻嘻...」 \n\n不能離開，你，只能留下', '2018-11-28', 1, 1, 1),
(148, 'Mission 19 - 鬥陣行', 27, 4, 8, '60', 350, 44, '為了爭取天庭職缺的機會，身為黑、白二妖的你們踏上旅程，急忙去天庭送自薦公文。\n\n然而莫名的突發狀況，讓你們無所適從\n一次次的事件都是危機\n只能任憑對方超前一步，自己卻離機會愈來愈遠\n「不行！不能停下腳步!既然對方來陰的，我們也要以牙還牙，以眼還眼，大家相堵會到！！」', '2018-11-28', 1, 1, 1),
(149, '歌劇名伶事件簿', 36, 4, 8, '60', 300, 58, '『Nessun dorma∼ Nessun dorma∼』\n\n『BOSS，心情這麼好！還唱歌劇啊∼』 \n好夥伴JACKY似乎也被我的好心情感染……\n　\n\n『當然囉∼最近不管什麼案件，在我手上都是輕鬆解決∼』 \n......心想：最近真是超順的，天生我就該是一個超級警探啊∼\n　\n　\n『-O sole mio∼∼』\n\n專屬鈴聲還沒響完，我已經接起電話……\n『是我！兇殺案？！ 好！我立刻過去！』\n\n『BOSS，怎麼了？！』JACKY邊跟著跑起來邊問……\n『出事了！快開車！』\n　\n將車鑰匙拋向JACKY我邊解釋：『歌劇院發生兇殺案，\n女主角被殺！研判兇手可能還在現場，我們立刻趕過去！！』\n......心想，這次又是我展露身手的機會了，哈哈哈∼', '2018-11-28', 1, 1, 1),
(150, '米其林尋兇', 36, 4, 8, '60', 300, 58, '米其林餐廳認證一直是世界最知名的美食認證，\n\n其中，BRISTOLA更是一位難求的米其林美食殿堂\n\n但是，在最近一次的主廚徵選中\n\n即將要退休的現任主廚ERIC竟然猝死！\n而嫌疑最大的\n\n就是身為『美食偵探』的你多年的老友PAUL\n\n為了洗刷他的冤屈，也為了『美食偵探』的名聲\n\n　\n\n你決定潛入BRISTOLA找出真兇，洗刷PAUL的冤屈！\n\n　\n主題建議：\n扮演美食偵探，你必須細心且大膽，在環境中拼湊出有用的線索，\n\n而且既然身為美食偵探，對於各種烹調技巧或是餐廳佈置你應該瞭若指掌！\n\n尋兇類主題，要更細心的思考與大膽的推理，\n\n適合已經有些經驗挑戰者。', '2018-11-28', 1, 1, 1),
(151, '石器時代', 36, 4, 8, '60', 300, 58, '^!%$&!%&!@*##&%&!\n(在遠古的石器時代)\n\n!%%@&;@^!%$&*@$\n(那時文字還沒發明)\n\n@$*%#&^%&!@*##&\n(那時數字還未統一)\n　\n*&!@%!#%&#&%^%\n(生病時只能問天)\n\n\n#&^@%&@#$$$$#%!\n(災難時只有自救)\n\n#&^@%&@#$$$$#%!\n(這樣的時代裡)\n\n%&&&$$^&$!@@#$@\n(一切都是未知)\n　\n^$%$^!@!!$%%%%&*^###%$$#*......\n(你能依靠的，就只有彼此......)', '2018-11-28', 1, 1, 1),
(152, '軒猿忍者傳', 36, 4, 8, '60', 300, 58, '暗靜森中漆黑無聲之境 \n殺氣顯露鋒芒斂於劍柄 \n小橋東側城郭暗藏玄機 \n島徑迂迴難有存活含意\n\n\n收到這段密文，我們在迅雷不及掩耳的情況下執行了任務，\n暗殺了對方的忍者頭目『小島』，\n\n但卻在撤離時不小心觸動了陷阱，\n\n這真的是身為一個忍者不該犯的錯！ \n\n但是主公卻傳信不要我們自殺，\n\n希望我們可以逃出去繼續為他效命！\n\n在追兵重重包圍之下，這可是比一死了之更困難的選擇！\n\n我們只能盡全力從聯絡密道想辦法逃出去了......', '2018-11-28', 1, 1, 1),
(153, '嗜血病院', 36, 4, 8, '60', 300, 58, '本以為只是一個小手術，卻作了全身麻醉！？\n\n一覺醒來，身體是沒有什麼特別不舒服，\n\n但是四周卻瀰漫的一股詭異的氣氛？！\n\n嗶- 嗶- 嗶-...仔細聽才發現，\n除了各種儀器發出的聲音之外，竟然沒有任何其他人的聲音。\n\n『不對！ 一定有事情發生！ 』用盡了力氣站起來，我延著走道到了護理站，\n\n卻沒有任何人，所有的出口也都上鎖了。\n\n這時，心裡面產生了很不好的預感......', '2018-11-28', 1, 1, 1),
(154, '夢想甲子園', 36, 4, 8, '60', 300, 58, '「我知道，這是最後的機會了......」\n\n高中第三年 ! \n\n鳴門高校終於有機會在甲子園冠軍戰一決高下 ! \n\n站在投手丘上忍住淚水的我，終於走到這一刻.....\n三年來，每天做不完的重量訓練與投球練習所帶來的痛苦\n\n在這個時候都不算什麼了 !\n\n因為，這是我人生中的第一次，也是最後一次......\n\n不管如何，全力以赴 ! GO !!!', '2018-11-28', 1, 1, 1),
(155, '羅伯班克', 1, 4, 8, '100', 630, 5, '「羅伯．班克」一個令各家銀行聞風喪膽的名字！\n沒有人知道他真正的長相，且至今還沒有任何保全系統能夠阻擋他！\n在重重的疑雲背後，他早已鎖定了下一家銀行準備下手！\n#這次不當好人，設法搶走最多的錢吧！\n#機關重重，考驗你的高超技術\n#挾持人質進行談判交易', '2018-11-28', 1, 1, 1),
(156, '笨蛋特務', 1, 4, 10, '100', 499, 5, '各位笨蛋特務的在校生們經過了一連串訓練後，驗收成果的時候終於\n到了！你可以與你的快樂夥伴合作闖關，也可以變成敵人互相傷害！\n努力通過考驗成為最頂尖的笨蛋特務吧！\n#海量謎題快感\n#單線通關/對戰廝殺 兩種模式可選', '2018-11-28', 1, 1, 1),
(157, '鬼新娘', 1, 4, 8, '100', 530, 5, '在某個偏遠小鎮中，近幾個月來不斷發生離奇死亡的案件，根據鎮民\n的透漏，有一位自殺死亡的女性冤魂在鎮上作祟，聽說被纏上的年輕\n男性靈魂都會被帶走...\n#笨蛋首款靈異風格密室\n#無限迴廊變換場警\n#膽量及智慧大考驗', '2018-11-28', 1, 1, 1),
(158, '馬雅魔方', 1, 4, 8, '100', 530, 5, '馬雅文明早在距今5000年前已存在於地球上，被譽為古代史上最先進和複雜的文明之一，日前考古學家挖掘到一塊散發出強烈能量的神秘方塊，而方塊的光芒指引著我們來到古馬雅遺跡... \n#神秘攜帶式魔方機關 \n#真實歷史謎團改編 \n#高度操作型謎題', '2018-11-28', 1, 1, 1),
(159, '顛倒?室', 1, 4, 10, '100', 530, 5, '傳說日本廣島市郊有一棟古怪的空屋，每年一月四日午夜零時，都會出現不可思議的現像...\n委託人大河:「幾天前，高齡九十歲的奶奶交給我一把鑰匙，交代我到她廣島的老家來，尋找遺失多年的重要物品，希望\n各位能夠協助我解開都市傳說的謎團，也完成奶奶的心願。」\n#奢華日是顛倒場景', '2018-11-28', 1, 1, 1),
(160, '奪命鎖鏈1', 1, 4, 8, '100', 530, 5, '日前發生一起慘絕人寰的滅門慘案，而負責調查的檢察官在\n偵 辦 此 案時卻離奇失蹤， 隨後進入的搜查小隊重回現場釐\n清疑點時，也遭受不明攻擊被困在屋內，只有活下來才有機\n會解開謎團...\n#身歷其境的五感刺激\n#精采絕倫的故事情節\n#超乎想像的腦力挑戰', '2018-11-28', 1, 1, 1),
(161, '同學幫幫忙', 37, 4, 6, '110', 500, 62, '[故事介紹]\n成績對於學子來說就像是人生成功與否的象徵，而成績單的到來則表示向世人展現成敗的時候來臨了，今天就是收到成績單的日子，對於這不願面對的真相，如同大部分人一樣，我選擇讓他隨風而逝，變成紙飛機航向未知的地方。\n沒想到就在放手的那瞬間，風起雲湧，陰風陣陣，呼的一聲把紙飛機吹了個頭昏眼花，咻的飛入鄰居家裡，頓時我大驚失色，這鄰居一家兩口向來古怪，對我不理不睬，卻又與母親非常交好，要是成績單被發現折成紙飛機遺落在他們家，不知會激起甚麼腥風血雨，總是露出奇怪的眼神怪可怕的，而且從不讓人踏入他家一步，急迫與好奇我找來三五好友於家中，商討奪回紙飛機的重要任務，順便看看鄰居究竟藏著甚麼秘密。\n?\n「我的成績單飛進了別人家中，請大家幫幫我，幫我奪回它，拯救我的人生!」', '2018-11-28', 1, 1, 1),
(162, '輪迴', 37, 3, 8, '90', 450, 62, '身為致力於研究精神醫學的你們，在某天突然來了一位病人，他聲稱他的腦海中總是不斷的想起重復的斷章，這些重復的斷章漸漸的將他的記憶掩蓋。\n　\n　他希望身為專家的你們能夠幫助他，進入他的精神世界，衝破不斷輪迴的記憶。但是切記！你們只有一個小時的時間，並且需要找到病人關鍵的記憶並破解他，才能重返現實！', '2018-11-28', 1, 1, 1),
(163, '窒愛', 37, 3, 8, '90', 450, 62, 'Kristina被發現在家中燒炭，警方進入時發現房間的窗戶是開著的，於是懷疑Kristina死於他殺。\n驗屍後發現Kristina在死後曾遭人侵犯，但DNA資料庫中沒有符合的對象。\n另外，循線追查E-mail後IP指向這間房間。\n但是時間緊迫，距離結案的時間只剩下60分鐘，一定要盡快找出真正的兇手！\n?\n　　自殺？他殺？誰，才是真正的兇手？\n　　還是……兇手不只一個？\n　　也許…我們都是幫兇……\n', '2018-11-28', 1, 1, 1),
(164, '仙緣', 37, 4, 10, '90', 450, 62, '不論科技如何的發達，文明如何的繁榮，身為考古探險專家的你們，總有個無法破解的謎題不斷盤旋在你們心中。\n　\n　「成仙」！\n　\n　人是否能成仙呢？帶著這樣的想法，你們不斷進行尋仙的冒險，終於在一個不起眼的山洞中，意外的發現的仙人的蹤跡，卻也讓整個隊伍誤入了遠古時期仙人所留下的陣法。\n　\n　內心的激動與沒辦法掩飾的恐懼！\n　\n　眾人茫然的相望的表情彷彿述說著：「仙人！他真的存在著！但我們會如何呢？我們又能否逃出並告訴世人他們的存在呢？」', '2018-11-28', 1, 1, 1),
(165, '七罪集團', 37, 3, 10, '90', 450, 62, '21世紀出現了專門販售犯罪計畫的智囊，所有證據矛頭指向一個由七人所掌管的集團：七罪集團。\n　\n　特務組織掌握了七罪集團的秘密基地，派出精英小隊前往，間諜會將七罪引出基地1個小時，各為特務必須在一個小時內找出七罪的真實身分並且逃離基地。\n　\n　這次的任務，只許成功不許失敗', '2018-11-28', 1, 1, 1),
(166, '碟仙', 38, 4, 9, '100', 400, 63, '傳說 夜半十二點 鐘聲敲響十二下 準備一只碟子以及數根蠟燭 便可問前世今生 廢棄校舍的女廁 每到傍晚 總會傳出啜泣聲', '2018-11-28', 1, 1, 1),
(167, '天工閣', 38, 4, 9, '100', 400, 63, '漢代初興高祖劉邦死後 其妻呂后執掌朝政八年 聽聞江湖傳言有一寰神丹可返老還童 並藏於江湖第一門派天工閣內 便派遣私人軍隊前往盜取丹藥', '2018-11-28', 1, 1, 1),
(168, '天使聖物', 38, 2, 4, '50', 300, 63, '傳說 在遠古時候人類還沒有誕生的時候天使與惡魔不分彼此共同生活在人界 人族誕生後便有了罪與殺戮將矛頭指向天使與惡魔一族兩族節節敗退之下躲入各自的聖地中「天使族人阿！我是世界樹也是你們的母靈人族已然走向毀滅之路只有取得聖物才能淨化人族殺戮之心」', '2018-11-28', 1, 1, 1),
(169, '木屋', 38, 2, 3, '80', 450, 63, '在歐洲的某個山上 突然下起了一場大雪 大雪過後 山腳下出現了一座小木屋 沒有人知道是誰建造的 自從小木屋出現之後 常常會有村民消失 雖然消失的村民最後回到了村莊 不過卻喪失了那段記憶 村裡面的牲畜也被抽乾了鮮血 村長為了村民的安全便對外找了自願者前往木屋一探究竟 並承諾給予一大筆的財富', '2018-11-28', 1, 1, 1),
(170, '惡魔骸骨', 38, 2, 5, '60', 300, 63, '傳說 在遠古時候人類還沒有誕生的時候天使與惡魔不分彼此共同生活在人界 人族誕生後便有了罪與殺戮將矛頭指向天使與惡魔一族兩族節節敗退之下躲入各自的聖地中「天使族人阿！我是世界樹也是你們的母靈人族已然走向毀滅之路只有解開封印你們才能逃離人類的追捕」', '2018-11-28', 1, 1, 1),
(171, 'ATLANTIS亞特蘭提斯-失落的國度', 39, 4, 8, '90', 400, 64, '[故事背景]\n\n傳說中，西元前9000多年前\n有個最強盛的國度－亞特蘭提斯\n她是科學技術的極致、人類文明的巔峰\n曾坐擁著世上的一切\n\n但就在一夕之間，天地變色\n不留痕跡地消失於海平面上\n成為人們永恆的傳說\n只存在每個人的想像之中\n\n直到二十一世紀的某天\n\"亞特蘭提斯\"又再度出現在海面上\n究竟她的出現有什麼涵意呢…', '2018-11-28', 1, 1, 1),
(172, 'G.G-最後倒數', 39, 4, 8, '90', 450, 64, '[故事背景]\n天地昏暗，草木蕭瑟，世界剩下一片荒蕪\n文明化為灰燼；歷史停止撰寫\n毀滅崩壞的世界，不過是時間的問題\n僅存的，就只有你們…以及絕望…', '2018-11-28', 1, 1, 1),
(173, '模仿犯-開膛手再現', 39, 4, 8, '90', 400, 64, '[故事背景]\n十九世紀末，連續殺人魔—開膛手傑克\n用血腥和殘酷震驚了全世界\n隨著兇手的銷聲匿跡\n這樁世紀懸案，也隱沒在歷史的迷霧之中…\n\n一百年後的現代\n相同的犯案手法再度讓世人回想起那段恐懼\n而這次　你/妳能不能找出兇手？', '2018-11-28', 1, 1, 1),
(174, 'To Lie or not To Lie', 40, 4, 6, '120', 500, 65, '產品詳情\n「你愛我嗎？」\n「當然，親愛的」\n「為什麼要騙我？」\n「如果說是因為我愛你，能夠原諒我嗎？」\n「?那你能夠原諒我嗎？我也是因為太愛你了。」\n\n建議遊戲人數：4-6人\n\n是否曾聽過有人對你說：「你怎麼知道！」，\n是否常收集觀察到的訊息，\n推論出事件的原委，\n這個故事，適合喜歡細心推理的你。\n\n[提醒]此主題為零機關密室，重劇情推理走向，會有較多的文字閱讀唷！', '2018-11-28', 1, 1, 1),
(175, '生日大餐', 40, 4, 8, '120', 600, 65, '那一天，是我的生日......\n我想知道，在那個令人難忘的日子，到底發生了什麼事？\n\n建議遊戲人數：4-8人\n\n是否曾在夜深人靜時，窩在沙發看著恐怖片\n享受著那打從心底顫出來的寒意\n這個故事\n適合喜歡驚悚電影的你。\n\n[提醒]此主題為驚悚主題唷！(非恐怖主題)', '2018-11-28', 1, 1, 1),
(176, '同學會', 40, 4, 6, '120', 500, 65, '風吹得葉子沙沙作響,我坐在樹下，\n是午後刺眼的陽光讓我眼角酸澀的吧！\n還記得那年埋下的時光膠囊嗎？\n多年來,我從不曾忘懷,那段最愉快的時光！\n\n遊戲人數：4-6人\n(基於遊戲設定，人數限定4-6人，\n且無法臨時變更人數)\n\n喜歡小說或電影嗎，\n你是否常沉浸於劇情中，\n心情跟著角色一同激盪著，\n這個故事，適合喜歡體驗劇情的你。\n\n[提醒]此主題有一點點小驚悚喔∼(非恐怖主題)', '2018-11-28', 1, 1, 1),
(177, '倖存者', 41, 4, 10, '90', 450, 66, '身臨豪華私人飛機\n看不見的凶險\n正步步向您逼近\n十年前的大火、十年後的怒火\n當時的倖存、此時的燎原\n到達寬恕的道路上\n除了崎嶇以外\n還有絕望相隨\n你能從三萬英呎高空倖存下來嗎?', '2018-11-28', 1, 1, 1),
(178, '雙子的懺悔', 41, 4, 6, '90', 350, 66, '雙子的懺悔為您設計出\n龐大故事線\n以及與眾神互動\n顛覆希臘神話之作\n與眾神共處之時\n探究眾神的秘密\n進入聖域的你們\n一步一步看見眾神的\n私慾、狡詐、爭鬥\n一點一滴帶您拼湊出\n奧林帕斯的爭權奪利、\n?興敗盛衰\n迷戀希臘神話的你\n不能錯過星座系列\n\n歡樂版建議遊玩人數為2-4人，時間長度50分鐘，假日300元，平日250元', '2018-11-28', 1, 1, 1),
(179, '獄謀', 41, 4, 10, '90', 450, 66, '結合機關\n創新謎題\n逼真場景\n開放式闖關過程\n感受無所不用其極的\n逃獄氣氛\n歡迎來體驗\n臨場真實逃獄吧！\n於這座黑牢\n感受強烈緊張束縛感\n是讓羈絆越來越深\n抑或信任分崩離析\n死亡迴響逐漸逼近\n你們如何越獄成功?\n\nRun for your life.', '2018-11-28', 1, 1, 1),
(180, '娃娃', 41, 4, 8, '90', 450, 66, '那是間?神秘的古宅，充滿漂亮娃娃的古宅\n每到夜晚都會發出娃娃銀鈴般的笑聲，更為這座古宅蒙上詭異的面紗\n\n年復一年，許多人進了古宅卻再也沒出來\n是詛咒?還是娃娃真的找他們相伴了...?', '2018-11-28', 1, 1, 1),
(181, '竊命·牽羊', 42, 4, 8, '120', 500, 67, '竊命.牽羊，曾叱吒歐洲的貴族，到底招惹了什麼樣的事物，導致衰敗，僅存的唯一家族血脈莎莉曼在查尋原因的同時，又有什麼樣的麻煩悄悄的找上了她……', '2018-11-28', 1, 1, 1),
(182, '殤城', 42, 4, 8, '120', 500, 67, '位於龍虎山深處的一座荒城，\n據傳裡面仍保存著千年前留下來的寶物，\n千年來濃霧瀰漫，一旦踏入此地，便沒有再見到有人出來過，\n如今，濃霧漸漸散去...\n封印了千年的寶藏與秘密，正呼喚著各位的前來...', '2018-11-28', 1, 1, 1),
(183, '父仇', 43, 2, 4, '60', 300, 68, '[爸爸，今天是父親節。]\n[................我知道。]\n\n「司法不行…..」\n手上厚厚一疊的調查報導，被我緊緊握到發皺，\n嘴唇憤憤地抖著，顫抖中只說著我心中唯一的想法，\n模糊的視線看著眼前的房間，彷彿還看得到她的身影，\n彷彿，我最愛的女兒，就在我眼前。\n「…………那就私法吧。」\n\n[那爸爸你今年最想要的是什麼禮物呢？]\n[................爸爸想要妳回來。]', '2018-11-28', 1, 1, 1),
(184, '夜魂驚上海', 43, 4, 10, '110', 500, 68, '一場真人實境的神秘案件\n\n以往都是在小說或是螢幕前跟著柯南或是劇情裡的主角一同進行推理辦案嗎!?\n\n現在我們全部實體化!!\n\n超大場景!!\n\n今天你就是故事劇情的主角!!\n\n兇手就在你身旁!!', '2018-11-28', 1, 1, 1),
(185, '遺失的手稿', 44, 4, 7, '90', 400, 69, '『遺失的手稿』', '2018-11-28', 1, 1, 1),
(186, '惱羞巫師', 44, 2, 4, '50', 350, 69, '一位愛玩桌遊的巫師由於屢戰屢敗，所以一氣之下便將世界上所有的桌遊都封印到他的世界中，不明的世人們接到了他的挑戰函，為了打敗惱羞巫師及挽回世界上所有的桌遊，即將進入到惱羞巫師的桌遊世界??', '2018-11-28', 1, 1, 1),
(187, '河伯', 45, 2, 5, '60', 350, 70, '日本鬼怪主題「河伯」有著微微恐怖氣氛，濃厚日式場景！讓您盡情享受密室脫逃的樂趣！40分鐘小品主題，超適合新手入坑款！ㄧ顆心恐怖指數∼擔小的朋友也可以挑戰看看哦！而且地點還是在豐原火車站附近「桌上說桌遊館」裡∼玩完密室逃脫不過癮還能玩桌遊欸！肚子餓還有豐原廟東美食可以吃哦∼完全是超完美組合啊！你說是不是啊∼∼\n鬼怪主題-河伯\n\n江戶時代，經民間謠傳村內曾出現妖魔鬼怪排徊在湖邊小屋，此傳聞越傳越大，幕府將軍為了平復民心派遣御庭番密探去調查此真相…', '2018-11-28', 1, 1, 1),
(188, '秘令', 45, 4, 8, '120', 500, 70, '江戶時代，接獲秘令的眾忍們，為了達成任務，潛入幕府，通過重重難關，但是任務並非想像中如此單純，究竟夜幕中傳出來的腳步聲，是盟友還是敵人?\n\n#九十分鐘長時間挑戰 讓你一次玩個夠\n\n#體驗超大實境迷宮 小心別落入敵人的陷阱中\n\n#打造精緻無違和感的場景 謎題與劇情相互呼應\n\n#多變的空間刺激你的視覺 沉浸於故事氛圍', '2018-11-28', 1, 1, 1),
(189, '瑪莉控', 45, 3, 6, '90', 400, 70, '全世界最暢銷的漫畫MY WORLD(我的世界)截稿日即將到來，粉絲都興奮地等待著漫畫連載，然而身為漫畫編輯部的我們，卻遲遲聯絡不上漫畫家田中一郎也沒有收到他新的連載作品，在時間的催促下我們編輯部只好前往田中一郎的家中，卻發現… #電玩 #歡樂 #回憶 #一次滿足你三種願望', '2018-11-28', 1, 1, 1),
(190, '古墓秘笈', 46, 2, 16, '60', 650, 71, '楊過和小龍女隱居古墓之後，為了防止居心不良的人覬覦古墓派的秘笈從而引起爭奪的紛爭，他們在古墓內設置了重重機關，將秘笈和寶劍藏於機關之中…玩家們是否能順利破解機關，獲得武林至尊秘笈呢?', '2018-11-28', 1, 1, 1),
(191, '重返現場', 46, 2, 10, '60', 650, 71, '一場發生在羅德教授家中的兇殘命案，精明探員Mike率隊前往調查，現場證據都都指向一個嫌疑人，就是Mike自身；昔日警隊之星突變殺人嫌犯，玩家們為了洗刷Mike的罪名，必須重返現場尋找證據證明他的清白…', '2018-11-28', 1, 1, 1),
(192, '紫禁城驚魂記', 46, 2, 50, '60', 650, 71, '紫禁城..明、清兩個朝代24位皇帝的宮殿，是權勢、威信的最高象徵，後宮三千佳麗爭寵奪權、明爭暗鬥，造成「紫禁城」不少冤魂飄盪，至今仍流傳許多詭異事件，引人遐想…玩家們化身為故宮旅遊團遊客，意外闖進一個不對外開放的宮廷角落，卻發現六百多年前的隱世秘辛…', '2018-11-28', 1, 1, 1),
(193, '亞特蘭提斯', 46, 2, 10, '60', 650, 71, '亞特蘭提斯…一個消失已久的神祕國度，曾是一個高度文明的國家，科技的發展遠超於現在的所有國家，但在很久以前突然沉沒在海洋之中…玩家們所組成的險團隊要如何運用探險家的專業能力，破解神秘國度的重重難關，尋找線索證明他們的所在的地方就是亞特蘭提斯…', '2018-11-28', 1, 1, 1),
(194, '奪命電梯', 46, 2, 50, '60', 650, 71, '散場的電影院，在午夜乘坐電梯下樓，此時電梯突然急速下降，電梯外映出了森森鬼影，傳來恐怖的嚎叫聲。玩家們若不能在一小時內破解重重謎題，找出使電梯停止的辦法，將會隨電梯墜落…', '2018-11-28', 1, 1, 1),
(195, '龍門客棧', 46, 2, 10, '60', 650, 71, '龍門村，一個與世隔絕的偏僻村莊，村民們一向過著自給自足的日子，自「龍門客棧」開張以來，村裡的失蹤人口數量突然異常的增長，濃濃的謎雲深深籠罩著這個貧瘠的小村莊。玩家為了村裡的百姓，決定前往龍門客棧一探究竟...', '2018-11-28', 1, 1, 1),
(196, '加勒比海寶藏', 46, 2, 16, '60', 650, 71, '鐵鉤船長是傳說中的海盜鬼王，握有一張神祕的藏寶圖，卻在一場尋寶的途中遇上無情風浪，落海下落不明…由玩家組成的尋寶獵人首必須先尋找地圖，並按照地圖找到鐵鉤船長的藏寶地，只要能夠帶回鐵鉤船長的寶藏，你將揚名立萬，聲震四野….', '2018-11-28', 1, 1, 1),
(197, '生化危機', 46, 2, 16, '60', 650, 71, '荷頓公司研發的 T 病毒持續侵襲地球，僅存的人類被逼到面臨人吃人的絕境。唯一的希望全寄望在生化專家身上，玩家們所扮演生化專家在必須圍困的屍堆實驗密室裏尋找可能抑制病毒的方法拯救全人類....', '2018-11-28', 1, 1, 1),
(198, '冰山逃脫', 46, 2, 50, '60', 650, 71, '時光回到1942年鐵達尼號的處女航中，從英國南安普敦出發，計劃中的目的地為美國紐約。玩家們搭上了這一班死亡航班，一晚夜裡鐵達尼號撞上冰山，在有限的時間裡，僅有的救生艇中，你是否能在暗夜裡求生?及時找到逃生口...', '2018-11-28', 1, 1, 1),
(199, '餓夜協奏曲', 47, 2, 8, '60', 450, 72, '\"最近妖怪村的夜晚總是不太安寧…\r\n\r\n一旦入夜，\r\n\r\n在包子簡所居住的老舊房宅內，\r\n\r\n便會傳出了陣陣的奇怪聲響，\r\n\r\n這聲響中的魔力，\r\n\r\n彷彿牽動著附近妖怪們的情緒。\r\n\r\n村長為了恢復妖怪村的寧靜，\r\n\r\n與村民們一起前往了聲音來源的古宅內。\r\n\r\n就在今晚，\r\n\r\n希望能找出這神秘聲響的來源… …\"', '2018-11-28', 1, 1, 1),
(200, '沈默之鏡', 47, 2, 8, '60', 450, 72, '\"在歷史悠久的松林一族中，\r\n\r\n流傳著一行神秘的文字。\r\n\r\n 為了尋找失落的秘密，\r\n\r\n帶著松林一族流傳下來的那句話，\r\n\r\n來到了這個邊境之屋。\r\n\r\n映入眼簾的卻是一個看似神秘的祭壇，\r\n\r\n祭祀著一面彷彿可以吞噬人心的鏡子。\r\n\r\n到底….\r\n\r\n其中隱藏著是什麼樣的秘密。\"', '2018-11-28', 1, 1, 1),
(201, '酒天傳說', 47, 2, 8, '60', 450, 72, '清酒鬼的酒窖一直是個人們所覬覦的寶庫，\n傳說中裡面有各種珍貴的妖酒，\n但這卻也一直只是傳說.，\n因為?\n這是個進得去卻出不來的妖地，\n只有真正的智慧之人才能成功離開。\n\n我們終於找到了那失落已久的捲軸了，\n最終的鑰匙只差清酒鬼最珍稀的那瓶酒，\n無論如何?\n進入酒窖是個在所難免的事了?', '2018-11-28', 1, 1, 1),
(202, '謎走松林-忍之捲軸', 47, 2, 8, '60', 450, 72, '傳說中的故事是這樣的：\n\n1913年8月22日那個深夜，\n\n被野放的枯麻和八豆，\n\n發現松林爺爺消失了！\n\n原來爺爺遇到襲擊\n\n而八豆也在戰鬥中喪生\n\n這個神秘晚上真正發生的事實\n\n就這麼被封印在松林一族歷史中\n\n只有小小的一部分被流傳\n\n而真正的謎底，至今尚未解開?', '2018-11-28', 1, 1, 1),
(203, '嗜血病院', 36, 4, 8, '60', 300, 59, '本以為只是一個小手術，卻作了全身麻醉！？\n\n一覺醒來，身體是沒有什麼特別不舒服，\n\n但是四周卻瀰漫的一股詭異的氣氛？！\n\n　\n\n嗶- 嗶- 嗶-...仔細聽才發現，\n除了各種儀器發出的聲音之外，竟然沒有任何其他人的聲音。\n\n　\n『不對！ 一定有事情發生！ 』\n\n用盡了力氣站起來，我延著走道到了護理站，\n\n卻沒有任何人，所有的出口也都上鎖了。\n\n這時，心裡面產生了很不好的預感......', '2018-11-28', 1, 1, 1),
(204, '俠盜羅賓漢', 36, 4, 8, '60', 300, 59, '『如果......領主是公平正義的，也不需要羅賓漢的幫助了』\n\n嘆了一口氣，農夫繼續耕種著，\n\n希望能有好的收穫，但是心裡卻明白，\n\n新領主上任後又不知道要用什麼政策欺壓百姓，\n\n他們似乎只能倚靠一個傳說......『俠盜羅賓漢』傳說中的英雄，\n\n雖然大家常常津津樂道於他劫富濟貧的義行，\n\n但更重要的，他總是與所有的受苦的人民站在一起，\n\n用智慧、計謀與高超的射箭技藝解決許多難題！\n　\n\n　\n\n　\n當他聽到大家的不安，決定召集了夥伴挺身而出，\n\n希望完成一項偷天換日的艱難任務......\n\n而心中希望的是真正能夠盡一份力，守護他所愛的人民......', '2018-11-28', 1, 1, 1),
(205, '軒猿忍者傳', 36, 4, 8, '60', 300, 59, '暗靜森中漆黑無聲之境 \n殺氣顯露鋒芒斂於劍柄 \n小橋東側城郭暗藏玄機 \n島徑迂迴難有存活含意\n　\n\n　\n\n收到這段密文，我們在迅雷不及掩耳的情況下執行了任務，\n暗殺了對方的忍者頭目『小島』，\n\n但卻在撤離時不小心觸動了陷阱，\n\n這真的是身為一個忍者不該犯的錯！\n\n但是主公卻傳信不要我們自殺，\n\n希望我們可以逃出去繼續為他效命！\n\n在追兵重重包圍之下，這可是比一死了之更困難的選擇！\n\n我們只能盡全力從聯絡密道想辦法逃出去了......', '2018-11-28', 1, 1, 1),
(206, '歌劇名伶事件簿', 36, 4, 8, '60', 300, 59, '『Nessun dorma∼ Nessun dorma∼』\n\n『BOSS，心情這麼好！還唱歌劇啊∼』 \n好夥伴JACKY似乎也被我的好心情感染……\n　\n\n『當然囉∼最近不管什麼案件，在我手上都是輕鬆解決∼』 \n......心想：最近真是超順的，天生我就該是一個超級警探啊∼\n　\n　\n『O sole mio∼∼』\n\n專屬鈴聲還沒響完，我已經接起電話……\n\n『是我！兇殺案？！ 好！我立刻過去！』\n\n『BOSS，怎麼了？！』JACKY邊跟著跑起來邊問……\n『出事了！快開車！』\n　\n\n　\n將車鑰匙拋向JACKY我邊解釋：『歌劇院發生兇殺案，\n女主角被殺！研判兇手可能還在現場，我們立刻趕過去！！』\n......心想，這次又是我展露身手的機會了，哈哈哈∼', '2018-11-28', 1, 1, 1);
INSERT INTO `products` (`PRO_SEQ`, `PRO_NAME`, `CID`, `PEOPLE_MIN`, `PEOPLE_MAX`, `GAME_TIME`, `PRICE`, `P_ID`, `PRO_INFO`, `CRATE_DATE`, `STATUS`, `HOT_INDEX`, `PAGE_VIEWS`) VALUES
(207, '石器時代', 36, 4, 8, '60', 300, 59, '(以下敘述由骨鴿提供翻譯)\n\n^!%$&!%&!@*##&%&! \n(在遠古的石器時代) \n\n!%%@&;@^!%$&*@$ \n(那時文字還沒發明) \n\n@$*%#&^%&!@*##& \n(那時數字還未統一) \n　 \n*&!@%!#%&#&%^% \n(生病時只能問天) \n\n\n#&^@%&@#$$$$#%! \n(災難時只有自救) \n\n#&^@%&@#$$$$#%! \n(這樣的時代裡) \n\n%&&&$$^&$!@@#$@ \n(一切都是未知) \n　 \n^$%$^!@!!$%%%%&*^###%$$#*...... \n(你能依靠的，就只有彼此......)', '2018-11-28', 1, 1, 1),
(208, '絕命地鐵', 36, 4, 8, '60', 300, 59, '你們是一組負責對付恐怖份子的特警，\n\n平常總是靠著大家的團隊合作解決許多案件！\n\n\n\n而就在剛才，你們接到了一個緊急任務：\n\n「有一臺電車被歹徒狹持，\n\n恐怖份子想要讓這部電車撞毀在終點，\n\n現在這個車站是你們上車解除事件的唯一機會。 」\n\n不過不用擔心，\n\n我們的臥底同仁已經在離開電車之前，\n\n留下了許多可以追蹤恐怖份子的線索，\n\n加上我們精良的犯罪檢索系統，\n\n\n\n你們一定可以順利把這部電車停下來！\n\n希望你們能夠順利達成任務！！', '2018-11-28', 1, 1, 1),
(209, '米其林尋兇', 36, 4, 8, '60', 300, 60, '米其林餐廳認證一直是世界最知名的美食認證，\n\n其中，BRISTOLA更是一位難求的米其林美食殿堂\n\n　\n\n但是，在最近一次的主廚徵選中\n\n即將要退休的現任主廚ERIC竟然猝死！\n\n而嫌疑最大的\n\n就是身為『美食偵探』的你多年的老友PAUL\n\n為了洗刷他的冤屈，也為了『美食偵探』的名聲\n\n　\n\n你決定潛入BRISTOLA找出真兇，洗刷PAUL的冤屈！\n\n　\n\n主題建議：\n扮演美食偵探，你必須細心且大膽，在環境中拼湊出有用的線索，\n\n而且既然身為美食偵探，對於各種烹調技巧或是餐廳佈置你應該瞭若指掌！\n\n尋兇類主題，要更細心的思考與大膽的推理，\n\n適合已經有些經驗挑戰者。', '2018-11-28', 1, 1, 1),
(210, '嗜血病院', 36, 4, 8, '60', 300, 60, '本以為只是一個小手術，卻作了全身麻醉！？\n\n一覺醒來，身體是沒有什麼特別不舒服，\n\n但是四周卻瀰漫的一股詭異的氣氛？！\n\n　\n\n嗶- 嗶- 嗶-...仔細聽才發現，\n除了各種儀器發出的聲音之外，竟然沒有任何其他人的聲音。\n\n　\n『不對！ 一定有事情發生！ 』\n\n用盡了力氣站起來，我延著走道到了護理站，\n\n卻沒有任何人，所有的出口也都上鎖了。\n\n這時，心裡面產生了很不好的預感......', '2018-11-28', 1, 1, 1),
(211, '銀行職員的百倍奉還', 36, 4, 8, '60', 300, 60, '『部長，這份簽呈我覺得有問題！』\n\n『有問題？你沒看我已經准了嗎？你在上面蓋章照辦就是了！有問題我會負責！』\n\n『可是......』\n\n『可是什麼？ 現在是你部長還是我部長？ 你還真以為你是精英啊？！』\n\n　\n\n上個禮拜的爭執還歷歷在目，沒想到眼前就讓我找到了錯誤的出帳紀錄\n\n這帳目根本不對啊，有些錢好像憑空消失了！？\n\n『今天中午，來吃鰻魚飯吧！！』\n\n『喔喔！部長請客嗎？』\n\n『哈哈哈∼你開什麼玩笑？當然是自己出自己的啊！！！』\n\n　\n\n　\n\n　\n\n這是個好機會！ 我一定要想辦法找到他的犯罪證據！！', '2018-11-28', 1, 1, 1),
(212, '夢想甲子園', 36, 4, 8, '60', 300, 60, '「我知道，這是最後的機會了......」\n\n　\n\n高中第三年 ! \n\n鳴門高校終於有機會在甲子園冠軍戰一決高下 ! \n　\n\n站在投手丘上忍住淚水的我，終於走到這一刻.....\n\n三年來，每天做不完的重量訓練與投球練習所帶來的痛苦\n　\n\n在這個時候都不算什麼了 !\n\n\n因為，這是我人生中的第一次，也是最後一次......\n　\n\n不管如何，全力以赴 ! GO !!!', '2018-11-28', 1, 1, 1),
(213, '軒猿忍者傳', 36, 4, 8, '60', 300, 60, '暗靜森中漆黑無聲之境 \n殺氣顯露鋒芒斂於劍柄 \n小橋東側城郭暗藏玄機 \n島徑迂迴難有存活含意\n　\n\n　\n\n收到這段密文，我們在迅雷不及掩耳的情況下執行了任務，\n暗殺了對方的忍者頭目『小島』，\n\n但卻在撤離時不小心觸動了陷阱，\n\n這真的是身為一個忍者不該犯的錯！\n\n但是主公卻傳信不要我們自殺，\n\n希望我們可以逃出去繼續為他效命！\n\n在追兵重重包圍之下，這可是比一死了之更困難的選擇！\n\n我們只能盡全力從聯絡密道想辦法逃出去了......', '2018-11-28', 1, 1, 1),
(214, '穿越羅馬浴場II', 36, 4, 8, '60', 300, 60, '『路西斯前輩？ 你怎麼從浴場冒出來，還一邊在哭？』\n『啊∼∼我回來了！我跟你說：扁臉族....扁臉族.....』\n『先別說了！你不見的這段時間，帝國發生大事了！有人意圖造反，想要篡奪王位！』\n『什麼？！可是，皇帝之前不是對他們很寬大原諒他們了嗎？他們怎麼能做這種事！』\n『詳細的情況我也不知道，我現在有一個重要任務，就是要建造一個烏托邦溫泉。皇帝希望能藉著泡澡，讓大家都懷抱祥和氣氛，你能幫我忙嗎？！』\n『好！ 我也正要跟你說，我才從扁臉族的世界回來，那邊有很多有趣的事......』\n在一行人從大阪溫泉之旅穿越古羅馬與現代後\n這個時光隧道似乎還沒關閉\n這次......是誰要穿越時空展開冒險？！', '2018-11-28', 1, 1, 1),
(215, '洛克飯店：殺手困境', 15, 2, 4, '90', 500, 73, '受邀到洛克鎮參加音樂嘉年華的你們，因為飯店的烏龍事件，被帶到一位殺手的房間，而殺手，就在門外。\n\n飯店手機裡，一通來自未來的電話，『你們將在60分鐘後遭到門外殺手的攻擊並喪命，幸運的是，因為不明原因的時空混亂，你們將有機會改變自己的未來』生存，必須拿其他生命來換？\n\n眼看時間一分一秒過去，你們的生命維繫在一個名叫Tony的小男孩身上？', '2018-11-28', 1, 1, 1),
(216, '紅衣小女孩：噩夢 • 再見', 15, 2, 4, '70', 550, 73, '一場多年好友的登山聚會，阿旺的女友—小惠卻離奇失蹤，你們進入了一間老舊荒廢的旅社尋找，卻是誤入了魔神的禁地。身穿紅衣的女孩穿梭其中、嘻笑迴盪，是想傳達什麼訊息，或是企圖使你再次懷疑自我？\n?\n當你察覺到了一段無人知曉的過往，到底是自己負心遺忘，還是她無情背叛？\n\n「你都忘了嗎….？」\n才以為擺脫了那段夢魘，卻發現其實從沒醒來過……\n\n在孤兒院成長的你和阿旺，有著風雨同舟般的情誼。2014年的一場山難，使你遺忘了大部分的記憶，除了你的名字：「謝冬庭」。', '2018-11-28', 1, 1, 1),
(217, 'X伯爵的委託', 48, 4, 6, '120', 300, 73, '“來抓我啊！如果你辦得到？”\n古堡附近常有年輕貌美的女性失蹤，\n而伯爵的古堡裡竟然有兇手留下的挑釁字樣！\n最後連伯爵夫人也不見蹤影…\n警方前來調查卻一無所獲，\n於是伯爵委託神不在場的偵探到古堡調查。\n不料來到古堡的偵探，連伯爵都還未見上一面，\n就莫名被迷昏關進地牢，\n昏迷前聽見：「一個小時後再來收拾你們…」\n各位偵探，當你們醒來後的第一要務，\n是找到逃出古堡的出口，一定要在兇手回來之前逃出，\n才有機會繼續為伯爵調查真相。', '2018-11-28', 1, 1, 1),
(218, '莎士比亞的邀請', 48, 2, 4, '90', 400, 73, '“生活裡沒有書籍，就好像沒有陽光”－莎士比亞\n神不在場發現一本\n突如其來、年代久遠的書，\n似乎有了自己的生命，\n每60分鐘才會開啟一次。\n僅知道它一直在邀請不同的人進入，\n期待有人能改變什麼…\n這本書我們所知甚少，進去過的人，\n對它的說法眾說紛紜，\n你願意冒險進到魔書裡，\n接受它的邀請嗎？', '2018-11-28', 1, 1, 1),
(219, '失落的隕石神殿', 48, 8, 10, '120', 300, 73, '『人類啊！探索未知吧！你們將得到一切！』\n最近在撒哈哈沙漠，發生隕石撞擊事件，\n隕石坑洞中竟出現一個古埃及的神殿入口。\n此消息一出，立刻引起各界關注！\n神不在場也派出探險隊前往調查，就在看似順利的調查中，\n神殿突然爆發了某種能量，探險隊員同時也失去聯繫！\n之後詭異的能量，每隔１小時就會爆發一次，\n凡觸碰者無不被吸乾血肉。\n\n身為神不在場第二批探險隊的各位，\n請前往神殿找出失蹤隊員們的下落，\n並調查出詭異的能量來源吧！', '2018-11-28', 1, 1, 1),
(220, '夢月馬的戲團', 48, 8, 10, '120', 300, 73, '『為了贏，我將不擇手段！』\n傳說中，當血紅之月降臨時，有個神秘馬戲團會出現。\n這個神秘馬戲團，是世界上所有表演者的最高殿堂！\n只要在此勝出，便能獲得象徵最高榮耀的「夢月」稱號。\n\n如今，血紅之月再次降臨，慕名而來的各隊馬戲團，\n經過一番激烈的廝殺，僅存最後兩組人馬…\n「蘇尼亞」V S「路納」\n\n各位表演者，請把握爭取勝利的機會！\n在有限的時間內完成表演，或者用盡一切手段干擾對手，\n奪取這至高無上的『夢月馬的戲團』稱號吧！', '2018-11-28', 1, 1, 1),
(221, '浮士德家的後院', 48, 4, 6, '120', 300, 73, '各大報近日不約而同\n出現一則神秘的徵人啟示，\n內容是一名男子的未婚妻在不明原因下\n成了沒有靈魂的軀殼，\n不斷地喃喃自語著無人能理解的話語；\n男子發出重賞徵求能喚醒未婚妻的人，\n各界紛紛組成研究團隊\n但至今仍卻無人能成功。\n來到這裡的你們是最後的希望，\n調查靈魂消失的原因，\n找尋喚醒女子的方法吧！', '2018-11-28', 1, 1, 1),
(222, 'X伯爵的委託 II', 48, 4, 6, '120', 300, 73, '“快逃吧！不要回頭！自由就在眼前…”\n接受伯爵的委託來到古堡的各位，\n竟然在伯爵房找到兇手犯案的證據!?\n正要逃離的你們，卻誤觸古堡的保全系統，\n60分鐘後古堡所有出口都將關閉，\n你們必須另尋出路，幫助自己逃離古堡。\n在這過程中，卻意外發現事情另有玄機!?\n請各位盡可能發掘事情的真相，蒐集更多證據，\n利用所發現的線索，推斷結論，以利警方逮捕兇手！', '2018-11-28', 1, 1, 1),
(223, '入侵者-森林的哀嚎', 48, 4, 6, '120', 300, 73, '經過多年的紛爭，精靈族與人類終於達成和平協議，彼此約定不能互相侵擾。近日卻不斷傳出精靈族入侵人類領土的消息，人類國王擔心事態會越發嚴重，決定派遣一批勇士進入森林調查。但為了防止被精靈族發現，勇士們需偽裝成精靈的模樣。沒想到一進入森林後…眼前的景象卻讓他們震驚不已…', '2018-11-28', 1, 1, 1),
(224, '爆彈拆除班', 36, 4, 8, '60', 300, 61, '面對急遽升高的國際關係，首當其衝的便是這些世界強國\n將在2020年舉辦東京奧運的日本\n更是嚴正戒備著恐怖份子的干擾\n『反恐特搜-爆彈拆除班』\n就是因應緊急情況成立的特別部隊\n靠著精良高科技的設備與特別徵招的優秀隊員\n『爆彈拆除班』解決了許多緊急的攻擊事件！\n但是這次......情況有點不一樣\n『爆彈拆除班』要面對看起來『束手無策』的困境！\n剩下60分鐘，你們可以順利解除所有的危機嗎？！\n要成為『爆彈拆除班』的一員\n你必須要『不成功便成仁』的決心！', '2018-11-28', 1, 1, 1),
(225, '古堡迷蹤', 36, 4, 8, '60', 300, 61, '『啊∼∼好無聊啊！』\n\n身為世界知名的探險家，卻沒有任何值得去挑戰的冒險，\n\n這真的是人生的遺憾啊∼\n\n就在這時候，你們收到了一封從探險公會來的信！！\n\n『走吧！』我們去完成這個任務！\n\n10分鐘讓大家準備完裝備後就立刻出發！\n　\n於是你們踏上了前往英國的冒險，\n\n這會不會是一場有去無回的任務呢？', '2018-11-28', 1, 1, 1),
(226, '穿越羅馬浴場', 36, 4, 8, '60', 300, 61, '在一次大阪溫泉之旅中，\n\n你們莫名奇妙的被溫泉池的水流捲進了舊羅馬的浴場裡。\n\n由於時空不連續的關係，\n\n你們只有一個小時的時間能夠從羅馬浴場逃出來，\n\n否則就要再等十五年！\n\n不過，聽說以前在古羅馬有一位專門設計浴場的設計師，\n\n也是常常利用這一小時，\n\n穿梭在現代和未來的時空中尋找新靈感，\n\n\n\n也許你們可以發現一些他留下來的線索，\n\n幫助你們順利的離開羅馬浴場，回到現代！', '2018-11-28', 1, 1, 1),
(227, '逆轉偵訊室', 36, 4, 8, '60', 300, 61, '『我總覺得那裡還怪怪的......』\n「 老大，怎麼了？！」\n『明明已經掌握很多證據，怎麼嫌犯看起來還是胸有成竹的樣子？是不是我們還漏掉什麼了？』\n「『不會吧....人證、物證不是都有了嗎？」\n『可是.....找不到合理的犯案動機啊......』\n「不是爭風吃醋引起的殺機嗎？」\n『不！我想沒這麼單純！這樣下去，嫌犯一定會被釋放！都已經抓到人了，我們不能這麼簡單就鬆手，走吧！』\n「要從頭搜查嗎？！只剩下一小時而已...... 」\n『只能這樣了！找到關鍵證據，讓嫌犯在偵訊中認罪！』', '2018-11-28', 1, 1, 1),
(228, '御醫', 36, 4, 8, '60', 300, 61, '『御醫』總是掌握了當時的最高醫術，\n\n並且受到皇帝極度的信任才能成為獨當一面的御醫，\n\n而上官大夫也不例外，因著他高明且神奇的醫術，受到皇上完全的信任。 \n\n但是，從來沒有人知道上官大夫的來歷，\n\n也不知道他有如華佗再世一般的神奇醫術是從何處習得。\n\n反而傳言他與最近宮內許多失蹤的太監、宮女有關......\n\n身為首屈一指的大內高手，你臨危受命要潛入調查上官大夫的祕密。\n\n希望這不會是一趟有去無回的任務......', '2018-11-28', 1, 1, 1),
(229, '女巫的祭壇', 50, 3, 6, '60', 400, 75, '寧靜的小村莊中，女巫降臨，準備了召喚地獄惡魔的祭壇...\n人們面臨生存人們面臨生存危機，白魔法師奮勇對抗，\n可惜魔女的黑魔法過於強大，將白魔法師和其道具封印於巢穴之中...\n黑羊會的成員將是小鎮最後的希望，\n唯有消滅女巫才能阻止地獄之門的開啟、世界的毀滅。\n各位是否敢深入巢穴，突破重重魔法達成任務呢？\n還是會變成惡魔的還是會變成惡魔的祭品？', '2018-11-28', 1, 1, 1),
(230, '祕境封印', 50, 4, 6, '', 400, 75, '千年一次審判之日，即將到來\n傳說中古馬雅神殿的封印，在審判之日之時將會開啟，\n蘊含千年能量會就此湧現，被壞人利用將會毀滅世界。\n隨著審判之日的接近，水晶骷顱接連失竊\n馬雅博士人間蒸發\n邪惡組織的陰謀\n黑羊會的成員\n必須在期限前深入叢林中的馬雅遺蹟，\n在審判之日 進入這千年遺跡。', '2018-11-28', 1, 1, 1),
(231, '畫廊搶案', 50, 3, 6, '', 400, 75, '一個集合世界名畫的展覽，沒想到歹徒有人員混入我方，\n趁所有人還沒防備時，擊暈了所有成員，帶走了館長和ㄧ幅名畫。\n所幸的是館長早有防備，歹徒們帶走的是贗品。\n但是，只有館長知道名畫真正位置 !\n僅存的線索，是在館主被帶走時留下唯一訊息 。\n歹徒在不久之後必會返回! 黑羊會的成員們 要在緊迫的時間內 找出名畫 並逃出這個死亡畫廊 .....', '2018-11-28', 1, 1, 1),
(232, '魔境夢遊', 50, 6, 10, '', 350, 75, '魔境發生異變，從前的歡樂已不在...\n愛麗絲行蹤成迷，紅心皇后下令捉拿叛徒\n瘋帽留下了許多令人費解的訊息\n快進入魔境解開謎底\n一起迎接最後的結局!!', '2018-11-28', 1, 1, 1),
(233, '奪魂鋸', 50, 8, 10, '', 350, 75, '接連發生三起爆炸案\n警方投入大量人力調查\n發現是同一人所為\n正當各位自以為成功潛入歹徒藏匿地點\n沒想到卻正中歹徒下懷\n被迷昏的各位即將面臨的是\n人性最大的挑戰...\nYou must have the choice.....', '2018-11-28', 1, 1, 1),
(234, '魔法學園之闇黑封印', 50, 6, 8, '', 350, 75, '當魔法不再是想像，各位將進入到魔法世界之中！ \n邪惡派巫師計劃要逃離監獄， \n其他門派的魔法師，將要前往學園最深處 \n找出學園中埋藏著的闇黑封印 \n歡迎各位魔法師來到魔法學園!! \n各大學院的魔法師 能否合力阻止魔王的再次降臨?', '2018-11-28', 1, 1, 1),
(235, '嗜血之墳', 51, 1, 8, '55', 450, 76, '教堂神父離奇失蹤，教堂內部的物品不翼而飛，你們奉命前來調查此事，卻發現教堂內部隱藏著密道，你們為了完成任務冒險進入，卻將自己陷入於危險之中...', '2018-11-28', 1, 1, 1),
(236, '驚天任務', 51, 1, 8, '55', 450, 76, '傳說中的驚天博物館，處於世界的中心，裡面有一粒價值連城的鑽石,線報指出,邪惡的Q博士密謀偷取鑽石，特別軍情處決定派出諜影神偷團，比Q博士快一步偷走鑽石。這個任務只有55分鐘的時間，跟以往的任務一樣，如果你們觸動機關而給人抓住，政府是不會承認任何責任，一切小心為上。', '2018-11-28', 1, 1, 1),
(237, '幽暗海盜', 51, 1, 8, '55', 450, 76, '我們是冒險號的船員，得到一張大航海時代留下的藏寶圖，來到了百慕達三角尋找寶藏。但是在到達的夜晚,傳說中的海盜鬼船幽暗號截住我們，奪去藏寶圖。依照幽暗號的規矩,我們必須跟他們一樣將靈魂簽約給幽暗號,不然就得死,為了保命我們簽下了海盜約章，經過一天之後就會成為船上一員。當我們清醒之後，幽暗號成員都變成了骸骨！只剩下我們幾個，到現在,距離日落的時間還有55分鐘，我們必須在天黑前奪回靈魂、逃離出去，不然就會永遠被困在幽暗號！', '2018-11-28', 1, 1, 1),
(238, '遊戲世界', 51, 1, 8, '55', 450, 76, '遊戲公司REALIFE研發了一種能使人類意識進入遊戲程式的技術。並秘密進行真人遊戲實驗，身為國際刑警的你發現所有參加者都神秘失蹤，這個真人遊戲實驗背後可能有著不為人知的祕密！你和隊友們一起假扮應徵者成為了實驗的參加者，即將親身進入這個真人遊戲程式，試圖揭開真相。', '2018-11-28', 1, 1, 1),
(239, '逃龍記', 51, 1, 6, '55', 450, 76, '你們乃是逍遙派弟子，但師傅覺得你們不是摘系弟子，不肯傳授本派上等武功給你們，加上師兄嫉妒你們的才能，所以你們經常受到排擠，以致心生不滿。今日，師傅和師兄弟到附近的竹林練武，你們決定要盜取本門最高秘笈並逃出，如果你們不成功，就會被廢武功，從此被流放到裊無人煙的地方！', '2018-11-28', 1, 1, 1),
(240, '引路人', 51, 1, 8, '55', 450, 76, '一群熱愛鬼屋探險的玩家，竟然不約而同做了相同的夢，夢中依稀看見小孩子的身影，不斷重覆一句話：我好孤單...快來陪我玩...否則我就永遠纏著你...每天做著同一夢境的人，身體跟精神已接近崩潰邊緣，只能來找傳說中的「引路人」...', '2018-11-28', 1, 1, 1),
(241, '新☆夢遊馬戲團', 49, 2, 6, '60', 450, 74, '在千鈞一髮中，\n我們將巴豆給救了回來。\n　\n雖然不知道是誰要把巴豆給擄走，\n但總算解除了危機。\n　\n巴豆跟枯麻為了感謝我們，\n邀請我們留下，\n將在夜間開放馬戲團，\n讓我們與他們同樂。\n　\n只是表演開始前...\n巴豆又不見了？\n這次到底又是怎麼回事呢？', '2018-11-28', 1, 1, 1),
(242, '巴弒', 49, 2, 6, '60', 450, 74, '剛張開眼睛，\n發現自己在一輛失速的巴士上。\n拼命想喚起模糊的記憶，\n卻一無所獲。\n　\n我是誰？\n為什麼在這裡？\n　\n40分鐘後，\n要是再找不到控制這輛巴士的方法...\n將會墜毀在懸崖中......\n時間不多了，\n要趕緊找回失落的身分與記憶，\n必且控制住這輛該死的巴士。', '2018-11-28', 1, 1, 1),
(243, '來自星星的吃貨', 49, 2, 6, '60', 450, 74, '哎呀哎呀！\n飛碟怎麼拋錨了捏∼！\n　\n原來是任性貪吃的飛碟，\n經過一顆藍色行星時，\n聞到了超級厲害的美食的味道，\n就不想走了咩！\n　\n為了讓飛碟願意繼續航行，\n只好闖入深夜無人的速食店。\n尋找這個美食香味的來源......', '2018-11-28', 1, 1, 1),
(244, '小矮人、大冒險', 49, 2, 6, '60', 450, 74, '在無意中，聽到了一個陰謀。\n糟了！\n要趕緊去通知公主\n不能讓公主陷入危險之中！\n　\n不！\n事跡敗露，被壞人發現了......\n睜開眼時，已被關到地牢了......\n　\n還好，\n這地牢留下了一些過往的線索。\n或許還有方式離開，\n不能讓她得逞∼\n要抓緊時間了！', '2018-11-28', 1, 1, 1),
(245, '記憶裂痕', 52, 4, 8, '90', 400, 77, '當你睜開眼睛時，周圍是完全不熟悉的景色。你與一群「陌生人」面面相覷，沒人確定發生了什麼事，甚至沒人能說出自己究竟來自何方……\n滴答滴答的倒數聲傳入大家耳裡，一個小時後即將引爆；在決定一同逃離時，卻發現似乎不是所有的人都是夥伴？', '2018-11-28', 1, 1, 1),
(246, '但丁七日', 52, 6, 10, '90', 400, 77, '在老舊圖書館發現的聖書，找到隱藏在地底下的教堂，聖書裡未知的領域，是上帝想隱藏的秘密還是不可進入的禁忌世界？ 這間教堂的創造者究竟來自何方，祂想說些甚麼？ 我們決定一探究竟••••••', '2018-11-28', 1, 1, 1),
(247, '迷屍森林', 52, 4, 8, '90', 400, 77, '為了尋找在森林中消失的親人，委託人透過許多方法，但是都沒有下落•••至今只知道消失的親人在森林中的小屋與家人生活著。在親人的結婚紀念日當天，委託人決定再嘗試一次，並且找上了最熟悉這片森林的團隊，再次往森林裡尋找。', '2018-11-28', 1, 1, 1),
(248, '索魂', 53, 2, 8, '90', 300, 78, '歷史上最邪惡的軍伐-凱撒\n傳說陵墓中埋藏了足以買下一整塊大陸的財寶\n某日一群盜墓者意外發現了凱撒的陵墓\n但在裡面發現的並不是財寶....\n而是一段血染的未來....\n不幸成為活祭品而身陷地牢之中的夥伴\n究竟是要冒著一起成為活祭品的風險拯救同伴\n還是要忍痛丟下他自行逃離?\n同伴的生與死就在你們的一念之間!!!\n??你能救出成為祭品被[囚禁]於獨立密室空間的[隊友]並順利脫逃出凱薩的墓穴嗎??!!', '2018-11-28', 1, 1, 1),
(249, '引爆達文西', 53, 2, 8, '90', 300, 78, '組織最近在追捕一個狂熱達文西作品的犯罪者『史賓賽』\n?史賓賽想霸占任何有關達文西的作品，而組織終於發現史賓賽的藏匿地點。\n就在你們進入史賓賽躲藏的地點後，才發現他早已離開並佈下重重難關！\n炸彈時間已經剩下48分鐘，究竟你們能不能阻止炸彈爆炸，而且成功捉拿史賓賽歸案呢？！', '2018-11-28', 1, 1, 1),
(250, '馬桶英雄', 53, 2, 8, '90', 300, 78, '一般的英雄都在拯救世界，只有馬桶英雄為了堵塞的馬桶而晝伏夜出\n?你們能通過英雄的考驗，成為他有力的助手嗎 ??!!\n英雄總是孤獨的，這次...英雄為了要從自己身邊的友人尋找助手，於是選擇用一個假性危機來考驗他的朋友們。若這次考驗過關，便能從朋友裡找到未來一起拯救馬桶的助手。', '2018-11-28', 1, 1, 1),
(251, '持碑天兵', 54, 2, 8, '60', 100, 79, '一群菜鳥笨賊，想竊取具有法力的神聖碑文，但卻挑在展覽開放時間進行竊盜，他們能不能夠成功呢？', '2018-11-28', 1, 1, 1),
(252, '噩夢首部曲-記憶牢籠', 54, 2, 7, '90', 300, 79, '一場無情的玩笑，帶走了\"百樂\"\n事隔多年，一封來自\"百樂\"的信件邀約著被遺忘的四月四號聚會\n究竟這封來自亡者的邀請函\n?\n背後潛藏著怎樣的危機?\n這一切真相就藏在那不願面對的噩夢之中.....', '2018-11-28', 1, 1, 1),
(253, '玩具總動員', 54, 2, 7, '90', 300, 79, '某天,安迪在回家的路上\n發現了一隻被丟在路邊的小熊娃娃-泰迪從此後展開了一場拯救玩具王國的探險之旅!!\n安迪與他的好朋友,也就是你們\n是否協助重新補充機器人的能源\n拯救快要滅亡的玩具王國呢?', '2018-11-28', 1, 1, 1),
(254, '越南大戰', 54, 2, 7, '90', 300, 79, '美軍在越戰中陷入苦戰\n於是美國總統召集部隊精英並且成立潛襲部隊發動一場特種戰爭\n參與首次攻堅的夥伴們\n?\n因不熟悉地形及氣候在戰爭中壯烈犧牲\n?你們能夠重返戰地安全的回來嗎...........', '2018-11-28', 1, 1, 1),
(255, '時空裂縫之１４７號入口', 55, 4, 6, '80', 250, 80, '據說能吸取靈魂的懷錶，現在，就在你的手中悄悄開啟…\n有間格子鋪的147號格，擺著一個復古風懷錶。\n這個錶，有一個詭異的傳說，每當有人將錶買回去，就再也沒有出現過了，而錶也會在隔天 再次出現在147號格... \n?然而詛咒 是無法徹底阻擋人心的... 今天...無知的你...也拿起了這只懷錶...', '2018-11-28', 1, 1, 1),
(256, '大魔術師之幻崛', 55, 2, 4, '60', 250, 80, '身穿黑斗篷的男人，詭譎的笑容，世紀大魔術，一起見證奇蹟的時刻吧 \n穿著神秘黑斗篷的男人，比正常人還慢的步伐，平靜的笑容卻藏不住心裡的愉悅，手裡拿著一個沒有任何東西的畫框，地點在新崛江麥當勞的路口，綠燈了，突然這世界彷彿時間靜止般的安靜了，街上空無一人，畫框裡多了一些慌亂奔跑的人影，黑斗篷踏著愉悅的步伐，慢慢的走，慢慢的走…..', '2018-11-28', 1, 1, 1),
(257, '時空幻域', 55, 4, 6, '80', 250, 80, '原本受邀到盟主宅邸參加宴會，但開門卻發現一片混亂的景象..而偉大的盟主竟也不知道?哪去了?!到底..發生了什麼事呢?', '2018-11-28', 1, 1, 1),
(258, '越時迷獄', 55, 2, 4, '50', 100, 80, '逆時之輪被人放入監牢深處，若不趕快把它拿出來\n所有犯人將會一湧而出，世界的和平秩序將會瓦解\n夥辦們，我們需要你。', '2018-11-28', 1, 1, 1),
(259, '羅莎', 56, 4, 8, '90', 400, 81, '她的名諱是朵帶刺的玫瑰，嬌艷動人卻孤芳自賞，聰慧如她，微微勾起的嘴角帶著數不盡的高傲。她宛如遊戲般似的設下諸多謎題，背後所想隱藏的事實究竟是……', '2018-11-28', 1, 1, 1),
(260, '尋夢少女', 52, 4, 6, '90', 500, 81, '看似莊嚴華麗的古堡，卻有著詭異而不協調的氣氛，低頭不語的少女，做著重覆不斷的夢境，唯有探索其中，才能解開不為人知的秘密......', '2018-11-28', 1, 1, 1),
(261, '跨越時空的遺產', 56, 3, 6, '90', 400, 81, '喜愛周遊列國的奶奶留下了一筆龐大的遺產，可是，要拿到遺產卻似乎沒有那麼容易。在奶奶曾獨居一段時間的房子裡有些古怪，但後代子孫卻怎麼樣也沒能找出這房子的秘密？', '2018-11-28', 1, 1, 1),
(262, '救救唐三藏', 19, 2, 6, '45', 300, 32, '無', '2018-11-28', 1, 1, 1),
(263, '即刻越獄', 19, 2, 6, '30', 199, 32, '一九二三年，民族自決的思潮正影響著尚在日本統治下的台灣\n\n我們是與蔣渭水一同進行「臺灣議會設置請願運動」的成員\n\n準備趁日本裕仁皇太子來台巡視時舉旗請願\n\n但日本警察發現了我們的意圖\n\n因此，對我們做了預防性羈押，關入了拘留所\n\n幸好，日本警察中有支持我們理念的人\n\n暗中留下了一些逃出的線索\n\n現在，必須在二十分鐘內逃出拘留所\n\n才來得及向皇太子請願！', '2018-11-28', 1, 1, 1),
(264, '聖劍騎士', 57, 6, 10, '90', 500, 82, '亞瑟王在場世紀婚禮上離奇猝死，\n\n而皇后和國王的忠臣被關在卡美洛城\n\n堡內至今生死未卜，亞瑟王身前所配\n\n戴的王者石中劍也消聲匿跡。　　\n\n\n\n城外騎士團首領蘭斯洛特召開了圓\n\n桌會議，計畫突破重圍營救亞瑟王的\n\n忠臣並尋找失落的石中劍。　　\n\n騎士們，你們有勇氣勇闖城堡嗎...\n', '2018-11-28', 1, 1, 1),
(265, '大宅門', 57, 4, 6, '90', 500, 82, '執念纏繞的古宅，一旦踏入就會\n\n掉進的幻影時空，至今沒有人出來過...\n\n?原來，大宅門內有段沉重的故事。?\n\n?\n\n扮演一群得道高士的各位，\n\n被吸入了時空錯置陣法，\n\n若無法打破宅門內重重陣法，\n\n就會永遠被困在過去...', '2018-11-28', 1, 1, 1),
(266, '木柵欄裡的祕密', 58, 2, 8, '無限制', 195, 0, '　　十年前，一個可以跟動物溝通的自閉症小男孩，得知動物園裡藏有寶藏，從此小男孩一直心繫尋寶。\n\n　　沒有大人相信有寶藏，又沒有同齡朋友的他，決定孤身前往尋找寶藏。小男孩留下了藏寶圖與尋寶日記，最後一篇說自己找到寶藏後，把自己的玩具積木放進寶箱埋回原處。\n\n　　我們相信那個積木就是 Ra 指定的第一個物品，究竟寶藏在哪裡？小男孩又到哪裡去了？一切的謎團等著你來解開！', '2018-11-28', 1, 1, 1),
(267, '淡水 • 1884', 58, 2, 8, '無限制', 195, 0, '　　一個在淡水生活了八十幾年的獨居老人，離世前將他所有的財產變賣，換成一只清末的古董。他把古董埋在了淡水，把藏寶線索留在遺囑中，說願意把古董送給第一個找到的人。\n\n　　那個古董就是 Ra 指定的物品之一，古董到底埋在哪裡？老人又為什麼要這麼做？一切的謎團等待城寶獵人們來解開。', '2018-11-28', 1, 1, 1),
(268, '捷運踩地雷', 58, 2, 8, '無限制', 210, 0, '　　台北捷運路網變成了踩地雷遊戲！？有六個捷運站藏了地雷，你必須要實際去到各個捷運站，解開謎題，才能踩開該站得知是否有地雷。蒐齊六顆地雷，就會帶領你到最後埋藏寶藏的地點。\n\n　　你能多快蒐齊地雷？不僅考驗你的解謎能力，捷運路線安排、踩雷策略...等都可能影響你的成績，快來挑戰吧！', '2018-11-28', 1, 1, 1),
(269, '串城流浪記', 58, 2, 8, '無限制', 195, 0, '　　台中舊車站上的老時鐘，在數十年前被拆下換成了台鐵標誌，原來的老時鐘不知去向，卻在最近傳出消息--『老時鐘被藏在台中舊城區最熱鬧的地方』。\n\n　　這個見證舊城最輝煌時光的老時鐘，同時也是 Ra 指定的物品，立刻引起收藏家們熱烈的討論，但大部份的人認為--『舊城區早已沒落，找不到熱鬧的地方了』，所以這個消息就被當成玩笑，很快的又失去了關注...\n\n　　但凡事總有例外，還是有人執著地前往尋寶了。他在尋寶途中，遇見了一名奇怪的流浪漢，他最後是否能找回老時鐘？流浪漢又真的只是名流浪漢嗎？一切的謎團等待城寶獵人們來解開。', '2018-11-28', 1, 1, 1),
(270, '尖山陶寶', 58, 2, 8, '無限制', 205, 0, '　　一名享譽國際的陶藝大師，他的作品櫃裡擺滿許多得了國際獎項的陶藝品，但在最高處卻有一個空位，據說是為了他的第一個作品而留的。\n\n　　陶師總是叨念著的心願就是要把他的第一個作品找回來，但卻一直不見他有實際動作，他的學生曾問他為什麼不去找，陶師只搖頭說時機還沒到。\n\n　　那個陶藝品就是 Ra 指定的物品之一，到底作品藏在哪裡？為什麼陶師想找又不去找回來？一切的謎團等著城寶獵人們來解開...', '2018-11-28', 1, 1, 1),
(271, '波克熊的不思議冒險', 59, 3, 5, '無限制', 438, 0, '文壇譽為21世紀安徒生的繪本作家亨利。\n一次旅行台北時,意外啟動時空門,竟穿梭來到另個平行時空的「波克小熊王國」。在小熊國王希爾瓦邀請亨利為小熊王國製作一本專屬的繪本之際。\n王國的六隻糊塗小熊跌入了開啟中的時空門,散落台北各地失蹤了！?立即出發解救波克小熊王國的危機,展開屬於你們的不思議旅程吧！', '2018-11-28', 1, 1, 1),
(272, '她的，1963', 5, 2, 2, '無限制', 260, 0, '車站見證人間聚散，\n\n城市悄然桑田滄海，\n\n回憶，也隨著時間褪去。\n\n\n\n也許你曾在中壢站前街頭，\n\n見著一位老婦人，\n\n拉著提箱，拿著海報，\n\n穿梭在熙來攘往的人群中。\n\n\n\n她，是為了找一個人。\n\n\n\n尋的是誰？為何而尋？\n\n最後找到了嗎？\n\n\n\n故事，就在這繁華的都城，\n\n流傳著，流傳著??\n\n\n讓中壢市區的史蹟，\n\n描繪一段刻骨銘心的歲月。\n\n\n你將會深刻感受，\n\n在我們不曾見過的年代，\n\n愛情，是什麼模樣。\n\n\n打開盒子，彷彿回到過去。\n\n不只是一本書，一個謎，\n\n更是讓你揮灑的札記，\n\n\n書頁採用頂級道林紙，\n\n是文字最棒的歸宿。\n\n\n全金屬筆身，黑鋼烤漆，\n\n\n用最高的質感，\n\n讓書寫變成一種享受。\n\n\n期待你品味這本「謎．小說」，\n\n也寫下屬於你的故事。', '2018-11-28', 1, 1, 1),
(273, '黑箱', 5, 6, 9, '80', 300, 0, '在西門町某處暗角，\n曾經發生過一樁黑箱交易，\n過程中發生意外，\n?\n賣家因為爆炸事故身亡，\n?\n買家被警方逮捕，\n?\n有一個身分成謎的幕後黑手\n拿著交易的商品，\n從此消失......\n?\n20年後，一位喜歡\n推理解謎的狂熱分子，\n突然收到一封邀請函，\n?\n裡面到底寫些什麼呢？\n?\n化身偵探挑戰西門町最大疑案！\n你，準備好要捲入這起事件了嗎？', '2018-11-28', 1, 1, 1),
(274, '聖物結界：晴光錄', 22, 1, 1, '無限制', 250, 0, '[超越人數時間限制Ｘ自由隨性散步解謎Ｘ晴光之美深度體驗]\n這是在那個「惡一學園」廢校後的故事......\n廢校後的惡一學園，惡靈盤據且日益壯大，惡靈的力量將溢出校園，危害將蔓延至鄰近的街郭；\n相傳，\n有幾個地點仍默默供奉著由地縛靈所守護著的聖物，唯有通過地縛靈考驗的人，才能獲得聖物，\n而只要獲得夠多的聖物，就有辦法再次張起結界，壓制住惡靈的力量......', '2018-11-28', 1, 1, 1),
(275, '噶瑪蘭?寶藏', 19, 1, 4, '無限制', 399, 0, '無', '2018-11-28', 1, 1, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `product_categories`
--

CREATE TABLE `product_categories` (
  `SID` int(11) NOT NULL,
  `PRO_SEQ` int(11) NOT NULL,
  `PRO_CATE` varchar(10) NOT NULL,
  `STATUS` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `product_images`
--

CREATE TABLE `product_images` (
  `SID` int(11) NOT NULL,
  `PRO_SEQ` int(11) NOT NULL,
  `IMG_NAME` varchar(100) NOT NULL,
  `STATUS` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `product_images`
--

INSERT INTO `product_images` (`SID`, `PRO_SEQ`, `IMG_NAME`, `STATUS`) VALUES
(1, 1, 'Qhat帽子烤_翻箱倒櫃_01.jpg', 'M'),
(2, 2, 'Qhat帽子烤_巴慧的工作室_01.jpg', 'M'),
(3, 3, 'Qhat帽子烤_人魚之森_01.png', 'M'),
(4, 4, '咖波肚子痛.png', 'M'),
(5, 5, '洛克.jpg', 'M'),
(6, 6, '控制獄.jpg', 'M'),
(7, 7, '紅衣小女孩.png', 'M'),
(8, 8, 'VICKEYSPACE.jpg', 'M'),
(9, 9, '異界籠.jpg', 'M'),
(10, 10, '莎士比亞的邀請.png', 'M'),
(11, 10, '莎士比亞的邀請.jpg', '1'),
(12, 11, 'X伯爵的委託.jpg', 'M'),
(13, 12, '浮士德家的後院.jpg', 'M'),
(14, 13, '放樂工作室_天方夜譚_01.jpg', 'M'),
(15, 13, '放樂工作室_天方夜譚_02.jpg', '1'),
(16, 13, '放樂工作室_天方夜譚_03.jpg', '1'),
(17, 14, '放樂工作室_蜀山_01.jpg', 'M'),
(18, 14, '放樂工作室_蜀山_02.jpg', '1'),
(19, 15, '放樂工作室_貪婪之城_01.jpg', 'M'),
(20, 15, '放樂工作室_貪婪之城_02.jpg', '1'),
(21, 15, '放樂工作室_貪婪之城_03.jpg', '1'),
(22, 16, '放樂工作室_感染_01.jpg', 'M'),
(23, 16, '放樂工作室_感染_02.jpg', '1'),
(24, 16, '放樂工作室_感染_03.jpg', '1'),
(25, 17, '放樂工作室_鄉間小盜_01.jpg', 'M'),
(26, 17, '放樂工作室_鄉間小盜_02.jpg', '1'),
(27, 17, '放樂工作室_鄉間小盜_03.jpg', '1'),
(28, 18, '放樂工作室_稻荷之歌_01.jpg', 'M'),
(29, 18, '放樂工作室_稻荷之歌_02.jpg', '1'),
(30, 18, '放樂工作室_稻荷之歌_03.jpg', '1'),
(31, 19, '放樂工作室_巫毒小屋_01.jpg', 'M'),
(32, 19, '放樂工作室_巫毒小屋_02.jpg', '1'),
(33, 19, '放樂工作室_巫毒小屋_03.jpg', '1'),
(34, 19, '放樂工作室_巫毒小屋_04.jpg', '1'),
(35, 20, '笨蛋工作室_奪命鎖鏈_01.jpg', 'M'),
(36, 21, '笨蛋工作室_奪命鎖鏈2_01.jpg', 'M'),
(37, 22, '笨蛋工作室_奪命記憶_01.jpg', 'M'),
(38, 23, '笨蛋工作室_顛倒的室_01.jpg', 'M'),
(39, 24, '笨蛋工作室_諜戰1941_01.jpg', 'M'),
(40, 25, '笨蛋工作室_鬼新娘_01.jpg', 'M'),
(41, 26, '笨蛋工作室_醉後任務_01.jpg', 'M'),
(42, 27, '4FunBase_奪寶令_01.jpg', 'M'),
(43, 27, '4FunBase_奪寶令_02.jpg', '1'),
(44, 27, '4FunBase_奪寶令_03.jpg', '1'),
(45, 28, '4FunBase_直衝腦門_01.jpg', 'M'),
(46, 28, '4FunBase_直衝腦門_02.jpg', '1'),
(47, 28, '4FunBase_直衝腦門_03.jpg', '1'),
(48, 29, '4FunBase_阿瓦隆的背叛者_01.jpg', 'M'),
(49, 29, '4FunBase_阿瓦隆的背叛者_02.jpg', '1'),
(50, 29, '4FunBase_阿瓦隆的背叛者_03.jpg', '1'),
(51, 30, '4FunBase_怪盜的預告_01.jpg', 'M'),
(52, 31, '4FunBase_三國_01.jpg', 'M'),
(53, 32, '4FunBase_那年夏天_01.jpg', 'M'),
(54, 33, '邏思起子_創世紀_01.jpg', 'M'),
(55, 34, '邏思起子_血色古堡_01.jpg', 'M'),
(56, 35, 'MissGAME_水獄逃脫_01.jpg', 'M'),
(57, 36, 'MissGAME_限時入侵_01.jpg', 'M'),
(58, 37, 'MissGAME_絕境擴散_01.jpg', 'M'),
(59, 38, 'MissGAME_流亡黯道永生之謎_01.jpg', 'M'),
(60, 39, 'MissGAME_流亡黯道永恆之殿_01.jpg', 'M'),
(61, 40, 'MissGAME_即刻越獄_01.jpg', 'M'),
(62, 41, 'MissGAME_逃出吸血鬼古堡_01.jpg', 'M'),
(63, 42, 'MissGAME_楓之谷_01.jpg', 'M'),
(64, 43, '藍色迴廊_鏡止鏡入_01.jpg', 'M'),
(65, 43, '藍色迴廊_鏡止鏡入_02.jpg', 'M'),
(66, 44, '逃生門工作室_千年古墓_01.jpg', 'M'),
(67, 45, '逃生門工作室_教室1968_01.jpg', 'M'),
(68, 46, '逃生門工作室_圓桌密令_01.jpg', 'M'),
(69, 47, 'Escapeholics_伊甸亞當覺醒_01.jpg', 'M'),
(70, 48, 'Escapeholics_丑十三刻_01.jpg', 'M'),
(71, 49, 'Escapeholics_陷阱舞台_01.jpg', 'M'),
(72, 50, '台灣逃脫_金仕特_01.png', 'M'),
(73, 51, '玩笑實驗室_掘_01.jpg', 'M'),
(74, 52, '玩笑實驗室_醒_01.jpg', 'M'),
(75, 53, '玩笑實驗室_迴異路_01.jpg', 'M'),
(76, 54, '玩笑實驗室_炸鬥府_01.jpg', 'M'),
(77, 54, '玩笑實驗室_炸豆府_02.jpg', '1'),
(78, 55, 'XcapeTaiwan_長生殿_01.jpg', 'M'),
(79, 56, 'XcapeTaiwan_變身怪醫_01.jpg', 'M'),
(80, 57, 'XcapeTaiwan_奪寶奇謀_01.jpg', 'M'),
(81, 58, '頂級豬排工作室_星空下的鋼琴手_01.png', 'M'),
(82, 59, '頂級豬排工作室_跌落畫中的女孩_01.png', 'M'),
(83, 60, '頂級豬排工作室_逃出補習班_01.png', 'M'),
(84, 61, '頂級豬排工作室_shinobi忍_01.png', 'M'),
(85, 62, '頂級豬排工作室_時鐘之國._01png', 'M'),
(86, 63, '謎鹿實境遊戲_那維亞之章_01.jpg', 'M'),
(87, 64, '謎鹿實境遊戲_獄言_01.jpg', 'M'),
(88, 65, 'FK工作室_愛德華偵探社_01.jpg', 'M'),
(89, 66, '貝爾豪斯工作室_曼陀羅海報_01.jpg', 'M'),
(90, 67, 'Meet Chance見_秦關_01.jpg', 'M'),
(91, 68, 'LOSTTAIWAN_伽斯底里奧內_01.jpg', 'M'),
(92, 69, 'LOSTTAIWAN_出埃及記_01.jpg', 'M'),
(93, 70, 'LOSTTAIWAN_唐七樓_01.jpg', 'M'),
(94, 71, 'LOSTTAIWAN_阿爾卡特拉斯_01.jpg', 'M'),
(95, 72, 'LOSTTAIWAN_追蹤者_01.jpg', 'M'),
(96, 73, 'LOSTTAIWAN_秦墓冥宮_01.jpg', 'M'),
(97, 74, 'LOSTTAIWAN_九龍寨城_01.jpg', 'M'),
(98, 75, 'LOSTTAIWAN_掠奪_01.jpg', 'M'),
(99, 76, 'LOSTTAIWAN_所羅門之鑰_01.jpg', 'M'),
(100, 77, 'LOSTTAIWAN_星靈_01.jpg', 'M'),
(101, 78, '頭癮創意遊戲_暗花尋跡_01.jpg', 'M'),
(102, 79, '頭癮創意遊戲_那未了的話_01.jpg', 'M'),
(103, 80, '壞主意工作室_腦細胞入侵_01.jpg', 'M'),
(104, 80, '壞主意工作室_腦細胞入侵_02.jpg', '1'),
(105, 80, '壞主意工作室_腦細胞入侵_03.jpg', '1'),
(106, 80, '壞主意工作室_腦細胞入侵_04.jpg', '1'),
(107, 80, '壞主意工作室_腦細胞入侵_05.jpg', '1'),
(108, 80, '壞主意工作室_腦細胞入侵_06.jpg', '1'),
(109, 80, '壞主意工作室_腦細胞入侵_07.jpg', '1'),
(110, 80, '壞主意工作室_腦細胞入侵_08.jpg', '1'),
(111, 80, '壞主意工作室_腦細胞入侵_09.jpg', '1'),
(112, 81, '壞主意工作室_冥古屋_01.jpg', 'M'),
(113, 81, '壞主意工作室_冥古屋_02.jpg', '1'),
(114, 81, '壞主意工作室_冥古屋_03.jpg', '1'),
(115, 81, '壞主意工作室_冥古屋_04.jpg', '1'),
(116, 81, '壞主意工作室_冥古屋_05.jpg', '1'),
(117, 81, '壞主意工作室_冥古屋_06.jpg', '1'),
(118, 81, '壞主意工作室_冥古屋_07.jpg', '1'),
(119, 81, '壞主意工作室_冥古屋_08.jpg', '1'),
(120, 81, '壞主意工作室_冥古屋_09.jpg', '1'),
(121, 82, '極限密室_瞞天越獄_01.jpg', 'M'),
(122, 83, '極限密室_搜索令_01.jpg', 'M'),
(123, 84, 'Througher_鎮龍脈_01.jpg', 'M'),
(124, 85, 'Througher_不完美求婚_01.jpg', 'M'),
(125, 86, 'Thougher_陌生熟悉人_01.jpg', 'M'),
(126, 87, '不讓你密室逃脫_時空探員_01.jpg', 'M'),
(127, 87, '不讓你密室逃脫_時空探員_02.jpg', '1'),
(128, 88, '夢遊王國_籠中鳥_01.jpg', 'M'),
(129, 89, '夢遊王國_偶像出道_01.jpg', 'M'),
(130, 90, '夢遊王國_抓狂首映會_01.jpg', 'M'),
(131, 91, '謬舍_b-case_01.jpg', 'M'),
(132, 92, 'LOST真人密室逃脫_末日重生_1.jpg', 'M'),
(133, 92, 'LOST真人密室逃脫_末日重生_2.png', '1'),
(134, 93, 'LOST真人密室逃脫_消聲噤區_1.jpg', 'M'),
(135, 93, 'LOST真人密室逃脫_消聲噤區_2.jpg', '1'),
(136, 94, 'LOST真人密室逃脫_心靈偵探事件簿Case1童魘_1.jpg', 'M'),
(137, 94, 'LOST真人密室逃脫_心靈偵探事件簿Case1童魘_2.jpg', '1'),
(138, 95, 'LOST真人密室逃脫_凌雲鬼窟_1.jpg', 'M'),
(139, 95, 'LOST真人密室逃脫_凌雲鬼窟_2.jpg', '1'),
(140, 95, 'LOST真人密室逃脫_凌雲鬼窟_3.jpg', '1'),
(141, 95, 'LOST真人密室逃脫_凌雲鬼窟_4.jpg', '1'),
(142, 96, 'LOST真人密室逃脫_山中小屋前傳_1.jpg', 'M'),
(143, 97, 'LOST真人密室逃脫_老殘遊記_1.jpg', 'M'),
(144, 98, 'LOST真人密室逃脫_血腥廚房_1.jpg', 'M'),
(145, 99, '智客堡_海賊寶藏_1.jpg', 'M'),
(146, 99, '智客堡_海賊寶藏_2.jpg', '1'),
(147, 100, 'A5Studio_UNOescape_1.jpg', 'M'),
(148, 101, 'A5Studio_偷窺2_1.jpg', 'M'),
(149, 102, 'A5Studio_偷窺_1.jpg', 'M'),
(150, 103, 'A5Studio_儲藏弒_1.jpg', 'M'),
(151, 104, 'A5Studio_廁所裡的波特_1.jpg', 'M'),
(152, 105, 'A5Studio_廁所裡的波特_1.jpg', 'M'),
(153, 106, 'A5Studio_醉後生還者_1.jpg', 'M'),
(154, 107, 'A5Studio_賊_1.jpg', 'M'),
(155, 108, 'A5Studio_奎蕾精神病院_1.jpg', 'M'),
(156, 109, '謎逃羔羊_逃出糖果屋_1.jpg', 'M'),
(157, 110, '謎逃羔羊_劍蹤_1.jpg', 'M'),
(158, 111, '謎逃羔羊_達文西聖燄殺機_1.jpg', 'M'),
(159, 112, '格林跳_山中小屋之藏身處_1.png', 'M'),
(160, 113, '格林跳_黑日夢_1.png', 'M'),
(161, 114, '格林跳_第九夜_1.png', 'M'),
(162, 115, '格林跳_吉屋出租_1.png', 'M'),
(163, 116, '格林跳_盜月筆記_1.png', 'M'),
(164, 117, '格林跳_野獸之心_1.png', 'M'),
(165, 118, '謎猴實境工作室_火星任務_1.jpg', 'M'),
(166, 118, '謎猴實境工作室_火星任務_2.jpg', '1'),
(167, 118, '謎猴實境工作室_火星任務_3.jpg', '1'),
(168, 118, '謎猴實境工作室_火星任務_4.jpg', '1'),
(169, 119, '濤濤來工作室_大主題8_1.jpg', 'M'),
(170, 120, '濤濤來工作室_大主題爻_1.png', 'M'),
(171, 121, '濤濤來工作室_地下噬_1.jpg', 'M'),
(172, 122, '濤濤來工作室_喵_1.jpg', 'M'),
(173, 123, '笨蛋工作室_攝影屍_1.jpg', 'M'),
(174, 124, '笨蛋工作室_奪命鎖鏈1_1.jpg', 'M'),
(175, 124, '笨蛋工作室_奪命鎖鏈1_2.jpg', '1'),
(176, 124, '笨蛋工作室_奪命鎖鏈1_3.jpg', '1'),
(177, 124, '笨蛋工作室_奪命鎖鏈1_4.jpg', '1'),
(178, 124, '笨蛋工作室_奪命鎖鏈1_5.jpg', '1'),
(179, 124, '笨蛋工作室_奪命鎖鏈1_6.jpg', '1'),
(180, 124, '笨蛋工作室_奪命鎖鏈1_7.jpg', '1'),
(181, 124, '笨蛋工作室_奪命鎖鏈1_8.jpg', '1'),
(182, 124, '笨蛋工作室_奪命鎖鏈1_9.jpg', '1'),
(183, 124, '笨蛋工作室_奪命鎖鏈1_10.jpg', '1'),
(184, 125, 'PlayStudio玩密室_幽魂戲院_1.jpg', 'M'),
(185, 126, 'PlayStudio玩密室_攝魂鈴_1.jpg', 'M'),
(186, 127, 'PlayStudio玩密室_恐懼地下室_1.jpg', 'M'),
(187, 128, 'PlayStudio玩密室_恐懼屠宰場_1.jpg', 'M'),
(188, 129, 'PlayStudio玩密室_中藥行_1.jpg', 'M'),
(189, 130, 'PlayStudio玩密室_森林殺人事件_1.jpg', 'M'),
(190, 131, 'PlayStudio玩密室_驅魔_1.jpg', 'M'),
(191, 132, 'PlayStudio玩密室_致命解藥_1.jpg', 'M'),
(192, 133, 'PlayStudio玩密室_死亡中隊黑蝙蝠_1.jpg', 'M'),
(193, 134, 'CubeOrigin_時之塔-第三章_1.png', 'M'),
(194, 135, 'CubeOrigin_彌賽亞計畫2.0_1.png', 'M'),
(195, 136, 'CubeOrigin_詛咒小鎮_1.png', 'M'),
(196, 137, 'CubeOrigin_焦土行動_1.png', 'M'),
(197, 138, 'CubeOrigin_諾亞方舟_1.png', 'M'),
(198, 139, 'CubeOrigin_躐殺逃城_1.png', 'M'),
(199, 140, 'LOST真人密室逃脫_吸血鬼教堂_1.jpg', 'M'),
(200, 141, 'LOST真人密室逃脫_死神地下室_1.jpg', 'M'),
(201, 142, 'LOST真人密室逃脫_貝克街亡靈_1.jpg', 'M'),
(202, 143, 'LOST真人密室逃脫_謎礦_1.jpg', 'M'),
(203, 144, 'LOST真人密室逃脫_最後的逆襲_1.jpg', 'M'),
(204, 144, 'LOST真人密室逃脫_最後的逆襲_2.jpg', 'M'),
(205, 145, 'LOST真人密室逃脫_死神閣樓_1.jpg', 'M'),
(206, 146, 'LOST真人密室逃脫_蝴蝶谷_1.jpg', 'M'),
(207, 147, 'LOST真人密室逃脫_被神遺棄的女孩_1.jpg', 'M'),
(208, 148, 'LOST真人密室逃脫_鬥陣行_1.jpg', 'M'),
(209, 149, '許多門_歌劇名伶事件簿_1.jpg', 'M'),
(210, 150, '許多門_米其林尋兇_1.jpg', 'M'),
(211, 151, '許多門_石器時代_1.jpg', 'M'),
(212, 152, '許多門_軒猿忍者傳_1.png', 'M'),
(213, 153, '許多門_嗜血病院_1.jpg', 'M'),
(214, 154, '許多門_夢想甲子園_1.jpg', 'M'),
(215, 155, '笨蛋工作室_羅伯班克_1.jpg', 'M'),
(216, 155, '笨蛋工作室_羅伯班克_2.jpg', '1'),
(217, 156, '笨蛋工作室_笨蛋特務_1.jpg', 'M'),
(218, 156, '笨蛋工作室_笨蛋特務_2.jpg', '1'),
(219, 156, '笨蛋工作室_笨蛋特務_3.jpg', '1'),
(220, 156, '笨蛋工作室_笨蛋特務_4.jpg', '1'),
(221, 156, '笨蛋工作室_笨蛋特務_5.jpg', '1'),
(222, 157, '笨蛋工作室_鬼新娘_1.jpg', 'M'),
(223, 158, '笨蛋工作室_馬雅魔方_1.jpg', 'M'),
(224, 159, '笨蛋工作室_顛倒之室_1.jpg', 'M'),
(225, 159, '笨蛋工作室_顛倒之室_2.jpg', '1'),
(226, 160, '笨蛋工作室_奪命鎖鏈1_1.jpg', 'M'),
(227, 160, '笨蛋工作室_奪命鎖鏈1_2.jpg', '1'),
(228, 160, '笨蛋工作室_奪命鎖鏈1_3.jpg', '1'),
(229, 160, '笨蛋工作室_奪命鎖鏈1_4.jpg', '1'),
(230, 160, '笨蛋工作室_奪命鎖鏈1_5.jpg', '1'),
(231, 160, '笨蛋工作室_奪命鎖鏈1_6.jpg', '1'),
(232, 160, '笨蛋工作室_奪命鎖鏈1_7.jpg', '1'),
(233, 160, '笨蛋工作室_奪命鎖鏈1_8.jpg', '1'),
(234, 160, '笨蛋工作室_奪命鎖鏈1_9.jpg', '1'),
(235, 160, '笨蛋工作室_奪命鎖鏈1_10.jpg', '1'),
(236, 161, 'HiDe_SeeK躲貓貓密室脫逃_同學幫幫忙_1.jpg', 'M'),
(237, 162, 'HiDe_SeeK躲貓貓密室脫逃_輪迴_1.jpg', 'M'),
(238, 163, 'HiDe_SeeK躲貓貓密室脫逃_窒愛_1.jpg', 'M'),
(239, 164, 'HiDe_SeeK躲貓貓密室脫逃_仙緣_1.jpg', 'M'),
(240, 165, 'HiDe_SeeK躲貓貓密室脫逃_七罪集團_1.jpg', 'M'),
(241, 166, '神話密室脫逃工坊_碟仙_1.png', 'M'),
(242, 167, '神話密室脫逃工坊_天工閣_1.jpg', 'M'),
(243, 167, '神話密室脫逃工坊_天工閣_2.jpg', '1'),
(244, 168, '神話密室脫逃工坊_天使聖物_1.jpg', 'M'),
(245, 169, '神話密室脫逃工坊_木屋_1.jpg', 'M'),
(246, 170, '神話密室脫逃工坊_惡魔骸骨_1.png', 'M'),
(247, 170, '神話密室脫逃工坊_惡魔骸骨_2.jpg', '1'),
(248, 171, 'Funow煩腦密室逃脫工作室_ATLANTIS亞特蘭提斯_1.jpg', 'M'),
(249, 172, 'Funow煩腦密室逃脫工作室_G.G-最後倒數_1.jpg', 'M'),
(250, 173, 'Funow煩腦密室逃脫工作室_模仿犯-開膛手再現_1.jpg', 'M'),
(251, 174, '黑盒子工作室_ToLieornotToLie_1.jpg', 'M'),
(252, 175, '黑盒子工作室_生日大餐_1.jpg', 'M'),
(253, 175, '黑盒子工作室_生日大餐_2.png', '1'),
(254, 175, '黑盒子工作室_生日大餐_3.jpg', '1'),
(255, 176, '黑盒子工作室_同學會_1.jpg', 'M'),
(256, 177, 'Loop迴圈工作室_倖存者_1.jpg', 'M'),
(257, 178, 'Loop迴圈工作室_雙子的懺悔_1.jpg', 'M'),
(258, 179, 'Loop迴圈工作室_獄謀_1.jpg', 'M'),
(259, 180, 'Loop迴圈工作室_娃娃_1.jpg', 'M'),
(260, 181, 'SWINGEscape_竊命牽羊_1.jpg', 'M'),
(261, 182, 'SWINGEscape_殤城_1.jpg', 'M'),
(262, 183, 'AngeLost_父仇_1.jpg', 'M'),
(263, 184, 'AngeLost_夜魂驚上海_1.jpg', 'M'),
(264, 185, '烏嘎嘎桌遊_遺失的手稿_1.jpg', 'M'),
(265, 186, '烏嘎嘎桌遊_惱羞巫師_1.jpg', 'M'),
(266, 187, '哇沙謎創意工作室_河伯_1.jpg', 'M'),
(267, 187, '哇沙謎創意工作室_河伯_2.jpg', '1'),
(268, 188, '哇沙謎創意工作室_秘令_1.jpg', 'M'),
(269, 188, '哇沙謎創意工作室_秘令_2.jpg', '1'),
(270, 189, '哇沙謎創意工作室_瑪莉控_1.jpg', 'M'),
(271, 189, '哇沙謎創意工作室_瑪莉控_2.jpg', '1'),
(272, 190, '麗寶樂園度假區_古墓秘笈_1.jpg', 'M'),
(273, 191, '麗寶樂園度假區_重返現場_1.jpg', 'M'),
(274, 192, '麗寶樂園度假區_紫禁城驚魂記_1.jpg', 'M'),
(275, 193, '麗寶樂園度假區_亞特蘭提斯_1.jpg', 'M'),
(276, 194, '麗寶樂園度假區_奪命電梯_1.jpg', 'M'),
(277, 195, '麗寶樂園度假區_龍門客棧_1.jpg', 'M'),
(278, 196, '麗寶樂園度假區_加勒比海寶藏_1.jpg', 'M'),
(279, 197, '麗寶樂園度假區_生化危機_1.jpg', 'M'),
(280, 198, '麗寶樂園度假區_冰山逃脫_1.jpg', 'M'),
(281, 199, '妖怪村桃樂趣實境遊戲_餓夜協奏曲_1.png', 'M'),
(282, 200, '妖怪村桃樂趣實境遊戲_沈默之鏡_1.png', 'M'),
(283, 201, '妖怪村桃樂趣實境遊戲_酒天傳說_1.png', 'M'),
(284, 202, '妖怪村桃樂趣實境遊戲_謎走松林-忍之捲軸_1.jpg', 'M'),
(285, 203, '許多門_嗜血病院_01.jpg', 'M'),
(286, 204, '許多門_俠盜羅賓漢_01.jpg', 'M'),
(287, 205, '許多門_軒猿忍者傳_01.png', 'M'),
(288, 206, '許多門_歌劇名伶事件簿_01.jpg', 'M'),
(289, 207, '許多門_石器時代_01.jpg', 'M'),
(290, 208, '許多門_絕命地鐵_01.jpg', 'M'),
(291, 209, '許多門_米其林尋兇_01.jpg', 'M'),
(292, 210, '許多門_嗜血病院_01.jpg', 'M'),
(293, 211, '許多門_銀行職員的百倍奉還_01.jpg', 'M'),
(294, 212, '許多門_夢想甲子園_01.jpg', 'M'),
(295, 213, '許多門_軒猿忍者傳_01.png', 'M'),
(296, 214, '許多門_穿越羅馬浴場2_01.jpg', 'M'),
(297, 215, '智慧獵人_洛克飯店殺手困境_01.png', 'M'),
(298, 216, '智慧獵人_紅衣小女孩噩夢再見_01.png', 'M'),
(299, 217, '神不在場_X伯爵的委託_01.jpg', 'M'),
(300, 218, '神不在場_莎士比亞的邀請_01.jpg', 'M'),
(301, 218, '神不在場_莎士比亞的邀請_02.jpg', '1'),
(302, 218, '神不在場_莎士比亞的邀請_03.png', '1'),
(303, 219, '神不在場_失落的隕石神殿_01.jpg', 'M'),
(304, 220, '神不在場_夢月馬的戲團_01.jpg', 'M'),
(305, 221, '神不在場_浮士德家的後院_01.jpg', 'M'),
(306, 221, '神不在場_浮士德家的後院_02.jpg', '1'),
(307, 222, '神不在場_X伯爵的委託2_01.jpg', 'M'),
(308, 223, '神不在場_入侵者-森林的哀嚎_01.jpg', 'M'),
(309, 224, '許多門_爆彈拆除班_01.jpg', 'M'),
(310, 225, '許多門_古堡迷蹤_01.jpg', 'M'),
(311, 226, '許多門_穿越羅馬浴場_01.jpg', 'M'),
(312, 227, '許多門_逆轉偵訊室_01.jpg', 'M'),
(313, 228, '許多門_御醫_01.jpg', 'M'),
(314, 229, '羊逃密室逃脫工作室_女巫的祭壇_01.jpg', 'M'),
(315, 230, '羊逃密室逃脫工作室_祕境封印_01.jpg', 'M'),
(316, 231, '羊逃密室逃脫工作室_畫廊搶案_01.jpg', 'M'),
(317, 232, '羊逃密室逃脫工作室_魔境夢遊_01.jpg', 'M'),
(318, 233, '羊逃密室逃脫工作室_奪魂鋸_01.jpg', 'M'),
(319, 234, '羊逃密室逃脫工作室_魔法學園之闇黑封印_01.jpg', 'M'),
(320, 235, '逃出香港_嗜血之墳_01.jpg', 'M'),
(321, 235, '逃出香港_嗜血之墳_02.jpg', '1'),
(322, 236, '逃出香港_驚天任務_01.jpg', 'M'),
(323, 236, '逃出香港_驚天任務_02.jpg', '1'),
(324, 237, '逃出香港_幽暗海盜_01.jpg', 'M'),
(325, 237, '逃出香港_幽暗海盜_02.jpg', '1'),
(326, 238, '逃出香港_遊戲世界_01.jpg', 'M'),
(327, 238, '逃出香港_遊戲世界_02.jpg', '1'),
(328, 239, '逃出香港_逃龍記_01.jpg', 'M'),
(329, 239, '逃出香港_逃龍記_02.jpg', 'M'),
(330, 240, '逃出香港_引路人_01.jpg', 'M'),
(331, 240, '逃出香港_引路人_02.jpg', '1'),
(332, 241, '桃樂趣_新☆夢遊馬戲團_01.jpg', 'M'),
(333, 242, '桃樂趣_巴弒_01.jpg', 'M'),
(334, 243, '桃樂趣_來自星星的吃貨_01.jpg', 'M'),
(335, 244, '桃樂趣_小矮人大冒險_01.jpg', 'M'),
(336, 245, 'CANPASS_記憶裂痕_01.jpg', 'M'),
(337, 245, 'CANPASS_記憶裂痕_02.jpg', '1'),
(338, 245, 'CANPASS_記憶裂痕_03.jpg', '1'),
(339, 245, 'CANPASS_記憶裂痕_04.jpg', '1'),
(340, 245, 'CANPASS_記憶裂痕_05.jpg', '1'),
(341, 246, 'CANPASS_但丁七日_01.jpg', 'M'),
(342, 246, 'CANPASS_但丁七日_02.jpg', '1'),
(343, 246, 'CANPASS_但丁七日_03.jpg', '1'),
(344, 246, 'CANPASS_但丁七日_04.jpg', '1'),
(345, 246, 'CANPASS_但丁七日_05.jpg', '1'),
(346, 247, 'CANPASS_迷屍森林_01.jpg', 'M'),
(347, 247, 'CANPASS_迷屍森林_02.jpg', '1'),
(348, 247, 'CANPASS_迷屍森林_03.jpg', '1'),
(349, 247, 'CANPASS_迷屍森林_04.jpg', '1'),
(350, 247, 'CANPASS_迷屍森林_05.jpg', '1'),
(351, 248, 'Dr.小頭密室逃脫工作室_索魂_01.jpg', 'M'),
(352, 249, 'Dr.小頭密室逃脫工作室_引爆達文西_01.jpg', 'M'),
(353, 250, '小頭_馬桶英雄_01.jpg', 'M'),
(354, 251, '爆炸先生_持碑天兵_01.jpg', 'M'),
(355, 252, '爆炸先生_噩夢首部曲-記憶牢籠_01.jpg', 'M'),
(356, 253, '爆炸先生_玩具總動員_01.jpg', 'M'),
(357, 254, '爆炸先生_越南大戰_01.jpg', 'M'),
(358, 255, '獵時者遊戲工作室_時空裂縫之１４７號入口_01.jpg', 'M'),
(359, 256, '獵時者遊戲工作室_大魔術師之幻崛_01.jpg', 'M'),
(360, 257, '獵時者遊戲工作室_時空幻域_01.jpg', 'M'),
(361, 258, '獵時者遊戲工作室_越時迷獄_01.jpg', 'M'),
(362, 259, '夢罟密室逃脫_羅莎_01.jpg', 'M'),
(363, 260, 'CANPASS_尋夢少女_01.jpg', 'M'),
(364, 261, '夢罟密室逃脫_跨越時空的遺產_01.jpg', 'M'),
(365, 262, 'MissGAME_救救唐三藏_01.jpg', 'M'),
(366, 263, 'MissGAME_即刻越獄_01.jpg', 'M'),
(367, 264, '梅林的鬍子遊戲工作室_聖劍騎士_01.jpg', 'M'),
(368, 265, '梅林的鬍子遊戲工作室_大宅門_01.jpg', 'M'),
(369, 266, '城市尋寶_木柵欄裡的秘密_01.png', 'M'),
(370, 267, '城市尋寶_淡水1884_01.png', 'M'),
(371, 268, '城市尋寶_捷運踩地雷_01.png', 'M'),
(372, 269, '城市尋寶_串城流浪記_01.png', 'M'),
(373, 270, '城市尋寶_尖山陶寶_01.png', 'M'),
(374, 271, '玩轉城市_波克熊的不思議冒險_01.jpg', 'M'),
(375, 272, '貝爾豪斯工作室_她的1963_01.jpg', 'M'),
(376, 273, '貝爾豪斯工作室_黑箱_01.jpg', 'M'),
(377, 274, 'EPIC_聖物結界晴光錄_01.jpg', 'M'),
(378, 275, 'MissGAME_噶瑪蘭的寶藏_01.jpg', 'M');

-- --------------------------------------------------------

--
-- 資料表結構 `product_stock`
--

CREATE TABLE `product_stock` (
  `STOCK_ID` int(11) NOT NULL,
  `PRO_SEQ` int(11) NOT NULL,
  `STATUS` varchar(1) NOT NULL,
  `DATE` date NOT NULL,
  `TIME_ZONE` varchar(20) NOT NULL,
  `CID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `stores_test`
--

CREATE TABLE `stores_test` (
  `sid` int(11) NOT NULL,
  `s_name` varchar(60) NOT NULL,
  `s_name_eng` varchar(60) DEFAULT NULL,
  `s_tel` varchar(60) DEFAULT NULL,
  `city_id` int(2) DEFAULT NULL,
  `s_add` varchar(255) NOT NULL,
  `s_ophr` varchar(30) DEFAULT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `s_logo` varchar(30) NOT NULL,
  `instr` varchar(255) DEFAULT NULL,
  `instr_eng` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `stores_test`
--

INSERT INTO `stores_test` (`sid`, `s_name`, `s_name_eng`, `s_tel`, `city_id`, `s_add`, `s_ophr`, `lat`, `lng`, `s_logo`, `instr`, `instr_eng`) VALUES
(1, '笨蛋工作室密室逃脫 安和館ab', 'Stupidparticle', '02-8787-4387', 1, '台北市大安區安和路一段112巷27號B1', '', 25.034000, 121.550369, 'stupidparticle_1.jpg', '', ''),
(3, '笨蛋工作室密室逃脫 南京新館', 'Stupidparticle', '02-8787-4387', 15, '台北市松山區寶清街31號1樓', '10:00-21:30', 25.049650, 121.569122, 'stupidparticle_1.jpg', '', ''),
(4, '笨蛋工作室密室逃脫 新竹館長捐多少', 'Stupidparticle', '03-571-987', 5, '新竹市東區光復路二段200號', '13:00-21:00', 24.794201, 121.000450, '', '新竹NOVA資訊廣場三樓', ''),
(6, 'QhAt帽子烤工廠', 'QhAt', '0974-069-218', 1, '台北市信義路三段126號3樓', '10:00-22:00', 25.033346, 121.539085, 'qhat.jpg', '近大安捷運站出站徒步', '5 minuts walk from Da An MRT station'),
(7, '謎鹿實境遊戲工作室', 'Mystery Goose', '0908-818-100', 2, '新北市永和區福和路297號B1', '09:30-22:00', 25.007240, 121.516563, 'mysterymoose.jpg', '', ''),
(9, '貝爾豪斯工作室', 'Bear House', '0926-213-619', 2, '新北市板橋區銘傳街76巷5號', '10:30-21:30', 25.031130, 121.469971, 'BearHouse.jpg', '', ''),
(83, '老張牛肉麵', '', '334-5678', 2, '大馬路', '', 25.000000, 120.000000, '', 'd', ''),
(15, '壞主意工作室 西門館', 'Bad Ideas', '02-2255-5022', 1, '台北市萬華區中華路一段196巷B1', '10:30-22:00', 25.047449, 121.509583, 'badideas.jpg', '', ''),
(17, 'Thougher 穿越者', 'Thougher', '02-2956-6636', 0, '新北市板橋區館前東路8號B1', '11:30-22:30', 25.007040, 121.459778, 'througher.jpg', '', ''),
(18, '不讓你密室逃脫', 'BuRunning', '', 1, '台北市大同區保安街49巷6號', '10:00-19:00', 25.059320, 121.511917, 'burunning.jpg', '', ''),
(19, '夢遊王國', 'Dream94zz', '02-2552-9422', 1, '台北市大同區延平北路二段202號3樓', '10:00-22:00', 25.059114, 121.511337, 'dream94zz.jpg', '', ''),
(20, '謬舍 MEW? Studio', 'MEW? Studio', '0910-370-464', 1, '台北市大同區伊寧街9巷31號1樓', '09:00-22:00', 25.065599, 121.513100, 'mew3.jpg', '', ''),
(21, 'EnterSpace', 'EnterSpace', '02-2533-7817', 1, '台北市中山區明水路581巷15號B1', '10:00-22:00', 25.080156, 121.550934, 'enterspace.jpg', '', ''),
(22, 'FunLock 放樂工作室', 'FunLock', '02-2585-5330', 1, '台北市中山區撫順街8號5樓', '10:30-20:30', 25.063606, 121.521149, 'Funlock.jpg', '', ''),
(23, '4Fun Base 創意基地 密室逃脫 安和創始館', '4Fun Base', '0988-081-576', 1, '台北市大安區敦化南路一段295巷42號', '10:00-22:00', 25.035379, 121.551071, '4funBase.jpg', '', ''),
(24, '4Fun Base 創意基地 密室逃脫 行天宮館', '4Fun Base', '0906-909-608', 1, '台北市中山區民權東路二段43號1樓', '10:00-22:00', 25.062870, 121.530418, '4funBase.jpg', '', ''),
(25, '4Fun Base 創意基地 密室逃脫 小巨蛋館', '4Fun Base', '0973-096-707', 1, '台北市松山區南京東路四段25號5樓之1', '10:00-22:00', 25.051960, 121.550598, '4funBase.jpg', '', ''),
(26, '4Fun Base 創意基地 密室逃脫 魔方貝斯館', '4Fun Base', '0973-096-707', 1, '台北市松山區南京東路五段285號4樓', '10:00-22:00', 25.051550, 121.565933, '4funBase.jpg', '', ''),
(27, 'Rostart 邏思起子實境遊戲工作室', 'RoStart', '0965-305-690', 1, '台北市松山區南京東路五段66巷12弄10號', '10:00-20:00', 25.050520, 121.560204, 'RoStart.jpg', '', ''),
(28, 'Miss Game 行天宮一館', 'Miss Game', '0986-617-820', 1, '台北市中山區民權東路二段67號2樓', '09:00-21:00', 25.062782, 121.531204, 'MissGame.jpg', '', ''),
(29, 'Miss Game 台北大直館', 'Miss Game', '0986-617-820', 1, '台北市中山區大直街9巷7弄4號1樓', '09:00-21:00', 25.080999, 121.547119, 'MissGame.jpg', '', ''),
(30, 'Miss Game 行天宮二館', 'Miss Game', '0986-617-820', 1, '台北市中山區民權東路二段62號2樓', '09:00-21:00', 25.062361, 121.531021, 'MissGame.jpg', '', ''),
(31, 'Miss Game 西門旗艦館', 'Miss Game', '0986-617-820', 1, '台北市萬華區漢中街24號', '09:00-21:00', 25.045397, 121.507629, 'MissGame.jpg', '', ''),
(32, 'Miss Game 宜蘭傳藝館', 'Miss Game', '0903-398-298', 19, '宜蘭縣五結鄉五濱路二段201號', '09:00-21:00', 24.687799, 121.825447, 'MissGame.jpg', '', ''),
(33, '藍色迴廊', 'Hallway', '0936-791-697', 2, '新北市新莊區富國路59號', '10:00-21:00', 25.026270, 121.419548, 'hallway.jpg', '', ''),
(34, '逃生門工作室', 'Emergency Exit', '02-2518-0313', 1, '台北市中山區松江路283號4樓', '10:00-22:00', 25.060200, 121.533409, 'exit.jpg', '', ''),
(35, 'Escapeholics 密室逃脫 - EPIC', 'Escapeholics - EPIC', '02-2595-5760', 1, '台北市中山區農安街19號B1', '14:00-23:00', 25.065029, 121.524017, 'Escapeholics.jpg', '', ''),
(36, '台灣逃脫實境工作室', 'TW Escape', '0988-956-606', 1, '台北市內湖區康寧路三段247號', '09:30-21:30', 25.066730, 121.611427, 'TWEscape.jpg', '', ''),
(37, '玩笑實驗室', 'WanXiao Lab', '', 1, '台北市內湖區內湖路一段136號1樓', '09:00-22:00', 25.082842, 121.564011, 'wanxiao.jpg', '', ''),
(38, 'Xcape Taiwan', 'Xcape Taiwan', '02-2872-1157', 1, '台北市士林區中山北路七段14巷19之1號B1', '10:00-22:00', 25.118860, 121.532349, 'xcapetaiwan.jpg', '', ''),
(39, '頂級豬排工作室 內湖館', 'The Pork King', '0905-259-817', 1, '台北市內湖區麗山街348巷10弄1號', '09:00-23:00', 25.082390, 121.574219, 'porkking.jpg', '', ''),
(40, '頂級豬排工作室 西門町館', 'The Pork King', '0905-259-817', 1, '台北市萬華區峨嵋街123之3號3樓', '09:00-23:00', 25.044670, 121.502487, 'porkking.jpg', '', ''),
(41, '頂級豬排工作室 西門町二館', 'The Pork King', '0905-259-817', 1, '台北市萬華區康定路64號2樓', '09:00-23:00', 25.042391, 121.502258, 'porkking.jpg', '', ''),
(42, 'LOST真人密室逃脫 桃園中華店', 'LOST', '03-337-6658', 4, '桃園市桃園區中華路3號11樓', '12:00-22:00', 24.991148, 121.311600, 'LOST.jpg', '', ''),
(43, 'LOST真人密室逃脫 台中創始店', 'LOST', '04-2321-8856', 8, '台中市西區台灣大道二段186號4樓', '10:00-22:00', 24.151390, 120.670013, 'LOST.jpg', '', ''),
(44, 'LOST真人密室逃脫 台中河南店', 'LOST', '04-2452-5525', 8, '台中市西屯區河南路二段476號B1', '12:00-22:00', 24.170340, 120.643028, 'LOST.jpg', '', ''),
(45, '智客堡密室逃脫 桃園館', 'Smart Man', '0921-088-501', 4, '桃園市桃園區民光路25號1樓', '09:00-22:00', 25.004910, 121.307732, 'smartman.jpg', '', ''),
(46, 'A5 Studio-全員脫逃中 中原一店', 'A5 Studio', '03-436-9772', 4, '桃園市中壢區大仁街50號1F', '13:00-22:00', 24.956221, 121.241028, 'A5Studio.jpg', '', ''),
(47, 'A5 Studio-全員脫逃中 中原二店', 'A5 Studio', '03-436-9772', 4, '桃園市中壢區中北路2段434號8F', '13:00-22:00', 24.954571, 121.233414, 'A5Studio.jpg', '', ''),
(48, 'A5 Studio-全員脫逃中 南崁店', 'A5 Studio', '03-436-9772', 4, '桃園市蘆竹區桃園街118號B1', '13:00-22:00', 25.047630, 121.291023, 'A5Studio.jpg', '', ''),
(49, 'MR.5 謎逃羔羊 實境解謎遊戲', 'MR.5', '0919-915-610', 5, '新竹市東區新莊街148巷37號', '10:00-22:00', 24.786240, 121.017670, 'mr5.jpg', '', ''),
(50, '格林跳-真實密室遊戲 一館', 'Grimm Tell', '0984-259-002', 5, '新竹市東區民生路128號4樓', '09:00-22:00', 24.810141, 120.977226, 'grimmtell.jpg', '', ''),
(51, '格林跳-真實密室遊戲 二館', 'Grimm Tell', '0984-259-002', 5, '新竹市東區民權路62號', '09:00-22:00', 24.806829, 120.976288, 'grimmtell.jpg', '', ''),
(52, '謎猴實境工作室', 'Puzzle Monkey', '0966-770-380', 5, '新竹市東區中正路20號9樓', '', 24.803049, 120.971390, 'puzzlemonkey.jpg', '', ''),
(53, '濤濤來工作室 新竹本館', 'Tao Tao Lai', '0912-850-770', 5, '新竹市東區民生路253號7樓', '13:00-21:00', 24.812450, 120.975037, 'tautaulai.jpg', '', ''),
(54, '濤濤來工作室 NOVA館', 'Tao Tao Lai', '0912-850-770', 5, '新竹市東區光復路二段200號', '13:00-21:00', 24.794201, 121.000450, 'tautaulai.jpg', '新竹NOVA資訊廣場三樓', ''),
(55, 'Play Studio玩密室 新竹巨城店', 'Play Studio', '03-533-3361', 5, '新竹市東區中央路239號', '11:00-21:30', 24.805750, 120.968849, 'PlayStudio.jpg', '', ''),
(56, 'Play Studio玩密室 新竹站前SOGO店', 'Play Studio', '03-523-2290', 5, '新竹市東區民族路2號', '11:00-21:30', 24.810890, 120.982201, 'PlayStudio.jpg', '', ''),
(57, 'CubeOrigin啟源方塊密室逃脫工作室', 'Cube Origin', '04-2265-5011', 8, '台中市南區美村路二段186號10樓', '13:00-21:00', 24.125071, 120.663399, 'CUBEOrigin.jpg', '', ''),
(58, '許多門實境解謎 台中館', 'Doorsss', '04-2326-8815', 8, '台中市西區台灣大道二段186號11樓之5', '11:00-21:00', 24.151390, 120.670013, 'doorsss.jpg', '', ''),
(59, '許多門實境解謎 嘉義館', 'Doorsss', '05-227-7636', 12, '嘉義市民族路246號2樓', '11:00-22:00', 23.476561, 120.454948, 'doorsss.jpg', '', ''),
(60, '許多門實境解謎 台南館', 'Doorsss', '06-222-0722', 14, '台南市中西區中山路147號8樓B', '11:00-22:00', 22.996006, 120.209984, 'doorsss.jpg', '', ''),
(61, '許多門實境解謎 高雄館', 'Doorsss', '07-581-2073', 15, '高雄市左營區站前北路1號3F', '11:00-22:00', 22.687832, 120.306778, 'doorsss.jpg', '『環球購物中心』 臺鐵新左營站3樓', ''),
(62, 'HiDe&SeeK 躲貓貓密室脫逃', 'HiDe&SeeK', '04-2203-0775', 8, '台中市北區民權路559號2樓之1', '13:00-22:00', 24.161840, 120.670113, 'HIDE-SEEK.jpg', '', ''),
(63, '神話密室脫逃工坊', 'Myth', '04-2203-2113', 8, '台中市北區民權路559號4F', '09:45-22:00', 24.161840, 120.670113, 'myth.jpg', '', ''),
(64, 'Funow煩腦密室逃脫工作室', 'Funow', '04-2234-2199', 8, '台中市北屯區河北路二段98號2F', '13:00-22:00', 24.171560, 120.683502, 'funow.jpg', '', ''),
(65, '實境密室逃脫-黑盒子工作室', 'Black Box', '04-2293-8533', 8, '台中市北區華美街二段236號B1', '10:00-22:00', 24.170380, 120.667122, 'blackbox.jpg', '', ''),
(66, 'Loop迴圈工作室-台中實境密室逃脫館', 'Loop', '04-2293-7588', 8, '台中市北屯區文心路四段81號17樓', '10:00-22:00', 24.174231, 120.672493, 'Loop.jpg', '', ''),
(67, 'SWING Escape', 'SWING Escape', '04-2706-6686', 8, '台中市河南路二段301巷16號2樓', '10:30-21:30', 24.172680, 120.647469, 'SWINGEscape.jpg', '', ''),
(68, 'AngeLost真人實境密室', 'AngeLost', '0987-493-668', 8, '台中市北區中清路一段100號B棟14樓', '10:00-00:00', 24.153589, 120.677582, 'AngeLost.jpg', '', ''),
(69, '烏嘎嘎工作室', 'UGG', '04-2215-4321', 8, '台中市東區自由路四段309號', '13:00-00:00', 24.142941, 120.705017, 'ugg.jpg', '', ''),
(70, '哇沙謎創意工作室', 'Wasabi', '0909-680-838', 8, '台中市豐原區中山路83號5樓', '10:00-22:00', 24.238310, 120.710571, 'wasabi.jpg', '', ''),
(71, '麗寶樂園密室逃脫', 'Li Bao', '04-2558-3108', 8, '台中市后里區福容路8號', '09:00-20:00', 24.324169, 120.699493, 'libao.jpg', '麗寶樂園內', ''),
(72, '妖怪村桃樂趣實境遊戲 南投店', 'Peachfun', '04-9261-2169', 10, '南投縣鹿谷鄉內湖村興產路2之3號', '10:00-19:30', 23.717840, 120.779266, 'peachfun.jpg', '妖怪村內', ''),
(73, '神不在場實境遊戲 台南館', 'TAOG', '06-312-0792', 14, '台南市永康區中華路1-2號3樓', '10:00-22:00', 22.998732, 120.234154, 'taog-game.jpg', '', ''),
(74, '桃樂趣密室逃脫 高雄店', 'Peachfun', '0936-660-210', 15, '高雄市前鎮區中華五路789號2F', '11:00-22:30', 22.595570, 120.308403, 'peachfunks.jpg', '高雄夢時代二樓', ''),
(75, '羊逃密室逃脫工作室', 'Run Sheeps Run', '07-222-1311', 15, '高雄市苓雅區光華一路206號13f-4', '11:00-21:00', 22.629089, 120.313766, 'runsheepsrun.jpg', '', ''),
(76, '逃出香港', 'Freeing', '07-211-9921', 15, '高雄市新興區新田路155號3F', '12:00-22:30', 22.622040, 120.303268, 'freeing.jpg', '', ''),
(77, 'Canpss密室逃脫', 'CANPASS', '0981-240-815', 15, '高雄市苓雅區光華一路206號24F-1', '12:00-20:00', 22.629089, 120.313766, 'CANPASS.jpg', '', ''),
(78, 'Dr.小頭密室逃脫工作室', 'Dr. Head', '07-533-8066', 15, '高雄市鼓山區臨海二路16號3樓', '10:00-02:00', 22.622049, 120.273956, 'DrHead.jpg', '', ''),
(79, '爆炸先生密室逃脫工作室', 'Mr. Bomb', '07-285-8226', 15, '高雄市三民區建國三路46巷3號', '10:00-03:00', 22.638630, 120.300346, 'mrbomb.jpg', '', ''),
(80, '獵時者遊戲工作室', 'Time Hunter', '07-216-8169', 15, '高雄市新興區文橫二路147號2樓 ??', '14:00-22:00', 22.622820, 120.303642, 'timehunter.jpg', '', ''),
(81, '夢罟密室逃脫', 'Dream Catcher', '0909-019-780', 15, '高雄市三民區長明街313號', '10:00-22:00', 22.638411, 120.304138, 'dreamcatcher.jpg', '', ''),
(82, '梅林的鬍子遊戲工作室', 'Merlin\'s Beard', '03-9331765', 19, '宜蘭縣宜蘭市康樂路61號', '', 24.755899, 121.755432, 'MerlinsBeard.jpg', '', '');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `activity_list`
--
ALTER TABLE `activity_list`
  ADD PRIMARY KEY (`tid`);

--
-- 資料表索引 `buy_list`
--
ALTER TABLE `buy_list`
  ADD PRIMARY KEY (`SID`);

--
-- 資料表索引 `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- 資料表索引 `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`cid`);

--
-- 資料表索引 `company_city`
--
ALTER TABLE `company_city`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `company_test`
--
ALTER TABLE `company_test`
  ADD PRIMARY KEY (`cid`);

--
-- 資料表索引 `gamefeature`
--
ALTER TABLE `gamefeature`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `game_cate`
--
ALTER TABLE `game_cate`
  ADD PRIMARY KEY (`SID`);

--
-- 資料表索引 `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- 資料表索引 `member_collectgame`
--
ALTER TABLE `member_collectgame`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `member_recordgame`
--
ALTER TABLE `member_recordgame`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `member_trackstudio`
--
ALTER TABLE `member_trackstudio`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`PRO_SEQ`);

--
-- 資料表索引 `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`SID`);

--
-- 資料表索引 `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`SID`);

--
-- 資料表索引 `product_stock`
--
ALTER TABLE `product_stock`
  ADD PRIMARY KEY (`STOCK_ID`);

--
-- 資料表索引 `stores_test`
--
ALTER TABLE `stores_test`
  ADD PRIMARY KEY (`sid`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `activity_list`
--
ALTER TABLE `activity_list`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表 AUTO_INCREMENT `buy_list`
--
ALTER TABLE `buy_list`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- 使用資料表 AUTO_INCREMENT `company`
--
ALTER TABLE `company`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- 使用資料表 AUTO_INCREMENT `company_city`
--
ALTER TABLE `company_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- 使用資料表 AUTO_INCREMENT `company_test`
--
ALTER TABLE `company_test`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- 使用資料表 AUTO_INCREMENT `gamefeature`
--
ALTER TABLE `gamefeature`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=796;

--
-- 使用資料表 AUTO_INCREMENT `game_cate`
--
ALTER TABLE `game_cate`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表 AUTO_INCREMENT `markers`
--
ALTER TABLE `markers`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- 使用資料表 AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表 AUTO_INCREMENT `member_collectgame`
--
ALTER TABLE `member_collectgame`
  MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用資料表 AUTO_INCREMENT `member_recordgame`
--
ALTER TABLE `member_recordgame`
  MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `member_trackstudio`
--
ALTER TABLE `member_trackstudio`
  MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表 AUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `PRO_SEQ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- 使用資料表 AUTO_INCREMENT `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `product_images`
--
ALTER TABLE `product_images`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- 使用資料表 AUTO_INCREMENT `product_stock`
--
ALTER TABLE `product_stock`
  MODIFY `STOCK_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `stores_test`
--
ALTER TABLE `stores_test`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
