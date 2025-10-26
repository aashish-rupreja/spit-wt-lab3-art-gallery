PRAGMA foreign_keys = ON;

-- Categories
INSERT INTO category (name) VALUES
('Impressionism'),
('Renaissance'),
('Surrealism'),
('Expressionism'),
('Baroque'),
('Modern Art'),
('Cubism'),
('Pop Art');

-- Art and art_category associations
INSERT INTO art (art_name, artist_name, year, description, art_image) VALUES
('Starry Night', 'Vincent van Gogh', '1889', 'A famous painting of a swirling night sky.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/960px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg'),
('Water Lilies', 'Claude Monet', '1906', 'Beautiful pond with water lilies.', 'https://www.artic.edu/iiif/2/3c27b499-af56-f0d5-93b5-a7f2f1ad5813/full/843,/0/default.jpg'),
('Impression, Sunrise', 'Claude Monet', '1872', 'Inspired the name Impressionism.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Monet_-_Impression%2C_Sunrise.jpg/960px-Monet_-_Impression%2C_Sunrise.jpg'),
('Dance at Le Moulin de la Galette', 'Pierre-Auguste Renoir', '1876', 'A lively Parisian dance scene.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Auguste_Renoir_-_Dance_at_Le_Moulin_de_la_Galette_-_Mus%C3%A9e_d%27Orsay_RF_2739_%28derivative_work_-_AutoContrast_edit_in_LCH_space%29.jpg/960px-Auguste_Renoir_-_Dance_at_Le_Moulin_de_la_Galette_-_Mus%C3%A9e_d%27Orsay_RF_2739_%28derivative_work_-_AutoContrast_edit_in_LCH_space%29.jpg'),
('The Luncheon on the Grass', 'Édouard Manet', '1863', 'Controversial figures in a picnic.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Edouard_Manet_-_Luncheon_on_the_Grass_-_Google_Art_Project.jpg/960px-Edouard_Manet_-_Luncheon_on_the_Grass_-_Google_Art_Project.jpg'),
('Woman with a Parasol', 'Claude Monet', '1875', 'A woman walking in a windy field.', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Claude_Monet_-_Woman_with_a_Parasol_-_Madame_Monet_and_Her_Son_-_Google_Art_Project.jpg'),
('The Boulevard Montmartre', 'Camille Pissarro', '1897', 'Paris street scene in sunlight.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Boulevard_Montmartre-_Mardi_Gras_%28frameless%29.jpg/960px-Boulevard_Montmartre-_Mardi_Gras_%28frameless%29.jpg'),
('The Japanese Footbridge', 'Claude Monet', '1899', 'Bridge over lily pond in Giverny.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Japanese_Footbridge-Claude_Monet.jpg/960px-Japanese_Footbridge-Claude_Monet.jpg');

INSERT INTO art_category (art_id, category_id) VALUES
(1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1);

-- Renaissance art
INSERT INTO art (art_name, artist_name, year, description, art_image) VALUES
('Mona Lisa', 'Leonardo da Vinci', '1503', 'The iconic portrait with a mysterious smile.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg/500px-Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg'),
('The Last Supper', 'Leonardo da Vinci', '1498', 'Jesus and disciples at the last supper.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/The_Last_Supper_-_Leonardo_Da_Vinci_-_High_Resolution_32x16.jpg/960px-The_Last_Supper_-_Leonardo_Da_Vinci_-_High_Resolution_32x16.jpg'),
('The Birth of Venus', 'Sandro Botticelli', '1486', 'Venus emerging from the sea.', 'https://upload.wikimedia.org/wikipedia/commons/b/b0/Venus_botticelli_detail.jpg'),
('Primavera', 'Sandro Botticelli', '1482', 'Allegorical painting celebrating spring.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Botticelli-primavera.jpg/960px-Botticelli-primavera.jpg'),
('School of Athens', 'Raphael', '1511', 'Philosophers in a grand hall.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/%22The_School_of_Athens%22_by_Raffaello_Sanzio_da_Urbino.jpg/960px-%22The_School_of_Athens%22_by_Raffaello_Sanzio_da_Urbino.jpg'),
('David', 'Michelangelo', '1504', 'Famous marble sculpture of David.', 'https://www.emotionsinflorence.com/image/david_09.jpg'),
('The Creation of Adam', 'Michelangelo', '1512', 'Fresco on the Sistine Chapel ceiling.', 'https://upload.wikimedia.org/wikipedia/commons/3/39/Creation_of_Adam_%28Michelangelo%29_Detail.jpg'),
('Lady with an Ermine', 'Leonardo da Vinci', '1489', 'Portrait of Cecilia Gallerani.', 'https://upload.wikimedia.org/wikipedia/commons/b/bf/Lady_with_an_Ermine_-_Leonardo_da_Vinci_%28adjusted_levels%29.jpg');

INSERT INTO art_category (art_id, category_id) VALUES
(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2);

-- Surrealism art
INSERT INTO art (art_name, artist_name, year, description, art_image) VALUES
('The Persistence of Memory', 'Salvador Dalí', '1931', 'Surreal painting with melting clocks.', 'https://www.framedcanvasart.com/wp-content/uploads/2024/12/The-Persistence-of-Memory-Melting-Clocks-Painting-Salvador-Dali.jpg'),
('The Elephants', 'Salvador Dalí', '1948', 'Elephants with spindly legs.', 'https://en.topimpressionists.com/Art.nsf/O/5ZKEPN/$File/Salvador%20Dali%20-%20The%20Elephants%20.JPG'),
('Time Transfixed', 'René Magritte', '1938', 'Steam locomotive in a living room.', 'https://www.artic.edu/iiif/2/6a7160ea-df65-9083-c16c-33b30662208d/full/843,/0/default.jpg'),
('The Treachery of Images', 'René Magritte', '1929', 'This is not a pipe.', 'https://www.renemagritte.org/assets/img/paintings/the-treachery-of-images.jpg'),
('The Lovers', 'René Magritte', '1928', 'Couple kissing with covered faces.', 'https://www.stein-arts.com/cdn/shop/files/the-lovers-i-rene-magritte2_4b09c534-9e13-4d9e-a919-2088a572aa12.jpg?v=1744800925&width=720'),
('Swans Reflecting Elephants', 'Salvador Dalí', '1937', 'Double image painting.', 'https://www.posteramerica.com/cdn/shop/files/salvador-dali-swans-reflecting-elephants-poster-24-x-36-463_720x.jpg?v=1708027214'),
('Metamorphosis of Narcissus', 'Salvador Dalí', '1937', 'Narcissus reflected in water.', 'https://d3d00swyhr67nd.cloudfront.net/w944h944/collection/TATE/TATE/TATE_TATE_T02343_10-001.jpg'),
('Golconda', 'René Magritte', '1953', 'Men in bowler hats falling from the sky.', 'https://www.renemagritte.org/assets/img/paintings/golconda.jpg');

INSERT INTO art_category (art_id, category_id) VALUES
(17,3),(18,3),(19,3),(20,3),(21,3),(22,3),(23,3),(24,3);

-- Expressionism art
INSERT INTO art (art_name, artist_name, year, description, art_image) VALUES
('The Scream', 'Edvard Munch', '1893', 'Expressionist depiction of existential angst.', 'https://www.edvardmunch.org/assets/img/paintings/the-scream.jpg'),
('The Dance of Life', 'Edvard Munch', '1899', 'Dance scene with vivid colors.', 'https://www.edvardmunch.org/assets/img/paintings/the-dance-of-life.jpg'),
('Blue', 'Henri Matisse', '1907', 'Abstract figure in blue.', 'https://www.bernardchauveau.com/784-large_default/henri-matisse-the-blue-nudes.jpg'),
('Portrait of Wally', 'Egon Schiele', '1912', 'Raw expressionist portrait.', 'https://cdn.sanity.io/images/cxgd3urn/production/4167f6d572ea7c2dda354a2cdec037371e38e4f2-1600x1321.jpg?rect=0,1,1600,1320&w=640&h=528&q=85&fit=crop&auto=format'),
('Death and Life', 'Gustav Klimt', '1910', 'Colorful composition of figures.', 'https://upload.wikimedia.org/wikipedia/commons/1/18/Gustav_Klimt_-_Death_and_Life_-_Google_Art_Project.jpg'),
('The Large Blue Horses', 'Franz Marc', '1911', 'Stylized blue horses.', 'https://www.meisterdrucke.uk/kunstwerke/1000px/Franz%20Marc%20-%20Die%20groen%20blauen%20Pferde%20-%20%28MeisterDrucke-681344%29.jpg'),
('Self-Portrait with Physalis', 'Egon Schiele', '1912', 'Self-portrait of the artist.', 'https://www.arthistoryproject.com/site/assets/files/9115/egon_schiele_-_self_portrait_with_physalis_1912_32_2x39_8cm_leopold_museum.jpg'),
('The Yellow Christ', 'Paul Gauguin', '1889', 'Expressionist interpretation of Christ.', 'https://upload.wikimedia.org/wikipedia/commons/3/35/Gauguin_Il_Cristo_giallo.jpg');

INSERT INTO art_category (art_id, category_id) VALUES
(25,4),(26,4),(27,4),(28,4),(29,4),(30,4),(31,4),(32,4);

-- Baroque art
INSERT INTO art (art_name, artist_name, year, description, art_image) VALUES
('Girl with a Pearl Earring', 'Johannes Vermeer', '1665', 'Portrait of a girl with a pearl earring.', 'https://cdn.britannica.com/33/194733-050-4CF75F31/Girl-with-a-Pearl-Earring-canvas-Johannes-1665.jpg'),
('The Night Watch', 'Rembrandt van Rijn', '1642', 'Militia company in dramatic lighting.', 'https://smarthistory.org/wp-content/uploads/2022/07/SK-C-5.jpg'),
('Judith Slaying Holofernes', 'Artemisia Gentileschi', '1614', 'Dramatic biblical scene.', 'https://www.datocms-assets.com/103094/1688661508-1506165873655660-artemisia-giuditta-principale.jpg?auto=format%2Ccompress&cs=srgb&max-w=800%202344w'),
('The Calling of Saint Matthew', 'Caravaggio', '1600', 'Tenebrism lighting on Matthew.', 'https://primematters.com/sites/default/files/styles/article/public/2020-08/caravaggio-the-calling-of-st-matthew-1200x800-wikimedia-public-domain%20%281%29.jpg?h=10d202d3&itok=ie14dxvF'),
('David with the Head of Goliath', 'Caravaggio', '1610', 'Dramatic biblical scene.', 'https://www.caravaggio.org/assets/img/paintings/david-with-the-head-of-goliath.jpg'),
('Las Meninas', 'Diego Velázquez', '1656', 'Court scene with princess.', 'https://cdn.britannica.com/70/239470-138-AABC2F15/Diego-Velazquez-Las-Meninas.jpg?w=800&h=450&c=crop'),
('The Triumph of Bacchus', 'Diego Velázquez', '1629', 'Bacchus celebrating wine.', 'https://upload.wikimedia.org/wikipedia/commons/5/5d/Vel%C3%A1zquez_-_El_Triunfo_de_Baco_o_Los_Borrachos_%28Museo_del_Prado%2C_1628-29%29.jpg'),
('The Supper at Emmaus', 'Caravaggio', '1601', 'Biblical scene with dramatic lighting.', 'https://upload.wikimedia.org/wikipedia/commons/4/4d/1602-3_Caravaggio%2CSupper_at_Emmaus_National_Gallery%2C_London.jpg');

INSERT INTO art_category (art_id, category_id) VALUES
(33,5),(34,5),(35,5),(36,5),(37,5),(38,5),(39,5),(40,5);

-- Modern Art
INSERT INTO art (art_name, artist_name, year, description, art_image) VALUES
('Composition VII', 'Wassily Kandinsky', '1913', 'Abstract composition of color and form.', 'https://upload.wikimedia.org/wikipedia/commons/b/b4/Vassily_Kandinsky%2C_1913_-_Composition_7.jpg'),
('Broadway Boogie Woogie', 'Piet Mondrian', '1942', 'Geometric abstraction inspired by NYC.', 'https://upload.wikimedia.org/wikipedia/commons/3/30/Piet_Mondrian%2C_1942_-_Broadway_Boogie_Woogie.jpg'),
('Campbell’s Soup Cans', 'Andy Warhol', '1962', 'Pop art of iconic soup cans.', 'https://upload.wikimedia.org/wikipedia/commons/a/a3/Campbell%27s_Soup_Cans_by_Andy_Warhol.jpg'),
('Number 1, 1949', 'Jackson Pollock', '1949', 'Drip painting technique.', 'https://www.moca.org/storage/app/uploads/public/55e/775/674/55e7756742d54596051573.jpg'),
('Les Demoiselles d’Avignon', 'Pablo Picasso', '1907', 'Cubist representation of women.', 'https://i.ytimg.com/vi/XyLNPumMMTs/maxresdefault.jpg'),
('The Persistence of Memory II', 'Salvador Dalí', '1932', 'Variation on melting clocks.', 'https://images.squarespace-cdn.com/content/v1/5ea4750cc6398826cb1a9a37/1729505984994-0G7AN3AMRKHZFRXZY2JY/The-Persistence-of-Memory-enhanced.png'),
('The Treachery of Images II', 'René Magritte', '1930', 'Variation on "This is not a pipe".', 'https://fineartmultiple.com/media/blog/475/magritte_la_lampe_philosophique_1936.jpg'),
('Black Square', 'Kazimir Malevich', '1915', 'Suprematist abstract painting.', 'https://upload.wikimedia.org/wikipedia/commons/d/dc/Kazimir_Malevich%2C_1915%2C_Black_Suprematic_Square%2C_oil_on_linen_canvas%2C_79.5_x_79.5_cm%2C_Tretyakov_Gallery%2C_Moscow.jpg');

INSERT INTO art_category (art_id, category_id) VALUES
(41,6),(42,6),(43,6),(44,6),(45,6),(46,6),(47,6),(48,6);

-- Cubism
INSERT INTO art (art_name, artist_name, year, description, art_image) VALUES
('Les Demoiselles d’Avignon', 'Pablo Picasso', '1907', 'Groundbreaking cubist work depicting five women.', 'https://www.pablo-ruiz-picasso.net/images/works/3249.jpg'),
('Violin and Candlestick', 'Georges Braque', '1910', 'Cubist still life with fragmented shapes.', 'https://www.georgesbraque.org/assets/img/paintings/violin-and-candlestick.jpg'),
('Girl with a Mandolin', 'Pablo Picasso', '1910', 'Early analytic cubism painting.', 'https://upload.wikimedia.org/wikipedia/en/1/1c/Pablo_Picasso%2C_1910%2C_Girl_with_a_Mandolin_%28Fanny_Tellier%29%2C_oil_on_canvas%2C_100.3_x_73.6_cm%2C_Museum_of_Modern_Art_New_York..jpg'),
('The Portuguese', 'Georges Braque', '1911', 'Cubist depiction of a man playing a guitar.', 'https://smarthistory.org/wp-content/uploads/2021/12/Braque-The-Portuguese-sm-scaled.jpg'),
('Man with a Guitar', 'Juan Gris', '1915', 'Cubist portrait with geometric forms.', 'https://arthive.com/res/media/img/oy1000/work/a66/534784.webp'),
('Bottle and Fishes', 'Georges Braque', '1910', 'Still life with geometric abstraction.', 'https://emuseum.toledomuseum.org/internal/media/dispatcher/61284/preview'),
('Houses at L’Estaque', 'Georges Braque', '1908', 'Landscape painted in cubist style.', 'https://upload.wikimedia.org/wikipedia/en/a/ad/Georges_Braque%2C_1908%2C_Maisons_et_arbre%2C_oil_on_canvas%2C_40.5_x_32.5_cm%2C_Lille_M%C3%A9tropole_Museum_of_Modern%2C_Contemporary_and_Outsider_Art.jpg'),
('Seated Woman', 'Pablo Picasso', '1910', 'Fragmented depiction of a seated woman.', 'https://www.pablopicasso.org/assets/img/paintings/seated-woman.jpg');

INSERT INTO art_category (art_id, category_id) VALUES
(49,7),(50,7),(51,7),(52,7),(53,7),(54,7),(55,7),(56,7);

-- Pop Art
INSERT INTO art (art_name, artist_name, year, description, art_image) VALUES
('Campbell’s Soup Cans', 'Andy Warhol', '1962', 'Pop art of iconic soup cans.', 'https://upload.wikimedia.org/wikipedia/commons/a/a3/Campbell%27s_Soup_Cans_by_Andy_Warhol.jpg'),
('Marilyn Diptych', 'Andy Warhol', '1962', 'Portraits of Marilyn Monroe using silkscreen.', 'https://www.singulart.com/blog/wp-content/uploads/2024/02/Marilyn-Diptych.jpg'),
('Hopeless', 'Roy Lichtenstein', '1963', 'Comic-style painting with speech bubble.', 'https://images.auctionet.com/thumbs/large_item_1955764_9efbd6dcb3.jpg'),
('Whaam!', 'Roy Lichtenstein', '1963', 'Explosion scene in comic book style.', 'https://media.mutualart.com/Images//2022_01/07/20/204904437/9ba18bba-a5bb-47d7-95ab-2e8abde4aa6c.Jpeg'),
('I was a Rich Man’s Plaything', 'Eduardo Paolozzi', '1947', 'Collage-based pop art work.', 'https://www.goldmarkart.com/cdn/shop/products/25a.jpg?v=1640793411&width=1024'),
('Just what is it that makes today’s homes...', 'Richard Hamilton', '1956', 'Collage considered one of first Pop Art works.', 'https://i.ebayimg.com/thumbs/images/g/W1EAAOSwTOhnA6E5/s-l1200.jpg'),
('Drowning Girl', 'Roy Lichtenstein', '1963', 'Comic-inspired dramatic scene.', 'https://www.singulart.com/images/artworks/v2/cropped/36496/main/zoom/2108163_fb58c4b70bbb1823f447a8361f952691.jpeg'),
('Green Coca-Cola Bottles', 'Andy Warhol', '1962', 'Repetition of Coke bottles in pop art style.', 'https://live.staticflickr.com/5754/22163243314_75f8df60b6_c.jpg');

INSERT INTO art_category (art_id, category_id) VALUES
(57,8),(58,8),(59,8),(60,8),(61,8),(62,8),(63,8),(64,8);


INSERT INTO event (event_name, event_type, venue, event_datetime, event_description, event_thumbnail_url) VALUES
(
    'Impressions of Light: A Contemporary Take on Impressionism',
    'Exhibition',
    'Luna Art Gallery, New York',
    '2025-11-08 18:00:00',
    'An immersive exhibition exploring how modern artists reinterpret Impressionism through digital and mixed media. Featuring works by 15 international painters.',
    'https://example.com/thumbnails/impressions-of-light.jpg'
),
(
    'Meet the Artist: Clara Voss on Abstract Forms',
    'Artist Talk',
    'The Atrium Gallery, Chicago',
    '2025-11-15 14:30:00',
    'Join renowned abstract artist Clara Voss as she discusses her creative process, inspirations, and the philosophy behind her latest collection, “Fluid Dimensions.”',
    'https://example.com/thumbnails/clara-voss-talk.jpg'
),
(
    'Gallery Opening Night: The Spectrum Collection',
    'Opening Reception',
    'Spectrum Contemporary, Los Angeles',
    '2025-11-22 19:00:00',
    'Celebrate the grand opening of Spectrum Contemporary with a showcase of vibrant color theory and interactive light installations. Complimentary cocktails served.',
    'https://example.com/thumbnails/spectrum-opening.jpg'
),
(
    'Art & Wine: Modern Minimalism',
    'Workshop',
    'Canvas Collective, San Francisco',
    '2025-12-03 17:00:00',
    'A guided workshop exploring minimalism in art, featuring a tasting of regional wines. Materials provided; beginners welcome.',
    'https://example.com/thumbnails/art-wine-minimalism.jpg'
),
(
    'Beyond the Frame: Women Photographers in Focus',
    'Exhibition',
    'Nova Gallery, London',
    '2025-12-10 10:00:00',
    'A thought-provoking photography exhibition highlighting the work of emerging women photographers from around the globe.',
    'https://example.com/thumbnails/women-photographers.jpg'
),
(
    'Live Art Performance: The Sound of Color',
    'Performance',
    'Echo Arts Space, Berlin',
    '2025-12-18 20:00:00',
    'An experimental fusion of painting and sound, where artists create live visual works in response to improvised music.',
    'https://example.com/thumbnails/sound-of-color.jpg'
);
