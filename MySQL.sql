-- Drop if exists
DROP DATABASE IF EXISTS portfolio;
-- Create Database
CREATE DATABASE portfolio;
-- Create tables
CREATE TABLE users(
	id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	user_name varchar(255) UNIQUE NOT NUll
);
CREATE TABLE paragraphs(
	id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    	paragraph text(65535) NOT NULL
);
-- CREATE TABLE images(id int PRIMARY KEY NOT NULL AUTO_INCREMENT,link varchar(255) UNIQUE NOT NULL);
CREATE TABLE components(
	id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	component varchar(255) UNIQUE NOT NULL
);
CREATE TABLE pages(
	id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    	page varchar(255) UNIQUE NOT NULL,
	route varchar(255) NOT NULL DEfAULT 'NA'
);
CREATE TABLE contents(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_user int NOT NULL,
    id_page int NOT NULL,
    component_number int NOT NULL,
    id_component int NOT NULL,
    id_paragraph int,
    CONSTRAINT fk_contentuser FOREIGN KEY (id_user)
    REFERENCES users(id),
    CONSTRAINT fk_contentpage FOREIGN KEY (id_page)
    REFERENCES pages(id),
    CONSTRAINT fk_contentcomponent FOREIGN KEY (id_component)
    REFERENCES components(id),
--    CONSTRAINT fk_contentimage FOREIGN KEY (id_image)
--    REFERENCES images(id),
    CONSTRAINT fk_contentparagraph FOREIGN KEY (id_paragraph)
    REFERENCES paragraphs(id)
);
-- Populate
INSERT INTO users(user_name)
values ('Juan Fernando Parra Cadavid');
INSERT INTO pages(page,route)
values('Home','/');
INSERT INTO pages(page,route)
values('Experience','Experience');
INSERT INTO pages(page,route)
values('Skills','Skills');
-- INSERT INTO pages(page,route)
-- values('Technical Skills','TechnicalSkills');
INSERT INTO pages(page)
values('General');
INSERT INTO components(component)
VALUES ('header');
INSERT INTO components(component)
VALUES ('footer');
INSERT INTO components(component)
VALUES ('profile');
INSERT INTO components(component)
VALUES ('jumbotron');
INSERT INTO components(component)
VALUES ('general');
INSERT INTO contents(id_user,id_page,component_number,id_component)
VALUES(1,1,1,1);
INSERT INTO contents(id_user,id_page,component_number,id_component)
VALUES(1,1,2,1);
INSERT INTO contents(id_user,id_page,component_number,id_component)
VALUES(1,2,2,1);
INSERT INTO contents(id_user,id_page,component_number,id_component)
VALUES(1,3,2,1);
-- INSERT INTO contents(id_user,id_page,component_number,id_component)
-- VALUES(1,4,2,1);
INSERT INTO paragraphs(paragraph)
VALUES('Welcome Dear Recruiter');
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,1,1,4,1);
INSERT INTO paragraphs(paragraph)
VALUES('This website has been made especially for you. I created this website using Vue.js(HTML, CSS and Javascript), BootstrapVue, Flask(Python), AWS RDS MySQL and AWS Elastic Beanstalk. It is a complete example of my programming skills, this website took 24 hours to be done and it was my personal challenge, I am happy that this is now a dream made true and you are here. I encourage you to go through the different elements in this website and hoover on them, you will find many images that will help you to get closer to me. I hope you enjoy this website and I will wait for your call to go further on my hiring process.');
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,1,2,4,2);

INSERT INTO paragraphs(paragraph)
VALUES('Web Software Developer');
INSERT INTO paragraphs(paragraph)
VALUES('Innovatec Colombia');
INSERT INTO paragraphs(paragraph)
VALUES('I am using HTML, CSS, Javascript (jQuery), AJAX, PHP, MySQL, Google APIs, Twilio API and Apache to help the company to develop one of its projects.');

INSERT INTO paragraphs(paragraph)
VALUES('Financial Advisor');
INSERT INTO paragraphs(paragraph)
VALUES('Diez Studio');
INSERT INTO paragraphs(paragraph)
VALUES('Being part of this company was an amazing experience, their creative process in the fashion industry and his brave leader Sergio Echavarria taught me a lot. I helped him with the Company valuation and Financial Planning. We together created a great analysis report of the fashion industry based mainly on PESTEL analysis and the five forces of Porter. Internally, we created the Mission, Vision, Canvas model and the SWOT matrix of the company to take strategic decisions for the medium and long term. Finally, I was responsible for the budget, income forecast and valuation of the company to get investors during 2018 and 2019.');

