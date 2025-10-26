INSERT INTO category (name) VALUES
('Impressionism'),
('Renaissance'),
('Surrealism'),
('Expressionism'),
('Baroque'),
('Modern Art'),
('Cubism'),
('Pop Art');


INSERT INTO art (art_name, artist_name, year, description) VALUES
('Starry Night', 'Vincent van Gogh', '1889', 'A famous painting of a swirling night sky.'),
('Water Lilies', 'Claude Monet', '1906', 'Beautiful pond with water lilies.'),
('Impression, Sunrise', 'Claude Monet', '1872', 'Inspired the name Impressionism.'),
('Dance at Le Moulin de la Galette', 'Pierre-Auguste Renoir', '1876', 'A lively Parisian dance scene.'),
('The Luncheon on the Grass', 'Édouard Manet', '1863', 'Controversial nude figures in a picnic.'),
('Woman with a Parasol', 'Claude Monet', '1875', 'A woman walking in a windy field.'),
('The Boulevard Montmartre', 'Camille Pissarro', '1897', 'Paris street scene in sunlight.'),
('The Japanese Footbridge', 'Claude Monet', '1899', 'Bridge over lily pond in Giverny.');

INSERT INTO art_category (art_id, category_id) VALUES
(1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1);


INSERT INTO art (art_name, artist_name, year, description) VALUES
('Mona Lisa', 'Leonardo da Vinci', '1503', 'The iconic portrait with a mysterious smile.'),
('The Last Supper', 'Leonardo da Vinci', '1498', 'Jesus and disciples at the last supper.'),
('The Birth of Venus', 'Sandro Botticelli', '1486', 'Venus emerging from the sea.'),
('Primavera', 'Sandro Botticelli', '1482', 'Allegorical painting celebrating spring.'),
('School of Athens', 'Raphael', '1511', 'Philosophers in a grand hall.'),
('David', 'Michelangelo', '1504', 'Famous marble sculpture of David.'),
('The Creation of Adam', 'Michelangelo', '1512', 'Fresco on the Sistine Chapel ceiling.'),
('Lady with an Ermine', 'Leonardo da Vinci', '1489', 'Portrait of Cecilia Gallerani.');

INSERT INTO art_category (art_id, category_id) VALUES
(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2);


INSERT INTO art (art_name, artist_name, year, description) VALUES
('The Persistence of Memory', 'Salvador Dalí', '1931', 'Surreal painting with melting clocks.'),
('The Elephants', 'Salvador Dalí', '1948', 'Elephants with spindly legs.'),
('Time Transfixed', 'René Magritte', '1938', 'Steam locomotive in a living room.'),
('The Treachery of Images', 'René Magritte', '1929', 'This is not a pipe.'),
('The Lovers', 'René Magritte', '1928', 'Couple kissing with covered faces.'),
('Swans Reflecting Elephants', 'Salvador Dalí', '1937', 'Double image painting.'),
('Metamorphosis of Narcissus', 'Salvador Dalí', '1937', 'Narcissus reflected in water.'),
('Golconda', 'René Magritte', '1953', 'Men in bowler hats falling from the sky.');

INSERT INTO art_category (art_id, category_id) VALUES
(17,3),(18,3),(19,3),(20,3),(21,3),(22,3),(23,3),(24,3);


INSERT INTO art (art_name, artist_name, year, description) VALUES
('The Scream', 'Edvard Munch', '1893', 'Expressionist depiction of existential angst.'),
('The Dance of Life', 'Edvard Munch', '1899', 'Dance scene with vivid colors.'),
('Blue Nude', 'Henri Matisse', '1907', 'Abstract nude figure in blue.'),
('Portrait of Wally', 'Egon Schiele', '1912', 'Raw expressionist portrait.'),
('Death and Life', 'Gustav Klimt', '1910', 'Colorful composition of figures.'),
('The Large Blue Horses', 'Franz Marc', '1911', 'Stylized blue horses.'),
('Self-Portrait with Physalis', 'Egon Schiele', '1912', 'Self-portrait of the artist.'),
('The Yellow Christ', 'Paul Gauguin', '1889', 'Expressionist interpretation of Christ.');

INSERT INTO art_category (art_id, category_id) VALUES
(25,4),(26,4),(27,4),(28,4),(29,4),(30,4),(31,4),(32,4);


