-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-12-22 09:21:24
-- 伺服器版本： 10.4.24-MariaDB
-- PHP 版本： 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `meow`
--

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` int(4) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `top` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `readed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `heart` int(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(8) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `news`
--

INSERT INTO `news` (`id`, `subject`, `type`, `content`, `top`, `readed`, `heart`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '備戰冠軍賽「最後一舞」　梅西PO文：我準備好了', 1, '世足賽台灣時間今晚11點將進行最後決戰，由衛冕冠軍法國隊，對上梅西領軍的阿根廷。兩隊靈魂人物梅西和姆巴佩都分別在IG上PO文，只是現在傳出梅西的左後腿拉傷，另外法國隊也有多名球員掛病號，根據國際賭盤的最新賠率，兩邊竟然差不多，反而是和局賠率最高。\r\n\r\n阿根廷球迷高舉藍白旗幟，用歡呼聲，點燃今晚冠軍賽的最後戰火。\r\n\r\n阿根廷靈魂人物梅西，在個人IG上發文，說「我準備好了」，不過對手法國隊的看板球星姆巴佩，也在IG上po照文中更貼了一面法國國旗，雙方都展現強烈爭冠決心。\r\n\r\nCNN主播：「阿根廷2014年，在里約熱內盧輸給德國後大躍進，歷經小組賽敗給沙烏地一役後，更完全甦醒變得更強更棒，阿根廷教頭希望球隊，能為這位超級巨星拿下金盃。」\r\n\r\n梅西生涯就差這座大力金盃，但傳出他左後腿拉傷，是否影響決賽表現，另外對手法國隊上，也壟罩病毒隱憂。\r\n\r\nCNN主播：「根據法國足協表示，隊上一些後衛正在和感冒對抗，分別是瓦拉內和科納特等人。」\r\n\r\n法國隊至少有5名球員掛病號，讓冠軍賽增添不確定性，然而從英國、美國，以及台灣賭盤數據來看，似乎兩邊賠率差不多，反而和局的賠率最高。\r\n\r\n阿根廷球迷：「(冠軍賽)對我們來說意味什麼，對於我們已經有一段時間，沒有歡樂時光的國家來說，這帶來巨大的快樂。」\r\n\r\n四年前世界盃16強，法國同樣對上阿根廷，當時雙方陣容，有三分之一與現在主力陣容相同，沒想到四年後決賽，還是這對大熱門組合，也讓今晚冠軍賽充滿可看性。', 0, 100, 0, 1, '2022-12-18 12:43:11', '2022-12-18 12:43:11'),
(2, '梅西最終戰！阿根廷大嫂團助陣　嗨喊奪冠就刺「那個東西」', 3, '2022卡達世足最終回，在克羅埃西亞與摩洛哥的戰局結束後，將在台灣時間18日晚間23時正式敲響決賽戰鼓，此役同時也是「阿根廷球王」梅西與法國天才新星姆巴佩的新老球王對決，而為此阿根廷「大嫂團」更是集結助陣，為的就是希望能為此役畫下完美句點。\r\n\r\n根據《太陽報（The Suns）》報導，阿根廷的大嫂團（WAGs）顧名思義就是國家隊球員的妻子或女友，而隨著阿根廷一路挺進到總決賽，阿根廷後衛馬丁尼茲（Lisandro Martinez）的女友也透露，其實早在四強賽前大嫂團的一次聚餐中，她們就達成協議決定倘若阿根廷順利奪冠，就要一起在身上刺青作為紀念。\r\n\r\n馬丁尼茲的女友洛培茲（Muri López）表示，如果阿根廷真的順利奪下冠軍，大嫂團預計在身上刺一個共同圖案，用以紀念這歷史性的一刻，至於刺什麼雖然還沒有定案，但目前已經有不少提案認為可以刺奪冠日期、阿拉伯文、甚至是「那個東西」。\r\n\r\n而洛培茲口中的那個東西，其實就是將頒發給冠軍隊伍的「大力神盃」，會先以「那個東西」代指冠軍獎盃，其實也是球員之間的一個禁忌迷信，認為在戰局底定前直接講出來，可能會破壞了阿根廷的奪冠機會，因此才會先以代稱稱呼。\r\n', 0, 80, 0, 1, '2022-12-18 12:44:43', '2022-12-18 12:44:43'),
(3, '凍僵夜中部僅6度！把握這天大回溫　週三又一波寒流襲台', 7, '全台各地冷颼颼！今（18）日北部溫度僅有9度，好消息是到了禮拜二溫度會回升至20度上下，但隔天馬上有新一波冷氣團南下，天氣型態又會返低溫乾冷，禮拜四、五則有機會看到陽光露臉。\r\n\r\n自明（19）日白天開始，寒流可望減弱，目前冷高壓的位置在中國南方附近，持續帶來寒冷的空氣到台灣的上空，但明天隨著冷高壓逐漸東移出海之後，冷空氣影響台灣的強度就會明顯減弱，到了禮拜二風場預計會轉成東風，意味這天將是這星期最溫暖、舒適的一天。但是到了禮拜三又會有一股強烈大陸冷氣團南下，到時侯溫度又會再度轉成寒冷，預計這一週都還是以寒冷天氣為主，提醒大家外出務必做好保暖的工作。\r\n\r\n看到降雨的分布，北部地區已經告別連日陰霾，降雨可見緩和狀態，只有在北海岸、東北角局部的短暫陣雨而已，預計明後兩天也是這樣的降雨分布，至於禮拜三冷空氣南下後中北部地區又有機會出現短暫降雨的現象，但由於此冷氣團屬於挾帶的水氣少，禮拜四、五都有可能是太陽露臉的天氣型態。\r\n\r\n從溫度的趨勢圖，可以進一步看到北部地區在10度上下擺盪，不過明日高溫可望回升至16度，禮拜二更有機會來到20度左右，則禮拜三受冷氣團南下影響，不只高溫又會掉到16、17度，低溫更是回到10度上下。而中南部、東半部地區的溫度曲線圖也呈現類似狀況，禮拜二回溫至25度，禮拜三又會滑到高溫22度左右、低溫15度上下的狀況。\r\n\r\n今天晚上到明天清晨都將持續被低溫壟罩，特別是到夜間受到輻射冷卻效應的影響，台南以北地區又會出現10度以下的低溫，其中在中部地區輻射冷卻效應甚至比雨量多的北部地區來的明顯，甚至有機會出現只有6度的低溫，則明天早上陽光露臉之後，北部高溫有望升到16度；南部高溫有機會來到20度。最後提醒大家這幾天早晚溫差大，穿著上建議以洋蔥式穿法為主，別著涼了！', 0, 95, 0, 1, '2022-12-18 12:46:14', '2022-12-18 12:46:14'),
(4, 'IE再見！靠系統復活無望　微軟證實「2月起永久停用」', 1, '又是一個網路時代的終結！儘管微軟IE瀏覽器（Internet Explorer）在今年6月正式淡出，但仍一度傳出Windows 11系統可以有辦法讓IE瀏覽器重回大眾視野，但隨著官方所發布的最新消息確認，IE瀏覽器將全面被微軟的「Edge」瀏覽器給取代。\r\n\r\n綜合外媒報導，儘管IE瀏覽器過去曾有消息指出還有復活可能，但隨著微軟最新公布的官方文件釋出，大眾也確認IE將正式走入歷史，預計會在2023年的2月14日透過Edge的更新正式結束IE的服務。\r\n\r\n當初由於部分民眾仍相當習慣使用IE瀏覽器，因此在今年6月正式退役後，微軟更新的Edge具備IE相容模式，讓使用者可以有足夠的緩衝時間將資料紀錄完成過渡轉移；而最新消息也指出，微軟Edge與Google Chrome瀏覽器都將停止支援Windows 7、8、8.1系統。', 0, 30, 0, 1, '2022-12-18 12:47:01', '2022-12-18 12:47:01'),
(5, '剛果洪災釀169人喪命！災民「逆流騎車」滅頂畫面瘋傳', 1, '位於中非的剛果民主共和國（Democratic Republic of the Congo，簡稱民主剛果）連日以來的豪大雨引發致命洪水災情，光是在首都金夏沙（Kinshasa）就已經累積至少169人罹難，280棟房屋被摧毀。網路上還流傳著一段，民眾騎著機車試圖穿越泥水，結果連人帶車被沖走的驚悚畫面。\r\n\r\n綜合外媒報導，剛果在過去幾天以來出現嚴重暴雨，擁有1500萬人口的首都金夏沙在上週二（13）傳出道路、房屋坍塌及嚴重土石流災情，至少造成120人喪命。剛果政府也宣布全國進行為期3天的哀悼日。\r\n\r\n隨著搜救行動持續，聯合國人道主義事務協調辦公室（OCHA）16日證實，死亡人士已上修到169人，另外有30人受傷，280棟房屋在洪災中被摧毀，估計有3.8萬人受到影響。報導指出，金夏沙位於剛果河畔，近年來有人口大量湧入，許多住宅是建造在山坡地上，而且當地排水系統和污水處理系統不完善，加劇洪災風險。\r\n\r\n社群平台上還流傳著好幾段災區的畫面，其中有一名男子在滾滾泥水中騎著機車「逆流往前衝」，後座還載了2個人，結果最後不敵兇猛洪水，3個人連人帶車被沖倒，一度慘遭泥水滅頂，一旁目擊民眾本來想跑過去救人，但是自己也站不穩，差點被沖走。\r\n\r\n另一段畫面則顯示，當時有一群災民坐在一艘小木筏上等待救援，結果一輛公車在泥水中行駛而過，激起的水波直接把他們「擊落」，而公車最後疑似也因為積水太深拋錨，停在馬路中間動彈不得。', 0, 79, 0, 1, '2022-12-18 12:48:17', '2022-12-18 12:48:17'),
(6, '俄近百飛彈炸！烏百萬人無電用　普欽軟姿態？罕聽高官指教', 1, '俄羅斯大規模空襲，這次朝烏克蘭各大城，發射近百枚飛彈，還高調宣布擊中目標。烏克蘭方面則表示，受到攻擊的多數都是發電設備，導致上百萬人無電可用，寒冬下供暖系統中斷，民眾日子苦不堪言。但俄羅斯仍舊打不下烏克蘭，現在總統普欽居然罕見，釋出聽取高官指教的畫面，也令外界揣測，是不是可能有意放軟姿態。\r\n\r\n轟炸恐懼再次來襲，烏克蘭週末前夕，各地又無預警遭到攻擊。\r\n\r\nCNN主播Laila Harrak：「烏克蘭半數發電量能，現在處於離線狀態，被最新俄軍攻擊以後。」\r\n\r\n遠處冒出雲狀煙霧嚇壞民眾，這次遇襲的多數都是發電設施，俄羅斯軍事行動越趨頻繁，甚至也沒放過平民建築。\r\n\r\n \r\nCNN主播Laila Harrak：「其他城市也同樣被攻擊，包括烏克蘭第二大城哈爾科夫，烏克蘭說九座發電設施被擊中，導致上百萬人再次無電可用。」\r\n\r\n俄羅斯國防部坦承動手高調宣布擊中目標，摧毀敵軍軍事設備，打亂西方武器運輸，而這次朝烏克蘭全境，發射近百枚飛彈，數量更多再次導致首都基輔斷電。\r\n\r\nCNN新聞旁白：「烏克蘭軍隊表示約有40枚飛彈，瞄準首都基輔促使數千人躲到地下，地鐵站成為臨時避難中心。」\r\n\r\n不過俄羅斯總統普欽似乎軟硬兼施，對外攻勢持續強硬，這時候卻釋出影像召開會議，非常罕見針對前線戰況聽取高官指教。\r\n\r\n俄羅斯總統普欽：「親愛的戰友們下午好，今天我們將聽取各戰區指揮官的意見。」\r\n\r\n是不是顯示長期抗戰下俄羅斯兵力快撐不住，才會放低姿態還有待觀察，不過外媒分析想全身而退，恐怕得先逼西方和烏克蘭坐上談判桌，但普欽至今持續加強和盟友關係，並表態12/19會親自訪問白俄羅斯。', 0, 88, 0, 1, '2022-12-18 12:48:44', '2022-12-18 12:48:44'),
(7, '2024民調賴清德落後　前綠委示警「問題出在政院」', 5, '台灣民意基金會昨日公布2024總統大選民調，在各政黨可能人選中，民進黨副總統賴清德支持度落後國民黨新北市長侯友宜近10個百分點，賴清德支持度29%、侯友宜38.7%。對此，民進黨前立委李俊毅表示，這對賴清德是很嚴重的警訊，雖然九合一選後無人要求賴清德負責，但選後支持度仍受傷，顯然行政院是個問題。\r\n\r\n李俊毅昨在政論節目《TVBS戰情室》表示，身為副總統的賴清德在選前盡心去輔選，選後也沒人認為他要為此次九合一綠營大敗負責，顯然行政院是個問題，民進黨應該拋開個人算計，回到「重新贏回人民信任」的角度佈局。\r\n\r\n李俊毅也指出，被外界點名可能組閣的前副總統陳建仁、國安會秘書長顧立雄是不錯人選，因為兩人給人民的形象相對「OK」」。李俊毅也強調，總統蔡英文別再任命不適任的新閣揆，否則最後除了又得「忍痛處理」，人民還會覺得蔡與民進黨根本沒有誠意反省。', 0, 67, 0, 1, '2022-12-18 12:50:19', '2022-12-18 12:50:19'),
(8, '老i6s不死！蘋果推舊版本更新　這些機型也能用', 6, '蘋果近日剛釋出iOS 16.2更新，除了修復Bug之外，也新增許多新功能。而過去無緣iOS 16的iPhone舊機，也在iOS 16.2釋出的同時，同步獲得官方更新，讓這些老手機還能再戰。\r\n\r\n蘋果推出iOS 15.7.2版本，外界猜測，此次僅進行大量安全更新和修復漏洞，並沒有加入新功能。iOS 15.7.2支援機型包含iPhone 7、iPhone 7 Plus、iPhone SE、iPhone 6s、iPhone 6s Plus、iPod touch 7、iPad mini 4、iPad Air 2等，過去不能升級iOS 16的舊機。', 0, 56, 0, 1, '2022-12-18 12:51:22', '2022-12-18 12:51:22'),
(9, '資深名嘴「腦癌開顱」過世！享年52歲　鄭弘儀悲曝生前異狀', 4, '資深名嘴陳立宏長了腦腫瘤，因罹患腦癌辭世，享年52歲。而主持人鄭弘儀始終沒放下好友陳立宏，時隔5年在節目上悲曝陳立宏「生前異狀」。\r\n\r\n陳立宏2015年因眼角餘光看不到，發生車禍後驚覺不對勁，趕緊就醫檢查，才發現自己罹患腦瘤，而他也積極診治，同年做動顱手術，隔年2016年在開刀，右眼視力及右半身受到影響而暴瘦。\r\n\r\n陳立宏歷經開刀、化療、標靶等治療，逐漸淡出螢光幕前，怎料於2017年辭世。時隔5年，好友鄭弘儀近日在《新聞挖挖哇》談及陳立宏，直言陳立宏在不知道罹癌前有個異狀，就是常出車禍。\r\n\r\n鄭弘儀坦言，陳立宏第一、第二次不以為意，直到第七次才驚覺不妙，是在檢查後才知道腦瘤已經壓迫到視神經，進而影響視野，才因此不斷車禍。', 0, 74, 0, 1, '2022-12-18 12:52:28', '2022-12-18 12:52:28'),
(10, '拿獎就無盃？世界盃魔咒難解　梅西、姆巴佩有望破除', 3, '世界盃金球獎是頒給當屆比賽的最佳球員，但過去得獎者多像中了「魔咒」而與冠軍無緣，不過2022卡達世界盃足球賽的潛在得獎者，包括梅西、姆巴佩、格里茲曼都可望破除魔咒。\r\n\r\n以下是曾獲世界盃金球獎（World Cup Golden Ball），當時卻無緣高舉大力神盃的球員：\r\n\r\n●巴西前鋒羅納度（Ronaldo）\r\n\r\n1998年法國世界盃時，羅納度拿下金球獎，但巴西以0比3不敵法國，無緣冠軍。\r\n\r\n●德國門將卡恩（Oliver Kahn）\r\n \r\n\r\n2002年日韓世界盃時，卡恩靠著他優異的撲救拿下金球獎，並讓自己的知名度大開。但由他獲獎當時有些爭議，因為羅納度在冠軍賽表現精采，單場獨進兩球，其中一次還是在卡恩發生失誤後攻進的。\r\n\r\n●法國中場席丹（Zinedine Zidane）\r\n\r\n2006年德國世界盃時，席丹靠優異表現獲獎，但法國在冠軍賽的PK大戰後敗給義大利。而那次席丹最讓人印象深刻的時刻，是他因不滿對手馬特拉吉（Marco Materazzi）的垃圾話，而使出「頭錘」攻擊馬特拉吉，因此被罰出場並告別比賽。\r\n\r\n●烏拉圭前鋒佛蘭（Diego Forlan）\r\n\r\n2010年南非世界盃時，佛蘭攻進5球都對球隊發揮關鍵作用，他們差點踢進決賽並獲得隊史第3座世界盃冠軍，但最終只以第4名作收。\r\n\r\n●阿根廷前鋒梅西（Lionel Messi）\r\n\r\n2014年巴西世界盃時，梅西遭遇他生涯至今最大的挫敗之一，因為高齊（Mario Gotze）率德國在世界盃奪冠，不過金球獎能稍微給他些安慰，只不過當時許多人認為，這個獎應該頒給德國球員。\r\n\r\n●克羅埃西亞中場莫德里奇（Luka Modric）\r\n\r\n2018年俄羅斯世界盃時，儘管法國奪冠，陣中的姆巴佩（Kylian Mbapp）、格里茲曼（Antoine Griezmann）、博格巴（Paul Pogba）表現也十分出色，但莫德里奇卻獲得金球獎，這在賽前是許多人無法想像的。（中央社）', 0, 0, 0, 1, '2022-12-18 13:43:33', '2022-12-18 13:43:33'),
(11, 'World Cup champion Argentina returns home to a jubilant Buenos Aires', 1, 'Argentina’s World Cup-winning squad arrived home to a jubilant Buenos Aires in the early hours of Tuesday morning, with massive crowds lining the streets and cheering their champions’ return.\r\n\r\nCaptain Lionel Messi stepped off the plane first, holding the gold trophy aloft, followed by his triumphant team onto a red carpet at the airport, greeted by reporters, officials and a live band.\r\n\r\nAs the team bus departed the airport, it was immediately swarmed by cheering supporters dressed in the national colors of blue and white. Videos show the bus inching forward slowly behind a police escort, surrounded by tens of thousands of people waving the Argentine flag and setting off firecrackers in the night.\r\n\r\nThe air was filled with cheers as the crowd sang and danced; the players, standing on the open top deck, waved to their adoring supporters.\r\n\r\nHundreds of thousands of fans are expected to line the streets of the capital later on Tuesday for the team’s victory parade following their thrilling penalty shootout victory over France in Qatar on Sunday. Tuesday has been declared a national holiday in celebration.\r\n\r\nThe team will first spend the night at the Argentine Football Association’s training ground, according to state media agency Télam.\r\n\r\nCrowds of supporters had camped out at the training site on Monday ahead of the team’s arrival, with photos showing fans spilling out of cars parked on its grounds. Some laid on blankets on the grass while others lounged on picnic chairs around coolers.\r\n\r\nThe team’s highly-anticipated return continues several days of nonstop celebration across the country and among fans overseas, following Argentina’s explosive win against France.\r\n\r\nSuperstars Messi and Kylian Mbappé faced off on the pitch, in what has widely been called the greatest World Cup final of all time.\r\n\r\nMbappé was defending France’s 2018 win at the tournament in Russia, while 35-year-old Messi was playing in his final World Cup match, looking to claim the trophy which had eluded him for so long.\r\n\r\nArgentina took an early lead in the first half – but France roared back in the second half, reaching a 2-2 tie that forced the match into extra time.\r\n\r\nMessi scored his second goal of the match to restore his team’s lead – but Mbappé scored a second penalty to grab his hat-trick and take the final to a penalty shootout, which ended with triumph for Argentina after France missed two shots.\r\n\r\nHundreds of thousands of people poured onto the streets of Buenos Aires after the World Cup triumph, flooding the central 9 de Julio Avenue. Social media videos showed jubilant fans climbing on top of street poles to wave the Argentine flag; others on the ground danced, sang and chanted in celebration.\r\n\r\nThe triumph in Doha was Argentina’s third World Cup win and its first since 1986, when the legendary Diego Maradona led the team to victory in Mexico.\r\n\r\nSunday’s win also marked a change in fortunes for Argentina after three recent defeats in major finals – the 2014 World Cup, and the Copa America in 2015 and 2016.\r\n\r\nThose losses prompted Messi at one point to announce his retirement from international football – though the almost-unanimous national outcry convinced him to reverse track, before wining the Copa América in 2021.\r\n\r\nNow, with the World Cup also under his belt, Messi has cemented his status as one of the all-time soccer greats alongside Maradona and Brazil’s Pelé.\r\n\r\n“I cannot believe that we have suffered so much in a perfect game. Unbelievable, but this team responds to everything,” said Argentina coach Lionel Scaloni after the match Sunday, according to Reuters.\r\n\r\n“I am proud of the work they did,” he added, fighting back tears as he was embraced by his players. “I want to tell people to enjoy, it’s a historic moment for our country.”', 0, 0, 0, 3, '2022-12-20 07:13:39', '2022-12-20 07:13:39'),
(12, 'Lula da Silva made a historic comeback. He now faces a divided Brazil as president', 1, 'Sao Paulo, Brazil\r\nCNN\r\n — \r\nThe mood is hostile at an encampment outside a military barracks in Brazil’s most populous city of Sao Paulo, where Brazil’s national anthem plays on a loop and dozens of supporters of President Jair Bolsonaro mill around. They tote placards that read: “SOS Armed Forces,” “military intervention with Bolsonaro in power,” and “save us from communism.”\r\n\r\n“Bolsonaro (drew) large crowds to his (campaign) events. Then the other guy comes and wins the election? How is this possible? It’s absurd! That was fraud – it’s already been proven,” an elderly supporter, wearing jeans and a black polo shirt, told CNN. They, like other Bolsonaro supporters interviewed by CNN, refused to give their names or have their pictures taken.\r\n\r\nNearly two months since leftist former leader Luiz Inácio “Lula” da Silva was elected Brazil’s next president – reviving hopes that the country would restore environmental protections and see a less divisive political landscape – the anger among Bolsonaro’s most ardent fans is not abating.\r\n\r\nThough Bolsonaro’s administration says it is cooperating with the transition of power, the far-right incumbent himself has stopped short of explicitly conceding his election loss on October 30. In protest, thousands of his supporters have gathered at military barracks across the country, asking the army to step in as they claim, with no evidence, that the election was stolen.\r\n\r\nThis is the embittered landscape Lula da Silva will inherit on his inauguration on January 1. With only the thinnest of mandates – having won just 50.9% of a run-off vote versus Bolsonaro’s 49.1% – Lula da Silva is in the unenviable position of presiding over a deeply divided Brazil.\r\n\r\n“To his party loyal, Lula is a sort of god-like figure, and for a lot of other people, Lula is going to need to try his best to win them back,” Ryan Berg, the director of the Americas at the Center for Strategic and International Studies (CSIS), told CNN.\r\n\r\n“I think a significant portion of people are not really winnable – so any sign of weakness, any sign of lack of economic growth or tax increases or whatever (Lula da Silva) decides to do – they could be aggressive, and it’s going to be bumpier than when he was last president,” he added.\r\n\r\nDivided republic\r\nViolence has flared in other parts of the country ahead of his inauguration. On December 13, protesters clashed with police in the capital Brasilia as they attempted to break into a federal police building following the arrest of an outspoken Bolsonaro supporter.\r\n\r\nWhile Bolsonaro has not urged his followers to dispute the election results, the former paratrooper has done little to stop them from calling for a military coup. Last Friday, he explained that his 40-day silence following the election loss “hurt my soul,” and ambiguously added that Brazil’s armed forces “are the last obstacle to socialism… and responsible for our freedom.”\r\n\r\nFor many ‘Bolsonaristas’, the current president represented a muscular, “Brazil First,” worldview in a region where foreign powers have often meddled. He appealed to social conservatives, vocally opposing abortion and LGBTQ rights, and claimed to be pro-business, though his administration also spent billions to boost poor Brazilians during the economic downturn of the pandemic.\r\n\r\nThe progressive Lula da Silva, a former union leader, will face an upward battle to convince them that he can also be their president — and to shed the taint of his 2017 corruption and money laundering convictions, which were annulled in 2021 by Brazil’s Supreme Court.\r\n\r\nBolsonaro’s allies in politics, meanwhile, have vowed to punch holes in Lula’s agenda. “We will be a fierce opposition,” Sen. Eduardo Girão, from the center-right Podemos party, told CNN. Girão shares the same ideological agenda as Bolsonaro: both men call themselves Christians, “pro-family,” are anti-abortion, and oppose the legalization of drugs.\r\n\r\nLula’s coalition lacks a majority in Congress. However, fears that the legislature could hold the executive hostage have yet to be realized.\r\n\r\nA change to the 2023 budget requested by Lula da Silva’s allies was approved on December 7 by a majority of senators, with only 16 other senators – including Girão – voting against it. The constitutional amendment to increase government spending next year will help fund social payments to poor families. It will be voted in the lower house on Tuesday.\r\n\r\n“I was surprised. There was a drastic change in the position of senators from the center – they changed sides very quickly. They seem to lack ideology and coherence,” Girão admits.\r\n\r\nStill, that could change when the newly elected congressmen and senators begin their terms next year, says Bruna Santos, a senior advisor at the Wilson Institute’s Brazil Center.\r\n\r\nLegislative agenda\r\nThe incoming president will inherit a country with multiple public institutions that have been weakened during Bolsonaro’s tenure, such as its environmental agencies. Brazil’s already struggling health system was kneecapped in the Covid-19 pandemic, which saw the country gain one of the worst track records in the outbreak as Bolsonaro downplayed the gravity of the virus.\r\n\r\nAnd budget cuts to universities have piled pressure on Brazil’s already sliding education sector, where Brazilian teenagers rank lower than the OECD average in reading, maths, and science.\r\n\r\nWriting on Twitter Wednesday, Lula da Silva said the previous government had “destroyed a lot of things.” He added that once in power “we are going to invest in education, in SUS (Universal Health system), to resume Minha Casa Minha Vida (Low Income Community Housing Support Project). Really important things for the people.”\r\n\r\nIn the past week, the president-elect has announced key allies in important cabinet positions, giving Brazil watchers an indication of what his legislative agenda may look like, as Lula da Silva was light on details during the campaign trail.\r\n\r\nSao Paulo’s former Mayor Fernando Haddad was announced as incoming finance minister, Rui Costa as Lula da Silva’s chief of staff, and Mauro Vieira as foreign minister.\r\n\r\nSantos expects Lula da Silva’s first “100 days to be focused on tax reform,” pointing to Haddad’s appointment of Bernard Appy as special secretary for tax reform, who is “not only an economist that is very respected but also someone who understands the legislative process.”\r\n\r\nShe reckons the incoming president may also seek to regulate the internet in a similar way to the European Union. “The main focus is regulating platforms, social media and messaging, in the fight against fake news,” adding that the Supreme Court and electoral court have been advocating for Lula to move fast. Her worry is that Brazil, “as a country in the developing world, cannot afford to create bottlenecks for technological progress.”\r\n\r\nBut Lula assumes the presidency in vastly different circumstances than his previous two terms from 2003 to 2010. Growth has been sluggish in recent years with exports forecasted to slow in 2023. Without the commodities boom that once helped fund his policies, Lula da Silva may struggle to deliver on planned reforms and social spending promises.\r\n\r\nIf enacting domestic reforms proves difficult, “Lula 3.0 could be heavy on foreign policy” as a way to burnish his credentials, said Berg.\r\n\r\nWhen last in the presidency, Lula became known as a major international statesman, pushing for reform of global institutions like the World Bank and the IMF, or demanding Brazil a seat in the United Nations Security Council.\r\n\r\n“These are the types of things that make Brazil a very positively viewed country in many parts of the world,” Berg said.\r\n\r\nStill, some of Lula’s comments have raised eyebrows in the West. in May, the president-elect told TIME magazine that Ukrainian President Volodymyr Zelensky is equally to blame for Russia’s invasion of his country as Russian leader Vladimir Putin.\r\n\r\nAnalysts say Bazil’s political opposition will likely work to keep Bolsonaro’s supporters mobilized, harnessing the political anger around the outgoing president.\r\n\r\nAnger remains high at the encampment in Sao Paulo as it becomes apparent the army is not listening to their pleas. Soon after the elections, the Supreme Court asked the police to investigate the financiers of the dozens of pro-Bolsonaro encampments that have sprung up across the country.\r\n\r\nThe dragnet appears to be closing on them, but protesters CNN spoke to remained hopeful that Lula da Silva will not take office.\r\n\r\nA female protester told CNN that her sons do not approve of her taking part in the protest. “In order to save my family, I have to save the country. They are young, they think differently. Later they will thank me,” she told CNN of her sons, whom she has not seen since joining the camp over a month ago.\r\n\r\nTheir movement won’t end even if Lula da Silva is inaugurated, says a Bolsonaro supporter next to her. “We will be right there to oppose him,” he said.', 0, 0, 0, 3, '2022-12-20 07:36:24', '2022-12-20 07:36:24'),
(13, 'Dutch prime minister apologizes for the Netherlands’ role in the slave trade', 1, 'Dutch Prime Minister Mark Rutte apologized Monday for the Netherlands’ “slavery past,” which he said continues to have “negative effects.”\r\n\r\nRutte’s comments were part of the Dutch government’s wider acknowledgment of the country’s colonial past, and an official response to a report entitled “Chains of the Past” by the Slavery History Dialogue Group, published in July 2021.\r\n\r\n“For centuries under Dutch state authority, human dignity was violated in the most horrific way possible,” Rutte said during a speech at the country’s National Archives in The Hague.\r\n\r\n“And successive Dutch governments after 1863 failed to adequately see and acknowledge that our slavery past continued to have negative effects and still does. For that I offer the apologies of the Dutch government,” the Dutch prime minister said.\r\n\r\nRutte also spoke briefly in English on Monday, saying: “Today, I apologize.”\r\n\r\n“For centuries, the Dutch state and its representatives facilitated, stimulated, preserved, and profited from slavery. For centuries, in the name of the Dutch State, human beings were made into commodities, exploited, and abused,” Rutte said.\r\n\r\nHe said that slavery must be condemned as “crime against humanity.”\r\n\r\nRutte acknowledged that he had experienced a personal “change in thinking” and said that he was wrong to have thought that the Netherlands’ role in slavery was “a thing of the past.”\r\n\r\n“It is true that no one alive now is personally to blame for slavery. But it is also true that the Dutch State, in all its manifestations through history, bears responsibility for the terrible suffering inflicted on enslaved people and their descendants,” he said.\r\n\r\nIn early 2020, the Dutch government returned a stolen ceremonial crown to the Ethiopian government.\r\n\r\nThe country profited greatly from the slave trade in the 17th and 18th centuries; one of the roles of the Dutch West India Co. was to transport slaves from Africa to the Americas. The Dutch didn’t ban slavery in its territories until 1863, though it was illegal in the Netherlands.\r\n\r\nDutch traders are estimated to have shipped more than half a million enslaved Africans to the Americas, Reuters reports. Many went to Brazil and the Caribbean, while a considerable number of Asians were enslaved in the Dutch East Indies, which is modern Indonesia, the agency wrote.\r\n\r\nDutch children are however taught little about the role Netherlands played in the the slave trade, Reuters added.\r\n\r\nConversations about the country’s attitude to race have long-surrounded one of its holiday traditions. The character of “Black Pete” typically sees a white person wearing full blackface, an Afro wig, red lipstick and earrings, and is often part of the Netherlands’ St. Nicholas festivities in December.\r\n\r\nRutte in 2020 said the country his views on “Black Pete” had undergone “major changes” – but he wouldn’t go as far as banning it.', 0, 0, 0, 3, '2022-12-20 07:37:40', '2022-12-20 07:37:40'),
(14, '冷氣團又來了！11縣市越晚越冷　「急凍4天剩6度」直逼寒流', 7, '今（21）日強烈大陸冷氣團南下，北部及東北部氣溫下降，台灣北部及東半部地區雲量增多，並有局部短暫雨，其中基隆北海岸及北部山區降雨較明顯，北台灣上半天濕涼，花東地區也有局部短暫雨，下半天就逐漸轉乾冷，中南部天氣變化則不大，大多為多雲到晴。溫度方面，清晨低溫中部以北及宜蘭為12至15度，南部及花東為16、17度；高溫方面北部及東北部約17至20度，而中南部及花東普遍約21至24度，屏東會再更溫暖一些，但各地傍晚之後將越晚越冷，夜晚中部以北及宜蘭低溫為10至13度，南部及花東也只有14至17度，局部有輻射冷卻影響溫度會再更低一些，請大家務必做好保暖措施。\r\n\r\n中央氣象局清晨6時30分針對11縣市發布低溫特報，各地氣溫下降，傍晚起至明（22）日台中以北、宜蘭、南投地區及金門易有局部10度以下（黃色燈號）氣溫發生，請注意防範。\r\n\r\n【黃色燈號（寒冷）】\r\n新北市、基隆市、台北市、桃園市、新竹市、新竹縣、苗栗縣、台中市、南投縣、宜蘭縣、金門縣有10度以下氣溫發生的機率，請注意。\r\n\r\n\r\n氣象專家吳德榮在專欄中指出，今晨「輻射冷卻」作用，仍帶來偏低氣溫，截至4:53本島各縣市平地最低氣溫前3依序為：新竹（關西鎮）8.6度，苗栗（造橋鄉）10.0度，桃園（大溪區）10.4度；其他地區平地最低氣溫：中部（南投中寮鄉）10.7度，南部（高雄大樹區）10.9度，東部（花蓮壽豐鄉）11.3度。今晨冷空氣前緣接近，中部以北雲量略增。中部有局部微弱降水回波顯現。\r\n \r\n\r\n最新（20日20時）歐洲模式（ECMWF）模擬顯示，今日上午冷空氣前緣快速掠過，中部以北雲量略增、氣溫略降，北台灣偶有局部少量降雨的機率，下午起好轉，其他各地無影響，仍為晴朗穩定的天氣。各地區平地氣溫：北部12至19度，中部12至24度，南部12至26度，東部13至24度。\r\n\r\n最新模式模擬顯示，明日至下週日（22至25日）乾冷空氣持續南下。各地晴朗穩定，氣溫逐日緩降；明日接近「強烈大陸冷氣團」（台北氣象站≦12度）定義、週五至下週日則有觸及「寒流」（台北氣象站≦10度）定義的機率；整體強度雖不如上波，白天各地在陽光下或許不覺得很冷，但入夜後有「強輻射冷卻作用」加持，部分平地最低氣溫仍將降至6至8度，民眾應特別注意保暖，農漁養殖業要防範寒害的發生。\r\n\r\n \r\n\r\n最新模式模擬顯示，下週一（26日）清晨氣溫仍偏低，白天起冷空氣逐漸減弱，氣溫回升，陽光下溫暖舒適、晚微冷。下週二（27日）西半部仍晴朗穩定，白天溫暖舒適、早晚冷、日夜溫差大；東半部水氣增多、偶有局部短暫雨的機率。', 0, 0, 0, 2, '2022-12-21 00:24:18', '2022-12-21 00:24:18'),
(15, '美國會完成撥款法案協商　列對台軍事融資', 1, '美國兩黨國會議員今天凌晨完成協商，並公布高達1.66兆美元的2023財政年度撥款法案。法案授權提供台灣每年最多20億美元軍事融資，但每年提供台灣的最多20億美元無償軍援則未列入年度撥款。\r\n\r\n美國民主、共和兩黨議員今天凌晨就政府年度支出法案達成共識，這份多達4155頁的2023財政年度綜合撥款法案（Omnibus Appropriations Act）主要提供美國行政部門2023財政年度支出資金，其中包括8580億美元的國防支出、美國政府機構的7730億美元資金，以及額外向烏克蘭和北約盟邦提供約449億美元緊急軍事與經濟援助。\r\n\r\n \r\n\r\n根據公布的撥款法案，關於提供台灣外國軍事融資部分指出，若另有授權，可為台灣提供總額不得超過20億美元的直接貸款與擔保貸款。不過，每年提供台灣至多20億美元無償軍援則未列入年度撥款項目。\r\n\r\n美國聯邦眾、參議院分別於8與15日通過2023財政年度國防授權法案（NDAA），法案中授權2023至2027年間透過美國國務院「外國軍事融資」計畫，每年提供台灣至多20億美元無償軍援；同時，法案也授權提供台灣至多20億美元FMF貸款，還款期限12年。法案尚未經美國總統拜登（Joe Biden）簽署。\r\n\r\n國防授權法案在參議院通過後，包括參院民主黨籍外交委員會主席梅南德茲（Bob Menendez）、共和黨籍重量級參議員里契（Jim Risch）以及眾院民主黨籍外交事務委員會主席米克斯（Gregory Meeks）、共和黨籍重量級眾議員麥考爾（Michael McCaul）在內的重量級議員曾發表公開信，呼籲在撥款法案中，至少撥款5億美元軍援給台灣，並授權總統動用「總統撥款權」（presidential drawdown authority）從國防部庫存挪用價值10億美元的防衛物資或服務給台灣。\r\n \r\n\r\n除了提供台灣軍事融資貸款，撥款法案也在美國在台協會（AIT）資金項目編列經費，用於建立台灣學人計畫。根據國防授權法案，台灣學人計畫將提供包含聯邦政府官員等符合資格的美國公民赴台灣交流2年，首年學習中文、當地人文歷史、政治環境、美國與印太區域關係等科目，第2年則到立法院、政府部門或私部門服務。\r\n\r\n為避免政府資金用罄，美國國會預計本週完成撥款法案表決，並送交拜登簽署以立法生效。（中央社）', 0, 0, 0, 2, '2022-12-21 00:24:45', '2022-12-21 00:24:45'),
(16, '耶路撒冷柔道大師賽　楊勇緯摘銅完美封關', 3, '台灣「柔道男神」楊勇緯今天在耶路撒冷柔道大師賽男子60公斤級銅牌戰，成功擊敗喬治亞小將薩達拉薛夫利，除報了阿布達比大滿貫賽落敗的一箭之仇，也替今年賽季劃下句點。\r\n\r\n在以色列舉辦的耶路撒冷柔道大師賽，是柔道巡迴賽等級次高的大賽，積分僅次世界柔道錦標賽，這一戰在14個量級當中，共有12量級的世界第1都有參賽，其中也包括男子60公斤級的楊勇緯。\r\n\r\n \r\n\r\n楊勇緯4強賽與日本名將永山龍樹鏖戰至黃金得分制後落敗，未能晉級金牌戰，落入銅牌戰的他，遭遇喬治亞19歲的薩達拉薛夫利（Giorgi Sardalashvili）。\r\n\r\n薩達拉薛夫利是去年世界青年柔道錦標賽金牌得主，今年世青也拿下銀牌，他和楊勇緯10月才在阿布達比柔道大滿貫賽金牌戰交鋒，當時對手率先取得半勝優勢，楊勇緯在比賽時間終了前未能逆轉戰局，僅獲得銀牌。\r\n\r\n今天兩人再次碰頭戰況依舊激烈，雙方在黃金得分制依舊難分軒輊，最後薩達拉薛夫利因吞下3次指導，被判定失格，也讓楊勇緯以些微之差勝出，拿下本季第3面國際賽銅牌。\r\n \r\n\r\n今年賽季對楊勇緯而言堪稱是大豐收，包括耶路撒冷大師賽在內，他共拿下1座冠軍，另有2面銀牌與3面銅牌，此外他還成功連莊台灣體育運動精英獎年度最佳男子運動員。\r\n\r\n至於「柔道女王」連珍羚今天在女子57公斤級4強賽，不敵法國好手西西克（Sarah-Leonie Cysique），銅牌戰又在黃金得分制輸給同樣效力日本小松會社柔道隊的隊友芳田司，讓她抱憾與獎牌擦身而過。（中央社）', 0, 0, 0, 2, '2022-12-21 00:25:11', '2022-12-21 00:25:11'),
(17, '台鐵工會嗆「春節罷工」抗議公司化　交通部緊急回應', 7, '台鐵預計將從後年起開始「公司化」，交通部16日也公布台鐵公司化子法「執行台灣鐵路股份有限公司營業所需鐵路基礎設施及車輛之建設重置購置維修經費辦法草案」，不料卻被工會質疑程序問題，甚至還指控交通部不採納工會意見就強行公告，揚言要在春節期間罷工。對此，交通部今（20）日晚間緊急做出回應。\r\n \r\n台鐵工會指控，交通部完全不採納工會表達意見，就強行公告法規草案，揚言春節疏運要罷工。台鐵企業工會秘書吳長智今日就直言，既然雙方溝通不良，對方還做出與先前會議背道而馳的決議，「你先不仁，不要怪我們不義」。\r\n\r\n吳長智還指出，在16條子法協商期間，只有11條通過，還有5條沒協商，但交通部現行公告的協商機制，完全忽略員工與工會的協商版本，尤其重置的部分，嚴重影響到未來台鐵的永續經營。吳長智還表示，「今天非常忿忿不滿的情況下，可能在27號擴大常會當中，後續一定會有做一些動作」。\r\n \r\n \r\n對此，交通部今日回應，台鐵公司推動會報相關子法討論，以及台鐵局與工會之溝通，係採平行作業方式進行。\r\n\r\n交通部進一步表示，考量儘速完成子法訂定，相關預告程序及整體作業需依規劃進行，但台鐵工會於台鐵局協商會議中所提意見，已請台鐵局併與預告期間意見整理後提送交通部，交通部將安排台鐵工會就所提意見於台鐵公司推動會報進行討論。\r\n \r\n就工會認有違反原先承諾之誤解，交通部表示，交通部與台鐵局、台鐵工會的立場與目標都是相同的，共同努力台鐵公司化的永續經營及保障員工權益，後續在協商程序加強連繫與溝通，讓工會意見充分表達與討論，縮小雙方認知差距，儘速共同完成台鐵公司化相關子法草案協商之完成。\r\n', 0, 0, 0, 2, '2022-12-21 00:26:32', '2022-12-21 00:26:32'),
(18, '反擊指揮中心說詞！郭台銘晚間再發聲：才問過北醫邱院長', 2, '郭台銘在臉書表示，針對指揮中心發言人莊人祥所說的，台灣還有很多BNT疫苗，郭台銘表示上週才問過北醫邱院長，對方卻說依照郭董媽媽的年紀，需要打的是BNT的次世代疫苗，「但目前台灣應該沒有」。\r\n\r\n接著郭台銘質問，台灣有這麼多的人都是接種BNT疫苗，「如果要追加次世代加強劑，為何一定要增加換疫苗的風險？」更指出，尤其是針對高風險的族群，「為何就是沒辦法繼續選擇BNT?」最後他建議政府，對於保障生命權，在類似疫苗、藥物等採購上，「可以更具多面向、周全考慮。」\r\n \r\n《TVBS》提醒您：\r\n因應新冠肺炎疫情，疾管署持續疫情監測與邊境管制措施，如有疑似症狀，請撥打：1922專線，或 0800-001922。', 0, 0, 0, 2, '2022-12-21 00:27:00', '2022-12-21 00:27:00'),
(19, '輸不起？法媒爆「梅西延長賽進球無效」證據　遭官方打臉', 1, '2022卡達世界盃足球賽在19日完美落幕，阿根廷最終在PK大戰以4：2擊敗法國，拿下睽違36年的大力神盃，不過法國體育報《隊報》卻提出證據指出阿根廷在延長賽下半場有球員違規，梅西踢進的第三分應被判為無效球；對此，國際足球協會理事會（IFAB）回應沒有違規，直接打臉《隊報》。\r\n \r\n阿根廷與法國在90分鐘正規賽結束時以2：2平手進入延長賽，在下半場第108分鐘，阿根廷馬丁內斯（Lautaro Martínez）射門遭擋下，隨後梅西（Lionel Messi）再迅速補射破網，將比數超前為3比2；《隊報》表示，VAR（Video assistant referees，影像助理裁判系統）顯示當球通過底線之前，阿根廷板凳區至少有2名球員跨過邊線闖入球場。\r\n\r\n根據《足球競賽規則》第3條第9款規定，進球後在比賽重新開始之前，主審若發現場上有多出來的人員，包含進球球隊的球員、替補球員、被換下的球員、被罰下場的球員或是球隊官員，那就必須判進球無效，同時在多出人員的位置以自由球開球重新開始比賽。\r\n\r\n此事隨即引起外界熱議，畢竟世足史上也從未發生過賽後改判的前例，為了釐清爭議，美媒《The Athletic》向負責討論和決定修改足球規則的「國際足球協會理事會」求證，而他們的回應是「這兩名跑入場內的替補球員並未干擾比賽，所以不會影響比賽結果」。\r\n \r\n \r\n國際足球協會理事會也特別提到，「在一般情況下，比賽場中多出一個人，就像多出一顆球一樣，通常只有在對比賽、對手或比賽官員造成干擾時，才會被視為問題。」', 0, 0, 0, 2, '2022-12-21 00:28:27', '2022-12-21 00:28:27'),
(20, '財神冬至來敲門！4星座「越冷越旺」　抓準時機爆賺一週', 7, '上一波寒流才剛過，馬上又有強烈冷氣團接力來襲，隨著冬至腳步接近，有哪些星座越冷越會發呢？星座專家小孟老師就在臉書上分享4大星座冬至前後是財運最旺的時刻，不論正財偏財趕快一次收起來，把握良機來大賺一波。\r\n\r\n處女座：\r\n小孟老師提到處女座冬至起正財運愈來愈好，而且正財能量也愈來愈順，慢慢會有多餘的資金可多做一些事，若想要用不同方式來增加自己的財富，也可以考慮一些新興市場基金或科技類股，來讓自己的金錢資源加分，只要做每個月固定投入的部份，不用給自己太大的壓力要去追這個市場報酬。\r\n\r\n\r\n天秤座：\r\n天秤座則是在冬至迎來正財大旺的一週，小孟老師建議可以開始把一些多的資金拿來投資，若是已經有很熟悉的投資模式，而且也一直是正向的結果，請保持這樣的好習慣繼續經營。\r\n\r\n \r\n雙子座：\r\n對於雙子座而言，冬至是改變新的理財方式的好時機，不要擔心會損失太多，小孟老師指出可以用小額方式實驗有興趣的項目，只要願意開始，慢慢就會找到適合的投資理財的方式。\r\n\r\n\r\n天蠍座：\r\n冬至對於天蠍座來說，則是有助於一些投資理財的相位，可以聽一些專業的理財專家用什麼方法去判斷市場的情況，這樣會有更精明的思考去做對你有利的標的物，不過小孟老師也強調，天蠍座物慾特別強烈，建議有多的資金除了投資之外，也適合學習投資理財，才能讓荷包更加分。', 0, 0, 0, 2, '2022-12-21 00:29:29', '2022-12-21 00:29:29'),
(21, '國小午餐食安連爆！　炸雞見螺絲、炒飯現細繩', 7, '不只力行國小，文山區的溪口國小也發生「營養午餐」食安出包！一週內，先是在春川炒雞裡發現螺絲釘，隔幾天又在什錦炒飯發現尼龍細繩，校方立刻召開學童午餐委員會，對業者記點開罰。北市議員也批評，教育局的螺絲釘是不是鬆了？\r\n\r\n就是這個，撈起炸雞塊瀝油的大杓子是罪魁禍首！跟正常杓子比一比，掉了一顆螺絲釘，出現在11月25日，北市溪口國小營養午餐的春川炒雞裡，被眼尖的老師發現，後續追查才知道是來自瀝油杓；但沒隔幾天，細細的綠色尼龍繩，12月1日又出現在營養午餐，這次是小朋友在什錦炒飯裡發現。一週內出包兩次，校方立刻開學童午餐委員會，記業者6點、罰1萬2千元。\r\n\r\n溪口國小校長劉碧賢：「廠商在近期內，2個月內不能再有任何異物產生，如果有這樣的異物產生的話，我們就會用最高的罰則，來罰這個廠商。」\r\n\r\n同一天，兩所學校都爆出營養午餐出包，立行國小的廚餘湯還被喝下肚，也讓議員質疑，北市教育局的螺絲是不是鬆了？\r\n\r\n台北市議員王欣儀：「顯然現在在學童的營養午餐現場，加工流程出現重大瑕疵，讓家長非常不放心，柯市長還在任期當中，卻已經自行卸任了嗎？」\r\n\r\n事實上，班導師有營養午餐指導費，因此部分學校會要求老師協助把關；另一方面，營養午餐供應是由部分學校設置中央廚房，供應週邊衛星學校，因此疫情前各校會派員監廚，通常是家長或營養師輪班。以溪口國校為例，已經要求恢復因為疫情暫停的家長監廚，另外，業者在事發後也全面更換廚具，並且會每週檢視、把關。\r\n\r\n大佳國小校長李鍾慧(非當事國小)：「餐桶送回來之後阿姨會清點，然後幾年幾班的怎麼還沒回來，他們就會請學務處廣播。」\r\n\r\n大佳國小是北市少數有廚房、自給自足的學校，餐桶由清潔、清點自然方便！針對廚餘湯事件，團膳業者透露正常流程，營養午餐吃完，12點半就會收餐桶，廠商必須清點數量；如果有漏收或是學生晚吃要晚收，下午兩點半會收第二次，這回就是因為沒落實當天清點回收，接連出錯，才讓學童喝下肚。\r\n', 0, 0, 0, 2, '2022-12-21 00:30:15', '2022-12-21 00:30:15'),
(22, '運動夢斷　13歲童疑打BNT「無法久站、昏睡18hr」', 7, '有民眾反映，家中13歲孩子疑似在去年打了BNT疫苗之後，開始出現心跳過快、血壓低，甚至在發病時最常昏睡18小時，導致生活作息.和喜愛的運動通通無法再做，後續做心導管治療，發現房室節一條迴路異常，醫師說不排除是打疫苗後刺激導致，其他醫師則認為，疫苗導致疾病有可能，也不排除是打疫苗後，導致原本就存在的問題惡化，詳細病況還要釐清。\r\n\r\n站上板子帥氣往水裡翻滾，或是雙手緊抓繩索，小心翼翼攀爬，13歲國二生也是運動員，各種體力活都很行，只是。\r\n\r\n現在他卻得定期回醫院診療，先前還躺在病床上，全身插滿管子或是只要ㄧ站起來，手腳都變紫黑，媽媽說這一切轉變，疑似是從去年10月打了BNT疫苗之後，開始出現的。\r\n\r\n13歲童媽媽林小姐：「如果不打這個疫苗，他不會出事，他原本是橄欖球校隊，(哽咽)這是第二年了，他怎麼去跟人家比，他沒有保送資格了，怎麼跟人家比。」\r\n\r\n他說孩子去年打完BNT後，隔天開始出現心跳過快，短暫視覺消失血壓也過低，甚至發病期間，就會進入長時間昏睡，後續看了多家醫院，也歷經兩次心導管治療和電燒，發現房室節一條迴路異常，才會心跳忽快忽慢。\r\n\r\n13歲童媽媽林小姐：「本身就有這個神經，原本沒有作用，可是被刺激了之後，激發了就可能說，疫苗是這個刺激之類的。」\r\n\r\n因為始終找不出原因，症狀又指向心臟竇氏節損壞，接下來可能得一輩子裝心臟節律器，反應給桃園市衛生局和1922也沒結果，不過後續桃園市衛生局說明，是民眾自行上網登錄VICP，已經協助申請寄送，而1922則說目前正在調查中，其他心臟科醫師則認為，一般來說打完BNT疫苗後，副作用很可能引起，心肌炎或心臟衰竭等問題，竇房結功能失調，也有可能是心肌炎、先天或其他疾病造成。\r\n\r\n心臟內科醫師林謂文：「異常的放電，就會造成心室跳比較快，疫苗產生一個心律不整，或產生心肌炎或心臟衰竭，其實時有所聞。」\r\n\r\n換句話說，醫師認為有可能是疫苗導致疾病發生，也可能是疫苗讓原本就存在問題惡化，確切狀況得再釐清，但媽媽和孩子，只希望盡快恢復健康過正常生活。\r\n尚未證實與疫苗施打相關。', 0, 0, 0, 2, '2022-12-21 00:30:45', '2022-12-21 00:30:45'),
(23, '破冰契機？與陸建交50週年外長會　澳任「中國通」駐美', 1, '澳洲最新公布明年駐美大使，將委任有「中國通」之稱的、前總理陸克文，顯示在與美國合作上，比以往更重視大陸挑戰。同一天鬆口在與大陸建交50週年，派外長訪問並與大陸外交部長見面，睽違四年外長訪中、透露破冰契機。近期澳洲的外交路線也令外界擔心，是不是有可能因為經濟利益，開始朝北京靠攏。\r\n\r\n澳洲總理艾班尼斯：「陸克文將被任命，成為澳洲駐美大使。」\r\n\r\n澳洲公布，最新駐美大使由被視為『中國通』的前總理陸克文擔任，記者當場提出質疑。\r\n\r\n澳洲記者vs.澳洲總理艾班尼斯：「(你的同事將陸克文形容為瘋子)，(這是你的政府在華府需要的人嗎？)，陸克文的指派是非常傑出的。」\r\n\r\n \r\n正逢中國大陸擴大區域挑戰之際，陸克文居中協調角色格外重要，不過近期澳洲的種種外交舉措引發關注。\r\n\r\n大陸外交部發言人毛寧：「澳大利亞外長黃英賢，將於12月20日至12月21日對中國進行訪問，加強對話拓展合作。」\r\n\r\n派外長黃英賢在與中國大陸建交50週年出訪，將會見中國大陸外交部長王毅，不過日前黃英賢才點名區域挑戰重重。\r\n\r\n澳洲外交部長黃英賢：「今天對話的進行了解到，我們生活的時間點，區域充滿很多挑戰。」\r\n\r\n近四年來澳洲首派外長赴中，外界揣測難道是中澳外交破冰契機，不過從G20後澳洲和大陸關係確實有些轉變。」\r\n\r\nCNA記者：「G20習近平和澳洲領袖坐下來談，顯現出兩國降到冰點的關係一大轉折。」\r\n\r\n或許也是為澳洲總理艾班尼斯明年訪中鋪路，不過他澄清，派外長到大陸不代表對北京低頭，因為雙方長期分歧，依舊沒有解決。\r\n\r\n \r\nCNA記者：「北京之前對澳洲商品，祭出貿易制裁打臉澳洲，讓雙邊的關係惡化。」\r\n\r\n澳洲聲援，曾擔任大陸官媒主播澳洲籍華裔記者成蕾，因為她被北京當局從2020年拘捕至今，未獲釋放。\r\n\r\n另外澳洲維吾爾的婦女協會也不樂見澳洲與中國大陸交好，種種跡象澳洲是不是有可能為了經濟利益，對北京態度放軟，都令外界感到憂心。', 0, 0, 0, 2, '2022-12-21 00:31:08', '2022-12-21 00:31:08'),
(24, '地牛大翻身！北加州規模6.4強震　超市、住家倒一片', 1, '美國地質調查所（USGS）表示，北加州外海今晨發生規模6.4的強震，並未發布海嘯警報。\r\n\r\n地質調查所表示，這起地震震央在加州西北部港市尤利卡（Eureka）西南方約40公里的海底，震源深度16.1公里。（中央社）', 0, 0, 0, 2, '2022-12-21 00:31:20', '2022-12-21 00:31:20'),
(25, '世足／梅西「黑袍加身」引爭議　西方媒體轟：卡達太自私', 1, '2022年卡達世足賽於18日落幕，在經過120分鐘的激戰後，阿根廷於PK戰以4比2扳倒法國，睽違36年奪冠，也讓名將梅西拿下夢寐以求的大力神盃。在賽後的頒獎典禮上，卡達國王為梅西披上名為「畢希」（bisht）的黑袍，象徵讓他加冕成史上最偉大球員。然而這種舉動卻引發西方媒體不滿，痛批卡達的舉動太自私。\r\n \r\n綜合外媒報導，35歲的梅西在頒獎典禮上「黑袍加身」後，慢慢走向隊友，舉起金色的大力神盃。然而，他的黑袍卻遮住大半的阿根廷藍白球衣。目前在《BBC》擔任球評的前英格蘭國腳萊尼克爾（Gary Winston Lineker），不滿地表示「黑袍都把球衣遮住了，糟蹋了這麼美好的畫面，讓人遺憾」。\r\n\r\n據報導，就連在現場拍攝的大批體育記者，看到卡達國王為梅西披上黑袍，都感到一頭霧水，怒轟「你在開玩笑嗎？」、「我的天啊」、「怎麼會這樣？」，甚至還有不少人爆粗口。報導指出，梅西舉起大力神盃的畫面，無疑是將永遠留存在足球史上的寶貴瞬間，眾多球迷都希望他能穿著阿根廷球衣，留下這一幕。\r\n \r\n《每日郵報》則表示，卡達讓黑袍遮住梅西的10號球衣，這樣的行為相當自私，強調「這是為了選手的瞬間，不是東道主」。《ESPN》的記者歐格登（Mark Ogden）也痛批，梅西花了整個職涯等待舉起大力神盃，當他終於圓夢時，卻被迫穿上宛如理髮斗篷的披肩，毀了所有的照片。\r\n這些言論也引發網友激烈辯論，許多人痛批西方媒體根本是種族歧視。土耳其學者馬魯夫（Abdallah Marouf）也在推特表示，就卡達文化來說，讓人穿上「畢希」象徵禮貌和讚賞，因此卡達國王為梅西披上黑袍，代表對梅西的高度尊敬，他怒轟「無知的西方媒體別老是發牢騷，應該去學習別人的文化」。\r\n', 0, 102, 0, 2, '2022-12-21 00:37:35', '2022-12-21 00:37:35'),
(26, '吃2色湯圓旺5年！冬至「4類人加吃這味」破除太歲卡關', 7, '本週四（12月22日）就是24節氣中的「冬至」，將是北半球一年之中黑夜最長、白天最短的日子，古人相傳冬至後白天變長、夜晚變短，為陽氣初始的狀態，因此將冬至看得比過年還重要。民俗專家小孟老師特別分享了冬至習俗8大須知，當中特別提到吃2顏色的湯圓將一路旺5年。\r\n\r\n冬至8大習俗：\r\n \r\n1.白天祭拜神明、祖先、地基主\r\n為了感謝神靈過去一年的辛苦護持，祈求來年再多加保佑，冬至這天白天會祭拜神明、祖先和地基主，需要的準備如下：\r\n \r\n \r\n供品：\r\n三牲、四果、湯圓3碗、發粿、茶或酒3杯。\r\n \r\n紙錢：\r\n拜神明-使用刈金、壽金、地公金。\r\n拜祖先-使用刈金或銀紙都可。\r\n \r\n2.吃湯圓\r\n冬至吃湯圓代表圓滿如意，單身者可旺桃花，求財者則可望出現財富，人際上會人事滿滿，家庭則能和樂幸福美滿。小孟老師建議紅、白湯圓一起吃，可以陰陽調合旺5年。此外，民間有「吃了湯圓大1歲」之說，因此讓小孩吃湯圓，也等於小孩大了1歲，有「添歲」意涵。\r\n\r\n3.吃水餃\r\n \r\n冬至吃水餃可以旺財富，因為餃子象徵財寶，吃下後能讓你財氣飽滿、招財進寶。\r\n \r\n4.吃豬腳麵線\r\n冬至吃豬腳麵線能去穢氣、煞氣，還能延壽破除太歲卡關，尤其今年屬虎、猴、蛇、豬的人運勢較差，特別要吃。\r\n \r\n5.吃年糕\r\n冬至後代表陽氣的開始，也象徵新氣息，吃年糕吃的甜甜的好過冬，也代表又一年的開始。\r\n \r\n6.送鞋\r\n唐朝《中華古今注》記：「漢有繡鴛鴦履，昭帝令冬至日上舅、姑。」小孟老師指出，古人在冬至時，晚輩會買鞋子送給舅舅與姑姑，演變到現今，成了舅舅與姑姑送鞋給外甥、侄兒，代表幫晚輩添衣也如同添歲。\r\n\r\n7.進補\r\n冬至黑夜較長也較冷，因此適合冬令進補，古人會在這一天燉羊肉或煮麻油雞湯來喝。\r\n \r\n8.吃餛飩\r\n南宋時，民間有「冬至餛飩夏至麵」的俗諺，代表冬至為白天較短、夜較長，隔天恢復正常，即白天長、夜晚短，有「混沌初開」的意味，如同盤古開天闢地祝賀大地初始，也代表惡運結束，好運將來。\r\n\r\n*民俗說法僅供參考，不代表本新聞網立場*', 0, 101, 0, 2, '2022-12-21 00:41:23', '2022-12-21 00:41:23'),
(27, 'Elon Musk says he will step down as Twitter CEO — once he finds a replacement', 5, ' \r\nTwitter owner Elon Musk confirmed Tuesday evening he will step down as the company’s CEO, but only when he identifies a successor, directly addressing for the first time a Twitter poll he created this week in which millions of users voted for his ouster.\r\n\r\nIn a tweet, Musk said he would resign “as soon as I find someone foolish enough to take the job!”\r\n\r\nHe added that following his resignation as CEO, Musk would “run the software & servers teams” at Twitter, indicating he may continue to exercise significant influence on the company’s decision-making.\r\n\r\nThe announcement comes after more than a day of silence about the poll following its outcome. On Monday, after more than 17 million users had voted — 57.5% of whom said Musk should resign — the billionaire executive addressed the results only indirectly. He suggested that future Twitter polls could be restricted to paid users of Twitter Blue, the company’s subscription service.\r\n\r\nMusk’s poll asking users whether he should resign as CEO came after a massive backlash to Twitter’s abrupt suspension of several journalists who cover him, as well as Twitter’s decision to ban, and then un-ban, links to other social media platforms including Facebook, Instagram and Mastodon, a fast-growing Twitter rival that has octupled in size since October.\r\n\r\nMusk’s brief tenure as CEO has resulted in sweeping, occasionally erratic shifts at one of the world’s most influential social media companies.\r\n\r\nUnder his leadership, Twitter has laid off the majority of its staff, alienated major advertisers, welcomed former President Donald Trump back to the platform after his suspension in the wake of the Jan. 6 Capitol riots and released internal communications to journalists about Twitter’s operations before Musk took ownership of the company.\r\n\r\nMusk forced remaining employees to take a pledge to become “extremely hardcore” in their work, and stopped enforcing Twitter’s policy against Covid-19 misinformation.\r\n\r\nOver a matter of days, Twitter launched, and then was forced to un-launch, a paid verification feature that was instantly manipulated by satirical accounts impersonating verified major brands, athletes and other public figures on the platform.\r\n\r\nMusk’s penchant for making major product changes based on little more than informal Twitter polls has highlighted his ad hoc and improvisational management style. But that approach has attracted growing criticism from many Twitter users. Last week, Twitter suspended several journalists who had reported on Musk’s permanent ban of an account that tracked his jet.\r\n\r\nGrowing criticism of Musk culminated in Sunday’s poll that served as an effective, if unscientific, referendum on Musk’s handling of the company since he closed his purchase of Twitter in late October.', 0, 0, 0, 1, '2022-12-21 06:40:55', '2022-12-21 06:40:55'),
(28, 'Russia’s militarization of the Arctic shows no sign of slowing down', 1, ' \r\nRussia has continued expanding its military bases in the Arctic region despite significant losses in its war on Ukraine, according to a new series of satellite images obtained by CNN.\r\n\r\nNATO Secretary General Jens Stoltenberg also told CNN in an exclusive interview on Friday there is now “a significant Russian military build-up in the high north,” with recent tensions causing the alliance to “double its presence” in response.\r\n\r\nThe findings also come as a senior Western intelligence official told CNN Russia has withdrawn as much as three quarters of its land forces from the High North region near the Arctic, sending them to bolster its faltering invasion of its neighbor, Ukraine.\r\n\r\nThe satellite pictures, obtained by CNN from Maxar Technologies, show a series of Russian radar bases and runways undergoing improvements over the past year. The images do not show dramatic development, but rather the continued progress of fortifying and expanding an area analysts say is of vital importance to Russia’s defensive strategy, at a time of great strain on Moscow’s resources.\r\n\r\nAccording to Maxar, the images demonstrate continued work on the radar stations at the Olenegorsk site, on the Kola Peninsula in northwest Russia, and at Vorkuta, just north of the Arctic circle. They also appear to show work moving ahead to complete one of five Rezonans-N radar systems at Ostrovnoy, a site located by the Barents Sea, near Norway and Finland in Russia’s west. The Rezonans-N are claimed by Russian officials to be able to detect stealth aircraft and objects.\r\n\r\nThree new radomes, the weatherproof enclosures used to protect radar antennas, were completed this year at the Tiksi air defense site, in the far northeast, according to Maxar’s images and analysis. There are also improvements to a runway and parking apron at Nagurskoye air base – Russia’s northernmost military facility – and runway improvements at ‘Temp’ air base, on Kotelny Island, in the northeast of the country.\r\n\r\nRussia has been bolstering its defenses in the far north for years, refurbishing a series of old Soviet bases with modern designs and equipment.\r\n\r\nIts Arctic region has long been key to its oil and gas sector, but also to its nuclear defenses, with a significant proportion of its sophisticated nuclear weaponry and submarine facilities in that area.\r\n\r\n“That deterrence has always been ready,” said a senior Western intelligence official. “It’s never down to low readiness; it’s a high status all the time,” the official said.\r\n\r\nAt the start of the war with Ukraine in February some submarines were repositioned to signal “this is a real capability,” the official added, but they soon returned to standard high readiness.\r\n\r\nNATO chief Stoltenberg reasoned: “The shortest way from Russia to North America is over the Arctic North Pole. So the strategic importance of these areas has not changed because of the war in Ukraine.”\r\n\r\n“We see Russia reopening old Soviet bases, military sites,” he said, noting that it is also “testing novel weapons in the Arctic and the high north.”\r\n\r\nThe war in Ukraine has led to a major adjustment in Russia’s troop strengths in the region, the senior Western intelligence official said. “They’re down to somewhere between 20 and 25% of their original land forces up there. But then the naval component is totally untouched by the war,” they noted.\r\n\r\nFollowing strikes earlier this month on two key airfields deep inside Russia in Ryazan and Saratov, Russian military jets and bombers have been dispersed across the country and the Arctic north, the official added. Moscow has blamed the strikes on Ukraine, while Kyiv has offered no comment on the explosions at the Russian bases.\r\n\r\nThe Arctic is also vital to Russia because its melting ice is rapidly opening up new shipping routes from Asia’s southeast to Europe, using a much shorter path along the Russian coast.\r\n\r\nThe Northern Sea Route could cut around two weeks off the current journey time across the Suez Canal. Russian state TV has reveled in the launch of several atomic-powered icebreakers, designed to boost Russian influence and power in the region. Critics say Moscow is seeking to exert outsized control over a route that should be equally accessible to all nations.\r\n\r\nSpeaking via videolink at the launch of a new nuclear-powered icebreaker in St. Petersburg last month (November 22), Russian President Vladimir Putin said the development of the “most important” Northern Sea Route “will allow Russia to fully reveal its export potential and to establish effective logistics routes, including to southeast Asia.”\r\n\r\nAt the same time, the war in Ukraine has boosted NATO’s presence in the region. Once Finland and Sweden join the block, as is widely expected, seven out of eight Arctic states will be NATO members.\r\n\r\nThe alliance has also ramped up its military clout in the region. In August, Norway released the first images of US B52 bombers flying over its territory escorted by Norwegian F35 jets and 2 Swedish JAS Gripen.\r\n\r\nIncreased signaling by NATO included a recent test of the new weapons system, the Rapid Dragon Palletized Munition Deployment, involving a complex drop by US special forces of a normal supply pallet from the back of a C130 cargo craft.\r\n\r\nThe pallet contains a cruise missile, which launches as the pallet falls by parachute. The display was designed to show the United States can launch these powerful weapons systems from the back of an ordinary cargo plane. The test took place in Norway, not far from the Russian border.\r\n\r\nNATO has also become increasingly concerned about the potential sabotage of Norway’s oil and gas infrastructure. Now Russian energy is subject to sanctions, Norway’s natural gas makes up more than 20% of Europe’s supply, according to some analysis.\r\n\r\n“Since the sabotage in the Baltic Sea,” Stoltenberg said, “we have doubled our presence, with ships, with submarines, with maritime patrol aircrafts in the Baltic and North Seas, partly to monitor, to have better situational awareness, but also to send a message of deterrence and readiness to protect this critical infrastructure.” The NATO head was referring to the blasts at the Nord Stream pipeline in September, which were caused by an act of sabotage, according to Swedish prosecutors, after evidence of explosives was discovered at the sites.\r\n\r\nThe senior intelligence official said, however, that a recent Norwegian review of its infrastructure security concluded no major attempts to attack it had occurred and that “the oil infrastructure is well secured now.”', 0, 0, 0, 1, '2022-12-21 06:42:31', '2022-12-21 06:42:31');

-- --------------------------------------------------------

--
-- 資料表結構 `news_message`
--

CREATE TABLE `news_message` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `op` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `heart` int(8) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `news_type`
--

CREATE TABLE `news_type` (
  `id` int(4) UNSIGNED NOT NULL,
  `type` varchar(16) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `total` int(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `news_type`
--

INSERT INTO `news_type` (`id`, `type`, `total`) VALUES
(1, 'World', 13),
(2, 'Taiwan', 1),
(3, 'Sport', 3),
(4, 'Entertainment', 1),
(5, 'Business', 2),
(6, 'Sience & Health', 1),
(7, 'Life', 7),
(99, 'Other', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `survey_options`
--

CREATE TABLE `survey_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(8) UNSIGNED NOT NULL,
  `opt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vote` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `survey_options`
--

INSERT INTO `survey_options` (`id`, `subject_id`, `opt`, `vote`, `created_at`, `updated_at`) VALUES
(1, 1, '克羅埃西亞', 3, '2022-12-17 15:53:01', '2022-12-21 08:06:22'),
(2, 1, '摩洛哥', 0, '2022-12-17 15:53:01', '2022-12-17 15:53:01'),
(3, 2, '阿根廷', 1, '2022-12-17 15:55:53', '2022-12-21 08:05:52'),
(4, 2, '法國', 1, '2022-12-17 15:55:53', '2022-12-18 06:23:36'),
(5, 3, 'test 1', 1, '2022-12-18 01:39:32', '2022-12-21 08:06:18'),
(6, 3, 'test 2', 0, '2022-12-18 01:39:32', '2022-12-18 01:39:32'),
(7, 3, 'test 3', 0, '2022-12-18 01:39:32', '2022-12-18 01:39:32'),
(8, 3, 'test 1', 0, '2022-12-18 01:40:01', '2022-12-18 01:40:01'),
(9, 3, 'test 2', 0, '2022-12-18 01:40:01', '2022-12-18 01:40:01'),
(10, 3, 'test 3', 0, '2022-12-18 01:40:01', '2022-12-18 01:40:01'),
(11, 5, 'test 1', 0, '2022-12-18 01:54:45', '2022-12-18 01:54:45'),
(12, 5, 'test 2', 0, '2022-12-18 01:54:45', '2022-12-18 01:54:45'),
(13, 5, 'test 3', 2, '2022-12-18 01:54:45', '2022-12-21 08:05:59'),
(14, 5, 'test 4', 0, '2022-12-18 01:54:45', '2022-12-18 01:54:45'),
(15, 6, 'test 1', 1, '2022-12-18 01:54:59', '2022-12-21 08:05:56'),
(16, 6, 'test 2', 0, '2022-12-18 01:54:59', '2022-12-18 01:54:59'),
(17, 7, '33', 0, '2022-12-18 01:55:08', '2022-12-18 01:55:08'),
(18, 7, 'test 1', 1, '2022-12-18 01:55:08', '2022-12-21 08:05:28'),
(19, 8, 'test 1', 2, '2022-12-18 02:02:23', '2022-12-21 08:06:15'),
(20, 8, 'test 1', 0, '2022-12-18 02:02:23', '2022-12-18 02:02:23'),
(21, 10, '11', 0, '2022-12-22 07:42:15', '2022-12-22 07:42:15'),
(22, 10, '22', 0, '2022-12-22 07:42:15', '2022-12-22 07:42:15'),
(23, 10, '33', 0, '2022-12-22 07:42:15', '2022-12-22 07:42:15'),
(24, 10, '11', 0, '2022-12-22 07:42:31', '2022-12-22 07:42:31'),
(25, 10, '22', 0, '2022-12-22 07:42:31', '2022-12-22 07:42:31'),
(26, 10, '33', 0, '2022-12-22 07:42:31', '2022-12-22 07:42:31'),
(27, 10, '44', 0, '2022-12-22 07:42:31', '2022-12-22 07:42:31'),
(28, 10, '55', 0, '2022-12-22 07:42:31', '2022-12-22 07:42:31'),
(29, 10, '66', 0, '2022-12-22 07:42:31', '2022-12-22 07:42:31'),
(30, 12, '66', 0, '2022-12-22 07:50:35', '2022-12-22 07:50:35'),
(31, 12, '55', 0, '2022-12-22 07:50:35', '2022-12-22 07:50:35'),
(32, 12, '555', 0, '2022-12-22 07:50:35', '2022-12-22 07:50:35'),
(33, 12, '666', 0, '2022-12-22 07:50:35', '2022-12-22 07:50:35');

-- --------------------------------------------------------

--
-- 資料表結構 `survey_subject`
--

CREATE TABLE `survey_subject` (
  `id` int(8) UNSIGNED NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `total` int(10) UNSIGNED DEFAULT 0,
  `top` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(8) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `survey_subject`
--

INSERT INTO `survey_subject` (`id`, `subject`, `type`, `start_time`, `end_time`, `total`, `top`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2022世足誰會季軍?', 0, '2022-12-17 15:52:22', '2022-12-17 16:00:00', 18, 0, 3, '2022-12-17 15:53:01', '2022-12-21 08:06:22'),
(2, '2022世足誰會冠軍?', 0, '2022-12-17 15:55:12', '2022-12-24 15:55:12', 22, 1, 1, '2022-12-17 15:55:53', '2022-12-21 08:05:52'),
(3, 'Top Test 1', 0, '2022-12-19 01:39:00', '2022-12-20 01:39:00', 31, 0, 3, '2022-12-18 01:39:32', '2022-12-21 08:06:18'),
(4, 'Top Test 2', 0, '2022-12-19 01:39:00', '2022-12-20 01:39:00', 5, 0, 1, '2022-12-18 01:40:01', '2022-12-18 02:13:36'),
(5, 'Limit Test ', 0, '2022-12-22 01:54:00', '2022-12-25 01:54:00', 4, 0, 2, '2022-12-18 01:54:45', '2022-12-21 08:05:59'),
(6, 'Limit Test 2', 0, '2022-12-27 15:52:22', '2022-12-30 15:52:22', 16, 0, 2, '2022-12-18 01:54:59', '2022-12-21 08:05:56'),
(7, 'Limit Test 3', 0, '2022-12-22 02:33:08', '2022-12-23 16:00:00', 27, 0, 2, '2022-12-18 01:55:08', '2022-12-21 08:05:28'),
(8, 'User_id Test', 0, '2022-12-18 02:01:02', '2022-12-25 02:01:02', 102, 0, 1, '2022-12-18 02:02:23', '2022-12-21 08:06:15'),
(9, '題目', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, '2022-12-18 12:14:51', '2022-12-18 12:14:51'),
(10, '時間bug 測試', 0, '2022-12-22 07:42:04', '2022-12-29 07:42:04', 0, 0, 1, '2022-12-22 07:42:15', '2022-12-22 07:42:15'),
(11, '時間bug 測試', 0, '2022-12-22 07:42:17', '2022-12-29 07:42:17', 0, 0, 1, '2022-12-22 07:42:31', '2022-12-22 07:42:31'),
(12, '時間bug 測試2', 0, '2022-12-30 07:49:46', '2022-12-30 17:18:46', 0, 0, 1, '2022-12-22 07:50:35', '2022-12-22 07:50:35');

-- --------------------------------------------------------

--
-- 資料表結構 `survey_users`
--

CREATE TABLE `survey_users` (
  `id` int(8) UNSIGNED NOT NULL,
  `user_id` int(8) UNSIGNED NOT NULL,
  `subject_id` int(8) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `survey_users`
--

INSERT INTO `survey_users` (`id`, `user_id`, `subject_id`, `option_id`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 1, '2022-12-18 06:35:03', '2022-12-18 06:35:03'),
(2, 1, 1, 1, '2022-12-18 06:36:05', '2022-12-18 06:36:05'),
(3, 1, 8, 19, '2022-12-21 08:05:24', '2022-12-21 08:05:24'),
(4, 1, 7, 18, '2022-12-21 08:05:28', '2022-12-21 08:05:28'),
(5, 1, 0, 0, '2022-12-21 08:05:31', '2022-12-21 08:05:31'),
(6, 1, 5, 13, '2022-12-21 08:05:37', '2022-12-21 08:05:37'),
(7, 2, 2, 3, '2022-12-21 08:05:52', '2022-12-21 08:05:52'),
(8, 2, 6, 15, '2022-12-21 08:05:56', '2022-12-21 08:05:56'),
(9, 2, 5, 13, '2022-12-21 08:05:59', '2022-12-21 08:05:59'),
(10, 3, 8, 19, '2022-12-21 08:06:15', '2022-12-21 08:06:15'),
(11, 3, 3, 5, '2022-12-21 08:06:18', '2022-12-21 08:06:18'),
(12, 3, 1, 1, '2022-12-21 08:06:22', '2022-12-21 08:06:22');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(8) NOT NULL,
  `acc` varchar(16) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pw` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `login_times` int(8) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `acc`, `pw`, `name`, `phone`, `email`, `birthday`, `login_times`, `created_at`, `updated_at`) VALUES
(1, 'luna', '1027', 'luna', '0000', 'timorstar0310@gmail.com', '1990-10-27', 0, '2022-12-14 14:34:58', '2022-12-14 14:34:58'),
(2, 'john', '1111', 'John', '0000', 'john@gmail.com', '2022-12-14', 0, '2022-12-14 14:36:16', '2022-12-14 15:57:00'),
(3, 'mayy', '2222', 'Mary', '0000', 'mary@gmail.com', '2022-12-14', 0, '2022-12-14 14:41:40', '2022-12-14 15:57:08');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `news_message`
--
ALTER TABLE `news_message`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `news_type`
--
ALTER TABLE `news_type`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `survey_options`
--
ALTER TABLE `survey_options`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `survey_subject`
--
ALTER TABLE `survey_subject`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `survey_users`
--
ALTER TABLE `survey_users`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news_message`
--
ALTER TABLE `news_message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news_type`
--
ALTER TABLE `news_type`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `survey_options`
--
ALTER TABLE `survey_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `survey_subject`
--
ALTER TABLE `survey_subject`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `survey_users`
--
ALTER TABLE `survey_users`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