INSERT INTO paragraphs(paragraph)
VALUES('Chief Financial Officer');
INSERT INTO paragraphs(paragraph)
VALUES('Breath Clothing');
INSERT INTO paragraphs(paragraph)
VALUES('Breath Clothing was a company founded by Sebastian Quejada in which I became a partner in 2018, it was the second company that I worked for from the beginning (I had previously founded a mobile phone retail company). We started without any knowledge of the fashion industry, and in the two years that I was part of this amazing team, we got 10.000 organic followers in the social media, we created 4 collections, we established many commercial relationships, we were part of fashion events and we participated in entrepreneurship courses offered by Ruta N (a public joint venture institution that supports innovation in Colombia). During this time, I presented financial reports every 6 months to our stakeholders, I got investors, I created key relationships and I managed along with my partners the production and retail processes. Moreover, one extra knowledge that I got was to create marketing campaigns, which are a crucial part of this business. I sold in 2019 my shares in the company when I started the graduate diploma in IT in New Zealand.'); 

INSERT INTO paragraphs(paragraph)
VALUES('Financial Analyst');
INSERT INTO paragraphs(paragraph)
VALUES('INTERCOLOMBIA S.A. E.S.P.');
INSERT INTO paragraphs(paragraph)
VALUES('In this company, my interest in AI rose, because I and the Financial Planning Specialist automated the execution of the budget monthly reports using SAP Business Objects (BO), the budget report was a process that we took more or less 8 hours finishing, and with this technology, we reduced the time to complete this task to less than five minutes. I also used Power BI to create Business Intelligent Reports and I was part of the team in charge of implementing SAP Business Planning and Consolidation (BPC) to build a rolling forecast budget and consolidate it with the headquarters information.');



INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,2,1,4,3);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,2,1,4,4);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,2,1,4,5);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,2,2,4,6);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,2,2,4,7);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,2,2,4,8);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,2,3,4,9);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,2,3,4,10);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,2,3,4,11);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,2,4,4,12);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,2,4,4,13);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,2,4,4,14);

INSERT INTO paragraphs(paragraph)
VALUES('Goal oriented');
INSERT INTO paragraphs(paragraph)
VALUES('I always wanted to teach Statistics when I was in university. To become a tutor I needed good grades in this subject, and I got them. I worked for the university during the last year. After I completed university, I started a successful company called Facilestadistica focus on private tutoring with which I earned a good monthly salary.');
INSERT INTO paragraphs(paragraph)
VALUES('When I came to New Zealand, I set the goal of getting 7 in the IELTS exam in 6 months, even though I came here with not a good level of English, I was successful. I worked hard to achieve it, and I outperformed everyone in my courses. I started on Intermediate 1 in NZLC, however, due to my performance, I got the advance level in 4 months when it usually takes 5 months.');
INSERT INTO paragraphs(paragraph)
VALUES('After I finished the English course in NZLC, I set the goal to travel around the world and to come back to New Zealand. In 1 month I earned enough money to do it and I spent the next 3 months overseas, although there were difficulties (one of them was that my passport was stolen in Greece and there was no embassy of Colombia), I am here in this beautiful country again.');

INSERT INTO paragraphs(paragraph)
VALUES('Critical thinking');
INSERT INTO paragraphs(paragraph)
VALUES("Why is not there any philosophy than Spinoza's philosophy?.");
INSERT INTO paragraphs(paragraph)
VALUES("Let's say that the only advantage that the human has over the other species is to process data and create new knowledge. Then, let's present knowledge as a factor to generate well-being. ");
INSERT INTO paragraphs(paragraph)
VALUES("The past two statements are vital to introduce Spinoza's philosophy. He said that our main goal in life is to pursue knowledge because it is the way to have an ethic that diminishes what he called the negative behaviours of the human being, and it is the only way to understand a god that is the cause of everything. If we apply his words in this world, in which one does not have more rights than the natural rights, and it is necessary to believe on imaginary ideas like the social contract to create a safe society to one satisfies necessities and aspirations, it is not absurd to think that through knowledge, our main tool, is the way to create the ideal society. In this society, we implement AI to process data and generates more helpful knowledge and we give awards to people that using it enhance human well-being. In other words, IF we, as a society, are dreaming in an order in which AI is the way to make good decisions, we are believing, ultimately, on Spinoza's words.");
INSERT INTO paragraphs(paragraph)
VALUES("Therefore there is not any philosophy than Spinoza's philosophy for me and for you dear lector \(if you agree with me\).");

INSERT INTO paragraphs(paragraph)
VALUES("Teamwork");
INSERT INTO paragraphs(paragraph)
VALUES('"If you want to go fast, go alone. If you want to go far, go together".');

INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,3,1,4,15);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,3,1,4,16);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,3,1,4,17);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,3,1,4,18);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,3,2,4,19);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,3,2,4,20);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,3,2,4,21);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,3,2,4,22);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,3,2,4,23);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,3,3,4,24);
INSERT INTO contents(id_user,id_page,component_number,id_component,id_paragraph)
VALUES(1,3,3,4,25);



