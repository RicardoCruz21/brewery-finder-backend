BEGIN TRANSACTION;

-- USERS
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');
INSERT INTO users (username,password_hash,role) VALUES ('ricardo', '$2a$10$afuUAXrV/kKQjkr7v1OLg.AsebZxt2lg4rzhoUMTxSsP/Jqfw4MUS', 'ROLE_BREWER');
INSERT INTO users (username,password_hash,role) VALUES ('jane', '$2a$10$aFWHuZWqFAyl8b.ou2fzFuMvXfRJ/HqI1uM85Ah0N6TxxVBmOG4O.', 'ROLE_BREWER');
INSERT INTO users (username,password_hash,role) VALUES ('spencer', '$2a$10$U0q1o1SW5nCa6BHlfNqLHug8J0mcOjv6zBcnV66OYbJamaID.HIt.', 'ROLE_BREWER');
INSERT INTO users (username,password_hash,role) VALUES ('connor', '$2a$10$Xvtmp.i43yBEE8uzmX8fhObRWOmAZiHrz7Px3OM1wFVNjup6IYGXq', 'ROLE_BREWER');
INSERT INTO users (username,password_hash,role) VALUES ('david', '$2a$10$.ufkAXypZWEphMv8R36jzO8uDnGa2ZznqhIftkicReHrRG.9OZ8Ei', 'ROLE_BEERLOVER');
INSERT INTO users (username,password_hash,role) VALUES ('isaac', '$2a$10$ql9/Rl0Z.kQNDgHjwbxa0enTEQSx70QbuO9EHfACifLUsBNkKupp6', 'ROLE_BEERLOVER');
INSERT INTO users (username,password_hash,role) VALUES ('justin', '$2a$10$0RYBCU2qis96/DdJJQyU8ek4T65tdJcxMVSphDdWQ3.U2ljK3LWTG', 'ROLE_BEERLOVER');
INSERT INTO users (username,password_hash,role) VALUES ('ken', '$2a$10$mRSrMCD1786MKP.pOVdJouemKy.xOBgYRFEGqC8jdfIO77M6JJQku', 'ROLE_BEERLOVER');

-- ADDRESSES
INSERT INTO addresses (street_address, city, state, zipcode)
VALUES('1744 Donlon St.', 'Ventura', 'CA', '93003');

INSERT INTO addresses (street_address, city, state, zipcode)
VALUES('4880 Colt St.', 'Ventura', 'CA', '93003');

INSERT INTO addresses (street_address, city, state, zipcode)
VALUES('307 Bryant Street', 'Ojai', 'CA', '93023');

INSERT INTO addresses (street_address, city, state, zipcode)
VALUES('5777 Olivas Park Dr Unit S', 'Ventura', 'CA', '93003');

-- BREWERIES
INSERT INTO breweries (brewery_name, user_id, website_url, email_address, address_id, phone_number, brewery_history, brewery_logo, brewery_image, is_active)
VALUES('MadeWest Brewing Company', 2, 'https://madewest.com/', 'beer@madewest.com', 1, '8059475002', 'MadeWest is the result of lifelong friends seeking to share quality handmade craft beer with our beloved home state. Our vision is inspired by California’s legacy of adventure and innovative design—and our beer reflects that as much in the great outdoors as from a barstool at one of our two Ventura taprooms. Wherever you take MadeWest, you’ll take the spirit of the West Coast with you.', 'https://cdn.shopify.com/s/files/1/2653/8302/files/MW_Circle_Logo_720x.png?v=1613765700', 'https://cdn.shopify.com/s/files/1/2653/8302/files/gem20171222madewest_08_24398191240_o_1500x.jpg?v=1613714972','true');

