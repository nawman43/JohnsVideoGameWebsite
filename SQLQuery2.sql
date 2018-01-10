CREATE TABLE categories
(
	category_id		int				identity(1,1),
	name	varchar(100)	not null,

	constraint pk_categories primary key (category_id)
);

CREATE TABLE products
(
	product_id			int				identity(1,1),
	product		varchar(255)	not null,
	price		decimal			not null,
	description	varchar(max)	not null,
	category_id	int,
	image		varchar(255)	not null,
	video		varchar(255)	not null,

	constraint pk_products primary key (product_id),
	constraint fk_products_categories foreign key (category_id) references categories(category_id)
);

insert into categories (name) VALUES ('RPG');
insert into categories (name) VALUES ('Shooter');
insert into categories (name) VALUES ('Adventure');
insert into categories (name) VALUES ('Fighting');
insert into categories (name) VALUES ('Racing/Sports');


insert into products (product, price, description, category_id, image, video) values ('The Witcher 3', '39.99', 'A story-driven, next-generation open world role-playing game, set in a visually stunning fantasy universe, full of meaningful choices and impactful consequences. You play as Geralt of Rivia, a monster hunter tasked with finding a child from an ancient prophecy.', 1, 'https://upload.wikimedia.org/wikipedia/en/0/0c/Witcher_3_cover_art.jpg', 'https://www.youtube.com/embed/JrwMAHVDbuU');
insert into products (product, price, description, category_id, image, video) values ('Persona 5', '59.99', 'Persona 5 takes place in Tokyo, and follows the player-named protagonist after his transfer to the fictional Shujin Academy after being put on probation for an assault of which he was falsely accused. During the course of a school year, he and other students awaken to their Persona powers, become masked vigilantes dubbed the "Phantom Thieves of Hearts", and explore the supernatural Metaverse realm to steal ill intent from the hearts of adults. ', 1, 'http://www.mobygames.com/images/covers/l/390017-persona-5-playstation-3-front-cover.png','https://www.youtube.com/embed/QnDzJ9KzuV4');
insert into products (product, price, description, category_id, image, video) values ('Bloodborne', '19.99', 'The game is played from a third-person perspective, players control a customizable protagonist, and gameplay is focused on weapons-based combat and exploration. Players battle varied enemies, including bosses, using items such as swords and firearms, and journey through the story, exploring the games different locations, interacting with non-player characters, collecting key items involved in the story, and discovering and unraveling the worlds many mysteries', 1, 'http://www.mobygames.com/images/covers/l/318923-bloodborne-playstation-4-front-cover.jpg','https://www.youtube.com/embed/iTDvYvlyPaE');
insert into products (product, price, description, category_id, image, video) values ('Horizon Zero Dawn', '29.99', 'Horizon Zero Dawn is an action role-playing video game developed by Guerrilla Games and published by Sony Interactive Entertainment for PlayStation 4 and released in early 2017. The plot revolves around Aloy, a hunter and archer living in a world overrun by robots. Having been an outcast her whole life, she sets out to discover the dangers that kept her sheltered. The character uses ranged weapons and a spear and stealth tactics to combat the mechanised creatures, whose remains can be looted for resources. A skill tree provides the player with new abilities and passive bonuses. The game features an open world environment for Aloy to explore, divided into tribes that hold side quests to undertake, while the main story guides her across the entire map.', 1, 'https://www.dualshockers.com/wp-content/uploads/2016/07/960x544_wallpaper.jpg','https://www.youtube.com//embed/RRQDqurZJNk');
insert into products (product, price, description, category_id, image, video) values ('South Park: The Stick of Truth', '19.99', 'South Park: The Stick of Truth is a 2014 role-playing video game developed by Obsidian Entertainment in collaboration with South Park Digital Studios and published by Ubisoft. Based on the American adult animated television series South Park, the game follows the New Kid, who has moved to the eponymous town and becomes involved in an epic role-play fantasy war involving humans, wizards, and elves, who are fighting for control of the all-powerful Stick of Truth.', 1, 'https://guides.gamepressure.com/gfx/box/439.jpg','https://www.youtube.com/embed/bkZHv-9e2ro');
insert into products (product, price, description, category_id, image, video) values ('Doom', '19.99', 'Players take the role of an unnamed marine as he battles demonic forces from Hell that have been unleashed by the Union Aerospace Corporation on a future-set colonized planet Mars. The gameplay returns to a faster pace with more open-ended levels, closer to the first two games than the slower survival horror approach of Doom 3. It also features environment traversal, character upgrades, and the ability to perform executions known as "glory kills". The game also supports an online multiplayer component and a level editor known as "SnapMap", co-developed with Certain Affinity and Escalation Studios respectively.', 2, 'https://cdn.vox-cdn.com/uploads/chorus_asset/file/6001785/doomcoverart.0.jpg','https://www.youtube.com/embed/ybo30QlSk64');
insert into products (product, price, description, category_id, image, video) values ('Gears of War 3', '9.99', '�Gears of War 3� is the spectacular conclusion to one of the most memorable and celebrated sagas in video games. It plunges players into a harrowing tale of hope, survival and brotherhood. Players fight on as Marcus Fenix, the grizzled war hero and leader of Delta Squad. Eighteen months after the fall of the last human city in �Gears of War 2,� the war against the Locust rages on, but a new enemy has emerged. Deep beneath the surface, a fearsome new threat, the Lambent, is infecting the planet from within. With survivors scattered and civilization in ruins, time is running out for Marcus and his comrades as they take up their Lancers to make one last push that will ultimately decide the fate of humanity.', 2, 'http://images.vg247.com/current//2011/02/gow3cover.jpg','https://www.youtube.com/embed/98iFyEN3O68');
insert into products (product, price, description, category_id, image, video) values ('Call of Duty 4 Modern Warfare', '19.99', 'he story takes place in the year 2011, where a radical leader has executed the president of an unnamed country in the Middle East, and an ultranationalist movement ignites a civil war in Russia. The conflicts are seen from the perspectives of a U.S. Force Reconnaissance Marine and a British SAS commando, and are set in various locales, such as the United Kingdom, the Middle East, Azerbaijan, Russia, and Ukraine. The multiplayer portion of the game features various game modes, and contains a leveling system that allows the player to unlock additional weapons, weapon attachments, and camouflage schemes as they advance.', 2, 'https://upload.wikimedia.org/wikipedia/en/5/5f/Call_of_Duty_4_Modern_Warfare.jpg','https://www.youtube.com/embed/LhuIjNSg7Gg');
insert into products (product, price, description, category_id, image, video) values ('Destiny 2', '59.99', 'Destiny 2 is an online-only multiplayer first-person shooter video game developed by Bungie and published by Activision. It was released for PlayStation 4 and Xbox One on September 6, 2017, with a Microsoft Windows version scheduled for release the following month. It is the sequel to 2014 Destiny and its subsequent expansions. Set in a "mythic science fiction" world, the game features a multiplayer "shared-world" environment with elements of role-playing games. Players assume the role of a Guardian, protectors of Earths last safe city as they wield a power called Light to protect the Last City from different alien races. One of these races, the Cabal, lead by their emperor, Dominus Ghaul, infiltrate the Last City and strips all Guardians of their Light. The player sets out on a journey to regain their Light and find a way to defeat Ghaul and his Red Legion army and take back the Last City.', 2, 'https://www.dualshockers.com/wp-content/uploads/2017/03/Destiny2-8.jpg','https://www.youtube.com/embed/hdWkpbPTpmE');
insert into products (product, price, description, category_id, image, video) values ('Tom Clancys Rainbow Six Siege', '29.99', 'Tom Clancys Rainbow Six Siege is a tactical shooter video game developed by Ubisoft Montreal and published by Ubisoft. It was released worldwide on December 2015 for Microsoft Windows, PlayStation 4 and Xbox One. The game puts heavy emphasis on environmental destruction and cooperation between players. Players assume control of an attacker or a defender in different gameplay modes such as hostage rescuing and bomb defusing. The title has no campaign, but features a series of short missions that can be played solo. These missions have a loose narrative, focusing on recruits going through training to prepare them for future encounters with the White Masks, a terrorist group that threatens the safety of the world.', 2, 'http://cdn.edgecast.steamstatic.com/steam/apps/359550/header.jpg?t=1508269407','https://www.youtube.com/embed/KlbLLRdg9u8');
insert into products (product, price, description, category_id, image, video) values ('The Legend of Zelda Breath of the Wild', '59.99', 'The Legend of Zelda: Breath of the Wild is an action-adventure video game developed and published by Nintendo for the Nintendo Switch and Wii U video game consoles. The game is a part of The Legend of Zelda series, and follows amnesiac protagonist Link, who awakens from a hundred-year slumber to a mysterious voice that guides him to defeat Calamity Ganon before he can destroy the kingdom of Hyrule.', 3, 'https://cdn.vox-cdn.com/uploads/chorus_asset/file/7802443/NintendoSwitch_TLOZBreathoftheWild_boxart.jpg','https://www.youtube.com/embed/1rPxiXXxftE');
insert into products (product, price, description, category_id, image, video) values ('Uncharted 4: A Thiefs End', '19.99', 'Uncharted 4: A Thiefs End is an action-adventure game developed by Naughty Dog and published by Sony Computer Entertainment for PlayStation 4. It was released worldwide on May 10, 2016. Following Uncharted 3: Drakes Deception, it is the final Uncharted game to feature protagonist Nathan Drake (portrayed by Nolan North). Drake, now retired from fortune hunting with his wife Elena, reunites with his estranged older brother Sam and longtime partner Sully to search for Captain Henry Averys lost treasure.', 3, 'http://www.mobygames.com/images/covers/l/330413-uncharted-4-a-thief-s-end-playstation-4-front-cover.jpg','https://www.youtube.com/embed/hh5HV4iic1Y');
insert into products (product, price, description, category_id, image, video) values ('Life Is Strange', '9.99', 'The games plot focuses on Max Caulfield, an 18-year-old photography student who discovers that she has the ability to rewind time at any moment, leading her every choice to enact the butterfly effect. After having foreseen an approaching storm, Max must take on the responsibility to prevent it from destroying her town. The players actions will adjust the narrative as it unfolds, and reshape it once allowed to travel back in time. Fetch quests and making environmental changes represent the forms of puzzle solving in addition to using branching choices for conversation.', 3, 'http://www.mobygames.com/images/covers/l/321679-life-is-strange-limited-edition-windows-front-cover.jpg','https://www.youtube.com/embed/AURVxvIZrmU');
insert into products (product, price, description, category_id, image, video) values ('Bioshock Infinite', '9.99', 'BioShock Infinite is a first-person shooter video game developed by Irrational Games and published by 2K Games. It was released worldwide for the Microsoft Windows, PlayStation 3, and Xbox 360 platforms on March 26, 2013; an OS X port by Aspyr was later released on August 29, 2013 and a Linux port was released on March 17, 2015. Infinite is the third installment in the BioShock series, and though it is not immediately part of the storyline of previous BioShock games, it features similar gameplay concepts and themes. Irrational Games and creative director Ken Levine based the games setting on historical events at the turn of the 20th century, such as the 1893 Worlds Columbian Exposition, and based the story on the concept of American exceptionalism, while also incorporating influences from more recent events at the time such as the 2011 Occupy movement.', 3, 'https://www.technobuffalo.com/wp-content/uploads/2012/12/bioshockinfinitecover.jpg','https://www.youtube.com/embed/31-NAkq8YEY');
insert into products (product, price, description, category_id, image, video) values ('Batman: The Telltale Series', '19.99', 'In Gotham City, a group of professional mercenaries attempt to break into Mayor Hamilton Hills vault at Gotham City Hall but they are intercepted by Bruce Wayne, the vigilante known as Batman (Troy Baker). Batman also encounters the elusive cat burglar Catwoman (Laura Bailey), who manages to break into the vault and steal an encrypted data drive. The two of them engage each other in hand-to-hand combat, during which Batman retrieves the drive, but allows Catwoman to escape. Meanwhile, Wayne reunites with his old childhood friend Oswald Cobblepot (Jason Spisak) in Cobblepot Park who informs Wayne that there is a revolution afoot in Gotham City and to be on the right side once it commences.', 3, 'http://www.push-start.co.uk/wp-content/uploads/2016/07/BM_ss_front_white.jpg','https://www.youtube.com/embed/JyHDYn06ypY');
insert into products (product, price, description, category_id, image, video) values ('The Last of Us','19.99', 'The Last of Us series is an action-adventure survival horror video game franchise developed by Naughty Dog and published by Sony Computer Entertainment for PlayStation consoles. There are also other media entries such as a comic book and a planned film. Set in the post-apocalyptic United States, the series follows survivors Joel and Ellie and their emotional adventures across America.', 3, 'https://upload.wikimedia.org/wikipedia/en/4/46/Video_Game_Cover_-_The_Last_of_Us.jpg','https://www.youtube.com/embed/W01L70IGBgE');