INSERT INTO art (art_name, artist_name, year, description) VALUES
('Girl with a Pearl Earring', 'Johannes Vermeer', '1665', 'Portrait of a girl with a pearl earring.'),
('The Night Watch', 'Rembrandt van Rijn', '1642', 'Militia company in dramatic lighting.'),
('Judith Slaying Holofernes', 'Artemisia Gentileschi', '1614', 'Dramatic biblical scene.'),
('The Calling of Saint Matthew', 'Caravaggio', '1600', 'Tenebrism lighting on Matthew.'),
('David with the Head of Goliath', 'Caravaggio', '1610', 'Dramatic biblical scene.'),
('Las Meninas', 'Diego Velázquez', '1656', 'Court scene with princess.'),
('The Triumph of Bacchus', 'Diego Velázquez', '1629', 'Bacchus celebrating wine.'),
('The Supper at Emmaus', 'Caravaggio', '1601', 'Biblical scene with dramatic lighting.');

INSERT INTO art_category (art_id, category_id) VALUES
(33,5),(34,5),(35,5),(36,5),(37,5),(38,5),(39,5),(40,5);


INSERT INTO art (art_name, artist_name, year, description) VALUES
('Composition VII', 'Wassily Kandinsky', '1913', 'Abstract composition of color and form.'),
('Broadway Boogie Woogie', 'Piet Mondrian', '1942', 'Geometric abstraction inspired by NYC.'),
('Campbell’s Soup Cans', 'Andy Warhol', '1962', 'Pop art of iconic soup cans.'),
('Number 1, 1949', 'Jackson Pollock', '1949', 'Drip painting technique.'),
('Les Demoiselles d’Avignon', 'Pablo Picasso', '1907', 'Cubist representation of women.'),
('The Persistence of Memory II', 'Salvador Dalí', '1932', 'Variation on melting clocks.'),
('The Treachery of Images II', 'René Magritte', '1930', 'Variation on "This is not a pipe".'),
('Black Square', 'Kazimir Malevich', '1915', 'Suprematist abstract painting.');

INSERT INTO art_category (art_id, category_id) VALUES
(41,6),(42,6),(43,6),(44,6),(45,6),(46,6),(47,6),(48,6);


INSERT INTO art (art_name, artist_name, year, description) VALUES
('Les Demoiselles d’Avignon', 'Pablo Picasso', '1907', 'Groundbreaking cubist work depicting five nude women.'),
('Violin and Candlestick', 'Georges Braque', '1910', 'Cubist still life with fragmented shapes.'),
('Girl with a Mandolin', 'Pablo Picasso', '1910', 'Early analytic cubism painting.'),
('The Portuguese', 'Georges Braque', '1911', 'Cubist depiction of a man playing a guitar.'),
('Man with a Guitar', 'Juan Gris', '1915', 'Cubist portrait with geometric forms.'),
('Bottle and Fishes', 'Georges Braque', '1910', 'Still life with geometric abstraction.'),
('Houses at L’Estaque', 'Georges Braque', '1908', 'Landscape painted in cubist style.'),
('Seated Woman', 'Pablo Picasso', '1910', 'Fragmented depiction of a seated woman.');

INSERT INTO art_category (art_id, category_id) VALUES
(49,7),(50,7),(51,7),(52,7),(53,7),(54,7),(55,7),(56,7);


INSERT INTO art (art_name, artist_name, year, description) VALUES
('Campbell’s Soup Cans', 'Andy Warhol', '1962', 'Series of soup can paintings.'),
('Marilyn Diptych', 'Andy Warhol', '1962', 'Portraits of Marilyn Monroe using silkscreen.'),
('Hopeless', 'Roy Lichtenstein', '1963', 'Comic-style painting with speech bubble.'),
('Whaam!', 'Roy Lichtenstein', '1963', 'Explosion scene in comic book style.'),
('I was a Rich Man’s Plaything', 'Eduardo Paolozzi', '1947', 'Collage-based pop art work.'),
('Just what is it that makes today’s homes...', 'Richard Hamilton', '1956', 'Collage considered one of first Pop Art works.'),
('Drowning Girl', 'Roy Lichtenstein', '1963', 'Comic-inspired dramatic scene.'),
('Green Coca-Cola Bottles', 'Andy Warhol', '1962', 'Repetition of Coke bottles in pop art style.');

INSERT INTO art_category (art_id, category_id) VALUES
(57,8),(58,8),(59,8),(60,8),(61,8),(62,8),(63,8),(64,8);