INSERT INTO breweries (brewery_name, user_id, website_url, email_address, address_id, phone_number, brewery_history, brewery_logo, brewery_image, is_active)
VALUES('Topa Topa Brewing Company', 3, 'https://topatopa.beer/', 'hi@topatopa.beer', 2, '8055354366', 'Topa Topa Brewing Co. was founded in 2015 in Ventura, CA, nestled between the Topa Topa mountains in Ojai and the salty shores of the Pacific. We believe the people should drink great beer! And we love that we get to craft great beer amongst a landscape and community that inspires us.Topa Topa is upheld by a trifecta of values: quality, craftsmanship, and community spirit. This means we use the freshest ingredients, we work with the most skilled brewers around, and we thrive on uplifting and unifying our community. We get stoked on good surf, a long hike, a tough climb, or a good-old-fashioned day of hard work. And we think these days are made all the better when we’re surrounded by friends with a cold beer in hand. So next time you’re near one of our tap rooms— whether in Ventura, Ojai, Santa Barbara or Camarillo— pull up a chair, grab a fresh pint, and enjoy the company. Or if you’re gearing up to take to the trails or the sea, never fear, we have 6-packs, growlers, and crowlers aplenty.', 'https://scontent-dfw5-2.xx.fbcdn.net/v/t31.18172-8/19693531_800272060150551_346240175969820292_o.png?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Gb8KndnVIywAX8kq11l&_nc_ht=scontent-dfw5-2.xx&oh=00_AfDJm5wjgPp_tV_5QYJHoFU83QAqxihYqvDWRlYonMuwhA&oe=63B6DE25', 'https://pagestudio.s3.theshoppad.net/topa-topa-brewing-company/ddbc10c280ec9185f1ffa17eec39f263.jpg','true');

INSERT INTO breweries (brewery_name, user_id, website_url, email_address, address_id, phone_number, brewery_history, brewery_logo, brewery_image, is_active)
VALUES('Ojai Valley Brewery', 4, 'https://ojaivalleybrewery.com/', 'cmartinez@ojaivalleyinn.com', 3, '8057989282', 'Brewing at 307 Bryant Street, in Ojai California since 2017: We believe in the magic of Ojai, and Indigenous Ojai Botanicals. Ojai is a place where people have always come for recovery and fortification. Ojai is Chumash for ''“The Nest”''. It''s a place where good people find good people, through nature and unique and meaningful experiences. It’s also a place that attracts a wide variety of expert crafts people to a rather small community. Ojai lives in our beers and brews. Inoculated by the unfiltered culture of our community, by the hands of our local brewers, in the pure Ojai water, and in the indigenous herbs, fruits, and flowers we infuse into our one-of-a-kind creations. We make beer that is an expression of our environment, to commune with the natural world that surrounds us. We share these moments together. We find unity in the mutual appreciation of these natural gifts and in the good times we share.', 'https://images.squarespace-cdn.com/content/v1/56d7bb6545bf212e1e93beed/c68bb63a-d04b-46bd-bf7b-644600f411c1/Icon.png?format=1500w', 'https://images.squarespace-cdn.com/content/v1/56d7bb6545bf212e1e93beed/1654395375073-QDJF74BWJ81JS8IGN99O/OVB_Property-DrawingMidRes.jpg?format=2500w', 'true');

INSERT INTO breweries (brewery_name, user_id, website_url, email_address, address_id, phone_number, brewery_history, brewery_logo, brewery_image, is_active)
VALUES('Poseidon Brewing Company', 5, 'https://poseidonbrewingco.com/', 'info@poseidonbrewingco.com', 4, '8054770239', 'You tend to do what you love in life. Or at least that’s been a motto that Brian Oliver, Poseidon’s co-proprietor and head brewer, has made a point to live by. As far back as 2007, when he was stationed in Iraq, he discovered craft beer—and that he loved it. So in his downtime, he researched homebrewing…and got the hankering to pursue it himself. No surprise, making a batch didn’t seem too hard a feat for this Navy-trained underwater construction diver. Right after returning to Ventura County, California, Brian took up the hobby along with his wife, Vinita, who also had an appreciation for high-quality beers. Together the couple sampled their brews with friends and neighbors, noticing the compliments, good times, and real sense of community their hobby created. It was inspiring, so much so that Brian, now at the tail end of his 23-year Navy career and feeling confident about his craft, took a leap and launched Poseidon Brewing Co., along with Vinita’s help.', 'https://craftpeak-cooler-images.imgix.net/poseidon-brewing-co/logo-color-01.png?auto=compress%2Cformat&ixlib=php-3.3.0&s=40105df9b2c16e791acc2d53e84c778c', 'https://craftpeak-cooler-images.imgix.net/poseidon-brewing-co/02_Poseidon-2022-schafphoto-2887.jpg?auto=compress%2Cformat&ixlib=php-3.3.0&s=557a68d2f445482299edda7cffbe1ce4', 'true');