insert into products (product, price, description, category_id, image, video) values ('Super Smash Bros for Wii U', '49.99', 'Like the rest of the series, Super Smash Bros. for Wii U is a non-traditional fighting game where players use different attacks to weaken their opponents and knock them out of an arena. The games are crossover titles that feature characters, items, music, and stages from various Nintendo franchises, including Mario, Donkey Kong, Pok�mon, Fire Emblem, Kirby, Metroid, Star Fox, The Legend of Zelda, Kid Icarus, and Animal Crossing among others, as well as from several third-party franchises, including Segas Sonic the Hedgehog and Bayonetta, Capcoms Mega Man and Street Fighter, Bandai Namcos Pac-Man, and Square Enixs Final Fantasy VII. New features include having up to eight players fighting at a time on the Wii U version, support for Nintendos line of Amiibo, using custom Miis as playable fighters, post-release downloadable content including additional fighters and stages, and customizable special moves unlockable for every non-DLC character. Some features from previous games in the series were removed, such as the story mode in Brawl.', 4, 'http://www.thetanooki.com/wp-content/uploads/2014/06/WiiU_SuperSmashBros_pkg.png','https://www.youtube.com/embed/nb1m_wyB4bM');
insert into products (product, price, description, category_id, image, video) values ('Street Fighter V', '19.99', 'Similar to the previous games in the series, Street Fighter V features a side-scrolling fighting gameplay system. The game also introduces the "V-Gauge", which builds as the player receives attacks and adds three new skills. The game features 16 characters at launch, with four of them being new to the series. A story mode and additional characters were added through updates and downloadable content.', 4, 'https://www.fightersgeneration.com/nz3/game/sf5-ryu-key-artwork.jpg','https://www.youtube.com/embed/AeqCrpHlqQg');
insert into products (product, price, description, category_id, image, video) values ('Tekken 7', '29.99', 'Set shortly after the events of Tekken 6, the plot focuses on the fights between martial artist Heihachi Mishima and his son, Kazuya. Across the series it is revealed the reasons why Heihachi tried to kill Kazuya when he was only a child as well as what happened to Kazuyas mother. Besides the main story, Tekken 7 introduces new elements for the fighting system such as the Rage and the Power Crush to increase the characters powers.', 4, 'http://steam.cryotank.net/wp-content/gallery/tekken7/Tekken-7-05-HD.png','https://www.youtube.com/embed/1V-_q3SKh5w');
insert into products (product, price, description, category_id, image, video) values ('Mario Kart 8: Deluxe', '59.99', ' in Mario Kart 8, players control characters from the Mario franchise and participate in kart racing on various race tracks, using items to hinder opponents or gain advantages. While incorporating game mechanics originally featured in earlier Mario Kart games, Mario Kart 8 introduces anti-gravity sections that allow players to drive on walls or ceilings. The game features multiple single-player and multiplayer game modes, and incorporates Miiverse functionality and online multiplayer supported via Nintendo Network.', 5, 'https://i.ytimg.com/vi/a3o_ZKWi-OU/maxresdefault.jpg','https://www.youtube.com/embed/tKlRN2YpxRE');
insert into products (product, price, description, category_id, image, video) values ('Crash Team Racing', '19.99', 'Fifteen characters are playable in Crash Team Racing, although only eight of them are playable from the start.[6] Crash Bandicoot, the main protagonist of the series, is an all-round racer with balanced acceleration, top speed and handling. Doctor Neo Cortex, Crashs archenemy, is a mad scientist who wants to stop Nitros Oxide so that he may conquer the world himself. Like Crash, his kart is an all-round performer. Coco Bandicoot, Crashs younger sister, is a computer genius who installed computer chips into her kart to increase its acceleration prowess. Doctor N. Gin is a rocket scientist who, like Coco, added custom parts to his kart to improve its acceleration. Pura and Polar pilot karts with low speed but improved handling, allowing them to navigate tight corners. Tiny Tiger and Dingodile control karts built for top speed at the cost of turning prowess.', 5, 'http://gearnuke.com/wp-content/uploads/2017/05/crash-team-racing-ps1.jpg','https://www.youtube.com/embed/LPAnYGGWaBw');
insert into products (product, price, description, category_id, image, video) values ('Need For Speed: Most Wanted', '19.99', 'Need for Speed: Most Wanted is a 2005 racing video game developed by EA Black Box and published by Electronic Arts. It is the ninth installment in the Need for Speed series. The game features street racing-oriented game play, with certain customization options from the Need for Speed: Underground series. The game is succeeded by Need for Speed: Carbon, which serves as a sequel to Most Wanted.', 5, 'https://upload.wikimedia.org/wikipedia/en/8/8e/Need_for_Speed_Most_Wanted_Box_Art.jpg','https://www.youtube.com/embed/f7PizLICibk');
insert into products (product, price, description, category_id, image, video) values ('Rocket League', '9.99', 'Described as "soccer, but with rocket-powered cars", Rocket League has one to four players assigned to each of the two teams, using rocket-powered vehicles to hit a ball into their opponents goal and score points over the course of a match. The game includes single-player and multiplayer modes which can be played both locally and online, including cross-platform play between the PlayStation 4 and Microsoft Windows versions, as well as cross-play between Xbox One, Switch, and Windows versions. Later updates for the game enabled the ability to modify core rules and added new game modes, including ones based on ice hockey and basketball.', 5, 'https://rocketleague.media.zestyio.com/boxart_comp1.f1cb27a519bdb5b6ed34049a5b86e317.jpg','https://www.youtube.com/embed/NC82dWrFqCE');
insert into products (product, price, description, category_id, image, video) values ('Tony Hawk Underground','9.99', 'The game was developed with a theme of individuality, which was manifested in the extensive customization options, the presence of a narrative, and the products characterization as an adventure game. Real-world professional skateboarders contributed their experiences to the plot. Upon release, the game was a major critical and commercial success, with reviewers praising its wide appeal, soundtrack, customization, multiplayer, and plot. The graphics and the controls for driving vehicles and walking were less well received. Undergrounds PlayStation 2 version had sold 2.11 million copies in the United States by December 2007.', 5, 'https://upload.wikimedia.org/wikipedia/en/9/98/Tony_Hawk%27s_Underground_PlayStation2_box_art_cover.jpg','https://www.youtube.com/embed/RNaSnVOeJ7M');
