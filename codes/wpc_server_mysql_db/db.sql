CREATE TABLE `blogposts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(512) DEFAULT NULL,
  `desc` text,
  `image_url` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `blogposts` (
	`title`, 
	`desc`, 
	`image_url`
)
VALUES (
	"Post #1", 
	"Hello 1st post", 
	"https://cdn.the-scientist.com/assets/articleNo/66820/hImg/34886/bird-banner3-x.png"
);



INSERT INTO `blogposts` (
	`title`, 
	`desc`, 
	`image_url`
)
VALUES (
	"Post #2", 
	"Hello 2nd post", 
	"https://www.sciencemag.org/sites/default/files/styles/article_main_image_-_1280w__no_aspect_/public/bird_16x9_3.jpg?itok=hXyEta8n"
);



INSERT INTO `blogposts` (
	`title`, 
	`desc`, 
	`image_url`
)
VALUES (
	"Post #3", 
	"Hello 3rd post", 
	"https://media1.tenor.com/images/b779eb124cb9c5a621942e1f261a9221/tenor.gif?itemid=16064475"
);