-- BEERS
INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES('Standard', 'A clean, crisp, sessionable, light ale, this Great American Beer Fest gold-medal winner is easy drinking and full of flavor. It has a light, grainy, malt backbone and a prominent floral hop character with a dry, refreshing finish. HOPS: Saaz, Mandarina Bavaria', 'https://cdn.shopify.com/s/files/1/2653/8302/products/madewest-standard-4pack_1800x1800.jpg?v=1636506475', 5.6, 'Blonde Ale', 'true');

INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES('Pale', 'This heavily hopped West Coast Pale Ale is bursting with a bright citrus and fruity hop complexity. It has just enough malt presence to allow the loads of hops to shine through. This crisp, hop forward beer has a dry, refreshing finish. HOPS: Mosaic, Simcoe, Ekuanot', 'https://cdn.shopify.com/s/files/1/2653/8302/products/madewest-Pale4pack_1800x1800.jpg?v=1636506385', 5.6, 'Pale Ale - American', 'true');

INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES('IPA', 'This West Coast IPA is loaded with a fresh tropical fruit character. A light malt base provides a platform for showcasing the complex hop bouquet of pineapple, candy-like stone fruit and citrus tones. This IPA has a mellow bitterness and a smooth, pleasantly dry finish. HOPS: El Dorado, Citra, 07270, Ekuanot, Eureka!', 'https://cdn.shopify.com/s/files/1/2653/8302/products/madewest-ipa-fourpack_1800x1800.jpg?v=1636506299', 6.9, 'IPA - American', 'true');

INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES('Hazy IPA', 'A hazy IPA packed with a jaw-dropping quantity of Mosaic hops. This aromatic IPA has a ripe juicy character with notes of fresh peaches and mango. A soft, silky mouthfeel is complemented by a smooth, refreshing finish. HOPS: Mosaic, Simcoe, Eureka', 'https://cdn.shopify.com/s/files/1/2653/8302/products/madewest-hasy-ipa-4pack_1800x1800.jpg?v=1636506584', 7, 'IPA - New England / Hazy', 'true');

INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES(	
		'Ventura Light', 
		'Golden, full-flavored light lager made with the finest ingredients to achieve a clean crisp refreshing finish. Pairs perfect with the beach, the trails and everything in between. HOPS: Cascade', 
		'https://cdn.shopify.com/s/files/1/2653/8302/products/Ventura_Light_White_Background_1800x1800_2305d084-3745-4588-9460-2ce39f8a6078_720x.jpg?v=1575926498', 
		4.2, 'Lager - American Light', 'true');

INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES (
		'Short-Lived Series W/ Fieldwork', 
		'West Coast IPA hopped with New Zealand''s finest Nelson, Nectaron and Waimea hops. This thiol rich Southern Hemisphere hop combination unleashes tropical fruit aromas with notes of intense grapefruit, passion fruit and guava while the lean malt profile leaves this IPA finishing dry and refreshing. *Thiol Boosted*', 
		'https://cdn.shopify.com/s/files/1/2653/8302/products/PhotoRoom_20221031_105337_1800x1800.jpg?v=1667336337', 
		7, 
		'IPA - American', 
		'true');

INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES (
		'Chief Peak', 
		'You’ve gone from shrubland to woodland to highland. When you stop to sip on a Chief Peak, the piney hops are ﬁrst to arrive. The tropical tones of passion fruit, orange, and gooseberry aren’t far behind. Look out on the valley and trace the contours of the mountain. Breathe in the thinning air, wipe the sweat from your brow, and take another well-earned sip. Taste Buds: Tropical, Dank, Citrus ', 
		'https://cdn.shopify.com/s/files/1/0464/5673/3857/products/5e71d03e-907c-45ab-8954-0578fd5ad003_76006a6b-5194-495e-b292-920fe8fe1335_720x.jpg?v=1604644826', 
		7, 
		'IPA', 
		'true');

INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES (
		'Spectro', 
		'You’ve been hiking for hours through a dense fog. Your body is tired and sticky, but you push on toward your goal. Finally, you reach a clearing, the mist lifts, and there sits your reward: an icy can of Spectro Hazy IPA. You sit and sip as you relish the mystery of the haze that swirls around you and in your can. Taste Buds: Pineapple, Peach, Guava', 
		'https://cdn.shopify.com/s/files/1/0464/5673/3857/products/5e71d03f-07f8-4b5a-a470-0578fd5ad003_eb852637-dcf2-4703-892f-dfbc37699462_720x.jpg?v=1604644835', 
		6.3, 
		'Hazy IPA', 
		'true');

INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES (
		'Dos Topas', 
		'The summer sun dips low. You brush the salt from your skin after a long day of ocean swims and sandy beach towel naps. Now, your reward: you sink into your hammock with a Dos Topas in hand and let the cool, crisp taste wash over you. So tomorrow, when those warm sunshiny rays crest the mountain peaks, you’ll be ready for round dos. Taste Buds: Cracker, Maize, Crisp', 
	   	'https://cdn11.bigcommerce.com/s-k0y7xl9dpv/images/stencil/508x508/products/4310/38433/445560__87530.1645727308.jpg?c=1', 
	   	4.5, 
	   	'Lager',
	   	'true');

INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES (
		'Level Line', 
		'As you wade in the current, the work week fades to gray. When the line strikes and you begin that delicate dance, there''s no choice but to be in the moment. The refreshing citrus aromas and woodsy notes are like the creek passing through the forest. It''s a West Coast Pale Ale for a West Coast way of life. Taste Buds: Lemongrass, Tangerine, Woodsy', 
	   	'https://s.yimg.com/ny/api/res/1.2/rjfuPmTsd_L4gALnlOtE2Q--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTU0NQ--/https://media.zenfs.com/en/men_s_journal_478/e15844734b82073b89216effd4afd4ee', 
	   	5, 
	   	'Pale Ale',
	   	'true');

INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES (
		'Pixie', 
		'White Wheat Ale with Pixie Tangerine Zest & Marmalade, Indian Coriander, and Chamomile, rolled oats, and raw white wheat. Bittering provided by Bravo Hops. Medium Light Body, Round Mouthfeel, Mild balanced bitterness that gives way to slight sweetness. Tasting notes include: apple candy, citrus blossom, orange citrus, vanilla.', 
	   	'https://cdn.shopify.com/s/files/1/0319/3965/7863/products/Can-4pack-Pixie-LowRes_1024x1024@2x.jpg?v=1649294645', 
	   	6.5, 
	   	'White Wheat Ale',
	   	'true');

INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES 		('Sugar Bush', 
		'Hop forward Pale Ale with Wild Sumac. Anybody who wants an IPA will enjoy this beer. It is basically an IPA but slightly less bitter, and with the addition of lemony sumac berries. We buy the sumac from a foraging supplier. Sugar Bush is the name of the Sumac that grows locally here in Ojai. We have a baby Sugar Bush Sumac growing by the telephone pole next to the patio fence.', 
	   	'https://cdn.shopify.com/s/files/1/0319/3965/7863/products/SugarBush-4pack-LowRes_1024x1024@2x.jpg?v=1649299615', 
	   	6.8, 
	   	'Pale Ale',
	   	'true');

INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES (
		'Cali Bock', 
		'Hop forward Hybrid Lager. Combination of California Common Lager and Helles Bock Lager. Clean medium bodied, with a higher alcohol content than most lagers. Tasting notes include: Caramel, Graham Cracker, toast, sweet herbs.', 
	   	'https://cdn.shopify.com/s/files/1/0319/3965/7863/products/Can-4pack-Calibock-LowRes_1024x1024@2x.jpg?v=1649293194', 
	   	6.3, 
	   	'Hybrid Lager',
	   	'true');

INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES (
		'Ranchero', 
		'Mexicali Lager. Traditional Amber Mexican Lager using California Common lager yeast, and Pacific Crest Noble Hops. Clean, dry, finish with light malty sweetness and toasted grain finish. Tasting notes include: wheat bread crust, and minty herbs.', 
	   	'https://cdn.shopify.com/s/files/1/0319/3965/7863/products/IMG_3356_1024x1024@2x.jpg?v=1649304994	https://cdn.shopify.com/s/files/1/0319/3965/7863/products/IMG_3356_1024x1024@2x.jpg?v=1649304994', 
	   	5, 
	   	'Mexican Lager',
	   	'true');

INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES (
		'New Moon', 
		'Wild Oat Stout, brewed with Local raw oat and wheat straw. Smooth medium bodied black Ale, with a medium dry finish and mild carbonation. Tasting notes include: Chocolate, Coffee, graham cracker, hay.', 
	   	'https://cdn.shopify.com/s/files/1/0319/3965/7863/products/JFB-4pack--LowRes_1024x1024@2x.jpg?v=1649304728',
	   	6, 
	   	'Stout',
	   	'true');

INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES (
		'Arbolada', 
		'Black Lager or “schwarzbier” brewed for a very light body so that it can be drunk in hot weather, and infused with whole Mexican Vanilla beans for a slight creaminess. This beer is named after the shady oak stand in the northwest of the Ojai Valley. Mexican Vanilla is currently worth more than silver by the ounce. Tasting notes include: vanilla, chocolate, coffee, Cream Soda.', 
	   	'https://cdn.shopify.com/s/files/1/0319/3965/7863/products/Arbolada-Can-4pack-LowRes_1024x1024@2x.jpg?v=1649301433', 
	   	5.8, 
	   	'Black Lager',
	   	'true');

INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES (
		'Airhog Apricot Ale', 
		'Straight up an experiment, Airhog Apricot Ale is hazy like crazy! With each sip of Airhog, you’ll pick up on the many aromas of sweet apricot blossoms and tart fruit as you draw the glass near. Deep, rich apricot flesh, then tart apricot notes dance on the palate and lead to a sweet apricot finish with a lingering fruit tartness.', 
	   	'https://craftpeak-cooler-images.imgix.net/poseidon-brewing-co/crowler-frontback.png?auto=compress%2Cformat&fit=scale&h=909&ixlib=php-3.3.0&w=600&wpsize=tile&s=cf032fb3676e1d62f47399853b4404e4', 
	   	7, 
	   	'Fruit IPA',
	   	'true');

INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES (
		'Amphibious Amber Ale', 
		'Amphibious Amber Ale is an intensely malt centric beer accenting the aromatic and full-bodied flavors of English malts. Toasted caramel and mild chocolate aromatics are present with a hint of character from our house yeast. A great beer for the malt lover in all of us.', 
	   	'https://craftpeak-cooler-images.imgix.net/poseidon-brewing-co/Amphibious-frontback.png?auto=compress%2Cformat&fit=scale&h=909&ixlib=php-3.3.0&w=600&wpsize=tile&s=ecd9546fbf39e1b810043b64062b0f77', 
	   	5, 
	   	'Amber Ale',
	   	'true');

INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES (
		'Battleship Blonde', 
		'A great way to kick off your visit at Poseidon Brewing Co., our first-ever experimental blonde ale uses copious amounts of Caravienne malt with a dash of Columbus hops. We kept the hop addition to a minimum to help bring out the wonderful malt and fruit characteristics of this brew. Clean aromas of honey, nectarines, peaches and apricots are present. Smooth and refreshing!', 
	   	'https://craftpeak-cooler-images.imgix.net/poseidon-brewing-co/Battleship-frontback.png?auto=compress%2Cformat&fit=scale&h=909&ixlib=php-3.3.0&w=600&wpsize=tile&s=61a9fc393365eab42963f1065a93ff12', 
	   	6, 
	   	'Blonde Ale',
	   	'true');

INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES (
		'Blown Off Course IPA', 
		'So we set out to brew an India Pale Ale, and it didn’t quite turn out like we’d planned, hence the name, Blown Off Course IPA. But being blown off course isn’t a bad thing when there is white grapefruit involved and the hops used include Cascade, Simcoe and Horizon.', 
	   	'https://craftpeak-cooler-images.imgix.net/poseidon-brewing-co/BlownOffCourse-frontback.png?auto=compress%2Cformat&fit=scale&h=909&ixlib=php-3.3.0&w=600&wpsize=tile&s=69841ca9dac9cea7182dc9867067b20c', 
	   	7, 
	   	'Fruit IPA',
	   	'true');

INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active)
VALUES (
		'Borchard Beer Cali Common', 
		'Borchard Beer is a California Common, also known as a Steam Beer, that is a 100% American-style lager brewed with a lager yeast strain that ferments at warmer ale-like temperatures. This method of fermenting dates back to the late 1800s in California when refrigeration was a great luxury.', 
	   	'https://craftpeak-cooler-images.imgix.net/poseidon-brewing-co/Borchard-frontback.png?auto=compress%2Cformat&ixlib=php-3.3.0&s=d30db24ffb542cd130a07b71b49f819c', 
	   	5.8, 
	   	'California Common',
	   	'true');

-- BREWERIES_BEERS
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(1, 1);
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(1, 2);
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(1, 3);
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(1, 4);
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(1, 5);
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(1, 6);
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(2, 7);
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(2, 8);
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(2, 9);
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(2, 10);
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(3, 11);
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(3, 12);
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(3, 13);
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(3, 14);
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(3, 15);
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(3, 16);
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(4, 17);
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(4, 18);
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(4, 19);
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(4, 20);
INSERT INTO breweries_beers (brewery_id, beer_id) VALUES(4, 21);

-- REVIEWS
INSERT INTO reviews (review_text, user_id, image, rating)
VALUES('I buy this beer weekly and cant get enough. Very crisp and refreshing. It''s also one of the few beers my lady will actually drink. Wish you sold 6 packs!', 5, '', 3);

INSERT INTO reviews (review_text, user_id, image, rating)
VALUES('Nice pilsner style with great flavor. More hops would make it perfect.', 6, '', 5);

INSERT INTO reviews (review_text, user_id, image, rating)
VALUES('Had to give it a shot after the GABF win. A well perfected pilsner with that grainy malty flavor perfectly balanced with some hop flavor.', 7, '', 4);

INSERT INTO reviews (review_text, user_id, image, rating)
VALUES('The Standard is always my beach beer Standard!', 8, '', 5);

INSERT INTO reviews (review_text, user_id, image, rating) 
VALUES('This has been my go-to pale ale every since I became acquainted with MadeWest.', 1, 'https://cdn.shopify.com/s/files/1/2653/8302/products/IMG_4656_1_540x.jpg?v=1569289539', 4);

INSERT INTO reviews (review_text, user_id, image, rating) 
VALUES('Love this west coast!! Notes of pineapple, melon, mango and stone fruit. Not too bitter and just really drinkable. Don''t change a thing MadeWest!', 2, 'https://cdn.shopify.com/s/files/1/2653/8302/products/Box_With_Ice_Pack_88ba34c1-7229-4dc7-b6b0-c895aceda5dd_900x.jpg?v=1631570420', 3);

INSERT INTO reviews (review_text, user_id, image, rating) 
VALUES ('Love this beer! I live in NorCal and have all their beers shipped to me. This one is my favorite so far.', 3, 'https://cdn.shopify.com/s/files/1/2653/8302/products/Guided_Smile_2_900x.jpg?v=1623885259', 3);

INSERT INTO reviews (review_text, user_id, image, rating) 
VALUES ('Ventura Light is the best and most refreshing light beer I have ever had especially when enjoying in a frosted glass!', 5, 'https://cdn.shopify.com/s/files/1/2653/8302/products/Ventura_Light_White_Background_1800x1800_2305d084-3745-4588-9460-2ce39f8a6078_1800x1800.jpg?v=1575926498', 5);

INSERT INTO reviews (review_text, user_id, image, rating) 
VALUES ('Tasting Notes: Tropical, Dank, Citrus.', 7, 'https://cdn.shopify.com/s/files/1/0278/5506/1057/products/ChiefPeakIPA_6pack_2021_WEB_900x.png?v=1633119433', 2);

INSERT INTO reviews (review_text, user_id, image, rating) 
VALUES ('Finally, you reach a clearing, the mist lifts, and there sits your reward: an icy can of Spectro Hazy IPA.', 8, 'https://cdn.shopify.com/s/files/1/0278/5506/1057/products/SpectroHazyIPA_6pack_2021_WEB_900x.png?v=1633119587', 1);

INSERT INTO reviews (review_text, user_id, image, rating) 
VALUES ('Reward: you sink into your hammock with a Dos Topas in hand and let the cool, crisp taste wash over you.', 9, 'https://cdn.shopify.com/s/files/1/0278/5506/1057/products/DosTopasLager_6pack_2021_WEB_900x.png?v=1633119493', 5);

INSERT INTO reviews (review_text, user_id, image, rating) 
VALUES ('Love this beer!', 1, 'https://cdn.shopify.com/s/files/1/0319/3965/7863/products/Pixie_1024x1024@2x.jpg?v=1649295680', 4);

INSERT INTO reviews (review_text, user_id, image, rating) 
VALUES ('This one is my favorite so far.', 2, 'https://cdn.shopify.com/s/files/1/0319/3965/7863/products/SugarBush_df63f737-fd9e-43e4-a29c-5c232860561b_110x110@2x.jpg?v=1649300479', 2);

INSERT INTO reviews (review_text, user_id, image, rating) 
VALUES ('A much-needed break from your usual “hazy” routine.', 7, 'https://craftpeak-cooler-images.imgix.net/poseidon-brewing-co/Airhog-Apricot-Poseidon-Brewing-Brand-Photography-14.jpg?auto=compress%2Cformat&fit=scale&h=900&ixlib=php-3.3.0&w=600&wpsize=tile&s=ab143985ad157d30e08edfbf14674f73', 5);

INSERT INTO reviews (review_text, user_id, image, rating) 
VALUES ('Best for Holiday parties, nights by the fire, and satisfying that sweet tooth.', 8, 'https://craftpeak-cooler-images.imgix.net/poseidon-brewing-co/Amphibious-Poseidon-Brewing-Co-Dec2018-023.jpg?auto=compress%2Cformat&fit=scale&h=900&ixlib=php-3.3.0&w=600&wpsize=tile&s=c04fdab17f60d5fe91f9a9ad0d480c52', 4);

-- BEER_REVIEWS

INSERT INTO beer_reviews (beer_id, review_id) VALUES(1, 1);
INSERT INTO beer_reviews (beer_id, review_id) VALUES(1, 2);
INSERT INTO beer_reviews (beer_id, review_id) VALUES(1, 3);
INSERT INTO beer_reviews (beer_id, review_id) VALUES(1, 4);
INSERT INTO beer_reviews (beer_id, review_id) VALUES(2, 5);
INSERT INTO beer_reviews (beer_id, review_id) VALUES(3, 6);
INSERT INTO beer_reviews (beer_id, review_id) VALUES(4, 7);
INSERT INTO beer_reviews (beer_id, review_id) VALUES(5, 8);
INSERT INTO beer_reviews (beer_id, review_id) VALUES(7, 9);
INSERT INTO beer_reviews (beer_id, review_id) VALUES(8, 10);
INSERT INTO beer_reviews (beer_id, review_id) VALUES(9, 11);
INSERT INTO beer_reviews (beer_id, review_id) VALUES(11, 12);
INSERT INTO beer_reviews (beer_id, review_id) VALUES(12, 13);
INSERT INTO beer_reviews (beer_id, review_id) VALUES(17, 14);
INSERT INTO beer_reviews (beer_id, review_id) VALUES(18, 15);

-- HOURS
INSERT INTO hours (day_id) VALUES ('1');
INSERT INTO hours (day_id) VALUES ('2');
INSERT INTO hours (day_id) VALUES ('3');
INSERT INTO hours (day_id) VALUES ('4');
INSERT INTO hours (day_id) VALUES ('5');
INSERT INTO hours (day_id) VALUES ('6');
INSERT INTO hours (day_id) VALUES ('7');
INSERT INTO hours (day_id) VALUES ('1');
INSERT INTO hours (day_id) VALUES ('2');
INSERT INTO hours (day_id) VALUES ('3');
INSERT INTO hours (day_id) VALUES ('4');
INSERT INTO hours (day_id) VALUES ('5');
INSERT INTO hours (day_id) VALUES ('6');
INSERT INTO hours (day_id) VALUES ('7');
INSERT INTO hours (day_id) VALUES ('1');
INSERT INTO hours (day_id) VALUES ('2');
INSERT INTO hours (day_id) VALUES ('3');
INSERT INTO hours (day_id) VALUES ('4');
INSERT INTO hours (day_id) VALUES ('5');
INSERT INTO hours (day_id) VALUES ('6');
INSERT INTO hours (day_id) VALUES ('7');
INSERT INTO hours (day_id) VALUES ('1');
INSERT INTO hours (day_id) VALUES ('2');
INSERT INTO hours (day_id) VALUES ('3');
INSERT INTO hours (day_id) VALUES ('4');
INSERT INTO hours (day_id) VALUES ('5');
INSERT INTO hours (day_id) VALUES ('6');
INSERT INTO hours (day_id) VALUES ('7');

-- BREWERIES_HOURS
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('1', '1');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('1', '2');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('1', '3');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('1', '4');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('1', '5');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('1', '6');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('1', '7');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('2', '8');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('2', '9');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('2', '10');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('2', '11');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('2', '12');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('2', '13');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('2', '14');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('3', '15');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('3', '16');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('3', '17');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('3', '18');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('3', '19');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('3', '20');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('3', '21');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('4', '22');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('4', '23');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('4', '24');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('4', '25');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('4', '26');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('4', '27');
INSERT INTO breweries_hours (brewery_id, hours_id) VALUES ('4', '28');

COMMIT TRANSACTION;