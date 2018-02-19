--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: status; Type: TABLE; Schema: public; Owner: cromero; Tablespace: 
--

CREATE TABLE status (
    vname text NOT NULL,
    vint bigint DEFAULT 0,
    vstring text DEFAULT ''::text
);


ALTER TABLE public.status OWNER TO cromero;

--
-- Name: trivia_questions_and_answers; Type: TABLE; Schema: public; Owner: cromero; Tablespace: 
--

CREATE TABLE trivia_questions_and_answers (
    id bigint NOT NULL,
    question text NOT NULL,
    answer text NOT NULL,
    hints text DEFAULT ''::text,
    mark integer DEFAULT 0
);


ALTER TABLE public.trivia_questions_and_answers OWNER TO cromero;

--
-- Name: trivia_questions_and_answers_id_seq; Type: SEQUENCE; Schema: public; Owner: cromero
--

CREATE SEQUENCE trivia_questions_and_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trivia_questions_and_answers_id_seq OWNER TO cromero;

--
-- Name: trivia_questions_and_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cromero
--

ALTER SEQUENCE trivia_questions_and_answers_id_seq OWNED BY trivia_questions_and_answers.id;


--
-- Name: trivia_scores; Type: TABLE; Schema: public; Owner: cromero; Tablespace: 
--

CREATE TABLE trivia_scores (
    id text NOT NULL,
    score integer DEFAULT 0 NOT NULL,
    nick text NOT NULL,
    vote_skip integer DEFAULT 0,
    vote_hint integer DEFAULT 0
);


ALTER TABLE public.trivia_scores OWNER TO cromero;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cromero
--

ALTER TABLE ONLY trivia_questions_and_answers ALTER COLUMN id SET DEFAULT nextval('trivia_questions_and_answers_id_seq'::regclass);


--
-- Data for Name: status; Type: TABLE DATA; Schema: public; Owner: cromero
--

COPY status (vname, vint, vstring) FROM stdin;
trivia_count	0	
trivia_skip	0	
trivia_key	2379	
trivia_time	1519063984033	
trivia_hint_level	0	
\.


--
-- Data for Name: trivia_questions_and_answers; Type: TABLE DATA; Schema: public; Owner: cromero
--

COPY trivia_questions_and_answers (id, question, answer, hints, mark) FROM stdin;
1	Juliet 'i melt with you' was which band's signature hit released on their 'after the snow' album in 1982	Modern english		0
2	"Honolulu" means _____________	Sheltered harbor		0
3	How many gallons of fuel does a jumbo jet use during take off?	Four thousand		0
4	In the game of cricket which bird name means scoring no runs 	Duck 		0
5	With which singer did Westlife record a version of Against all Odds in 2000?	Mariah Carey		0
6	In 1951 Howard Hawks Produced The Thing. Who Directed The 1982 remake, Starring Kurt Russell 	John Carpenter 		0
7	The Paris stock exchange	Bourse		0
8	What amendment to the u.s. constitution ended prohibition 	The twenty first 		0
9	What game of chance was originally called 'Beano'	Bingo		0
10	Where Did Napoleon Bonaparte Die In Exile? 	St Helena 		0
11	The eggs of this sturgeon are the preferred form of caviar.	Beluga		0
12	What is the motto of the three muskateers	All for one & one for all		0
13	What is the flower that stands for: a heart ignorant of love	White rosebud		0
14	What nationality was the sculpture Brancusi	Romanian		0
15	Charles Darrow based his game upon the 1904 "The Landlord's Game".	Monopoly		0
16	Who sang "I Want My MTV" on the Dire Straits song "Money For Nothing"?	Sting		0
17	What country did poinsettias originally come from? (Mexico,Us, Spain ,Brazil) 	Mexico 		0
18	Who Starred As Cole Porter In The 1945 Film Night & Day	Cary Grant		0
19	Before Hitting The Big Time As A Singer & Tv Personality What Was "Perry Como's " Profession	A Barber / Hair Dresser		0
20	What was finally a top ten hit for Ce Ce Peniston on its 1992 Re-Release	Finally		0
21	Seventeen thousand how many camels carried the 117,000 volumes of abdul kassem ismael's library	400		0
22	Under Michigan State law who are officially classed mechanics	Dentists		0
23	Medieval monks invented this stopper, necessary for champagne	Cork		0
24	In the body luteinizing hormone is produced by what gland	Pituitary		0
25	What colour is chablis? 	White 		0
26	Football: The Denver ____?	Broncos		0
27	What are the stars in traditional Cornish Star Gazey pie	Pilchards eyes		0
28	What is raku	Japanese pottery		0
29	Proverbially it was a bold man who  first ate what	An Oyster		0
30	Where is the oldest distillery in the world? 	The Old Bushmills, Cty Antrim 		0
31	What countries days include Fire day, Water day and wood day	Japan Tue Wed Thu		0
32	In golf what would you put in your shag bag	Practice Balls		0
33	Constance Markiewicz, Became The Worlds First Ever What In 1918?	First British Female MP		0
34	Which Modern Gymnastics Event Made Its First Appearance At The 2000 Sydney Olympics 	Trampolining 		0
35	Burning potassium has what colour flame	Purple		0
36	Who directed the monochrome (sepia) sequences at the beginning and end of "the wizard of oz" (1939)	King vidor		0
37	Who Became premier of Cuba in 1959. 	Fidel Castro 		0
38	According to the song what did my true love give to me on the fifth day of Christmas 	Five Gold Rings 		0
39	What is the cap on the fire hydrant called	Bonnet		0
40	What is the capital of Philippines ?	Manila		0
41	Who Originated The Uncertainty Principle 	Heisenberg 		0
42	What dodgers and cubs first-baseman dropped baseball to take up actin	Chuck		0
43	Which usical instrument was invented by Henry Schluter?	Vibraphone		0
44	How long is a silver anniversary	25 years		0
45	Johnny Marr Teamed Up With Which Former New Order Member To Form The Band Electronic	Bernard Sumner		0
46	Test of metal or ore for ingredients and quality	Assay		0
47	What is a woolly bear	Caterpillar		0
48	What is the name of the telescope that was placed in orbit in the eighties?	Hubble		0
49	Where was The Beast, the first mobile robot, developed	Johns hopkins		0
50	The province of Alberta in Canada has been completely free of rats since what year	1905		0
51	Arlanda is the airport which serves which European city	Stockholm		0
52	What Group Did Nick Cave Sing With Before Forming The Bad Seeds	The Birthday Party		0
53	Sound Navigation Ranging is better known as _________.	Sonar		0
54	What is a group of geese called	Gaggle		0
55	Which Music Festival Was Attended By Over 400,000 People In 1969	Woodstock		0
56	The last Nascar driver to serve jail time for running moonshine was who	Buddy arrington		0
57	Which Capital City Is Home To "Carrasco" International Airport	Montevideo (Uruguay)		0
58	The worlds what museum is at 19 Green belt North York Ontario	Contraceptive		0
59	What is hippopotomonstrosesquippedaliophobia the fear of?	Long words		0
60	In the game of chess, which piece has the most freedom to move?	Queen		0
61	What Is The Function Of The Thyroid Gland 	To Regulate Growth & The Metabolism 		0
62	Who Claimed That "Mama Gave Birth To The Soul Children"	Queen Latifah		0
63	Singapore banned which popular western foodstuff because of litter implicatons? 	Chewing Guim 		0
64	Metal framework on a vehicle to protect it in the event of a collision with a large animal	Bull bar		0
65	What is a Bellwether	Leader of flock of sheep		0
66	As what is 'South West Township' known in south africa	Soweto		0
67	What is the most important mineral for strong bones & teeth	Calcium		0
68	What asian leader was known as the little brown saint 	Mahatma gandhi 		0
69	Of who did the u.s postal service print 500 million stamps in 1993	Elvis		0
70	What is 'bountiful mother' in latin	Alma mater		0
71	What was the name of john lennon and cynthia lennon's son	Sean		0
72	Lake Vanern is the largest lake in which country	Sweden		0
73	What is the missing word in english with the letter combination 'uu' vacuum, muumuu, continuum, residuum, duumvir	Duumvirate		0
74	Who was the ruler of the USSR from 1917-22? 	Vladimir Lenin 		0
75	Isolophobia is the fear of	Solitude, being alone		0
76	What Did Jesse Reno Invent Using Traditional Conveyor Belt Principles To Pull Folding Steps Up A Slope 	The Escalator 		0
77	Name the wife of King Ahab, who Jehu ordered to be thrown to her death from a window	Jezebel		0
78	If not Shakespeare what links Juliet Cleopatra Mark Antony	Commit Suicide		0
79	Who was the first person to prove that planets move in elliptical orbits	Kepler		0
80	Who was the first black mayor of Chicago?	Harold Washington		0
81	Who Won The US Open Men's *Tennis * Title in 1990 At The Age Of Just 19? 	Pete Sampras 		0
82	Which architect designed London's tallest building The Shard?	Renzo Piano		0
83	Which meteorological phenomena means "a curl of hair" in Latin	Cirrus - clouds		0
84	Originally a Toss Pot did a lot of what	Drinking - Alcohol		0
85	What country is Men Without Hats originally from?	Canada		0
86	What group was Ringo with before the Beatles?	Rory Storm and the Hurricanes		0
87	What Did Bruce Willis, Harvey Keitel & Winston Churchill All have to overcome?	Stutters / Stammers		0
88	What 3 ingredients make a sidecar cocktail	Brandy Cointreau Lemon juice		0
89	Anna Maria Louisa Italiano changed her name to what	Anne Bancroft		0
90	An Aficionado originally followed what sport	Bullfighting		0
91	Which is the largest of the Canary Islands? 	Tenerife 		0
92	The land that would eventually be known as oklahoma was part of the what in 1803 	Louisiana purchase. 		0
93	Which U.S. boxer was known as 'The Manessa Mauler'	Jack dempsey		0
94	Who Had Minor Hits With "Dogs Of Lust", "Slow Emotion Replay" And "Dis -Infected" EP	The The		0
95	What does a Stupprator prefer sexually	Virgins		0
96	An elephant has 400000 what in its trunk	Muscles		0
97	The Zagros mountain range is in which country	Iran		0
98	What is the highest mountain in the Appalachian range?	Mt. Mitchell		0
99	In South Korea traffic police must report what	Tourists bribes taken		0
100	What does SALT stand for	Strategic arms limitation treaty		0
101	Which chemical element has the atomic number 4?	Berylium		0
102	Who had a hit no 5 in US 1971 with Bridge over Troubled Water	Aretha Franklin		0
103	William the First was crowned on Christmas day, but in what year 	1066 		0
104	What country covers an entire continent	Australia		0
105	In which film did Donna Summer make her debut as an aspiring disco singer?	Thank God It's Friday		0
106	Who was responsible for driving the english out of scotland in 1297	William		0
107	Which duo released albums called Introspective and Very?	Pet Shop Boys		0
108	What is the front of a saddle called?	Pommel		0
109	Fried Chicken Strawberry Shortcake trad Xmas eve meal where	Japan		0
110	U.S. Captials - Michigan	Lansing		0
111	Which epic film was based on a novel by Lew Wallace	Ben hur		0
112	What are the young of a rabbit called	Kittens		0
113	Paul wrote "Martha My Dear". Who did he know who was named Martha?	His Dog		0
114	Who filled in for Ringo on the Beatles' 1964 world tour?	Jimmy Nicol		0
115	What planet did Alf come from?	Melmac		0
116	Who wrote dionne warwick's 'walk on by' and 'say a little prayer'	Burt		0
117	What is the technical difference between rowing and sculling	Rowing means using a single oar		0
118	Outside poland, where is the largest polish population	Chicago		0
119	In The Film Saving Private Ryan What Was Private Ryan's First Name?	James		0
120	What song won the grammy for "song of the year" in 1977	You light up my		0
121	Which Band From Manchester Incluides The Former Entertainments Manager From The Hacienda (Nightclub)	M People		0
122	How did George II die	Fell off toilet		0
123	Electric, Perse and smalt shades of which colour	Blue		0
124	Every day in the US people steal $20000 from where	Vending machines		0
125	Who wrote "The Picture of Dorian Grey"	Oscar wilde		0
126	Indiana jones: who was known to get lost in his own museum	Marcus brody		0
127	In Which Childrens TV Show Will You Find The Characters Of "Florrie & Baby Pom"	The Fimbles		0
128	Mr Chips said goodbye from Brookfield school - What subject	Latin		0
129	Where is the worlds largest mine	Carletonville South Africa		0
130	Florence Nightingale tended the soldiers in which war	Crimean		0
131	What is the name of the cord joining a mother & her unborn child	Umbilical cord		0
132	What Is Joseph Cyril Bamfords Claim To Fame?	The JCB Earth Mover		0
133	The name for this semi-precious stone comes from the Latin for "sea water"	Aquamarine		0
134	What Name Appears In The Title Of Both A Beatles Hit And A Novel By ThomasHardy?	Jude		0
135	An atom is comprized of these 3 subatomic particles: electron, neutron, & _____	Proton		0
136	Which Group Comprises Of Colin Angus And Mr C	The Shamen		0
137	What are the colours of the Olympics rings (in order).?	Blue Yellow Black Green Red		0
138	Who Was The First Woman To Appear Naked On The Front Cover Of The Radio Times	Helen Mirren		0
139	What was known as the spice island	Zanzibar		0
140	In which county is Charnwood Forest	Leicestershire		0
141	What is the name of the Tokyo Stock Market Index	Nikkei		0
142	In The Pilgrim's Progress, which city of Christian's final destination	Celestial city		0
143	What Do You Get If A Male Donkey Breeds With A Horse? 	A Mule 		0
144	How Many Suits Are There In A Game Of (Mah Jong) 	3 Suits 		0
145	Who released the following album 'Strange brew ' 	Cream 		0
146	What is the derivative of sin x	Cos x		0
147	What name is given to the fraction part of a logarithm number?	Mantissa		0
148	Ralph Freeman designed which Australian landmark	Sydney harbour bridge		0
149	In Wonderland, Who Took A Watch Out Of His Waistcoat Pocket Only To Discover That He Was Late 	The White Rabbit 		0
150	What animals teeth were used as knife blades by the Indians	Beaver		0
151	In The Film 'Halloween' For How Many Years Was The Killer Locked Up In An Asylum Before He Escaped 	15 Years 		0
152	Norman Bean became famous as which author	Edgar Rice Burroughs		0
153	In which tv series does fred savage play kevin arnold	The wonder years		0
154	The valuable blue form of corundum is called:	Sapphire		0
155	 It takes approximately 69,000 venom extractions from the __________	To fill a 1_pint container. coral snake		0
156	What are people encouraged to kiss under	Mistletoe		0
157	In Islington in London it’s a £50 fine for sleeping where	The Public Library		0
158	If a dish is served pomontier what does it contain	Potatoes		0
159	What Describes A Person With No Skin Pigment 	An Albino 		0
160	Which Of These People Is The Shortest "Jarvis Cocker, Micheal Stipe Or Nicky Wire"	Michael Stipe		0
161	Creedence clearwater revival sings 'have you ever ______'	Seen the rain		0
162	In the tv series 'leave it to beaver', what was wally's best friend's name	Eddie haskell		0
163	In Boxing Who Suffered Defeats To Tim Witherspoon, Mike Tyson & Lennox Lewis 	Frank Bruno 		0
164	In 'Bridget Jones Diary'', Bridget Jones makes a New Years Resolution, to sort out her life, meet a man and keep a diary, but who played Bridget Jones 	Renée Zellweger 		0
165	What fashion designers symbol is a swan	Gloria Vanderbilt		0
166	In which English town or city would you find The Christmas Steps	Bristol		0
167	On which river is Rome located	Tiber		0
168	96% of American children can recognise - who	Ronald MacDonald		0
169	 The female American Oyster lays an average of 500 million eggs per year. Usually only one oyster out of the bunch reaches __________	Maturity		0
170	What are the grinding teeth called	Molars		0
171	A one-humped camel is called a _________.	Dromedary		0
172	In 2001 one active UK warship named after an Englishman who	Sir Winston Churchill		0
173	What country has the most bookshops per head population	New Zealand		0
174	Which U.S. state has the least rainfall	Nevada		0
175	Who Sang The Smokin Dance Hit "Feel It" Including The Featured Artist	Tamperer Feat Maya (Pepper)		0
176	 Legal Terms: A supplement to a will.	Codicil		0
177	Edward Whymper was the first to do what	Climb Matterhorn		0
178	A 1957 title recorded by the Crickets, was a line taken from the classic John Ford Western's 'The Searchers'. What was the title	That'll Be the Day		0
179	Opperman what is the capital of iowa	Des moines		0
180	Saanen, Hongtong & Toggenburg Are All Breeds Of Which Animal	Goats		0
181	Which 9-fingered pop pianist starred in the film Its all Happening	Russ		0
182	A Silver Fern Is The Emblem Of Which Nations Rugby Union Team? 	New Zealand 		0
183	What is the Latin word for liquid produced by the Ficus Elastica	Latex		0
184	What is the fear of parents-in-law known as	Soceraphobia		0
185	Which is the only work by Dukas most people have ever heard of	The sorcerer's apprentice		0
186	What queen were the virgin islands named for in 1627 	Elizabeth i 		0
187	What did henry shrapnel invent	Exploding shell		0
188	What's the collective noun for a group of gulls	Colony		0
189	The American Society for Prevention of Cruelty to Animals (aspca) was formed in what year	1866		0
190	In Pac Man eating what was worth 5000 points	Banana		0
191	"What Did My True Love Give To Me On The ""Nineth"" Day Of Christmas" 	9 Ladies Dancing 		0
192	What is the Capital of: Virgin Islands	Charlotte amalie		0
193	What does Do Loop do for a living	Computer programmer		0
194	What Did You Associate With Rod Hull ? 	Emu 		0
195	Which famous Englishwoman was born in Florence on 12th May 1820,where her well-to-do parents were temporarily resident	Florence nightingale		0
196	What is the opposite of nocturnal	Diurnal		0
197	Which Saint is said to have carried his own head for six miles after his death?	St Denis		0
198	Five out of six of the Village people have got what	Moustaches		0
199	In Watership Down rabbit language what is a hrududu	A motor car		0
200	Who is Aladdin's father	Mustapha the tailor		0
201	Which brother sister won Wimbledon mixed doubles in 1980	John Tracy Austin		0
202	What can be a font, architectural style or novel type	Gothic		0
203	In what country is the waterloo battlefield 	Belgium 		0
204	Which Classic Tv Character Was Played By "Sorrell Brooke" Between (1979-1985)	Boss Hog		0
205	In Which Modern Day Country Would You Find The Region Known As Transylvania 	Romania 		0
206	Who Were The Original Members Of Suede	Brett Anderson, Bernard Butler, Mat Osman, Simon Gilbert, And Justine Frischmann		0
207	Who Was Time Magazines Man Of The Year In 1938	Adolf Hitler		0
208	March 21st to April 20th is what Star sign	Aries		0
209	Where is the city of Brotherly Love	Philadelphia		0
210	1300 to 1500 it was illegal for Englishmen to have 3 what a day	Meals		0
211	In 1959, Berry Gordy Jr. started a small record company called 	Motown 		0
212	What Film Won The Oscar For Best Visual Effects Back In 1984	Indiana Jones (Temple Of Doom)		0
213	Racing driver James Hunts nickname was Hunt the what	Shunt		0
214	Where is the kitty hawk	Smithsonian		0
215	Which British comedian became well known for his broken microphone routine? 	Norman Collier 		0
216	Calvin and Hobbes artist.	Bill watterson		0
217	In the US what job has an average IQ of 104	Policeman		0
218	Name the actor who played the leading role in "The Good, the Bad, and the Ugly".	Clint Eastwood		0
219	The tallest building in the Southern Hemisphere is in which city	Melbourne		0
220	In ballet, an elongated line; in particular, the horizontal line of an arasbesque with one arm stretched front and the other back.	Allongé		0
221	What is the capital of France	Paris		0
222	Who wrote the music to West Side Story	Leonard bernstein		0
223	What is the currency of Poland	Zloty		0
224	What Was Sri Lanka Previously Known As 	Ceylon 		0
225	Who won an Oscar for the soundtrack to Chariots of Fire	Vangelis		0
226	In Greek mythology, where were lotuses eaten	Island of jerba		0
227	Assen in the Netherlands is most famously associated with which sport?	Motorcycling		0
228	Which Musical Was Based On H G Wells Novel Kipp's	Half A Sixpence		0
229	Which great American inventor died in October 1931? 	Thomas Edison 		0
230	Who was reportedly the strongest man on earth	Samson		0
231	Which two fruits are an anagram of each other	Lemon and melon		0
232	In what country would you be rich in Leu	Rumanian currency		0
233	Where did Queen Victoria and Prince Albert get married?	St. James' Palace		0
234	What was the first magazine to publish a hologram on it's cover	National Geographic		0
235	Popular social dance during the eighteenth century; done in rows or circles, it may have derived from English country dancing.	Contredanse		0
236	Whose 3_dimensional cube became a 70s & 80s craze	Rubiks cube		0
237	In which continent would you find the mackenzie river 	North america 		0
238	Which Olympics did the US boycott? 	1980 		0
239	I will please is the Latin translation of what medical treatment	Placebo		0
240	What is 'mother's ruin'?	Gin		0
241	The U.S. has never lost a war in which _____ were used	Mules		0
242	Which actor was the first to play Robin Hood on television	Richard greene		0
243	Name Disney's first film to win an Academy Award	Flowers and Trees		0
244	Issur Danielovitch became famous a who	Kirk Douglas		0
245	Who took dictation from Perry Mason?	Della Street		0
246	Where are Rocket J. Squirel and Bullwinkle Moose from	Frostbite falls		0
247	What living organism can be 30 times the size of a blue whale	A giant sequoia giant sequoia		0
248	Graphite dust is formed when what is cut with a laser?	Diamond		0
249	What is the flower that stands for: lasting beauty	Stock		0
250	What is the Capital of: Seychelles	Victoria		0
251	Charles Boyer inspired a cartoon skunk. Who?	Pepe le Pew		0
252	Who is Prime Minister of Australia	John howard		0
253	After the Bible what book did Americans rate as their favourite	Sears Roebuck Catalogue		0
254	A dime is equal to how many cents	Ten		0
255	Which Guitar Manufacturer Was Responsible For The Stratocaster	Fender		0
256	Which Duo Wrote The Song “You'll Never Walk Alone”?	Rogers & Hammerstein		0
257	What is the capital of New Jersey	Trenton		0
258	What is john robertson osbourne's stage name	Ozzy osbourne		0
259	Who was the most notable wife of King Priam of Troy during the Trojan War, having no less than 19 children to him?	Hecuba		0
260	Whose son got lost in the desert during the Paris Daker rally ? 	Mrs Thathchers Son Mark 		0
261	Who plays 'Cat' in Red Dwarf	Danny john-jules		0
262	What was the leading cause of death in the late 19th century	Tuberculosis		0
263	 The most carnivorous of all bears is the __________. Its diet consists almost entirely of seals and fish.	Polar bear		0
264	Which Year Did Bryan Adams Refer To In 1985	1969 (Summer Of 69)		0
265	What is an algonquin	Moose		0
266	A temple in Sri-Lanka is dedicated to what	Buddha's tooth		0
267	What Is The Study Of Low Temperatures Called 	Cryogenics 		0
268	What English city was known to the Romans as Venta Bulgarum?	Winchester		0
269	What is the symbol for iron in chemistry?	Fe		0
270	What is the capital of North Carolina?	Raleigh		0
271	What job was Sting before he was a rock star?	Teacher		0
272	What is compressed snow also called	Neve		0
273	Adolph Hitler had a phobia - what	Claustrophobia		0
274	In the Bible, who is the Book of Proverbs attributed to	Solomon		0
275	Who kept searching for his long lost salt shaker	Jimmy buffet		0
276	Which two teams automatically qualified for the france '98 soccer world cup	France and brazil		0
277	Where did Thomas Magnum grow up as a kid?	San Diego		0
278	 The feeling of having experienced something before is known as _______.	Deja vu		0
279	What was the leading cause of death in the late 19th century?	Tuberculosis		0
280	Who was the first novelist to present a typed manuscript to his publisher	Mark twain		0
281	 Despite man's fear and hatred of the wolf, it has not ever been proved that a non_rabid wolf ever attacked a __________	Human		0
282	What does LPG stands for?	Liquid Petroleum Gas		0
283	What is the French phrase that means already seen	Déjà vu		0
284	What school does Harry Potter attend	Hogwarts		0
285	Which company, during the 1984 Super Bowl, aired what is considered one of the best commercials in TV history?	Apple		0
286	What is unusual about The lake of Monteith in Scotland	Only one the rest are Lochs		0
287	Who In The World Of Music Has The Real Name Of Derek Dick 	Fish 		0
288	"Radio Gaga" Was A 1984 Hit For Whom	Queen		0
289	Musical groups: england dan and _____	John ford coley		0
290	The world's smallest mammal is the _______ ___ of Thailand, weighing less than a penny	Bumblebee bat		0
291	The treatment of disease by chemical substances which are toxic to the causative micro-organisms is called ____________.	Chemotherapy		0
292	Name The Hit Making 3 Tenors	Jose Carreras, Placido Domingo, Luciano Pavarotti		0
293	What animal is responsible for most deaths in the USA annually	Dogs		0
294	Where would you be if you landed smack in the middle of plock 	Poland 		0
295	What is the fear of heredity known as	Patroiophobia		0
296	License Plates: What job does SRREAL have	Artist		0
297	A Phon is a unit of what? 	Loudness 		0
298	Who was the law for a shire	Reeve		0
299	What lies east of mauritius	Australia		0
300	Cushat, Rock and Stock all types of which creature	Doves		0
301	What is the capital of Liberia ?	Monrovia		0
302	In which war was the charge of the Light Brigade	Crimean		0
303	Sir Eyre Massey Shaw hold what Olympic record from 1900	Oldest gold yachting he was 70		0
304	Where In Egypt Is The Tomb Of Tutankhamen 	Valley Of The Kings, Luxor 		0
305	Your suffering from circadian dysrhythmia what have you got	Jet Lag		0
306	The word for soda in Japanese when translated means what	Poisoned Water		0
307	Who did patrick macnee portray in the spy drama the avengers	Jonathan steed		0
308	In Which Year Did "Wooden Heart" & "Surrender" Reach No.1 For Elvis	1961		0
309	*What were the 'character' names of the 3 lead women of Charlie's Angels? (PFE)* 	Sabrina, Kelly, Jill 		0
310	About which game has most books been written	Chess		0
311	For Whom Did David Byrne Produce An Album Called Mesopotamia In 1981	B52's		0
312	Which snooker player ended Stephen Hendry's five-year unbeaten run at The Crucible? 	Ken Doherty 		0
313	This delightfully soft topping, care of your local bovine	Cheese		0
314	15% of American males are what - so are bulls	Colour Blind		0
315	In Which Athletics Event Are Competitors Known As Either 'Spinners Or Shifters'' 	Shot Putt 		0
316	Who hosted the 1997 Grammy Awards?	Ellen Degeneres		0
317	Which Shakespearean Character Has The Most Lines 	Hamlet 		0
318	Which American author wrote Moby Dick	Herman melville		0
319	An external agent that alters foetal development is called a	Teratogen		0
320	Who said 'ask not what your country can do for you, but what you can do for your country'	John f kennedy		0
321	What is a boats speed measured in	Knots		0
322	On a chemical what does a skull and cross-bone mean ?	Toxic		0
323	Who patrols gotham city	Batman and robin		0
324	Who portrayed Han Solo in "Star Wars"?	Harrison Ford		0
325	Where were the 1988 Olympics held ?	Seoul, South Korea		0
326	What do like charges do	Repel		0
327	What is the fear of microbes known as	Microbiophobia		0
328	The Atlanta Hawks basketball team have retired 23 which used to belong to _____	Lou hudson		0
329	In What Year Did The Vietnam War Begin 	1954 		0
330	What is the capital of the dominican republic	Santo domingo		0
331	Psychologists says men who do what during sex are insecure	Keep socks on		0
332	Who had a hit in 1986 with 'Don't Leave Me This Way'	The communards		0
333	Whose symphony number seven is called the Leningrad	Shostakovich		0
334	Who Recorded The Albums "Cuts Both Ways", & "Into The Light"	Gloria Estefan		0
335	What does "el pueblo de nuestra senora la reina de los angeles del rio porciuncula" (los angeles' original name!) Translate into	The village of our lady the queen of the angels of the porciuncula river		0
336	What was John Wayne's real name?	Marion Morrison		0
337	The Mariners Compass or Pyxis is what	Constellation		0
338	What do you get when you add fresh fruit to red wine 	Sangria 		0
339	What Country is consistently The Worlds Biggest Beer Consumer	Czech Republic		0
340	Hathor was the Egyptian goddess of what	The Sky		0
341	Who is the greek equivalent of the roman god Mars ?	Ares		0
342	Pat Reid wrote which book - filmed and TV often	The Colditz Story		0
343	Which chemical element is named after die Latin word for 'red'	Rubidium		0
344	"Dancing With Tears In My Eyes" Was A 1984 Hit For Which Group?	Ultravox		0
345	Who Took A Eurovision Song Contest Entry To No.2 In 1969 And What Was It	Lulu / Boom Bang A Bang		0
346	In Eureka Nevada its illegal for moustached men to do what	Kiss Women		0
347	Which Country Hosted The Olympic Games In 2004? 	Greece (Athens) 		0
348	What animal is the mascot of the US Naval Academy	Goat		0
349	Who Wtote The Book 'How The Grinch Stole Christmas' 	Dr Seuss 		0
350	Sabotage is French - What did the saboteurs use	Shoes - sabot means shoe		0
351	What is the flower that stands for: sweet and secret love	Honey flower		0
352	On which U. S. river is the Grand Coulee Dam	Columbia		0
353	In music what is meant by pianissimo	Very softly		0
354	The Largest Muslim Population In The World Is Found In Which Country	Indonesia		0
355	In Russia by law the homeless must be where after 10pm	At Home		0
356	"Mr. Mojo Risin" is an anagram for___	Jim Morrison.		0
357	What is the only country in the world whose name starts with 'O'?	Oman		0
358	What did Aristotle claim as the most delicate of table meats	Camel		0
359	First feature film US TV Heart of New York what was subject	Washing machine inventors		0
360	What word is used for a male ass? (Other than that the word used for that #*§^*&%@! ex-boyfriend.)	Jack		0
361	Golden books in how many films did grace kelly appear	Eleven		0
362	Which day is the first day of Holy Week in the Christian calendar	Palm sunday		0
363	The transverse entrance hall of a church.	Narthex		0
364	How did Jamie Sommers become bionic?	From a parachute accident.		0
365	When does the human uterus expand 500 times its normal size?	During pregnancy		0
366	Who sang 'That's Alright Mama'?	Elvis Presley		0
367	Who had a hit with the smooth and soulful You To Me Are Everything ? 	The Real Thing 		0
368	What is the largest item on any menu in the world	Roast camel		0
369	Which famous battle took place on July 1st to 3rd 1863	Gettysburg		0
370	-isms: The social and philosophic creedo of Irish playwright George Bernard Shaw is called:	Shavianism		0
371	Rustic or awkward person	Bumpkin		0
372	In which trade are composing frames and sticks used	Printing		0
373	What is an erythrocyte	Red blood cell		0
374	What do the letters 'SAM' mean in SAM missiles?	Surface To Air		0
375	Which artist, born in Russia in 1887, painted Self Portrait With Seven Fingers, Birthday and Bouquet With Flying Lovers	Marc chagall		0
376	What is the leaf of a fern called	Frond		0
377	What was founded in the UK 1694 because of war with France	Bank of England		0
378	What large red flower is the floral emblem of New South Wales	Waratah		0
379	Where does the word COP come from	Constable on Patrol		0
380	What Do The Initials E.E.G Stand For 	Electroencephalograph 		0
381	What 1970's film came from a pink floyd tune	The wall		0
382	Who wrote 'weird harold and fat albert'	Bill cosby		0
383	Somebody who rings bells	Campanologist		0
384	What does the "lithosphere" refer to?	The earth's crust		0
385	Which is the most Northerly African country through which the Greenwich meridian passes	Algeria		0
386	Karl Landsteiner won a Nobel prize in 1930 for which medical discovery	Blood groups		0
387	What Crime Has A Person Committed If They Have Been Convicted Of Regicide?	They Have Killed The King		0
388	What type of acid is used in car batteries	Sulphuric		0
389	Who was the last King of Troy?	Priam		0
390	The study of the composition of substances and the changes that they undergo is _________.	Chemistry		0
391	When The Motels Took The "L" Out Of Lover It Was What	Over		0
392	The Gold Coast gained its independence from Great Britain in 1957 and renamed itself as what 	Ghana 		0
393	How Many Hearts Does The Common Earthworm Have?	10		0
394	In which Gymnastics discipline would a man do the scissors? 	Pommel Horse 		0
395	Which Football Team Became The First To Win The European Cup Winners Cup In 1963 	Tottenham (Spurs) 		0
396	What brand of cheese celebrated its 60th birthday in 1988	Velveeta		0
397	How many tiles does a player play to score a bingo in Scrabble	7		0
398	Pathophobia is the fear of	Disease		0
399	What song by Don McLean talks about the day Buddy Holly died?	American Pie		0
400	Which Novelist Sometimes Writes Under The Pseudonym Richard Bachman?	Stephen King		0
401	What was the name of Punky Brewster's dog?	Brandon		0
402	In Greek mythology, what did the cyclops forge for zeus	Thunderbolts		0
403	Collective nouns - A gang of what	Elks		0
404	In what sport would you perform an Adolf	Trampolining forward 3.5 twists		0
405	Name Tin Tin's Canine Companion 	Snowy 		0
406	Where does the famous 'running of the bulls' take place	Pamplona		0
407	What 80's Pro-Wrestler was turned into a G.I. Joe character?	Sgt. Slaughter		0
408	The Amazon river pushes so much water into the _____________ that, more than a hundred miles at sea, off the mouth of the river, one can dip fresh water out of the ocean and drink it.	Atlantic		0
409	Who starred as 'ouboet' in the first tv series of 'orkney snork nie'	Frank		0
410	What does a Belly Man do for a living	A Piano Tuner		0
411	Middle Ages having what creatures in the house was good luck	Ants		0
412	Which type of restaurant popularized the use of conveyor belts? 	Sushi Restaurants 		0
413	Who were the co-leaders of rock pile	Edmunds and lowe edmunds and lowe		0
414	Knismolagnia is sexual arousal from what	Tickling		0
415	In which film is the line, 'I could have been a contender'	On the waterfront		0
416	What word beginning with M is the unit measurement for the brightness of stars	Magnitude		0
417	Michelle and Julia are songs by which group	The beatles		0
418	Who killed Macbeth?	Macduff		0
419	What is the fear of nudity known as	Nudophobia		0
420	Which African country had its capital transferred to Abuja	Nigeria		0
421	Does 'verbatim' mean 'in the same words' or 'opposite'	In the same words		0
422	How do you write 69 in Roman numerals?	LXIX		0
423	Beside the long winding river is the translation of which US state	Connecticut		0
424	What actor was stung in "the sting"	Robert shaw		0
425	In which country was the Rosetta Stone found	Egypt		0
426	What is an emasculated stallion called?	Gelding		0
427	In which Dickens novel would you find the characters Jonh Jarndyce and Mrs Jellyby	Bleak house		0
428	Infantile Paralysis is commonly known as ________.	Polio		0
429	What is another name for the prairie wolf?	Coyote		0
430	On Which Island Which Is Also A Country Will You Find "Adams Peak"	Sri Lanka		0
431	What band did James Brown tour and record with in the 1950's?	The Famous Flames		0
432	Who Was The First Professional Footballer To Be Knighted 	Sir Stanley Matthews 		0
433	Which is the only Shakespeare play with the name of an English town in the title	The merry wives of windsor		0
434	In Britain what are Sing Tao and Weng Wei Po	Chinese Newspapers		0
435	Colonel Tom Parker Elvis's manager had what earlier act	Dancing Chickens – on hot plate		0
436	What writer lived at hilltop near Hawkshead now museum to her	Beartrix Potter		0
437	What Was The Contribution Of Actress Mercedes McCambridge To Linda Blairs Performance In The Excorcist 	Provided The Devils Voice 		0
438	What color is the tip of a Canada lynx's tail	Black		0
439	La Celestina was the first one in Spain the first what	Theatre play		0
440	What was the first mickey mouse cartoon	Plane crazy		0
441	What modern word comes from the Arab "hashishi" ?	Assassin		0
442	Hoffman who wrote about a british agent named george smiley	John le carr		0
443	What is the main food of the oyster catcher	Mussels		0
444	Bob Fitzsimmons world boxing champion had what middle name	Prometheus		0
445	Oil seed rape belongs to which plant family	Mustard		0
446	What first occurred at California Disneyland in March 1981	Murder		0
447	Area of commerce that encompasses farming or trapping certain furbearing animals, processing their skins for sale to manufacturers of fur garments, & marketing finished garments to retail outlets	Fur industry		0
448	What Colour Caps Do The Australian Cricket Team Wear 	Green 		0
449	What is the latin word for 'a junction of three roads'	Trivia		0
450	49% of Americans go out to dinner on what day	Their Birthday		0
451	Who Rode Shergar To Victory In The Epsom Derby? 	Walter Swinburn 		0
452	Whose normal heartbeat is 242 per minute	Mr Spock in Star Trek		0
453	What Was The Name Of Charles Dickens Last Novel Unfinished At His Death 	The Mystery Of Edwin Drood 		0
454	What are The Chiuhauhan Nubian and Alaskan	Deserts		0
455	What's the seventh sign of the Zodiac	Libra		0
456	New Zealand's Rugby team is know as the __________________.	All Blacks		0
457	At which sport was Fred Perry crowned world champion in 1929? 	Table Tennis 		0
458	Who is associated with the address 221B Baker Street, London ?	Sherlock Holmes		0
459	In Which Scandanavian Country Is Gambling Illegal 	Sweden 		0
460	Which country is the largest producer of cheese	America		0
461	Which state is the Evergreen State	Washington		0
462	What name is given to animals which eat both plants and meat ?	Omnivore		0
463	What is the most redesigned appliance in the world	Telephone Handset		0
464	Where was "Can't Buy Me Love" recorded?	Paris, France		0
465	What's the sky king's home, near the town of grover, called?	Flying crown ranch		0
466	Which Continent Is The Natural Habitat Of The Ostrich 	Africa 		0
467	What craft toy involved cutting plastic figures, coloring them in, and then baking them in the oven?	Shrinky Dinks		0
468	Deepest from what language is the word mummy derived	Persian		0
469	When was buckingham palace built	1703		0
470	Which is the only body cell with no nucleus	Red blood cell		0
471	Who Was The First And Original Host Of ITV's "World Of Sport"	Eamon Andrews		0
472	An onomastician studies what	Names		0
473	Hey! what was the name of this song released by 'the romantics' in february 1980	What i like about you		0
474	Which Band Performed The Theme To The Secret Diary Of Adrian Mole Aged 13 & 3 Quarters	Ian Dury & The Blockheads		0
475	Penis comes from the Latin meaning what	Tail		0
476	What is the colour of mourning in Turkey	Violet		0
477	What special talent did Molly Ringwald have in The Breakfast Club?	She could apply lipstick with her breasts		0
478	Amatripsis is what sexual practice	Female masturbation rubbing labia		0
479	Name the Shakespeare character son of the witch Sycorax	Caliban in The Tempest		0
480	What is a calm ocean region near the equator called?	Doldrums		0
481	Susanne & Joanne Catherall Sang With Which Band	The Human League		0
482	Created By German Scientists In 1876, What Was The First Artificial Favouring 	Vanilla Essence 		0
483	What's the oldest college in the u.s. 	Harvard 		0
484	Where in the UK would you go to celebrate 'Uphelia'' shortly after Christmas 	Shetland Isles 		0
485	What is the young of this animal called: Antelope	Calf		0
486	The via appia went from rome to ______	Brindisi		0
487	Who qualified for pole position in the 1984 brazilian grand prix	Elio de		0
488	The distance around the outside of a circle is its ____________.	Circumference		0
489	"What Is The Name Of The Toy That Arnold Schwarzenegger Desperately Tries To Get For His Son For Christmas In the Film ""Jingle All The Way""?" 	Turbo Man 		0
490	If you landed at Lindberg airport where are you	San Diego		0
491	Which Central American country extends furthest north?	Belize		0
492	What replaced English as the official language of Kenya in 1974	Swahili		0
493	On what date did America become an independant nation?	July 4th, 1776		0
494	What is the flower that stands for: steadfast piety	Wild geranium		0
495	On One Day at a Time,what were the two daughter's names?	Barbara and Julie		0
496	What Animal Can Change Its Colour? 	A Chameleon 		0
497	In the nursery rhyme what is Fridays child	Loving and Giving		0
498	What key is to the right of T on a keyboard?	Y		0
499	What is the main food of walruses 	Clams		0
500	In A 2007 Poll What Music Video Was Voted The Best Video Of All Time	Peter Gabriel / Sledgehammer		0
501	What is the fourth book in the Harry Potter series 	The Goblet Of Fire 		0
502	For What Is Dame Margott Fonteyn Famous 	Ballet Dancing 		0
503	In which Chinese city is the Terracotta Army	Xian		0
504	Who played George Costanza on 'Seinfeld'?	Jason Alexander		0
505	Which FootbaIl Bad Boy Was Accused Of Violent Assault Against Tv Presenter Ulrika Jonsson 	Stan Collymore 		0
506	Capitol city - Cathedrale Notra-Dame - statue Marron Inconnu	Port au Prince Haiti		0
507	Alphabetically Which Is The Last Of Santa's Reindeers? 	Vixen 		0
508	The American Triple Crown - Belmont st Kentucky Derby and?	Preakness Stakes		0
509	What country is directly north of the continental United States?	Canada		0
510	Happy Days was a spin off from what US TV show	Love American Style		0
511	Who was called The Man of Destiny	Napoleon Bonaparte		0
512	Which thick custard-like food is made when fresh milk is artificially curdled by bacteria	Yoghurt		0
513	What is the only bird that can fly backwards	Hummingbird		0
514	What is a group of toads	Knot		0
515	The Blue Ridge Mountains lie in Virginia and which other state	Georgia		0
516	What Do The Initials TT Stand For In Regard With The Isle Of Man Motorcyle Race? 	Tourist Trophy 		0
517	Who said "In my free time I do differential and integral calculus"	Karl Marx		0
518	Ouranophobia is a fear of ______	Heaven		0
519	As what is sulphur also known	Brimstone		0
520	Who was the male lead character in Gershwins musical that featured the song Summertime	Porgy		0
521	What does barley become when prepared for brewing	Malt		0
522	What minty confection is a boys name - in reverse	Trebor mints - Robert		0
523	What is a cpu	Central processing unit		0
524	Tony Drago is a snooker professional from which country? 	Malta 		0
525	The use of astronomical phenomena to predict earthly & human events is called	Astrology		0
526	Name the female British climber while killed trying to climb K2 in 1995	Alison hargreaves		0
527	The amount of what substance in granite determines its color	Feldspar		0
528	Who Had A Hit In 1993 With "She Don't Let Nobody"	Chaka Demus & Pliers		0
529	Who released the No.1 hit single 'Barbie Girl' in October 1997	Aqua		0
530	With Which Band Is Raul Malo The Lead Singer	The Mavericks		0
531	12 is the atomic number of which metal	Magnesium		0
532	What does a zoologist study	Animals		0
533	What does a linguist study	Languages		0
534	What rock makes the cheapest, softest form of sandpaper	Flint		0
535	In Greek mythology, for who did the cyclops forge thunderbolts	Zeus		0
536	Hans Lippershey made the worlds first practical what	Microscope		0
537	Who Is Known As Lady Soul	Aretha Franklin		0
538	Which department uses 65% of all paper bought by US gov	Defence department		0
539	What is the flower that stands for: betrayal	Judas tere		0
540	What Events Are Involved In A Biathlon 	Cross Country Skiing & Shooting 		0
541	What is the flower that stands for: avarice	Scarlet auricula		0
542	____________ possesses more proven oil reserves than any country outside the Middle East.	Venezuela		0
543	Who Won An Oscar For His Portrayal Of Broadway Legend George M Cohan In "Yankee Doodle Dandy"	James Cagney		0
544	Name the only major Greek God whose Roman counterpart has the same name	Apollo		0
545	Ebony & Ivory Was A Hit For Which Famous Duo	Paul McCartney & Stevie Wonder		0
546	Where can you buy a cup of coffee with cruzeiros	Brazil		0
547	Alfred Jingle appears in which Dickens novel	The Pickwick Papers		0
548	What is the largest island in the Indian Ocean?	Madagascar		0
549	A pound of armadillo meat contains how many calories	780 calories		0
550	 A wolf's odor detecting ability is __________ times greater than man's.	100		0
551	On what sea is the crimea	Black sea		0
552	Whose boat Bluebird was recently raised from Coniston water	Donald Campbell		0
553	Lee Where were the Toltecs from	Mexico		0
554	What note is written in the space above the bottom line of the treble clef?	F		0
555	What myth is the rhinocerous thought to have inspired	Unicorn		0
556	What Was The First Top 10 Hit For The Temptations Reaching No.3 In 1969	I'm Gonna Make You Love Me		0
557	From Which Country Did The Dance, The Quadrille, Originate	France		0
558	If its 4:00pm in Seattle Washington, what time is it in Portland Oregon	4		0
559	Lockjaw is another name for which disease	Tetanus		0
560	What two colors is a magpie 	Black and white 		0
561	What is Moscow's famed opera house	The bolshoi bolshoi		0
562	The pound cake got its name from the pound of ______ it contained	Butter		0
563	The town of Beersheba is in which country	Israel		0
564	What country borders Libya on the East?	Egypt		0
565	In what Australian state would you find Port Pirie	South australia		0
566	What sporting event first took place in 1903	Tour de france		0
567	By US government figures people have tried 28000 ways of what	Losing Weight		0
568	Who Is The Lead Singer Of The Band "The Police"	Sting		0
569	Who holds the nhl record for the most goals scored during a regular season	Wayne gretzky		0
570	What type of number has no factors other than 1 and itself	Prime		0
571	In which state is stone mountain 	Georgia 		0
572	Agrippa poisoned her husband/uncle who was he	Claudius		0
573	What Was The Beat's Second Chart Success Achieving No.9 In Feb 1980	Hands Off, She's Mine		0
574	In what country could you spend a tugrik	Mongolia		0
575	What island group contains jersey, guernsey, sark and herm 	The channel islands 		0
576	Why, in 1969, did the French flag appear on some British postage stamps	To commemorate concorde's maiden flight		0
577	How was Australias most infamous bush ranger	Ned kelly		0
578	 When young, the hoatzin, a crested, olive_colored South American bird, has claws on its __________	Wings		0
579	A spice from which root is used to give food a yellow colour	Turmeric		0
580	Legal Terms: A supplement to a will.	Codicil		0
581	Who is the only musician in history to bring out two albums to reach number one in one year?	DMX		0
582	What country in distance is furthest from New Zealand	Spain		0
583	In Greek mythology, which monster had the head and breasts of a woman, the body of a lion and the wings of a bird	Sphinx		0
584	What was the name of the restaurant the TV series "Happy Days"?	Arnolds		0
585	What was the pre-war German name for the Baltic city which is now Russian and called Kaliningrad	Konigsberg		0
586	What is sometimes known as Goober Grease	Peanut Butter		0
587	On which river is Warsaw to be found	Vistula wisla		0
588	What animal always gives birth to same sex twins	Armadillo		0
589	Dr. Christian Barnard performed the world's first ever what in South Africa in 1967. 	Heart Transplant 		0
590	Who sang the Song "Gangsta's Paradise"?	Coolio		0
591	Can you give me the capital of the following three countries: Syria, Morocco and Libya? 	Damascus, Rabat, Tripoli 		0
592	Pete Burns From Dead Or Alive Was Spun Around Like A What	Record		0
593	The temperature at what dew forms is called the	Dew point		0
594	How many children did Adam and Eve have together	Three		0
595	In the USA domestic violence peaks on what day of the year	Superbowl Sunday		0
596	How many balls are on a pool table at the start of a game? 	16 		0
597	What is the eighth month of the year	August		0
598	Which two metals make up brass? 	Copper and Zinc 		0
599	What Is Another Name For The Wildebeest? 	A Gnu 		0
600	This protein makes the blood red in color.	Hemoglobin		0
601	Who stars in the movie "Tomb Raider"?	Angelina Jolie		0
602	Who wrote Fahrenheit 451	Ray bradbury		0
603	A flat round soft creamy French cheese	Brie		0
604	Who released the following 'edible' album 'Pretzel logic' 	Steely Dan 		0
605	What is the most southerly County of Ireland	Cork		0
606	A chronic disease of the liver	Cirrhosis		0
607	In Shakespeare's 'Merchant of Venice', with whom does Portia fall in love	Bassanio		0
608	With Just "Paul McCartney" On The Label As Artist Name His First No.1 In 1984	Pipes Of Peace		0
609	The Graf Zeppelin completed a 19,500 mile trip in what year	1929		0
610	The state tree of Arizona is really a legume - name it	Palo Alto		0
611	The locals call it Misi what do we call this country	Egypt		0
612	Which Football Team Play Their Home Games At Stamford Bridge 	Chelsea 		0
613	Godzilla first made his mark so to say in 1954. What do the Japanese call Godzilla ? 	Gojira 		0
614	Which Singer Of A Very Famous 90's One Hit Wonder Has The Real Name “ Robert Van Winkle ”	Vanilla Ice		0
615	The FIS governs what sport	International Ski Federation		0
616	"Fruit smack flavored syrup" was the original name of	Kool aid		0
617	Texans consume 40% of farm grown what in the USA	Catfish		0
618	Vivaldi's concertos Opus 8 Numbers 1-4 better known as what	The four Seasons		0
619	How Did Louis Washkansky Of South Africa Make History In 1967	1st Heart Transplant Recipient		0
620	When someone is clumsy or awkward, especially with their hands, they are often said to be "all ___." These	Thumbs		0
621	 From crocodile farms, Australia exports about 5,000 crocodile skins a year. Most go to Paris, where a crocodile purse can sell for more than __________	10000		0
622	What links flamsteed halley, bradley and bliss 	Astronomy 		0
623	To which part of the body does the adjective 'renal' refer	Kidney		0
624	Which annual sporting event between 2 teams started in 1829	The University Boat Race		0
625	Archbishop Makarios of Cyprus was exiled in 1956 to where	The Seychelles		0
626	-isms: Indifference to pleasure of pain; Greek philosophical system following the teachings of Zeno?	Stoicism		0
627	Which Danish philosopher, wrote The Concept of Dread and later had his views used as the basis for existentialism	Soren kierkegaard		0
628	The Kung San people live in what area of Africa	Kalahari Desert in Botswana		0
629	What is the flower that stands for: delay	Eupatorium		0
630	Who composed the opera "A Village Romeo and Juliet"	Frederick delius		0
631	What Connects Kenny, Everett, Annie Lennox, And Sir Isaac Newton 	Born On Xmas Day 		0
632	How many tentacles does a squid have	Ten		0
633	William Herschel astronomer was a musician what instrument	Organ		0
634	What got its name from a bridgeport pie company's name and light-weight pie tins	Frisbees		0
635	Which character is the narrator of Melville's Moby Dick	Ishmael		0
636	Into which bay does the Golden Gate Strait lead?	San Francisco Bay		0
637	Who Was The First man To Set Foot On The Moon ? 	Neil Armstrong 		0
638	What lake is the world's largest, having an area of almost 394,000sq km	Caspian sea		0
639	What was Kevin Bacon's first big hit	Footloose		0
640	For who was the play 'peter pan' exclusively written	Children		0
641	Italian dish consiting of olives, anchovies, salami, celery, and appetizers.	Antipasto		0
642	Bond: What is Goldfinger's first name	Auric		0
643	Fulton John Short - Later John Fulton first US to do what	Qualify as Matador		0
644	The Sun is how much more dense than water?	1.41 times		0
645	Who sang the song "Cry" which was the first video on Mtv to use morphing technology through the entire video?	Godley and Creme		0
646	How many medals did the USSR win at the 1984 Olympics	None		0
647	The second line of which carol is '… When they are both full grown'' 	The Holly & The Ivy 		0
648	Who played Charlie in Charlies Angels?	John Forsythe		0
649	To which family does the coffee plant belong	Madder		0
650	Who designed the first Iron ship the Great Britain in 1845	I. Kingdom Brunel		0
651	Who won an oscar for her role in "gone with the wind"	Vivien leigh		0
652	Who played Lofty in Eastenders	Tom watt		0
653	How Are Craig And Charlie Reid Better Known?	The Proclaimers		0
654	Bandleader James Last Started Out Playing Which Instrument	Double Bass		0
655	What is the singer Meat Loafs Real Name 	Marvin Lee Aday 		0
656	Life Love Cows French translation of which film	City Slickers		0
657	What does breaking the sound barrier cause	A Sonic Boom		0
658	What was the town that ancient Greeks believed to be the centre of the world, and was the home of a famous oracle?	Delphi		0
659	Which small republic makes up Yugoslavia with Serbia	Montenegro		0
660	What Is The Largest Key On A Standard Computer Keyboard 	The Space Bar 		0
661	What Event Occurs At Walthamstow Stadium?	Greyhound Racing		0
662	Which Letter Of The Alphabet Do The Sound Holes On Violins Resemble	The Letter 'S'		0
663	In Norway what is a brisling	A Sprat		0
664	In the world of music, what job did Simon Fuller get sacked from in 1997?	Manager of the Spice Girls		0
665	What does a hyperphiliac suffer from	Great desire for sex		0
666	In what modified vegetable did Cinderalla travel to the ball in?	Pumpkin		0
667	Which Classic TV Show Had A Theme une Entitled "Quiz Wizard"	Blockbusters		0
668	Which is the longest river - not river system - in the U.S.A.	The missouri		0
669	Food That Is Permitted To Be Eaten Under Jewish Dietary Laws Is Known As What 	Kosher 		0
670	In 1861 Dows Ginger Ale was the first to be what	Sold in a Bottle		0
671	Which US state holds the record for most snowfall in a day, recorded February 7, 1916?	Alaska		0
672	Russia has one but the US has at least six - what	Places called Moscow		0
673	What U.S. state includes the telephone area code 505	New mexico		0
674	In Scotland what was the tawse	Teachers Strap or belt		0
675	Which French Superstars Originated My Way	Claude Francois		0
676	What number is at 12 o'clock on a dartboard	20		0
677	Which city is known as Motown?	Detroit		0
678	What is a Chorizo	Spicy Sausage		0
679	Who recorded the album Beggars Banquet	Rolling stones		0
680	John Gore, Edward Saunders pioneered what org in Australia	Salvation Army		0
681	Catch 22 had what original name - publisher changed it	Catch 18		0
682	What is the basic unit of currency for Uzbekistan ?	Sum		0
683	Which Fish, Previously Thought To Be Extinct Was Rediscovered In 1939? 	The Coelacanth 		0
684	In Germany, where would you be if you were in a "Krankenhaus"	Hospital		0
685	What was created in Canada in 1923 for first time criminals	A Spanking Machine		0
686	In which Mediterranean Sea are the Cyclades islands	The aegean		0
687	What colour toothbrush do most people have	Blue		0
688	Which fictional park is the home of Yogi Bear	Jellystone		0
689	The first American advertisement for tobacco was published in what year	1789		0
690	Papaphobia is the fear of	The pope		0
691	How many US states border an ocean?	23		0
692	The Amazon river dolphins are what colour	Pink		0
693	What is the Islamic equal to the red cross	Red Crescent		0
694	What is a group of this animal called: Sparrow	Host		0
695	William Tell was the best crossbow archer and what else	Boatman		0
696	Loftus Road is the home of which football club? 	Queens Park Rangers 		0
697	Palmolive promised to help women keep what	Schoolgirl  complexion		0
698	The Solheim Cup Is The Womans Equivalent Of Whhich Famous Sporting Cup ? 	The Ryder Cup 		0
699	What did The Band The Clash Rock	The Casbah		0
700	How many ring are there on the olympic flag	Five		0
701	How long is the le mans endurance motor race	24 four hours		0
702	On which fictional street does 'Freddy Kruger' live out a nightmare	Elm street		0
703	Which contains more caffeine - coffee beans or tea leaves? 	Tea Leaves 		0
704	What does a depilatory remove	Hair		0
705	Leaflike part of a fern or palm	Frond		0
706	Who Recorded The Early 1990's Indie Classic "Sheffield Sex City"	Pulp		0
707	On which Caribbean island are the Blue Mountains	Jamaica		0
708	Name Alice's pet cat	Dinah		0
709	What drink is a mixture of brandy, egg yolks & vanilla? 	Advocaat 		0
710	Who was the first woman to fly the Atlantic alone ?	Amelia Earhart		0
711	John Augustus Larson invented what in 1921	Lie detector		0
712	How is the chess term "shah mat" better known ?	Checkmate		0
713	What body function is improved if you sleep on your right side?	Digestion		0
714	What Mojave Desert city has a name meaning "the meadows" in spanish	Las vegas		0
715	How Are The TV Chefs 'Simon King & David Myers'' More Commonly Known 	The Hairy Bikers 		0
716	What nutrient is required by the body in order to build up muscles	Protein		0
717	What is a Texas Ruby Red	Grapefruit		0
718	What notorious event occurred on the 24th October 1929? 	The Wall Street Crash or (Black Thursday) 		0
719	What cereal carries the slogan, "a bowl a day keeps the bullies away"	Apple		0
720	Where are you if you land at Norman Manley airport	Kingston Jamaica		0
721	Durbarry is cream of a vegetable soup  - what one	Cauliflower		0
722	Which word follows Juliet, Kilo and Lima	Mike		0
723	What is a gondola	Water taxi		0
724	Which science fiction writer developed a series of ethics for robots known as the Laws of Robotics	Isaac asimov		0
725	What year was Neptune discovered	1846		0
726	In what Hitchcock film did Shirley MacLaine debut in 1956	The trouble with Harry		0
727	Name the capital of Brazil.	Brasilia		0
728	What who caught the grinch in the act of stealing the christmas tree	Cindy-lou who cindy lou who		0
729	Whose epitaph reads, free at last, free at last, thank god almighty, i'm free at last 	Martin luther king jr. 		0
730	In 'star trek', what is data's rank	Lieutenant commander		0
731	"He's In Town" Was A Hit In 1964 For Which British Group	Rockin Berries		0
732	Which word describing chaos first appeared in Milton's Paradise Lost	Pandemonium		0
733	Which soul singer was Sittin on the Dock of the Bay	Otis Redding		0
734	Who patented the safety razor in 1895	King gillette		0
735	Which Team Has Won The County Cricket Championships The Most Often? 	Yorkshire 		0
736	A realistic style of painting in which everyday life forms the subject matter, as distinguished from religious or historical painting.  	Genre painting		0
737	What was the first country to recognise the US as independent	Morocco		0
738	Who invented the electrical bass	Leo fender		0
739	Who was 'too sexy for his shirt'	Right said fred		0
740	What are a group of magpies called	A tittering		0
741	In What Year Was Band Aids 'Do They Know Its Christmas' The UK Christmas No.1 Single 	1984 		0
742	Who invented the Polaroid camera	Edwin land		0
743	Ethel who is the spokesperson for the exercise tapes 'tae bo'	Billy blanks		0
744	What is the basic unit of currency for Solomon Islands ?	Dollar		0
745	Tree with a thin peeling bark the twigs also used for flogging	Birch		0
746	Creme de Cacao, cream, and brandy make up which type of cocktail 	Brandy Alexander 		0
747	What animal is depicted on the logo of Toys R Us? 	Giraffe 		0
748	How many bits was the intel 4004 chip	4 bits		0
749	Who married Thelma Catherine Patricia Ryan	Richard nixon		0
750	In WW2 the Germans launched operation Bernhard - what	Counterfeit British notes		0
751	What takes place in Happy Valley Hong Kong	Horse racing		0
752	What is the name of Mr. Rochester's house in "Jane Eyre"	Thornfield hall		0
753	What is a characteristic of a "nimbus" cloud	Rain		0
754	What Dessert Consists Of Ice Cream Covered In Meringue And Baked In The Oven 	Baked Alaska 		0
755	Pluto Greek god of the underworld - what was Plutus god of	Wealth		0
756	Which Salford brewer gave his name to the S.I. unit of energy	Joule		0
757	Which Lucky Man Spent Seven Weeks In The charts With Olivia And Sixteen With Sarah	Cliff Richard (Olivia Newton John) & (Sarah Brightman)		0
758	Which Is The Smallest State In The Usa 	Rhode Island 		0
759	Who Sued For Libel After Being Described As Boring 	William Roache (Ken Barlow) 		0
760	What did Trevor Baylis invent	Clockwork Radio		0
761	To send transatlantic telegraph messages, 3,000 miles of cable were laid under the Atlantic in what year	1886		0
762	A novel by Keith Waterhouse	Billy liar		0
763	What is a female cat called?	Queen		0
764	Which nfl's defensive unit was named 'the purple people eaters'	Minnesota		0
765	How many feet are there in a nautical mile	6080		0
766	What is the full moon nearest the autumnal equinox	Harvest moon		0
767	One of this groups greatest albums was 'slippery when wet' released in 1986	Bon jovi		0
768	To which gentleman's club did Phineas Fogg belong	The Reform		0
769	Approximately how many inches are in a meter	39		0
770	Suspension of tiny particles of one substance, called the dispersed phase, in another phase, called the dispersion medium	Colloid		0
771	What is the flower that stands for: sensitiveness	Mimosa		0
772	Sandra Wes of Texas died in 1977 was buried in what	Her blue Ferrari		0
773	What italian astronomer wrote the starry messenger 	Galileo 		0
774	I'll Never Fall In Love Again' came from which musical	Promises promises		0
775	Handel's Largo comes from which opera	Xerxes		0
776	Who Sang Backing Vocals On The Dire Straits Hit "Money For Nothing"	Sting		0
777	What major law was violated in the movie Smokey and the Bandit?	Smuggling beer		0
778	What is the name of the reverend who appears in the cartoon series 'The Simpsons'?	Timothy Lovejoy		0
779	Actor Arnold Schwarzenegger bought the first Hummer manufactured for civilian use when	1992		0
780	Which Trio Released The Album Crazy Sexy Cool	TLC		0
781	What was first used as a medical treatment in 2700 bc by Chinese emperor Shen Nung	Acupuncture		0
782	Alfred Wallace coined which phrase - Wrongly given to Darwin	Survival of the Fittest		0
783	Transom, poop and keel are all parts of a what	Boat		0
784	In The United States Of America How Is "Feb 2nd" More Commonly Known	Groundhog Day		0
785	What is a two-humped dromedary	Camel		0
786	The Best or Nothing is the motto of what company	Mercedes-Bentz		0
787	What was the first magazine to publish a hologram on its cover	National Geographic		0
788	The comma bacillus causes what disease	Cholera		0
789	How many spectral colors are in a rainbow	27		0
790	50% of the US annual rainfall falls in what month	April		0
791	What were the dolls in the novel 'valley of the dolls'	Pills		0
792	Who was UK Labour cabinet minister and social reformer Frank Pakenham better known as? 	Lord Longford (7th Earl of Longford) 		0
793	Who were the first people to measure the year	Babylonians		0
794	What type of metal is used in the filament of an electric light bulb	Tungsten		0
795	Michael O Brien Became Britains First Ever What On April 20th 1974 (Many Have Followed In His Footsteps)	Streaker		0
796	Smith most common English surname what's the Japanese	Suzuki		0
797	Temperature when condensation occurs is called the	Dew point		0
798	Botvinnik, Petrosian and Tal have all been World Champions of what	Chess		0
799	Libreville is the capital of ______?	Gabon		0
800	Term for animals in the class including the scorpions and spiders	Arachnid		0
801	Who was known as 'the peanut president'?	Jimmy Carter		0
802	In which South American country is the Atacama desert? 	Chile 		0
803	Where in the body would you find the malleus, incus and stapes	Inner ear		0
804	What is the next-to-last event	Penultimate		0
805	What is the last event in a decathlon ? 	1500 Metres 		0
806	What do pigments give to your hair & skin	Colour		0
807	Which English club was formed in 1887 as Ardwick FC? 	Manchester United 		0
808	What is the basic unit of currency for Kiribati ?	Dollar		0
809	Which film won the best makeup Oscar in 1992	Bram Stokers Dracula		0
810	In an average lifetime, the average american sees 345 movies in ___	Theaters		0
811	The German Athlete Jurgen Hingsen was always runner-up to which British Athlete in major competitions? 	Daley Thompson 		0
812	What is the fear of things to the left or left-handed known as	Sinistrophobia		0
813	What are Munroes	Mountains in Scotland		0
814	Marbella is a resort on which Spainsh coast	Costa del sol		0
815	Who controlled the government of china before mao tse tung	Chiang kai-chek		0
816	In What Year Did Captain Cook Reach New Zealand 	1769 		0
817	What 'R'' Is The Name Given To A Picked Herring 	Rolemop 		0
818	Angelo Scicilano better know as who	Charles Atlas		0
819	What fish is known as poor mans lobster	Monk Fish		0
820	In what city are the famous tivoli gardens 	Copenhagen 		0
821	Which Wimbledon Tennis Champion Had A Role In The John Wayne Film "The Horse Soldiers"	Althea Gibson		0
822	How far does the cruise liner 'queen elizabeth ii' move for each gallon of diesel it burns	Six inches		0
823	Which saint founded a monastery at Iona in the sixth century	Saint columba		0
824	Who Recorded The Album "Who Made Who"	ACDC		0
825	Hukusai and Hiroshige were famous Japanese what	Artists		0
826	What is the fear of being tickled by feathers known as	Pteronophobia		0
827	What is the most common pub name in Great Britain? 	The Red Lion 		0
828	What toy was released in 1957 creating an instant craze among children? 	The Hula Hoop 		0
829	What is the Capital of: Samoa	Apia		0
830	Tirana is the capital of ______?	Albania		0
831	The angel of independence in Mexico City was built by who	Salvador rivas mercado		0
832	What Is The 2nd Official Language Spoken In Germany 	Turkish 		0
833	In the 'james bond' books, to who is miss moneypenny secretary	M		0
834	 The weasel and the ermine are the same animal. This mammal's coat changes with the season _ in its white winter coat, it is known as an ermine, in its brown coat, it is a __________	Weasel		0
835	Which fictional land was used to describe John F Kennedy's term as president	Camelot		0
836	Where are the deepest mines	South africa		0
837	Which is the only u.s state capital without a mcdonald's	Montpelier, vermont		0
838	What is the name of the Danish parliament	The folketing		0
839	About Whose Sister Is John Lennons Song "Dear Prudence"	Mia Farrow's		0
840	What is the main ingredient in Borsch	Beetroot		0
841	What does jefferson davis' headstone say	At rest, an american soldier and		0
842	Who was the first woman to sail single-handed around the world	Naomi james		0
843	Our galaxy is commonly known as the ________.	Milky Way		0
844	What is the capitol of Chechnya	Grozny		0
845	Teenage riot' and 'silver rocket' are two cuts off which alternative rock group's 1988 'daydream nation' album	Sonic Youth		0
846	Rabbit 32 - Cat 62 - Ferret 42 - Squirrel 44 - Hedgehog 40 what	Gestation days		0
847	Who In The World Of Music And Born 1984 Has The Real Name "Victoria Christina Hesketh"	Little Boots		0
848	Which Stones Hit Was Reputedly Based On Martha Reeves & The Vandellas "Dancing In The Street"	I Can't Get No Satisfaction		0
849	In What Year Was The Chinese Republic Established 	1911 		0
850	What country celebrates its National Day on 17th May?	Norway		0
851	Which City Is The Worlds Most Densely Populated 	Macau 		0
852	Who announced his retirement from football after nine seasons in the NFL on the set of The Dirty Dozen in London	Jim Brown		0
853	Which film director's films include "Raging Bull" and "Goodfellas"	Martin scorsese		0
854	What is the old english word for 'sneeze'	Fneasan		0
855	Name Dan Hartman's first hit?	Instant Replay		0
856	What is the Capital of: Cameroon	Yaounde		0
1070	Who was the only pope born in England	Adrian iv		0
857	In the traditional song, what did the children dance around "on a cold and frosty morning"	The mulberry bush		0
858	What is made up of the duodenum, jejenum and ileum	Small intestine		0
859	Which detective dies in The Final Problem	Sherlock Holmes		0
860	This drink is made from espresso coffee, steamed milk and chocolate.	Mocha		0
861	What was the screen name of the lead character in The Untouchables	Elliot		0
862	Which Type Of Prepared Bread Is Named After An Opera Singer? 	Melba Toast 		0
863	Bobby locke was the first south african golfer to win which open	British		0
864	Who Was Declared Dead On New Years Day 1953 At The Age Of 29? 	Hank Williams 		0
865	Which country would come first in an alphabetical list of countries	Afghanistan		0
866	Which Aviation Company Produces The DC Series Of Aircraft 	McDonnel Douglas 		0
867	What does 'aandw' of root beer fame mean	Allen and wright		0
868	In the Northern hemisphere its Jan 1st South Aug 1st what is	Racehorse official birthdays		0
869	Which 1954 film won eight Oscars	On the Waterfront		0
870	In which country do they pound rice into a glutinous form using a huge hammer? 	Japan 		0
871	What capital city translates as Capital City in the native tongue	Seoul - South Korea		0
872	The Gorbals is a district of which city	Glasgow		0
873	Sweet or fermented juice of apples, used as a beverage and for making vinegar	Cider		0
874	Who wrote mIRC?	Khaled Mardam-Bey		0
875	Who recorded "Barbara Ann" in 1961	Regents		0
876	Which Singer Become A Father For The 7 th Time Aged 55 In the Year 2007	Stevie Wonder		0
877	Name Two Frank Ifields No.1's	I Remember You, Lovesick Blues, Wayward Wind, Confessin		0
878	Which English actor won his first Oscar for a role in 'Arthur' at the age of 77	Sir john gielgud		0
879	Which real person took name meaning Man of Steel	Joseph Stalin		0
880	What is the common name for the sternum?	Breastbone		0
881	What has accumulated in the muscles in someone suffering from emphysema	Air		0
882	The average American does it 1811 times in their life - what	Eat at MacDonald's		0
883	What piece of sporting equipment has a maximum length of 42 inches and a maximum thickness of 1 & 1/2 inches? 	A Baseball Bat 		0
884	Which Mountain Range Lies In The North Of Spain , West Of The Pyrenees 	The Cantabrian Mountains 		0
885	On what book was 'Three Days Of The Condor' based?	Six Days Of The Condor		0
886	If you went on the road to Mandalay what country are you in	Miramar or Burma		0
887	Letterman who did david letterman pay four cartons of marlboro to be on his show	Miss		0
888	What has superseded Newtonian mechanics of the atomic scale ?	Quantum mechanics		0
889	What is the correct name for a baby mink	Kit or Kitten		0
890	Of which Cambodian party was Pol Pot the leader?	Khmer Rouge		0
891	What does UFC stand for?	Ultimate fighting championships		0
892	The Campbell-Stokes recorder measures what with a glass ball	Sunshine		0
893	What Is An Otoscope Used To Look At 	The Ear 		0
894	What lies between Stockholm and Riga	Baltic sea		0
895	What can you do after eating a garlic doused Indian meal in order to prevent your breath smelling of garlic the day after? 	Drink a Lassie (yoghurt drink) to coat your throat 		0
896	Small, active, carnivorous freshwater fish, found in the islands of the southern caribbean sea & in northern south america	Guppy		0
897	What was given to children to rid them of threadworm	Salt enema		0
898	What New Zealand native was the first man to climb Mt. Everest?	Sir Edmund Hillary		0
899	What are great waves resulting from earthquakes	Tsunami waves		0
900	What is an emasculated stallion called	Gelding		0
901	In Which Athletics Even Might You Use A Fosbury Flop 	High Jump 		0
902	Which Is The Largest Ocean 	The Pacific Ocean 		0
903	Best known for 'dancin' in the streets', martha and the vandella's also hit the charts with the song about which man	Jimmy mack		0
904	The Sejm are the legislative body in which country	Poland		0
905	What is liquor distilled from the fermented mash of cereal grains and containing about 40 to 50 percent ethyl alcohol by volume	Whiskey		0
906	Who won an academy award for best supporting actress in the film 'the english patient'	Juliet binoche		0
907	Robert Record in the mid 16th century invented what sign	Equals =		0
908	What did the Ayatollah Khomeni ban in 1979	Music on radio		0
909	In Which Blood Sport Are Banderillas Used 	Bull Fighting 		0
910	What was the first stop of the mayflower when it reached the new world	Cape		0
911	Who sang 'Beat It'?	Michael Jackson		0
912	A person who starts fires maliciously is a(n) _________.	Arsonist		0
913	Which is a small flightless bird, also New Zealand's national symbol?	Kiwi		0
914	Florida is not the southernmost state in the United States. ___________ is farther south.	Hawaii		0
915	The koala eats the leaves from this tree	Eucalyptus		0
916	In the cartoon Jem and the Holograms,what was the name of Jems computer.	Cinergy		0
917	From the Hebrew word for 'prophet'. A group of French painters active in the 1890s who worked in a subjective, sometimes mystical style, stressing flat areas of color and pattern. 	Nabis		0
918	Douglas Engelbart invented what - we all use it	Mouse		0
919	Which Famous Athletics World Record Stood Between 1968 & 1991 	Bob Beamans Long Jump 		0
920	 Baby mink are born blind and remain sightless for a __________	Month		0
921	What Muslims practise shirling as a religious act	Dervishes		0
922	Who invented the synthesiser ?	Bob Moog		0
923	Which Revolutionary Icon Was Killed On 9th October 1967 	Che Guevara 		0
924	Constructed In 1333 Which Is The Oldest Wooden Bridge In Europe 	The Kapellbrucke In Lucerne Switzerland 		0
925	How do you tell a male chromosome from a female chromosome	Pull down their genes		0
926	What year was Robert the bruce crowned King of Scotland	1306		0
927	Washington police officers get a half hour class in how to what	Sit Down		0
928	Who recorded the album "the cry of love" in 1970	Jimi hendrix		0
929	What is the most common name in italy?	Mario Rossi		0
930	What year was the intel pentium processor introduced	1993		0
931	How Is Rock Star Vincent Furnier Better Known?	Alice Cooper		0
932	Diverse group of either single-celled or multicellular organisms that obtain food by direct absorption of nutrients	Fungi		0
933	Which animal uses white ear spots as identification marks	Tiger		0
934	Francis Crick was the most famous of the discoverers of what? 	DNA 		0
935	Elvis Presley said big what on a woman turned him off	Feet		0
936	Which Actor Of The Silent Era Was Known As 'The Man Of A Thousand Faces' 	Lon Chaney 		0
937	What is the Capital of: Turkmenistan	Ashgabat		0
938	George Fox founded which religious group	Quakers		0
939	What is Wales' national dish called?	Cawl		0
940	Where were Panama hats first made	Peru		0
941	Sweet opaque jelly of flavoured cornflour and milk	Blancmange		0
942	Where Was The First Successful Steam Engine Installed 	Dudley East Midlands 1712 		0
943	Which British Female Singer Recorded An Album In Memphis With Jerry Wexler Producing	Dusty Springfield		0
944	In what organ of the body is insulin produced?	Pancreas		0
945	Who said "All life begins and ends with Nu___at least this is my belief for now___"?                                                 	Nu		0
946	What Was The Name Of The Son Of Cleopatra & Julius Caesar 	Caesarion 		0
947	The practice of women taking more than one husband is called?	Polyandry		0
948	Where did doughnuts originate	Holland		0
949	 The __________ has green bones.	Garfish		0
950	The Tilia is the Latin name for what type of tree	Lime		0
951	What is the main flavour of aioli	Garlic		0
952	Bruce Willis, Arnold Schwarzenegger and Sylvester Stallone own which London restaurant	Planet hollywood		0
953	Budapest is the capital of ______?	Hungary		0
954	What was Don Rickles' nickname?	Mr. Warmth		0
955	A normal human body has 46 what	Chromosomes		0
956	Which English Monarch Had The Shortest Reign	Edward 5th		0
957	Nelis, Seckel, Forelle and Bosc all varieties of what	Pears		0
958	Located in the Indian Ocean just north of the equator, __________ had a highly developed civilization as early as the fifth century B.C.	Sri lanka		0
959	Dogs bark. What do donkeys do	Bray		0
960	George Harrison lost a plagiarism suit for which of his songs	My sweet lord		0
961	Lack of what makes albinos	Pigment		0
962	Circuits can be wired in series or in _________.	Parallel		0
963	Who did zola budd trip in the 1984 los angeles olympics	Mary decker		0
964	If you landed at Shannon airport where are you	Limerick		0
965	Which of tea leaves or coffee beans have more caffeine	Tea leaves		0
966	What have over 80% of boxers suffered	Brain damage		0
967	Which TV Character Owns A Talking Cat Called Salem 	Sabrina Teenage Witch 		0
968	What Kind Of triangle Did New Order Have	Bizarre Love Triangle		0
969	What is the longest continuous footpath in the world	Appalachian trail		0
970	Who was the Greek and Roman god of the wind?	Aeolus		0
971	Who was the first person to break the sound barrier	Chuck yager		0
972	BB King gave his guitar what nickname	Lucile		0
973	What is the french word for 'mistake'	Faux pas		0
974	This re_opened in 1975 after being closed for 8 years.	Suez canal		0
975	How Many Faces Has The Solid A Dodecahedron 	12 		0
976	For what is ethylene glycol used in automobiles	Anti-freeze		0
977	Which member of the Beatles got his first drum kit on Christmas Day 1957 	Ringo Starr 		0
978	Name Led Zeppelins Drummer Who Died Of An Alcohol Related Incident In 1980	John Bonham		0
979	What is the flower that stands for: promptness	Ten-week stock		0
980	Which U.S. President was the first to have a Christmas tree in the White House? 	Franklin Pierce (1853-1857) 		0
981	Besides the Stones, which group had the longest touring career until the founder's death in 1995?	The Grateful Dead		0
982	Winston Churchill married in 1908. What was his wife's Christian name	Clementine		0
983	What is the town locale in the tv serial search for tomorrow	Henderson		0
984	In the 'Extreme Battle' mini-game in 'Resident Evil 2', what characters are selectable?                                              	Claire, Leon, Ada, and Chris		0
985	How many days are there in a leap year	366		0
986	How many segments for the number 8 on a digital clock	Seven		0
987	What Was The First No.1 For The Hollies	I'm Alive		0
988	Name The 8 Reindeer From 'The Night Before Christmas' Poem 	Blitzen, Comet, Cupid, Dancer, Dasher, Donner, Prancer, Vixen 		0
989	Which Famous Pop Star Made An On Screen Appearance Alongside Mr.T In The A Team	Boy George		0
990	In golf what name is given to the No 3 wood	Spoon		0
991	London and which UK city are joined by the Grand Union canal	Birmingham		0
992	Why did Mehmet Ali Agca become famous in 1981	Shooting pope jean paul ll		0
993	Marduk was the creator of the world to what ancient people	Babylonians		0
994	Casey Kasem was the original voice of what cartoon character	Shaggy on Scooby Doo		0
995	Which body part is found in Bodley Mansion in 'Castlevania II: Simon's Quest'?                                                       	An eye		0
996	What is the US equivalent of the UK Anglican church	Episcopalian		0
997	What is a mexican avocado dip	Guacamole		0
998	Who created james bond	Ian fleming		0
999	Who sang 'foolish games'	Jewel		0
1000	What egyptian object is also known as 'the key to the nile'	Ankh		0
1001	What is the meaning of the name of the constellation Sagitta ?	Arrow		0
1002	Who wrote "The Outcast of the Islands"	Joseph conrad		0
1003	Where is the novel 'Anne of Green Gables' set?	Avonlea		0
1004	What colours are on the belgian flag	Yellow, black and red		0
1005	What is the capital of Suriname	Paramaribo		0
1006	 It would require an average of 18 __________ to weigh in at 1 ounce.	Hummingbirds		0
1007	Who assassinated John Lennon?	Mark David Chapman		0
1008	Who Had A 90's Hit With The Song Mona	Craig McLachlan		0
1009	What is a group of this animal called: Bear	Sleuth sloth		0
1010	In the game Joust, what animal was your mount?                                                                                       	An Ostritch		0
1011	Animals that once existed but don't exist now are said to be _______.	Extinct		0
1012	What are Waist Overalls	Jeans - Levi Struss		0
1013	What's the term for a bet before cards are dealt	Ante		0
1014	Joe Louis became World Champion in which year	1937		0
1015	What dr seuss character steals christmas	Grinch		0
1016	Which Sport Do The Miami Dolphins Play? 	American Football 		0
1017	Whose 1999 Debut Solo Album Was Entitled "Schizophonic"	Geri Halliwell		0
1018	What is the name of Moses and Aaron's sister	Miriam		0
1019	What Are You Frightened Of If you are Alektorophobic?	Chickens		0
1020	What Italian habit did Thomas Coyrat introduce to England 1608	Eating with forks		0
1021	Crashes what was the first ship to reach the titanic after it sank	Carpathia		0
1022	What is the official state food of Texas	Chilli		0
1023	Khrushchev what was the sequel to 'going my way'	The bells of st mary's		0
1024	Where in the USA is Yale university	Connecticut		0
1025	What are described by the terms rep, challis & foulard	Neckties		0
1026	What actor played seven roles in no way to treat a lady	Rod steiger		0
1027	What nationality was Robert Bunsen, of Bunsen Burner Fame? 	German 		0
1028	The Rimac river runs through what city	Lima Peru		0
1029	What is the slowest moving land mammal	Sloth		0
1030	On average what weight nine pounds	Cremated Ashes		0
1031	What is used to lift fingerprints from difficult surfaces	Super glue		0
1032	Which Country Containes The Worlds Biggest Oil Refinery 	Venezuela 		0
1033	Tanzania Was Formely A Colony Of Which Country	Germany		0
1034	What Was The Beatles First Hit Single	Love Me Do		0
1035	1990s slang for very short cutoff jeans.	Daisy dukes		0
1036	Who wrote Great Expectations?	Charles Dickens		0
1037	How Long Was The Hundred Years War? 	116 Years 		0
1038	What is the only country with one train station	Singapore		0
1039	Name the twins on the Thundercats.	Wily Kit and Wily Kat		0
1040	In which river did the Pied Piper drown the rats of Hamelin	Weser		0
1041	Which actor was dubbed the muscles from Brussels	Jean Claude Van Dam		0
1042	What product was originally manufactured by communications giant Nokia?	Paper		0
1043	What is the line frequency of the american power supply	60hz		0
1044	The Charles Bridge and St Vitus' Cathedral are in which European city	Prague		0
1045	What is a group of larks called?	Exaltation		0
1046	Carl Djerassi, Pioneered, Invented and Patented Which Everyday Product?	The Contraceptive Pill		0
1047	Which Palace was the principal home of the Monarchy prior to 1837 when Buckingham Palace became the Monarchs address 	St James Palace 		0
1048	In 1995 the average US public school had 75 what	Computers installed		0
1049	Who wrote about Willie Wonka and the Chocolate Factory	Roald Dahl		0
1050	Irene T Escalera Is The Real Name Of Which Singer	Irene Cara		0
1051	Tennis what links Coke Rolex Slazenger Robinson's Barley water	Only adverts Wimbledon Centre		0
1052	What's the main ingredient in glass	Sand		0
1053	Who directed the film 'ordinary people'	Robert redford		0
1054	What type of creature was an Archelon	A Turtle		0
1055	From whom did the u.s buy the virgin islands	Denmark		0
1056	Whose Daughter Married Thin Lizzys Phil Lynott 	Leslie Crowther 		0
1057	According to Elton John, what were we hoppin' and boppin' to	Crocodile Rock		0
1058	Who Opened The First Cinema In Paris In 1895 	The Lumiere Brothers 		0
1059	Albert De Salvo was better known as who	The Boston Strangler		0
1060	In which film did Kevin Costner make his directorial debut	Dances with wolves		0
1061	The Cover Version "Sea Of Love" Was A Hit For The Honey Drippers Or The honey Eaters	The Honey Drippers		0
1062	What, on an Italian menu, is 'zuppa inglese'	Trifle		0
1063	Who or what killed Al Capone	Syphilis		0
1064	In Korea which animal is the symbol of long life	The deer		0
1065	What was Brian's brother's name?	Clive		0
1066	In Greek mythology Cronos and Rhea were the parents of who	Zeus		0
1067	What sort of drink is barbancourt	Rum		0
1068	In England what can you not hang out of your window	A Bed		0
1069	What surgical operation was done 115,000 times in us in 1986	Silicone breast		0
1071	What is the name of Doctor Claws pet in Inspector Gadget	Madcat		0
1072	From Which Country Do The Soccer Team Anderlecht Hail 	Belgium 		0
1073	What is South Carolinas official state dance	The Shag		0
1074	Mount Teide is the highest mountain in which country	Spain it's on Tenerife		0
1075	Which Product Was Advertised Using The Clash's "Should I Stay Or Should I Go" Making The Record A UK Number Hit In 1991	Levi's		0
1076	What is the capital of Slovakia	Bratislava		0
1077	What Is The Most Westerly Capital City In Mainland Europe 	Lisbon (Portugal) 		0
1078	Which Country Singer Guested With The KLF On Their Single Justified & Ancient	Tammy Wynette		0
1079	Who invented the kinetoscope	Thomas edison		0
1080	Kr is the chemical symbol for which element	Krypton		0
1081	The name Hilary comes from Latin meaning what	Cheerfulness		0
1082	What is the capital of Gambia ?	Banjul		0
1083	Into what sea does the Elbe River flow?	North Sea		0
1084	What city is Sugarloaf Mountain located in	Rio de janeiro		0
1085	What book was made into the first feature length British cartoon	Animal Farm in 1954		0
1086	Who is the famous giantkiller?	Jack		0
1087	Copper gets its name from which Mediterranean country	Cyprus where it was first found		0
1088	What does a Geophage do	Eats earth		0
1089	Name The One Colour Group And Their Best Selling One Colour Album From 1998	Simply Red / Blue		0
1090	Planet 24 Is A Production Company Founded By Which Singer	Bob Geldof		0
1091	Candlestick maker	Butcher baker candlestick maker		0
1092	Approximately how deep are the deepest mines? (in km)	Four		0
1093	In which country did Turkeys originate	USA		0
1094	Which of King Arthur's knights survived his last battle	Sir Bedavere		0
1095	Rex Stout created what corpulent orchid loving private eye	Nero Wolfe		0
1096	What is the fear of getting wrinkles known as	Rhytiphobia		0
1097	Which American devised a noise reduction system, now in general use, for tape-recorders etc	Ray dolby		0
1098	Whom Did Neil Kinnock Succeed As Leader Of The Labour Party? 	Michael Foot 		0
1099	Who found the long lost explorer david livingston	Henry stanley		0
1100	U.S. captials Louisiana	Baton rouge		0
1101	 The average __________ weighs 14 pounds.	Fox		0
1102	In Star Trek the Ferengi 10th rule of Acquisition what is eternal	Greed		0
1103	What is the fear of the figure 8 known as	Octophobia		0
1104	Scandinavian aquavit is flavoured with what	Cumin or Caraway		0
1105	"What Was The Name Of The Character That Henry Travers Plays In The Movie ""It's A Wonderful Life""" 	Clarence Oddbody 		0
1106	In 1999, which American retail giant announced that it was buying the Asda food retail chain? 	Wal-Mart 		0
1107	South Africa's Robben Island takes its name from which creatures	Seals		0
1108	 What does an ornithologist study	Birds		0
1109	In Knight Rider,what does K.I.T.T.'s name stand for?	Knight Industries Two Thousand		0
1110	Which 3 ReMixed Sister Sledge Tracks Were Released In 1993	We Are Family, Lost In Music, Thinking Of You		0
1111	In Which Country Was The Singer Mika Born	Lebanon		0
1112	Who killed Kenny?	They		0
1113	Pinigerophobia is the fear of	Smothering		0
1114	When are new states admitted to the u.s	Noon, july 4th		0
1115	In ancient China what meat was reserved for the Emperor	Pork		0
1116	What line on a map connects places of equal rainfall	Isohyat		0
1117	What does elly may call her pets in the beverly hillbillies	Critters		0
1118	What is the Capital of: Guadeloupe	Basse-terre		0
1119	How many pockets has a snooker table 	Six 		0
1120	In 1987, who released her second album 'Solitude Standing'?	Suzanne Vega		0
1121	Who did Imran Khan marry in 1995	Jemima goldsmith		0
1122	What country borders Egypt to the South?	Sudan		0
1123	What venomous serpent is known as the gentlemen among snakes 	The rattlesnake 		0
1124	The Brotherhood Of Man Recorded The Best Selling Single Of 1975 Can You Name It	Save All Your Kisses For Me		0
1125	What percent of the world's water is potable (drinkable)	1%		0
1126	Which Fraudulent Duo Told The Girl It Was True But Must Have Missed Her When They Were Found Out	Milli Vanilli		0
1127	Bristlemouths are the worlds most common what	Fish		0
1128	A story of ones own life	Autobiography		0
1129	Hannibal had only one what	Eye after Rome attack		0
1130	What nationality was the architect Le Corbusier	Swiss		0
1131	What nationality is Prince Phillip	Greek		0
1132	In 1973 Pioneer 11 launched. First spacecraft to flyby	Saturn		0
1133	What does NATO stand for ?	North Atlantic Treaty Organization		0
1134	A termed coined by British art critic Roger Fry to refer to a group of nine-teenth century painters, who were dissatisfied with the limitations of impressionism. It has since been used to refer to various reactions against impressionism, such as fauvism and expressionism.	Postimpressionism		0
1135	Nashville is the capital of ______	Tennessee		0
1136	In the song where was the 'House of the Rising Sun' located	New orleans		0
1137	Who said Politics is the art of the possible 11 Aug 1867	Otto Von Bismarck		0
1138	Which Single Brought Together The Eurythmics & Aretha Franklin In 1985	Sisters Are Doin It For Themselves		0
1139	What do French speakers call the German town that Germans call Aachen	Aix-la-chapelle		0
1140	Who Played The Title Role In The 1960 Hammer Production The Curse Of The Werewolf 	Oliver Reed 		0
1141	What is the name of the island that separates the two waterfalls at Niagara	Goat island		0
1142	What's the opposite of the orient	The occident		0
1143	This Group Had Their greatest Hit Between "Texas Cowboys" And Rollercoaster Name It	Swamp Thing / The Grid		0
1144	What does WD stand for in WD 40 Water	Displacer		0
1145	Poseidon was the Greek god of the ______?	Sea		0
1146	Who Is The Youngest Member Of The Rolling Stones 	Keith Richards 		0
1147	During which conflict were the battles of Blore Heath, Wakefield, Northampton and Mortimer's Cross	Wars of the roses		0
1148	What type of bird is a 'Khaki Campbell'	Duck		0
1149	Dish served A la Crecy is garnished with what	Carrots		0
1150	What region is the world's largest exporter of Christmas trees? 	Nova Scotia 		0
1151	Who Sang Backing Vocals On U2's Pride	Chrissie Hynde		0
1152	What do you call the underground systems in both Paris & Newcastle	Metro		0
1153	What caused fjords	Glaciers		0
1154	Formed in 1955, with which island was the organisation known by the acronym EOKA associated? 	Cyprus 		0
1155	What is the capital of Kansas?	Topeka		0
1156	What animal has the most taste buds over 27000	Catfish		0
1157	Alan Shearer was the first player to score 200 Premiership goals. Who was the second? 	Andy Cole 		0
1158	Squid, octopus and cuttlefish are all types of what	Cephalopods		0
1159	Baseballer Joe Schlabotnik's greatest fan	Charlie brown		0
1160	Who was the owner of the soda fountain on sesame street	Mr hooper		0
1161	What Searchers hit was written by Sony Bono	Needles and Pins		0
1162	Who played 'johnny mnemonic'	Keanu reeves		0
1163	What is the dish of chopped avocado with onions, tomatoes, chilli and seasoning called	Guacamole		0
1164	What were the names of the 3 mascots at the Sydney Olympic Games?	Ollie, Millie & Syd		0
1165	In Greek mythology, to where did zeus abduct europa	Crete		0
1166	Edward Teach became famous as who	Blackbeard the Pirate		0
1167	Which Label Did Blondie Record Under For Their String Of Late 70's & Early 80's Hits	Chrysalis		0
1168	Which Famous Artist Was Shot And Wounded By Valeria Solanis In 1968 	Andy Warhol 		0
1169	Who won an Oscar for his role in the film 'The Fugitive"	Tommy lee jones		0
1170	 The giant __________ is the largest creature without a backbone. It weighs up to 2.5 tons and grows up to 55 feet long. Each eye is a foot or more in diameter.	Squid		0
1171	Whose daughter became the wealthiest three year old in 1988?	Christina onassis		0
1172	In what Australian state would you find Parkes	New south wales nsw		0
1173	What was the name of the first 'talking movie'	The jazz singer		0
1174	Singer Paula ______?	Abdul		0
1175	This branch of physics deals with the general laws governing the motion of material objects	Mechanics		0
1176	"Its all Greek to me" comes from what Shakespeare play	Julius Caesar		0
1177	Jefferson city is the capital of ______	Missouri		0
1178	What did Tommy Kirk shoot because of hydrophobia	Old yeller		0
1179	Miami, Florida, is the most southerly major city in the continental United States, sitting about two degrees north of the ____________________	Tropic of cancer		0
1180	Which mainland Latin American country is in neither South America nor Central America?	Mexico		0
1181	Who Co-Wrote (Yeoman Of The Guard), (Lolanthe And The Mikado) 	Gilbert & Sullivan 		0
1182	How Many Lanes Does An Olympic Standard Swimming Pool Have 	Eight 		0
1183	In 2000 what word was written on Sydney bridge in fireworks	Eternity		0
1184	Which city is built on 118 islands	Venice		0
1185	Who painted 'The 3rd of May' (1808)	Francisco de goya		0
1186	Venus, Aphrodite and Hathor are all goddesses of what	Love		0
1187	What is the name of Fred Flintstones paperboy	Arnold		0
1188	Which Group Spawned A Teenage Army Of Tartan Scarf Waving Fans	The Bay City Rollers		0
1189	What is a tightrope walker	Funambulist		0
1190	BONANZA: What clothing did Little Joe usually wear	Green jacket and grey		0
1191	Which French Ruler Was Finally Defeated In 1815 	Napoleon 		0
1192	Who Released The 70's Album Entitled Trans-Europe Express 	Kraftwerk 		0
1193	What games name literally means To Grope Frantically	Scrabble		0
1194	Faithless, Absolute & Hypnotize Were 80's Hits For Which Group	Scritti Politti		0
1195	From which Shakespeare play is this line taken: Goodnight, goodnight! parting is such sweet sorrow, That I should say goodnight till it be morrow.	Romeo and juliet		0
1196	Who was the minstrel that found Richard I imprisoned	Blondel (De Nesle)		0
1197	What is the minimum age for scotch whisky before it can be sold in the uk? 	3 Years 		0
1198	Which Author Wrote The Sound & The Fury, The Wild Palms, And As I Lay Dying 	William Faulkner 		0
1199	Name The American Who Patented A Burglar Proof Lock Described As Magic & Infallible 	Linus Yale 		0
1200	What country celebrates its National Day on 14th July?	France		0
1201	Which singer is known as the 'Empress of the Blues'?	Bessie Smith		0
1202	In ballet, a lowering of the body by bending the knee.	Fondu		0
1203	What is the 'bole' of a tree	Trunk		0
1204	Who introduced Paul to John?	Ivan Vaughn		0
1205	Which Ancient Central American Civilisation Were Drinking Chocolate Milk As Long Ago As 600 BC 	Mayans 		0
1206	What is William Hague's middle name	Jefferson		0
1207	The angel shark has what other name	The monkfish		0
1208	What is the only dog to have a barb on each individual hair follicle	Dalmatian		0
1209	St Appolonia Patron Saint of what	Toothache		0
1210	40% of MacDonald's profits come from selling what	Happy Meals		0
1211	Who sailed to the Antarctic in the ship Discovery	Scott amundsen		0
1212	In pro football a "sudden death" period lasts how many minutes long?	Fifteen		0
1213	What is the capital of Poland	Warsaw		0
1214	What Are Goldie & Isis 	Reserve Boats For The Boat Race		0
1215	Who composed the music for the opera The Tales of Hoffman	Jacques Offenbach		0
1216	In which Welsh town is the Royal Mint	Llantrisant		0
1217	What Part Did Tina Turner Play In Ken Russell's Movie "Tommy"	The Acid Queen		0
1218	What is the meaning of the name of the constellation Draco ?	Dragon		0
1219	Wile E. Coyote, Supra Genius, gets all his traps to try to catch the Road Runner from what company	Acme		0
1220	In Montana it is a felony for a wife to open her husbands what	Mail		0
1221	Vaccinophobia is the fear of ______	Vaccination		0
1222	Who was the first American to win a Nobel prize	Theodore Roosevelt		0
1223	What happens every 45 seconds in the USA	House Fire		0
1224	What is the Capital of: Comoros	Moroni		0
1225	Which soft metal is used in the production of soap? 	Sodium 		0
1226	From the Earth to the sun is one AU what does AU stand for	Astronomical Unit		0
1227	In 1972 Mary Whitehouse Campaigned Furiously To Get Which Song Performed By An American Solo Artist Banned As She Deemed It Offensive	My Ding A Ling		0
1228	The eldest sister in the TV Series Charmed, is played by who?	Shannon Doherty		0
1229	Who Was Humphrey Bogarts 4th Wife ? 	Lauren Bacall 		0
1230	Between 1950 And 2000 Name Three Tennis Players Born in Germany That Won The Men's Singles Title At Wimbledon? (PFE) 	Boris Becker , John McEnroe & Michael Stich 		0
1231	Cool, Nice and Oz are all types of what?	Computer Languages		0
1232	What have woodpecker scalps, porpoise teeth and giraffe tails all been used as	Money		0
1233	Who was the first person to make a million pounds out of playing golf	Arnold Palmer		0
1234	Which male vocal range is pitched between tenor and bass?	Baritone		0
1235	More than 100 women make a living from impersonating who	Marilyn Monroe		0
1236	What fleshy muscular organ is joined to the hyoid bone	Tongue		0
1237	Where Exactly Were The Band "The Bee Gees" Actually Born	The Isle Of Man		0
1238	Who is Snoopy's arch enemy?	The Red Baron		0
1239	In Milan citizens can be fined $100 if they don’t always do what	Smile - Not Hospital and Funerals		0
1240	In the UK the Clerk of the Closet is the Queens official what	Chaplin		0
1241	Either of two saturated hydrocarbons, or alkanes, with the chemical formula C4H10	Butane		0
1242	What is the drummer's name in 'the muppet show'	Animal		0
1243	There are 2 annual publications devoted to the peerage. One is Burkes Peerage, what is the other	Debretts		0
1244	Which Character On Television Has The Surname “ Sagdiyev ” ?	Borat		0
1245	Portion of the central nervous system contained within the skull	Brain		0
1246	Where is the guggenheim museum	New york city		0
1247	In physics, process of reduction of matter into a denser form, as in the liquefaction of vapor or steam.	Condensation		0
1248	Who Is The Only Carry On Star To Have Won As Oscar	Jim Dale		0
1249	What shape is the set of all points in a plane equidistant from a certain point	Circle		0
1250	What percentage of the earths weight is taken up by the oceans	Less than 1		0
1251	Who directed the classic thriller 'The Birds'?	Alfred Hitchcock		0
1252	What is another name for the star fruit	Carambula		0
1253	How many pieces are found in a chess set ?	32		0
1254	Other than Germany, whose official language is German?	Austria		0
1255	Which Actress Turned Singer Released Their 4th Album In 2009 Entitled "Come To Life"	Natalie Imbruglia		0
1256	Which king of England met the king of France on the field of the cloth of gold	Henry viii		0
1257	Richard Drew produced an all purpose sticky tape, under what name was it sold in Europe	Sellotape		0
1258	Which band recorded the live album 'Strangers in the Night'	Ufo		0
1259	What Surrey town is famed for its salts?	Epsom		0
1260	The U.S. state that contains the most square miles of inland water is ______________	Alaska		0
1261	What was Higgins first name in "Magnum PI"	Jonathan		0
1262	Who directed Serpico	Sidney Lumet		0
1263	How Many Gold Rings In Total Did My True Love Give To Me (Think About It) 	40 (5x8=40) 		0
1264	What Function Does The Labyrinth In Your Ear Have 	It Maintains Your Balance 		0
1265	Which country has Budapest as its capital	Hungary		0
1266	What Is The Most Popular Finishing Double In Professional Darts? 	Double 16 		0
1267	Who was the first person to break the sound barrier?	Chuck Yeager		0
1268	What is the common name for many species of burrowing mollusks	Clam		0
1269	In The Film Risky Business Tom Cruise Danced Around His Living Room In His Underpants To What Song	Old Time Rock & Roll		0
1270	What was the first country to have a public monorail system	Japan		0
1271	The lumbar spine consists of how many vertebrae	Five		0
1272	Which country and western singer is known as the 'okie from muskogee'	Merle		0
1273	Panther Cap', 'Stinkhorn' and 'Penny Bun' are types of which plants	Fungi		0
1274	How many freckles did howdy doody have	Forty eight		0
1275	Which 1970's Group Featured The Longmuir Brothers?	Bay City Rollers		0
1276	Which US state has a buffalo or bison on its flag	Wyoming		0
1277	What does bbl mean	Be back later		0
1278	In which state is Cornell University	New york		0
1279	Which author wrote the two World War 2 books 'Fighter' and 'Bomber'	Len deighton		0
1280	What did president lincoln proclaim a national holiday in 1863	Thanksgiving		0
1281	In June of what year was the treaty ending WWl signed	1919		0
1282	What west coast nfl team has the motto 'commitment to excellence'	Oakland		0
1283	Which DJ & Recording Artist Is Known As The House Godfather	Frankie Knuckes		0
1284	What is the study of soil	Paedology		0
1285	Which TV series was narrated by Walter Winchell	The Untouchables		0
1286	What do Ethiopians spend	Birrs		0
1287	Which 2 Boys Spent 12 Weeks In The Charts Together With A Re-Mixed Surfari's Track	Beach Boys & Fat Boys (Wipeout)		0
1288	56% of men have had sex where	At Work		0
1289	How Did Dmaon Hill's Father Graham Die ? 	In A Plane Crash 		0
1290	A 'roux' is produced when making which food	Sauce		0
1291	In which musical work would you hear the song As Long As He Needs Me	Oliver		0
1292	What is the nickname for Texas	Lone star state		0
1293	What was ALF's girlfriend from Melmac's name?	Rhonda		0
1294	In Which Country Will You Find The Holiday Resort Bodrum 	Turkey 		0
1295	Liza Minelli Recorded An Album With The "Pet Shop Boys" Or "David Bowie"	The Pet Shop Boys		0
1296	What Is The Principle Language Of Brazil 	Portuguese 		0
1297	For which ad campaign was the line 'i can't believe i ate the whole thing' used	Alka seltzer		0
1298	When the choctaw indians were moved to oklahoma,they brought their crack police force with them. what were they called 	Lighthorsemen 		0
1299	Who was Tommy Lee Jones' freshman roommate at Harvard?	Al Gore		0
1300	Bourbon, sugar and mint make up which type of Cocktail 	Mint Julep 		0
1301	How many individual bets make up a Yankee	Eleven		0
1302	What ocean separates North America from Europe	Atlantic		0
1303	When was the Greek alphabet first used?	800 BC		0
1304	In medical matters, what does the letter C stand for in C.A.T. scanner	Computerised		0
1305	What name is given to a doctor who specialises in skin disorders	Dermatologist		0
1306	What is the commonest name for a pub in Britain	The Red Lion		0
1307	What's the radical feminist word for "history"	Herstory		0
1308	Who was the first woman to win 4 consecutive US tennis open	Chris Evert Lloyd		0
1309	What is a bangtail	Perforated tag		0
1310	Released in 1978 what were the names of the two gangs which John Travolta and Olivia Newton John belonged to in the movie `Grease'? 	The T-Birds and The Pink Ladies 		0
1311	How many chromosomes do each body cell contain	Forty six		0
1312	What is the capital of Romania	Bucharest		0
1313	In which California city does Poltergeist take place?	Cuesta Verde		0
1314	Where did over 300 defiant Indians head off to, after Sitting Bull was killed	Wounded knee		0
1315	A Statue Of Billy Bremner Stands Outside The Ground Of Which Football Ground? 	Leeds United 		0
1316	What's the term for the hybrid offspring if a male lion and a female tiger 	Liger 		0
1317	Which 1985 Song Was Co Written By Michael Jackson And Lionel Richie	We Are The World		0
1318	Which classic film of 1948 was advertised as, 'Greed, Gold and Gunplay on a Mexican Mountain of Malice'	Treasure of the sierra madre		0
1319	How Does Good King Wencelesas Like To Eat His Pizza 	Deep Pan Crisp And Even 		0
1320	Who Released The 70's Album Entitled John Barleycorn Must Die 	Traffic 		0
1321	New jersey has a spoon featuring over _________spoons from every state and almost every country	5400		0
1322	 The __________ whale is the mammal with the heaviest brain _ about six times heavier than a human's.	Sperm		0
1323	James Todd Smith Is The Real Name Of Which Singer	LL Cool J		0
1324	What are the first names of the popular early 80's duo hall and oates	Darryl		0
1325	What were the wicks in the Vestal Virgins lamps made from	Asbestos		0
1326	The Beatles Were The 1st British Group To Have A Us No.1 Single Who Was The 2nd	The Animals		0
1327	You can ski on the piste but what other sport uses the term	Fencing where the fight happens		0
1328	What's the main feature of a Chong Sang skirt	Split up side		0
1329	What is the fear of cosmic phenomenon known as	Kosmikophobia		0
1330	What is the literal meaning of the title Viceroy	In place of the King		0
1331	What French cheese is ripened in caves	Roquefort ewes milk		0
1332	Which planet was discovered in 1846	Neptune		0
1333	What is the most frequently seen comet?	Encke		0
1334	Name award shaped like a teapot with a skull and crossbones	Agatha - for crime mystery writers		0
1335	The angles inside a square total _______ degrees.	360		0
1336	What was the first gramophone record made from	Tinfoil		0
1337	Who Am I "frederick Bulsara (1964-1991)	Freddie Mercury		0
1338	-isms: Public ownership of the basic means of production, distribution, and exchange.	Socialism		0
1339	Where was slave trading abolished in 1807	British empire		0
1340	It is estimated that at any give time 1% world’s population is what	Drunk		0
1341	Which Swedish Female Vovalist Used "Open Sesame" To Enter The Charts	Leila K		0
1342	Which Song Was Used To Launch MTV In America	Video Killed The Radio Star		0
1343	In what Indian city is the Taj Mahal located	Agra		0
1344	What is the basic unit of currency for Morocco ?	Dirham		0
1345	What was the first Bond film not to be titled from a Bond book	Licence to Kill		0
1346	What is the measure of monitor screen quality	Resolution		0
1347	On what common object would you find a sleeve and a tray	A Matchbox		0
1348	Parr, Smolt and Grilse different names same thing what	Salmon - life stages		0
1349	Where was "Conozca Beatles" released	Mexico		0
1350	William Perks became more famous as who	Bill Wyman		0
1351	Which city, capital of the Assyrian Empire, was destroyed by fire in 612 B.C.	Nineveh		0
1352	Under what structure was the first nuclear reactor built in Chicago	Football stadium		0
1353	Which Celebrity Launched A Perfume Range Entitled 'M' Just In Time For Christmas 2007 	Mariah Carey 		0
1354	In Athletics Track Races What Does The Ringing Of A Bell Signify 	The Last Lap 		0
1355	Bob van Winkle changed his name to what	Vanilla Ice		0
1356	In The World Of Music Monica & Gabriela Irimia Are Otherwise Known As Who?	The Cheeky Girls		0
1357	Osteoporosis primarily affects	Bones		0
1358	When playing the bagpipes, what name is given to the “melody” pipe, played with one or two hands.	The CHANTER		0
1359	What city is signified by the 'd' stamped on some american coins	Denver		0
1360	What is the most common blood type in humans	Type o		0
1361	Red white blue yellow green what's missing from Rubik's cube	Orange		0
1362	Which American crowned a great 1998 by winning at Wentworth	Mark o'neara		0
1363	Bulls Blood wine comes from which country 	Hungary		0
1364	Which singer sang 'I Believe In Father Christmas'' 	I Believe In Father Christmas 		0
1365	What should be done with a used worn out flag	Burned		0
1366	What was the real name of the hospital on St. Elsewhere?	St. Eligius		0
1367	Johannes Ostermeir invented which photographic aid	Flashbulbs		0
1368	An assisted reproductive technology (art) in what one or more eggs are fertilized outside a female's body	Invitro fertilization		0
1369	In what Australian state would you find whyalla	South australia		0
1370	Name two self cleaning organs	Eye Vagina		0
1371	Who owned the yacht Lady Ghislane	Robert Maxwell		0
1372	Ghost Town' was the only number single released by which British band 	Specials 		0
1373	What us state includes the telephone area code 608	Wisconsin		0
1374	Which is the largest lake in the British Isles? 	Lough Neagh in Northern Ireland 		0
1375	Who was the first NHL player to score 50 goals in one season?	Maurice Richard <-- pronounced "Reeee-shard"		0
1376	In Which Us State Was Rapper And Hip Hop Artist "Eminem" Born	Missouri		0
1377	Aviatophobia is a fear of ______	Flying		0
1378	 A quarter horse gets its name from its speed in running the __________	Quarter_mile		0
1379	What was the setting for walk, don't run	Tokyo olympics		0
1380	What is Ray Charles' real last name?	Robinson		0
1381	Which is the largest known butterfly	Queen alexandra's birdwing		0
1382	Terrence Nezman became more famous as who	Stanley Kubrick		0
1383	Where was the first Pony Express set up	Outer Mongolia		0
1384	Denzil Washington's first film as director was what	Finding Fish		0
1385	Which South African Country (NOT South Africa) Banned The Book "Black Beauty" After Claiming It's Title Was Racist	Namibia		0
1386	Who wrote the novel' The Turn of the Screw'	Henry james		0
1387	Which Tv Legend Plays The Captain In The New Series Of Fort Boyard ?	Tom Baker		0
1388	In 'coronation street', who is ken and denise's son	Daniel		0
1389	Whiose first solo hit was Spread A Little Happiness in 1982?	Sting		0
1390	Approximately how many times a minute does lightning strike the earth	Six		0
1391	In The Classic 80's Video Prince Charming By Adam And The Ants Who Played The Role Of The Fairy God Mother	Diana Dors		0
1392	What is a pharaoh	King of egypt		0
1393	Which British alternative band takes its name from a character in the film To Kill a Mockingbird ? 	The Boo Radleys 		0
1394	Point Maley is the coast guard cutter in what Disney movie	Boatniks		0
1395	Who recorded the album "nebraska" in 1982	Bruce springsteen		0
1396	Other than martha washington, which two women have been represented on u.s currency	Pocahontas and susan b anthony		0
1397	What creature has a penis 20 times the length of its body	Barnacle		0
1398	What is the basic unit of currency for Switzerland ?	Franc		0
1399	 A group of bees can be called either a hive, a swarm, or a __________	Grist		0
1400	How Are "Florence Ballard & Mary Wilson" More Commonly Known	The Supremes		0
1401	Name the Australian film about the pianist Halstadt	Shine		0
1402	In 1925 Grace Scurr, A Secretary Invented & Named Which Product Now Synonomous With The 1980's?	The Filofax		0
1403	In Which Sport Might You Perform “ A Double Axel ” & “ A Lutz ” ?	Ice Skating		0
1404	Which Latin American author wrote 'The War of the End of the World'	Mario vargas llosa		0
1405	Who was king of the Franks from 768 to 814 a.d	Charlemagne		0
1406	Who Ended Up Winning The Formula One Drivers Championship In 2007 	Kimi Raikkonen 		0
1407	Which German city was the birthplace of the poet Heinrich Heine	Dusseldorf		0
1408	What's the capital of the Comoros	Moroni		0
1409	Before Changing It To Bob Dylan What Was This Legends Name	Robert Zimmerman		0
1410	Details of what can be found in The Blue Book	US Aristocracy		0
1411	What is the heaviest snake	Anaconda		0
1412	Excluding Alaska, the American state with the lowest population density is?	Wyoming		0
1413	Who painted The Blue Boy	Thomas gainsborough		0
1414	Name Either Of Chopin's Christian Names	Frederic Froncois		0
1415	Who Had A Hit With "Sweet Dreams Are Made Of This"	The Eurythmics		0
1416	Which Safety Device First Constructed & Used In 1982, Is Known By Its Creators As “Hybrid 3”	Crash Test Dummy		0
1417	The Intelligent whale was the nickname of an early what	Submarine		0
1418	What video game starts out with Koma Pigs stealing your treasured bracelet?                                                          	Tomba!		0
1419	This French peasant girl led the army to victories.	Joan of Arc		0
1420	What distant planet circles the sun every 84 years	Uranus		0
1421	According to the ancient Chinese what cures headaches	Swinging your arms		0
1422	What is the longest insect	Walking stick		0
1423	In which dishes is sticky rice used? 	Sushi 		0
1424	Who sang the 1975 remake of the Flamingos' I Only Have Eyes For You	Art		0
1425	Which year did Jemima Goldsmith marry Imram Kahn	1995		0
1426	What was the name of Roses monkey in Friends	Marcel		0
1427	Who invented the smallpox vaccine?	Edward Jenner		0
1428	Fear of haircuts is called	Tonsurephobia		0
1429	Which star of films such as 'The Philadelphia Story' died in 1997	James stewart		0
1430	Which English King had the most legitimate children (18)	Edward I		0
1431	Photophobia is fear of ______	Light		0
1432	Which country made the worlds first feature film in 1906	Australia Story of Kelly gang		0
1433	From 1979 until 2000 the most distant planet from the earth was _______.	Neptune		0
1434	What's the world's largest Gulf?	Gulf of mexico		0
1435	What do the pig, horse and rat have in common	Chinese astrology		0
1436	Where does Yogi Bear Live?	Jellystone Park		0
1437	What was unusual about Tyrell's car in the 1976 Spanish G Prix	Six Wheels		0
1438	Mr & Mrs Dursley Of No. 4 Privet Drive,Were Proud To Say That They Were Perfectly Normal Is the opening passage to which famous book?	Harry Potter & The Philosphers Stone		0
1439	Who was murdered in Bohemia in 929	Good King Wenceslas		0
1440	Nosocomephobia is the fear of	Hospitals		0
1441	Where did the British Brown Bess musket get its name	Thin line of uniform brown rust		0
1442	Which actress said 'Sometimes I'm so sweet even l can't stand it'	Julie andrews		0
1443	What sort of animal is a fennec	Desert Fox		0
1444	In what country did bongo drums originate	Cuba		0
1445	Phil Collins won an Oscar for Best Original Song in 2000. In which film	Tarzan		0
1446	India became independent in what year	1947		0
1447	What Is Paul McCartneys Middle Name	Paul His First Name Is James		0
1448	Which English Footballer Was Sent Off In The 1998 World Cup 	David Beckham 		0
1449	In the tv series 'leave it to beaver', what was the mother's name	June		0
1450	What Everyday Object Was Invented By Don Wetzel In 1968	The Cash Machine		0
1451	What album got arrowsmith a gold lp in 1975	Get your wings		0
1452	What order of insects contains the most species	Beetles		0
1453	What is the slogan for 'a sprinkle a day helps keep odour away'	Shower to		0
1454	How Many Times Was Tower Bridge Raised In 1990 	460 Times 		0
1455	In Greek mythology who was the Goddess of Chastity	Artemis – sister Apollo		0
1456	Christmas Island Is A Territory Belonging To Which Country 	Australia 		0
1457	What Is A Pencils Lead made From 	Graphite 		0
1458	What common sign derived from the Medici family crest	Pawnbrokers  balls		0
1459	Where on your body would you wear flippers	Feet		0
1460	What U.S. state was once an independent republic	Texas		0
1461	Where was Budweiser first brewed?	St. Louis		0
1462	In Massachusetts its illegal to have what in the bathroom	A lightswitch		0
1463	In what game do countries play for the Venice cup	Contract Bridge		0
1464	What is an onychophagist	A nail biter		0
1465	What novel centres on the romances of Ursula and Gudrun Brangwen	Women in love		0
1466	What's the common name for the disease that doctors call "rubella"	German measles		0
1467	For centuries, Spain's _________________ has been and still is one of the world's largest.	Fishing fleet		0
1468	In Israel what unexpected item is certified Kosher	Postage Stamps		0
1469	In Albany New York what's it illegal to do in the streets	Play Golf		0
1470	What was the real name of the gangster known as pretty boy	Charles floyd		0
1471	In 'les miserables', jean valjean's criminal number is the same as what character in 'the simpsons'	Sideshow bob		0
1472	Name the American pilot shot down over Russia in 1960	Francis Garry Powers		0
1473	Both Roxette & Sheena Easton Had A Hit With A Song Called What	You Got The Look		0
1474	Germany's allies in WW II were Japan, Italy, Hungary, Bulgaria, Finland, Libya, and _________	Romania		0
1475	The prefix tetra, used in such words as tetrach, tetrapod, & tetrameter, means what	Four		0
1476	What European Country Is The consumer Of The Most Ice Cream 	Sweden 		0
1477	Britain's oldest existing Trade Union was founded in 1747 what trade	Brushmakers and General Workers		0
1478	What does sputnik mean	Fellow traveller		0
1479	What is the sum of all the angles in a square? (in degrees)	360		0
1480	One who tells fortunes by the stars is a(n) __________.	Astrologer		0
1481	What's "birth control for roaches"	Black flag		0
1482	Which White Blues Singer Had Attended The University Of Texas In The Early 60's And Been Voted The Ugliest Man On Campus	Janis Joplin		0
1483	What was football player Dick Lane's nickname	Night train		0
1484	What was the first name of the cartoon character Mr Magoo	Quincy		0
1485	Sweetbread is derived from this organ.	Pancreas		0
1486	Grover Cleveland is the only United States president to have been married where?	White House		0
1487	Tall revolving wheel at fairgrounds	Ferris		0
1488	Which game is played at 12 a-side for women, but at 10 a-side for men	Lacrosse		0
1489	Name actor called The voice of Canada - had 1964 hit Ringo	Lorne Green		0
1490	Havilland what does dean martin's california license plate say, on his stutz blackhawk	Drunky		0
1491	What is the fear of tapeworms known as	Taeniophobia		0
1492	What common pests does New Zealand not have	Squirrels		0
1493	Who won the best actress Oscar 1959 Room at the Top	Simone Signoret		0
1494	A Scotsman tosses his caber - what does caber literally mean	Pole		0
1495	Who was the classical composer of the tune which was used for the 'Alfred Hitchcock Presents' TV show?	Gounod		0
1496	Who released an album called 'Ghost in the Machine' 	The Police 		0
1497	In cookery what happens to food served farci	It's stuffed		0
1498	What musical play - find a character called Magnolia Hawks	Showboat		0
1499	Which dormant volcano is the highest peak in Japan	Fujiyama		0
1500	What Did Tom Petty's Band Break	Hearts		0
1501	What is the currency of Turkey	Lira		0
1502	How Many People In A Tug Of War Team 	8 People 		0
1503	Often, a vampire's pallor.	Pale		0
1504	In 1953 Science fiction author L.Ron Hubbard founded which cult religion, one of who's prominent modern day followers is John Travolta 	Scientology 		0
1505	Who wrote "Wuthering Heights"	Emily bronte		0
1506	Football: The San Diego ______?	Chargers		0
1507	Aesculus is the Latin name of what type of tree	Horse Chestnut		0
1508	What nationality was the explorer Vitus Bering	Danish		0
1509	Who recorded the 1996 alburn, "Older"	George michael		0
1510	What Distance Is Covered In One Circuit Of A Modern Outdoor Running Track? ( In Meters) 	400 Metres 		0
1511	How many books are there in a trilogy	Three		0
1512	What is the capital of Luxembourg?	Luxembourg		0
1513	This organ is a small pouch that stores bile	Gall bladder		0
1514	In which country is Cusco	Peru		0
1515	What animal is incapable of making a sound that will echo?	Duck		0
1516	Who wrote a series of novels about the Ballentines of Africa	Wilber Smith		0
1517	What Was A Big Hit For Cameo In 1986	Word Up		0
1518	Which game usually begins with, "Is it animal, vegetable, or mineral"	20 questions		0
1519	The highest waterfall in the world, Angel Falls in Venezuela, has a total drop of how many feet	3121		0
1520	Got to do with it Who created the famed butler "Jeeves"	Pg wodehouse		0
1521	*The war in Vietnam ended with the fall of Saigon in what year?* 	1975 		0
1522	Name the Teletubbies?	Laa Laa, Tinky Winky, Dipsy and Po		0
1523	In the movie "Stand By Me", what did Gordy, Chris, Vern and Teddy set out to find?	A Body		0
1524	Pantophobia is the fear of	Fears		0
1525	Who Sang "I can Drive 55" From The Film "Back To The Future 2"	Sammy Hagar		0
1526	How many times did Peter deny Jesus?	Three		0
1527	Ariel is a satellite of which planet in the solar system	Uranus		0
1528	Name The Band: Robert Plant, Jimmy Page, John Paul Jones, John Bonham	Led Zeppelin		0
1529	In What Year Was The First Propeller Driven Atlantic Crossing 	1845 		0
1530	What did the Manhattan project set out to develop in 1941	Atomic bomb		0
1531	A Decade Later He Found A New Dawn But Who Had A No.5 Hit "Bless You" In 1961	Tony Orlando		0
1532	What is the most common surname in sweden	Johanssen		0
1533	Which American Vice President was the only one to serve two full terms as President?	Thomas Jefferson		0
1534	Rap group 2 Live Crew tells it their way and gets banned in	Florida		0
1535	What outfit merged with Time Warner in 1996 to form the world's largest entertainment company	Turner broadcasting systems		0
1536	Which Playing Card Was A Big Hit With Motorhead	The Ace Of Spades		0
1537	What are dolly parton's working hours	9 to 5		0
1538	___________ is the only country in the Middle East that does not have a desert.	Lebanon		0
1539	What is the basic unit of currency for Cameroon ?	Franc		0
1540	Name the first cartoon character made into a parade balloon	Felix the Cat		0
1541	 A __________ can swallow a rabbit whole and may eat as many as 150 mice in a 6_month period.	Python		0
1542	What committee eventually developed a standard for the 'c' programming language	Ansi		0
1543	Frodo Baggins was the first to enter Britain using what	Pet Passport he was a dog		0
1544	What is the capital of the state of Minnesota	St. paul		0
1545	A grave, processional court dance popular in the sixteenth and seventeenth centuries.	Pavane		0
1546	In Shakespeare's play who was the wife of Othello	Desdemona		0
1547	Which Andrew Lloyd Webber musical is set in the Troubles Of Belfast in the early 1970's?	The Beautiful Game		0
1548	*What movie earned Steven Spielberg his first hit in 1975?* 	Close Encounters 		0
1549	Who married prince albert of saxe-coburg-gotha	Queen victoria		0
1550	How many buttons (excluding the control pad) did the original NES controller have?                                                   	4		0
1551	Which Bands Career Was Boosted By An MTV Appearance Without Their Make Up	Kiss		0
1552	___________ has official state neckwear _ the bolo tie.	Arizona		0
1553	What country has a regiment of bicycle mounted soldiers	Switzerland		0
1554	In which Beatles song does the singer feel 2 foot small?	You've Got To Hide Your Love Away		0
1555	Where were the 1896 Olympics held ?	Athens, Greece		0
1556	Which Titan had snakes for hair?	Medusa		0
1557	Excluding the sun, what star is closest to the earth?	Proxima Centauri (aka Alpha Centauri)		0
1558	What's the international radio code word for the letter "V"	Victor		0
1559	What is an organism called that lives on or in a host animal	Parasite		0
1560	What was H.G Wells' first novel?	The Time Machine		0
1561	These are the two highest valued letters in "Scrabble". "Q" and _____.	Z		0
1562	Harvard University was originally called what	Cambridge Harvard gave 400 books		0
1563	What does the "touch of Midas" turn everything into ?	Gold		0
1564	Marvin Lee Aday Is The Real Name Of Which Well Known Singer	Meatloaf		0
1565	Who created Gomez, Mortia and Uncle Fester as a cartoon	Charles Adams		0
1566	Hitchcock appears in a newspaper in Lifeboat who wrote book	John Steinbeck		0
1567	In what substance are eggs rich, which causes silver to tarnish	Sulphur		0
1568	What is the capital of italy	Rome		0
1569	Which Food Stuff Has A Name Which Translates Into English As 'On A Skewer'? 	Kebab 		0
1570	Where did Churchill, Roosevelt and Stalin meet in 1945?	Yalta		0
1571	Where would you find A Wall The white line and Bars	Horses foot		0
1572	What Is Botany The Study Of 	Plants 		0
1573	Every photograph of an american atomic bomb detonation was taken by who	Harold edgerton		0
1574	Which religion's holiest shrine's are in the Ise Shima National Park near Osaka	Shinto		0
1575	Which sport uses "stones" and a "house"	Curling		0
1576	Mincing Lane in London is traditionally home of what trade	Tea		0
1577	The de beers group of companies controls more than 80% of the world's supply of ______	Rough diamonds		0
1578	Who was cremated on the banks of the Ganges river on January 31, 1948	Mahatma gandhi		0
1579	Bill Gates dropped out of which of educational institution	Harvard		0
1580	What colour are shelled pistachio nuts	Green		0
1581	When was the quadruplex telegraph invented	1864		0
1582	Who would use a brannock or what for	Measure foot shoes		0
1583	What is the name of a plant that turns to keep facing the sun	Heliotrope		0
1584	Which acid is found in unripe apples and other fruit	Malic acid		0
1585	"Love Affair" Had Three Top 10 Hits In 1968 Name 2 Of Them	Everlasting Love, Rainbow Valley, A Day Without Love		0
1586	In Kansas its illegal to eat what on Sunday	Snakes		0
1587	What sport was banned in England in 1849	Cockfighting		0
1588	Who is the author of Jude the Obscure	Thomas hardy		0
1589	Which Cartoon Character Has An Arch Enemy Called "Hugo A Go Go"	Batfink		0
1590	Which award has the words for valour on it	Victoria Cross		0
1591	Lucille Le Sueur became famous as who	Joan Crawford		0
1592	What is the most popular last name in France	Martin		0
1593	"How Many gifts Would you receive if you received all the gifts in the song ""The 12 Days Of Christmas"") Is It 196, 296, 364, 398 " 	364 		0
1594	Which country had four kings called malcolm	Scotland		0
1595	What was the maid's name in the tv series 'the brady bunch'	Alice		0
1596	Where is the Machu Picchu?	Peru		0
1597	Directed by Milos Foreman, which film won the 1975 Oscar for Best Picture	One flew over the cuckoo's nest		0
1598	Which composer was nickname the Red Priest	Vivaldi		0
1599	Addis Ababa Is The Capital Of Which African Country 	Ethiopia 		0
1600	What's the largest artery in the human body 	The aorta 		0
1601	Who sang the title theme of the James Bond film A View to a Kill	Duran duran		0
1602	Which beatle took up racing cars	George harrison		0
1603	What song earned lionel richie his first grammy	Truly		0
1604	What is a smew	A type of wild duck		0
1605	After who was America named?	Amerigo Vespucci		0
1606	What is the Capital of: Congo ,Republic of the	Brazzaville		0
1607	Who Invented the ball point Pen 	Laslo Biro 		0
1608	With what is rainfall measured?	Ombrometer		0
1609	Which is the most remote island in the southern atlantic ocean?	Bouvet Island		0
1610	At which American University were four students shot dead , while protesting against the Vietnam War	Kent		0
1611	Hermes, Symphony and Anik are all what	Com satellites		0
1612	Directed by Sydney Pollack, which film won the 1985 Oscar for Best Picture	Out of africa		0
1613	This small animal is trained to hunt rats and rabbits.	Ferret		0
1614	Stage who made her show business debut under the name of 'baby frances'	Judy		0
1615	Unknown Until the 60's Who Started Their Career With A Wartime Mining Disaster	The Bee Gees, New York Mining Disaster		0
1616	What is the chemical name for the mineral known as 'fool's gold'	Iron sulphide		0
1617	A "pigskin" is another name for a(n) ________	Football		0
1618	Which French Atlantic port was the target of a raid on March 28th 1942, code-named 'Operation Chariot'	St nazaire		0
1619	Which is the largest bird of prey native to England	Buzzard		0
1620	Which Politician Punched A Protestor Who Threw An Egg At Him During A Visit To Wales In 1991 	John Prescott 		0
1621	Superstition says the feathers of which bird shouldn't be used as house decorations	Peacock		0
1622	What was invented by Dr Albert Southwick in 1881	Electric chair		0
1623	The film Cleopatra was banned in Egypt in 1963 why	Liz Taylor Jewish  convert		0
1624	Name the boat on which you can see Niagara Falls	Maid of the Mist		0
1625	Who ordered the persecution of the christians in which peter and paul died	Nero		0
1626	William the boys name means what	Resolute Protector		0
1627	In 1878 Thomas Alva Edison patents the	Phonograph		0
1628	This science deals with the motion of projectiles.	Ballistics		0
1629	The North Star is also known as _______.	Polaris		0
1630	What are wrapped in rashers of bacon to make the dish Angels on Horseback	Oysters		0
1631	Of what was vadim viktorovich bakatin the last chairman	K.g.b		0
1632	 In 1880, there were approximately 2 billion passenger pigeons in the United States. By 1914, the species was __________	Extinct		0
1633	What does a philologist study	Languages		0
1634	In which continent would you find the Amur river ?	Asia		0
1635	POETS: Who wrote Kabla Kahn	Samuel taylor coleridge		0
1636	What is the largest natural harbour in south africa	Saldanha bay		0
1637	Who wrote Lord Of The Rings	J.R.R. tolkien		0
1638	What was the last film of director Stanley Kubrick?	Eyes Wide Shut		0
1639	What is the flower that stands for: do me justice	Sweet chestnut tree		0
1640	What animal provide 50% of all the protein eaten in Peru	Guinea Pigs		0
1641	Which Beatle wrote the score for the 1966 film The Family Way	Paul mccartney		0
1642	Who was the first king of israel	Saul		0
1643	What lives in a formicary?	Ants		0
1644	What muscle is joined by the lingual nerve to the brain?	Tongue		0
1645	What's the claim to fame of abraham zapruder 	He filmed john f. kennedy's assassination 		0
1646	In the film 'American Hot Wax', who did Jay Leno play?	Mookie		0
1647	In 1999 20% of all US tourists came from which country	Japan		0
1648	In which hospital would you find Sir Lancelot Spratt? 	St Swithens 		0
1649	What is the capital of Barbados	Bridgetown		0
1650	This statue was found on the Greek island of Melos in 1820.	Venus de milo		0
1651	What is a group of this animal called: Rook	Building clamour		0
1652	What kind of tree is Alexander the Greats entire army said to have sheltered under	Banyan		0
1653	Who has the most u.s banknotes	Russia		0
1654	Large extinct flightless bird	Dodo		0
1655	Who was the first (and last) catholic president	Kennedy		0
1656	The Bay of Naples and the Gulf of Salerno are inlets of which sea	Tyrrhenian		0
1657	The duodenum and the jejunum are two of the three sections of the small intestine. Which is the third	Ileum		0
1658	Rodrigo Diaz de Vivar famous under what nickname	El Cid		0
1659	The King in chess can move a maximum of this many squares.	Two		0
1660	What is the longest running musical in Broadway history?	Cats		0
1661	Who In 1963 , Became The First Film Star To Earn A Million Dollars For A Single Film 	Elizabeth Taylor In Cleopatra 		0
1662	The only national airline that has never had a crash nor a forced landing.	Qantas		0
1663	What constellation is represented by scales	Libra		0
1664	The Song "Crazy" Is Synonymous With Pasty Cline But Who Wrote It	Willie Nelson		0
1665	What U.S. state includes the telephone area code 501	Arkansas		0
1666	Who does fred savage play on 'the wonder years'	Kevin arnold		0
1667	How Many Jumps Are There In The Grand National 	30 Jumps 		0
1668	A technique by which patients monitor their own bodily functions in an attempt to alter those functions	Bio feedback		0
1669	Which vegetable is the principal ingredient of rosti? 	Potato 		0
1670	When was the smoke detector invented	1969		0
1671	What herb seed can be either black or white, & yields an oil that resists turning rancid	Sesame		0
1672	Who was the first athlete to have an animated cartoon series	Mohamed Ali		0
1673	 The cells which make up the antlers of a __________	Are the fastest growing animal cells in nature. moose		0
1674	Talking of Holland, traditionally Santa doesn't actually deliver the presents who does, is it, Rudolph, Santa's servant Black Peter, A goat named Ukko or Thirteen Elves 	His servant Black Peter 		0
1675	During which war did the expression "They shall not pass" originate	World war 1		0
1676	In 1983 Challenger crew perform a spacewalk - first by U.S. in	9 years		0
1677	What was John Fitzgerald Kennedy's campaign song in 1960	High Hopes		0
1678	Because the emu and the kangaroo cannot walk backwards, they are on the australian ______	Coat of arms		0
1679	What is the second-highest mountain in Africa?	Mt Kenya		0
1680	Why Do Fossils Of Long Necked Dinosaurs Appear To Show The Head Pulled Back Over The Body 	Shrinkage Of Neck Muscles After Death 		0
1681	The Dutch Royal family are Orange where is Orange	Village in France		0
1682	Chronos in Greek Saturnus in Roman Gods of what	The Harvest		0
1683	Who Starred In The Very Last Program To Be Broadcast By The BBC Just Before The Start Of The 2 nd World War	Mickey Mouse		0
1684	Where on your body are the most sweat glands	Feet		0
1685	The most common hat in the world is made out of what	Bamboo		0
1686	Which comic strip was banned from "Stars and Stripes"?	Beetle Bailey		0
1687	Bilrubin is produced by what part of the body	Liver		0
1688	Who was the Chief Designer of the Hawker Hurricane fighter aircraft	Sidney camm		0
1689	What is the currency of Egypt	The Pound		0
1690	What sort or creature is a Boto	Dolphin		0
1691	Who wrote "The Old Man and the Sea"	Ernest hemingway		0
1692	In Which Country Was Gin Invented 	Holland 		0
1693	In law, special court exercising jurisdiction over all maritime issues	Admiralty		0
1694	What does Honolulu mean in Hawaiian	Sheltered Harbour		0
1695	What is the former name of Guinea-Bissau	Portuguese guinea		0
1696	What kind of apple is on the beatles' apple label	Granny smith		0
1697	Who Was Standing In the Road	Blackfoot Sue		0
1698	"Need You Tonight" Was A Hit For Which Aussie Rockers	INXS		0
1699	What is the third movement of a symphony called	Minuet		0
1700	Laika was the first ever dog to do what	Go into space		0
1701	Who Was The First Musical Act To Have A No.1 Hit With The Stock Aitken & Waterman Hit Factory	Dead Or Alive		0
1702	What's heaven to fallen Norse warriors	Valhalla		0
1703	What Was Rod Stewarts 1975 Nautical UK No.1 Single	Sailing		0
1704	What was the initial capital of USSR?	Leningrad		0
1705	More than 40% of USA women were once what	Girl Scouts		0
1706	Which country was the first to allow women to vote in 1893? 	New Zealand 		0
1707	What fictitious murderer first appeared in String of Pearls 1840s	Sweeny Todd		0
1708	What wife of a U.S. President was accused of being a spy	Mary todd lincoln		0
1709	What Does Mass Multipled By Velocity Give You 	Momentum 		0
1710	What Is The Collective Term For Ducks? 	A Paddling 		0
1711	Who said about his songs "some are 10 minutes long some are 6"	Bob Dylan		0
1712	What state has the bluebonnet as it's flower	Texas		0
1713	What Do Sir Isaac Newton, Kenny Everett & Annie Lennox All Have In Common	All Born On Christmas Day		0
1714	What is Ronald Reagan's middle name	Wilson		0
1715	James hunt was disqualified after winning which grand prix	1976 british		0
1716	What was Ghandi's profession	Lawyer		0
1717	What's the opposite of 'synonym'	Antonym		0
1718	In World War 2, where was the defensive line known as The Gin Drinkers Line	Hong kong		0
1719	Which Film Director Did Madonna Marry In Scotland In 2000	Guy Richie		0
1720	What is the state flower of Wisconsin	Wood violet		0
1721	Which was the first Pinball game that used flippers ?	Humpty Dumpty		0
1722	An animal described as ecostate lacks which physical feature	Ribs		0
1723	Which detective story writer created the character Tommy Beresford	Agatha christie		0
1724	Who was the first prime minister of Israel	David ben gurion		0
1725	Who rode Rocinante	Don Quixote		0
1726	Who Knew Major Tom Was A Junkie	David Bowie		0
1727	Who played Samantha on "Bewitched"	Elizabeth Montgomery		0
1728	What Are Tracy Thorn & Ben Watt Collectively Known As	Everything But The Girl		0
1729	What seaport's name is spanish for 'white house'	Casablanca		0
1730	What is 9 metres high, 7 metres wide and 2,500 kilometres long	Great wall of		0
1731	If The Sum Of The Distances Between 2 Points Is Constant What Shape Do You Get 	Circle / Ellipse 		0
1732	Name the only war to end on the same day that the U.S. draft ended	Vietnam war		0
1733	French impressionist Claude _____	Monet		0
1734	Vegetable with green or purple leaves forming a round head	Cabbage		0
1735	What is the square root of the sum of 55+65+24	12		0
1736	In the 'Nightmare On Elm Street' films, who played Freddy Krueger?	Robert Englund		0
1737	What London landmark has an 11 foot long hand?	Big Ben		0
1738	Where on a horse is the pastern	Above the hoof		0
1739	Famous Lyrics: "There's a lady who knows all that glitters is gold and she's _____ _ _____ __ _____"	Buying a stairway to heaven		0
1740	What word did non-English speakers say sounded prettiest	Diarrhoea		0
1741	Leporine refers to what kind of animal	Rabbit		0
1742	The Big Dipper is part of what constellation?	Ursa Major		0
1743	Sir Emest Swinton was a British colonel credited with the invention of which weapon	Tank		0
1744	In 'Star Trek', who was the captain of the 'Enterprise C'?	Rachel Garret		0
1745	Kainolophobia is the fear of	Novelty		0
1746	Which element makes up 3.63% of the Earth's crust ?	Calcium		0
1747	What is a Winston Churchill	Cigar		0
1748	What mineral salt is an important constituent of bones and teeth	Calcium		0
1749	Which drink is known as "the uncola"	7-up		0
1750	Where is tobruk	Libya		0
1751	What is the Capital of: Puerto Rico	San juan		0
1752	*What was the name of the scandal that forced President Nixon to resign?* 	Watergate 		0
1753	What is liquid clay used in pottery	Slip		0
1754	Which TV show portrayed the lives of performing arts high school students 	Fame 		0
1755	What blood type has been found in less than a dozen people since it was first discovered	Type ah		0
1756	What city has a newpaper called the plain dealer 	Cleveland 		0
1757	What first appeared at the 1928 Winter Olympics	Five Olympic Rings		0
1758	Who appeared on the first cover of TV guide 3 April 1953	Desi Arnaz Jr		0
1759	Cord what colour is the umbilical cord	Blue		0
1760	Which two early 19th century German brothers wrote a collection of fairy tales	Grimm brothers		0
1761	Taal is an alternative name for what language	Afrikaans		0
1762	Which queen had menstrual cramps eased with marijuana	Queen victoria		0
1763	What is the Capital of: China	Beijing		0
1764	What animal has the highest blood pressure	Giraffe		0
1765	According to Billboard what was the top single of the 60s	Hey Jude		0
1766	Worlds first paperback book written in 1867 by Goethe what title	Faust I		0
1767	The Horned Planet is better known as what	Venus		0
1768	What do diners in a restaurant use to take away their leftovers	Doggy bag		0
1769	What religions sacred writings are divided into the Tripitaka	Buddhism		0
1770	Where is Bonnie Prince Charlie buried	Rome		0
1771	In which war was Bunker Hill a major battle? 	The American War Of Independence 		0
1772	In which European country did the use of Christmas trees originate 	Germany (5th Century) 		0
1773	Who created the music for N2O: Nitrous Oxide?                                                                                        	The Crystal Method		0
1774	What Was Westlifes First UK Number One Hit?	Swear It All Over Again		0
1775	Springsteen What country's explorers discovered the site of Pensacola, Florida	Spain		0
1776	By the time a child finishes elementary school they will have witnessed how many murders on television	8,000		0
1777	What place is known as 'the land nowhere near'	Cape three points		0
1778	What is the latin phrase meaning 'for the particular end or purpose at hand'	Ad hoc		0
1779	What is the name given to a group of geese	Gaggle		0
1780	What relation to you is your uncle's father	Grandfather		0
1781	Which fruit is used to make Calvados? 	Apples 		0
1782	Women do it twice as often as men - what	Blink		0
1783	In the Bible Judah was in which province	Palestine		0
1784	Macrophobia is the fear of	Long waits		0
1785	Who said "Its so long since sex I forget who gets tied up"	Joan Rivers		0
1786	What was Anne's surname in Anne of Green Gables	Shirley		0
1787	Which Premiership Club Play Their Home Games At The JJB Stadium? 	Wigan Athletic 		0
1788	What was Spencer Tracy's last film	Guess whose coming to dinner		0
1789	In what Australian state would you find Canberra	Act		0
1790	What product is consumed most in California	Bottled Water		0
1791	In Which Story Does The Schoolboy (Piggy) Star 	Lord Of The Flies 		0
1792	What did robert bunsen invent	Bunsen burner		0
1793	Who was Olive Oyls boyfriend  -  before Popeye	Ham Gravy		0
1794	In which North American city would you find the 1815 feet high C.N. Tower	Toronto		0
1795	Charles Jung invented what in America	Fortune Cookies		0
1796	Who Was Ptolemy Dionysius Related To As Both Brother And Husband 	Cleopatra 		0
1797	In Georgia what can you not keep in your bathtub	Donkey		0
1798	What was the chief Roman silver coin	Denarius		0
1799	Are Worker Ants Male Or Female? 	Female 		0
1800	Who was the first man in space?	Yuri Gagarin		0
1801	What is Virga	Rain the don’t reach ground		0
1802	In telephony, what do the initials ISDN stand for	Integrated services digital network		0
1803	The Dirty Harry franchise ran to five films what was the title of the final 1988 film	The dead pool		0
1804	Which footballer was sentenced to 3 months at Ford Open Prison in 1984 for drink driving and assaulting a police officer? 	George Best 		0
1805	What is the flower that stands for: addresses rejected	Ice plant		0
1806	Basketball: the Milwaukee _______	Bucks		0
1807	A Stand or Flamboyance is the collective noun for which type of bird?	Flamingo		0
1808	The telephone was invented in which year	1876		0
1809	Type of spongiform encaphalopathy affecting human beings and leading to dementia	Creutzfeldt-jakob disease		0
1810	Unit of measure for energy	Joule		0
1811	Who was the second king of israel	David		0
1812	Which Musical Was Built Around The Songs Of The Pop Group Abba	Mamma Mia		0
1813	Which saint died about 601 AD	David		0
1814	What geographic term describes a hill with sharply sloping sides & a flat top	Butte		0
1815	What is the capital of Philippines	Manila		0
1816	Who Had A Number One Hit With “Fill Me In” In 2000?	Craig David		0
1817	What class of ship was the Caine	Minesweeper		0
1818	Creme de Menthe and brandy make which cocktail? 	A Stinger 		0
1819	Name Dennis the Menace dog Hank Ketchum comics 1950s	Ruff		0
1820	The 9 banded armadillo and humans have what in common	Both catch Leprosy		0
1821	Reeves who produced 'sgt pepper's lonely hearts club band'	George martin		0
1822	What Type Of Shop Predominates On The Ponte Vecchio In Florence 	Jewellers Have Had The Monopoly Since 1593 		0
1823	What US state is the magnolia state	Mississippi		0
1824	Wiley E Coyote chases roadrunner what does the E stand for	Ethelbert		0
1825	Thousand after what are the b52 bombers named	Fifties hairdo		0
1826	Who was the first female American astronaut ?	Sally Ride		0
1827	What is the capital of Algeria ?	Algiers		0
1828	Who collaborated with John Lennon on 'Whatever Gets You Through The Night'?	Elton John		0
1829	Dance with a Stranger was the film of who's life story	Ruth Ellis		0
1830	A band of painted or sculpted decoration, often at the top of a wall.   	Frieze		0
1831	Who's first girlfriend was named Thelma Pickles?	John Lennon		0
1832	What keeps growing until you are 35 then starts to shrink	Your Skeleton		0
1833	Who was the first African American to play in a NBA game	Earl Lloyd		0
1834	Which building material gets its name from Arabic for the brick	Adobe		0
1835	What Was The First TV Show To Be Filmed In Colour	Stingray		0
1836	Where did Clark Kent attend college?	Metropolis University		0
1837	Which Comedian Has The Real Name Of "Robert Davis"	Jasper Carrott		0
1838	What is the medical term for an eyeball shaped like a rugby ball	Astigmatism		0
1839	How Long Can A Stag Beetle Spend As A Larva 	Up To Three Years 		0
1840	Rebecca Rolfe Is More Commonly Known As Who	Pocahontas		0
1841	What is the address of The Munsters?	1313 Mockingbird Lane		0
1842	In what mountain range is Kicking Horse Pass?	Rocky		0
1843	In an average lifetime, the average american charges on _____	Credit cards		0
1844	Which cow disease was first identified in Britian in 1986 and by 1996 had claimed 158,000 cattle	Bovine spongiform encephalopathy		0
1845	In the film 'home alone', who played the baddies	Joe pesci and daniel stern		0
1846	What is the highest active volcano in the world?	Cotopaxi		0
1847	On what does the firefly depend to find mates	Sight		0
1848	Whose suicide made robert mitchum sigh, "she seemed like a lost child"	Marilyn monroe		0
1849	Who was captain of 'the mayflower'	Miles standish		0
1850	On which motorway are the Michael Wood and Gordano service areas	M5		0
1851	What is the fear of gods or religion known as	Theophobia		0
1852	Who was the female star of the film 'Seperate Tables'	Deborah kerr		0
1853	England its illegal for a lady to do what on a public conveyance	Eat Chocolates		0
1854	What boys name means Rich Guard	Edward or Edmund		0
1855	Wwhat is the name of Mulder and Scully's supervisor on the X-files?	Walter Skinner		0
1856	Estelle Parsons best supporting actress Oscar what 1967 film	Bonnie and Clyde		0
1857	In egyptian mythology, who was isis the wife of	Osiris		0
1858	Who recorded the album "Wings Over America" in 1976	Paul McCartney		0
1859	Worker ants may live up to how many years	Seven		0
1860	When And Over What Was The First British Referendum Held? 	1975, Membership Of The EEC 		0
1861	What is the Australian sea wasp	Jellyfish		0
1862	What Connects Jeff Healey, Ray Charles, Stevie Wonder	All Are Blind		0
1863	Which country blew up a greenpeace ship in new zealand	France		0
1864	What is the principal river of Ireland?	Shannon		0
1865	What Russian revolutionary founded Pravda	Leon Trotsky		0
1866	What name is given to the current of warm water that flows across the Pacific to Peru	El nino		0
1867	What Is Lepidoptery Better Known As 	Butterfly Collecting 		0
1868	What's the plural of 'larva'	Larvae		0
1869	Which russian scientist used dogs to study conditioned reflexes	Ivan pavlov		0
1870	After Who Was The Sandwich Named 	The Earl Of Sandwich 		0
1871	Who was the first Christian missionary?	Paul		0
1872	Who won a boxing gold medal at Sydney in 2000 in the super heavyweight division? 	Audley Harrison 		0
1873	Where is the site of the U.S. bullion depository	Fort knox		0
1874	Which famous athlete was was a Tory M.P. from 1959-66 and 1969-74; latterly holding ministerial office	Chris chataway		0
1875	How many locks are there on the Suez Canal	None		0
1876	Who is the Norse god of fertility, sun, & rain	Frey		0
1877	One of the band steps is nicknamed H what's it stand for	Hyperactive		0
1878	A person with refined taste in food and drink	Epicure		0
1879	Who Organised The Legendary 1972 Bickershaw Festival Starring The Grateful Dead, Captain Beefheart, & Donovan	Jeremy Beadle		0
1880	In Italy, if you were served pesce martello, what would you be about to eat? 	Shark 		0
1881	Who is the famed musical director for Square's Final Fantasy series?                                                                 	Nobuo Uematsu		0
1882	Equestrian, Yachting and what Olympic sport are sexes equal	Shooting		0
1883	What is the current no 1 aphrodisiac (reputedly)	Asparagus		0
1884	Who is Goldie Hawns actor partner	Kurt russell		0
1885	What planet was 'ALF' from? 	Melmac 		0
1886	What Country Was The First To Win The World Cup & What Country Was The First To Host It (PFE) 	Uruguay & Uruguay 		0
1887	What is the address Donald Duck lives at	1313 webfoot walk, duckburg, calisota		0
1888	What is the unit of currency in Hungary	Forint		0
1889	One of Ferdinand Magellen vessels completed the first circumnavigation of the world in which year	1522		0
1890	How long is Lent is western churches? 	40 Days 		0
1891	According to the Bible who is Jesus's father 	God 		0
1892	What Is A Ramekin 	A Small Casserole Dish 		0
1893	Pilgrims visit Mecca where is Mecca	Saudi Arabia		0
1894	March April and May are the only months that have what	Anagrams Charm Ripal Yam		0
1895	Puritan preacher who said "Wine is from God, the drunkard is from the Devil"	Increase mather		0
1896	Which Canadian island is the setting for 'Anne of Green Gables	Prince edward island		0
1897	What ship sank in "a night to remember"	Titanic		0
1898	By the time a child finishes elementary school they will have witnessed how many acts of violence on television	100000		0
1899	Stewart Goddard changed his name to become what pop hit	Adam Ant		0
1900	Which English Prime Minister was known as 'the Great Commoner'?	William Pitt the Elder		0
1901	Who is the lead singer of the group doors	Jim morrison		0
1902	Which Novel Was The First To Be Written On A Typewriter	Adventures Of Tom Sawyer		0
1903	In Guelph Ontario a by-law makes what illegal in the city	Peeing A no Pee zone		0
1904	In which European city is Charles university	Prague		0
1905	What is the young of this animal called: Pigeon	Squab squeaker		0
1906	The easiest to defend continent in Risk	Australia		0
1907	In dry measure 8 quarts are a what	Peck		0
1908	Gerald Thomas directed what series of films	Carry on Films		0
1909	What links Sivan Av Tevat and Adar	Jewish months		0
1910	Winnie the Pooh lived where	Hundred Acre Wood		0
1911	What do men do half as much as women	Blink		0
1912	In 'startrek', who did leonard nimoy play	Dr spock		0
1913	Which song did the easybeats record that everyone sang at the end of a work week	Friday on my mind		0
1914	Who Originally Said Of Gerald Ford That 'He Was So Dumb That He Couldn't Fart And Chew Gum At The Same Time'	Lyndon B Johnson		0
1915	If an Aussie called you a Bananabender what would he mean	You were from Queensland state		0
1916	Born May 7, 1901, He Starred In This Movie: Dallas - 1950	Gary cooper		0
1917	Which metal has the chemical element W? 	Tungsten 		0
1918	What colour is Llamas milk	Yellow		0
1919	For which ad campaign was the line 'I can't believe I ate the whole thing' used?	Alka Seltzer		0
1920	Who is the persian god of light	Mithra		0
1921	What is the national sport of Finland	Motor Rallying		0
1922	Who was the black assistant of mandrake the magician	Lothar		0
1923	Which doctor loved Lara Antipova	Dr zhivago		0
1924	 A crocodile can't stick out its __________	Tongue		0
1925	If yoU.S.uffer from ailurophobia what are you afraid of	Cats		0
1926	Who Said "Who controls the past controls the future. Who controls the present controls the past"?	George Orwell		0
1927	Name Paul McCartneys Back Up Group On His We All Stand Together Single	The Frog Chorus		0
1928	What popular drink was introduced at the St Louis World's Fair in 1904	Ice		0
1929	Which writer coined the word Cyberspace in 1984	William Gibson – Neuromancer		0
1930	Who won the 1988 Superbowl	Washington Redskins		0
1931	What is the Capital of: Aruba	Oranjestad		0
1932	The Christmas Tree Displayed In Londons Trafalgar Square Is Traditionally Donated By Which Country 	Norway 		0
1933	Countries of the world:central Europe, the capital is Prague	Czech republic		0
1934	What dog has the best eyesight	Greyhound		0
1935	What was Madam Curie's husbands name	Pierre		0
1936	What was first played at Ballarrat gold fields, Australia in 1853	Australian rules football		0
1937	Spanish: how do yoU.S.ay "fifty"	Cincuenta		0
1938	The first programmable machine was made in 1808, what was it	Loom		0
1939	How Did Henry Stanley Carry His Boat, The Lady Alice Overland 	He Divided It Into 8 Sections 		0
1940	In The World Of Music How Is Raymond Burns More Commonly Known	Captain Sensible		0
1941	Where did aristotle believe the seat of intelligence was	Heart		0
1942	What is bovine spongiform encephalopathy	Mad cow disease		0
1943	Britain's first stretch of motorway was opened in 1958 to bypass which northern town (now a city) 	Preston 		0
1944	What did members of the nazi ss have tattooed in their armpits	Blood type		0
1945	Heroin is the brand name of morphine once marketed by which pharmaceutical company?	Bayer		0
1946	In what city 1985 was the worlds first computer museum opened	Boston		0
1947	Whose likeness is displayed on the purple heart medal	George washington		0
1948	Which Film Starring John Candy Told The Story Of The Jamaican Bobsleigh Team 	Cool Runnings 		0
1949	What is a gricer interested in?	Trains		0
1950	Which films are about the Corleone family?	The Godfather films		0
1951	Floating wreckage at sea	Flotsam		0
1952	 The biggest frog is the appropriately named __________ frog (Conraua goliath) of Cameroon. They reach nearly 30 cm (a foot) and weigh as much as 3.3 kilograms.	Goliath		0
1953	What roman emperor does the King of Diamonds represent	Julius caesar		0
1954	The Name Of Which Chinese Dish Means 'Odds & Ends' 	Chop Suey 		0
1955	Link the sports Cricket, Rackets, Croquet and Motorboat racing	Only appeared once in Olympics		0
1956	Who wrote 'Bliss was it in that dawn to be alive, but to be young was very heaven'	William wordsworth		0
1957	What does wyatt earp's headstone say	..that nothing's so sacred as honor and		0
1958	Who played bonnie to warren beatty's clyde	Faye dunaway		0
1959	Which Band Recorded The Album "Hysteria"	Def Leppard		0
1960	On the 80's album Purple Rain who backed Prince?	The Revolution		0
1961	Which classic Hollywood western is based on the film "The Seven Samurai	The magnificent seven		0
1962	What two-person group recorded the song 'love will keep us together'	Captain		0
1963	Who was the leader of the wolves in Kipling's Jungle Book	Akala		0
1964	Who Had A Hit In 1981 With The Song Daddy's Home	Cliff Richard		0
1965	Monza & Silverstone Are Venue's For Which Sport? 	Formula One Racing 		0
1966	What novel contains the line: "who promoted major major"	Catch 22		0
1967	What is the real identity of aquaman	Arthur curry		0
1968	What Is The Square Root Of 144 	12 		0
1969	At which village in West Sussex was a Roman palace discovered in 1960	Fishbourne		0
1970	For what is the eighteenth and nineteenth century sailor Sir Francis Beaufort best remembered? 	His System Of Wind Force Indicators 		0
1971	In which Australian state or territory is the Kimberley Plateau and Eighty Mile Beach	Western australia		0
1972	Which nation calls its parliament 'The Knesset'?	Israel		0
1973	90% of all thoroughbreds are descended from what horse	Eclipse		0
1974	Alan Stuart Konigsberg famous as who	Woody Allen		0
1975	How many points does a player score for a goal in hurling? 	3 Points 		0
1976	Tinky winky, Dipsy LaLa and Po are know as what?	The Teletubbies		0
1977	What kind of food is Cullan Skink	Fish		0
1978	In Which Ocean Is The Gulf Stream 	The Atlantic 		0
1979	In religious institutions, a courtyard with covered walks. 	Cloister		0
1980	Which 1990's Star Appeared As A Child On The Sleeve To The Grateful Deads 1969 "Aoxmoxoa" Album	Courtney Love		0
1981	Concertino=short concerto, concertina=simple type of this instrument	Accordian		0
1982	In 18th century England what was known as Old Tom	Gin		0
1983	Nudophobia is the fear of	Nudity		0
1984	What was the nationality of Franz Liszt	Hungarian		0
1985	What does bette davis' headstone say	She did it the hard way		0
1986	What capital city is found near the headwaters of the Bosna River	Sarajevo		0
1987	What is the basic unit of currency for Qatar ?	Riyal		0
1988	Which Pop Duo Before Hitting The Big Time Were Formally Kno wn As Executive	Wham		0
1989	Who founded the academy in athens	Plato		0
1990	The oldest tree in Britain is a yew in Scotland, how old is it	1,500 years		0
1991	Grasshopper Glacier in ___________ was named for the grasshoppers that can still be seen frozen in the ice.	Montana		0
1992	Was "Glory Of Love" A Hit For Peter Cetera Or Kenny Loggins	Peter Cetera		0
1993	Angus Drummie Zeb Gaye is a member of which group	Aswad		0
1994	Which island lies to the west of australia	Mauritius		0
1995	As who is the Frankish ruler Charles the Great better known	Charlemagne		0
1996	In the 1998 film "Titanic", who played the part of Captain Smith	Bernard hill		0
1997	Who imported the first Go set into Britain ?	Marco Polo		0
1998	Only 2 Songs By The Beatles Spent Over 7 Weeks At No.1 "From Me To You" Was One Name The Other	Hello, Goodbye		0
1999	According to historians what is the oldest device still used	Toothpicks		0
2000	Which US president twice served as an executioner	Grover Cleveland – duty as sheriff		0
2001	Near what falls did Jimmy Angel crash his plane in 1937?	Angel Falls		0
2002	What colour bill does a greylag goose have?	Orange		0
2003	In Which English City Will You Find The Angel Of The North 	Newcastle 		0
2004	Who once entered a Charlie Chaplin contest in Monte Carlo & placed third	Charlie chaplin		0
2005	What is the longest word that can be typed using only the left hand	Stewardesses		0
2006	What name was given to the Allied invasion of North Africa in 1942? 	Operation Torch 		0
2007	What gland washes the eyes	Tear gland		0
2008	Caries refers to decay in what	Teeth		0
2009	Methacrylate resin is used to make what	Prosthetic eyes		0
2010	Which Famous TV show was introduced by the theme tune The Black and White Rag? 	Pot Black 		0
2011	What is the capital of the U.S. state of Delaware	Dover		0
2012	In Greek mythology, who did melanion defeat in a footrace	Atlanta		0
2013	Who collaborated with john lennon on 'whatever gets you through the night'	Elton john		0
2014	What Is Micks Middle Name	Philip		0
2015	How Are "Alan, Wayne Merrill, Jay & Donny" More Commonly Known	The Osmonds		0
2016	How many top ten digit hits came from Lionel Richie's LP "Can't Slow Down"	Five		0
2017	What was the first name of Senor Cardini, the Mexican restaurateur who created a classic salad in 1924? 	Caesar 		0
2018	By what title was Mohandas K Gandhi known	Mahatma		0
2019	International registration letters what country is ZR	Zaire		0
2020	What was the name of the character on the 1st Garbage Pail Kids Pack? 	Blasted Billy or Adam Bomb 		0
2021	Who was king of Egypt from 1375 to 1358 b.c	Amenhotep iv		0
2022	Where is the statue 'le petit pissoir'	Brussels		0
2023	What people were the first to use the rounded arch	Romans		0
2024	Diane Leather was the first woman to do what	Sub 5 minute mile		0
2025	Which 1976 Film Is About A Persecuted Schoolgirl With Psychokinetic Powers 	Carrie 		0
2026	What Monty Python movie was banned in Scotland	Life of brian		0
2027	What is the top holiday in the US for candy / sweet sales	Halloween		0
2028	Which witch did Ozzy Osborne sing about in 1980 	Aleister Crowley 		0
2029	Who wrote the psalms	David		0
2030	William Moulton Marston Lie Detector and what comic character	Wonderwoman		0
2031	Who wrote the novel "Slaughterhouse Five"	Kurt vonnegut jr		0
2032	Which Rodent Has Given It's Name To A Mean Spirited Or Bad Tempered Woman 	Shrew 		0
2033	Where is the dirtiest skin on your body	The face		0
2034	What famous animal character called "Skull Island" home?	King Kong		0
2035	What creature in nature is most sensitive to heat	Rattlesnake organs between eyes		0
2036	American Hamilton Smith invented what in 1858	A washing machine		0
2037	What's the ancient greek word for "great city"	Megalopolis		0
2038	What can readers learn about in Equus magazine	Horses		0
2039	What is a group of finches called	Trimming		0
2040	Britain's live cable TV used to show what game topless	Darts - filmed in Australia		0
2041	Countries of the world: north eastern coast of central America, the capital is Belmopan	Belize		0
2042	What country has a birth rate of 0?	The Vatican City		0
2043	Which Mediterranean countries orchestra is bigger than its army	Monaco		0
2044	What is the development team at Nintendo headed by Shigeru Miyamotocalled?                                                           	EAD		0
2045	Which City Was The First Ever To Host The Olympics Twice 	Paris 		0
2046	What Was The Vey First London Underground Tube Station To Be Built	Baker Street		0
2047	What eats 14 feet of earthworms every day	Baby robins		0
2048	Who won an Academy Award in 1968 as Director of Midnight Cowboy	John schlesinger		0
2049	What first name has been used by most presidents	James		0
2050	What is the Capital of: Portugal	Lisbon		0
2051	In which constellation are the Seven Sisters	Taurus		0
2052	In the film The Great Escape , what were 'Tom', 'Dick' and 'Harry'	Three escape tunnels		0
2053	After Henry VIII, Who Was The Next Member Of British Royalty To Get Divorced? 	Princess Margaret 		0
2054	What is the small irregular white cloud that zips around neptune approximately every 16 hours	Scooter		0
2055	What well known drug comes from the yellow cinchona plant	Quinine		0
2056	How many flats are in the key of B flat major?	Two		0
2057	What phenomenon is caused by the gravitational attraction of the moon	Tides		0
2058	Name The Label That Links Joy Division, Durutti Column, OMD, A Certain Ratio, New Order & Happy Mondays	Factory		0
2059	 What colour is creme de menthe?	Green		0
2060	Which Paul Simon Album Won A Grammy For Album Of The Year In 1987	Graceland		0
2061	What is a heart attack	Myocardial infarct		0
2062	What Was Des O Connor's Only No.1 Single	I Pretend		0
2063	Who is the greek equivalent of the roman god Minerva ?	Athena		0
2064	When danger appeared, Quick Draw McGraw became which super hero?	El KaBong		0
2065	What are the devils bones	Dice		0
2066	Which international alliance was set up in Vienna in 1960 to control the production and pricing of a specific commodity	O p e c		0
2067	What is -459.7 F also know as?	Absolute Zero		0
2068	What Are Scallions 	Spring Onions Or Shallots 		0
2069	The energy which a body possesses by virtue of its motion is called ________.	Kinetic		0
2070	Name The Year: "Wuthering Heights", Grease (Movie), Keith Moon Dies Of An Overdose	1978		0
2137	What relation was William the Conqueror to Stephen (1096-1154)	Grandfather		0
2071	 The blubber of a male __________ is considered superior to that of the sperm whale for lubricating machinery.	Elephant seal		0
2072	Which Sanskrit phrase means love story	Karma Sutra		0
2073	Reaching No.13 In The Charts What Did Secret Affair Advocate 1979 As	Time For Action		0
2074	German kids wear what round neck for good luck on New Year	Pretzels		0
2075	In which film, starring James Cagney, with Pat O'Brien as Father Connolly did he play a character called Rocky Sullivan	Angels with dirty faces		0
2076	What ailment kills the most fruit flies	Constipation		0
2077	Who released the following 'edible' album 'Burnt weeny sandwich' 	Frank Zappa 		0
2078	Who Has An In-House Magazine Called Aerial?	The BBC		0
2079	Who said "Losing my virginity was a career move"	Madonna		0
2080	There are more than 1500 varieties of what food	Rice		0
2081	When introduced they were pockets for men only - what were	Handbags		0
2082	What band got their name from the sixties movie Barbarella? 	Duran Duran 		0
2083	If You were drinking Rolling Rock lager what US state are you in	Pennsylvania		0
2084	What does the 'c' in the equation e=mc^2 stand for?	Speed of light		0
2085	 Goldfish have four color recepectors in their __________ compared to our three _ the mantis shrimp has ten color receptors.	Eyes		0
2086	In Bowling What Is The Term For Knocking Down All Ten Pins With 2 Consecutive Balls 	A Spare 		0
2087	Which TV show portrayed the lives of performing arts high school students	Fame		0
2088	What is the basic unit of currency for Nauru ?	Dollar		0
2089	Name the legendary Hollywood cowboy who was born as Leonard Slye in 1912	Roy rogers		0
2090	How many stars are there on Brazil's flag?	23		0
2091	General sherman burned this city in 1864	Atlanta		0
2092	Dick Brams And Advertising Consultant From Missouri Is Responsible For Marketing Which Famous Edible Item	The Happy Meal		0
2093	Which US Songwriting Team Produced The Hits "Searchin, Yakety Yak, Charlie Brown, & Poison Ivy" For The Coasters	Jerry Leiber & Mike Stoller		0
2094	Who wrote the poem Anthem for Doomed Youth	Wilfred owen		0
2095	Devon is the only county in Great Britain to have two ______	Coasts		0
2096	Who Scored AS Record 11,174 Cricket Test Runs For Australia 	Alan Border 		0
2097	Who entertained the colonists by doing cartwheels in the nude	Pocahontas		0
2098	Which Beatles song did The Overlanders take to number one	Michelle		0
2099	Which Actress Was Sued For Not Acting In Boxing Helena 	Kim Bassinger 		0
2100	What is phonetic alphabet word for U	Uniform		0
2101	Well known phrase Mad as a Hatter - but what made them mad	Mercury Poisoning		0
2102	Which John Wayne Western was described by a critic as, 'Grand Hotel on Wheels'	Stagecoach		0
2103	The great warrior _______________ died in bed while having sex	Ghenghis khan		0
2104	In which film is danny devito the voice of 'phil'	Hercules		0
2105	Who conquered the matterhorn in 1865	Edward whymper		0
2106	Who founded the salvation army	William booth		0
2107	At which battle did Nelson famously (turn a blind eye) to orders to disengage? 	The Battle of Copenhagen 		0
2108	In The Ukraine what does it mean if find a spiders web In your house Christmas morning is it, good luck , bad luck, winter will be unusually cold 	Good Luck 		0
2109	An alien creature in a funny hat has opposed both Bugs Bunny and Daffy Duck.  Where is he from?	Mars		0
2110	What number is on the opposite side of the 'five' on dice	Two		0
2111	Forrest ____ liked shrimp.	Gump		0
2112	Largest island of the continental United States, southeastern New York	Long		0
2113	Who Was The First Boxer To Defeat Frank Bruno In A Professional Fight? 	James Bonecrusher Smith 		0
2114	What is the basic unit of currency for Sudan ?	Dinar		0
2115	Branch of mathematics concerned with the study of such concepts as the rate of change of one variable quantity with respect to another, the slope of a curve at a prescribed point, and the computation of the maximum and minimum values of functions	Calculus		0
2116	How many points win a game in badminton? 	15 		0
2117	Who won the world soccer championship in 1958	Brazil		0
2118	From Which Film Did Duran Duran Take Their Name	Barbarella		0
2119	What was invented by Garnet Carter of Chattanooga in 1926	Miniature Golf		0
2120	Who Wrote The Famous Book 'A Brief History Of Time'' In 1988? 	Stephen Hawking 		0
2121	Which is the most abundant element in the universe	Hydrogen		0
2122	What is the world's largest sea	Mediterranean		0
2123	What is Alice Cooper's real name?	Vincent Furnier		0
2124	What award did washington create in 1782 as a decoration to recognize merit in enlisted men and non-commissioned officers	Purple heart		0
2125	Who was the 15th president of the U.S.	James buchanan		0
2126	Name The Geordie "Hard Man" And His No.1 From July 1992	Jimmy Nail / Aint No Doubt		0
2127	In Mexico it is illegal for the police to sell what	Their Guns		0
2128	Libya is the only country in the world with a solid, single-colored flag __ what color is it	Green		0
2129	In 1447 Johannes Gutenberg Invented The Printing Press, What Was The First Book He Produced 	A Latin Edition Of The Bible 		0
2130	Who Became The Oldest Boxer To Retain The Heavyweight Title At The Age Of 45 	George Foreman 		0
2131	This was the first cartoon talking picture.	Steamboat Willie		0
2132	The IAAF finally recognised women in which sport in 1995	Pole Vault		0
2133	Bohea is a type of what	Tea		0
2134	If a dish is served A la Chantilly, what would be its main ingredient	Whipped cream		0
2135	Who wrote the original story "The Lost World"?	Sir Arthur Conan Doyle		0
2136	What continent is submerged	Atlantis		0
2138	Who sent the brief message "i came, i saw, i conquered"	Julius caesar		0
2139	What is the fear of one thing known as	Monophobia		0
2140	Which Rock Star is Nicknamed Slowhand?	Eric Clapton		0
2141	Eileen Collins was the first _______ on a space shuttle mission.	Female captain		0
2142	What ingredient must French ice cream contain by law	Eggs		0
2143	Which country was the first to legalise abortion	Iceland		0
2144	Caer-Lud was the former name of what capitol city	London		0
2145	In Massachusetts it's illegal to wear what without a licence	Goatee		0
2146	With what is champagne mixed to produce `Buck's Fizz'? 	Orange Juice 		0
2147	Who comes on stage before conductor and tunes orchestra	Concert Master / Mistress 1st violin		0
2148	What is the capital of Tunisia ?	Tunis		0
2149	A person at his wit's end is said to be losing his what	Marbles		0
2150	In Wyoming in June it is illegal to take a picture of what	A Rabbit		0
2151	Who Sang The Theme Tune To The Bond Movie The Spy Who Loved Me?	Carly Simon		0
2152	In AFTs top 100 movies only 2 sequels - Godfather and what	French Connection II		0
2153	"Brass In Pocket" Was A Hit For Which Band	The Pretenders		0
2154	Who Invented The Christmas Cracker 	Thomas Smith 		0
2155	Who, according to a song, damaged her foot on a piece of wood and fell into a raging torrent?	Clementine		0
2156	Who coined the term 'proletariat'	Karl marx		0
2157	Who played Andy Capp on television in 1988	James bolam		0
2158	Who was the founder of the 'epicurean' philosophy	Epicurus		0
2159	In Shakespeare's Merchant of Venice name Shylocks wife	Leah		0
2160	Collective nouns - A group of beavers is what	Colony		0
2161	Even if up to 80% of this is removed from a human, what is it that will continue to function & grow back to its original size	Liver		0
2162	What was the name of Joan Fontaine's actress sister with whom she had a notoriously bad relationship	Olivia de havilland		0
2163	What's the most valuable crop in burma, laos and thailand	Poppy		0
2164	Which Football Club Play Their Home Games At "The Home Depot Centre"	La Galaxy		0
2165	Which Woman Won The Wimbledon Singles Title For The Last Time In 1975? 	Billy Jean King 		0
2166	Which country was the first to make seat belts compulsory	Czechoslovakia		0
2167	Name The First Foreign Company To Open A Factory In The USA	Volkswagen		0
2168	What's heaven to fallen Norse warriors?	Valhalla		0
2169	Who was the first non human to win an Oscar	Mickey mouse		0
2170	What sport did andre agassi's dad compete in	Boxing		0
2171	Pax is the roman goddess of ______	Peace		0
2172	What Number Is Written On The Back Of David Beckham's Shirt When He Played For Real Madrid ?	23		0
2173	 The average elephant produces 50 pounds of __________ each day.	Dung shit		0
2174	What animal does the adjective 'pardine' refer to	Leopard		0
2175	In one of Donald Horne's novels, as what was Australia dubbed?	The lucky country		0
2176	Which Solo Artist Sang Backing Vocals On The Dire Straits Hit "Money For Nothing"	Sting		0
2177	What bird makes an excellent watchdog	Goose		0
2178	What was the first product to have a barcode?	Wrigley's gum		0
2179	Four thirds multiplied by pi multiplied by the radius cubed, gives you the volume of what geometric object	Sphere		0
2180	Sikorsky what jerry van dyke sitcom is widely hailed as the worst in tv history	My		0
2181	What Nationality Was The The Musician & Composer "James Last"	German		0
2182	Who was the Phoenician Goddess of love	Astarte		0
2183	How Many Tournaments make up a Grand Slam In Golf 	4 		0
2184	Ascorbic acid is commonly reffered to as Vitamin - ?	C		0
2185	Whose brother wrote seven songs for the movie staying alive	Sylvester		0
2186	Doraphobia is the fear of _________	Fur		0
2187	The Mason-Dixon line ran between Maryland and which other American State	Pennsylvan1a		0
2188	A beast of prey sometimes called a glutton - what is it	Wolverine		0
2189	In which African country would you find the towns of Kumasi and Cape	Ghana		0
2190	The word Utopia from Greek means what	Nowhere		0
2191	In ballet, a step done off the ground.	En l'air		0
2192	When danger appeared, Quick Draw McGraw became which super hero	El kabong		0
2193	Which Cricketer Captained England In 23 Test Matches Between 1986 And 1988? 	Mike Gatting 		0
2194	Which city is known as Motown	Detroit		0
2195	Where do 'open-collar workers' work	Home		0
2196	Who had a 30 year love affair with Lillian Hellman	Dashiel hammett		0
2197	Assassin Magazine and Sofa come from which language	Arabic		0
2198	What Is The Best Selling Classical Album Of All Time	Essential Pavarotti		0
2199	Short legged breed of Welsh dog	Corgi		0
2200	In the Rocky films what was the name of Rocky's wife	Adrian		0
2201	When did richard burton finish his last film	1984		0
2202	What do you get by mixing gin and vermouth	Martini		0
2203	What is a leech a type of	Worm		0
2204	What Vehicular Safety Device Was First Pantented By Ej Claghorn 	Seat Belt 		0
2205	What Song Features The Lyric "Giant Steps Are What You Take"	Walking On The Moon		0
2206	What do the STP Corporation's initials stand for?	Scientifically Tested Products		0
2207	If you had canitis what have you got	Grey hair		0
2208	John Elliot Was A Member Of Which Band	Def Leppard		0
2209	Which Bridge In London Was Officially Named William Pitt Bridge In 1769 	Blackfriars Bridge London 		0
2210	With what body part is otology involved?	Ear		0
2211	For What Illness Did Louis Pasteur Develop A Cure? 	Rabies 		0
2212	Anne Boleyn lost her head over this guy	Henry viii		0
2213	Tchaikovsky died of which disease	Cholera		0
2214	Disgusting question - longest verified American one 12' 2" what	Turd - over 2hrs 12  minutes		0
2215	Zoologist and writer Gerald Durrell spent part of his childhood on which Greek island	Corfu		0
2216	What is the Latin word for poison	Virus		0
2217	What Connects The Lightning Seeds, Cilla black , Space	Liverpool		0
2218	What did the S stand for in Harry S Truman	Nothing		0
2219	Cleopatra sometimes wore a fake what	Beard – for Official Duties		0
2220	In Which Athletic Event Was Colin Jackson A Dominant Figure 	110m Hurdles 		0
2221	What is the English title of Voyna i Mir	War and Peace		0
2222	In which U.S. state was the world's first 'silicon valley'	California		0
2223	Which Famous Pop Group Did Brothers Brian, Carl & Dennis Form In 1961 Joined By Cousin Mike & Friend Al	The Beach Boys		0
2224	He discovered the process of vaccination for prevention of smallpox.	Edward Jenner		0
2225	Which Group Features Tommy Lee As Drummer	Motley Crue		0
2226	Which Famous Tv Presenters Are Former MP's 	Brian Walden, Robert Kilroy Silk 		0
2227	In what year was Band-Aid's Do They Know It's Christmas the UK Christmas chart-topping record? 	1984 		0
2228	What was the name of Juliet's cousin killed by Benvolio in R+J	Tynbalt		0
2229	Which is the Earth's second smallest continent ?	Europe		0
2230	In which state are the Finger Lakes	New york		0
2231	What is the fear of clouds known as	Nephophobia		0
2232	He was the captain of the "Mayflower".	Standish		0
2233	What does brb mean	Be right back		0
2234	Ethernet is a registered trademark of what company	Xerox		0
2235	Which Band did Mick Talbot & Paul Weller Form In 1983	The Style Council		0
2236	Three main types of Greek columns are Doric, Ionic, and __________.	Corinthian		0
2237	Spear, apple and pepper are types of which plant	Mint		0
2238	Which Musician Was Once A Member Of Depeche Mode, Yazoo & Erasure	Vince Clark		0
2239	A Spanish dance in ¾ time or 3/8 time with castanets.	Cachucha 		0
2240	What was Bugs Bunnies original name	Happy Rabbit		0
2241	80% of restaurant diners don’t do what	Eat dessert		0
2242	Ajax was the trade mark of the worlds first what	Flush lavatory		0
2243	What Was The First Top Twenty Hit In The Uk For Stevie Wonder	Uptight (Everythings Alright)		0
2244	First division of the Paleozoic Era	Cambrian Period		0
2245	Which Liverpudlian Won The WBC Light Heavyweight Title In 1974 	John Conteh 		0
2246	What car company made the first glass fibre racing car	Lotus		0
2247	For What Substance Is K The Chemical Notation 	Potassium 		0
2248	What is ix	9		0
2249	What did The Chief nickname Starsky's car on Stasky and Hutch??	The Striped Tomato		0
2250	Which was the first manned aircraft to exceed the speed of sound ?	Bell X-1		0
2251	Anatomically speaking, what is the axilla better known as	Armpit		0
2252	Who Released An Album In 1982 Called Simply	Status Quo		0
2253	What printing system utilizes tiny dots	Dot matrix		0
2254	The Average American does what 22 times a day	Opens Fridge		0
2255	Who made his first appearance as Sherlock Holmes in the 1939 film The Hound of the Baskervilles	Basil rathbone		0
2256	What does the ureter carry	Urine		0
2257	Who Was Responsible For The Assassination Of John Lennon	Mark David Chapman		0
2258	Collective nouns - a leash of what	Greyhounds		0
2259	Who said "To many of our imports are from abroad"	George Bush		0
2260	If you suffered from pyrexia what have you got	Fever		0
2261	Which Lombardy town is famed for its cheese	Gorgonzola		0
2262	Name Lois Lanes stewardess sister	Lucy Lane		0
2263	What is the capital of Saint Vincent	Kingstown		0
2264	On an average day in USA 40 people are hurt doing what	Trampolining		0
2265	Eskimo ice cream is neither icy, nor ______	Creamy		0
2266	EAU international car registration plate which country	Uganda		0
2267	What was George's first composition on the A Side of a Beatles single?	Something		0
2268	What does a pulsar emit	Radio waves		0
2269	Can You Name "Tears For Fears" Debut Album	The Hurting		0
2270	In which area of London are the Abbey Road studios located?	St. John's Wood		0
2271	What russian city was formerly known as st petersburg, then petrograd, and until 1918 was the capital of the country	Leningrad		0
2272	What Would You Suffer From With Hypotension 	Low Blood Pressure 		0
2273	At what address did the TV family 'The Addams Family' live?	001 Cemetery Lane		0
2274	In What Century was St Nicholas first Mentioned 	4th 		0
2275	What U.S. city is known as Insurance City	Hartford		0
2276	What Are The March Sisters Names In Louisa M Alcotts (Little Woman) 	Jo, Meg Beth & Amy 		0
2277	How many nickles are there in $2.25	45		0
2278	Confederate General William Smith carried what into battle	A Blue Parasol		0
2279	An average of 708 what in the USA each year	Tornados		0
2280	Who played the Spirit of Christmas in the 1988 TV film 'Blackadder's Christmas Carol'' 	Robbie Coltrane 		0
2281	Which planet has a year lasting approx. 88 earth days	Mercury		0
2282	What film was the last featuring Mel Blanc's voice?	Jetsons		0
2283	Pneumatiphobia is the fear of	Spirits		0
2284	Raquel Welch was once a what	Weathergirl		0
2285	Cab is a shortened version of what word	Cabriolet		0
2286	What title is reserved for the leader of the entire Ku Klux Klan	Grand wizard		0
2287	From 1994 What Was "All For Ones" Biggest Hit	I Swear		0
2288	What is the full name of the creator of "Jeeves & Wooster"	Pelham grenville wodehouse		0
2289	What is the capital of Mauritania	Nouakchott		0
2290	What soft drink is advertised with the slogan, What's the worst that could happen? 	Dr Pepper 		0
2291	In France if you were served le miel what would you eat	Honey		0
2292	This term means 'cone_bearing trees'.	Conifers		0
2293	Which was the second japanese city bombed in 1945	Nagasaki		0
2294	The Korat plateau in Thailand gives its name to what kind of animal	Cat		0
2295	How many legs does a lobster have	Ten		0
2296	How Many People Are In Each Of The Crews For The Oxford & Cambridge Boat Race? 	9 = 8 Rowers & 1 Cox 		0
2297	Cleopatra's slaves often died because she tested this on them	Poison		0
2298	Which Was The First Suspension Bridge In London 	Hammersmith Bridge 		0
2299	Who is Olive Oyls brother	Castor Oyl		0
2300	Which country did Idi Amin invade in 1978? 	Tanzania 		0
2301	Which Was The First Single Released By The Beatles On The Apple Label	Hey Jude		0
2302	Honi soit qui mal y pence is the motto of what organisation	Order of the Garter		0
2303	Denis Gabor of Hungary 1971 Nobel prize for what invention	Holograms		0
2304	What is the only insect that can turn its head	The praying mantis		0
2305	The 'love apple' is more commonly known as what	Tomato		0
2306	Gastritis affects the __________.	Stomach		0
2307	What country saw the origin of lawn tennis	England		0
2308	Who started on the san francisco scene with 'oh well', but are probably best known for their album 'rumors'	Fleetwood mac		0
2309	How Many Players Are In A Polo Team? 	4 		0
2310	What was the name of He-Man's magician sidekick?	Orko		0
2311	Where Did The Beatles Appear On The 30th January 1969	Roof Of The Apple Offices "Saville Row, London"		0
2312	What bird has the most feathers per square inch	Penguin		0
2313	What film starred Helen Hunt, Cary Elwes and Bill Paxton?	Twister		0
2314	Autophobia is a fear of ______	Being alone		0
2315	Who Was The First Animal In Space 	Laika The Dog 		0
2316	Name the second largest country in Africa.	Algeria		0
2317	What is the Capital of: Korea South	Seoul		0
2318	What is the fear of one's own fears known as	Phobophobia		0
2319	What is the name of the capital of Quebec (Canada)	Quebec city		0
2320	Neophobia is the fear of	Anything new		0
2321	In which book did four ghosts visit Scrooge?	A Christmas Carol		0
2322	What artist cut off his right ear	Vincent van gogh		0
2323	Which character from beavis and Butthead has their own show?	Daria		0
2324	Which country has Budapest as its capital?	Hungary		0
2325	Haiphong is the third largest city in which south-east Asian country	Vietnam		0
2326	What Are The first Names Of The Everly Bros 	Don & Phil 		0
2327	Pluto (the Planet) was almost called what name	Zeus		0
2328	Name (in the US) Denis the Menaces cat	Hot Dog		0
2329	Who sang the theme song to the 'Breakfast Club'? 	Simple Minds 		0
2330	Name the companion of the cartoon character Secret Squirrel	Morocco Mole		0
2331	 Camel milk is the only milk that doesn't curdle when __________	Boiled		0
2332	What Does The C Stand For On A Netball Team? 	Centre 		0
2333	Where were Anne Boleyn and Catherine Howard both executed? 	The Tower Of London 		0
2334	Of which metal is sperrylite the ore	Platinum		0
2335	Which leader sits on the 'Lion Throne'?	Dalai Lama		0
2336	In the TV series 'The Fall Guy', who did Lee Majors play?	Colt Seavers		0
2337	In which year was the Summer Of Love?	1967		0
2338	What canal parts redesigned by Leonardo da Vinci in 1497 are still in use today	Locks		0
2339	What do Americans call what the British call an iced-lolly? 	Popsicle 		0
2340	Who wrote the opera Madame Butterfly	Puccini		0
2341	With about 865 people per square mile, the island of _____________ is one of Europe's most densely populated regions.	Madeira		0
2342	On what common object could you find a gate and a claw	Camera		0
2343	 Very unusual for carnivores, hyena clans are dominated by __________	Females		0
2344	What precious metal does the U.S. store in fort knox	Gold		0
2345	What is the penalty for drunk driving in Sumatra	Loss of a hand		0
2346	What are the Christian names of the novelist P D James	Phyllis dorothy		0
2347	Who directed the 1916 film 'intolerance'	D.w griffith		0
2348	Joseph Lister - first operation antiseptic - 1867 on who	His sister		0
2349	In 1449 Thomas Brightfield built London's first what	Lavatory		0
2350	Where does the dollar sign come from	U on S bottom U dropped out $		0
2351	Near which Belarus City did the biggest ever tank battle take place during WWII?	Kursk		0
2352	Which Tv Detective Kept A Pet Alligator Named “ Elvis ”	Sonny Crocket		0
2353	Gus Wickie Pinto Colvig William Pennell Jackson Beck - Link	Bluto in Popeye		0
2354	Who was the world's longest reigning monarch	Louis xiv of france		0
2355	President Andrew Jackson's funeral 1845 who removed swearing	His Pet Parrot		0
2356	Who made a 1990's cover version of The Monkees 'I'm a Believer'	Vic reeves		0
2357	Slang word meaning aggressively blatent or provocative	In-your-face		0
2358	With which group is Damon Allbarn the lead singer	Blur		0
2359	Is kissing under the Mistletoe, a Roman, Druid, or Celtic custom 	Druid 		0
2360	Chang 1st Wang 2nd what third most common Chinese name	Li		0
2361	Pitney which is the largest planet in our solar system	Jupiter		0
2362	What Type Of Foodstuff Is Traditionally Eaten On Shrove Tuesday 	Pancakes 		0
2363	Which light wood is commonly used for making aeromodels?	Balsa		0
2364	White creame de menthe and brandy make what cocktail	Stinger		0
2365	A catalogue of words and synonyms.	Thesaurus		0
2366	Who was Americas first billionaire	Rockefeller		0
2367	More water flows over _____ _____every year than over any other falls on earth	Niagara falls		0
2368	"Hot cockles"" was popular at Christmas in medieval times What was it? ""A Drinking Song"" ""A Medievil Game"" ""A Dish Of Seafood"" ""A Hot Spice Drink"" " 	A Tudor Game 		0
2369	Which is the largest of the Canary Islands	Tenerife		0
2370	Mary Read and Anne Boney had what job in common	Pirates		0
2371	What is a group of peacocks called?	Muster		0
2372	In 'romeo and juliet', why couldn't the nurse tell juliet the news of her meeting with romeo immediately	She was out of breath		0
2373	What is the Capital of: Vanuatu	Port-vila		0
2374	In The World Of Science What Was Discovered By "Clyde Tombaugh" In The Year 1930	Pluto		0
2375	Poliosophobia is the fear of	Contracting poliomyelitis		0
2376	U.S. captials Florida	Tallahassee		0
2377	How was the country of Belize known prior to 1971?	British Honduras		0
2378	In which country was the first soccer World Cup held	Uruguay		0
2379	 We are sure that whales and dolphins had land_living ancestors, but we don't know what they were like and we don't know how they __________	Evolved		0
2380	What do x & y chromozomes combine in making	Males		0
2381	By what other name is Lac Leman known	Lake geneva		0
2382	Charles Duff wrote the macabre Handbook of what	Hanging		0
2383	What breed of dog bites the most humans	German Shepherd – Alsatian		0
2384	What Type Of Creature Is Located On Top Of The Calcutta Cup	Elephant		0
2385	Where were fortune cookies invented	United states		0
2386	Which substance has the chemical formula HCl?	Hydrochloric acid		0
2387	What actress wrote the autobiography Call Me Anna	Patty duke		0
2388	In which river was jesus baptised	Jordan		0
2389	How Many Legs, Including Pincers Does A Crab Have? 	Ten 		0
2390	In Terry Pratchett's Discworld series, Death rides a pale horse. What is its name	Binkie		0
2391	What Is Michael Jacksons Middle Name	Joseph		0
2392	In art, a form of watercolor that uses opaque pigments rather than the usual transparent watercolor pigments	Gouache		0
2393	Dish of food covered with alcohol and set alight	Flambe		0
2394	What is the capital of the United Arab Emirates	Abu dhabi		0
2395	Collective Nouns - a Convocation of what	Eagles		0
2396	Tess Trueheart married which plainclothes detective	Dick tracy		0
2397	In Kansas City its illegal for children to buy what	Cap Guns – but shotguns are OK		0
2398	What color are a zebra's stripes during the first six months of life	Brown		0
2399	If you had variola what disease have you got	Smallpox		0
2400	What Was A Sopwith Camel? 	A Single Seater Armed Biplane Used In WWI 		0
2401	Which is the largest aquatic bird?	Albatross		0
2402	At the outbreak of WWI what country's airforce consisted of only 50 men?	United States		0
2403	What actress said "It's better to be nude than unemployed"	Angie Dickinson		0
2404	 __________ can climb trees faster than they can run on the ground.	Squirrels		0
2405	Kalium. is the Latin name for which element	Potassium		0
2406	What do male butterflies like to lick	Stones - to get nutrients		0
2407	Women do it weekly to sleep better men every two weeks what	Change sheets		0
2408	What was the print left on the car in the boat in the movie Titanic?	A handprint		0
2409	The Process Where Food Browns During Cooking Is Known As The What 	Maillard Reaction 		0
2410	The Ten Commandments what was number four	Keep the Sabbath holy		0
2411	In which country was Rudyard Kipling born	India		0
2412	In which Commonwealth country is Cobra beer brewed	India		0
2413	Which river passes through germany, austria, slovakia, hungary, croatia, yugoslavia, romania, blugaria and ukraine before arriving at the black sea	Danube		0
2414	A ballet in which the women wear white tutus, such as the second and fourth acts of Swan Lake.	Ballet blanc		0
2415	The Coromandel Coast is an area which can be found in which two countries?	India or New Zealand		0
2416	An Ochlophilliac gets sexually aroused from what	Being in crowds		0
2417	In The Peter Kay Video To Is This The Way To Amarillo Who Are The First 2 People To Join Peter Kay On His Journey In This Charity Video	Ken & Deirdre (Barlow)		0
2418	"Safety Dance" Was A Hit For Which Band	Men Without Hats		0
2419	Phoenix is the capital of ______	Arizona		0
2420	Who wrote the humorous books on One Upmanship	Steven Potter		0
2421	What links the Isle of Portland to the mainland coast of Dorset	Chesil bank		0
2422	Who designed the bouncing bomb in World War II	Barnes wallis		0
2423	Who founded 'Live Aid' and 'Band Aid'?	Bob Geldof & Midge Ure		0
2424	Lou Rawls, Sam & Dave , Wilson Pickett, Otis Redding Who Is Next In Line And Why	James Brown		0
2425	What links George Patton Jayne Mansfield Margaret Mitchell	Died in car crashes		0
2426	What Is The Worlds Longest Manmade Waterway 	The Grand Canal In China 		0
2427	What is the capital of Moldova?	Kishinev		0
2428	 The art of tracing designs and taking impressions of them is _______.	Lithography		0
2429	By Law in Massachusetts what can you not do to a pigeon	Scare it		0
2430	Which bank holiday was first celebrated in Britain in 1978? 	1st May 		0
2431	N2O is more commonly known as what	Laughing gas		0
2432	On a standard rainbow what colour is on the inside of the curve	Violet		0
2433	In what film does Steve McQueen get to race a Mustang round the streets of San Francisco	Bullitt		0
2434	What is the flower that stands for: charity	Turnip		0
2435	The Colosseum received its name not for its size, but for a colossal statue of who that stood close by?	Nero		0
2436	What Is The Name Of Stephen Hawkins Famous Cosmology Book Published In 1998 	A Brief History Of Time 		0
2437	Mauritania is in which continent	Africa		0
2438	From pasadena Whose soldiers were the first ever to win the Nobel Peace Prize	United		0
2439	Under what name is thomas lanier williams better known	Tennessee williams		0
2440	What is a water taxi	Gondola		0
2441	Acadia was the original name of which canadian province 	Nova scotia 		0
2442	The "canebrake", "timber" and "pygmy" are types of what?	Rattlesnake		0
2443	Who wrote the Prisoner of Zenda?	Anthony Hope		0
2444	Every ship in the Royal Navy have customised what	Zippo Lighters		0
2445	Measured from base to summit, what is the highest mountain	Mauna kea		0
2446	Kuwait is the capital of ______	Kuwait		0
2447	Arched or domed recess at the end of a church	Apse		0
2448	What European city is nicknamed Auld Reekie	Edinburgh		0
2449	If You Drove In A Straight Line From Moscow To Madrid How Many Countries Would You Drive In All Together 	Eight (Russia, Belarus, Poland, Czech Republic, Germany, Switzerland, France & Spain 		0
2450	A person who works with iron	Blacksmith		0
2451	What Is The Principle Ingredient Of The Indian Dish Biryani 	Rice 		0
2452	What European country has no head of state	Switzerland		0
2453	What Is The 3rd Most Populous Country On Earth 	The Usa 		0
2454	Of the 266 popes, how many died violently	Thirty three		0
2455	What is the correct name for a virgin (uncalfed) cow	Heifer		0
2456	What is the flower that stands for: concealed love	Motherwort		0
2457	Guru Nanak founded which religion	Sikhism		0
2458	What was the capital of East Germany?	East Berlin		0
2459	What Is The Name Of The Russian National Ballet 	The Kirov Ballet 		0
2460	Which Regard To The Po Boyband "JLS" What Do The Initials JLS Stand For	Jack The Lad Swing		0
2461	In which month is the Earth nearest the Sun ?	January		0
2462	Rod Stewart's first album was called after whiuch alley?	Gasoline Alley		0
2463	In the fairy tale 'Cinderella'', which slipper did she lose, the left or the right 	Left 		0
2464	Who Released The 70's Album Entitled Gasoline Alley 	Rod Stewart 		0
2465	What is the name of the pig that Jim Davis draws	Orson		0
2466	Which Card Appeared In The UK For The Very First Time In 1963 	American Express 		0
2467	Who became Prime Minister following the assassination of Spencer Percival in 1812	Robert banks jenkinson		0
2468	If you landed at MCO airfield where are you	Orlando Florida		0
2469	Jeff Lynne - Roy Wood - Bev Bevan - what pop group	Electric Light Orchestra		0
2470	International dialling codes - what country has 61 as code	Australia		0
2471	The film The Madness of King George III  Dropped III - why	So Americans don’t think it’s a sequel		0
2472	What is a roker	A foot long ruler		0
2473	In October 1999, who replaced Frank Dobson as Secretary of State for Health	Alan milburn		0
2474	What is the top New Years Resolution	Lose weight		0
2475	Illnesses in which the immune system reacts to normal components of the body as if they were foreign substances and produces antibodies against them	Autoimmune Diseases		0
2476	"Louis, 1 think this is the beginning of a beautiful friendship" are the last words of which film	Casablanca		0
2477	What is the flower that stands for: cleanliness	Hyssop		0
2478	Which Shakespeare play shares it's title with a 1981 Dire Straits hit	Romeo & Juliet		0
2479	How long can a bedbug live without food	One Year		0
2480	Which is the only musical bird that can fly backwards?	Hummingbird		0
2481	Which Liberal Leader Was Aquitted Of Attempted Murder 	Jeremy Thorpe 		0
2482	Bell's palsy results in numbness in which area	Face		0
2483	Which phrase means computer simulation that seems life like	Virtual reality		0
2484	Slugs have four of them - what	Noses		0
2485	In Japan what is Yomiyuri Shimbun	Newspaper – worlds best seller		0
2486	Fill in the blank: when you ____ upon a star	Wish		0
2487	The first US copyrighted film showed what in 1894	A man sneezing		0
2488	What is the name of the layer between the Earth's crust and the Earth's core ?	Mantle		0
2489	Booze Name: Vodka, consomme, lemon, tabasco sauce, salt, pepper, celery salt.	Bullshot		0
2490	Who plays Auntie Wainwright in Last Of The Summer Wine	Jean alexander		0
2491	In Greek mythology Penthesilea was the queen of which people	Amazons		0
2492	What was the annihilation of the jews in wwii called	Holocaust		0
2493	Baseball: the st louis ______	Cardinals		0
2494	Translate "january river" into portuguese	Rio de janeiro		0
2495	Name The 4 Members Of The Travelling Wilburys PFE	George Harrison, Roy Orbison, Tom Petty, Bob Dylan		0
2496	What is biltong	Dried meat		0
2497	Any of a group of composite organisms made up of a fungus & an alga living in symbiotic association (symbiosis)	Lichen		0
2498	What's the only city today split in two by a wall	Nicosia Cyprus		0
2499	What battle does the French Legion Celebrate Annually	Camerone - A Defeat		0
2500	Reuben Tice died trying to invent a machine to do what	Dewrinkle prunes		0
2501	What kind of animal is Beatrix Potters Mrs Tiggy Winkle	Hedgehog		0
2569	In popular culture, what is a 'Tamagotchi'	Virtual pet		0
2502	The Sega Genesis game about two lost aliens looking for their spaceship was called what?                                             	ToeJam and Earl		0
2503	Who sailed in a ship called the Argo	Jason		0
2504	To what country does the Gaza Strip belong?	Egypt		0
2505	Ben Franklin invented it - Britain tried it in 1916  - What	Daylight saving Time		0
2506	What was the first credit card	Diners Club		0
2507	What country would a Bulgarian with a good sense of direction walk through to reach Armenia by foot	Turkey		0
2508	Who is Scooby Doo's nephew??	Scrappy Doo		0
2509	Name the largest city in canada 	Toronto 		0
2510	Who was the youngest world heavyweight boxing champion	Floyd patterson		0
2511	The only member of the band zz top without a beard has what last name?	Beard		0
2512	Which Platinum Selling Recording Artist Survived An Assassination Attempt In 1976	Bob Marley		0
2513	Which classic 1946 Christmas film features the line 'Daddy, every-time a bell rings, an angel gets its wings'' 	It's a Wonderful Life 		0
2514	What is a group of this animal called: Owls	Parliament		0
2515	What is the name of the Dukes of Hazzards car?	General Lee		0
2516	The volume of which solid is given by the formula 4/3(pi)r^3?	Sphere		0
2517	Who said "A Single death is a tragedy a million a statistic"	Joseph Stalin		0
2518	What name is given to twins who are joined together by some part of their anatomy	Siamese		0
2519	The Lee Dorsey Song "Working In A Coal Mine" Was Later Covered By Which Quirky Band	Devo		0
2520	What is Myrrh? Is it a herb, a gum resin or an essence distilled from orchids 	Gum resin 		0
2521	Laetrile is associated with the pit of which fruit 	Apricot 		0
2522	Thomas Harris created what character	Hannibal Lector		0
2523	What was known as Arabian Wine	Coffee		0
2524	What is the capital of north carolina	Raleigh		0
2525	Who claimed that in the garden of eden god spoke swedish, adam spoke danish, and the serpent spoke french	Swedish philologist		0
2526	In which 1945 film starring Lauren Bacall, did Humphrey Bogart play a Martinique bar-owner who was opposing the Nazis	To have and have not		0
2527	Field of engineering & applied physics dealing with the design & application of devices, usually electronic circuits, the operation of what depends on the flow of electrons for the generation, transmission, reception, & storage of information	Electronics		0
2528	Tracey and Hepburn first film in 1942 was what	Woman of the Year		0
2529	How Many Hearts Does An Octopus Have? 	Three Hearts 		0
2530	Property of a fluid that tends to prevent it from flowing when subjected to an applied force	Viscosity		0
2531	The nest of an eagle or bird of prey is an	Eyrie		0
2532	Filo pastry stuffed with chopped nuts and honey	Baklava		0
2533	In 'Romeo and Juliet', about what was Mercutio's long monologue?	Queen Mab		0
2534	What is the flower that stands for: call me not beautiful	Unique rose		0
2535	In what country is the town of Liege	Belgium		0
2536	In which film was the best supporting actor Oscar won in 1975	The Sunshine Boys George Burns		0
2537	34% of Californian Male students 10% of Female lied to get what	Sexual Partner		0
2538	A scientist who studies reptiles and amphibians is known as a:	Herpetologist		0
2539	International Phonetice Alphabet: N	November		0
2540	Two of the permanent residents of Fawlty Towers were old ladies. One is Miss Tibbs, what is the name of the other	Miss gatsby		0
2541	If silver is stamped with a leopard in which city was it assayed	London		0
2542	Who invented Coca Cola	Dr john pemberton		0
2543	Henry the Eighth was the father of two English Queens, Mary I and Elizabeth I. Which other King was the father did the same	James the second		0
2544	What model of automobile is known for its water-tight characteristics	Volkswagen beetle		0
2545	 Bibliophobia is a fear of __________.	Books		0
2546	In the movie snow white, what instrument did sneezy play	Accordian		0
2547	As what is the North Star also known?	Polaris		0
2548	Who was the dictator of Uganda from 1971 to 1979	Idi amin		0
2549	The ionian and cyclades are island groups of which country	Greece		0
2550	The Scottish Band The Soup Dragons Got Their Name From Which Childrens TV Show	The Clangers		0
2551	What is the hobby of a 'twitcher'	Bird watching		0
2552	Jack Haley played the Tin Man what was the Tin Mans name	Hickory Twicker		0
2553	In dentistry, what are "angle irons" and 'rolex'	Braces		0
2554	To "testify" was based on men in the Roman court swearing to a statement made by swearing on what	Their testicles		0
2555	What legendary character is rooted in U.S. pioneer John Chapman	Johnny appleseed		0
2556	"Which former star of 'Crossroads'' Played ""Meg Richardson"" And was born on 25th December,1923" 	Noel Gordon 		0
2557	Which Famous Artists Designed The Chupa Chups Logo In 1969	Salvador Dahli		0
2558	How Many Ribs Do You Have 	24 Ribs 		0
2559	What is the only English football team without a vowel in the first five letters of it`s name? 	Crystal Palace 		0
2560	What do ladybugs do in the winter	Hibernate		0
2561	What 3 flags does the Union Jack comprise of?	England Scotland Ireland		0
2562	What is the official sport of Maryland	Jousting		0
2563	 The __________ has only two toes, unlike most birds, which have three or four.	Ostrich		0
2564	What kind of book did dr seuss pen five of ten best-sellers in u.s history by 1994	Children's books		0
2565	What is the name for a group of stars	Constellation		0
2566	What does MTA stand for among Frisbee freaks	Maximum time aloft		0
2567	The word 'batrachian' describes which animals	Frogs & toads		0
2568	Who sang the title song to 'goldfinger'	Shirley bassey		0
2570	What asian country is bordered by the soviet union and china	Mongolia		0
2571	Who is known as big mama in ladies pro golf	Joanne carner		0
2572	Only female humans and what have hymens	Horses		0
2573	In which country was the Pahlavi family a ruling dynasty	Iran		0
2574	What do tendons join to bones	Muscles		0
2575	Which Chicago Club Gave House Music It's Name	The Warehouse Club		0
2576	1938 marked the introduction of this Volkswagen car.	Beetle		0
2577	What is the basic unit of currency for Brunei ?	Dollar		0
2578	Which vegetable is used if a dish is described as 'a la Crecy'	Carrots		0
2579	What kind of hat is depicted on lee trevino's golf cap	A sombrero		0
2580	Who Made The First 147 Break At The Snooker World Championships 	Cliff Thorburn 		0
2581	 The mouse is the most common mammal in the __________	United states		0
2582	What does a 'postman' normally receive in kids' party games	Kisses		0
2583	John's first published book was called:	In His Own Write		0
2584	In the tv series 'the dukes of hazard', what was painted on the top of their car	Confederate flag		0
2585	 A South African __________ can grow to be 35 inches (90 cm) in length _ longer than your arm.	Bullfrog		0
2586	What is the capital of Montenegro?	Podgorica		0
2587	What are these: Ceres, Juno, Iris, and Flora	Asteroid		0
2588	What is divided into 114 surahs	The Koran - Surah = chapter		0
2589	What country has the biggest population	China		0
2590	Port Said lies on which waterway	The suez canal		0
2591	Optiphone, Lustreer and Mirascope early names for which item	Television		0
2592	The Mbuti tribe in Africa are the worlds what	Shortest race		0
2593	What does a botanist study	Plants		0
2594	Which crew sank in the 1978 boat race? 	Cambridge 		0
2595	1979 at Clifton suspension bridge Britain's first what happened	Bungee Jump		0
2596	What in Arthurian legend was the Siege Perilous	Empty Chair for grail finder		0
2597	How would you say 'house wine' in 'French' 	Vin (de la) maison 		0
2598	The cocktail "Margarita" contains cointreau, lime and which spirit	Tequila		0
2599	Which Very Successful Pop Duo Consist Of "Roland Orzabal & Curt Smith"	Tears For Fears		0
2600	What hardcore rock group sings, 'Blind' and 'Clown'?	Korn		0
2601	What are the only canines whose hair has a hook (or barb) on each individual follicle	Dalmatians		0
2602	U.S. Captials - Missouri	Jefferson City		0
2603	Which TV Personality Had A Cameo Role In The Movie "Bedknobs & Broomsticks"	Bruce Forsythe		0
2604	Who did Nathuram Godsay Murder in 1948?	Mahatma Gandhi		0
2605	What Numeric Link Did Bros Have In Common With Tears For Fears	Each Group Had 2 Members (Twins)		0
2606	What Was Walt Disney's Middle Name	Elias		0
2607	What does a philatelist collect	Stamps		0
2608	The name of this animal translates as ghost what is it	The Lemur		0
2609	What was the name of the "fake" evolutionary missing link found in Sussex, England ?	Piltdown Man		0
2610	What countries national anthem is The Patriotic Song	Russia		0
2611	Who wrote the 'noddy' books	Enid blyton		0
2612	What's the Malayan sun bear's main claim to fame	Smallest bear		0
2613	As Their Names Would Suggest Where Were The Mamenchisaurus & The Tuojiangosaurus Found 	China 		0
2614	Baseball: The St. Louis ______?	Cardinals		0
2615	What name is given to a year with 366 days	Leap		0
2616	India has the largest Hindu population what country has second	Nepal		0
2617	Parasitophobia is the fear of	Parasites		0
2618	Which city's airport is the home base for Cathay Pacific Airlines	Hong kong		0
2619	What is the only n.y.c borough that is not on an island	Bronx		0
2620	What does Israel call its parliament?	Knesset		0
2621	How Many Colonies Signed The American Declaration Of Independence? 	13 Colonies 		0
2622	Yvon Petra 1946 was the last Wimbledon champion to do what	Wear Trousers		0
2623	In pool, what color is the eight ball?	Black		0
2624	In Palding Ohio police officers can legally do what to dogs	Bite them to quiet		0
2625	What is another name for a tomato	Love apple		0
2626	The French Physician "Laennec" Was Responsible For Inventing Which Medical Aid	Stethoscope		0
2627	What name is given to the control column of an aircraft	Joystick		0
2628	In ballet, the position of the torso from the waist up.	Épaulement		0
2629	What Is Albumen The Correct Term For 	Egg White 		0
2630	His campaign slogan was vote for AuH20 whats his name	Barry Goldwater		0
2631	Give the name of Elizabeth Barrett Browning's dog	Flush		0
2632	What does the Campbell-Stokes recorder measure	Duration of sunshine		0
2633	How Are The Musical Duo Of "Martha Wash & Izora Armstead" More Commonly Known	The Weathergirls		0
2634	"Poppy Field" and "Water Lilies" were painted by which artist	Claude monet		0
2635	What does israel call its parliament	Knesset		0
2636	Tests on drugs and poisons determine the LD-50 dose. What does LD stand for	Lethal dose		0
2637	Who Is The Youngest Member Of Boyzone	Ronan Keating		0
2638	What Country-Pop artist was once a cheerleader alongside classmate Brenda Lee at Maplewood High School in Nashville	Rita coolidge		0
2639	Whose last words were - "That was the best soda I ever tasted"	Lou Costello		0
2640	What did Martin Stone invent in 1888 that millions of suckers use every day? 	The Drinking Straw 		0
2641	The name of what product - German water Greek olive Oil	Vaseline Wasser Elaion		0
2642	Which instrument did Paganini play	Violin		0
2643	Which film actor is known as 'The muscles from Brussels'	Jean claude van damme		0
2644	At the Festival of the Cleaver Spartans nailed what to the wall	Sausages for older men to gnaw		0
2645	The word bungalow comes from which language	Hindi		0
2646	Which Variety Of Pine Tree, Alive Today, Was A Sapling During The Life Of Christ/ 	The Bristlecone Pine 		0
2647	In which sport is the term, "Hang ten" used?	Surfing		0
2648	What does the computer acronym IKBS stand for	Intelligent knowledge based system		0
2649	Isms: Exalting one's country above all others	Nationalism		0
2650	What was Alexander The Great's wife's name?	Roxana		0
2651	What ONE word fits? ____stream; ____hill; _____pour.	Down		0
2652	Strine is the vernacular language spoken in which country	Australia		0
2653	At which weight was boxer Freddie Mills World Champion	Light heavyweight		0
2654	What was the only horror film nominated best film Oscar	The Exorcist in 1973		0
2655	Rioja Wine Comes From Which Country 	Spain 		0
2656	Instrumental Band B Bumble & The Stingers Had A No.1 Hit In 1960 With A Single Based On A Tchaikovsky Tune What Was The Song	Nut Rocker		0
2657	What is the Capital of: Belgium	Brussels		0
2658	What actor began his career doing Doctor Pepper commercials	Bruce Willis		0
2659	Which female singer collaborated with Eminem with the song "Stan"?	Dido		0
2660	What would you buy from a Bodega? 	Wine 		0
2661	Venation is used to describe what item	Leaves		0
2662	Who Scored England's Last Minute Winning Goal Against Belgium In The 1990 Football World Cup? 	David Platt 		0
2663	In which USA state is Frankfort the capital	Kentucky		0
2664	What US State flag has a UK Union Flag on it	Hawaii		0
2665	What does amd stand for	Advanced micro devices		0
2666	 Because baby pigs grow so quickly, a succession of 48 little pigs were used in the title role during the filming of the 1995 movie hit __________	Babe		0
2667	What is the name of the disease which is considered the human form of 'Mad Cow's Disease'?	Creutzfeldt -Jakobs Disease		0
2668	Which novel by Louis de Bernieres is set in Cephalonia	Captain corelli's mandolin		0
2669	For how much did an American urologist buy Napoleon's penis? (US Dollars)	$3,800 		0
2670	John Ruskin - Art Critic - Marriage collapsed when wife had what	Pubic Hair		0
2671	Which gas has the characteristic smell of rotten eggs	Hydrogen sulphide		0
2672	Arturo Toscanini played what instrument before conducting	The Cello		0
2673	Marion Barry - Mayor of Washington arrested for what	Possession of Crack		0
2674	What common item has a coil, point, sheath and two shafts	Safety Pin		0
2675	Who was the oldest man ever to play Test cricket when he represented England against West Indies in 1930 aged 52	Wilfred rhodes		0
2676	What season should you head to the pond to look for tadpoles	Spring		0
2677	What city do Batman and Robin patrol?	Gotham City		0
2678	What is the basic unit of currency for Afghanistan ?	Afghani		0
2679	What is the small irregular white cloud that zips around Neptune approximately every 16 hours called?	Scooter		0
2680	Which European City Is Famous For Its Latin Quarter 	Paris 		0
2681	What flag flies over gibraltar	Union jack		0
2682	Which famous author also writes under the name pen name of Richard Bachman?	Steven King		0
2683	Who Won The First University Boat Race Between Oxford And Cambridge? 	Oxford 		0
2684	Which French artist painted 'The Bridge at Argenteuil', and 'The Magpie'	Claude monet		0
2685	Which Old Testament King was succeeded by his son Rehoboam	Solomon		0
2686	What sequence is this the start of: 2 4 6 8 10 12 14	Even numbers		0
2687	What form modern sculpture invented Calder named Dechamp	The Mobile		0
2688	In what country did "Sepoy Mutiny" occur?	India		0
2689	In Baltimore it is illegal to scrub or wash what	A Sink		0
2690	Lilongwe is the capital of ______	Malawi		0
2691	What is the service ceiling of an f-14a tomcat	68900 feet		0
2692	What Was Ray Stevens 1974 Hit Based On The Phenomenon That Was Occuring At Sports Events Of The Time	The Streak		0
2693	In 1895 the world's first disposable item made - what was it	Razor Blade – King Camp Gillette		0
2694	What Is The Scirocco 	A Wind 		0
2695	Which famous artist lost an ear	Vincent van goch		0
2696	What mountain range is in New York state	Adirondack mountains		0
2697	In Greek mythology, who was paris' wife before he was smitten by helen	Oenone		0
2698	Who Wrote And Performed "Informer"	Snow		0
2699	Wine vinegar, egg white and what other ingredient goes into making hollandaise sauce? 	Butter 		0
2700	In the world of sport what is 62 feet and 10 inches long and 42 inches wide? 	Ten Pin Bowling Alley 		0
2701	The actor who played captain sisko in 'star trek deep space nine', played ____ the 1970's series 'spencer for hire'	Hawk		0
2702	How Many Stomachs Does A Cow Have? 	Four 		0
2703	Louis Washkansky was the first to do what in 1967	Get a heart transplant lived 18 days		0
2704	What city has the fictional zipcode 90210	Beverly hills		0
2705	What is the wife of a duke called	Duchess		0
2706	Where is charlottetown	Prince edward island		0
2707	A depilatory is a substance used for removing ____.	Hair		0
2708	From 1979 to 2000, which will be the most distant planet earth	Neptune		0
2709	Who was the 35th president of the U.S.	John f kennedy		0
2710	Collective nouns - A Business of what	Flies and Ferrets		0
2711	What is the term for a wolf's home"	Den		0
2712	Which Apollo mission carried Neil Armstrong and his cohorts to the moon? 	Apollo 11 		0
2713	What did captain matthew webb swim first	English channel		0
2714	The Spinet is another name for what old musical instrument	The Virginal		0
2715	Flattened, pear-shaped, hollow organ in the pelvis of the human female & most other mammals	Uterus		0
2716	What is London's largest park? 	Hyde Park 		0
2717	In what city is the Leaning Tower	Pisa		0
2718	The State Duma is the lower house of assembly in the parliament of which country	Russia		0
2719	What kind of animal is a lurcher	Dog		0
2720	Shoot the moon is a term used in which card game	Hearts - win all		0
2721	What did Dorothy's house land on in 'The Wizard Of Oz'?	The Wicked Witch of the West		0
2722	The England World Cup team released a song called Back Home in which year	1970		0
2723	What does lager literally mean in German	Storage		0
2724	Who is the lead singer of the Rolling Stones?	Mick Jagger		0
2725	Sinistrophobia is the fear of	Things to the left left-handed		0
2726	What is another term for the sternum	Breastbone		0
2727	At the battle of Actium who beat Mark Anthony and Cleopatra	Octavian -  Emperor Augustus		0
2728	Who Was The First Female To Be Inducted Into The Rock N Roll Hall Of Fame	Aretha Franklin		0
2729	What tree can be English, American or Eurasian	Elm		0
2730	Edith Smith Became The First Ever Female What In 1914	Police Woman		0
2731	In Old English what is a frieosan	A Sneeze		0
2732	Hit parade 1992 - What movie has Meg Ryan switching identities with an elderly man	Prelude to a kiss		0
2733	What is the most frequent cause of business errors	Illegible handwriting		0
2734	Thomas Cook the travel agent was born in what year	1808		0
2735	How Many Members Are There Of The Band “The Pussy Cat Dolls”	7		0
2736	Sakhmet was the egyptian god of ______	War and divine vengeance		0
2737	Now That We've Caressed And Kissed So Warm And Tender I Cant Wait	Johnny Bristol / Hang On In There Baby		0
2738	Who fixed the date of the Christian festival 'Easter'?	Council of Nicaea		0
2739	One of the five special senses (sense organs) by what odors are perceived	Smell		0
2740	What does atp stand for	Adenine triphosphate		0
2741	In 1840 London Sweet Maker Tom Smith Came Up An Invention Still Hugely Popular Today What Was It?	The Christmas Cracker		0
2742	If you have Acute hasopharyngitis what's wrong	You got a cold		0
2743	The _____________ is the world's smallest ocean. It is mostly covered by solid ice, ice floes, and icebergs.	Arctic ocean		0
2744	In what sport does a player win when they get 15 points	Badminton		0
2745	Whose second album was the chart-topping 'no need to argue'	Cranberries		0
2746	What was the only dummy awarded an academy award	Charlie mccarthy		0
2747	The popular character of __________ was not created by Carolyn Keene, but was actually created by a man named Edward Stratemeyer	Nancy drew		0
2748	What was Winston Churchill's codename during WW2	Agent		0
2749	Who Is Placebo's Outrageous Lead Singer	Brian Molko		0
2750	 Just like people, mother __________ often develop lifelong relationships with their offspring.	Chimpanzees		0
2751	Marble sized, vanilla flavored, chewy caramels covered with milk choclate.	Milk duds		0
2752	On what number is the decimal system based	Ten		0
2753	Name marc bolan's first single	Teenage dream		0
2754	What Was The Unlikely Former Job Of EX US President “ Gerald Ford ”	Male Model		0
2755	What city is famed for its rive gauche	Paris		0
2756	What famous trials were held in 1692	Salem witch trials		0
2757	Who led the Crazy World?	Arthur Brown		0
2758	The vernal equinox is the beginning of ________	Spring		0
2759	What did a Cordwainer make	Shoes		0
2760	In the anglo-saxon poem, who killed grendel	Beowolf		0
2761	What is the billionth digit of 'pi'	Nine		0
2762	Vivaldi composed The Four Seasons - what's his first name	Antonio		0
2763	The average human body contains enough fat to make how many bars of soap	7		0
2764	In a survey 4% of US employees never do what at work	Laugh		0
2765	For Red October What African republic's name was inspired by its thriving elephant tusk trade	The Ivory Coast		0
2766	In which country is the Dalai Lama's palace	Tibet		0
2767	What are the young of seals called	Pups		0
2768	Who composed The Carnival of the Animals	Saint saens		0
2769	What independent states name has 10 letters only one vowel	Kyrgystan		0
2770	What is the capital of Egypt	Cairo		0
2771	What is the capital of Bhutan ?	Thimphu		0
2772	What word is used for a male deer?	Buck		0
2773	Name Eddie Murphy's skit about vocabulary on Saturday Night Live.	Mr. Robinson's Neighborhood		0
2774	The Venice Cup is for women only playing what	Bridge		0
2775	Countries of the world:landlocked country in southern Africa, the capital is Harare	Zimbabwe		0
2776	The Nuffield Radio Astronomy Laboratories are more usually known by what name	Jodrell bank		0
2777	Canada is the world leader in the production of	Newsprint		0
2778	"Rollin" And "Once Upon A Star" Were No.1 Albums For Which 70's Sensation	The Bay City Rollers		0
2779	What ancient measure was the distance from the elbow to the tip of the middle finger	Cubit		0
2780	Who is the main character from Nintendo's 'Earthbound'?                                                                              	Ness		0
2781	Capital of Azerbaijan	Baku		0
2782	What do the dodo, moa and great auk have in common	They are extinct		0
2783	What was Britain's first winning entry in The Eurovision Song Contest (name The Song)	Sandie Shaw / Puppet On A String		0
2784	Which Large Animals Did Hannibal Bring With Him Across The Alps 	Elephants 		0
2785	Which car company was founded by Sir William Lyons in 1922	Jaguar		0
2786	In the 1946 film, It's a Wonderful Life, what's the name of George Bailey's guardian angel? 	Clarence (Oddbody) 		0
2787	For what are allen and wright famous	Root beer		0
2788	What did American Harland D. Sanders give to the world in 1939	Kentucky fried chicken		0
2789	In Greek mythology, who hired daedalus to construct the labyrinth	Minos		0
2790	What is the basic unit of currency for Panama ?	Balboa		0
2791	Which football team was nicknamed the "Orange Crush"	The denver broncos		0
2792	Who is known for the 'theory of evolution'	Charles darwin		0
2793	Name the first president of the american red cross	Clara barton		0
2794	Orienteering began in which country	Sweden		0
2795	Where is the world's largest desert?	North Africa		0
2796	What Vehicle Drove Natalie Cole Into The Top Ten In 1988	Pink Cadilac		0
2797	Who Was A Tory, then Became A Labour MP And Finally Lead The British Facist Party? 	Oswald Mosley 		0
2798	Who recorded 'In the Air Tonight' in 1981?	Phil Collins		0
2799	Generally cornflowers are what colour	Blue		0
2800	Who Joined Queen in their 1981 hit Under Pressure	David Bowie		0
2801	Buddy Rich's real first name was what	Bernard		0
2802	I Am A Suburb Of California, I Have The Nickname (Surf City) and part of my name sounds the same as the surname as 2 Famous Hollywood Celebrities, Where Am I 	Santa Cruz 		0
2803	Who Married Actress Julia Roberts In 1993	Lyle Lovett		0
2804	As what is Krung Thep is more commonly known	Bangkok		0
2805	Who was shaka's successor	Dingaan		0
2806	After the end of the Vietnam War, to what was Saigon's name changed	H0 chi min city		0
2807	What Is Princess Diana's Madien Name ? 	Spencer 		0
2808	Who, on his deathbed, said that he did not wish Queen Victoria to visit him because she would only give him a message for Albert	Disraeli		0
2809	You can do a degree in brewing at Heriot-Watt University where	Edinburgh		0
2810	Who is Gordon Sumner better known as?	Sting		0
2811	In Which Year Was The Berlin Wall Constructed 	1961 		0
2812	What is the creature that is half eagle, half lion	Griffin		0
2813	What is the nickname for Reading, Pennsylvania.	Pretzel city		0
2814	Who played Clyde to Faye Dunaway's Bonnie?	Warren Beatty		0
2815	What Is The Italian Name For Squid In A Restaurant? 	Calamari 		0
2816	Name the band - songs include "Light My Fire, Love Her Madly"?	The Doors		0
2817	In Which Country Was Paper Magnate Robert Maxwell Born ? 	Czechoslovakia 		0
2818	How many colored squares has a rubiks cube 	54 		0
2819	Who was nicknamed Impeesa (no sleep wolf) by Matabele tribe	Baden Powell		0
2820	What Did Ron Pigpen McKernan, Keith Godcheaux & Brent Myland All Have In Common	All Keyboardists Who Died While With The Grateful Dead		0
2821	The Character Of Mike Myers Features Heavily In Which Series Of Horror Movies 	Halloween 		0
2822	Florence Nightingale took what cos she was around young men	Bromide		0
2823	Mount Athos is famous for its many monasteries of which religion	Greek orthodox		0
2824	A line that touches a circle at only one point is called a ______. ?	Tangent		0
2825	Which Acid Is Present In Your Stomach 	Hydrochloric Acid 		0
2826	Who drinks the most tea per capita	Ireland		0
2827	What is Pennsylvania's main agricultural export	Mushrooms		0
2828	When was the first credit card issued	1900		0
2829	Who was the son of Saturn and Ops, and the husband of Juno	Jupiter		0
2830	What Is The Full Address Of The Simpsons In The Cartoon Series (Number Worth Jackpot)	742 Evergreen Terrace		0
2831	In which state is Mount Vernon	Virginia		0
2832	Excluding Rudolph, how many reindeer pull Santa's sleigh	Eight		0
2833	Which Food Of The Gods Was Said To Give Humans Immortality? 	Ambrosia 		0
2834	In what stage show does Frank N Furter appear	The Rocky Horror Picture Show		0
2835	This country is home to the world's oldest continuous local democracy.	Iceland		0
2836	In which large bay would you find the Belcher Islands	Hudson bay		0
2837	What is the fear of definite plans known as	Teleophobia		0
2838	83% of all Americans purchase what product	Peanut Butter		0
2839	Who was the last president of the U.S., as of 1998, to die in office	John kennedy		0
2840	Ncaa: who were the finalists in the men's basketball championship in 1948	Kentucky & baylor		0
2841	What country is the home of the Ashanti people	Ghana		0
2842	A light clear red colour	Cerise		0
2843	What is the young of this animal called: Elephant seal	Weaner		0
2844	What is the best score in blackjack	21		0
2845	What does a manometer measure	Gas pressure		0
2846	What is a moon in its first quarter	Two-bit moon		0
2847	What is the capital of Colorado	Denver		0
2848	What's the USA's largest legal cash crop	Corn		0
2849	Djibouti is the capital of ______?	Djibouti		0
2850	In What Context Did Thierry Replace Ian Who Had Previously Replaced Cliff? 	Leading All Time Goal Scorer For Arsenal 		0
2851	Which Group Starred "Magical Mystery Tour"	The Beatles		0
2852	Whose secretary was Loelia Ponsonby	James Bond		0
2853	 To survive, most birds must eat at least half their own weight in food __________	Each day		0
2854	Coal is predominantly made up of this element.	Carbon		0
2855	Which eighties cartoon ended with the phrase: 'And knowing is half the battle?' 	G.I.Joe 		0
2856	The golden lion is awarded at which film festival	Venice		0
3003	Hockey: The Montreal ________.	Canadians		0
2857	Son Of My Father Is Credited As Being The First Song Ever To Feature Which Instrument	A Synthesizer		0
2858	What three letter word means 'the front of a ship'	Bow		0
2859	Roger Bresnahan introduced what to baseball in 1907	Shin Guards		0
2860	Which TV Talent Show Did Mary Hopkins Win	Opportunity Knocks		0
2861	What is James Naismith best known for?	Inventing Basketball		0
2862	Where were the first gambling casinos	Egypt		0
2863	Who was the catcher on the peanuts gang's baseball team	Schroeder		0
2864	In 1879 James Ritty invented what	Cash Register		0
2865	Name The First Chart Entry for Guns N Roses Ranking Higher On Its Re-Release In 1988	Welcome To The Jungle		0
2866	Which dress designer was shot dead in the summer of 1997	Gianni versace		0
2867	No nfl team which plays its home games in a domed stadium has ever won a ______	Super bowl		0
2868	Which Police Track Got To No.2 On Its Re-Entry In 1979	Can't Stand Losing You		0
2869	When Are Werewolves Expected To Appear 	When There Is A Full Moon 		0
2870	Which sports trophy was named after Fredrick Arthur Stanley Cup	Fred is Lord Stanley		0
2871	Which country's national flag has a bird and a snake depicted in combat	Mexico		0
2872	Aromatic gum resin burnt as incense	Frankincense		0
2873	What is the translation of the Greek name Vanessa	Butterfly		0
2874	In which order do you drink lemon, salt & tequila? 	Salt, Tequila, Lemon 		0
2875	Which traditional English sweet dish consists of apples with Victoria Sponge on top?	Eve's Pudding		0
2876	What is the occupation of Mary Poppins	Nanny		0
2877	What is the name of the dish of eggs baked with spinach	Eggs florentine		0
2878	Heinrich the lion founded what city	Munich		0
2879	What was the title of Kevin's byline story in St. Elmos Fire?	The Meaning Of Life		0
2880	Where do you find the medulla oblongata	Brain		0
2881	What was Fonzies favourite magazine	Hot Rod		0
2882	 The anaconda, one of the world's largest snakes, gives birth to its young instead of __________	Laying eggs		0
2883	“Right From The Start” & “Talking Point” Are Autobiographies By Whom ?	Gareth Gates		0
2884	Bonnie Tyler Had A Total Eclipse Of The What	Heart		0
2885	Who invented wax paper	Thomas Edison		0
2886	Who Let His Trumpet Do The Talking With "This Guys In Love With You"	Herb Albert		0
2887	What colour is malachite	Green		0
2888	Into what body of water does the danube river flow 	Black sea 		0
2889	The okapi belongs to what family of animals	Giraffe		0
2890	Which snake kills the most humans?	King cobra		0
2891	What Is The Largest Living Land Carnivore	Grizzly Bear		0
2892	The Queen has what music with her breakfast	Bagpipes - Started by Victoria		0
2893	What is the Capital of: Oman	Muscat		0
2894	Morbi in Gujarat is where most of the worlds what are made	Wall Clocks		0
2895	National capitals: Costa Rica	San jose		0
2896	Who wrote the best selling novel Polo	Jilly cooper		0
2897	What is the second largest bird in the world	Emu		0
2898	A average male will have 2000 what during his lifetime	Masturbated Ejaculations		0
2899	Jim Morisson Was Found Dead In What	The Bath		0
2900	What part of a frog do you rub to hypnotise it	Its belly		0
2901	Hanna_Barbera rose to fame by creating what duo for MGM	Tom and jerry		0
2902	In which American state is Cincinnati	Ohio		0
2903	Who Was Britain's First Million Pound Footballer	Trevor Fraancis		0
2904	What Was The Name Of The Character Played By Anne Bancroft In The 1967 Film 'The Graduate'' 	Mrs Robinson 		0
2905	What Is The Worlds Largest Desert Called 	The Sahara 		0
2906	In 1981 Which British Band Had A Hit Album Entitled "From The Tearooms Of Mars To The Hellholes Of Uranus" And A Hit Single Called Einstein A Go Go	Landscape		0
2907	 Elephants, lions, and camels roamed __________ 12,000 years ago.	Alaska		0
2908	Which herb whose leaves and blue flowers are both edible, is used in drinks such as 'Pimms'	Borage		0
2909	What are Manhattan, Apollo, Hedwig, Cartman, Guinness	Linux versions		0
2910	Who Won The Embassy World Snooker Championships In 1998 	John Higgins 		0
2911	What bird is associated with lundy island	Puffin		0
2912	Who ruled rome when christ was born	Caesar augustus		0
2913	Who played George III in Beau Brummell? (Robert Morely, Alec Guiness, Cardew Robinson) 	Robert Morely 		0
2914	Who is on a U.S. $5,000 bill	James madison		0
2915	What is the national drink of Yugoslavia	Slivovitz		0
2916	What product uses the most silver	Camera Film		0
2917	Who was the egyptian god of the underworld and vegetation	Osiris		0
2918	Where is Gorky Park?	Moscow		0
2919	Sir Jack Cohen founded what	Tescos - supermarkets		0
2920	What is the national flower of Australia	The Wattle Blossom		0
2921	What does the name Mesopotamia mean	Between two Rivers		0
2922	What Diameter Floppy Disks Were Introduced By Ibm In 1970 	8 Inch 		0
2923	Who was the first victim of the electric chair	William kemmler		0
2924	Which 1992 Film Starred Goldie Hawn & Meryl Streep As 2 Woman Going To Extraordinary Lengths To Preserve Their Looks 	Death Becomes Her 		0
2925	Who recorded Paul's song "Goodbye"?	Mary Hopkin		0
2926	On an ordinance survey map which symbol shows a battlefield	Crossed swords		0
2927	What vitamin deficiency causes rickets	Vitamin d		0
2928	What is Mr. Roger's first name	Fred		0
2929	This Moslem republic in asia was formerly part of India.	Pakistan		0
2930	What is the capital of Lesotho ?	Maseru		0
2931	In 1978 which famous comedy returned for a second series, four years after the first had been shown 	Fawlty Towers 		0
2932	Wesley Snipes and who starred in the film Money Train 1995	Woody Harrelson		0
2933	For What Is Lepidoptera The Scientific Name? 	Butterflies & Moths 		0
2934	Who Legally Adopted A Symbol To Replace His Name In 1993	Prince		0
2935	In The TV Show Sesame Street What Was The First Name Of The Character "Mr Snuffleupagus"	Aloysius		0
2936	Fife the only member of the band zz top without a beard has what last name	Beard		0
2937	What is the fear of vehicles known as	Ochophobia		0
2938	What is the name of Dennis the Menace's dog	Gnasher		0
2939	Who were UPS original customers	Department stores		0
2940	What is all hallow's eve	Halloween		0
2941	On the London Underground, which station has a different name on two of its platforms?	Bank and Monument		0
2942	Who Sang The First Song Ever To Be Performed On Top Of The Pops	Dusty Springfield		0
2943	Down which street is the st patrick's day parade	Fifth avenue		0
2944	Which single word connects a Beethoven composition, a Glenn Miller melody and some Terry's chocolates	Moonlight		0
2945	Who's first release was 'Talking Heads 77'?	Psycho Killer		0
2946	If you suffered from Chirospasm what have you got	Writers Cramp		0
2947	Red headed men are more likely than others to do what	Go Bald		0
2948	Which comedy duo first performed together in 1926	Laurel and hardy		0
2949	Why did sailors wear tattoos	Prevent Catching Pox		0
2950	Whose last words were supposed to have been 'Let not poor Nelly starve'	Charles ii		0
2951	What British Motor vehicle displayed at 1948 Amsterdam show	Land Rover		0
2952	Determination of the depth of a body of water	Sounding		0
2953	Which tennis star wore denim shorts during matches	Andre agassi		0
2954	What is Kermit D Frog's girlfriend's name?	Miss Piggy		0
2955	Who Sang About Patches In 1970	Clarence Carter		0
2956	What is the name for a painting depicting objects such as fruit and flowers	Still life		0
2957	Purl Plain Fisherman's Cable types of what	Knitting stitches		0
2958	Game show: before she became the head-turning letter turner on wheel of fortune in 1982, vanna white appeared as a contestant on what show	The Price is Right		0
2959	After who was Deana Carter named?	Dean Martin		0
2960	What is the basic unit of currency for Sri Lanka ?	Rupee		0
2961	How many numbers are on the spinner in 'the game of life'	Ten		0
2962	Who Sang The Theme To The Bond Movie For Your Eyes Only	Sheena Easton		0
2963	Jane Caine Has A Claim To Fame As The First Person To Do What 	Speaking Clock Voice 		0
2964	What Was The Biggest Selling Album Of The 80's	Michael Jacksons (Thriller)		0
2965	 A newborn gray whale calf is an average 16 feet long. For reasons unknown, all gray whale calves are born in the warm, shallow lagoons of Baja, __________	California		0
2966	How many players are there on a water polo team	Seven		0
2967	According to Homer Simpson what is a feline	An Elephant		0
2968	What is the capital of Senegal	Dakar		0
2969	From What Do The Doobie Bros Take Their Name	A Marijuana Joint Known As Doobie		0
2970	Which English brewery has the oldest patent on beer	Bass Ale		0
2971	Who was The Second Man To Set Foot On The Moon 	Buzz Aldrin 		0
2972	Which of Dicken's novels is set during the Gordon Riots	Barnaby rudge		0
2973	Between Which 2 Countries Would You Find Lake Olirid 	Albania & Macedonia 		0
2974	What is schizophrenia	Hallucinations & delusions		0
2975	The discovery of gold in which region of Yukon provoked a rush	Klondike		0
2976	What is the largest volcano in the solar system	Olympus mons		0
2977	Which 1998 film stars Robert Redford as a hero blessed with a gift for healing	The horse whisperer		0
2978	The word Atom comes from the Greek meaning what	Indestructible		0
2979	Moon Soo King has represented which country at badminton	South korea		0
2980	Illinois second largest city and a TV detective share what name	Rockford		0
2981	Which garden pest, which can cause great damage to lawns, is the grub of the crane fly	Leatherjacket		0
2982	Where is the machu picchu	Peru		0
2983	In what city in Georgia is it illegal to tie a giraffe to a telephone pole or street lamp?	Atlanta		0
2984	Playing card - Raymond Shaw trance - Manchurian Candidate	Queen Diamonds		0
2985	King richard the ________	Lionheart		0
2986	When Did Sid Vicious Join The Sex Pistols	1977		0
2987	What the W. of George W. Bush stand for?	Walker		0
2988	Parascopisim is what sexual behaviour	Voyeurism through bedroom windows		0
2989	What is 'military governor' in Japanese?	Shogun		0
2990	What links The Friend, The Tablet and The Universe	Religious publications		0
2991	Who Sung The Theme Tune to The Bond Movie “For You're Eyes Only”?	Sheena Easten		0
2992	Two angles that total 180 degrees are called _______	Supplementary		0
2993	In the US what was known as Armistice Day until 1954? 	Veterans Day 		0
2994	What is the flower that stands for: cure	Balm of gilead		0
2995	Who was the Greek god of fire?	Hephaestus		0
2996	Which food item gets its name from the French for melted	Fondue		0
2997	What is the Capital of: Dominica	Roseau		0
2998	What is the literal translation of aardvark	Earth pig		0
2999	What sport is sometimes called rugger	Rugby union		0
3000	Arnold Schwarzenegger is a father trying to get the must have toy, Turbo Man, in which 1996 film 	Jingle All The Way 		0
3001	How is Edson Arantes Do Nascimento better known? 	Pele 		0
3002	Name the first web browser publicly available	NCSA Mosaic		0
3004	What is a group of whales	Pod		0
3005	What did Alfred Hitchcock Fear?	Eggs		0
3006	What organ of the body is particularly affected by hepatitis	Liver		0
3007	What links fire escapes windshield wipers bullet proof vests	Invented by women		0
3008	Who said: when i look at my children, i say lillian you should have stayed a virgin 	Lillian carter 		0
3009	What did the Romans call Scotland? 	Caledonia 		0
3010	Nashville is the capital of ______?	Tennessee		0
3011	Kappelkoff is the real surname of which actress	Doris day		0
3012	What is the international governing board of football (soccer)?	FIFA		0
3013	What does Amoco stand for	American oil company		0
3014	Which group sang the song "Original Prankster"?	Offspring		0
3015	Building started on Westminster Abbey in which year	1050		0
3016	Addis Ababa is the capital of which country	Ethiopia		0
3017	If You Were Travelling At Mach II How Fast Would You Be Moving 	Twice The Speed Of Sound 		0
3018	Which Song Was George Harrison Accused Of Plagiarising For His Hit My Sweet Lord	He's So Fine		0
3019	In which country do families dress a stuffed male doll with old clothes from each member of the family and then burn it, symbolizing forgetting all the bad things of the old year? 	Colombia 		0
3020	How to Handle a Woman came from which stage musical	Camelot		0
3021	To determine the percentage of alcohol in a bottle of liquor, what is divided by two	Proof		0
3022	Air Lingus is the national airline of which country	Republic of Ireland or Eire		0
3023	Who Is Reg Dwight Otherwise Known As	Elton John		0
3024	Josephine Hull best supporting actress Oscar which 1950 film	Harvey		0
3025	What is the basic unit of currency for Nepal ?	Rupee		0
3026	What Was The Christmas Number One In 1995	Michael Jackson / Earth Song		0
3027	What type of food is Fontina?	Cheese		0
3028	Which branch of science is concerned with the study of matter and energy	Physics		0
3029	Elvis Presleys Twin Brother Died At Birth What Was His Name	Jesse Garon		0
3030	Who originally designed the Washington Monument	Robert mills		0
3031	Halifax is the capital of which Canadian province	Nova scotia		0
3032	Which Famous Duo Are Members Of The Pop Group Wild Stallions	Bill & Ted		0
3033	Who sings 'sweet home alabama'	Lynyrd skynyrd		0
3034	Who played Sarah Conner in 1984s Terminator	Linda Hamilton		0
3035	What is the largest volcano in our solar system & what planet is it on	Olympus mons on mars		0
3036	What term is given to the scientific study of all aspects of the life of fungi	Mycology		0
3037	What is Tina Turner's real name?	Anne Mae Bullock		0
3038	What does "alopecia" refer to	Hair loss		0
3039	The Koh-i-Nor is a famous diamond - what does the name mean	Mountain of Light		0
3040	What is the meaning of Ghandi	Grocer		0
3041	Which moon is the second largest satellite in our solar system?	Titan		0
3042	In Morse Code Which Letter Of The Alphabet Is Represented By The Sequence “Dash Dash Dot Dot”	Z		0
3043	Collective nouns - a smuck of what	Jellyfish		0
3044	What phrase meaning 'replacement or backup,' comes from the middle ages when an archer always carried an extra string in case the one on his bow broke	Second string		0
3045	Which domesticated pet animal is never mentioned in the Bible	Cats		0
3046	Knickerbockers used to be the residents of where	New York		0
3047	Which key word was removed from the Olympic charter in 1971	Amateur		0
3048	What slim volume began a record 161 week stint atop the hardcover fiction best sellar list in 1993	The bridges of madison county		0
3049	What is the capital of Moldova ?	Chisinau		0
3050	Who was the famous grandfather of Charles Darwin?	Josiah Wedgewood		0
3051	What is the fear of fire known as	Pyrophobia		0
3052	In 1925 two men first drove round Australia in what make of car	Citroen 2 seater		0
3053	Who was the English man of religion founded Society of Friends	George Fox		0
3054	Which pop group invited you to take them “Dancing Naked In The Rain”	Blue Pearl		0
3055	In which European city did composer Richard Wagner die in 1883? 	Venice 		0
3056	Sleeping sickness is carried by which insect?	Tsetse fly		0
3057	Slim Whitman Stayed At No.1 In The Uk Charts For 11 Weeks With Which Ballad	Rosie Marie		0
3058	A wild ox	Bison		0
3059	In the film 'day of the jackal', who did edward fox play	Jackal		0
3060	Which Alan Parker film dealt with racial murders in America	Mississippi burning		0
3061	In which forest does the River Danube rise	Black forest		0
3062	What is acute hasopharyngitis	A cold		0
3063	What is Dagwood's dog's name	Daisy		0
3064	Where is area 51 generally said to be	Groom lake		0
3065	Who directed the dark crystal (2 people jh fo)	Jim henson frank oz		0
3066	What is the disease frequent in asia, africa and america, which is believed to result from eating polished rice	Beri beri		0
3067	What was Billboards hit single of the 1970s	You light up my life		0
3068	In a period of 400 years how many times does the 1st of January fall on a Sunday ?	58		0
3069	Haggard as what is merle haggard also known as	Okie from muskogee		0
3070	What is the more common name for serigraphy	Silk screen printing		0
3071	In Burma illegal possession of what item can mean prison	A Modem		0
3072	In what country is Thunder Bay	Canada		0
3073	What does an anemometer measure	Wind velocity		0
3074	What is the longest river in Australia	Murray-Darling		0
3075	Which is the Earth's smallest continent ?	Australia		0
3076	In what Agatha Christi book does Poriot Die	Curtain		0
3077	In what are monocotyledon and dicotyledon terms	Botany		0
3078	A loofah is a type of what	Plant		0
3079	A duffer is Australian slang for what	Cattle Thief		0
3080	Richard Arkwright invented the Spinning Jenny what job had he	Barber		0
3081	What are Limerick, Round Bend, Aberdeen and Octopus	Fishing Hooks		0
3082	Into what ocean does the zambezi river empty	Indian ocean		0
3083	How Many Tournaments Constitute A Golf Grand Slam? 	4 		0
3084	Who was the last astronaut to fly alone in a spacecraft	Ron evans		0
3085	Why Does Gene Kelly Suddenly Stop In The Singing In The Rain Routine	He Notices The Policeman		0
3086	Who said "sex appeal 50% what you got 50% they think you got"	Sophia Loren		0
3087	What is the square root of 65536	256		0
3088	Which major U.S. city is in Dade County	Miami		0
3089	Who was King of Mycenae and Commander of the Greek forces in the Trojan War	Agamemnon		0
3090	In Battle Star Galactica,What was the name of the human leader of the Cylons?	Baltar		0
3091	What Was The Name Of Alexander The Greats Famous Horse 	BucePhalus 		0
3092	A skulk is a group of which animals	Foxes		0
3093	What Race Takes Place On An Annual Basis Between Putney And Mortlake? 	Oxford & Cambridge Boat Race 		0
3094	A long thin French type of bread	Baguette		0
3095	Which Italian dramatist wrote the play 'Accidental Death of an Anarchist'	Dario fo		0
3096	What were the 'Golden Apples' in Greek myth?	Apricots		0
3097	What was Tom Clancy's blockbuster first novel, published in 1984?	The Hunt for Red October		0
3098	What is the sixth day of the week	Friday		0
3099	What is the fear of dependence on others known as	Soteriophobia		0
3100	What do historians call the journey made by Mao to the Northwest of China after Chiang Kai-Shek had driven his forces out of the South and East?	The Long March		0
3101	Which city has the largest rodeo in the world?	Calgary		0
3102	Who had a hit in 1983 with 'True'	Spandau ballet		0
3103	What is the name of Marty's band that trys out for the dance in Back To The Future	The Pinheads		0
3104	What Is The Study Of Insects Called 	Entomology 		0
3105	His films include: Spartacus, The Vikings, and Ulysses.	Kirk Douglas		0
3106	Where is The Popliteal Fossa	Back of Knee		0
3107	Fishes which, as adults, lie on one side of the body with both eyes on the opposite, upward-facing side of the head	Flatfish		0
3108	Which country is also the world's largest archipelago	Indonesia		0
3109	What was the first film Paul Newman directed	Rachel Rachel		0
3110	The composer Berlioz married Harriet Smithson in which year	1833		0
3111	Which Has The Larger Ears: The African Or The Indian Elephant? 	The African 		0
3112	Who created the animated characters Wallace and Grommet	Nick Parks		0
3113	Who wrote the Science Fiction novel The Left Hand of Darkness	Ursula LeGuin		0
3114	Area in which aircraft are forbidden to fly	No-fly zone		0
3115	What Opened In 1955 in Anaheim, near Los Angeles, California. 	Disneyland 		0
3116	What country used the ringgit as currency	Malaysia		0
3117	Which is the fourth planet from the Sun	Mars		0
3118	What was the name of the witch in the tv show emu's world 	Grotbags 		0
3119	The Jaguar missile is used as a deterrant against what type of military vehicle or weapon?	Tank		0
3120	TVs Ben Casey started with Man Woman Birth Death and what	Infinity		0
3121	Who had A Top 20 Hit With "Over The Hills And Far Away" In The Mid 80's	Gary Moore		0
3122	What is nucleomitiphobia the fear of	Nuclear bombs		0
3123	What is the name for the theoretical end_product of the gravitational collapse of a massive star	Black hole		0
3124	What started in 1849 when gold was discovered at sutter's mill 	The california gold rush 		0
3125	The annual Hackademy awards are given for what	Smoking in films		0
3126	Who won the formula 1 championship after death at Monza	Jochen Rindt - 1970		0
3127	This African animal kills the most people.	Crocodile		0
3128	Who has "hair of floating sky"?	Julia		0
3129	In Which Sport Is The Espirito Santo Trophy Contested? 	Golf 		0
3130	The horse Khartoum plays a 'deciding' role in which classic 70's film ? 	The Godfather 		0
3131	In Michigan it is illegal to put what on your bosses desk	A Skunk		0
3132	Which Famous Painting Was Stolen From An Oslo Museum On The 12th Dec 1994	The Scream		0
3133	What is it that turns blue litmus paper red?	Acid		0
3134	Who is the greatest	Me		0
3135	What U.S. City is known as The River capital of the world	Akron		0
3136	Which German was the first man to win the Nobel prize for Physics, doing so in 1901 for a major discovery made in 1895	Wilhelm roentgen		0
3137	How In The World Of Music Is "Richard Melville Hall" More Commonly Known	Moby		0
3138	Cetology is the study of ________.	Whales		0
3139	What phenomenon do cereologists study	Crop circles		0
3140	Who built the Taj Mahal?	Shah Jahan		0
3141	What is the name of the starfish who is considered the best friend of Spongebob Squarepants?	Patrick		0
3142	Which chemical element was foremerly known as the latin "Kalium", hence bears the symbol "K"?	Potassium		0
3143	Where did the mafia originate	Sicily		0
3144	What is the fear of radiation, x-rays known as	Radiophobia		0
3145	What Australian town used to be called Stuart until 1925	Alice Springs		0
3146	In Village People, there was an American Indian a cowboy, a consrtuction worker, a biker and who else?	A Policeman		0
3147	What seed takes five years to yield consumable fruit	Coffee beans		0
3148	Who became president of South Africa in 1989?	F.W. de Klerk		0
3149	What two Julies won best actress Oscars for 1964 and 1965	Andrews and		0
3150	Bambi was the first Disney film without what	Human characters		0
3151	The Carrick Roads, a well known haven for wildlife is situated in which English county?	Cornwall		0
3152	What is the inflammation of the stomach & intestines called	Gastroenteritis		0
3153	What Mathematical Symbol Has The Proper Name Of A Lemniscate	The Infinity Sign		0
3154	What is the most commonly used descriptive word on menus	Mom		0
3155	Football Team, dallas ______	Cowboys		0
3156	He was stabbed by Gaius Cassius Longinus.	Julius Caesar		0
3157	Which Union Did "Duran Duran" Sing About	The Union Of The Snake		0
3158	Which American Military Academt was established in 1802 on the Hudson river ?	West Point		0
3159	Which Footballer Drop Kicked A Fan At Crystal Palace 	Eric Cantona 		0
3160	Which couple were exiled from The Philippines in 1986	Ferdinand and imelda Marcos		0
3161	What passenger train once ran between London & Edinburgh	Flying scotsman		0
3162	How many stars are on the flag of New Zealand?	Four		0
3163	A research scientist is sometimes called this	Boffin		0
3164	A tittiliomaniac has a compulsion to do what	Scratch		0
3165	The world's longest railway is in _______. The Central Railway climbs to 15,694 feet in the Galera tunnel, 108 miles from Lima. Tourists take it to get to the ruins of Machu Picchu.	Peru		0
3166	What is the capital of Nauru	Yaren		0
3167	What was advertised with the slogan 'Gives a meal man appeal'	Oxo		0
3168	R kelly sings 'if i can see it then i can do it, if i just believe it, there's nothing to it' what's the song title	I believe i can fly		0
3169	What New York City's restaurant is alluded to in many stories by Damon Runyon	Lindy's		0
3170	 Expressing recognition rather than love, Utah __________ exchange "kisses." By the touching of incisor teeth, they quickly confirm the identity of group members.	Prairie dogs		0
3171	What is a group of this animal called: Wolf	Pack route		0
3172	Originally made in Nimes, France, this fabric was called serge denimes	Denim		0
3173	The nation of _______________ covers approximately the same land area as the state of Wisconsin. Yet it ranks eighth in population among all the world's countries.	Bangladesh		0
3174	Who Wrote The Books (The Firm) And (The Pelican Brief) Both Of Which Were Made Into Films? 	John Grisham 		0
3175	Who directed the film "bridge over the river kwai"	David lean		0
3176	_________ sits on the southern coast of France, near the border with Italy, and covers 0.73 square miles (approximately 1/2 the size of New York's Central Park).	Monaco		0
3177	What world war i hero received 50 medals	Alvin york		0
3178	Spring bulb with trumpet shaped yellow flowers	Daffodil		0
3179	Who Released The 70's Album Entitled Kimono my House 	Sparks 		0
3180	What Type Of Insect Is A Glow Worm? 	A Beetle 		0
3181	Who wrote Northanger Abbey	Jayne Austin		0
3182	What was the first film to use stereophonic sound	Disney's Fantasia		0
3183	In Egyptian mythology, who is the god of the underworld?	Osiris		0
3184	Which is the name of the killer in A Nightmare on Elm Street 	Freddy Krueger 		0
3185	What is the favourite sport of the kennedy clan	Football		0
3186	Which president was responsible for the 'louisiana purchase'	Thomas		0
3187	What is the capital of Oman ?	Muscat		0
3188	Name the Italian-born American inventor whose form of hydrotherapy has become a popular facility in home or hotel	Candido jacuzzi		0
3189	Although The Claim Of Millions Who Is Undoubtedly "Born In The Usa"	Bruce Springsteen		0
3190	What is the capital of Uzbekistan ?	Tashkent		0
3191	What US state has the most murders	California		0
3192	Who was 'the postman'	Kevin costner		0
3193	What is the capital of Niger	Niamey		0
3194	Which British Rock Band Launched A Record Label Named "Bludgeon Riffola" In The 1980's	Def Leppard		0
3195	Which city is the capital of the Italian region of Tuscany	Florence		0
3196	Which nation has the longest predicted life expectancy for both men and women	Liechtenstein		0
3197	Who sang the song "The Way I Am"?	Eminem		0
3198	If you have a Barr test what was tested	Your Sex - in athletics		0
3199	Spectacles for entertainment, usually with allegorical or mythological themes, performed by the aristocracy in the sixteenth and seventeenth centuries, combining music, recitatives and mime.	Court ballet		0
3200	Capital city of Quebec, Canada	Quebec		0
3201	What Is The Most Expensive Spice 	Saffron 		0
3202	Pop a 12 ounce can of soda pop contains the equivalent of how many teaspoons of sugar	Nine		0
3203	High on the Happy Side was a No1 album for which band in 1992?	Wet Wet Wet		0
3204	What does the Latin phrase Ex Mores mean	According to Custom		0
3205	What is a female calf	Heifer		0
3206	There are over 32000 known species of what in the world	Spiders		0
3207	What does it say on the bottom of New Jersey license plates	Garden state		0
3208	What is the capital of Belarus ?	Minsk		0
3209	Mao Muka Neko Pisica are what Chinese Gypsy Japan Ruman ia	Cats 4 languages		0
3210	Introduced in 46 BC by Julius Caesar, how many months was the Julian calendar divided into? 	12 		0
3211	By Law - Nebraska Barbers can't do what between 7 am 7 pm	Eat Onions		0
3212	Sociophobia is the fear of	Society		0
3213	Which US vehicle company has a bulldog as its symbol	Mack trucks		0
3214	The longest main street in America, 33 miles in length, can be found in Island Park, __________	Idaho		0
3215	What 'I' was once Mesopotamia?	Iraq		0
3216	Around 3000 bc, what writing system originated in sumer	Cuneiform		0
3217	Where is sclerotinite found	Coal		0
3218	What is a group of this animal called: Oxen	Yoke drove team herd		0
3219	Who Released The 70's Album Entitled Next 	The Sensational Alex Harvey Band 		0
3220	What Device was Invented By Rune Elmqvist & Åke Senning in 1958 ?	The Pacemaker		0
3221	What comic strip character is Beetle Bailey's sister?	Lois (of Hi and Lois)		0
3222	Honshu is the largest island of which country	Japan		0
3223	What did Marlon Brando and George C Scott refuse	Oscars		0
3224	Which actress played the role of Samantha stevens in the tv show bewitched and for a bonus point who played her in the 1990 movie version 	Elizabeth Montgomery & Nicole Kidman 		0
3225	Whose autobiography is entitled 'Part My Soul'	Winnie mandela		0
3226	There are three types of rocks: metamorphic, sedimentary, and _________.	Igneous		0
3227	This section of Manhattan is noted for its Negro and Latin American residents.	Harlem		0
3228	In what game does the new york institute for the investigation of rolling spheroids specialize	Marbles		0
3229	Written by Lennon and McCartney, what, in 1963 was the first rolling Stones' single to enter the top twenty	I wanna be your man		0
3230	Which Bridge Connects Europe With Asia 	The Galata Bridge Over The Bosphorus In Istanbul 		0
3231	What animals evidence is admissible in US courts	A Bloodhound		0
3232	Who said - "The bigger they come the harder they fall" 1899	Bob Fitzsimmons		0
3233	Amount Beatles received to play The Ed Sullivan Show	$3,500 		0
3234	What is the Capital of: Micronesia, Federated States of	Palikir		0
3235	What is the capital of Turkey	Ankara		0
3236	Shu was an Egyptian God of what	The Air		0
3237	Which member of Guns 'n' Roses was born in Stoke, England?	Slash		0
3238	In the Star Trek: Deep Space Nine series, name the Ferengi owner of the bar on Deep Space Nine	Quark		0
3239	Reno The assassination of what country's Archduke led to World War I	Austria		0
3240	What Was The Name Given To Textile Workers Who Opposed Modernisation During The Nineteenth Century? 	Luddites 		0
3241	What was John Lennon's real middle name?	Winston		0
3242	In any given 6 month period 40% of Americans are what	Affected by mental Illness		0
3243	Rudolph Valentinos movie premiere was in which year	1921		0
3244	Who was made Lord Mayor of London in 1397, 1398, 1406 and 1419? 	Richard (Dick) Whittington 		0
3245	Who were the second pair of astronauts to set foot on the moon?	Conrad and Bean		0
3246	What is podobromhidrosis	Smelly feet		0
3247	Who recorded "Mama Don't Lie" in 1963	Jan bradley		0
3248	Which TV series linked the real-life spouses of film stars William Holden and Natalie Wood 	Hart to Hart (Stephanie Powers and Robert Wagner) 		0
3249	The Dogs of War took its title from which other work	Shakespeare's Julius Caesar		0
3250	Which actor wore an old trenchcoat in one scene in all his films	David Niven		0
3251	In Scandinavian mythology what is the day of final doom called	Ragnerok		0
3252	Who Played Lead Guitar And Sang Backing Vocals On Champagne Supernova	Paul Weller		0
3253	In what city was Mozart born	Saltzberg		0
3254	Montpelier is the capital of which American state	Vermont		0
3255	With what type of reference book is Joseph Whitaker associated	Almanack		0
3256	What was the name of the multi-colored cube you had to re-organize?	Rubik Cube		0
3257	On Average a West German goes 7 days without doing what	Washing his underwear		0
3258	Whats the best known artificial international language	Esperanto		0
3259	What South American country takes its name from the latin for silvery	Argentina		0
3260	What did the "P" in Roscoe P. Coltrane (from Dukes of Hazzard) stand for?	Purvis		0
3261	Jenny & Lyn Beggren Are Singers With Which 90's Group	Ace Of Base		0
3262	Which Arthur Miller play uses the witch trials of Salem to comment on the so called McCarthy witchhunts	The crucible		0
3263	Which was the first group beginning with the letter V to have a No.1 hit in the UK?	The Village People		0
3264	Bashful, Doc, Dopey, Grumpy Are 4 Of The Seven Dwarfs Name The Other 3 (PFE) 	Happy, Sleepy, Sneezy 		0
3265	On which circuit is the Portuguese grand prix held	Estoril		0
3266	The Pentagon, in Arlington, Virginia, has twice as many __________ as is necessary	Bathrooms		0
3267	What animal rests in a form	Hare		0
3268	What Everyday Device Was First Patented In 1885 By E.J Claghorn?	The Seat Belt		0
3269	Thomas Caneery writer Schlinders Ark comes from what country	Australia		0
3270	In what literary work would you find the yahoos	Gulliver's Travels		0
3271	Who painted the Rockerby Venus	Velazquez		0
3272	What is the sequel to the film 'every which way but loose'	Every which way		0
3273	Name the X man who shoots laser beams from his eyes	Cyclops		0
3274	Who wrote "valley of the dolls"	Jacqueline susann		0
3275	Illustrator Sydney Paget created the trademarks of who	Sherlock Holmes Deerstalker		0
3276	357 UK roads are specially marked to protect what	Toads during mating season		0
3277	What is Blondie's maiden name	Oop		0
3278	What is Kimogayo in Japan	National Anthem		0
3279	 Of the 250_plus known species of shark in the world, only about 18 are known to be __________	Dangerous to man		0
3280	What's the triangular Indian pasty containing spiced meat	Samosa		0
3281	Shorty Long Had A Short Solo Career With Which Tamia Motown Classic	Here Comes The Judge		0
3282	After a bolus has been digested in the stomach, it is called ______ as it moves into the small intestine.	Chyme		0
3283	There are more statues of ________, Lewis & Clarks female indian guide, in the U.S. than any other person	Sacajewa		0
3284	Which world champion was beaten by a machine called Deep Blue in 1997? 	Gary Kasparov (Chess) 		0
3285	In Which Country Is The Monza Motor Racing Circuit? 	Italy 		0
3286	In Wacky Races who drove the Turbo Terrific	Peter Perfect		0
3287	Which Is The Most Intelligent Breed Of Dog? 	The Collie 		0
3288	What is the name of Dr. Seuss's egg hatching elephant	Horton		0
3289	In the Bible who was the father of Abraham	Terah		0
3290	How would you feel if you were forswanked	It means very tired		0
3291	The national bird of India is the?	Peacock		0
3292	Who recorded the album "nine tonite"	Bob segar		0
3293	Rodin's The Thinker is really a portrait of what Italian poet	Dante		0
3294	In November 1981, Diana Ross had a number one hit with the duet 'Endless Love'. Who was her co-singer	Lionel ritchie		0
3295	Absolutely pure ____ is so soft that it can be molded with the hands	Gold		0
3296	This Sioux Indian toured with Buffalo Bill's Wild West Show.	Sitting bull		0
3297	Cantonese Boy Was Between 2 Top Ten Hits In Which Early 80's Bands career	Japan		0
3298	What Are Oak Apples? 	Wasp Eggs 		0
3299	Who was the original choice to play the terminator	O J Simpson		0
3300	Which US author penned the novels "Of Mice and Men" and "East Of Eden"?	John Steinbeck		0
3301	If You Rolled A 4 On Your First Throw In a Game Of Monopoly What Square Would You Land On	Income Tax		0
3302	Dodgers what famous singer played the title role in "the great caruso"	Mario lanza		0
3303	Other than meat, what is also known as a leg of mutton	A kind of sleeve		0
3304	Who Wrote The Book Alice In Wonderland 	Lewis Carrol 		0
3305	What is a peanut if it is not a pea or a nut?	Legume		0
3306	What does a taxidermist do	Stuff animals		0
3307	The second space shuttle was named __________.	Challenger		0
3308	Where do the English monarchs live?	Buckingham Palace		0
3309	What is the capital of Solomon Islands	Honiara		0
3310	What metal do you get from Hematite?	Iron		0
3311	In which country would you expect to be served a yoghurt-based starter called 'tzatziki'? 	Greece 		0
3312	Which natural phenomenon can be measured on the Mercalli scale	Earthquakes		0
3313	By law every Swiss citizen must have access to what	Personal bomb shelter		0
3314	Who was the first woman to win an Oscar best actress 1928	Janet Gaynor		0
3315	Scotomaphobia is the fear of	Blindness in visual field		0
3316	What was Thin Lizzies first hit in 1973	Whiskey in the Jar		0
3317	The effect produced when sound is reflected back is known as a(n) ____.	Echo		0
3318	What was the name of the paperboy whose 1978 murder sparked a massive manhunt by British police? 	Carl Bridgewater 		0
3319	What is the most popular type of holiday greeting card mailed in the U.S.	Christmas		0
3320	In 1975, what re-opened after an 8 year closure?	Suez Canal		0
3321	When honey is swallowed, it enters the blood stream within a period of how many minutes	20 minutes		0
3322	In which country do some people eat long noodles to to wish for a long life? 	Japan 		0
3323	Michael McNeil & Charles Burchill Are Members Of Which Band	Simple Minds		0
3324	In Alaska it's legal to shoot bears but illegal to do what	Wake up for photo		0
3325	In which Mega Man game did Mega Man first gain the ability to charge up his shots?                                                   	Mega Man 4		0
3326	Brief commemorative inscription on a tomb; also, a short piece of poetry or prose lauding a deceased person	Epitaph		0
3327	A _______ is the only standard international unit of measure still defined by a physical object, a bar composed of two elements	Kilogram		0
3328	Who won the 2001 FA Cup?	Liverpool		0
3329	Who painted Starry Night	Vincent van gogh		0
3330	What Herb Do Cats Love? 	Catnip/ Cat Mint 		0
3331	Who Had Hits With "Kiss Me Deadly" & "Close My Eyes Forever"	Lita Ford		0
3332	Which Daniel Defoe character was born in Newgate Prison	Moll flanders		0
3333	What Is The Name Of The Summer Camp In The Friday The 13th Movies 	Camp Crystal Lake 		0
3334	Silvio Gazzangia Is Responsible For The Design And Creation Of What	The World Cup		0
3335	What is the chief food for half the people in the world? 	Rice 		0
3336	Who is schroeder's favourite composer	Beethoven		0
3337	For what was the last person hanged in the american colonies september 22, 1692	Witchcraft		0
3338	Who was the original singer of Los Lobos' 1987 hit "La Bamba"?	Ritchie Valens		0
3339	Who's Autobiography Is Called "True"?	Martin Kemp		0
3340	What is the cardinal number for a set of 10 elephants	Ten		0
3341	64% of American teenagers have what in their bedrooms	Television		0
3342	Who released a chart-busting album in 1976 which featured 'The Lido Shuffle'?	Boz Scaggs		0
3343	 The average life expectancy of a rhinoceros in captivity is __________	15 years		0
3344	What was Lucy's maiden name on 'I Love Lucy'?	McGillicuddy		0
3345	In what country did the Sabines live	Italy		0
3346	What is the fear of words known as	Logophobia		0
3347	What is a group of goats	Tribe		0
3348	In which city were the Hanging Gardens	Babylon		0
3349	What is it when five or fewer water molecules bond tightly together in a ring	Cluster		0
3350	Who was with patricia hearst the night she was kidnaped	Steven weed		0
3351	In Greek mythology, who was the hunter who was torn apart by artemis' dogs	Actaeon		0
3352	What is new brunswicks highest point at 820 m	Mount carleton		0
3353	Who sang 'that's alright mama'	Elvis presley		0
3354	Which Sean Maguire Track Re-Entered The Charts In 1994	Take this Time		0
3355	Which is the largest of the Canadian Provinces and Territories	Northwest territories		0
3356	Name The Owner Of Sun Records	Sam Phillips		0
3357	Why could William Tell not have shot the apple with a crossbow	Crossbow not known 13th century		0
3358	Who was the losing Republican candidate in the 1964 U.S. Presidential Election	Barry goldwater		0
3359	Where is Montevideo	Uraguay		0
3360	What cocktail is made from triple sec, tequila and lemon or lime juice	Margarita		0
3361	In Which 80's Band Was Craig Logan A Member	Bros		0
3362	Which geographical location was the first word spoken on the moon? 	Houston 		0
3363	What does a Erotophobe fear	Sexual Love		0
3364	At Roman feasts which birds tongues were delicacies	Flamingos		0
3365	The winter olympics were first held in which country	France		0
3366	Who famously said "if in doubt, tell the truth."	Mark twain		0
3367	"Mean Man", "The Real Me" And "Forever Free" Are All 80's Tracks From Which US Band	W.A.S.P		0
3368	Where Is The Irish Grand National Run 	Fairyhouse 		0
3369	In The Song "Oh What A Beautiful Morning" From Oklohoma How High Does The Corn Grow	As High As An Elephants Eye		0
3370	Which name has been most frequently chosen by Roman Catholic Popes	John		0
3371	What colour on black produces the most visible combination?	Yellow		0
3372	What's the international radio code word for the letter "H"	Hotel		0
3373	In mythology who married the beautiful maid Galatea	King Pygmalion Aphrodite life		0
3374	Who wrote the shortest ever letter ?	Victor Hugo		0
3375	What is the term for a full grown female horse	Mare		0
3376	"Macaulay Caulkin's folks left him ""Home Alone"" in the original 1990 movie Where did they go? " 	Paris 		0
3377	What was nancy davis reagan's birth name	Anne frances robbins		0
3378	In cooking six drops equal one what	Dash		0
3379	What is the largest gland in the human body	Liver		0
3380	Which British Monarch Came To The Thrown On Christmas Day 1066 (Alternative)	William The Conqueror		0
3381	Grace Metalious wrote which famous novel (and TV show)	Peyton Place		0
3382	When was the first telephone used	March 10, 1876		0
3383	Into what ocean does the Zambezi river flow	Indian		0
3384	What countries official name is Bharat	India - in Hindi		0
3385	What represents the zodiac sign Scorpio	Scorpion		0
3386	Jonquil is a shade of what colour	Yellow		0
3387	Off which South American port was the Graf Spee scuttled in 1939	Montevideo		0
3388	Which Renaissance City was severely flooded in November 1966	Florence		0
3389	In Arthurian legend who is the son of Sir Lancelot	Galahad		0
3390	Cereal used as food and in spirits	Barley		0
3391	Polish sprinter Ewa Klobukowska first do what at Kiev in 1967	Fail sex test was disqualified		0
3392	What Is The common Name For Acetic Acid 	Vinegar 		0
3393	An average American does it 2.2 times a week – what	Visit a Supermarket		0
3394	Which Politician was Nick Named Bambi 	Tony Blaire 		0
3395	Which large city is on the Southeastern coast of Australia?	Sydney		0
3396	The body of an insect is divided into how many sections	Three		0
3397	What Is The More Common Name For The Bird Traditionally Called A "Gillhowter" In Norfolk	Barn Owl		0
3398	Kneeling cushion in church	Hassock		0
3399	Sergai Kalenikov holds the world record in what	Pig Kissing		0
3400	Her headline hit in 1984 was "Girls Just Want To Have Fun"	Cyndi lauper		0
3401	What was the second successive No1 for Aqua?	Doctor Jones		0
3402	Who was Vice President to Jimmy Carter, and the Democratic nomination for the presidency in 1984	Walter mondale		0
3403	What U.S. states were named for the Sioux word "friend" or "ally"	Dakota		0
3404	What was the name of the space shuttle that exploded? 	Challenger 		0
3405	Whose Trumpet Was Recognizable By The Way It Was Bent Out Of Shape	Dizzy Gillespie		0
3406	What natural disasters are ranked in severity by the Saffir Simpson scale	Hurricanes		0
3407	A social dance popular in the nineteenth century. It was a square dance in five sections, each in a different time.	Quadrille		0
3408	What is another name for Nitre	Saltpetre		0
3409	Whose backing group was The Coconuts	King Creole		0
3410	What Is The Shaddock A Variety Of? 	Grapefruit 		0
3411	What is the European city of Culture for 1998	Stockholm		0
3412	It's the Great Pumpkin, Charlie Brown' is a critically-acclaimed and very popular animated halloween television special based on a comic strip by which American cartoonist 	Charles M. Schultz 		0
3413	What do Care Bears do when fighting enemies? 	Stare 		0
3414	In which continent would you find the mississippi river 	North america 		0
3415	This weapon lends its name to a type of woman's shoe with a slender, tapered high-heel?	Stiletto		0
3416	A similar earlier event is known as a	Precedent		0
3417	A Cappuccino Coffee Is Named After What 	Monks 		0
3418	Who was the first US president to be sworn in by a woman	Lyndon B Johnson – when JFK killed		0
3419	What is the capital of Liechtenstein	Vaduz		0
3420	Where in the world would you find Cumbum	India		0
3421	Which American political party which held a brief existence throughout the 1850s and 1860s, resisted immigration from Europe and supported slavery?	Knownothings		0
3422	Who On TV During The 1990's Had The Real Name Of "Michael Van Wijk"	Wolf (Gladiators)		0
3423	In Iowa 1978 Judge dismissed drink driving charge - why	Too Drunk to sample		0
3424	Who played the part of Mildred Roper on TV	Yootha joyce		0
3425	This word means "split personality".	Schizophrenia		0
3426	Which Very Famous Horror Story Was Written By Gaston Leroux 	The Phantom Of the Opera 		0
3427	Who makes maps	Cartographer		0
3428	Lake Titicaca lies in which two countries	Bolivia and peru		0
3429	What was the top single record in 1957 by debbie reynolds	Tammy		0
3430	What is the basic unit of currency for Guinea ?	Franc		0
3431	What is the capital of indiana	Indianapolis		0
3432	What was the theme song of the film The Grapes of Wrath	Red River Valley		0
3433	What is the capital of the state of California	Sacramento		0
3434	What hat was first made in and named after a Moroccan city	Fez		0
3435	What animal has bony plates and rolls up into a ball if it is frightened?	Armadillo		0
3436	How old is a horse when it changes from a filly to a mare	Four		0
3437	What is the name for a sexual disorder in which a person obtains gratification by receiving physical pain or abuse	Masochism		0
3438	Stake put by poker players before receiving cards	Ante		0
3439	Carlos Menim was elected president of what country in 1989	Argentina		0
3440	His many Romantic odes include 'Ode to Melancholy' and 'Ode to a Graecian Urn'	John Keats		0
3441	Which actor/writer born 1939 has the first names John Marwood	John Cleese		0
3442	What Is The Second Most Common Element On Earth 	Silicone 		0
3443	Name the racehorse decapitated in the Godfather	Khartoum		0
3444	Math: The answer to a division problem is called the ___.?	Quotient		0
3445	Who Performed The Main Title Song To The Film "The Girl Can't Help It"	Little Richard		0
3446	What illustrated sex guide did alex comfort write	The joy of sex		0
3447	What's the 1st name of Wayne Gretzky's father	Walter		0
3448	"Ever So Lonely" Was A Hit In 1982 For Whom	Monsoon		0
3449	Which tennis player was famous for the 'You cannot be serious'' outburst 	John McEnroe 		0
3450	Name the band formed by Ace Frehley after he left Kiss?	Frehley's Comet		0
3451	What Is The Most Southernly Point Of Mainland Great Britain 	Lizard Point 		0
3452	The first antiderivative of acceleration is:	Velocity		0
3453	Football Team, new orleans ______	Saints		0
3454	Who created the fictional detective Nero Wolfe	Rex stout		0
3455	What characters first appeared in Entertaining Young Gussie	Jeeves and Wooster		0
3456	Name the largest river forming part of the U.S. - Mexican border.	Rio Grande		0
3457	Which 3 actresses are the new "Charlie's Angels"	Lucy liu, drew barrymore & cameron diaz		0
3458	If you landed at Capodichino airport where are you	Naples		0
3459	In Which Year Were The Following All UK Chart Hits: "Come As You Are" By Nirvana, "The Crying Game" By Boy George And Rhythm Is A Dancer" By Snap?	1992		0
3460	Which 18th Century poet was known as 'The Bard of Ayrshire'	Robert burns		0
3461	Name the desrt located in south-east california. 	Mojave 		0
3462	What did Gentleman Jim do for a living	Fight		0
3463	What are swedish buns	Danishes		0
3464	There are 318,979,564,000 possible ways of playing just the first four moves on each side in a game of	Chess		0
3465	Although his career was snuffed out in the same plane crash that killed Buddy Holly, which east L.A kid had a memorable top ten hit about his girlfriend Donna	Richie Valens		0
3466	What is a 'Blenheim Orange.'	Apple		0
3467	Which chemical has the atomic number one? 	Hydrogen 		0
3468	If a doctor says you have singultus what have you got	Hiccups		0
3469	What activity burns up 140 calories per hour	Standing		0
3470	What is the meaning of the Mercedes Benz motto 'Das beste oder nichts'?	The best or nothing		0
3471	What is a fifty year anniversary	Diamond anniversary		0
3472	New Miserable Experience' was which group's first album in 1993	Gin		0
3473	What is the capital of montana	Helena		0
3474	Which Husband And Wife Pop Duo Formed In 1982 Consist Of Ben Watt & Tracy Thorn	Everything But The Girl		0
3475	What Breakthrough in fashion and Sometimes Elsewhere. Was invented in 1955 by George De Mestral	Velcro		0
3476	In Russia the national product is called Soldatsky what is it	Bread		0
3477	What does the 'x' mean when referring to the speed of a CD-rom (eg. 32x)?	Times (faster than standard speed)		0
3478	What is the regulation height for a pin in tenpin bowling	Fifteen inches		0
3479	The atomic weights in the periodic table are stated in proportion to the weight of what element, with atomic number 6?	Carbon		0
3480	Who Created Lord Peter Wimsey 	Dorothy L Sayers 		0
3481	What is the common two word name for Yuca Brevifolia	Joshua Tree		0
3482	How many children did Noah have?	Three		0
3483	Monopoly penalty space between Baltic Ave. and Reading RR (2 wds)	Income tax		0
3484	What is the capital of Wales?	Cardiff		0
3485	Four states have active volcanoes: Washington, _______________, Alaska, and Hawaii, whose Mauna Loa is the world's largest active volcano.	California		0
3486	What does a ruminant do	Chew the cud		0
3487	What american tv show centred on the cleaver family	Leave it to beaver		0
3488	Which gas is used in a refrigerator	Freon		0
3489	Which James Bond Actor Once Worked As A Coffin Polisher 	Sean Connery 		0
3490	What city has the most underground stations	New york		0
3491	What is the name of the largest moon of Jupiter	Ganymede		0
3492	Where are the colours blue and yellow used at funerals for warding off evil spirits	Singapore		0
3493	What book is the connection between E. Nesbitt and railways	The railway children		0
3494	When was the first test tube baby born	1978		0
3495	Which English word is a combination of the first 2 letters of the Greek alphabet	Alphabet		0
3496	Primrose, Montgomery, Petunia, Zinnia, And Victoria Were 5 Of The 6 Children That Featured In Which TV Series	The Darling Buds Of May		0
3497	Who Released The 70's Album Entitled Here Come the Warm Jets 	Eno 		0
3498	The Police sung about it in 1981, Queen sung about it in 1986 and Take That sung about it in 1992 what word did they all sing about?	Magic		0
3499	Who designed the largest church in the world	Michelangelo		0
3500	This animal is armed with bony plates & rolls up into a ball if frightened	Armadillo		0
3501	Who sang 'you can call me al'	Paul simon		0
3502	In the Sonic the Hedgehog series, what serves as your energy?                                                                        	Rings		0
3503	Only approx one third worlds population uses what regularly	Fork		0
3504	Cocktails: Cognac (brandy) and white creme de menthe make a(n) ____________·.	Stinger		0
3505	What is the highest commissioned rank in the Royal Air Force	Marshal of the raf		0
3506	What liquid is metered in most households	Water		0
3507	What was the first colony to legalise witchcraft	Pennsylvania		0
3508	What Was Special About The Iron Bridge At Coal Brookdale 	It Was The Worlds First Major Iron Construction 		0
3509	Name 3rd cent BC Greek mathematician wrote The Elements	Euclid		0
3510	Fandible, lateral line and dorsal fin and a part of which animal	Fish		0
3511	What is the distance of the Olympic Biathlon	20 kilometres		0
3512	Who is Homer Simpson's brother	Herb Powell		0
3513	Dame Shirley Porter Is Heiress To Which Super Market Chain 	Tesco 		0
3514	James Leblanche Stewart became famous under what name	Stewart Granger		0
3515	On the banks of which river is the taj mahal	River jumna		0
3516	Who Wrote Aretha Franklins "Respect"	Otis Redding		0
3517	What is the most varied species on the planet	Domesticated dog		0
3518	_______________________ has parallel drops of only 158 and 167 feet.	Niagara falls		0
3519	What is the infinity sign called	Lemniscate		0
3520	What is the name of Madonna's Chiuhauha	Chiquita		0
3521	Sea or salted water	Brine		0
3522	In which city is the coliseum located 	Rome 		0
3523	What is the largest type of warship	Aircraft carrier		0
3524	Which country is the biggest producer and exporter of mohair?	South Africa		0
3525	In a standard orchestra line-up which musicians sit immediately to the conductor's left?	First Violin		0
3526	Which band comprises sisters Andrea, Sharon, and Caroline with their brother Jim	The corrs		0
3527	Lenin what country is the world's biggest coffee exporter	Brazil		0
3528	What is Ozzy Osbourne's real first name	John		0
3529	In which film did Cliff Richard sing Living Doll in 1959	Serious Charge		0
3530	Which 1965 Ballad Was Covered By An Amazing 1,186 Different Performers Within 10 Years Of It's Release?	Yesterday (The Beatles)		0
3531	When did Mark and Engels write the Communist Manifesto	1848		0
3532	In which country did the Boxer Rebellion take place?	China		0
3533	Whiskey made from maize and rye	Bourbon		0
3534	What is the highest mountain in Canada	Mt. logan		0
3535	What thin net of silk or Rayon named after French place it made	Tulle		0
3536	What is the basic unit of currency for Australia ?	Dollar		0
3537	Who was married to Francis II, Lord Darnley and The Earl of Bosworth	Mary, queen of scots		0
3538	Where is Prince of Wales Island	Canada		0
3539	In Scotland Which Soup Is Traditionally Served On Burns Night 	Cock-A-Leekie 		0
3540	Who is popeye's girlfriend	Olive oyl		0
3541	Which woman has the most monuments erected in her honour?	Virgin Mary		0
3542	Who plays pacey witter on 'dawson's creek'	Joshua jackson		0
3543	 A King Cobra is the biggest of all poisonous snakes and can grow to over 13 feet long. A bite from a King Cobra can kill an elephant in __________	4 hours		0
3544	Who Underwent Treatment For Rabies Following An Incident In Which He Bit Of The Head Of A Live Bat	Ozzy Osbourne		0
3545	Topeka is the capital of ______	Kansas		0
3546	Genuphobia is the fear of what	Knees		0
3547	According to the Old Testament, he planted the first vineyard	Noah		0
3548	What year was Theodore Roosevelt born	1858		0
3549	What is the only digit that has the same number of letters as its value	Four		0
3550	Who recorded The Paul McCartney Track "Goodbye"?	Mary Hopkin		0
3551	What basic skill is lacking in most Royal Navy entrants	They cannot swim		0
3552	What unit of currency will buy you dinner in Iraq, Jordan, Tunisia, and Yugoslavia?	Dinar		0
3553	President Roosevelt had a landslide victory in 1932, who did he defeat	Herbert hoover		0
3554	Britains say 'tarmac'; Americans say ______.	Runway		0
3555	On what do honeybees have a type of hair	Eyes		0
3556	In what country is Mandalay	Burma		0
3557	What were Wilma Flintstone and Betty Rubble's maiden names?	Slaghoople and Mcbricker		0
3558	Don Quixote was the man of La Mancha what's it in English	The Stain		0
3559	Woodpecker Scalps - Porpoise Teeth - Giraffe Tails what links	All been used as money		0
3560	What letter on a weather map indicates a high pressure system	H		0
3561	Jim Thorpe won Olympic pentathlon 1912 who was fifth	General George S Patton		0
3562	In Spain what are Paradors	State owned tourist hotels		0
3563	Pupaphobia is the fear of	Puppets pyrexiophobia		0
3564	In Which US State Was The TV Show The Dukes Of Hazzard Set	Gerogie		0
3565	Which turn-of-the-century French dramatist is famous for his farces	Georges feydeau		0
3566	What Athenian comic poet wrote "Lysistrata"	Aristophanes		0
3567	Which Island Is The Dodo Originally From	Mauritus		0
3568	What film featured dennis weaver vs a scuzzy gasoline tanker truck	The duel		0
3569	In Globe Arizona it's illegal to play cards in the street with who	American Indian		0
3570	In traditional anniversaries what is given for the thirtieth	Pearl		0
3571	In what city is the Smithsonian Institute	Washington		0
3572	Where in the body are the adenoids	Nose		0
3573	In Which Sport Would You Expect To Find A Short Stop 	Baseball 		0
3574	In Halstead Kansas doing what is illegal at the airport	Walking and loud burping		0
3575	What is the capital of Brazil?	Brasilia		0
3576	Which capital city stands on the north shore of the river Plate estuary	Montevideo		0
3577	This African animal kills the most people	Crocodile		0
3578	What was the D-Day invasion password?	Mickey Mouse		0
3579	Who sculpted the four lions in Trafalgar Square	Sir Edwin Landseer		0
3580	Name Three Of The Songs Featured On The 1986 Release "It's It's The Sweet Mix"	Blockbuster, Fox On The Run, Teenage Rampage, Hell Raiser, Ballroom Blitz		0
3581	Who discovered x-rays	Wilhelm roentgen		0
3582	In which sport would they use the term straight handle	Curling - stone sent no curve		0
3583	Moondance' was a hit for which male singer 	Van Morrison 		0
3584	How many gigawatts of electricity did Doc Brown need to generate to power the delorion in back to the future?	1.21 gigawatts!!		0
3585	Which chemical compound in the body is linked to hardening of the arteries	Cholesterol		0
3586	What does a hippophobic fear	Horses		0
3587	What were Club Nouveu originally known as?	Timex Social Club		0
3588	People with hypertrichosis have lots of what	Hair		0
3589	Collective nouns - A bloat of what	Hippotomi		0
3590	What is 'au contraire' in english	On the contrary		0
3591	What state is only part of the united states by treaty	Texas		0
3592	If James Bond was to dial 007 he would be using the dialing code for which country? 	Russia 		0
3593	What is the art of creating decorative shapes by trimming trees and shrubs?	Topiary		0
3594	What is special about the hooded pitohui bird (New Guinea)	It’s highly poisonous		0
3595	Who played the part of the Headmistress in the film 'Blue Murder at St.Trinians	Alistair sim		0
3596	What is the first name of webster, the man who published a dictionary still used today	Noah		0
3597	Mickey Rooney made a series of films based on what family	Hardy family		0
3598	What 19th century war between russia and england, turkey, britain and france, was named for a peninsula in the black sea	Crimean war		0
3599	Who was America named after ?	Amerigo Vespucci		0
3600	What city is Canada's steel capital	Hamilton		0
3601	Pediculophobia is the fear of	Lice		0
3602	What is the second largest state in the USA?	Texas		0
3603	Why were Mothers called mama or mommy in many languages	From mammary or tits		0
3604	Hibernia was the Roman name for which country	Ireland		0
3605	Who does the voiceover at the end of Michael Jackson's Thriller	Vincent Price		0
3606	What famous artist could write with both his left and right hand at the same time?	Leonardo da Vinci		0
3607	Who Had A Multi Million Best Seller With "How Much Is That Doggy In The Window"	Patti Page		0
3608	What Connects The Average White Band, The Stranglers, Dionne Warwick	Walk On By		0
3609	Technically, What Type Of Fruit Is A Pineapple? 	A Berry 		0
3610	Choo Kiko Wapi - what have I asked in Swahili	Where is the toilet		0
3611	What is a group of snipe	Wisp		0
3612	In Lebanon it is legal to have sex with who / what	Female animals – males death		0
3613	What is another name for the egg plant	Aubergine		0
3614	Who is the greek equivalent of the roman god Vulcan ?	Hephaistos		0
3615	What does the phrase al dente mean? 	Pasta cooked firm 		0
3616	In 1917 Lucy Slowe was the first US what	Black tennis champion		0
3617	Of what did robert the bruce, king of scotland, die in 1329	Leprosy		0
3618	What does Mit Hefe on a German beer bottle mean	With Yeast		0
3619	Who Achieved Chart Success With "Everybodys Free To Feel Good" In 1991	Rozalla		0
3620	In what movie did Whoopee Goldberg make her debut	The Colour Purple		0
3621	The smallest island with country status is __________ in Polynesia, at just 1.75 square miles (4.53 sq km).	Pitcairn		0
3622	Which car manufacturer produces the models Sorento and Picanto?	Kia		0
3623	What was the unit of work in the c.g.s. system, which was replaced by the Joule in the S.I. system	The erg		0
3624	What year was the Live Aid concert	1985		0
3625	Another name for phencyclidine hydrochloride	Angel dust		0
3626	What is unusual about the 1965 horror film Incubus	Only one in Esperanto		0
3627	Hell's Canyon on the Snake River is deeper than the _______________	Grand canyon		0
3628	What is the name of Data's cat in Star Trek Next Generation	Spot		0
3629	Poon Lim holds the record of 133 days doing what	Surviving on a raft		0
3630	What does a dipsomaniac crave	Alcohol		0
3631	Deacon is church official from Greek what's it literally mean	Servant		0
3632	They are only found in Lake Nicaragua - what are	Fresh water sharks		0
3633	What is a group of this animal called: Trout	Hover		0
3634	What Does Vodka Actually Mean 	Little Water 		0
3635	How Is Saint Sylvester's Day Better Known?	News Years Eve		0
3636	WA is what position in Netball? 	Wing Attack 		0
3637	Bragi was the Norse God of what	Poetry		0
3638	Who is mickey mouse's girlfriend	Minnie mouse		0
3639	Jim Rhodes is the alter ego of which Marvel comic book hero	Iron Man		0
3640	2 Gentleman Verona, 12th Night, Merchant Venice name links	Characters called Antonio		0
3641	Whose big break was playing Vinnie Barbarino on Welcome Back Kotter?	John Travolta		0
3642	 Male __________ have antlers 7 feet across. The antlers often weigh 60 pounds.	Moose		0
3643	What joins muscles to bones	Tendons		0
3644	Small buns made from choux pastry, filled with cream and covered in chocolate are called what	Profiteroles		0
3645	If you licked Mr T's booty, it would taste like___ 	Sexual Chocolate 		0
3646	Who was born anne frances robbins	Nancy davis reagan		0
3647	This defense is also know as compulsion by threat.	Duress		0
3648	What was the name of Ashley Wilkes' plantation in "Gone With the Wind"?	Twelve Oaks		0
3649	Who Had a father Called Jor El And a Mother Called Lara?	Superman		0
3650	In which classical music suite, would one find "The Market Place at Limoges", and "The Great Gate of Kiev"	Pictures at an exhibition		0
3651	During which conflict is The Caine Mutiny' set? 	World War 2 		0
3652	Who beat Sonny Liston to become world champion for the first time	Cassius clay		0
3653	Who Paid For Christopher Columbus 's First Voyage Across The Atlantic 	Ferdinand & Isabella Of Spain 		0
3654	Who wrote the 'The Dam Busters March' for the 1954 film of that name	Eric coates		0
3655	There are 4.5 gallons of ale in what container	Pin		0
3656	What is the fear of wealth known as	Plutophobia		0
3657	Which Marilyn Monroe film was adapted for a stage play starring Daryl Hannah in London in 2000	Seven year itch		0
3658	The song 'Raindrops keep falling on my head' was introduced in which film	Butch cassidy and the sundance kid		0
3659	The childrens story 'The Rose and The Ring' was written by which 19th century novelist	William thackeray		0
3660	What creature make the loudest noise - 188 decibels	Blue Whale		0
3661	What was pirate Captain Flint's ship called	Walrus		0
3662	Who says, "Th_th_th_that's all folks!"	Porky pig		0
3663	In the Bible, who is the Book of Psalms attributed to	David		0
3664	Erotic solo dance of North Africa, the Middle East, and Turkish-influenced Balkan areas	Belly Dance		0
3665	What is the capital of Nauru?	Yaren		0
3666	What is used to measure horizontal and vertical angles in surveying	A theodolite		0
3667	Where did the Birkenhead sink?	Danger Point		0
3668	A sliding step in which one foot 'chases' and displaces the other.	Chassé		0
3669	What is the heart rate of the blue whale? (in beats per minute)	Nine		0
3670	Baseball is not sport - state of mind - cant learn it - what author	John Steinbeck		0
3671	Before she joined Jefferson Airplane, for which group did Grace Slick sing?	The Great Society		0
3672	What was John Lennons father's name?	Alfred "Freddie" Lennon		0
3673	Where was nixon's western white house	San clemente		0
3674	Which was the first book to tell the story of the lioness elsa	Born free		0
3675	Who's directorial debut was with Reservoir Dogs	Quentin Tarantino		0
3676	Whose first album was 'jagged little pill'	Alanis morissette		0
3677	What was the third country to get the "bomb"	Britain		0
3678	To the Apache Indians what were God Dogs	Horses		0
3679	Book or table containing a calendar, together with astronomical and navigational data and, often, religious holidays, historical notes, proverbs, and astrological and agricultural forecasts	Almanac		0
3680	What country invented high octane gasoline in 1930	Russia		0
3681	Sunglasses were invented in China to do what	Hide a Judges eyes		0
3682	Which British Land Owner Owns The Largest Acerage 	The Forestry Commision 		0
3683	1878 Wanamaker's of Philadelphia first US store to install what	Electric Lights		0
3684	Artificial barrier or obstacle on a motor racing course	Chicane		0
3685	Plant with edible fruits in red green and yellow	Capsicum		0
3686	What was Mae West sent to the workhouse for in 1926	Writing starring in play called sex		0
3687	Sloop John B & God Only Knows Appeared On Which Milestone Album	Pet Sounds		0
3688	How Did Eggs Benedict Get It's Name 	As A Cure For A Certain Mr Benedict's Hangover 		0
3689	Dorothy Cavis-Brown made news at Wimbledon - why	Lineswoman - slept in chair		0
3690	What is the capital of The Netherlands ?	Amsterdam		0
3691	The first Russian satellite was launched in which year	1957		0
3692	Who Boogied On Down To The Funky Nassau	Beginning Of The End		0
3693	Which Robert Palmer Song Featured In The Movie Cocktail	Addicted To Love		0
3694	What two brothers were nominated for president by the Republicans in 1884	William and john sherman william and john sherman william john sherman		0
3695	Self-praise is no ___.?	Recommendation		0
3696	 Toxiphobia is a fear of _________.	Poison		0
3697	Who was the composer of the classical piece known as 'Zadok The Priest'?	Handel		0
3698	Charcarodon Carcharias is the Latin name for what creature	Great White Shark		0
3699	What's the predominant church in greece	Greek orthodox church greek orthodox		0
3700	What did George Washington soak his wooden teeth in for taste	Port		0
3701	Which famous ship and whiskeys name means short underskirt	Cutty Sark		0
3702	What are camel haired brushes made of	Squirrels tails		0
3703	What is the traditional curse of Adam that affects most of us	Working for a living		0
3704	Although He Never Set Foot Here What Elvis Presley Movie Is Actually Set In England	Double Trouble		0
3705	Which Of Hitler's Deputies Flew To Scotland In 1941? 	Rudolf Hess 		0
3706	What seaport's name is spanish for 'white house'?	Casablanca		0
4337	Where is mount vesuvius	Italy		0
3707	In The World Of Music How Is 'Harry Lillis' More Commonly Known	Bing Crosby		0
3708	What two mountain ranges did hannibal and his elephants march through in 218 b.c 	The pyrenees and alps 		0
3709	 If they are well treated, camels in captivity can live to the age of __________	50		0
3710	Who asked, Ever Fallen In Love? 	The Buzzcocks 		0
3711	What was the name of the union jack that was used to capture blackbeard off ocracoke island in 1718	Ranger		0
3712	Which Film Opens With The Line "No Man's Life Can Be Encompassed In One Telling"	Ghandi		0
3713	How long was jonah in the whale's stomach	3 days		0
3714	What is the nickname for Rome, Italy	Eternal city		0
3715	Who wrote the semi-autobiographical novel 'Of Human Bondage	Somerset maughan		0
3716	Name the condition of the mind that leads to a need to steal things	Kleptomania		0
3717	What is non-rhyming poetry called?	Blank verse		0
3718	What is the flower that stands for: compassion	Allspice		0
3719	Who Is Stevland Morris Hardaway Better Known As 	Stevie Wonder 		0
3720	What is a group of flies	Business		0
3721	What is the flower that stands for: slander	Stinging nettle		0
3722	What wood is plywood mostly made from	Birch		0
3723	What was the first country to leave the United Nations	Indonesia		0
3724	The filbert is an alternative name for which nut	Hazelnut		0
3725	In what Australian state would you find Armidale	New south wales nsw		0
3726	What is the official drink of the state of Ohio	Tomato Juice		0
3727	Which actress and singer played 'Breathless Mahoney' in the film Dick Tracy	Madonna		0
3728	The hundred year war actually lasted how many years	116 years		0
3729	Who Was The Original Choice To Play The Role Of "The Terminator" Before Arnold Schwarzenegger Got The Part	O.J Simpson		0
3730	Name the dance that means new voice in Portuguese	Bossa Nova		0
3731	At The Start Of The 2002/03 Season Who was the Premierships Highest Goal Scorer 	Alan Shearer 		0
3732	By which name is Mendelssohn's Third Symphony known	Scottish		0
3733	The opera Aida was commissioned in 1869 to mark what event	Opening Suez canal		0
3734	In which countries would you find the following city 'Whiskeytown'? 	USA 		0
3735	Under What Pen Name Did Hector Hugh Munro Write 	Saki 		0
3736	Why was the dinosaur Triceratops so called	Three horns		0
3737	From What Country Do The Dance Band Cascada Come From	Germany		0
3738	What do you add to vegetables to make the dish salmagundi	Duck or Chicken		0
3739	French philosopher, scientist, and mathematician, sometimes called the father of modern philosophy	Descartes		0
3740	In 'la traviata', what does violetta sing	Sempre libera		0
3741	Who's voice was rex the robot for disneyland's star tours	Pee wee herman		0
3742	More than 14 million are sold daily in 150 countries - what	Bic pens		0
3743	Alex and his 'droogs' are thugs in what Anthony Burgess novel	A Clockwork Orange		0
3744	What is the American equivalent of the Irish Poteen	Moonshine		0
3745	What Is The UK's Most Poisonous Plant? 	Deadly Nightshade 		0
3746	What Type Of Animal Is A Borzoi? 	A Dog The Russian Wolfhound 		0
3747	What links Scorpion Seawolf and Thresher	Lost US nuclear reactors at sea		0
3748	When did Alaska become the 49th U.S. state	1959		0
3749	What is the capital of Gabon	Libreville		0
3750	Who released "carrie anne" in 1967	Hollies		0
3751	Name The Arranger / Orchestra Leader On Frank Sinatra's Songs For Swinging Lovers Album	Nelson Riddle		0
3752	What animals eye is bigger than its brain	Ostrich		0
3753	Which 1996 Disney Movie Featured The "Eternal " Hit "Someday"	The Hunchback Of Notre Damme		0
3754	 The star_nosed mole, with 22 pink __________ on its snout, is said to have the most delicate sense of touch in the animal world.	Tentacles		0
3755	As Of 2008 Only One President So Far Was Born On The 4th Of July Can You Named Them	Calvin Coolidge		0
3756	A Saudi Arabian woman can get a divorce if her husband doesnt give her what	Coffee		0
3757	What links Bill Clinton Fidel Castro Alb Einstein Jimmy Hendrix	Left Handed		0
3758	Almonds are members of what family	Peach		0
3759	In which continent would you find the Lena river ?	Asia		0
3760	In Which Year Did A Soviet Cosmonaut Make The First Spacewalk 	1965 		0
3761	10% of men claim to do this regularly – what	Shave their pubic hair		0
3762	What's The Connection Between Nenah Cherry, Malcolm Mclaren & Bob Marley	Buffalo's		0
3763	By What Name Is George O'Dowd Better Known	Boy George		0
3764	What's The Connection Between Len Barry, Paul Hardcastle & Manfred Mann	(Numbers) 123, 19, 54321		0
3765	It is illegal to use what to plough cotton fields in North Carolina	Elephants		0
3766	According To The Song How Many Drummers Drumming Were There 	12 		0
3767	The 1st buffalo ever born in captivity was born at Chicago's Lincoln Park Zoo in what year	1884		0
3768	George Washington Carver advocated planting peanuts and sweet potatoes to replace what?	Cotton and tobacco		0
3769	Who shot President James Garfield?	Charles Guiteau		0
3770	In Australian slang what is a ten ounce sandwich	Liquid Lunch - Can of Beer		0
3771	What is the correct chemical name for iron pyrites, sometimes known as 'Fool's gold'	Iron sulphide		0
3772	What Communication Aid Was Invented In 1905 By American Undertaker Almon Strowger 	The Dial Telephone 		0
3773	Finely ground meal of grains of wheat, obtained by milling	Flour		0
3774	What Is The Main Ingredient In Advocaat 	Egg Yolk 		0
3775	Who is the boss of the SNES game, 'Ranma 1/2: SUPER Hard Battle'?                                                                    	Herb		0
3776	What poem is recited as the finale to Disney's christmas festivities	A visit from st nicholas		0
3777	 Birds do not sing because they are happy. It is a __________	Territorial behavior		0
3778	Which Country Left The Commonwealth In 1972 	Pakistan 		0
3779	In the Jewish religion where are shellfish and pork kosher	Chinese Restaurants		0
3780	Cattle are bovine, sheep are ______	Ovine		0
3781	Who earned the nickname "top gun" in the Persian Gulf War	Colin Powell		0
3782	Which heroine comes from Amphipolis	Xena warrior princess		0
3783	Which musical term denotes that a piece is to be played 'sweetly'	Dolce		0
3784	Before wwii, the new york phone book had 22 listings for what surname, and none after wwii	Hitler		0
3785	Which film ends with the line, 'What we have here is a failure to communicate'	Cool hand luke		0
3786	Whose first major album was "ziggy stardust and the spiders from mars"	David		0
3787	What did Brahms compose for the University of Breslau after they gave him an honorary PhD	Academic festival overture		0
3788	Hundred when does the uterus expand 500 times its normal size	During pregnancy		0
3789	If you combined k & p to make cables what would your hobby be	Knitting		0
3790	Who said 'public service is my motto'?	Al Capone		0
3791	In the US its 911 in the UK 999 what in Australia	0		0
3792	Who played the male starring role in 'The Graduate'	Dustin hoffman		0
3793	Super glue is used to lift fingerprints from what surfaces	Difficult		0
3794	Who wrote the thriller "The Bourne Identity"	Robert ludlum		0
3795	Hemmingway said there's only 3 sports Bullfighting Car Racing ?	Mountaineering		0
3796	Which poisonous concoction was Socrates given to drink to carry out his death sentence?	Hemlock		0
3797	Spanish: how do yoU.S.ay "four"	Cuatro		0
3798	What is the most widely used seasoning 	Salt 		0
3799	Who produced and directed the Death Wish series of films	Michael Winner		0
3800	US 1900 census people with 2 or less what were lower mid class	Servants		0
3801	What was the first transatlantic radio message sent ?	S		0
3802	What spy novelist was Moscow correspondent for Reuters & The Times of London	Ian fleming		0
3803	John larroquette was the narrator of which gruesome film	Texas chainsaw		0
3804	The French call it "La Train Sifflera Trois Fois" what film is it	High Noon		0
3805	Who Invented the worlds first electronic pocket calculator in 1972 	Sir Clive Sinclair 		0
3806	In 1500 BC Egyptian women had to be what to be beautiful	Bald		0
3807	Marie Osmond has only had one UK hit single as a solo artist name it	Paper roses		0
3808	In 2006 Who Was Voted Overseas Sports Personality Of The Year? 	Roger Federer 		0
3809	Who said 'ronald reagan doesn't dye his hair; he bleaches his face'	Johnny		0
3810	Which river is dammed by the hoover dam	Colorado river		0
3811	What does YoYo mean in English	Come-Come		0
3812	What was a Nuremberg egg	Pocket watch / clock		0
3813	Grease The Musical Opened On Broadway In 1973 How Many Performances Were There 	3,388 		0
3814	Anthony McMillan became famous as who	Robbie Coltrane		0
3815	In 1964 who was the first non royal to appear on a UK stamp	William Shakespeare		0
3816	Which Movie Star Published An Autobiography In 2002 Entitled "Lucky Man"	Michael J Fox		0
3817	Who is the Patron Saint of housewives	Martha		0
3818	 The whistling swan has more than __________	Feathers on its body. 25,000		0
3819	Commonly Regarded As A Bit Of A Nuisance Amongst Computer Users ' It Writes Once But Reads Many Times '' What Is It? 	A Worm (Mass Mailing) 		0
3820	What does a la carte mean in a restaurant	According to the menu		0
3821	Which president was responsible for the Louisiana Purchase	Jefferson		0
3822	Out of what is paper money made	Linen		0
3823	Who was made the first Holy Roman Emperor	Charlemagne		0
3824	In what did someone squish her hands to make the sound of e.t walking?	Jelly		0
3825	Water-soluble paint made from pigments and a plastic binder…?  	Acrylic		0
3826	Which nation invented sauerkraut	Chinese		0
3827	What is the chalice used by Jesus Christ at the Last Supper called?	Holy Grail		0
3828	A nilometer measures the rise and fall of what	Rivers (originally Nile)		0
3829	What is the worlds oldest monotheistic religion	Judaism		0
3830	Who was captain of the 1995 south african rugby world cup team	Francois		0
3831	In England what ocean current allows gardeners on the west coast to grow exotic plants	Gulf stream		0
3832	What is the capital of Alberta	Edmonton		0
3833	Who Wrote A Book Entitled "The Adventures Of Lord Iffy Boatrace"	Bruce Dickinson		0
3834	Which City Is The Capital Of Iceland 	Reykjavik 		0
3835	Who played Steve Erkel in 'Family Matters'?	Jaleel White		0
3836	Name Indian chief who rode in Roosevelt's inaugural procession	Geronimo		0
3837	Which is the only book written by margaret mitchell	Gone with the wind		0
3838	What Connects "Windmills Of Your Mind", "Evergreen", "Take My Breath Away"	Oscar Winning Songs		0
3839	Which U.S. writer wrote The Naked and the Dead	Norman mailer		0
3840	Humphrey Bogart, who was born on Christmas Day 1899, said the line 'Here's looking at you kid.'' In which film? 	Casablanca 		0
3841	What name is given to the excrement produced by bacteria that feed on yeast cells and then defecate 	Alcohol 		0
3842	Dame where is the notre dame cathedral	Paris		0
3843	Schwarzenegger what us state was named after french words for "green" and "mountain"	Vermont		0
3844	What comprises than 54% of humpback whale's milk?	Fat		0
3845	In Norse mythology what was Audulma - wet nurse of giants	Cow		0
3846	Who's aliases John Willard Eric Gault George Ramom Sneyd	James Earl Ray – killed M L King		0
3847	After WW I what was Hitler promoted to in rank	Corporal		0
3848	What is a 'yesterday, today & tomorrow'	Shrub		0
3849	What 1902 children's book continues to sell over 50,000 copies per year	The tale of peter rabbit		0
3850	Which funnyman appears in a series of TV adverts for the insurance company Aviva?	Paul Whitehouse		0
3851	Who was the last to stab Caesar in Shakespeare's Julius Caesar	Brutus		0
3852	What god were the Thugees worshipping in "Indiana Jones and the Temple of Doom"?	Kali		0
3853	Who Wrote The Musical The Rocky Horror Picture Show?	Richard O'Brian		0
3854	Who built Camelot?	King Arthur		0
3855	What ship meaning new land carried Scott to the Antarctic 1910	Terra Nova		0
3856	In which continent would you find the Amazon river ?	South America		0
3857	What is the capitla of Croatia? 	Zagreb 		0
3858	In which country was Robert Maxwell born	Czechoslovakia		0
3859	In which Welsh county is Beddgelert	Gwynedd		0
3860	What is the Capital of: Solomon Islands	Honiara		0
3861	What Was So Important About The Oresund Bridge Between Malmo & Copenhagen Which Opened In July 2000 	Because It Was The First Permanent Link Between Europe & The Swedish Peninsula 		0
3862	Which country was named after the sea people known as Peleset or Philistines	Palestine		0
3863	Who played 'Kookie' in the T.V. series Seventy Seven Sunset Strip	Ed byrnes		0
3864	What are scaup	Wild ducks		0
3865	April is the cruellest month - which poet wrote that line	T S Elliot it refers to income tax		0
3866	In the German episode of Fawlty Towers Sybil was in hospital for which operation	Ingrown toenail		0
3867	Who invented the gatling gun	Richard gatling		0
3868	A psychological disorder in which the patient refuses to eat.	Anorexia nervosa		0
3869	What was the movie that starred the little furry creatures from "Return of the Jedi"?	Escape from Endor		0
3870	What is the name of the film in which Steven Segal's character dies?	Executive Decision		0
3871	What is a Gopak?	A Russian dance		0
3872	Who played the television detective Frank Cannon	William conrad		0
3873	In Swifts Gullivers Travels What Is Gullivers Profession 	Surgeon 		0
3874	What are Common Darter and Southern Hawker types of?	Dragonflies		0
3875	The wheel was invented in about what year BC	3500		0
3876	The marine iguana is native to which island group	Galapagos		0
3877	What house was the biggest in america until the Cival war?	The White House		0
3878	Which English king's coronation was postponed because he was suffering from appendicitis	Edward vii		0
3879	Which team won the recently concluded UEFA cup?	Liverpool		0
3880	Which Successful Solo Artist Is The Regular Host Of The Country Music Awards	Vince Gill		0
3881	In Denmark there is a 20 Kroner fine for not reporting what	Your own or anyone else's death		0
3882	Apart From Smoking A pipe What Was Sherlock Holmes Favourite Vice	Injecting Cocaine		0
3883	Which sport is played at Roland Garros	Tennis in Paris on clay courts		0
3884	Lucy Hobbs Taylor 1867 first woman in the US to do what	Become a registered dentist		0
3885	What is the basic unit of currency for Jordan ?	Dinar		0
3886	Which singer wrote the autobiography 'Take It Like A Man''? 	Boy George 		0
3887	US, West Germany and Japan not participate in the 1980 Olympic games in Moscow, as a protest because of Soviet activity in which country	Afganistan		0
3888	Sociophobia is a fear of ______	Society		0
3889	What segment of television receieves the ACE awards	Cable		0
3890	What American playwright titled his autobiography Timebends	Arthur miller		0
3891	In France what kind of nuts are noisette	Hazelnuts		0
3892	The second most common phobia, anthropophobia, is a fear of?	People		0
3893	In what sport do teams compete for the Swaythling Cup	Men's table tennis		0
3894	How many points are awarded for a drop goal in rugby league? 	One 		0
3895	What does LED stand for?	Light Emitting Diode		0
3896	Who played commander riker in 'star trek'	Jonathan frakes		0
3897	The Red Cross was initiated in what year	1862		0
3898	What was the nationallity of Rasputin ?	Russian		0
3899	What is the shadow-casting pointer on a sundial called	Gnomon		0
3900	Alain Boubil - Claude-Michael Schonberg music what hit show	Miss Saigon		0
3901	How many constellations are used in modern astronomy?	88		0
3902	What country borders sudan to the north	Egypt		0
3903	How many rings on the Olympic flag	Five		0
3904	In 1963 The Cougars Had A Hit Instrumental "Saturday Night At The Duckpond" But Were Banned By The BBC For "Defacing A classical Melody" What Ballet Did The Melody Come From	Swan Lake / Tchaikovsky		0
3905	After sex what does the female marine bristleworm do	Bites off eats penis		0
3906	What is the flower that stands for: sensuality	Spanish jasmine		0
3907	In Greek mythology who ferries the dead across the river styx	Charon		0
3908	Bluebird, Tishbite & Violaine Were All Minor Hits For Whom	The Cocteau Twins		0
3909	Who was assassinated on november 22, 1963 in dallas	President john f kennedy		0
3910	Which Opera Does "Pavarotti's" "Nesun Dorma" Actually Come From	Turandot		0
3911	Name the computer developed fromTuring's bombes at Bletchley Park to decode the German Enigma codes during World War 2.	Colossus		0
3912	What are silver coins made from	Copper Nickel		0
3913	Who was the first astronaut to orbit earth 3 times	John glenn		0
3914	What city has the worlds biggest taxi fleet	Mexico - over 60000		0
4339	What is the longest strait in the world	Malacca		0
3915	In 1979 who was revealed to be the fourth Russian spy in the Burgess, MacLean and Philby affair? 	Anthony Blunt 		0
3916	What is the more common name for the plant Viscum Album? 	Mistletoe 		0
3917	What Apparently Inappropriate Name Is Used For A Gathering & A Breeding Place For Seals 	Rookery 		0
3918	Name Harry Potters non magical cousin	Dudley Dursley		0
3919	What is the capital of Cuba	Havana		0
3920	What is the basic unit of currency for Lithuania ?	Litas		0
3921	23 29 31 first 3 impossible numbers in what pub game	Darts - cant score 1 dart		0
3922	Who won the 1995 rugby world cup	South africa		0
3923	What name is given to the large Russian utensil for making tea?	Samovar		0
3924	Who was Bette Midlers piano player before going solo	Barry Manilow		0
3925	In Which US State Is Yale University?	Connecticut		0
3926	Which substance used as a bleach, can also be used as the oxidizing agent in rocket fuel	Hydrogen peroxide		0
3927	The Pogues took their name from Pogue Mahone - what mean	Kiss my arse		0
3928	What was jean-claude van damme's original stage name	Cujo		0
3929	What country boasts the southernmost point in continental europe 	Spain 		0
3930	In what country were Trabant cars made	East Germany		0
3931	Name the smallest breed of dog	Chihuahua		0
3932	Corinthian Ionic and what are the orders of Greek architecture	Doric		0
3933	How many kilograms make up a metric tonne?	1000		0
3934	A statement made by placing your hand on a bible	Oath		0
3935	Accra is the capital of ______?	Ghana		0
3936	Room or space immediately under the roof of a house	Attic		0
3937	Who wrote The Stars Look Down and Hatter's Castle	A j cronin		0
3938	What artist composed the classical work Tannhauser	Wagner		0
3939	Epistemophobia is the fear of what	Knowledge		0
3940	Barrel size - what wine barrel contains 126 gallons	Pipe		0
3941	What is the most rural state in the u.s	North dakota		0
3942	After Initial Sucess With Two Tone Which Group Changed Their Label To Go Feet In 1980	The Beat		0
3943	Syncope is the medical name for what condition	Fainting		0
3944	What Is The Name Of The Instrument Used For Listening To The Heart And Lungs 	A Stethoscope 		0
3945	In which film did Woody Allen direct Sylvester Stallone	Bananas - 1971 – Stallone a punk		0
3946	Which popular English dessert consists of strawberries, whipped cream and lemon meringue?	Eton Mess		0
3947	The day after Christmas day	Boxing day		0
3948	Roy Chapman became baseball's first fatality in which year	1920		0
3949	Electronic lift control what is the second biggest organ in the human body	Liver		0
3950	Aotearoa is Maori name for New Zealand - what's it mean	Long Daylight		0
3951	In Knight Rider,what's the real last name of Michael Knight?	Long		0
3952	What does a brandophile collect	Cigar bands		0
3953	Who sang the theme song in 9 to 5	Dolly Parton		0
3954	Yorkshireman William Strickland is believed to have brought the first what to Britain from North America in 1526? 	Turkey 		0
3955	What is the world's second largest religion	Islam		0
3956	In what field did Frances Mary Buss and Dorothea Beale become well known in the 19th Century	Girls higher education		0
3957	 __________ has more homeless cats per square mile than any other city in the world.	Rome		0
3958	Sanskrit is an old language - what does the word mean	Put together – Perfected		0
3959	Who spoke for the first time in a Bugs Bunny cartoon in 1951	Roadrunner		0
3960	At what angle above the horizon must the sun be to create a rainbow? (in degrees)	Forty		0
3961	What is the name of the two-coloured oblong cake covered in almond paste? 	Battenburg 		0
3962	Which player won her last tennis Grand Slam Tournament in Paris in 1999? 	Steffi Graff 		0
3963	Dragon Stout is brewed in what city / country	Kingston Jamaica		0
3964	Which element makes up 5% of the Earth's crust	Iron		0
3965	What were the surnames of Bonnie & Clyde 	Clyde Barrow & Bonnie Parker 		0
3966	The plant life in the oceans make up about what percent of all the greenery on the earth	85		0
3967	What Musical Act Spent The Most Weeks At No.1 Throughout The Year 2006	Gnarls Barclay, Crazy		0
3968	What is philography	Autograph collecting		0
3969	Who designed the difference engine finally built in 1991	Charles Babbage's computer 1796		0
3970	Which London MP is more famous as an actress	Glenda jackson		0
3971	Where on the human body is the ulnar loop	Finger		0
3972	In Greek mythology, what city did cadmus found	Troy		0
3973	Which plant has the scientific name Convallaria	Lily of the valley		0
3974	A method of watercolor painting, but prepared with a more gluey base, producing a less transparent effect.  	Gouache		0
3975	Who invented the vacuum flask	James dewar		0
3976	Who Is The Only British Prime Minister To Have Been Assassinated? 	Spencer Perceval, 1812 		0
3977	Paul Weller Ocean Colour Scene & Dodgy All Contributed To A Tribute Album Of Which Band	The Small Faces		0
3978	Capone Music Artists: Who did "Cheap Sunglasses" in 1979	ZZ Top		0
3979	What is the literal translation of the word brandy	Burnt wine		0
3980	Information from a reliable source is said to come from where	Horse's mouth		0
3981	Which country has the currency 'yen'?	Japan		0
3982	Which city is the capital of Tuscany	Florence		0
3983	Legal Terms: A crime more serious than a misdemeanor.	Felony		0
3984	What is the horn of a rhinoceros made of	Hair		0
3985	What is Falaka	Turkish feet beating		0
3986	Which Spanish explorer first travelled to Jamaica?	Christopher Columbus		0
3987	Who enacted a law requiring cigarette manufacturers to put health warnings on their packages	Lyndon b johnson		0
3988	What is the name of a small barrel of beer of nine gallons capacity? 	A firkin 		0
3989	Clothes designer Alexander McQueen works for which fashion house	Givenchy		0
3990	Which tennesee williams play is about a sicilian-american woman	Rose tattoo		0
3991	In films who could win the Golden Boot award	Actors in cowboy films		0
3992	What Are Switzerlands Three Recognised Languages 	French, German, Italian 		0
3993	Who created Sherlock Holmes ?	Sir Arthur Conan Doyle		0
3994	What was the name of the society heiress who stole 8 million pounds worth of pictures in 1974 and was sentenced to 8 years in prison 	Dr Bridget Rose Dugdale 		0
3995	What was Mohammed Ali's original name?	Cassius Clay		0
3996	Bennie Hills Ernie fastest milkman in the west - name his horse	Trigger		0
3997	What tennis player made it to finals US open 8 times in 80s	Ivan Lendl		0
3998	What country was formerly known as siam	Thailand		0
3999	What is the name of the big muscle used in breathing that seperates the chest from the abdomen	Diaphragm		0
4000	What was the royal residence before buckingham palace	St james court		0
4001	In 1970 Sessionman Tony Burrows Famously Appeared On Top Of The Pops Singing With 3 Different Groups Can You Name Any Of Them PFE	Brotherhood Of Man, Edison Lighthouse, White Plains		0
4002	The wind what is the best score in blackjack	21		0
4003	Who was king arthur's court wizard	Merlin		0
4004	He ordered the persecution of Christians in which Peter and Paul died.	Nero		0
4005	What is the Capital of: Tanzania	Dar es salaam		0
4006	What's the most common name in nursery rhymes	Jack		0
4007	What Was The Name Of The Debut Single For The 90's German Band Snap!	The Power		0
4008	Among the fifty_two _____________ churches Sir Christopher Wren created from 1670 to 1711, the greatest was St. Paul's Cathedral.	London		0
4009	To Who Was U2's Song "Pride In The Name Of Love" Dedicated	Martin Luther King		0
4010	What is the flower that stands for: pure and ardent love	Double red pink		0
4011	In the opera 'La Traviata', what does La Traviata mean	The fallen woman		0
4012	What is the capital of Wisconsin?	Madison		0
4013	What did Esso become	Exxon		0
4014	What were the two birds that noah sent out from the ark?	Raven & dove		0
4015	What novel was alexandra ripley hired to pen a sequel to	Gone with the wind		0
4016	How many blackbirds were baked in a pie	4 & 20		0
4017	When is the longest day in the northern hemisphere	June		0
4018	The British consume twice as much per capita as the US - what	Baked Beans		0
4019	What does a Yellow Flag Red stripes mean in motor racing	Slippery Track		0
4020	In what country is the worlds biggest national park	Canada		0
4021	What is the Capital of: Kyrgyzstan	Bishkek		0
4022	What do you call a weasel whose coat turns white during the winter	An ermine ermine		0
4023	For what was licourice used in ancient Egypt? 	Medicine 		0
4024	What is the Capital of: Chad	N'djamena		0
4025	Ulna, radius, & clavicle are types of __________	Bones		0
4026	Who, in 1957, was the first-black player to win a singles title at Wimbledon	Althea gibson		0
4027	What 'C' Was A 1992 Horror Movie And A 2006 Hit For Christina Aguilera 	Candyman 		0
4028	Which Neil Diamond Huit Was Inspired By The Movie E.T	Heartlight		0
4029	The visible spectrum of light ranges from red to ________	Violet		0
4030	In Which Period Did The Diplodocus Live 	Jurassic 		0
4031	Who invented the Carpet Sweeper?	Melvin Bissel		0
4032	Which meridian does the international date line approximately follow through the pacific ocean	180 degree meridian		0
4033	The word "angel" is derived from the Greek term angelos, from the Hebrew experssion mal'akh, usually translated as what	Messenger		0
4034	Name The Famous Sportsman Who Lit The Torch At The Opening Of The 1996 Olympic Games? 	Muhammad Ali 		0
4035	What was russian america after 1867	Alaska		0
4036	An angle greater than 180 degrees and less than 360 degrees is a(n) ________ angle.	Reflex		0
4037	Who was meant to play Annie Okley but was replaced in 1950	Judie Garland Annie get Your Gun		0
4038	Which Belgian Artist Is Remembered For "Ca Plane Pour Moi"	Plastic Bertrand		0
4039	How Many Points Does A Snowflake Have 	Six 		0
4040	Who Recorded "Schools Out", "Muscle Of Love", "Billion Dollar Babe"	Alice Cooper		0
4041	"It's Too Late Now" Entered The Charts Twice In 1963 For Which Group	Swinging Blue Jeans		0
4042	Paper Porter Dresser Mud Dauber types of what	Wasp		0
4043	Who is the lead singer of the group yes	John anderson		0
4044	Billion what can release approximately one billion grains of pollen	Ragweed plant		0
4045	A male cat is called a what	Tom		0
4046	Greek mathematician cylinder enclosed sphere carved on grave	Archimedes		0
4047	Who, in 2002, became the first woman in 11 years to win the BBC Sport Personality Of The Year? 	Paula Radcliffe 		0
4048	Jello Biafra Was The Lead Singer For Which American Punk Band	The Dead Kennedys		0
4049	What kind of a head does a Criosphinx possess	Ram		0
4050	In Bewitched Aunt Clara had a collection of what	Doorknobs		0
4051	Which group had a top 10-album chart success with 'What's the story, morning glory'?	Oasis		0
4052	If All The Race Courses In Britain Were Listed Alphabetically Which Would Come First ? 	Aintree 		0
4053	"Rainy Days & Mondays" Was A Hit For Which 70's Group?	The Carpenters		0
4054	The National day of Ethiopia, 21st March, commemorates a victory at Adowa in 1896 over which country	Italy		0
4481	This Indian group ruled in early Peru	Incas		0
4055	Who Employed Henry Hudson To Search For The North West Passage 	The Dutch East India Company 		0
4056	Which Was The First Town To Be Liberated By The Allies On D-Day? 	Caen 		0
4057	Which Part Of the Body Receives Oxygen Without A Blood Supply 	The Cornea 		0
4058	What is a group of gulls	Colony		0
4059	Poisonous substance especially a pesticide	Biocide		0
4060	How Old Was John Lennon When He Was Murdered	40		0
4061	Who was vice president US when A bomb dropped on Hiroshima	No One - was not one		0
4062	In Woodstock NY it's illegal to walk what without a leash	A Bear		0
4063	Who was best man at John Lennon and Cynthia Powells wedding?	Brian		0
4064	In Which US City Did Techno Music Originate	Detroit		0
4065	Who said  "Religion___ is the opium of the masses"?	Karl Marx		0
4066	Which three word catchphrase is most universally recognised	Bond James Bond		0
4067	Will Smith's Rapper Alter Ego Was Who	The Fresh Prince		0
4068	What is the square root of 64	Eight		0
4069	Slang:Person with very short hair or very little	Slaphead		0
4070	What is banned by public schools in San Diego	Hypnotism		0
4071	What sport was obligatory for Kennedy males during Hyannis Port weekends	Touch football		0
4072	What links Helicon Hutchinson Macmillan and Penguin	Book Publishers		0
4073	Plutophobia is the fear of	Wealth		0
4074	Which saxophonist joined David A Stewart in the charts on 'Lily Was Here'	Candy dulfer		0
4075	What is the name of a hairstyle in which the head is shaved except for a central strip	Mohican		0
4076	In Bristol England an old law says dogs can do what	Watch sex in your bed		0
4077	This first king of Israel reputedly had 700 wives?	Soloman		0
4078	What building built in 1897 contains 327 miles of bookshelves 	The library of congress 		0
4079	Pony, Shot and Jigger are all units to measure what?	Spirits		0
4080	______________, in the eastern West Indies, is one of the world's most densely populated countries.	Barbados		0
4081	Which country's national flag consists of a white crescent and star, offset left of centre, on a red field	Turkey		0
4082	Which drink do you associate with Holy Island in Northumberland? 	Lindisfarne Mead 		0
4083	Which Popular Tv Presenter & Broadcaster Sadly Died In 1988 At Leeds Hospital Suffering From Hepatitus	Russell Harty		0
4084	What is Kensington Gore	Actors fake blood		0
4085	In Greek legend, Zeus wooed Europa, daughter of King Agenor, in the form of which animal	Bull		0
4086	Rhabdophobia fear of what	Being Beaten		0
4087	La Who played the title role In the film The Madness of King George	Nigel hawthorne		0
4088	Who invented the assembly line	Henry ford		0
4089	Who portrayed clare quilty in the film, "lolita"	Peter sellers		0
4090	What is a sardine	Young herring		0
4091	Who was known as "the wizard of Menlo Park" ?	Thomas Alva Edison		0
4092	What was the name of the last film where george burns played god	Oh god, you		0
4093	In 1928 Simon Bolivar was president 3 countries Bolivia and ?	Columbia Peru		0
4094	In Which Us City Is The Head Quarters Of The Coca Cola Company	Atlanta / Georgia		0
4095	Which U.S. government branch includes the President and Vice President	Executive		0
4096	Laetrile is associated with the pit of which fruit?	Apricot		0
4097	In BaseBall where do the braves come from 	Atalanta 		0
4098	What is the largest bird of prey in the United Kingdom?	White-Tailed Eagle (Sea Eagle)		0
4099	Musca Domestica can cause disease in man - what is it	Common Housefly		0
4100	Who said 'what, me worry'	Alfred e neuman		0
4101	In heraldry what is a vertical line dividing a shield called	Pale		0
4102	Eczema affects which part of the body	Skin		0
4103	What is the Capital of: Uruguay	Montevideo		0
4104	Who composed The Dream of Gerontius	Edward Elgar		0
4105	Which country hosted the 1982 World Cup of soccer?	Spain		0
4106	Mendelssohn's Wedding March comes from which work	A Midsummer Nights Dream		0
4107	In Animal House, what was Bluto's grade point average?	0		0
4108	What were the spice islands formerly known as	Zanzibar		0
4109	This was originally published in the U.S. as _Murder in the Calais Coach	Murder on the orient express		0
4110	What's the connection between Benson & Growing Pains?	Missy Gold and Tracey Gold,		0
4111	What does an anthrophage practice	Cannibalism		0
4112	What colour was the hundred billionth crayola crayon	Periwinkle blue		0
4113	In Which Type Of Car Was Marc Bolan A Passenger When He Was Tragically Killed	A Mini		0
4114	Into what bay does the Ganges River flow?	Bay Of Bengal		0
4115	What disease is carried by the tsetse fly	Sleeping sickness		0
4116	Hotel California' by the Eagles was single of the year and 'Rumours' by Fleetwood Mac was the album of the year. Which year was it	1977		0
4117	Which south east Asian city was formerly called Krung Threp	Bangkok		0
4118	What did the lady of the lake give king arthur	Excalibur		0
4119	The Volta is the largest river in which country	Ghana		0
4120	Who would write a decratal or rescript	The Pope		0
4121	Leslie Hornby became more famous as who	Twiggy		0
4122	In Snooker How Much Is a (Red Black Red Green Red) Worth 	13 		0
4123	Melba sauce is made from what fruit	Raspberries		0
4124	There is a U.S. state capital that was named after a famous German. Bismarck, North Dakota, was named after ______________________	Otto von bismarck		0
4125	Comedian that is the disc jockey on the soundtrack to Resevoir Dogs	Steven wright		0
4126	Ten degrees Celsius is the equivalent of how many degrees Fahrenheit	Fifty degrees		0
4127	Who Was Charles Edward Anderson Berry Better Known As	Chuck Berry		0
4128	Hook and eye', 'strap', 'tee', 'butt' and 'blind' are all types of what	Hinges		0
4129	What is the name of Mr.Krane's dog on Frasier?	Eddie.		0
4130	What is added to soap to make it clear	Alcohol		0
4131	The FIC govern what sport	Canoeing		0
4132	Who is the president of Russia	Vladimir putin		0
4133	What Was The Name Of Elvis Presleys Home	Graceland		0
4134	Hack - Hog Line - House are terms in what sport	Curling		0
4135	Which city is home to the 4th largest pyramid in the world?	Las Vegas		0
4136	In the tv series 'the brady bunch', what was cindy's toy doll's name	Kitty		0
4137	In what country is thunder bay 	Canada 		0
4138	What is the glass capital of the world	Toledo		0
4139	Who wrote the opera 'The Giant'?	Sergei Prokofiev		0
4140	What major British disaster occurred in Beauvais, France, in 1930	Crash of the r101 airship		0
4141	Whose First Single Was "Release Me"	Engelbert Humperdinck		0
4142	What Is A Portuguese Man-O-War? 	Jelly Fish 		0
4143	If you landed at Arlanda airport where would you be	Stockholm Sweden		0
4144	With Which Group Did Marc Almond Record The 1985 Hit "I Feel Love"?	Bronski Beat		0
4145	Carlos This planet has an atmosphere that is 98 percent Helium	Mercury		0
4146	Who wrote the oprea 'La Traviata'?	Guiseppe Verdi		0
4147	The term Sesquincentennial represents how many years ?	150		0
4148	Which Film First Featured A Character Called Pinhead 	Hellraiser 		0
4149	In 1987 Bernardo Bertolucci became the first western director to be allowed to film in Beijing, what film was he making	The last emperor		0
4150	What are Grenadier, Idared and Ellison's Orange types of	Apples		0
4151	What links Augsburger - La Stampa - El Pais and Duma	Newspapers Germany Italy Spain Bulgaria		0
4152	In the TV Western series "Bonanza", what was the name of the ranch	Ponderosa		0
4153	"Entre nous" means __________.	Between ourselves		0
4154	Freyr was the Norse god of what	Fertility		0
4155	The only Italian masterpiece you can drive to work	Maserati		0
4156	A Group of Lion is called a	Pride		0
4157	Which element has the chemical symbol PT 	Platinum 		0
4158	What is the basic unit of currency for Azerbaijan ?	Manat		0
4159	Name the stretch of water which lies between New Brunswick, Maine and Nova Scotia	Bay of fundy		0
4160	Which position is traditionally played in Rugby Union by the player wearing a number 11 shirt?	Left Wing		0
4161	Goose Flats changed its name to what US city	Tombstone Arizona		0
4162	In Which Country Is Europe's Highest Mountain Mt Elbrus 	Russia 		0
4163	What geological period followed the Jurassic	Cretaceous		0
4164	Who directed the movie 'An American in Paris? 	Vincente Minnelli 		0
4165	Who Begged For "Just One More Night" In 1978	Yellow Dog		0
4166	In Star Trek Deep Space Nine which character had a simbiant	Jadzea Dax		0
4167	Dr. Seuss wrote this book: The Cat in the______.	Hat		0
4168	The brutal treatment of Billy Hayes was the inspiration what film	Midnight Express		0
4169	What instrument is used for measuring the distance between two points on a curved surface	Caliper		0
4170	What is the worlds biggest profession	Teaching		0
4171	What is the nickname for Indianapolis, Indiana	Railroad city		0
4172	Meridians converge at the ______	Poles		0
4173	What is the capital of Honduras ?	Tegucigalpa		0
4174	In which continent would you find the Mississippi river ?	North America		0
4175	Which substance has the chemical symbol 03? 	Ozone 		0
4176	Impurities, particularly of which compound, according to modern chemists, gives amethyst its violet or blue colouration	Iron oxide		0
4177	The rover the last is red the rest are white in what sport	Croquet hoops		0
4178	Who was British Prime Minister at the outbreak of WWI	Herbert asquith		0
4179	And what is officially the richest	District of Columbia		0
4180	In which Woody Allen film was Allen's character visited by the ghost of Humphrey Bogart	Play it again sam		0
4181	Police Academy got its theme song from which other film	Patton		0
4182	Which Sculptor Produced A Lobster Telephone 	Salvador Dali 		0
4183	In which state is Mount Vernon?	Virginia		0
4184	What was Japan's most famous WWll aeroplane	Zero		0
4185	Which Irish playwrights middle names are Fingall O'Flahertie Wills	Oscar wilde		0
4186	Manya Sklodowska became famous under what name	Madam Curie		0
4187	TABSO is the national airline of which country	Bulgaria		0
4188	Two thousand years ago, the ancient Roman city of __________ was a thriving commercial port of 20,000 people.	Pompeii		0
4189	Inflammation of the gums	Gingivitis		0
4190	Who did a double album after leaving the beatles as an effort to raise money for the famine in bangladesh	George harrison		0
4191	Which Artist Married Carrie Fisher In August 1983	Paul Simon		0
4192	What US president was born in Corsica	William Harding		0
4193	What language speakers were shot Russia and Germany 1930s	Esperanto		0
4194	Which vital organ does the adjective renal refer to? 	Kidney 		0
4195	Which of the 5 senses is less sharp after you eat too much	Hearing		0
4196	Which author wrote the "Redwall" series of novels	Brian jacques		0
4197	There are 150 what in The Bible	Psalms		0
4198	Eras are divided into units called ________.	Periods		0
4199	American folklore Abner Doubleday invented what at West Point	Baseball		0
4200	What is the Spanish word for 'festival'?	Fiesta		0
4201	The name Australia is derived from the Latin word "australis" which means _______.	Southern		0
4202	What Group Consisted Of Jo,Tina,Hannah,Rachel,Paul,Bradley,Jon	S Club 7		0
4203	What is a SR N4	Hovercraft		0
4204	Britain's Frankie Wainman was world champion 1979 what sport	Stock Car Racing		0
4205	What US state named in 1664 in honour of Sir George Cateret	New Jersey Cateret defended Jersey		0
4206	Who Sang The Theme Tune To The James Bond Movie Octopussy?	Rita Coolige		0
4207	What name is shared by mountain ranges in Scotland & Australia? 	Grampians 		0
4208	Canada is the second_largest country in the world after __________. Nearly 90 percent of the Canada's population is concentrated within 161 km of the United States/Canada border.	Russia		0
4209	What country do most stolen US cars end up in?	Mexico		0
4210	Band: Elvis Costello and the ___________ ?	Attractions		0
4211	As Nick Park drove to the 1996 Oscar ceremony on a Wallace and Gromit-style red motorcycle and sidecar, why was he cautioned by the police	Not wearing a crash helmet		0
4212	In Natchez Missouri it is illegal to provide beer to what	An Elephant		0
4213	Which country produces most of the worlds gold	South africa		0
4214	All Hebrew orignating names that end with the letters "el" have something to do with what	God		0
4215	What concentration camp is the name of Anne Frank's burial site	Bergen belsen		0
4216	Which Company Now Owned By Jaqueline Gold Was The Brain Child Of "Cabourn Waterfield"	Ann Somers		0
4217	Peter Benchley Published His First Novel In 1969 It Went On To Become A Hugely Popular Film What Was It Called?	Jaws		0
4218	Kelsey grammar sings and plays the theme song for which tv show	Frasier		0
4219	Which Famous Artist Painted The Most Paintings 	Piccaso 		0
4220	For which film did Sophia Loren become the first to win a Best Actor/Best Actress Oscar in a foreign language film	Two women		0
4221	Busey what disney movie stars merlin the magician and wart the boy king	Sword in		0
4222	What did Temujin change his name to ?	Genghis Khan		0
4223	Which One Word Phrase Literally Means “ The Place Of All Demons ”?	Pandemonium		0
4224	1971's "Move On Up" Was The Biggest UK Hit For Which Soul Superstar	Curtis Mayfield		0
4225	What liqueur means cupid in Italian and love in Latin	Amaretto		0
4226	How many children did president william henry harrison have	Ten		0
4227	What is the national drink of Poland	Mead		0
4228	Name The Russian Composer Who Wrote Peter & The Wolf	Sergei Prokofiev		0
4229	Patroiophobia is the fear of	Heredity		0
4230	It is against the law to do what to the Mayor of Paris	Stare at Him		0
4231	Which country has a flag of a red circle on a white background ?	Japan		0
4232	This spiny fruit with a pungent odor and rich yellow flesh is considered "The King of Fruits" by many southeast asians.	Durian		0
4233	The tune Rhapsody in Blue was first performed in which year	1924		0
4234	Which South American country does not border the Pacific	Belize		0
4235	What is the atomic mass of molybdenum	95.94		0
4236	What is the capital of Western Samoa	Apia		0
4237	What country singer/songwriter (and sometimes actor) is known as "the country outlaw"?	Willie Nelson		0
4238	For How Long Does A Female Turkey Incubate Her Eggs 	Aprox 28 Days 		0
4239	A Maryland t-shirt slogan that parodied 'virginia is for lovers' read what	Maryland is for crabs		0
4240	What do the aperture & shutter let into a camera	Light		0
4241	What is the capital city of the Kingdom of Tonga	Nuku'alofa		0
4242	With which hand do soldiers salute?	Right		0
4243	Which Italian writer wrote The Periodic Table	Primo levi		0
4244	In Only Fools and Horses what is Rodney's middle name	Charlton		0
4245	What is the basic unit of currency for Tanzania ?	Shilling		0
4246	Birmingham is flanked by the M6 on the north and M5 on the west, which motorway flanks south & east	M42		0
4247	Who Had A No.1 In 1998 With C'est La Vie	Bewitched		0
4248	Posdnous, Trugoy the Dove & PA Pacemaster Mase Had Their First Hit In 1989 How Are They Collectively Known	De La Soul		0
4249	Maraschino' is a liqueur flavoured with what	Cherries		0
4250	What First Appeared In Britain On The 12th January 1948	A Supermarket		0
4251	What Is The Only Creature Male Creature To Carry & Hatch Eggs	A Seahorse		0
4252	Who has won the soccer world cup as a player and a coach	Franz Beckenbauer		0
4253	What is the Capital of: Swaziland	Mbabane		0
4254	Sodium Hydroxide is more commonly known as _________.	Lye		0
4255	Indiana jones: how many shankara stones did indy deliver	Only one one		0
4256	What is the capital of Guam?	Agana		0
4257	How Is The Binary Numer '010' Expressed As A Decimal 	2 		0
4258	What animal would you find in a form	Hare		0
4259	LOT is the national airline of what country	Poland		0
4260	25th anniversary is silver, what's the 6th	Iron		0
4261	Name The Youngest Ever World Heavyweight Boxing Champion 	Mike Tyson 		0
4262	In the human body where is your occiput	Back of head		0
4263	The Great Gazoo was an alien in which cartoon series	The Flintstones		0
4264	In the body what may be endocrine or exocrine	Glands		0
4265	What popular brand named of sugar coated breakfast cereal contained so much iron when introduced in 1977 it could be picked up with a magnet	Kellogg's frosted rice cereal		0
4266	What is the more common name for grape sugar	Glucose		0
4267	Which actor from The Harry Potter Films Also starred in The Movie Dracula 	Gary Oldman 		0
4268	What unusual ingredient is often included in a Gibson coctail?	Pickled Onion		0
4338	Tudor England mans apron shows job white cook what checked	Barber		0
4269	Mineral, a cryptocrystalline variety of quartz of various shades of white, gray, yellow, brown, green, & blue	Chalcedony		0
4270	What musical was named after a u.s city	Oklahoma		0
4271	Who Tore Up A Picture Of The Pope Live On US Television In 1992	Sinead O Connor		0
4272	Which man has made the highest individual innings at Lord's, an innings of 333	Graham gooch		0
4273	Whose Albums Include "Copperhead Road, Guitar Town & A Train A Comin"?	Steve Earl		0
4274	A method of construction in which vertical beams are used to support a horizontal beam.	Post and lintel		0
4275	Which Disney film features the ballad 'Can You Feel The Love Tonight	The lion king		0
4276	Psychologists say men who prefer small breasts what  mentally	Depressed		0
4277	Name the French salad containing tuna, anchovies, french beans and hard boiled eggs	Salade nicoise		0
4278	In Cheyenne Wyoming what is illegal on Wednesday	Taking a Shower		0
4279	In what business are 'angle irons' and 'rolex'	Dentistry		0
4280	What was the only state george mcgovern carried in the 1972 presidential election 	Massachusetts 		0
4281	Mace is the outer covering of which common spice	Nutmeg		0
4282	What actor played George Cooper in My Favorite Husband	Barry nelson		0
4283	In what industry did John Davidson Rockefeller get rich	Oil		0
4284	What actress declared "I'll get naked at the drop of a hat"	Sharon Stone		0
4285	What was the name of the beatles' corporation before it was renamed 'apple'	Beatles and company		0
4286	What is the non obvious link Superman 1 and the Godfather	Mario Puzo write both stories		0
4287	What Would You Be Drinking If You Were Given Earl Grey 	Tea 		0
4288	What Was XTC's Senses Working	Overtime		0
4289	Who won the Oscar for Best Director for the 1987 film "The Last Emperor"	Bernardo bertolucci		0
4290	What is hypertext markup language	Html		0
4291	What in 1926, did Gertrude Ederle become the first woman to do? 	Swim Across The English Channel 		0
4292	Which British King Was On The Throne When America Gained Independence	King George 3rd		0
4293	Fredrick Bulsara was the lead singer of what pop group	Queen - Freddie Mercury		0
4294	What is the capital of Greece ?	Athens		0
4295	In Which Pastime Might You Score A Hit 	Battleships 		0
4296	In Montreal you cannot park a car blocking what	Your own driveway		0
4297	Which film had song Springtime for Hitler	The Producers		0
4298	What Georgia park features carvings on the world's largest piece of exposed granite	Stone mountain		0
4299	Who wrote the opera 'the giant'	Sergei prokofiev		0
4300	What hit lp did rockpile release in 1980	Seconds of pleasure		0
4301	What was the (West) German capital before the 'Wiedervereinigung'	Bonn		0
4302	What would you buy in a Manitee length	Pearls - a 24 inch choker		0
4303	In Iowa state laws prohibits charging admission to see what	One armed piano players		0
4304	Radical russian marxists are known as	Bolsheviks		0
4305	What 20th-century American president was so obsessed with secrecy that he often wrote 'burn this' on personal letters	Lyndon Johnson		0
4306	What is the capital of Hawaii	Honolulu		0
4307	Where Was The Blast Furnace First Introduced 	France Around 1400 		0
4308	Estimated there are 4 100 million billion molecules cubic inch what	Air		0
4309	In Which Century Did Artists First Start Painting On Canvas 	15th Century 		0
4310	What is the capital of Tasmania	Hobart		0
4311	What airlines identification code is VS	Virgin Atlantic		0
4312	In Which 1986 film Did Michael Hutchence Star As A Truly Terrible Punk Singer 	Dogs In Space 		0
4313	What type of fruit is a pineapple	Berry		0
4314	Name the South African author of 'Cry, the Beloved Country'	Alan paton		0
4315	Who, in 1874, painted the picture called La Loge	Auguste renoir		0
4316	Which Bridge Was The First Major Suspension Bridge In The World 	The Menai Strait Bridge In Wales 		0
4317	 In 1874, the first animal purchased for the Lincoln Park Zoo in Chicago was a __________, bought for $10.	Bear cub		0
4318	In the bible the book of Psalms is attributed to King David, to who is the book of Ecclesiastes attributed	Solomon		0
4319	What Was The Name Of Sherlock Holme's More Intelligent Brother?	Mycroft		0
4320	 Laetrile is associated with the pit of which fruit	Apricot		0
4321	Who lost 41 of a crew of 98 to scurvy in 1868, on his first voyage to the south pacific	Captain cook		0
4322	Which actor/director was responsible for the rebuilding of the Globe Theatre	Sam wanamaker		0
4323	On any given day half of Americans are on what	A special Diet		0
4324	Fairground Attraction Had A Hit With The Song "Perfect" Or "People"	Perfect		0
4325	What is the Capital of: Switzerland	Bern		0
4326	What is the name of a quarter of Jerusalem that can be translated as 'hundred gates'?	Mea Shearim		0
4327	In Cheyenne Wyoming its illegal to do what on a Wednesday	Take a shower		0
4328	Which Country Was Divided Into North And South In 1954 after communists took control of government. 	Vietnam 		0
4329	The stuff that dreams are made off - last words in what film	The Maltese Falcon		0
4330	Who presents the radio programme "In the Psychiatrist's Chair"	Anthony clare		0
4331	Where is the Kennedy Space Centre?	Cape Canaveral, Florida		0
4332	What is the basic unit of currency for Dominica ?	Dollar		0
4333	 The Adélie __________ bears the name of French explorer Dumont d'Urville's beloved wife.	Penguin		0
4334	Who would spin a Gob on their nose end	Glassblower		0
4335	In snooker, how many points are accumulated in a perfect break?	147		0
4336	Who gave Yves Saint Laurent his start in fashion	Christian Dior		0
4340	How many stories did enid blyton publish in 1959	Fifty nine		0
4341	Which animals name comes from Arabic he who walks swiftly	Giraffe		0
4342	What is the official newspaper of capitol hill	Roll call		0
4343	This Is “ Tracie Andrews ” Who Hit All The Tabloid Healines On The 3rd Dec 1996, But Why?	Road Rage She Murdered Her Boyfriend Lee Harvey		0
4344	Which bridge spans the Hudson River?	George Washington Bridge		0
4345	Which group was no.1 in the charts in ’95 with “back for good”?	Take That		0
4346	Which Grand Prix Racing Team Are Based In Woking, Surrey 	McClaren 		0
4347	In 70's CB Radio Slang What Is A 'Smokie'' 	A Policeman 		0
4348	Which Band Started Out In Basildon Essex Under The Name "The Composition Of Sound"	Depeche Mode		0
4349	What name is given to the legendary black dog with huge teeth and claws which is prevalent in the North of England mythology?	Barghest		0
4350	What movie starred michael caine and angie dickenson	Dressed to kill		0
4351	The mild stimulant "theobromine" is found in this common lip_smacker.	Chocolate		0
4352	In which country is the wine making area of Stellenbosch? 	South Africa 		0
4353	Released in 1908 what was the first ever horror film	Dr Jeckyll and Mr Hyde		0
4354	In what book did the grinch steal christmas	The grinch who stole christmas		0
4355	KC and the Sunshine Band stemmed from which US state?	Florida		0
4356	What is elton john's real name	Reginald dwight		0
4357	Egyptian Ibis-headed god?	Thoth		0
4358	In what country is K2 the world's second-highest mountain	Pakistan		0
4359	What is an aasvogel	A vulture		0
4360	Who was the first U.S. President to use a word processor?	Jimmy Carter		0
4361	Which Group Was The Motown Labels Biggest Selling Act Of The 1990's	Boys To Men		0
4362	Where is the 'whispering gallery'	St paul's cathedral		0
4363	The average person does it 17 times a day - what	Laugh		0
4364	Who is melanie griffith's mother	Tippi hedren		0
4365	This movie starring Marlon Brando won the best picture award in 1972.	The Godfather		0
4366	Two 747's collided here in 1977.	Canary islands		0
4367	What U.S. state includes the telephone area code 515	Iowa		0
4368	Who said "The no-mind not-thinks no-thoughts about no-things" ?	Buddha		0
4369	Cousin What U.S. state includes the telephone area code 602	Arizona		0
4370	What is the name of the river that runs on the border of california and arizona	Colorado		0
4371	_____ in the name of love?	Stop		0
4372	What is the scientific name for the gorilla	"Gorilla gorilla- gorilla"		0
4373	What gem was Cleopatra's signet	The Amethyst		0
4374	What is the longest typed word that alternates hands	Skepticisms		0
4375	Who coupled with the devil and gave birth to Andrew John	Rosemary		0
4376	In which country is the highest European waterfall	Ormeli, norway		0
4377	Grammy Awards: What album by Michael Jackson won the grammy in 1983	Thriller		0
4378	In which country is the Nokia company based	Finland		0
4379	What is e.t famous for saying	E.t phone home		0
4380	What country had an airline called Rottnest	Australia		0
4381	African American Garrett A Morgan invented what	The Traffic Signal		0
4382	The heraldic term "gules", meaning red, comes from the french word "gueules," meaning a ______	Throat		0
4383	Bowser' and 'Jocko' have been two prominent members of what very successful rock & roll nostalgia act?	Sha Na Na		0
4384	Where was Enrico Caruso born	Naples, italy		0
4385	Who would use a technique called pleaching	Gardener twine branches to hedge		0
4386	 A camel can shut its nostrils during a __________	Desert sandstorm		0
4387	What is the fear of progress known as	Prosophobia		0
4388	What state contains the most cacti, or cactuses	Arizona		0
4389	What colour is the wax covering Gouda cheese	Yellow		0
4390	Wheel according to bonnie tyler, what hits you when it's too late	Heartache		0
4391	In 'star wars', who was darth vader's face	Sebastian shaw		0
4392	What is the easternmost city in Germany	Berlin		0
4393	Who is the only baseball player to have been killed in a major league game	Raymond chapman		0
4394	Which car's name translates from latin as 'I Roll'?	Volvo		0
4395	Where's the famed Arch of Hadrian	Athens		0
4396	Who From The World Of Sport Penned The Autobiography Entitled "Facing The Music"	Torville & Dean		0
4397	Fred Scnheider Was A Member Of Which Famous Band	The B 52's		0
4398	What is a dialogue	A conversation		0
4399	Where in the body is the axilla	Armpit		0
4400	What Is The Connection Between Jean Luc Ponty, Stephane Grappelli, & Jerry Goodman	Violin		0
4401	What star of the Breakfast Club was also part of the orginal cast of the facts of life?	Molly Ringwald		0
4402	Packy East Had 3 Boxing Bouts All Of Which He Lost When Asked About Them He Said & I Quote ' I Was On The Canvas More Times Than Rembrandt '' How is he better known 	Bob Hope 		0
4403	What is the official language of Cuba	Spanish		0
4404	Motorphobia is the fear of	Automobiles		0
4405	__________ Ford is listed as one of 50 people barred from entering Tibet _ apparently, Disney clashed with Chinese officials over the film Kundun (1997). Ford's wife Melissa Mathison wrote the screenplay.                                                   	Harrison		0
4406	When not fighting crime, what did Underdog do for a living?	Shoeshine boy		0
4407	Often drunk, this liquid is normally harvested from female cows 	Milk 		0
4408	Which country grows the most fruit	China		0
4409	What Vegetables Are Part Of The Family Allium? 	Onions, Garlic, Leek, Shallot And Chive 		0
4410	220 yards equals one	Furlong		0
4411	Which Mediterranean island was divided into two in 1974	Cyprus		0
4412	To what does the obscure song "Turning Japanese" refer?	Masturbation		0
4413	How many years did Hitler predict the Third Reich would reign	1000 years		0
4414	In which state are Gettysburg and the Liberty Bell?	Pennsylvania		0
4415	A collision between a bird and an aircraft	Bird-strike		0
4416	"What Did My True Love Give To Me On The ""Tenth"" Day Of Christmas" 	10 Lords A Leaping 		0
4417	 __________ feel safest when they are crowded together, hundreds in a group.	Flamingoes		0
4418	Which company developed 'instant' coffee in the 1930s	Nestle		0
4419	Who Bought The Ritz Hotel In Paris In 1979 	Mohammed Al Fayed 		0
4420	What former british colony has a famed jade market on canton road	Hong kong		0
4421	Who was the male star of the film Fatal Attraction	Michael douglas		0
4422	What is the average temperature (f) at the South Pole	Minus fifty six 56		0
4423	In the year 2000, what was the most popular sweet brand in the UK - Rowntree Fruit Pastilles, Starburst or Polo Mints? 	Polo Mints 		0
4424	Which element, discovered by Pierre and Marie Curie, did she name after the country of her birth	Polonium		0
4425	What is the day called when the earth is closest to the sun	Perigee		0
4426	What relation was Louis XV of France to Louis XIV	Great grandson		0
4427	What two planets dont have moons?	Mercury and Venus		0
4428	 A baby gray __________ drinks enough milk to fill more than 2,000 bottles a day.	Whale		0
4429	How many inches tall are the bearskins worn by the guards at Buckingham Palace?	20		0
4430	What does a polyandric women have more than one of	Husband		0
4431	Beethoven's 9th was his interpretation of what work by Schiller	Ode to Joy		0
4432	What does the abbreviation N/A mean?	Not applicable		0
4433	The study of natural phenomena: motion, forces, light, sound, etc. is called ______.	Physics		0
4434	Who played clyde to faye dunaway's bonnie	Warren beatty		0
4435	What is soccer star Pele's real name?	Edson Arantes do Nascimento		0
4436	What is the sfa associated with	Football		0
4437	Of love Heavier-than-air craft that derives its lift not from fixed wings like those of conventional airplanes, but from a power-driven rotor or rotors, revolving on a vertical axis above the fuselage	Helicopter		0
4438	Which U.S. soul singer was known as 'Lady Day'	Billie holiday		0
4439	What is the meaning of the name of the constellation Cygnus ?	Swan		0
4440	Who Was The First President Of The United States? 	George Washington 		0
4441	Institution for young offenders having a tough quasi-military regime	Boot camp		0
4442	What caused the gremlins in the movie Gremlin to become evil? 	Eating after midnight 		0
4443	If an alloy is an amalgam what metal must it contain	Mercury		0
4444	What sport do the following terms belong to - "Sweeper & Advantage Rule"?	Soccer		0
4445	How many sayings did Jesus say from the cross?	Seven		0
4446	In the opera 'la traviata', what was violetta's occupation	Courtesan		0
4447	In What Sport Might You Need To Perform An Eskimo Roll 	Canoeing & Kayaking 		0
4448	What name is used to describe permanently-frozen subsoil?	Permafrost		0
4449	In 1666 Jesuit Bark was used as a prevention against what	Malaria		0
4450	Who is the hero of Rider Haggard's adventure, King Solomon's Mines	Alan quartermain		0
4451	What country is the world's deepest mine located	South Africa		0
4452	Stanley Kubrick Started It In The Early 1970's & Steven Spielberg Finished It In 2001 Name The Movie	A.I		0
4453	What is the capital of Croatia ?	Zagreb		0
4454	For which game would you win the Plimpton Cup	Backgammon		0
4455	Where are bangtails found	Mailer envelopes		0
4456	What Is A Particle Of Light Called 	A Photon 		0
4457	What, with arabic, is the official language of mauritania	French		0
4458	Zoisite is a semi precious stone - National stone which country	Norway		0
4459	What bird has the biggest wingspan?	Albatross		0
4460	Large dog of a breed of wolfhound	Alsatian		0
4461	 The __________ is the first bird mentioned in the Bible. It was sent out by Noah to see if the waters had abated.	Raven		0
4462	In the Canterbury Tales why were the pilgrims travelling	To visit Thomas a' Becketts Tomb		0
4463	Who Was PFA Young Player Of The Year In 1995 & 1996? 	Robbie Fowler 		0
4464	Who was the first british royal to make people magazine's 'worst dressed list' five times	Sarah ferguson		0
4465	Meat from animal killed according to Muslim law	Halal		0
4466	What can be Vulgar Common Simple Improper or proper	Fractions		0
4467	Where are the Guiana Highlands	Northern south america		0
4468	It was Greek to me is a line from which Shakespearean play	Julius caesar		0
4469	Where Was The Potters Wheel First Used 	In Mesopotamia c.3000 Bc 		0
4470	Who Had A Hit With "I Love A Rainy Night"	Eddie Rabbitt		0
4471	Who would be scored on the Apgar scale	Newborn Babies		0
4472	Who wrote the 'Aeneid'	Virgil		0
4473	What did air cadet frank whittle invent in 1928	Jet engine		0
4474	Which famous singer lived at 20 Forthlin Road,Liverpool	Paul mccartney		0
4475	Bill Watterson, cartoonist for Calvin & Hobbes, is the first cartoonist to use what word in his cartoon	Booger		0
4476	What was first worn on the 10th October 1886 ?	Tuxedo		0
4477	The chemical phenylethylamine, which your brain produces when you fall in love, is found in what food	Chocolate		0
4478	Who was called The Scourge of God	Attila the Hun		0
4479	Who Was The Lead Singer & Producer For Cameo	Larry Blackmon		0
4480	Name the author of 'The Catcher in the Rye'	J.D. Salinger		0
4482	There are 16 ______ in a cup	Tablespoons		0
4483	What is one of the items that the wood of the sycamore tree is used for	Boxes		0
4484	On which coast of Australia is Sydney?	East		0
4485	What sport/game is bobby fischer associated with	Chess		0
4486	Eskimo culture encourages male visitors to do what	Sleep with hosts wife		0
4487	Honeydew' is a variety of what	Melon		0
4488	What Cartoon Character Was Created, Inspired by The Frank Sinatra Song Strangers In The Night	Scooby Doo		0
4489	Irish Proverb - If you want to be criticized do what	Marry		0
4490	Maputo is the capital of ______	Mozambique		0
4491	What Type Of Fruit Is A Russet 	An Apple 		0
4492	Marengo was Napoleons horse but he rode who at Waterloo	Disiree white Arabian		0
4493	What were J.B. Priestley's christian names	John boynton		0
4494	 The hippopotamus gives birth __________ and nurses its young in the river as well, although the young hippos must come up periodically for air.	Underwater		0
4495	Which orchestral instrument can play the highest note	The Violin		0
4496	Which kellogg's cereal was advertised by tusk tusk the elephant	Coco		0
4497	In 'Dirty Dancing' what was Baby's real name?	Frances		0
4498	What is the alternative name for the Galaxy	Milky way		0
4499	Type of frothy milky coffee	Cappuccino		0
4500	"Get Off My Cloud" Was A Hit For Which Group In 1965	The Rolling Stones		0
4501	In what city does Fat Albert live	Philadelphia		0
4502	Who Were "Big In Japan"	Alphaville		0
4503	McDonald's 'Iced Tea' is actually this brand	Nestea		0
4504	Where was the first public library opened in 1747	Warsaw Poland		0
4505	9 p.m. In military time is how many hours	2100		0
4506	Which author wrote "The Duncton Chronicles"	William horwood		0
4507	Which former member of the group 'Cream' received the OBE in 1995	Eric clapton		0
4508	What is the 'pound' or 'number' symbol on the telephone	Octothorpe		0
4509	What 1839 innovation changed the face of mail delivery	The envelope envelope		0
4510	In Utmost Good Faith is the motto of which organisation	Lloyds of London		0
4511	Harold Edgerton has taken all the worlds photos of what	US nuclear bomb explosions		0
4512	____________ means "land of the free."	Thailand		0
4513	13th century Paris brothels were the first to have what	Red Lights		0
4514	Name Merlin's owl in Disney's Sword in the Stone	Archimedes		0
4515	Compact, opaque gemstone ranging in color from dark green to almost white	Jade		0
4516	 Most __________ lived to be more than a hundred years old.	Dinosaurs		0
4517	At the equator, what is the brightest star in the night sky?	Sirius		0
4518	In what sport is the Heisman trophy awarded	American football		0
4519	The martial art tai quon do translates literally as what	Kick Art Way		0
4520	The Berries Of The Juniper Tree Are Used To Flavour Which Alcoholic Drink? 	Gin 		0
4521	The surrealist painter Salvador Dali was a native of which country?	Spain		0
4522	Who appeared in the films Pulp Fiction, Primary Colors and Staying Alive	John travolta		0
4523	What is the largest lake in the u.s	Superior		0
4524	Viscum Album provides an excuse for stealing what	A Kiss (its Mistletoe)		0
4525	What was the principal wood used by Thomas Chippendale during the 18th century	Mahogany		0
4526	What's miami's most famous suburb	Miami beach		0
4527	What is stolen by tom, tom the piper's son	Pig		0
4528	Which European city has a cathedral located inside an old mosque	Cordoba		0
4529	The Bee Gees Were Born In Manchester But Spent Their Teenage Years Where	Australia		0
4530	What is the capital of Micronesia	Palikir		0
4531	What pre-tv radio show turned film caused people to commit suicide when it was first aired	War of the worlds		0
4532	Which Country Is The Largest Importer Of Arms In Europe	Greece		0
4533	Who is the last British player to win the women's singles title at Wimbledon? 	Virginia Wade 		0
4534	Who was Martina Navratilova's usual ladies doubles partner in the 1980's? 	Pam Shriver 		0
4535	Once married to Ted Hughes, which American poet committed suicide in 1963	Sylvia plath		0
4536	What U.S. state name is sioux for "south wind people"	Kansas		0
4537	Spacephobia is a fear of ______	Outer space		0
4538	This Queen of France was beheaded in 1793.	Marie antoinette		0
4539	Which 2 Musicians Co Wrote & Produced "Do They Know Its Christmas"	Midge Ure & Bob Geldof		0
4540	In some religions mistletoe represents God's what	Testicles - balls to you		0
4541	What comes in types Rock Ball Greentree Indian Reticulated	Pythons		0
4542	Which Nation Eats The Most Chocolate Per Capita (Per Head) 	Switzerland 		0
4543	Vasco da Gama rounded the Cape of Good Hope in what year	1498		0
4544	Who 'came whiffling through the tulgey wood'	Jabberwock		0
4545	La Paz is the capital of what country	Bolivia		0
4546	"In which famous Christmas Song is a snowman pretended to be ""Parsons Brown""?" 	Winter Wonderland 		0
4547	What is the dire straits song title for 'here comes johnny singing oldies, goldies ___'	Walk of life		0
4548	From which country did the original vandals come	Germany		0
4549	What new york city avenue divides the east side from the west side	Fifth		0
4550	Chiuhauha dogs were originally bred for what	Tasty meat		0
4551	When Harrison Ford was The Fugitive who was the lawman	Tommy Lee Jones		0
4552	What shields the earth from the solar wind	Earth's magnetic field earths		0
4553	Proper term for "Eskimo."	Inuit		0
4625	What nationality was the artist Whistler	American		0
4554	Who was the defeated Labour Prime Minister in the Israeli General Election of May 1996	Shimon peres		0
4555	What is the state fruit of Louisiana	Strawberry		0
4556	In Sanskrit it means House of Snow - what does	Himalayas		0
4557	A vicious one of these is a series of reactions that compound an initial problem	Circle		0
4558	Which Is The Most Infectous Disease 	Measles 		0
4559	Who wrote the epic poem Samson Agonites	John Milton		0
4560	What is the slogan on license plates manufactured by prisoners in the state prison in Concord	Live Free or Die		0
4561	The locals call it Firenze what do we call it	Florence Italy		0
4562	In Old English what kind of person often had a 'shite'	Gossip - phrase Chit Chat from it		0
4563	Pan is the greek god of ______	Shepherds and flocks		0
4564	What fruit is "Citrus grandis"	Grapefruit		0
4565	What is the most common breeding bird in the US	Red Winged Blackbird		0
4566	Where is poet's corner	Westminster abbey		0
4567	Who Succceeded Hitler In 1945? 	Admiral Donitz 		0
4568	What '27 baseball team had a crew of heavy hitters called murderer's row	New		0
4569	The rate of change of velocity is known as _________.	Acceleration		0
4570	Which football team's home ground is Ibrox Stadium? 	Rangers Football Club 		0
4571	Some animals spend the winter in a sleep_like state known as _________.	Hibernation		0
4572	What is the only flag permitted to be flown over the US flag	United Nations Flag		0
4573	Off what country lies the island of Zanzibar	Tanzania		0
4574	Ex tv detective, turned crooner. Who sang Silver Lady? 	David Soul 		0
4575	Beverly hills has what fictional zipcode	90210		0
4576	In Ren and Stimpy what sort of dog is Ren	Chiuhauha		0
4577	Who provided the voice for the independent Eilonwy in Disney's often criticized 1985 movie "The Black Cauldron"?	Susan Sheridan		0
4578	What material features in the construction of a "corduroy road"	Logs		0
4579	This queen of France was beheaded in 1793	Marie antoinette		0
4580	What is a group of this animal called: Viper	Nest		0
4581	In the 1954 film A Star is Born starring Judy Garland who played the leading man	James mason		0
4582	What is a somnambulist	Sleepwalker		0
4583	Close encounters of the first kind	Sighting unexplained craft sighting ufo's		0
4584	On Borneo and Sumatra, the literal translation of this ape's name means "man of the forest."	Orang-utan		0
4585	What film won the 1943 Oscar as best film	Casablanca		0
4586	Who Immortalised The 1969 Woodstock Festival In Song	Joni Mitchell		0
4587	Caviar Is A Delicacy That Comes From Which Fish 	Sturgeon 		0
4588	Barkley name the only animal whose main source of food is the porcupine	Fisher		0
4589	Name the first African American doll produced by Mattel	Francie		0
4590	Which Latin Word Is Used To Express The Meaning "Word For Word"	Verbatim		0
4591	Though part of the British Isles, the _______________ is administered according to its own laws by the Court of Tynwald. The island is not bound by British law unless it chooses to be.	Isle of man		0
4592	At Which Course Is The Derby Run Each Year? 	Epsom 		0
4593	What is the fictitious name of a defendent	Richard roe		0
4594	Which Of Santa's Reindeer Shares It's Name With A High Street Store 	Comet 		0
4595	On what non-Nintendo console can you find Zelda games?                                                                               	Philips CD-I		0
4596	Which Song Recorded By Whitney Houston In 1993 Was Originally A Hit For Chaka Khan In 1978?	I'm Every Woman		0
4597	What is IRC an acronym for?	Internet relay chat		0
4598	What is the honeymoon capital of the world	Niagara falls		0
4599	In which county is the UK's Met Office? 	Devon 		0
4600	Where would you see a stoop or what creature is doing it	A falcons diving		0
4601	After whom is the month of January named	Janus		0
4602	This is the only borough of New York City that is not on an island.	The Bronx		0
4603	What are hiragana and katakana	Japanese alphabets		0
4604	Pavarotti popularized Nessun dorma but what does it mean	None shall sleep		0
4605	Which companies logo is based on the legend of cats nine lives	Ever Ready		0
4606	What do insects do through their spiracles	Breathe		0
4607	Which Members Of The Bee Gees Were Twins	Maurice & Robin		0
4608	What natural product is petrol refined from	Oil		0
4609	What is a chemically castrated cock called	Capon		0
4610	What's the international radio code word for the letter "U"	Uniform		0
4611	What is the effect of the earth's rotation on the wind called	Coriolis		0
4612	Where in London was the Great Exhibition of 1851 held	Hyde park		0
4613	Where are there over 58 million dogs?	USA		0
4614	In the parable of the Good Samaritan, to which city was the Samaritan travelling	Jericho		0
4615	The Single "Up Where We Belong" Is Taken From Which Film	An Officer And A Gentleman		0
4616	The Monument In The City Of London Is A Monument To Which Event	The Great Fire Of London		0
4617	Which children's character was created by Mary Tourtel	Rupert the Bear		0
4618	In which country is milk the most popular beverage?	USA		0
4619	It is illegal to cross the Iowa state boundaries wearing what	Duck on your head		0
4620	The worlds first what opened in Brighton England in 1897	Petrol (gas) station		0
4621	What is the maximum number of integer degrees in a reflex angle?	359		0
4622	What is striped on a tiger, besides it's fur	It's skin		0
4623	What sank German submarine U120 in WW2	Broken toilet		0
4624	US Pres mom said Looking at my children wish I'd stayed virgin	Jimmy Carter		0
4626	In 1961 French army revolts in	Algeria		0
4627	Fiochetti is what shaped pasta	Bows		0
4628	The electric light first available product what's second	Electric Oven		0
4629	What do rabbits love	Licorice		0
4630	The Germans name for their country	Deutschland		0
4631	He said 'i have nothing to offer but blood, tears, toil and sweat'	Winston		0
4632	In which novel by George Eliot is Eppie Cass adopted by a miser whose gold has been stolen by her father	Silas marner		0
4633	Where in Huddersfield was the Rugby League formed in 1895	The george hotel		0
4634	How was William Huskinson killed in 1830 - first ever	Run over by Railway Train		0
4635	Weapon consisting of a long, sharp edged or pointed blade fixed in a hilt (a handle that usually has a protective guard at the place where the handle joins the blade)	Sword		0
4636	In What Year Was Robert Kennedy Assassinated? (2 Points Spot On, 1 Point Year Either Way) 	1968 		0
4637	What was banned in Horneytown North Carolina	Massage Parlours		0
4638	Which group had a one hit wonder with 'Book of Love''? 	The Monotones 		0
4639	What is the word for hallucinations and delusions	Schizophrenia		0
4640	Which British Sax Player Fronted The Band Paraphernalia	Barbara Thompson		0
4641	Which herb is used to make "Pesto Sauce"	Basil		0
4642	New Delhi is the capital of ______?	India		0
4643	Which fruit is used in the drink cassis	Blackcurrant		0
4644	In Greek mythology, who wanted to remain unmarried until she was defeated in a footrace	Atlanta		0
4645	The Romans called it Numidia what do we call it today	Algeria		0
4646	What is the name of the dog from the Grinch who stole christmas	Max		0
4647	Samuel Sewall, John Hathome and William, Stoughton were the presiding judges at which series of 17th Century trials	Salem witch trials		0
4648	The Daughter Of Which Tv Game Show Host Had A Hit As A Member Of Toto Coelo With I Eat Cannibals	Bob Holness		0
4649	An arenaceous plant grown in what type of soil	Sandy		0
4650	Which is the windy city	Chicago		0
4651	Term for the role the atmosphere plays in insulating and warming the earth's surface	Greenhouse effect		0
4652	30% of women have done it but only 10% do it regularly - what	Multiple Orgasms		0
4653	What does qb vii refer to in leon uris's title	Queen's bench no 7		0
4654	Evidence of what alternative treatment found in 5300 mummy	Acupuncture		0
4655	In the early 20th century, rattlesnake venom was used to treat which illness?	Epilepsy		0
4656	What nhl hockey player was sports illustrated's 'sportsman of the year' for 1970	Bobby orr		0
4657	What is the name of the main character in Homer's Odyssey?	Odysseus		0
4658	Which 1982 Chart Topping Singer Had Earlier Appeared On TV As Alex Haley's Mother In "Roots The Next Generation" And As A Jim Jones Cult Member In "The Guyana Tragedy"	Irene Cara		0
4659	What does 'cassata' ice cream contain	Fruit and nuts		0
4660	Who won the women's heptathlon at Seoul in 1988	Jackie Joyner-Kersey		0
4661	What's a truffle	Edible fungus		0
4662	What is the Capital of: Cook Islands	Avarua		0
4663	Christopher Cockerel invented what	Hovercraft		0
4664	Klysmophillia is arousal from what	Enemas		0
4665	In Which Year Was John Lennon Murdered	1980		0
4666	How many celebrities featured on the panel in each episode of the game show 'Blankety Blank'?	6		0
4667	Who is the Greek Goddess of witchcraft and black magic	Hecate		0
4668	What Was The First Product Available In The UK Under Hire Purchase	A Sewing Machine		0
4669	Musophobia is the fear of	Mice		0
4670	Which Country Won The World Cup First Germany Or Brazil 	Germany 		0
4671	Leukophobia is the fear of	The color white		0
4672	Which American poet was also a surgeon	Oliver Wendell Holmes		0
4673	What fish is the fastest	Sailfish		0
4674	Holy Roman Emperor Charles VI created which principality in 1719? 	Lichtenstein 		0
4675	What animals make up the Suidae family	Pigs		0
4676	What Stevie Wonder song was recorded by 'Beck Bogart and Appice'?	Superstition		0
4677	What was created with the big bang?	Universe		0
4678	What was the Rolling Stones first no 1 hit	Its all over now		0
4679	Alberto Tomba is a name associated with which sport	Skiing		0
4680	What colour was Tweety Bird originally	Pink		0
4681	In April 2003 Who Became The Oldest Man To Be Rated No1 In The World Tennis Association Rankings At The Age Of 33? 	Andre Agassi 		0
4682	The muskellunge, a fierce fighting fish that can weigh in at around 70 pounds, is the official state fish of ___________________	Wisconsin		0
4683	Who is the babylonian goddess of love and fertility	Ishtar		0
4684	Belgrade lies on The Danube and which other river	Sava		0
4685	Who was the king of Judah (800-783 bc)	Amaziah		0
4686	Collective nouns - a group of swans are called what	A Bevy		0
4687	In poker five cards of the same suit is called a(n) ________.	Flush		0
4688	How many bones are there in the human body	206		0
4689	What dog in ancient China was restricted to the aristocracy	Pekinese		0
4690	Who won a place in the Guinness Book of Records for writing 26 books in 1983? 	Barbara Cartland 		0
4691	What has the chemical formula H2, SO4? 	Sulphuric Acid 		0
4692	What is the name of the Israeli national anthem	Hatikvah		0
4693	In the middle of the land is the literal translation of where	Mediterranean sea		0
4694	Who Recorded the Album "Alright Now" - "Change" & "Heartache"	Pepsi & Shirlie		0
4695	Which famous piece of artwork depcits the Battle of Hastings ?	Bayeux Tapestry		0
4983	What word is used for a female sheep?	Ewe		0
4696	Who was the world's first woman Prime Minister	Sirimavo bandaranaike		0
4697	In what opera did count almaviva have a page named cherubino	Marriage of		0
4698	Who did arthur h bremer try to assassinate on may 13, 1972	George wallace		0
4699	A distillery was originally on the site of America's first mint, the ____________ mint, which opened in 1792.	Philadelphia		0
4700	In "St. Elmo's Fire," What city does Billy go to at the end???	New York		0
4701	What is the principal religion in Romania	Orthodox		0
4702	What is the capital of Colorado?	Denver		0
4703	From where to london was the first commercial boeing 747 flight	New york		0
4704	What was the last chinese dynasty?	Manchu		0
4705	A light aircraft without an engine	Glider		0
4706	The Scots call it 'shinty' - what do Canadians and Americans call it?	Hockey		0
4707	What is the binary equivalent of decimal 10	1010		0
4708	Who Was Bound For Delaware In 1960	Perry Como		0
4709	What is the flower that stands for: domestic industry	Flax		0
4710	What snake builds a nest	King Cobra		0
4711	What type of food is Lollo rosso?	Lettuce		0
4712	In which of Charles Dickens' novels would you find the character Dora Spenlow	David copperfield		0
4713	Who was Hitler's foreign secretary (full name)	Joachim von ribbentrop		0
4714	What sport exercises all the muscles at once	Swimming		0
4715	Trimontaine was the original name of where	Boston Massachusetts		0
4716	Nomatophobia is the fear of	Names		0
4717	The Detours changed to The High Numbers then what name	The Who		0
4718	In the proverb Heaven protects children sailors and who	Drunken men		0
4719	What Las Vegas hotel burned in November, 1980, with the loss of 84 lives	Mgm grand		0
4720	What is another name for the coyote?	Prairie wolf		0
4721	What is the point in the moon's orbit which is farthest from the earth	Apogee		0
4722	Which Sport Featured In The Olympics Will You Find The Terms 'Bump, Set, Spike & Pancake'' 	Volleyball 		0
4723	Who's band was The Quarrymen	John Lenon		0
4724	On which annual day do most heart attacks occur	New years day		0
4725	Brooks what is the new name of the mound metalcraft company	Tonka metalcraft		0
4726	"Our Town" is a play by whom?	Thornton Wilder		0
4727	In the UK which school choir had a No 1 with a song grandma	Saint Winifred's		0
4728	What was the original working title of the Beatles movie "Help"?	Eight Arms To Hold You		0
4729	Which Poet Wrote No Verse During His Time As Poet Laureate 	William Wordsworth 		0
4730	Who is Tippi Hedren's daughter?	Melanie Griffith		0
4731	Who released the following 'edible' album 'The spaghetti incident' 	Guns & Roses 		0
4732	What place is known as 'the land nowhere near'?	Cape Three Points		0
4733	The ancient Egyptians worshiped a sky Goddess name her	Nut		0
4734	Name The Band: Tony Mortimer, Brian Harvey, John Hendy, Terry Coldwell	East 17		0
4735	Which word, taken from the French, translates literally as 'rotten pot'	Potpourri		0
4736	Where would you find your pollers	Hands its your thumbs		0
4737	Puccini's Turendot is set in which country	China		0
4738	What is a sternocleidomastoid	A muscle		0
4739	The flowers of the curry plant are what colour	Yellow		0
4740	Which English theologian, who became Dean of Westminster, was the first person to write a full account of a fossil dinosaur?	William Buckland		0
4741	Which Argentinian golfer, aged 44,won the British Open in 1967	Roberto de vicenzo		0
4742	Which Olympic Sport Prohibits The Wearing Of A Beard 	Boxing 		0
4743	Which Band Produced the Mega Selling Album “Rumours”	Fleetwood Mac		0
4744	Ian Brown Fronts Which Band	The Stone Roses		0
4745	Often eaten for breakfast, bacon is actually the flesh of what barnyard animal?	Pig		0
4746	In Growing Pains,What was boners dad's name?	Sylvester Stabone		0
4747	Who plays centerfield for the Seattle Mariners?	Mike Cameron		0
4748	Most men do this each morning, using a razor.	Shave		0
4749	Name the classic dish of mussels cooked in white wine with garlic and onion	Moules mariniere		0
4750	Three_letter clothing outlet, or a space or void.	Gap		0
4751	Which war was ended by the Treaty of Westphalia	30 years war		0
4752	What, made from the dried stamens of cultivated crocus flowers, is the most expensive cooking spice	Saffron		0
4753	Virginia McMath became famous as which actress	Ginger Rodgers		0
4754	Benjamin Kubelsky 1894 fame as what comedian	Jack Benny		0
4755	Of which country is voodoo the national religious folk cult	Haiti		0
4756	Which Punk Band Had A Minor Hit In 1982 With A Cover Of Ralph Mctell's "The Streets Of London"	The Anti Nowhere League		0
4757	What is the official language of Austria?	German		0
4758	What Was The Coronation Year Of Queen Elizabeth 2nd 	1952 		0
4759	What is the only animal that cant stick out its tongue? 	Crocodile 		0
4760	Who played the lead female in meet me in las vegas	Cyd charisse		0
4761	Who's the leading rebounder in NBA playoff history	Bill russell		0
4762	What fruit will keep floating to the top and sinking to the bottom of a glass of champagne	Raisin		0
4763	The Gettysburg Address was written on what	Used envelopes		0
4764	What is the name of the rabbit in the film, "Bambi"	Thumper		0
4765	Which British Flower Is Known As The Lent Lily? 	The Daffodil 		0
4766	What is a kookaburra	Bird		0
4767	Who Wrote The Words & Music For "Fifty Ways To Leave Your Lover"	Paul Simon		0
4768	Steve McQueen played Hiltz Great Escape what's first name	Virgil		0
4769	What Roman Emperor was the first to convert to Christianity	Constantine - the great		0
4770	Saturn is the roman god of ______	Agriculture		0
4771	As what is the exclamation point known to mathematicians	Factoria		0
4772	From What Is The Heart Drug Digitalis Obtained 	Foxgloves 		0
4773	A carbonade is a dish that must contain what	Beer		0
4774	What is the meaning of the Latin phrase "cum grano salis"	With a pinch of salt		0
4775	What is a group of this animal called: Horse	Team pair harras		0
4776	Which Thriller Writers Works Include (The Dark Eyes Of London, Four Just Men & Sanders Of The River) 	Edgar Wallace 		0
4777	USA favourite computer passwords are love and sex what UK	Fred		0
4778	What is the heaviest class of weight_lifting	Super heavyweight		0
4779	The study of human pre history is ___________	Archaeology		0
4780	Gemellus is a fancy name for what	Testicles		0
4781	In a church, the area where the transept and the nave intersect, usually emphasized by a dome or a tower. 	Crossing		0
4782	Promise of future benefits e.g. pensions or share options for those who stay with a company	Golden handcuffs		0
4783	What controversial book did Germaine Greer write?	The Female Eunuch		0
4784	What is the only planet that is less dense than water	Saturn		0
4785	What is the capital of Somalia ?	Mogadishu		0
4786	What transporter room aboard the enterprise is chief o'brien's favorite	Three		0
4787	Where would you find a Walloon	South Belgium – Native Flemish		0
4788	What is the nickname for San Antonio, Texas	Alamo city		0
4789	What Letter Do Most British Names Begin With 	B 		0
4790	Which Peter Was Offered A Record Contract Live On Air After His Version Of "Don't Be Cruel"	Peter Andre		0
4791	In the kama-sutra the art of which game is recommened for women to study ?	Chess		0
4792	In the poem who dug cock robins grave	Owl with his trowel		0
4793	To which plant family (strictly genus) do jonquils and daffodils belong	Narcissus		0
4794	What canal connects Lake Ontario and Lake Erie?	Welland		0
4795	What is the process of converting glucose to energy in cells called ?	Respiration		0
4796	Who is the subject of the book "Longitude" by Dava Sobel	John harrison		0
4797	Who Built The First Tunnel Under The River Thames 	Sir Marc Isambard Kingdon Brunel		0
4798	In the electomagnetic spectrum, what comes between X-rays and Light?	Ultraviolet light		0
4799	This small gland attached to the brain exerts a control over growth.	Pituitary		0
4800	What is a group of turtle doves	Pitying		0
4801	What Fruit Is Used In Making 'Creme de Cassis' 	Blackcurrants 		0
4802	 The tailorbird of Africa makes its nest by sewing together two broad leaves. It uses fiber as the thread and its bill as the __________	Needle		0
4803	What is the sacrament of anointing for dying persons	Extreme unction		0
4804	What is a sorcerer who deals in black magic	Necromancer		0
4805	An area of London got its name from a hunting call what	Soho		0
4806	Which 60's Movie features The Line wise men and grocers, they weigh everything 	Zorba the Greek 		0
4807	What Type Of Vegetable Is Used In A "Dubarry" Soup	Cauliflower		0
4808	Americans consume 2 billion lbs of what each year	Chocolate		0
4809	Afrikaans developed from which language	Dutch		0
4810	What city has the longest metro system	London		0
4811	What was Helen Keller's first word	Water		0
4812	Who Wanted To Take Things "One Day At A Time" In 1979	Lena Martell		0
4813	Who ate watercress to dissolve gravel and stones in the bladder	North		0
4814	Nonpariel Mission Caramel Neplus Peerless types of what	Almonds		0
4815	Fruit puree thin enough to pour	Coulis		0
4816	What marvel Comics superhero carries a star spangled shield	Captain america		0
4817	What was a Spiney Pear	Pineapple		0
4818	What European countries flag is square	Switzerland		0
4819	Names from jobs - Baker Cook obvious what did a Mercer do	Textile dealer		0
4820	Who was the leader of the notorious Gambino Mafia family	John Gotti		0
4821	A Cow Moos - A Cock Crows - What does an Ape do	Jibber		0
4822	Whose best-selling album is An Innocent Man which reached number two in the charts in 1983	Billy joel		0
4823	In mythology who are sometimes called the dioscuri	Castor Pollux Zeus twin sons		0
4824	Which U.S. state receives the most rainfall?	Hawaii		0
4825	Which sci-fi writer adapted his own book for the movie Pet Sematary	Stephen king		0
4826	Discoverer of nine ancient cities including Troy, Heinrich Schliemann made spectacular excavations of which city during 1874 to 1876	Mycenae		0
4827	Which is the largest of the Asteroids	Ceres		0
4828	In the cartoon show My Pet Monster,what were the only things that could send Beastor,Monster's enemy,back to the monster world?	A pair of orange handcuffs		0
4829	What is a group of this animal called: Pony	String		0
4830	Who sang '25 or 6 to 4'	Chicago		0
4831	Which 90's Song Opens With The Line "She Came From Greece She Had A Thirst For Knowledge"	Pulp / Common People		0
4832	What wondrous creation was built by Sostratus of Cnidos	Pharos of Alexandria		0
4833	In the Bible what did David give Saul as a dowry for Michal	200 Foreskins from Philistines		0
4834	In Which Game Might You Peg Out 	Cribbage 		0
4835	What is the capital of Slovenia ?	Ljubljana		0
4836	What Name Is Given To The Diagram In Which Sets Are Represented By Circles 	Venn Diagram 		0
4837	By Which Name Is Paul Gadd Better Known	Gary Glitter		0
4838	Each tour through Natural Bridge Caverns in ____________ covers 3/4 mile. An average tour guide will walk almost 560 miles in one year.	Texas		0
4839	What is the second biggest country in South America after Brazil	Argentina		0
4840	Vodka and orange makes up what cocktail	Screwdriver		0
4841	What facial feature contains approximately 550 hairs	Eyebrow		0
4842	Tarlike mixture of hydrocarbons derived from petroleum	Bitumen		0
4843	The original Peeping Tom had what job	Tailor		0
4844	In Egyptian mythology, who is known as the god of the desert?	Ash		0
4845	What word comes from the Latin phrase to crowd together	Constipation Con Sta Pay Shun		0
4846	This country's flag has a large "R" on it.	Rwanda		0
4847	Saturday is named after which planet?	Saturn		0
4848	What is Israel's domestic intelligence agency called?	Shin Bet		0
4849	From whom did Peter Mandelson borrow the money for his house	Geoffrey robinson		0
4850	What does the 'o' used as a prefix in irish surnames mean	Descendent of		0
4851	Who could win a PATSY	Picture Animal Top Star of  Year		0
4852	Operation Thunderbolt was the nickname given to which raid	Israeli raid on Entebbe		0
4853	What is the official language of new caledonia	French		0
4854	Which former Soviet Republic in Central Asia has Tashkent as its capital	Uzbekistan		0
4855	Wiccaphobia is the fear of ______	Witches and witchcraft		0
4856	What gives pasta its green colour? 	Spinach 		0
4857	What is sex on the internet called	Cybersex		0
4858	Who was the only survivor of Custer's last stand?	His horse		0
4859	In ancient Rome by law prostitutes had to do what	Dye blond or wear blond wig		0
4860	In Curse of the Pink Panther who plays Clouseau after surgery	Roger Moore		0
4861	What type of alcoholic drink is Manzanilla	Sherry		0
4862	Like fingerprints, what other print is individual?	Tongueprints		0
4863	What woman won 6 gold medals in the Olympic Summer games	Kristin Otto		0
4864	Who Released The 70's Album Entitled Superfly 	Curtis Mayfield 		0
4865	Who wrote 'born free', 'living free' and 'forever free'	Joy adamson		0
4866	What is the scientific name for brimstone?	Sulphur		0
4867	What was Gary Gnu's catch phrase?	No Gnus is Good Gnus		0
4868	Which breed of dog was introduced to Britain from Seistan province of Persia by John Barff, who exhibited it at the Kennel Club in 1907	Afghan hound		0
4869	Philippe Pages became famous as who	Richard Clayderman		0
4870	Who is the adopted son of Vito Corleone	Tom Hagan		0
4871	What Fashion Accessory Did Mary Quant Design	The Mini Skirt		0
4872	What is the study of poisons called	Toxicology		0
4873	Who Had A No.1 Huit In 1967 With "Let The Heartaches Begin"	Long John Baldry		0
4874	Where did you see Fancy, Spook and Choo-Choo	In Top Cat		0
4875	Judeophobia is the fear of	Jews		0
4876	What did north american indians eat to dissolve gravel and stones in the bladder	Watercress		0
4877	In 1911 the archaeologist Hiram Bingham discovered what lost city	Machu Picchu		0
4878	Who is the greek counterpart of juno	Hera		0
4879	Who sang the theme to The Spy who Loved Me	Carly Simon		0
4880	What does the Australian word 'duuny' mean	Toilet		0
4881	To which of its games did Hasbro give a red card in January 2000	Subbuteo		0
4882	Which is the oldest walled city in the world	Jericho		0
4883	Writer For Michael Jackson, George Benson & Michael Mcdonald Among Others With Which Band Did Rod Temperton First Find Success	Heatwave		0
4884	In ancient Rome, it was considered a sin to eat the flesh of what bird?	Woodpecker		0
4885	Who starred in the 1957 film showboat as June? 	Ava Gardner 		0
4886	What was the first daily comic strip in the USA	Mutt and Jeff		0
4887	Former YES drummer Bill Bruford played with what group in 1972	King crimson		0
4888	Telly Savalas played which TV detective	Kojak		0
4889	In the theme song from 'the flintstones', what is the line after 'let's ride with the family down the street'	Through the courtesy of fred's two feet		0
4890	Where might you spend a Won	North or South Korea		0
4891	43% of Americans regularly do what	Attend church		0
4892	Got a way what sport did andre agassi's dad compete in	Boxing		0
4893	Approximately how many spoons are there in the 'New Jersey Spoon Museum'	Five		0
4894	What word refers to very harsh laws such as those devised by a 7th century BC Athenian legislator	Draconian draconic		0
4895	Stagecoach and Fort Apache starred which actor	John wayne		0
4896	Marcus Garvey founded what	Rastafarians		0
4897	What form of verse is "paradise lost" written in	Blank verse		0
4898	A Russian space programs name meant East what was it	Vostok		0
4899	In which opera does Leporello entertain a vengeful jilted lover?	Don Giovanni		0
4900	What colour was moby dick	White		0
4901	Plus or minus 100 pounds (lb), how much did the world's largest recorded pumpkin weigh 	1,524 lb 		0
4902	What religion was founded by Lao-tzu ?	Taoism		0
4903	What did Barbie first get in 1962	Her car made by Irwin for Mattel		0
4904	What European Nation Was The First To Drink Tea	The Dutch / Holland		0
4905	Where Can you see Lenny Bruce, Edgar Allen Poe, Karl Marx, and HG Wells all in the same place at the same time	Sergeant Peppers		0
4906	Where Is The World's Rarest Plant? 	The UK. Encephalartos Woodii At Kew Gardens 		0
4907	Name The Carly Simon US No.1 For Which Mick Supplied A Backup Vocal	You're So Vain		0
4908	What is the main ingredient of Tapanade? 	Olives 		0
4909	1836 Mr Gray a gasfitter 10 years penal servitude stealing what	One Rabbit		0
4910	"I'm a soldier of fortune, I'm a dog of war ___" What's the Dire Straits song title	Ride Across the River		0
4911	Jean Montgolfier in 1157 built the worlds first what	Paper factory		0
4912	What's the most popular form of bridge	Contract bridge		0
4913	Elvis Stojko was an ice skating word champion - what country	Canada		0
4914	What is the old name for solid sodium hydroxide	Caustic soda		0
4915	The ore bauxite is the chief commercial source of which element	Aluminium		0
4916	What age preceded the Iron Age?	The Bronze Age		0
4917	 Kittens are born both blind and deaf, but the vibration of their mother's purring is a physical signal that the kittens can feel _ it acts like a __________, signaling them to nurse.	Homing device		0
4918	What was the name of the German Republic of 1918-1933 overthrown by Hitler	Weimar republic		0
4919	What officer of king pharoah bought joseph as a slave	Potiphar		0
4920	What is the oldest soft drink in the USA	Doctor Pepper		0
4921	What is the most ordered seafood item in a restaurant	Shrimp		0
4922	In Music How Are The Trio Of “Ferguson, Pinkney And Holliday” Better Known	The 3 Degrees		0
4923	Magnus Huss (a Swede) coined which word	Alcoholism		0
4924	What was Gary Gnu's catch phrase? 	No Gnus is Good Gnus 		0
4925	What mountain has the figures of three mounted confederate heroes of the American Civil War?	Stone Mountain		0
4926	Linda Hunt won an Oscar Year of Living Dangerously what 1st	First Oscar playing  opposite sex		0
4927	Who Played Jack Nicholson's Wife In The Shining 	Shelley Duvall 		0
4928	This U.S. president was fatally shot in 1881.	James Garfield		0
4929	Name Li'l Abner's favorite Indian drink.	Kickapoo joy juice		0
4930	What bird has two toes	Ostrich		0
4931	Which All-Male Group Spent More Weeks On The UK Charts In The 1980s Than Any Other Group?	Madness		0
4932	Gregory Peck played Lt Joe Clements in what 1950s film	Pork Chop Hill		0
4933	Kim Smith Is The Real Name Of Wjich Singer	Kim Wilde		0
4934	Which phrase with a French flavour was the titleof Paul Young's debut album?	No Parlez		0
4935	Which French Explorer Of West Africa Convinced Many African Leaders To Cede Power To France 	Pierre Ne Brazza 		0
4936	What was jean harris found guilty of	Second degree murder 2nd degree murder		0
4937	What is Britain's largest wild mammel	Grey seal		0
4938	Which country consumes the most chicken per capita	Saudi Arabia		0
4939	How did the crew of Red Dwarf get brought back to life?	By Nanobots		0
4940	What is a group of herring	Army		0
4941	Elvis Presley Adolf Hitler Errol Flynn all had what kinky habit	Peeping Toms		0
4942	What titan had snakes for hair	Medusa		0
4943	Who Had An 80's Hit With The Song 'Is There Something I Should Know' 	Duran Duran 		0
4944	What Canadian city has the most bars per capita	Halifax Nova Scotia		0
4945	Which Alabama city was the first capital of the Confederacy during the Civil War	Montgomery		0
4946	Which elephant cant be domesticated the african or indian	African		0
4947	Sapporo is brewed in this country.	Japan		0
4948	Mottephobia is the fear of what?	Moths		0
4949	Because metal was scarce, the oscars given out during WW II were made out of what	Wood		0
4950	A flag flown upside-down is a signal of a(n) _________	Emergency		0
4951	Who is Pat Andrejewski better known as?	Pat Benatar		0
4952	Egyptian embalmers replaced the bodies eyes with what	Onions		0
4953	What chicken part is the snack of choice for Chinese movie goers	Feet		0
4954	What type of scientific equipment was named after the german Bunsen	Burner		0
4955	With what sport is gabriela sabatini associated	Tennis		0
4956	Which Country Consumes More Coca-Cola Per Head Than Any Other?	Iceland		0
4957	Which breed of dog was developed from the Bullenbaiser	Boxer		0
4958	What Star Sign Would You Be If Your Birthday Fell On Christmas Day 	Capricorn 		0
4959	The Stasi were an intelligence organisation in what country	East Germany		0
4960	Who Was The Very First Actor To Win 2 Consecutive Best Actor Oscars	Spencer Tracy		0
4961	What was Alaska called before 1867?	Russian America		0
4962	What French word literally means little skip	Cabriolet		0
4963	What type of creature is an Orb Weaver	Spider		0
4964	Who wrote Private Lives - 1930 - Blyth Spirit 1941 (both names)	Noel Coward		0
4965	All commercially bred turkeys are what	Artificially Inseminated – males  oversized		0
4966	Who Was The Merchant In Shakespear's (The Merchant Of Venice) 	Antonio 		0
4967	Three fourths of household _____ is used to flush the toilet & take baths & showers	Water		0
4968	Who performed the world's worst circumcision	Lorena bobbit		0
4969	Large amphibious broad tailed rodent	Beaver		0
4970	Topo in Italian Fare in Turkish what in English	Mouse		0
4971	A story by Edgar Allan Poe___Fall of the..	House of usher		0
4972	In cockney rhyming slang what are 'Mince Pies'' 	Your Eyes 		0
4973	Who said "I have no problems with drugs - only policemen"	Keith Richard		0
4974	The human body has over 600 what to account for 40% of the body's weight	Muscles		0
4975	Who Had A 1994 Hit With "Them Girls, Them Girls"	Zig & Zag		0
4976	Diane Belmont became famous as who	Lucille Ball		0
4977	Which was the first U.S. city to stage the summer Olympics	St louis		0
4978	Where do bathers traditionally go for a swim in Hyde Park on Christmas Day 	The Serpentine 		0
4979	What animal has the same name as a high church official	Cardinal		0
4980	Acmegenesis is a fancy name for what	Orgasm		0
4981	What well known Russian author was also a doctor	Anton Chekov		0
4982	What is a group of larks called	Exaltation		0
4984	In Bonanza what was Hoss Cartwright's characters first name	Eric		0
4985	How Many Girls Were There In Steps	3 , Lisa, Claire, Faye		0
4986	According To The Title Of Their 1979 Hit, Where Did The Leyton Buzzards Spend Saturday Night	Beneath The Plastic Palm Trees		0
4987	When was the date of the Christian festival Easter fixed by the Council of Nicaea?	325 AD		0
4988	What is the correct name for the honey bear or potto	Kinkajou		0
4989	Yogi Bear's sidekick was?	Boo boo		0
4990	Into what sea does the elbe river flow 	North 		0
4991	Lee Which U.S. state is known as the "Volunteer State"	Tennessee		0
4992	By law what can you not do in Minnesota with your washing line	Put male female washing together		0
4993	What comedy team's films included 'hollywood or bust' and 'living it up'	Dean martin and jerry lewis		0
4994	Which european country will lose its independence if there is no heir to the throne	Monaco		0
4995	Mark David Chapman was famous for what in 1980?	Shooting John Lennon		0
4996	Which `Rocky Horror Picture Show' actor played Mocata in the 1967 film 'The Devil Rides Out' 	Charles Gray 		0
4997	Which camera company produces the popular 'Trip'	Olympus		0
4998	Harvey Lee Yeary II became famous under what name	Lee Majors		0
4999	Of the ten strongest earthquakes ever recorded in the world, three have occurred in ____________	Alaska		0
5000	What is wynonna judd's real name	Christina clair ciminella		0
5001	Somniphobia is a fear of ______	Sleep		0
5002	What is the default extension given to paintbrush files	It's .bmp		0
5003	A Quidnunc is a what - from the Latin Quidnunc what now	Gossip - used to be all politicians		0
5004	Which girls name comes from German meaning battle	Hilda		0
5005	A large box for valuables	Coffer		0
5006	Why do Christians fast during the 40 days of Lent leading up to Easter 	To replicate the 40 days Jesus spent in the wilderness 		0
5007	What kind of pants were first worn during the California gold rush	Denim jeans		0
5008	Who founded 'live aid' and 'band aid'	Bob geldof		0
5009	From which plant is the poison ricin obtained? 	The Castor Oil Plant 		0
5010	How was the universe said to have been created	Big bang		0
5011	What is the meaning of the name of the constellation Lyra ?	Lyre		0
5012	With what song did Status Quo opened the Band Aid concert	Rocking all over the World		0
5013	Who ate chicken little	Foxy loxy		0
5014	Garnet is the birthstone of January - what does it symbolise	Truth - consistency		0
5015	In which country are the Philips company based	Holland		0
5016	Maxillary palps, abdomen, and metathorax are parts of a(n) ________.	Insect		0
5017	Who Asked "Am I The Same Girl" In 1992	Swing Out Sister		0
5018	Name the Hindu god with the head of an elephant.	Ganesh ganesha ganapati ganesa		0
5019	What is normal body temperature for an adult human	97.8 F or 36.5C		0
5020	In 1954 Roger Bannister achieved the worlds 1st Sub 4 min mile in what English County did this take place 	Oxforshire 		0
5021	What tv series was based on the series of books by laura ingalls wilder	Little house on the prairie		0
5022	In Maine it is illegal to bite your own what	Landlord		0
5023	Which German chemist, along with Fritz Strassmann, is credited with the discovery of Nuclear Fission?	Otto Hahn		0
5024	How many men have walked on the moon	12		0
5025	From what were Jack-o-Lanterns first made in U.K. 	Turnips 		0
5026	What was the top film of 1990	Home Alone		0
5027	Which cartoon character's vital statistics were 19-19-19 -in inches	Olive oyl		0
5028	In WW1 what warning device was on the top of Eiffel Tower	Parrots		0
5029	What is installed in the world's deepest mine in carletonville	Refrigeration		0
5030	In the Bible who climbed Mount Nebo	Moses to see promised land		0
5031	The average human body contains enough iron to make how many 3" nails	1		0
5032	Spanish: How do yoU.S.ay "sixteen"	Diez y seis		0
5033	Which exercises are designed to increase O2 consumption & speed circulation	Aerobics		0
5034	Where is your zygomatic bone	Cheek		0
5035	Run away to marry secretly	Elope		0
5036	What is the capital of Florida?	Tallahassee		0
5037	Name the capital city of Utah.	Salt Lake City		0
5038	Who fought at the battles of Bastia, Calvi and Toulon	Horatio Nelson		0
5039	What is often referred to as "the oldest profession"?	Prostitution		0
5040	What Is The Name Given To A Sailors Work Song	A Sea Shanty		0
5041	What is the SI Unit for pressure? 	Pascal 		0
5042	Who won Best Supporting Actress for her role in Melvin and Howard	Mary		0
5043	Kigali is the capital of ______	Rwanda		0
5044	What kind of birds would you find in a gaggle	Geese		0
5045	What is the basic unit of currency for Burkina Faso ?	Franc		0
5046	The French call it La Mort aux Trousses what Hitchcock film is it	North by Northwest		0
5047	What common 4 legged animals never walk or trot	Rabbits		0
5048	Where is David Livingstone Buried (Two Places / countries)	Westminster Abby / Tanzania		0
5049	What does the prefix 'pseudo' mean	Pretend		0
5050	Ezekiel, Jeremiah, Eli and Isaiah were all what in The Bible	Prophets		0
5051	The Venetian island of Murano is particularly associated with the manufacture of which product	Glass		0
5052	In 1902 this volcano erupted, killing 30,000	Pelee		0
5053	Who Would You Associate With Lou Costello 	Bud Abbott 		0
5054	Holland hosted the Olympics in which year	1928		0
5055	What company created the gif image file format	CompuServe		0
5056	What is the binot simon scale used to measure	Intelligence		0
5057	50 years ago Texas giving advice on what was prison sentence	Birth Control		0
5058	The Murryfield Racers play which sport	Ice Hockey		0
5059	In Which City Is The Oldest Metro System In The World 	London 		0
5060	Who sang the song "Californication"?	Red Hot Chilli Peppers		0
5061	In common: detroit, phibes, demento, faustus?	Doctors		0
5062	Which Roman God was the equivalent of the Greek God Dionysus?	Bacchus		0
5063	Where Were typically Tropical Going To In 1975	Barbados		0
5064	Who was castrated in the time of richard the lionheart	Poachers		0
5065	Who Was Sportswoman Of The Year In 1971	Princess Anne		0
5066	What gemstone has a name literally meaning not intoxicated	Amethyst		0
5067	Which record company rejected the Beatles as being past it	Decca		0
5068	Patterson what do you call a person that stuffs dead animals	Taxidermist		0
5069	In what country was the worlds first wildlife sanctuary set up	Sri Lanka 3rd cent BC		0
5070	Shinguards were introduced into football in which year	1839		0
5071	What name is given to sweet chestnuts preserved in syrup	Marrons glace		0
5072	Which Boys Name Is Also The Name Of The Object Ball In Bowls? 	Jack 		0
5073	 The shrew is known to eat up to its own weight about every three hours. Deprived of nutrition for a day, it may __________	Starve to death		0
5074	Who used to do naked cartwheels to amuse the English settlers	Pocahontas		0
5075	Name the first British show to air on US autumn prime time	The Avengers		0
5076	 A __________ keeps purring, no matter if it is inhaling or exhaling, a baffling accomplishment.	Cat		0
5077	What is the Capital of: Czech Republic	Prague		0
5078	Which West Bengal town is the centre of production of the tea called 'The Champagne of Teas' because of its grape aroma	Darjeeling		0
5079	Who was the second man to step onto the Moon in 1969	Buzz aldrin		0
5080	In what country is the source of the blue nile 	Ethiopia 		0
5081	Pax was the Roman god of peace who's the Greek equivalent	Irene		0
5082	In 1968, who invited you to Dance To The Music	Sly and the Family Stones		0
5083	Which Mediterranean island is named after a metal	Cyprus		0
5084	In addition to writing novels, Jonathan Swift also wrote social and philosophical commentary. In one satirical piece, "A Modest Proposal," what did he suggest should be made out of the skin of children?	Gloves		0
5085	What deranged movie murderer has been dubbed a "jaws on land"	Jason		0
5086	Pieces of vegetable coated in seasoned flour and deep fried	Pakora		0
5087	He designed the first feasible automobile with an internal combustion engine.	Karl Freidrich Benz		0
5088	Quercus is the Latin name of what Tree	Oak		0
5089	In 'Back To The Future', where did Doc Brown get the plutonium to power the time-travelling DeLorean?	Lybian terrorists		0
5090	Where could you spend a Sol	Peru		0
5091	Mark King Was The Lead Singer With Which UK Pop Outfit "Level 42" Or "Big Country"	Level 42		0
5092	 An adult walrus typically eats about 3,000 __________ per day.	Clams		0
5093	Name a country which has the same name as a bird.	Turkey		0
5094	When Jonathan Edwards smashed the world triple-jump in 1995, by how much did he increase it	0.31 metres		0
5095	Who Sang In A Pop Duo Alongside Mel Appleby	Kim Appleby		0
5096	In which city is the worlds longest skating rink - rideau canal	Ottawa Canada		0
5097	 A mother __________ often gives birth while standing, so the newborn's first experience outside the womb is a 1.8_meter (6_foot) drop. Ouch!	Giraffe		0
5098	Table Tennis competitions only two coloured balls allowed what	White and Yellow		0
5099	Who wrote Last Tango in Brooklyn his third novel	Kirk Douglas		0
5100	Vincent Furnier is better known as who	Alice Cooper		0
5101	To which tree family does the osier belong	Willow		0
5102	"What brought Frosty the Snowman to life? (""Pixie Dust, A Kiss,Magic Snow,An Old Silk Hat"" " 	An Old Silk Hat 		0
5103	Artistic movement shared name with French for hobby horse	Dada thus Dadaism		0
5104	What Did Hot Chocolate Say It Sterted With In The 1970's	A Kiss		0
5105	Who dropped out of Harvard in 1975	Bill Gates		0
5106	Art, science, & industry of managing the growth of plants & animals for human use	Agriculture		0
5107	Which country was represented by the athlete Don Quarrie? 	Jamaica 		0
5108	What actress said "I acted vulgar - Madonna is vulgar"	Marlene Dietrich		0
5109	What Was The Name Of The Dog In Fraggle Rock	Sprocket		0
5110	Who breathes through spiracles	Insects		0
5111	Which eponymous, or title female, cartoon character was created by Max Fleischer	Betty boop		0
5112	What are the colours of the five olympic rings?	Red, Blue, Green, Yellow, Black		0
5113	What city is associated with Alcatraz?	San Francisco		0
5114	Who owned the dog called Peritus	Alexander the Great		0
5115	What is the fear of dolls known as	Pediophobia		0
5116	Which is the highest mountain outside Asia	Aconcagua		0
5117	Hormone used in treating inflammation and allergy	Cortisone		0
5118	What is the worlds most polluted major city	Mexico City		0
5119	What was the capital of east germany	East berlin		0
5120	Who invented crop insurance?	Benjamin Franklin		0
5121	A pudding of stewed fruit under bread	Charlotte		0
5122	With what day does a month start if it has a friday 13th	Sunday		0
5123	Name 3 Of The Four Members Of The Classic REM Lineup	Bill Berry, Peter Buck, Mick Mills, Michael Stipe		0
5124	Proverb: the early bird __________	Catches the worm		0
5125	What three letter word means the same as "to ingest"	Eat		0
5126	In Korean, what does seoul mean	The capital		0
5127	Which Declaration Brought The Beastie Boys Into The Charts In 1987	You Gotta Fight For Your Right To Party		0
5128	The Underworld in Greek mythology	Hades		0
5129	Who was the first winner of the British version of the TV reality show 'Big Brother'?	Craig Phillips		0
5130	Who was football manager at Southampton, Rangers and Liverpool in the 1980's & 1990's? 	Graeme Souness 		0
5131	Other than Alain Prost, which driver won three Formula One World Championships in the 80's? 	Nelson Piquet 		0
5132	What Was Dire straits 1982 Album Called	Love Over Gold		0
5133	What kind of animal was the now extinct Dodo	Bird		0
5134	The character Lieutenant Pinkerton appears in what work	Madam Butterfly		0
5135	What term is applied to animals or plants that are not nocturnal	Diurnal		0
5136	Who said 'public service is my motto'	Al capone		0
5137	Which group of Australian origin had a top twenty hit in 1965 with The Carnival is Over	The seekers		0
5138	What Colour Is The Australian Swan? 	Black 		0
5139	The largest internal organ of the human body is	Liver		0
5140	What is measured in fathoms	Depth of water		0
5141	What muscles provide about 200 pounds of force	Jaw muscles		0
5142	What is the basic unit of currency for Belarus ?	Rubel		0
5143	80% of Americans say they believe in what	Miracles		0
5144	What gift is associated with the 40th Wedding Anniversary?	Rubies		0
5145	From what country did the U.S. buy the Virgin Islands?	Denmark		0
5146	What is the basic unit of currency for Uruguay ?	Peso		0
5147	The Fagus is the Latin name of what type of tree	Beech		0
5148	What does a heliologist study?	The sun		0
5149	What colour is the the Northern Line on the London underground?	Black		0
5150	In Texas its illegal to shoot a buffalo from where	Hotel second story		0
5151	Isms: a painful stiffness of the muscles and joints	Rheumatism		0
5152	___________________ has the largest rural population in the United States.	Pennsylvania		0
5153	What links Catalonia, Andalusia, Cantabria, Galicia	Regions of Spain		0
5154	What is the name of Jonny Quest's Dog	Bandit		0
5155	Which Country Has Had The Most Wins At The Angling World Championships 	France 		0
5156	Betsy Ross is the only real person to ever have been the head of a ______?	Pez dispenser		0
5157	Who was the first dog in space ?	Laika		0
5158	Nipper is the RCA dog in the US what's he known as in the UK	HMV dog		0
5159	What is the significance of the moth found in the Harvard Mark I computer	First computer "bug"		0
5160	A large French country house	Chateau		0
5161	A Russian abstract movement originated by Malevich c. 1913. It was characterized by flat geometric shapes on plain backgrounds and emphasized the spiritual qualities of pure form.  	Suprematism		0
5162	All living things contain what	Water		0
5163	 What is the common name for the Aurora Borealis	Northern lights		0
5164	What do runners pass to each other in a relay race?	Baton		0
5165	Which planet did John Couch Adams and Urbain Leverrier work out the existence and position of before it could actually be seen	Neptune		0
5166	What was the worlds first patented synthetic food in 1869	Margarine		0
5167	In what Australian state would you find Fremantle	Western australia		0
5168	Formerly known as East Pakistan what is this country now called 	Bangladesh 		0
5169	Live Aid was to benefit which starving country? 	Ethopia 		0
5170	Jr how many tunes blared from the 1948 wurlitzer model 1100 jukebox	24		0
5171	This chess term means "in passing"	En passant		0
5172	What Song Was Christmas Number One In The UK In Both 1975 And 1991?	Bohemian Rhapsody By Queen		0
5173	Which of Paul Simon's musical characters was told to hop on the bus?	Gus		0
5174	What martial arts name means gentle way	Judo		0
5175	Which Group Sat Down In The Top Ten Twice	James		0
5176	Arnold Cream was a famous (early) boxer - who	Jersey Jo Walcott		0
5177	Who was voted BBC's Golden Sports Personality for the last 50 Years in 2003? 	Steve Redgrave 		0
5178	What Shakespearean king was actually king of Scotland for 17 years?	Macbeth		0
5179	J D Sallenger wrote Catcher in the Rye what's the J D stand for	Jerome David		0
5180	Which tough guy actor was once a drop hammer operator	Robert Mitchum		0
5181	What is the flower that stands for: death preferrable to loss of innocence	White rose		0
5182	What part of an eatery do some restaurant owners call "the cancer ward"	The smoking section smoking section		0
5183	In Australian Rules Football How Many Players May A Team Have On The Field At One Time 	18 		0
5184	In boy meets world,what is the crazy older brother's name?	Eric		0
5185	What element is lacking in a diet causes goitre	Iodine		0
5186	What is the capital of Mauritius ?	Port Louis		0
5187	Charles Henry Stuard Gmelin was the first UK what 6 Apr 1896	Olympic competitor 4th 3rd heat 100 m		0
5188	In motor racing, what is yellow	Danger flag		0
5189	The French call it Sabayon, what do the Italians call it? 	Zabaglione 		0
5190	Nylon was invented in 1934 what product first used it	Toothbrush		0
5191	Which Significant Beverage Did Dr John Pemberton Of Atlanta Georgia Invent In 1886 	Coca Cola 		0
5192	In Professional World Cup Rugby How Many Minutes Does The Game Actually Last 	80 Mins 		0
5193	Which Country Did The 1998 Eurovision Song Contest Winner "Dana International" Represent	Israel		0
5194	What is the common name for a "canis lupus"	Timber wolf		0
5195	How Did UN Secretary General Dag Hammarskjoeld Die In September 1961 	In An Air Crash 		0
5480	What group drove "drive" into the top five	Cars		0
5196	Engine that employs gas flow as the working medium by what heat energy is transformed into mechanical energy	Gas turbine		0
5197	Approximately what percentage of the earth do the oceans cover	71%		0
5198	In which European country is the world's deepest known cave	France		0
5199	The Composer Mozart Wrote The Music To Which Popular Tune?	Twinkle Twinkle Little Star		0
5200	A is Alpha is the international alphabet but A used to be what	Able		0
5201	What is the Capital of: Sierra Leone	Freetown		0
5202	What is the basic unit of currency for India ?	Rupee		0
5203	The Zoastrian religion began in what country	Persia or Iran		0
5204	What was the former name of Thailand?	Siam		0
5205	Which video game series is sometimes referred to as GTA? 	Grand Theft Auto 		0
5206	Who played Beau Geste in the 1939 film	Gary Cooper		0
5207	What is the second largest state in the u.s	Texas		0
5208	What is the scent of an artificial hare at greyhound tracks	Anise		0
5209	Potamophobia is the fear of	Rivers running water		0
5210	What is a group of this animal called: Cur	Cowardice		0
5211	Who invented the hamburger	Louis lassen		0
5212	What device is used to measure weather pressure ?	Barometer		0
5213	What was invented by James Dewer in 1872	Vacuum or thermos flask		0
5214	Almost half the bones in your body are in what two body parts	Hands & feet		0
5215	In which English town was the Co-Operative Society formed in 1844? 	Rochdale 		0
5216	In February 1990 160 million bottles of what were withdrawn	Perrier – contaminated benzine		0
5217	How many eyes are there in a deck of 52 cards	Forty two		0
5218	Their Debut Album was Called "Lexicon In Love" Who Was The Band	ABC		0
5219	A spool or reel for thread	Bobbin		0
5220	In Which Sport Would Win The Federation Cup 	Womens Tennis 		0
5221	What is a 'kiwano' a type of	Fruit		0
5222	Tammi Terrel Died From A Brain Tumour 3 Years After Collapsing In The Arms Of Another Motown Singer Who Was He	Marvin Gaye		0
5223	Which book has the statement 'all pigs are equal, but some pigs are more equal than others'	1984		0
5224	For whom did colonel tom parker act as manager	Elvis presley		0
5225	How many squares are there on a chessboard	64		0
5226	What's the adhesion of molecules to the surfaces of solids called	Absorbtion		0
5227	Why Is The Golden Gate Bridge Painted In International Orange 	The Colour Helps Visibility In The Frequent Early Morning Fog 		0
5228	The wallendas were noted as	High wire performers		0
5229	Which relative of John Travolta's made a cameo appearance in Saturday Night Fever?	His mother		0
5230	What march did Felix Mendelssohn compose	Wedding march		0
5231	Who was the first person to reach the North Pole, in 1909	Robert peary		0
5232	A belemnoid is what sort of shape in zoological terms	Dart shaped		0
5233	In What UK Town Did The First Branch Of The Body Shop Open	Brighton		0
5234	What is the most common plastic surgery done on US men	Breast Reduction		0
5235	Churchill what are phalanges	Finger bones		0
5236	Vaselina and Brillantino were alternate names which film	Grease		0
5237	From what did julius caesar and napoleon suffer	Epilepsy		0
5238	Plate tectonics theory contends there are how many major plates	Seven		0
5239	Who Had A 1983 Hit With "Si Si Je Suis Un Rock Star"	Bill Wyman		0
5240	In the Bible who came from Gath	Goliath		0
5241	What toe is the foot reflexology pressure point for the head	Big toe		0
5242	What type of animal is a caribou? 	A Reindeer 		0
5243	In Greek mythology the place of ideal happiness	Elysium		0
5244	Gwizador in Poland is who in English	Santa Claus		0
5245	Who sang the song "I'll Be Missing You"?	Puff Daddy		0
5246	The lowest elevation in the usa is	Death valley		0
5247	The city name ________________ is derived from an Algonquin word meaning "traders."	Ottawa		0
5248	Alma Mater means what	Bountiful mother		0
5249	Who said 'you'd be surprised how much it costs to look this cheap'?	Dolly Parton		0
5250	What shouts 'tip me over,pour me out' in a children's song	Little teapot		0
5251	Which character did Berlioz, Gounod and Liszt all compose music about	Faust		0
5252	What is the study of weather technically called?	Meteorology		0
5253	Who was & romedas mother	Cassiopeia		0
5254	Who Was The Lead Vocalist With Haircut 100	Nick Hayward		0
5255	In What Context Did Thierry Replace Ian Who Had Previously Replaced Cliff 	Leading Top Scorer for Arsenal 		0
5256	How many standard bottles of wine are in a Methuselah 	Eight 		0
5257	Country singer vince ____	Gill		0
5258	What country is Phnom Penh the capital of?	Cambodia		0
5259	What Is The First Event In Three Day Eventing 	Dressage 		0
5260	What is the Jack of Hearts holding up in a deck of cards	Leaf		0
5261	Who played the title role in the 'mad max' series of films	Mel gibson		0
5262	Who Was The Reggae Legend Who Died From Cancer In Miami Florida On 11th May 1981	Bob Marley		0
5263	With which instrument is jazz musician Charlie Mingus principally associated	Bass		0
5264	Mary Donaldson was the first woman to hold which post	Lord mayor of london		0
5265	What boy scout merit badge is earned most often	First Aid		0
5266	What Radio Program Did Roy Plomley Dream Up 	Desert Island Discs 		0
5267	The creature Hirudo medicinalis was used extensively by doctors, what is it	Leech		0
5268	Pink Floyd Featured A Chorus Of Pupils From A North London School For Which Of Their Hits	Another Brick In The Wall		0
5269	Which Model Ferrari Has A Name Which Means Redhead 	Tetarossa 		0
5270	Which Brand Name (Often Seen In The High Street) Get's It's Name From the Finnish For "Wild Grass"	Timotei		0
5271	Which disease is now known as Hansen's disease	Leprosy		0
5272	Brilliant red or black mineral, with diamondlike luster, composed of titanium oxide, tio2	Rutile		0
5273	What Sport Very Popular In The USA Was Created In 1973 After A Discussion By A Group Of Locals In A Pub In Wisborough Green Near Horsham In West Sussex	Lawn Mower Racing		0
5274	What do Julius Caeser, Ghandi and Trotsky have in common	All assassinated		0
5275	What is the US slang term for formal male evening dress	Monkey Suit		0
5276	Who is gaylord the buzzard's buddy	Broomhilda		0
5277	Who played the alien in Predator jumping and climbing scenes	Jean-Claude Van Damme		0
5278	Victoria is the only Australian state without what	Letter S in name		0
5279	Name the band - songs include "Heart of Glass, The Tide is High"?	Blondie		0
5280	Ivan Maugher won six world titles at what sport	Speedway		0
5281	In Which Movie Did Madonna Play The Character "Gloria Tatlock"	Shanghai Surprise		0
5282	What Bird Lays The Smallest Eggs	Hummingbird		0
5283	What was the first film musical based on a Shakespeare play	The boys from Syracuse C of Error		0
5284	What was Dr. Zhivago's first name	Yuri		0
5285	The Hawaiian alphabet has how many letters	12		0
5286	Raymond O Sullivan Changed His Name To Become Who	Gilbert O Sullivan		0
5287	Barrel size - what wine barrel size contains 10 gallons	Anker		0
5288	In 1961 which Henry Mancini record won Grammy record of year	Moon River		0
5289	Name The Album for Kula Shaker Titled After A Single Letter From The Alphabet	K		0
5290	Who recorded the album "business as usual" in 1983	Men at work		0
5291	How many days did the first successful trans-atlantic balloon flight take	6 days		0
5292	In 1974 Somalia created its first ever what	Written language		0
5293	Who Released The 70's Album Entitled Madman Across the Water 	Elton John 		0
5294	The teeth used for biting or cutting are known as _______	Incisors		0
5295	What can't roosters do if they can't fully extend their necks	Crow		0
5296	What is the reason behind the layout of the Qwerty keyboard ?	To slow down typing rates		0
5297	Which tyre company withdrew from formula 1 at the end of 1986	Pirelli		0
5298	What Is The First Name Of Inspector Morse In The Tv Series	Endeavour		0
5299	According to all four Gospels the precursor of Jesus Christ, born in Judea, the son of the priest Zacharias and Elisabeth, cousin of Mary, the mother of Jesus?	John the baptist		0
5300	Who played Dr. Frankenfurter in the pop-culture film 'The Rocky Horror Picture Show?	Tim Curry		0
5301	The first spaghetti western starring Clint Eastwood was made in what year	1964		0
5302	What animal may be stag, rhinoceros or dung	Beetle		0
5303	What links Steve McQueen Ian Botham Spike Milligan	All called Terence		0
5304	What was the name of the show that featured Sniglets?	Not Necessarily The News		0
5305	Baseball: The San Diego _______?	Padres		0
5306	Where on a woman is her J spot	Nape of the neck		0
5307	Who discovered the Grand Canyon?	Francisco Coronado		0
5308	What is another name for the sport of logrolling	Birling		0
5309	Inches who at buckingham palace wears bearskins	Guards		0
5310	In what modern country is mount Ararat	Turkey		0
5311	What kind of birds are most commonly raced	Pigeons		0
5312	Johan Schober the first president of what organisation in 1923	Interpol		0
5313	How many spots are on a dice	21		0
5314	Name the sea between Asia Minor and Greece.	Aegean		0
5315	Florida is often referred to as 'The Sunshine State' what place in Australia also has the same nickname	Queensland		0
5316	What is the voice box	Larynx		0
5317	What is a nidologist interested in	Birds nests		0
5318	Which Real Island Famed In Fiction Is Some 25 Miles South Of Elba	Monte Cristo		0
5319	What film gave the following hype "brando sings!"?	Guys & dolls		0
5320	Inspecting Galvaynes Groove tells you what	Age of horse – it’s on its teeth		0
5321	ON Tv In 1987 "Marion Chanter" Became The First And Only Female To Do What	Win The Krypton Factor		0
5322	How many stitches are on a regulation baseball	108		0
5323	The port of Piraeus serves which European capital	Athens		0
5324	At the end of TVs MASH what character stayed in Korea	Corp Maxwell Klinger		0
5325	What is the name for 100th of a second	A Jiffy		0
5326	What was the first US TV series broadcast in the USSR	Daktari		0
5327	What appear when the sun activates your melanocytes	Freckles		0
5328	 Ducks will lay eggs only in the __________	Early morning		0
5329	The highest temperature ever recorded on Earth was in which country?	Libya		0
5330	Sophophobia is the fear of	Learning		0
5331	 When thirsty, a camel can swig down 25 gallons of water in less than __________	Three minutes		0
5332	Which artificial fiber was invented in 1938 ?	Nylon		0
5333	What was St. Petersburg called immediately before its name was changed to Leningrad	Petrograd		0
5334	Which character did David Jason play in the T.V. series Porridge	Blanco		0
5335	"Vissi D'Arte" is a famous aria from a Puccini opera in which the eponymous heroine is an opera singer. Name the opera	Tosca		0
5336	Around which French town is the champagne industry located	Epernay		0
5337	What type of sweets was American President Ronald Reagan known for having on his desk? 	Jelly-beans 		0
5338	What is the drummer's name in 'The Muppet Show'?	Animal		0
5339	In 'Star Trek', what is Data's rank?	Lieutenant Commander		0
5340	Which new york city building was finished in 1931	Empire state building		0
5341	A painting of which famous Old Testament ruling, completed in 1495, is one of the earliest works by the artist Giorgione	Judgment of solomon		0
5342	Who broke Bearings bank and inspired the film Rogue Trader	Nick Leason		0
5343	Who discovered the River Zambezi	David livingstone		0
5344	Artist Marc Chegal died in 1985 in what country was he born	Russia		0
5345	Which Musical Concerned A Strike At The Sleep Tite Factory In Iowa	The Pajama Game (1954)		0
5346	Galahad what woman poet only left her home state of massachusetts once	Emily		0
5347	Where did Stalin, Churchill, Attlee and Truman meet in 1945 to determine the future of Germany after their unconditional surrender	Potsdam		0
5348	How is Samuel Clemens better known ?	Mark Twain		0
5349	On who's show did carol burnett rise to prominence	Gary moore		0
5350	There are more telephones than people in what city	Washington USA		0
5351	What colour are French letter boxes	Yellow		0
5352	Na is the chemical symbol for which element	Sodium		0
5353	In film making what is a martini shot	Last of day before pub		0
5354	Caesar Salad originated in which country	Mexico		0
5355	Khartoum is the capital of which country 	Sudan 		0
5356	Christmas Crackers is cockney rhyming slang for which part of the male anatomy? 	Testicles 		0
5357	What is the fear of the color purple known as	Porphyrophobia		0
5358	 The average cod deposits between 4 and 6 million eggs at a single __________	Spawning		0
5359	What Is Officially The Largest Sea By Area 	South China Sea 		0
5360	With what is sulphur and saltpetre mixed to make gunpowder	Charcoal		0
5361	How Old Was Donny Osmond When He Topped The UK Chart With The Song “Puppy Love”?	Fourteen		0
5362	What Beatles song did Dr. John remake?	Yesterday		0
5363	What was innovative about Co-op winter warmer ale	Labelled in Braille		0
5364	With which sport is Pele associated ?	Soccer		0
5365	In What Work Does The HAL 9000 Appear 	2001, A Space Odyssey 		0
5366	Which BBC TV comedy featured spoof news and current affairs, and introduced Alan Partridge	The day today		0
5367	What is a sound called when it bounces back to the person who made it	Echo		0
5368	What was a symbol of welcome in the 1700's to 1800's and can often be seen on doorknockers today	Pineapple		0
5369	What is the average speed of a running pig	7.5 mph		0
5370	In the film 'the day of the jackal', who played the jackal	Edward fox		0
5371	What is a group of locusts	Plague		0
5372	Name the legendary fourteen hour show that was held at London's Alexandra Palace in 1967?	The 14-Hour Technicolour Dream		0
5373	What ingredient causes the shine in expensive eye shadow	Fish Scales		0
5374	Where would you see sprites blur jets and elves	Thunderstorm electrical discharge		0
5375	In English its worth 10 points but in Polish only one what is	Letter Z in scrabble		0
5376	RCA released the first LP in 1959 without artists name - who	Elvis Presley		0
5377	What is the basic unit of currency for Hungary ?	Forint		0
5378	What links the Cassowary Kakapo and the Kagu	Flightless Birds		0
5379	Back Blanket and Button Hole types of what	Stitches		0
5380	Which food was rationed after WW2 ended but not during it	Bread		0
5381	Which countrys does one associate with the following foods or drinks 'Dum Aloo' 	India 		0
5382	Who was the first Chancellor of the German Federal Republic	Konrad adenauer		0
5383	In the TV series 'Seinfeld', who does Michael Richards play?	Kramer		0
5384	In what country is the northernmost point of Africa	Tunisia		0
5385	Who was the greek god of war	Aeries		0
5386	What is a 'somnambulist'?	Sleepwalker		0
5387	Field of physics that describes & correlates the physical properties of macroscopic systems of matter & energy	Thermodynamics		0
5388	What is the english word for 'fiesta'	Festival		0
5389	What percentage of Earth's circumference does the Great Wall span	Ten		0
5390	A kamikaze shooter contains Vodka Triple sec and what	Lime juice		0
5391	What food was almost non-existent in Ireland in the 1840's?	Potatoes		0
5392	Noel Coward gave what director his start on In Which we Serve	David Lean		0
5393	Who Was William Bonney Better Known As 	Billy The Kid 		0
5394	As what was Sir Matthew Baillie Begbie known as in the late 1800's	Hanging judge		0
5395	Who starred in Funny Girl and Lawrence of Arabia? 	Omar Sharif 		0
5396	What is heaven called in the Pilgrims Progress	Celestial city		0
5397	In the Bible, Goliath was the champion of which people or tribe	Philistines		0
5398	Who was the first thoroughbred horse to win one million dollars	Citation		0
5399	In 1938, Pearl S. Buck became the first American woman to be awarded what international honour	Nobel literature prize		0
5400	Which soft drink was invented by the Nicholls family of Wythenshawe, near Manchester, during the 1900's and is sold in both still and sparkling forms? 	Vimto 		0
5401	What is the basic unit of currency for Austria ?	Schilling		0
5402	What is the Capital of: Liechtenstein	Vaduz		0
5403	Which singer married Renate Blauel on Valentine's Day 1984? The same year that Watford reached the FA cup final 	Elton John 		0
5404	Which is the largest of the Greek islands	Crete,		0
5405	What is a Hurdy-Gurdy?	A Fiddle		0
5406	What is the name of the main European broadcasting system	Pal		0
5407	Who Was Samuel Clemens Better Known As 	Mark Twain 		0
5408	If you kiss someone under the mistletoe, what should you then remove 	One of the berries (for good luck) 		0
5699	What is the Capital of: Philippines	Manila		0
5409	Which Of Carol Kings Songs Gave James Taylor A Big Hit In 1971	You've Got A Friend		0
5410	Who did Michael Caine play in the Ipcress File (both names)   	Harry Palmer		0
5411	What is the capital of Wyoming?	Cheyenne		0
5412	If You Studied Histology What Would You Be Involved In 	Cells 		0
5413	Which of the brightest stars is furthest north	Capella		0
5414	Six ounces of what contains the minimum daily requirement for vitamin c	Orange juice		0
5415	What links Samuel Delaney, Fredrick Pohl, Harlan Ellison	Science Fiction		0
5416	What's the largest alluvial flood plain in the U.S.	Mississippi delta the mississippi delta		0
5417	Moses 10 plagues on Egypt - what was the fourth	Flies		0
5418	In what sport would you find a coffin	Cross country riding it’s a fence		0
5419	 Because its eyeball is fixed, the __________ must move its huge body to shift its line of sight.	Whale		0
5420	The quokka is a member of which animal family	Wallaby		0
5421	______________________________ tree house in Disneyland has 300,000 fake leaves on it which are changed twice a year to reflect the seasons.                                                                                                                   	The swiss family robinson		0
5422	Of the seven colours of the rainbow which is the middle one	Green		0
5423	Who was anatasia and drizella's stepsister	Cinderella		0
5424	What type of solution is made when a base dissolves in water	Alkaline		0
5425	Melvin R Bissell invented what in 1876 in the USA	Carpet Sweeper		0
5426	What does Karaoke literally mean	Empty Orchestra		0
5427	At Which Sport Was Hungarian Victor Barna World Singles Champion 5 Times 	Table Tennis 		0
5428	What is the atomic number for thalium	81		0
5429	On Different Strokes,who got kidnapped?	Sam		0
5430	What Do The Lyrics In The 1st Line Of The Elvis Presley Song “Blue Suede Shoes” Add Up To	6		0
5431	Who designed the steam engines Flying Scotsman and Mallard	Sir nigel gresley		0
5432	What large animal has a less than two inch erect penis	Gorilla		0
5433	What Is Diazepam Better Known As 	Valium 		0
5434	Name the band - songs include "Forgiven Not Forgotten, Runaway"?	The Coors		0
5435	Group of heroes led by Dick Grayson	New titans		0
5436	Indiana jones: name the second challenge	Word of god		0
5437	Which city is served by Schwekat airport	Vienna		0
5438	Romanian comunist president shot in december 1989	Nicolae ceausescu		0
5439	Famous book divided into three parts Mosques Caves Temples	Passage to India		0
5440	Which English composer wrote a Sea symphony	Ralph Vaughan Williams		0
5441	Who Is The Only Boxer To Win More Heavyweight Title Fights That Muhammed Ali	Joe Louis		0
5442	Which Brand Of Pizza Was Also The Title Of A 1990 Movie 	Goodfellas 		0
5443	Alopecia meaning baldness comes from Greek word for what	Fox - Mange = Bald		0
5444	BA British Airways AA American Airways what is AI	Air India		0
5445	Which actor said, "Love means never having to say you're sorry"?	Ryan O'Neil		0
5446	What is the basic unit of currency for Kuwait ?	Dinar		0
5447	Rome is the capital of ______	Italy		0
5448	What is another name for a spiny anteate	Echidna		0
5449	Which dog was originally bred by a tax collector in Germany for protection on his rounds	Doberman		0
5450	Where was the worlds first supermarket built (country)	France		0
5451	What is the general designation for the period in English history from 1640 to 1660	English Revolution		0
5452	The cecum is the pouch at the beginning of the..	Large intestine		0
5453	In Greek mythology who was the son of Hypnos God of sleep	Morphious - God of  dreams		0
5454	Admiral Horatio Nelson lost his arm at which battle	Tenerife		0
5455	What Is The Alcoholic Ingredient In A Bloody Mary 	Vodka 		0
5456	 Cattle branding was practiced 4,000 years ago. Old tomb paintings show __________ branding their fat, spotted cattle.	Egyptians		0
5457	What was thailand formerly known as	Siam		0
5458	What is the branch of theology which concerns itself with the grounds and defense of the christian faith	Apologetics		0
5459	What is the state capital of New York	Albany		0
5460	Sharp pointed projection on a plant	Thorn		0
5461	The Marino sheep originated in what country	Spain		0
5462	If you were waiting in Yonkers, in which U.S. state would you be	New york		0
5463	Better Known Down On The FarmWho Took The Starring Roll In Grease In 1997	Ian Kelsey		0
5464	With Which War Is Florence Nightingale Associated 	Crimean 		0
5465	Fax is short for which word	Facsimile		0
5466	Will Smith Is Better Known As Who	The Fresh Prince		0
5467	In which American state is Baltimore	Maryland		0
5468	The first person to swim the English Channel did so in what year	1875		0
5469	What is the Capital of: Fiji	Suva		0
5470	What is a group of elks called	Gang		0
5471	The Presenters Of The Classic Saturday Morning Show Swap Shop Released A Single But What Was The Name Of The Band	Brown Sauce		0
5472	What fruit family do almonds belong?	Peach		0
5473	This vegetable is a variety of broccoli	Calabrese		0
5474	Who Sang About "The King Of Rock & Roll" In 1988	Prefab Sprout		0
5475	In mythology the fountain Aganippe was famous to whom	Muses		0
5476	In 1954 Girls Names Were First Applied To And Used To Identify What	Hurricanes		0
5477	In What Famous Event In World History Did "Thomas Farynor" Play A Fundmental Role	The Great Fire Of London (Baker)		0
5478	A herb or drug described as 'haemostatic' performs which effect	Stops bleeding		0
5479	To coat metal with a protective layer by electrolysis	Anodize		0
5481	A nudist is Spain fined £65 - £60 for being nude and £5 for what	Having no ID papers		0
5482	Which American state is called 'The Silver State'	Nevada		0
5483	What is a 'california long white'	Potato		0
5484	Which gestalt entity produced the cult TV show Red Dwarf ?	(Grant( &| and|,)? Naylor|Naylor( &|and|,) Grant)		0
5485	What is the nickname for Alaska	Land of the midnight sun		0
5486	This was the sequel to "The Empire Strikes Back".	Return of the Jedi		0
5487	1980 Pac Man was released arcade version by which company	Midway		0
5488	BaseBall: The Texas _______	Rangers		0
5489	Where is the comemoration statue of fictional character Sherlock holems?	Baker Street, london		0
5490	Jack Palance won best supporting actor Oscar in what 1991 film	City Slickers		0
5491	Which canadian province has the largest population	Ontario		0
5492	Apparatus or specially constructed chamber for maintaining living organisms in an environment that encourages growth	Incubator		0
5493	What Is Tthe Ballet Term For Spinning On One Foot 	A Piroutte 		0
5494	Who recorded 'Cuts Like a Knife' in 1983?	Bryan Adams		0
5495	Who was the only English King crowned on the battlefield	Henry VII		0
5496	 The science of providing men, equipment and supplies for military operations is called ___________.	Logistics		0
5497	Which Bird Has The Largest Wingspan? 	The Albatross 		0
5498	What American state has a Thames river?	Connecticut		0
5499	Which Character Created By Dodie Smith Drove A Black & White Car & Wore A Black & White Fur Coat? 	Cruella De Vil 		0
5500	Mageiricophobia is a fear of what	Having to cook		0
5501	How is german measles also known ?	Rubella		0
5502	In which musical was the song "I remember it well"	Gigi		0
5503	How many engines does the saturn rocket boast	Eight		0
5504	Dr David Hessian 2nd Catherine Cookson what type his books	Gardening		0
5505	The Demologos was the first steam powered what	Warship		0
5506	Since 1991 Crufts London dog show has been held where	Birmingham NEC		0
5507	What is the chemical formula for water	H2o		0
5508	What name is given to the crater at the top of a volcano caused by its collapse	Caldera		0
5509	What airport has the code MME	Marseilles		0
5510	What is the capital of Turkey ?	Ankara		0
5511	What does an otologist study	Ears		0
5512	A health profession concerned with the prevention, diagnosis, & treatment of disorders of the teeth & adjacent tissues of the head, neck, & mouth	Dentistry		0
5513	What is the capital of Malawi ?	Lilongwe		0
5514	Who Had A Hit With "Jacobs Ladder"	Huey Lewis & The News		0
5515	As what is California also known	Golden state		0
5516	A young dogs a pup what's the correct name for a young skunk	A kit or kitten		0
5517	On Which Label Did Oasis Rise To Fame	Creation		0
5518	Who replaced Ronnie James Dio in Black Sabbath?	Ian Gillan		0
5519	Who composed the opera Turendot	Giacomo Puccini		0
5520	Who was dingaan's predecessor	Shaka		0
5521	For which label did Elvis first record? 	Sun Records 		0
5522	In Omaha Parents can be arrested if child does what in church	Burps		0
5523	What do zoologists call the leader of a wolf pack	The alpha male		0
5524	Who Co Wrote The Band Aid Single "Do They Know It's Chrismas"	Bob Geldof & Midge Ure		0
5525	Which Horror Film Star Was Portrayed In An Oscar Winning Performance By Martin Landau In Tim Burtons 1994 Film About Cult Filmaker Ed- Wood 	Bella Logosi 		0
5526	"When are the '12 Days of Christmas'? ""Dec 14th - Dec 25th) - (Dec 21-Jan 1) - (Dec 26 - Jan 6) - (Christmas Eve-Jan 4th) " 	(Dec 26 - Jan 6) 		0
5527	Which star of films such as 'Ryan's Daughter' died in 1997	Robert mitchum		0
5528	Who was the female star of Basic Instinct	Sharon Stone		0
5529	Which U. S. State provided the title of a Bee Gees hit single	Massachusetts		0
5530	1500 paces was what Roman measurement	League		0
5531	Which sea is located between Australia and New Zealand?	Tasman		0
5532	The city of Sheffield stands on the River Sheaf; and on which other, major, river	Dublin		0
5533	In the Bible David played the Kinnor what is a Kinnor	Lyre		0
5534	Acadia was the original name of which Canadian province?	Nova Scotia		0
5535	How much did greta garbo insure her legs for	One million dollars		0
5536	What eighties TV show starred Bruce Willis in a detective agency? 	Moonlighting 		0
5537	Football: The Seattle _______.	Seahawks		0
5538	Odontophobia is the fear of	Teeth dental surgery		0
5539	Which Sport Was Banned In England In 1849	Cock Fighting		0
5540	Who Batted With An Aluminium Bat 	Dennis Lillee 		0
5541	On what island is pearl harbor	Oahu		0
5542	What kind of surface is tennis' French open tournament played on	Clay		0
5543	Into which estuary do the Trent and Ouse flow?	Humber		0
5544	Who has played in the most consecutive baseball games?	Cal Ripken Jr		0
5545	Selaphobia is the fear of	Light flashes		0
5546	Wedding rings are normally worn on what finger of your hand	Ring		0
5547	In Norse mythology women were made from a tree - which tree	Elm		0
5548	75% industrial accidents happen to people who ain't done what	Eaten Breakfast		0
5549	Which Suffolk town can boast no fewer than three 15th century perpendicular gothic churches?	Sudbury		0
5550	What word come from the Latin phrase "to be ashamed of"	Pudenda		0
5551	What was steven spielberg's first film	The duel		0
5552	Which drink does Melanie Sykes advertise on TV	Boddingtons		0
5553	Who recorded the Immaculate Collection?	Madonna		0
5554	Name Alfred Hitchcock's first sound film as director	Blackmail		0
5555	Which Hitchcock film starred Margaret Lockwood and Michael Redgrave	The lady vanishes		0
5556	What did friar roger bacon invent	Magnifying glass		0
5557	Complete the classic advertising slogan 'Good Old Bertie Bassett_____'? 	He's Britain's Greatest Asset 		0
5558	Which country saw the Mau Mau uprising	Kenya		0
5559	Parasitophobia is a fear of ______	Parasites		0
5560	What is the highest peak in Fiji?	Mount Victoria		0
5561	Rheoboam is a bottle size but also the last king of where	Israel		0
5562	What did Captain Matthew Webb swim first?	English Channel		0
5563	 Animals that once existed but don't exist now are said to be ______.	Extinct		0
5564	Which Axis Powers In World War II Fought With The Allies In World War I? 	Japan & Italy 		0
5565	What golden yellow gem sounds like a fruit related to lemons	Citrine		0
5566	Where Might You Drink The Wine Retsina 	Greece 		0
5567	According to some legends, what holiday decorating practice is attributed to spiders? 	Tinsel 		0
5568	Who is Edson Arantes do Nascimento better known as?	Pele		0
5569	Which Country Used More Condoms Last Year Than Any Other? (2005)	Japan		0
5570	Who steals the Pink Panther in the original film	The Phantom		0
5571	What is the only river that flows both north and south of the equator, crossing it twice	Congo		0
5572	The Hard Rock Cafe is named after a song by what band?	The Doors		0
5573	Tomatillo is a feature in what countries cusine	Mexico		0
5574	Walrus tusks are made of ________	Ivory		0
5575	Which Famous Rapper Was Born Stanley Kirk Burrel In 1962	MC Hammer		0
5576	The Titanic has a sister ship - name it	The Olympic		0
5577	The Inquisition forced this person to recant his belief in the Coppernican Theory. Who was he	Galileo		0
5578	How In The World Of Music First Discovered On A 2007 Reality TV Show Is "Vivien Smallwood" Better Known	The Rapping Granny		0
5579	Which Hollywood heart throbs real name was Roy Scherer	Rock hudson		0
5580	How long is a giraffe's tongue	21 inches		0
5581	Which Car Manufacturer's Name Means I Hear?	Audi		0
5582	Wayne Brazel shot and killed what Western figure in 20th cent	Pat Garret		0
5583	Which borough is northeast of and adjacent to Manhattan? 	The Bronx 		0
5584	Name the world's most photographed and most climbed mountain.	Fuji		0
5585	What is Jane Fonda's middle name	Seymour		0
5586	What is the capital of albania	Tirana		0
5587	In ballet, a closed position of the feet.	Fermé		0
5588	 __________ communicate in sound waves below the frequency that humans can hear.	Elephants		0
5589	Which 60s film was the true story of Helen Keller 	The Miracle Worker 		0
5590	What have Jan Zajic and Quang Duc got in common	Self Immolation		0
5591	What Is The Technique Called In Which You Right A Capsized Canoe 	Eskimo Roll 		0
5592	Whose Songs Were Recorded By A Variety Of Artists On The Album "Red Hot And Blue"	Cole Porter		0
5593	What links horses rabbits and rats	Cannot Vomit		0
5594	Which Italian city was severely damaged by an earthquake in 1908	Messina		0
5595	What book of the Bible does not mention the name of God	Esther		0
5596	The Volga is Europe longest river what is the second longest	Danube		0
5597	What is a kissing gourami	Tropical fish		0
5598	Who wrote The female of the species more deadly than the male	Rudyard Kipling		0
5599	Limnology is the study of what	Marshes from Greek		0
5600	Who Is Martin Fry Lead Singer With	ABC		0
5601	If the vestal virgins were caught having sex what punishment	Burried Alive		0
5602	Who was, "First in war, first in peace and first in the hearts of his countrymen"?	George Washington		0
5603	In which European city are the headquarters of OPEC (Organisation of Petroleum Exporting Countries)	Vienna		0
5604	Who was the author of 'Dracula'?	Bram Stoker		0
5605	Measure for Measure deals with what contemporary theme	Angelo harasses Isabella sexually		0
5606	Which Teen Idol First Found Success In The Partidge Family	David Cassidy		0
5607	UK group who had a hit with 'House of the Rising Sun'	Animals		0
5608	What's the international radio code word for the letter "M"	Mike		0
5609	If you have Chlorosis what colour does the skin go	Green		0
5610	Dwight York & Jimmy Floyd Hasselbaink Were Two Foreign Players Who Were First To Score 100 Goals In the English Premiership Who Was The Third? 	Thierry Henry 		0
5611	What film gave the following hype "brando sings!"	Guys and dolls		0
5612	Over 90% of the worlds total population of what gone since 1970	Rhinoceros		0
5613	Who Is The Author Of High Fidelity A Tale Set In An 80's Record Store	Nick Hornby		0
5614	What eponymous Dickens character born with a caul over head	David Copperfield		0
5615	What is the official residence of the Lord Mayor of London?	Mansion House		0
5616	What wonder stood 32m high in rhodes harbour?	Colossus of Rhodes		0
5617	What is the Capital of: South Africa	Pretoria		0
5618	Jan 21 1976 What linked Bahrain and Rio de Janeiro	1st Concord passenger destinations		0
5619	What was awarded to a football player who scored 3 goals in one match	Hat		0
5620	Caracul, Dorset, Urial, Mufflon and Jacobs are types of what	Sheep		0
5621	Which English cathedral is famous for its whispering gallery	St paul's		0
5622	Fill in the blank: ___ on a limb	Out		0
5623	What is the name of the summer camp in the Friday 13th movies 	Camp Crystal Lake 		0
5624	What was the name of the hit by The Archies	Sugar sugar		0
5625	Which country's borders was established in 1919 by the 'Treaty of St.Germain'	Austria		0
5626	Mary Somerville said "It wont last, a flash in the pan" what	Television		0
5627	On which River does the City of Dublin stand 	The Liffey 		0
5628	Alanis Morrisette appeared on what 80's cable children's show? 	You Can't Do that On Television 		0
5629	What is the alternative name of the foodstuff called scallions	Spring onions		0
5630	Complete This partnership Hinge and ? 	Bracket 		0
5631	Other than 'she loves you', in which other beatles number one hit can you hear the words 'she loves you, yeah, yeah, yeah	All you need is love		0
5632	Who is the subject of Anouilh's play L'Alouette ( The Lark )	Joan of arc		0
5633	Who said 'hitch your wagon to a star'	Ralph waldo emerson		0
5634	Who Established Paisley Park As His Own Record Label	Prince		0
5635	Actor ______ Borgnine	Ernest		0
5636	What dinosaurs name translates as three horned	Triceratops		0
5637	What does a dowser do	Find water		0
5638	From which album did the original version of Elton John's Candle in the Wind come	Goodbye yellow brick road		0
5639	What confection named for a French field marshal chef made it	Praline		0
5640	Which Hot Dance Classic Did The Trammps Bring Us	Disco Inferno		0
5641	Name the carnivorous mammal related to the hyena	Aardwolf		0
5642	In Yugoslavia if you asked for Pljeskavice what do you get	Hamburger		0
5643	What item would you see on the flag of Malta	George Cross		0
5644	Which actress was in the TV movies: The Oddyssey,and Merlin?	Isabella Rosselini		0
5645	Claylike mineral, chief source of aluminium	Bauxite		0
5646	International Airline Registrations OO is what country	Belgium		0
5647	What is the county town of Cornwall? 	Truro 		0
5648	In Scottish Gaelic what is a clarsach	A Harp		0
5649	Which had a hit with the song “Obviously” in 2004?	McFly		0
5650	In the TV series 'Seinfeld', who plays Kramer?	Michael Richards		0
5651	How many days are there in a fortnight	Fourteen		0
5652	What type of instrument is a celeste	Keyboard		0
5653	Name 2 Of The 3 South American Countries Through Which The Equator Passes 	Brazil, Equador, Columbia 		0
5654	Crosby Stills and Nash debut album included this captivating song about a girl and the colour of her eyes	Sweet judy blue eyes		0
5655	Who starred in the 1916 film 'intolerance'	Seena owen		0
5656	 Cats have more than one hundred vocal sounds, while dogs only have about __________	10		0
5657	Soleil Moon Frye was the real name of which young eighties sitcom star, whose character name was also the title of the show? 	Punky Brewster 		0
5658	What is the medical term for ear wax	Cerumen		0
5659	Which Historical Figure Sadly Passed Away On The 18th April 1955	Albert Einstein		0
5660	All Were Released In Which Year: "Anarchy In The Uk", "Fernando", "A Star Is Born"	1976		0
5661	What 18th century German soldier told very tall tales of himself	Baron Munchhausen		0
5662	What country is home to the bank of alexandria	Egypt		0
5663	What ingredient is added to wine to make port? 	Brandy 		0
5664	Americans eat approximately 100 acres of what each day?	Pizza		0
5665	Traditionally what should be given on an 11th anniversary	Steel		0
5666	Who Is Julie Andrews Married To ? 	Blake Edwards 		0
5667	What Nationality Was The Chemist Alfred Nobel 	Swedish 		0
5668	What is the deleterious gas in the air, which is exhaled by humans called	Carbon dioxide		0
5669	What is the second book of the old testament	Exodus		0
5670	What does per capita literally mean	Per Head		0
5671	How many pockets are there on a true billiard table	None		0
5672	To which saint is the cathedral in Prague dedicated	Saint vitus		0
5673	Which famous mathematician and astronomer was born on Christmas day in 1642 	Sir Isaac Newton 		0
5674	Which is Shakespeare's shortest play	The Comedy of Errors		0
5675	What instrument is used to measure the strength of a magnetic field	Magnetometer		0
5676	When is the longest day in the southern hemisphere	December		0
5677	What Does A Black Flag Signify In Motor Racing 	Driver Disqualified 		0
5678	In Which Country Did The Cheese Emmanthal Originate Was It France, Switzerland, Denmark Or Belgium? 	Switzerland 		0
5679	Who rode a horse called Diomed	Duke of Wellington		0
5680	Thick light bark of S.European oak	Cork		0
5681	Which literary character takes his name from Latin for nobody	Captain Nemo		0
5682	Which film director created "Olympiad" - a celebration of the 1936 Olympics and Nazi ideology	Leni riefenstahil		0
5683	Fran Philps of Canada was the first woman to do what	Reach the North Pole		0
5684	Which part of the body suffers from opthalmia	Eyes		0
5685	Tarsus, metatarsus, and phalanges are parts of a ______	Foot		0
5686	Chablis comes from which French wine region? 	Burgundy 		0
5687	What Common Affliction Makes The Lens Of The Eye Go Opaque 	Cataracts 		0
5688	Dogs bark, donkeys ______	Bray		0
5689	What Is The Annual Yield Of A Single Coffee Plant 	1kg 		0
5690	What tribe walked the 'trail of tears'	Cherokee		0
5691	He was the second King of Israel.	David		0
5692	When Dino was Fred's pet what was Barney's called	Hoppy a Hoparoo		0
5693	In "Don't You Want Me Baby" By The Human League Where Did The Waitress Work	In A Cocktail Bar		0
5694	Who created the 'purple heart' decoration in 1782	George washington		0
5695	What does ring a ring a roses refer to	The Black Death		0
5696	Person who undertakes commercial venture	Entrepreneur		0
5697	Who earned the moniker "Lady Lindy"	Amelia earhart		0
5698	Who sang with 'The Dakotas'?	Billy J. Kramer		0
5700	The Aetherius Society believes who is alive and living on Venus	Jesus Christ		0
5701	In Memphis Tennessee beggars must have what before begging	A $10 begging licence 1996 law		0
5702	French artist Aquabouse paints cows in what material	Cow shit		0
5703	Where could you legally flash your dong  - then spend it	Vietnam currency		0
5704	Which actor played Mozart in the 1984 film Amadeus	Tom hulse		0
5705	Turnov Rusty and Bobo appear in what stage musical	Starlight Express		0
5706	Dan Emmett a northerner wrote which song	Dixie		0
5707	Who was not an original 'charlie's angel'	Cheryl ladd		0
5708	What is the flower that stands for: suspceptibility	Passion-flower		0
5709	Roman men had to swear on what to testify	Holding their testicles		0
5710	Cathy Rigby was the first woman to do what	Pose Nude sports illustrated		0
5711	What is the Capital of: Bermuda	Hamilton		0
5712	From the bull what colour is fourth on an archery target	Black		0
5713	 The bat is the only mammal that can __________	Fly		0
5714	A shark is the only fish that can do it - do what	Blink with both eyes same time		0
5715	Mozart wrote Ah, Vous Dirai-Je, Maman what's its English title	Twinkle – Twinkle little star		0
5716	What object is said to bring bad luck if it is broken	Mirror		0
5717	Who was Agrippa's son	Nero		0
5718	What was the highest grossing american silent movie	Birth of a nation		0
5719	Collective nouns - a streak of which creatures	Tigers		0
5720	For the holy grail in the monty python parody 'search for the holy grail', what did arthur's servant use to make the sound of horses hooves	Empty coconuts		0
5721	Which British statesman, Minister of Labour in the National Government 1940-45, became Foreign Secretary in 1945	Ernest bevin		0
5722	To which group of artists does Vincent Van Gough belong	Post Impressionists		0
5723	Where did the bay of pigs take place	Cuba		0
5724	What is the basic unit of currency for Cambodia ?	Riel		0
5725	What is the capital of Canada	Ottawa		0
5726	The Mask In The Movie "Scream" Was Inspired By The Painting "The Scream" But Who Painted It	Edvard Munch		0
5727	Which motorway is, being developed as a ring motorway round Manchester	M60		0
5728	In ancient Assyria and Babylonia, a tower in the shape of a stepped pyramide. It formed the base of a temple.	Ziggurat		0
5729	What was Richard Wagner composing intermittently between 1848 and 1874?	The Ring Cycle		0
5730	Who Are The 2 Members Of Wilson Phillips	Carnie & Wendy Wilson		0
5731	Who sang the song "We Didn't Start The Fire"?	Billy Joel		0
5732	What type of creature is a Fritillary	Butterfly		0
5733	Who was the first British monarch to visit America	George VI in 1939		0
5734	What 'SG' Do The Salt And Pepper Say To Eachother At Christmas Time 	Seasons Greetings 		0
5735	Many thought this song stood for lsd, but john lennon insisted it was about a girl at his son's school. what is the song title	Lucy in the sky with		0
5736	In London when did the Globe Theatre catch fire	1613		0
5737	What pet did Florence Nightingale carry with her	An Owl (in her pocket)		0
5738	What Was The Mistake On Elvis Presleys Birth Certificate	Middle Name AAron Was Mispelt		0
5739	What is a flat-bottomed conical laboratory flask with a narrow neck	Erlenmeyer flask		0
5740	In 1778 name the first country to send an ambassador to US	France		0
5741	Mohs scale hardest substance is diamond - what's the softest	Talc		0
5742	Which Best Selling Band Named Themselves After A Price Buster Song	Madness		0
5743	Drinking vessel with foot and stem	Goblet		0
5744	Which company produced the syndicated mouse factory series	Walt disney		0
5745	What term has gradually replaced "jungle" because it "has a nice ring to it," according to William Safire	Rain forest		0
5746	Who wrote Auld Lange Syne? 	Robert Burns 		0
5747	Term for an emasculated male pig	Barrow		0
5748	What is the main food of most bats	Insects		0
5749	What appears in the middle of the Rwandan flag	Capital R		0
5750	This film starring Richard Beymer and Natalie Wood won the best picture Oscar for 1961.	West Side Story		0
5751	What Is The Real Name Of Rick Nelson	Erick Nelson		0
5752	The Chipmonks Were The Bran Child Of David Seville But What Was Sevilles Real Name	Ross Bagdasarian		0
5753	What countries international car registration letters are DZ	Algeria		0
5754	In medical descriptions, what is the meaning of the term "chronic"	Lingering, lasting		0
5755	Which item first appeared in Superior Hotel Montana in 1908	Gideon Bible		0
5756	On which river does the city of Oporto stand	Douro		0
5757	How Many Times Was Stephen Hendry Crowned World Champion In The 1990's Was It (6,7,8,9) 	Seven 		0
5758	McLean Stevenson played which character in MASH	Colonel Blake		0
5759	Old fashioned word for a prostitute	Harlot		0
5760	Who was the Norse god of peace & prosperity	Frey		0
5761	Which comic character is both a princess and a prince	Wonder Woman –  Diana Prince		0
5762	Film title ' ______, a space odyssey'	2001		0
5763	Colonel Jacob Schick invented what in 1928 in USA	Electric Razor		0
5764	Name the swimmer who became a Hollywood star in the 1940's and 50s in films such as Bathing beauty and Neptune's Daughter	Esther williams		0
5765	What is the opposite of allopathy	Homeopathy		0
5766	Who owns the Audi car company	Ford motor company		0
5767	What does the word "amen" mean	Let it be		0
5768	In which state is hoover dam 	Arizona 		0
5769	Who wrote the children's classic Ann of Green Gables	L M Montgomery		0
5770	Gertrude Ederlie (USA) was the first woman to do what	Swim English Channel		0
5771	Whats the name given a star that has collapsed into no dimensions	Black hole		0
5772	What is the name of the Family Circus's dog	Barf		0
5773	Singer Chrisssie Hynde Married Which Member Of Simple Minds	Jim Kerr		0
5774	The flower convallaria is better known as what	Lily of the Valley		0
5775	Norse mythology who was killed with mistletoe by blind Hodur	Balder - most loved god		0
5776	Which vegetable has the most calories? 	Avovado 		0
5777	Through which ocean does the International Date Line approximately follow the 180 degree meridian?	Pacific Ocean		0
5778	What is the more common name for 'self contained underwater breathing apparatus	Scuba		0
5779	Who starred in cartoon where the Tasmanian Devil 1st appeared	Bugs Bunny – Devil may Hare		0
5780	This man was Time magazine's 1938 "Man of the Year"	Adolf hitler		0
5781	What is the Capital of: Cyprus	Nicosia		0
5782	How fast does the tip of a standard rotary mower travel? (in km/h)	200		0
5783	Who is the Roman Goddess of Hunting	Diana		0
5784	On Full House,what was Jesse's REAL first name?	Hermes		0
5785	What is a nibong a type of	Palm tree		0
5786	Who won an Oscar as Best Supporting actor in the 1993 film 'The Fugitive'	Tommy lee jones		0
5787	Who is frank cujo now known as	Jean-claude van damme		0
5788	What is the fruit of the hawthorn called	Haw		0
5789	What can be Safety, Tableaux or Swag	Curtains in theatre		0
5790	What did eli whitney invent	Cotton gin		0
5791	1899 what first was installed Palace Royal hotel San Francisco	Jukebox		0
5792	Martin what 1980's tv series starred bruce willis	Moonlighting		0
5793	In mediaval history, who was the lover of Heloise	Abelard		0
5794	Who is only artist that toured with Elvis, Beatles and Eagles	Roy Orbison		0
5795	H.R. Haldeman and Ron Ziegler, who helped plan the __________ burglary for President Nixon, both worked at Disneyland when they were younger. 	Watergate		0
5796	Official scrutiny of accounts	Audit		0
5797	What is the only Christian country in Asia	The Philippines		0
5798	Collective nouns - Team Plump Flush Safe Smeath of what	Ducks		0
5799	Rhapsody, Aromel, Tamella Cambridge favourite types of what	Strawberry Varieties		0
5800	During which conflict did the battles of Alma and Inkermann take place	The crimean war		0
5801	What is Bart Simpson's middle name	JoJo		0
5802	Building for housing aircraft	Hanger		0
5803	Where did the card game 'bridge' originate	Turkey		0
5804	The official 'Battle of Britain Memorial Flight' museum is based at which RAF station?	RAF Coningsby		0
5805	Architectural style developed in the Eastern Empire	Byzantine		0
5806	Bridgeport is the largest city in which state 	Connecticut 		0
5807	What Type Of Mammel Is The Tasmanian Devil? 	A Marsupial 		0
5808	Where is the dalai lama's palace	Tibet		0
5809	In law what is a co-parcener	Joint Heir		0
5810	Frigophobia is a fear of ______	Cold		0
5811	Thomas Minton at Stoke on Trent created what in 1789	The Willow Pattern		0
5812	What was first used at the 1904 St Louis Olympic games	Gold medals silver was first before		0
5813	Why did eggs become significant at Easter? 	They represent fertility & new beginnings at spring time 		0
5814	80% of vibrator using English women don’t do what with it	Insert it		0
5815	The film 'The Wizard of Oz' was released in which year	1939		0
5816	Who was born in Limbini Nepal	Buddha		0
5817	Name The First Top Ten Hit For Genesis Reaching No 7 In 1978	Follow You Follow Me		0
5818	With Which Rock Band Does "Slash" Play Guitar	Guns N Roses		0
5819	John Hetherington in London introduced what in 1797	Top Hats		0
5820	In their lifetime the average human grows 8 feet of what	Nose Hair		0
5821	Who Is Generally Credited With Freeing The Role Of The Jazz Guitar To That Of A Solo Instrument	Charlie Christian		0
5822	Who recorded the album "Freak Out"	Frank zappa		0
5823	Who was codenamed Napoleon by the secret service	Frank Sinatra		0
5824	What is the capital of Singapore?	Singapore		0
5825	Name The European City Tjhat Was A Hit For Ultravox In The 80's	Vienna		0
5826	During which month is the longest day in the Northern hemisphere?	June		0
5827	For what are Allen and Wright most famous?	Root beer		0
5828	Who took the title "Lord Protector of the Commonwelth of England, Scotland, and Ireland" ?	Oliver Cromwell		0
5829	What U.S. state includes the telephone area code 601	Mississippi		0
5830	The remains of prehistoric organisms that have been preserved in rocks are called ________	Fossils		0
5831	Who was john reid	Lone ranger		0
5832	What is a person who maliciously starts fires	Arsonist		0
5833	Who painted the Laughing Cavalier?	Franz Hals		0
5834	In the abbreviation VDU what does the V stand for	Visual		0
5835	What name is given to a boxer who leads with his right hand	Southpaw		0
5836	What job has a pudentacurist	Shapes pussy hair		0
5837	Many female children are named 'friday' after which patron saint of oxford	St frideswide		0
5838	Ride On Time Spent 6 Weeks At No.1 In The UK In 1989 For Whom	Black Box		0
5839	Which 1950s films took place in Hawaii 1941 	From Here to Eternity 		0
5840	Name The Group That Had A Hit With "Inside" The Musical Backdrop To A Levi's Ad	Stiltskin		0
5841	If you're in the northern hemisphere, Polaris, the North Star, can be found by looking which direction	North		0
5842	Who recorded the album "Troubadour" in 1976	Jj cale		0
5843	From which team did marlboro switch its backing to mclaren in the 1974 season	Brm		0
5844	What common item were once called moth patches	Freckles		0
5845	In what did ray walston play 'uncle tim'	My favourite martian		0
5846	What TV series had a signature tune called Liberty Bell	Monty Pythons Flying Circus		0
5847	What is the most famous 500 mile car race in the U.S.	Indianapolis 500		0
5848	What Is A Boullabaisse 	A French Fish Soup Or Stew 		0
5849	What is the opposite of an utopia?	Dystopia		0
5850	Terry Hall Of Fun Boy Three Later Formed A New Band Was It Called The Colourbox Or The Colourfield	The Colourfield		0
5851	What act do the French call The English Perversion	Whipping Flagellation		0
5852	Lauds Prime Tierce Sext Nones what comes next	Vespers		0
5853	What U.S. state grants the most fishing licenses	California		0
5854	What was the language of ancient india	Sanskrit		0
5855	Humbert Humbert' is a character in which book	Lolita		0
5856	Formerly with Spencer Davis, he went on to form Traffic with Dave Mason. He is?	Steve Winwood		0
5857	Who was the author of the novel 'The Midwich Cuckoos'?	John Wyndham		0
5858	Who is known as (King Kenny)? 	Kenny Dalglish 		0
5859	What bone connects your shoulder blade & elbow joint	The humerus humerus		0
5860	The German New Year's carnival	Fasching		0
5861	Who was the male star of the 1967 film Barefoot in the Park	Robert redford		0
5862	Over which islands did britain and argentina fight in 1982	Falkland islands		0
5863	What was the first Pink Floyd album	Piper at the gates of dawn		0
5864	As who is Cassius Clay now known?	Mohammed Ali		0
5865	Where did the card game 'bridge' originate?	Turkey		0
5866	The festival of Halloween was first celebrated by which ancient tribe 	The Celts 		0
5867	The city with the most riders in it's subway system is what	Moscow		0
5868	James Hepburn, the fourth Earl of Bothwell, died in 1578. Who did he marry in 1567	Mary Queen of Scots		0
5869	What is the Hobbit's favourite food	Mushrooms		0
5870	Which eighties album, that sold 20 million plus copies, featured Vincent Price	Thriller		0
5871	In the Winnie the Pooh stories what is Kanga’s baby called	Roo		0
5872	What is the most popular South American aphrodisiac	Piranha head soup		0
5873	What did clio represent in the nine muses	History		0
5874	What is the name of the leading female star in an opera	Prima donna		0
5875	What was George Hepplewhite's profession	Furniture maker		0
5876	What is a collection of penguins known as	Rookery		0
5877	In the Christmas song 'White Christmas' what did children listen for? 	Sleigh Bells 		0
5878	What is the more common name of Sildenafil Citrate	Viagra		0
5879	One person every 6 seconds dies from what	Contaminated water diseases		0
5880	Girls name can mean big fruit basket or a meeting whaling captains	Molly		0
5881	A bone specialist is a(n) ________.	Osteopath		0
5882	 Legal Terms: A crime more serious than a misdemeanor.	Felony		0
5883	Who was the longest reigning Prime Minister of Britain in the 20th Century?	Margaret Thatcher		0
5884	Who was the male star of the 1998 'blockbuster' film Titanic	Leonardo di caprio		0
5885	Which actor played the marine expert Matt Hooper in the film Jaws	Richard dreyfuss		0
5886	Which former British TV celebrity designed the logo for children's TV programme 'Blue Peter'?	Tony Hart		0
5887	Martin British rock-music group that rivaled the popularity of the group's early contemporaries, The Beatles	The rolling stones		0
5888	Which American state is nicknamed 'The Empire State of the South' or 'Peach State'	Georgia		0
5889	Galena is a major ore of which metal	Lead		0
5890	Roast turkey: does white/dark meat have most calories? 	Dark 		0
5891	The canary islands in the pacific are named after what animal	Dog dogs		0
5892	Susan Brown Was the first woman to Take Part In which race 	The Boat Race 		0
5893	Fly that bites cattle	Gadfly		0
5894	Name the ship lost off Zuyder Zee in 1799 from which a famous item was salvaged in 1858	Lutine		0
5895	The skin of which animal is used to make Morocco Leather	Goat		0
5896	Which French actor director takes the role of 'Monsieur Hulot' in films such as Mon Oncle and Traffic	Jacques tati		0
5897	What is the world's largest desert	Sahara desert		0
5898	Where Is The Glenveagh National Park 	County Donegal, Ireland 		0
5899	A ship due to leave port flies a 'Blue Peter'. What does the flag look like	Blue rectangle with a white rectangular centre		0
5900	Which actress caused a sensation by appearing naked in the opening scene of the 1957 film _And God Created Woman _directed by her then husband Roger Vadim 	Brigitte Bardot 		0
5901	What is the name for the number 1 followed by 100 zeros	Google		0
5902	According to psychologists the happiest people watch what TV	Soap Operas		0
5903	The sun sets in the ____?	West		0
5904	What Foodwise Is A Munster Plum	A Potato		0
5905	Luxembourg is the capital of ______	Luxembourg		0
5906	Name One Of The Two Classic Tracks On A Barry Manilow Single Released In 1978	Copacobana & Somewhere In The Night		0
5907	What Does A Chiropodist Treat 	The Feet 		0
5908	Who made his debut in a 1955 Warner Brothers cartoon	Speedy Gonzales		0
5909	Spanish dictator Franco nominated whom as his successor	Prince juan carlos		0
5910	Oriental market	Bazaar		0
5911	If the groundhog sees his shadow on Feb. 2, there will be how many more weeks of bad weather?	Six		0
5912	Salted and glazed biscuit shaped like a knot 	Pretzel 		0
5913	What's ibm's motto	Think		0
5914	In which ocean is mauritius	Indian ocean		0
5915	What food item in French literally means twice cooked	Biscuit		0
5916	Heliophobia is a fear of ______	Sun		0
5917	Do the pupils in a person's eyes get larger or smaller in bright light	Smaller		0
5918	How is "Rodrigo Diaz de Vivar" better known	El cid		0
5919	Which country is indicated by the car identification letters RA	Argentina		0
5920	Why Did Henry Ford Say People Can Have A Model T Ford In Any Colour Just So Long As It Was Black 	Japan Black Enamel Was The Only Paint That Would Dry Quick Enough to Keep Up With The Assembly Line 		0
5921	Lansing is the capital of ______	Michigan		0
5922	What Did Slipstream Tell Us They Were Doing In 1992	We Are Raving - The Anthem		0
5923	In the US what links Fort McHenry with the moon	Flag flies 24/7  president decree		0
5924	Which author wrote about the fictional Napoleonic war hero Sharpe	Bernard cornwell		0
5925	A triangle with three equal sides is called _______.	Equilateral		0
5926	Freya was the norse goddess of ______	Love and fertility		0
5927	Second city: St. Croix (U.S. Virgin Islands)	St. thomas		0
5928	Who invented popcorn	American Indians		0
5929	What song does Rodney Dangerfield sing in "Back To School"	Twist and		0
5930	In the Gene Pitney how many hours was it from Tulsa?	24		0
5931	Which course was the first on the European mainland to host the Ryder Cup?	Valderama		0
5932	What was the first cartoon character called	Oswald the rabbit		0
5933	Who Was Assassinated By Two Sikh Bodyguards 	Indiri Gandhi 		0
5934	Name the loner rebel reindeer with the red shiny nose.	Rudolph		0
5935	Football: The Baltimore ________.	Colts		0
5936	Time during which a machine esp. computer is out of action or unavailable for use	Down time		0
5937	What Georgia town did the first Dukes of Hazzard episodes take place?	Covington,Georgia		0
5938	In which play does dame pliant appear	Alchemist		0
5939	Which peoples name translates as eaters of raw flesh	Eskimo		0
5940	This is the symbol for tin.	Sn		0
5941	What was betty grable's nickname	The legs		0
5942	What name is given to any muscle with three heads	Triceps		0
5943	Who was the 32nd president of the U.S.	Franklin d roosevelt		0
5944	Who invented popsicles	Frank epperson		0
5945	Which nation has an AK-47 assault rifle on its flag?	Mozambique		0
5946	The _____________ got its name from the occasionally extensive blooms of algae that, upon dying, turn the sea's normally intense blue_green waters to red.	Red sea		0
5947	What is the name of the cartilage flap at the trachea which prevents food going down the wrong way	Epiglottis		0
5948	What is tattooed on Glen Campbell's arm?	Dagger		0
5949	Where were the 1960 Olympics held ?	Rome, Italy		0
5950	What is the highest mountain in the world?	Mount Everest		0
5951	Who was born Mark Feld	Marc Bolan		0
5952	In The Inspirational 1946 Film 'Its A Wonderful Life' What Is The Name Of George Baileys Guardian Angel 	Clarence Oddbody 		0
5953	East berlin was the capital of ______	East germany		0
5954	The second tallest mountain on earth	K2		0
5955	What vegetable was Emperor Nero's favourite	The Leek		0
5956	In painting, the degree of lightness or darkness in a color.	Values		0
5957	What is the middle name of author Arthur C. Clarke	Charles		0
5958	What is Mario's profession?                                                                                                          	Plumber		0
5959	There are 20 days in the week in whose calendar	Aztec		0
5960	Philosopher Jeremy Bentham has a very unusual pet - what	Tea Pot		0
5961	Which county cricket team play their home games at Grace Road? 	Leicestershire 		0
5962	Who Sang About "Skipping The Light Fandango" & Turning Cartwheels	Procol Harem		0
5963	Keats Who was the first astronaut to return to space	Gus grissom		0
5964	Who is the author of "Harry Potter" ?	Joan Rowling		0
5965	Arachnoid refers to what kind of insect	Spider		0
5966	Who had a number 1 record in 1963 with Sweets For My Sweet? 	The Searchers 		0
5967	Name the pain-inflicting person you go to to get your teeth fixed.	Dentist		0
5968	Fat Albert and friends was created by ______ ?	Bill Cosby		0
5969	"Night of he Hunter' was the only film directed by which actor	Charles laughton		0
5970	What Cheers actor was in "The Empire Strikes Back?"	John Ratzenberg		0
5971	In the Ian Fleming novel "Goldfinger", what was Goldfinger's first name	Auric		0
5972	On the PH scale what does PH stand for	Potential Hydrogen		0
5973	Which Company Advertised With The Slogan "Someday All Watches Will Be Made This Way"	Seiko		0
5974	Who played The Fugitive	David Jason		0
5975	What was in Catherine's crucifix in the movie Cruel Intentions?	Cocaine		0
5976	To who did the lady of the lake give excalibur	Sir lancelot		0
5977	Which film was grace kelly making when she met prince ranier	To catch a		0
5978	Who Said 'I Hope Harry Secombe Goes Before Me, I Don't Want Him Singing At My Funeral'? 	Spike Milligan 		0
5979	In which 1989 film did Kevin Costner play Ray Kinsella?	Field Of Dreams		0
5980	Which mountains are between the Caspian Sea and the Black Sea	Caucasus		0
5981	Bantu-speaking people of southern Africa	Zulu		0
5982	In which city is the famous Bond Street?	London		0
5983	Where are Bay of Heats and Bay of Dew Sinus Aestuum - Roris	Near side of Moon		0
5984	Square of cloth used to wipe nose	Handkerchief		0
5985	Which Famous City Bridge Is Known Locally As The Coathanger 	Sydney Harbour Bridge 		0
5986	A Stag with 12 point antlers is known as a what	Royal		0
5987	Which Bone Is The Patella 	The Knee Cap 		0
5988	You can have a troop of actors and what group of animals	Monkeys		0
5989	 The largest jellyfish in the world has a bell that can reach 8 feet across and tentacles that extend over half the length of a __________	Football field		0
5990	Vinnie Jones is associated with which sport	Football		0
5991	Name The UK Label Associated With A Dog Named Nipper	HMV		0
5992	Who Preceded Phil Collins As The Lead Singer Of Genesis?	Peter Gabriel		0
5993	Creator of Perry Mason	Erle stanley gardner		0
5994	What's the word for the front of a dogs chest and joint of beef	Brisket		0
5995	Which novelist created Crown Prosecutor Helen West	Frances fyfield		0
5996	Who directed the 1989 film The War of the Roses	Danny devito		0
5997	Who did a version of 'one bourbon, one scotch, one beer' on his 1977 debut album	George thorogood		0
5998	Name the hockey trophy awarded to the player demonstrating the best sportsmanship.	The lady byng trophy		0
5999	Who wanted 'a lover with a slow hand'	Pointer sisters		0
6000	Who is the American artist who uses Campbell's Soup cans in his pop art? 	Andy Warhol 		0
6001	Which English Football Team Has The Longest One Word Name? 	Middlesbrough 		0
6002	Which US superstar has had over 70 chart albums in his career?	Frank Sinatra		0
6003	Wings of Desire a foreign film remade as what with Nicolas Cage	City of Angels		0
6004	What is the meaning of the name of the constellation Ursa Major ?	Great Bear		0
6005	The spiral galaxy nearest ours is the ________.	Andromeda		0
6006	Who sings and plays the theme song for the TV show 'Frasier'?	Kelsey Grammer		0
6007	What is the name of the evil spirit in Polterguise?	Kane		0
6008	Fourth letter of the Greek alphabet	Delta		0
6009	Justin Hayward-Young, great grandson of English painter and postcard artist Walter Hayward-Young, is the lead singer of which band?	The Vaccines		0
6010	What is the Capital of: Northern Mariana Islands	Saipan		0
6011	Of what are quemoy and matsu part	Taiwan		0
6012	What popular party drink gets its name from Sanskrit meaning 5	Punch - originally 5 ingredients		0
6013	From Which Country Does The Drink Tequila Originate? 	Mexico 		0
6014	 The underwater mating song of the __________ is so loud that sometimes it can be heard by humans on the shore.	Toadfish		0
6015	What's Princess Aurora's better-known name	Sleeping beauty		0
6016	In which country is the machu picchu 	Peru 		0
6017	Give The Title Of The 1973 Mott The Hoople Single Featuring A Tennessee City	All The Way From Memphis		0
6018	Who played Matt Helm in the movies?	Dean Martin		0
6019	Who shot Abraham Lincoln?	John Wilkes Booth		0
6020	The number unemployed consists of all those people in a country who are willing and able to work but are unable to ___ ?  	Find jobs		0
6021	What liqueur is prepared from cumin and caraway seeds	Kummel		0
6022	What is the actual vat in Romania	19%		0
6023	In Star Trek Generation who was the chief of security killed off	Tasha Yar		0
6024	What is the basic unit of currency for Vatican City ?	Lira		0
6025	A plant allied to the thistle with a partly edible flower	Artichoke		0
6026	What is the Capital of: Tunisia	Tunis		0
6027	Firm Music: What was the first album Roger Waters released after leaving Pink Floyd	The Pros and Cons of Hitch Hiking		0
6028	In which game are there hashmarks on each five-yard line	Football		0
6029	The puma, cougar, lynx & other wildcats are all	Catamounts		0
6030	In WW2 what was unique about the US 222 Infantry battalion	All Japanese or Hawaiian immigrants		0
6031	What sport does "FISA" govern	Auto racing		0
6032	Where did Jim Morrison die	Bath - in Paris hotel		0
6033	Who was john merrick	Elephant man		0
6034	When a U.S. army bomber crashed into the New York's Empire State Building, how many people did it kill	Fourteen		0
6035	Which tree do Druids regard sacred ?	Oak		0
6036	 What does a heliologist study	The sun		0
6037	Nephologists study what	Clouds - Meteorology		0
6038	What year did Chernobyl explode	1986		0
6039	Which breed of dog gets its name from the French for earth	Terrier		0
6040	In Computing of what is the term 'bit'' an abbreviation? 	Binary Digit 		0
6041	Which Victorian explorer and translator was best known for his translations of the "Kama Sutra" and "Arabian Nights"	Richard burton		0
6042	Who Wrote The 1972 Mott The Hoople Hit All The Young Dudes?	David Bowie		0
6043	In 1785, Blanchard and Jeffries became the first to cross the English channel using which method of transport? 	Balloon 		0
6044	Fidelity Bravery Integrity is which organisations motto	FBI		0
6045	How many pairs of ribs are there in a male skeleton	12		0
6046	Who Had A Number One Hit In 1962 With The Song Telstar?	The Tornados		0
6047	Who Had A Surprise Hit With "Atmosphere" In 1984	Russ Abbot		0
6048	In Kiplings How the Leopard got its Spots name the Leopard	Best Beloved		0
6049	Which novel, when broadcast in America, was believed by many people to be a real news report, and it caused widespread panic	The war of the worlds		0
6050	When does a full moon rise?	Sunset		0
6051	Which book is subtitled "the Mistakes of a Night"	She stoops to conquer		0
6052	Name the legless fighter pilot of ww2	Douglas Bader		0
6053	What U.S. senator gives out the golden fleece awards	William proxmire		0
6054	Which U.S. state receives the most rainfall	Hawaii		0
6055	What is the capital of Guatemala?	Guatemala		0
6056	As what is a giraffe also known	Camelopard		0
6057	Steven Georgi is now Yussef Islam what other name had he	Cat Stevens		0
6417	What was the full name of Mangum P.I.?	Thomas Magnum		0
6058	After his death what bit Walter Raleigh did his wife carry around	His Head		0
6059	How tall was the world's shortest man	670 mm		0
6060	Goodfellow's Lumholtz's and Bennett's type of what animal	Tree Kangaroo		0
6061	Which is the world's second largest monolith	Ayers rock		0
6062	In food labelling what does GM mean	Genetically Modified		0
6063	Acadia was the original name of which Canadian province	Nova scotia		0
6064	I see your schwartz is almost as big as mine.	Spaceballs		0
6065	The "Old City" of this holy location is divided into four quarters — a Christian quarter, a Muslim Quarter, a Jewish Quarter, and an Armenian Quarter.	Jerusalem		0
6066	Where did abraham lincoln gave his historic speech	Gettysburg, pennsylvania		0
6067	What is the flower that stands for: evanescent pleasure	Poppy		0
6068	Countries of the world: east-central Europe, the capital is Kiev	Ukraine		0
6069	Ncaa: what team won the men's basketball championship game in 1976	Indiana		0
6070	What was the name of Hannibal's father	Hamilcar barca		0
6071	What trio were originally called The Rattlesnakes	The Bee Gees		0
6072	Who is known as the "Father of History" ?	Herodotus		0
6073	In which decade was cricket's first World Cup Final played? 	1970's 		0
6074	The cardinal is the state bird of 5, 7 or 9 u.s states	Seven		0
6075	Who led 900 followers in a mass suicide in 1979?	Jim Jones		0
6076	What religious movement was founded by william booth	Salvation army		0
6077	What is more effective than caffeine for waking up in the morning	Apples		0
6078	Which Song Was A Hit For Both Cliff Richard And Elvis Presley	The Twelth Of Never		0
6079	In Which Sport Would You Encounter a Bed Post, A Six Pack, A Blow And A Cherry 	Ten Pin Bowling 		0
6080	What is a young Irish girl called	Colleen		0
6081	The world's rarest coffee, Kopi Luwak, comes from which country	Indonesia		0
6082	Which (Age) Occured Between The Stone And The Iron Ages? 	Bronze Age 		0
6083	Which actor and muscle man, a former 'Mr. Universe', gained fame and fortune in Italy, playing mythical heroes such as Hercules	Steve reeves		0
6084	2% of Americans admit to doing what	Affair with Postman		0
6085	What mountain overlooks Rio de Janeiro harbour	Sugar Loaf		0
6086	An old sweet scented rose	Damask		0
6087	What was rod serling's last television series	Night gallery		0
6088	What is a Tam Tam	Orchestral Gong		0
6089	What colour was the maltese falcon	Black		0
6090	Joseph Hobson Jagger broke it in 1886 broke what	Bank at Monte Carlo		0
6091	A short legged hunting dog	Basset		0
6092	The Albert Canal links Liege with which city	Antwerp		0
6093	What Name Is Given To A Plant That Grows From Seed & flowers And Dies Within A Year 	An Annual 		0
6094	Who is Joley Richardson's famous mother? 	Vanessa Redgrave 		0
6095	Who signed the 'thanksgiving proclamation'?	Abraham Lincoln		0
6096	Which Scandinavian alcoholic spirit is made from potatoes	Aquavit		0
6097	Small graceful antelope	Gazelle		0
6098	The Rise Of Cuban Music In The Late 90's Was Represented By Which Album	Buena Vista Social Club		0
6099	In what sort of landscape would you find an erg	Desert		0
6100	What is the name of the telescope that was placed in orbit in the eighties? 	Hubble 		0
6101	Is South America or Australia closer to the Antarctic	South america		0
6102	As what is a moose also known?	Algonquin		0
6103	Who painted the Mona Lisa	Leonardo da vinci		0
6104	What city stands on the river Torens	Adelaide - Australia		0
6105	What was the Beatles' first single in 1962?	Love Me Do		0
6106	Billy Joels "Uptown Girl" Video Featured Which Super Model	Christie Brinkley		0
6107	What Was The Name Of Phil Collins First ever Solo Album	Face Value		0
6108	Which Wild Animal Has The Proper Name Of Acinonyx Jubatus	Cheetah		0
6109	What is the first book of the Bible	Genesis		0
6110	The Allman Bros Song Entitled "Jessica" Is The Theme Tune To Which Long Running Tv Show	Top Gear		0
6111	What name is given to the hypothetical super-continent which consisted of all the present continents before they split up	Pangaea		0
6112	What name is given to the unripe, ground or whole berries of Piper nigrum? 	Black Pepper 		0
6113	Musical terms - what does De Capo mean on a score	From the beginning		0
6114	Which former dictator was executed by firing squad on Christmas Day 1999 	Nicolae Ceausescu, (Romania) 		0
6115	From which Shakespeare play is this line taken: Double, double	Macbeth		0
6116	The "canebrake", "timber" & "pygmy" are types of what	Rattlesnakes		0
6117	What is the nickname for Mobile, Alabama	Gulf city		0
6118	What is a resident of Manchester called?	Mancunian		0
6119	Lee Marvin won his only Best Actor Oscar for the dual role of Kid Sheleen and Tim Strawn in which film	Cat ballou		0
6120	Which Woman Lived With Natives In West Africa & Became The First European To Visit Parts Of Gabon In 1894 	Mary Kingsley 		0
6121	Who directed the Halloween series of films	John Carpenter		0
6122	What is the middle name of author H.G. Wells	George		0
6123	How many 'southpark' episodes have there been that kenny didn't get killed	One		0
6124	Which British director founded the Theatre Workshop in Manchester in 1945	Joan littlewood		0
6125	Who Was On Paul Evans Telephone Answering Machine In 1978	Joanie		0
6126	Percent in which county are all ten of england's highest peaks	Cumbria		0
6127	Which British Driver Was Formula One World Champion In 1996 	Damon Hill 		0
6128	The locals call it Shqiperia what do we call this country	Albania		0
6129	Which Female Tennis Star Was Handed A Two Year Ban After Testing Positive For Cocaine At Wimbledon In 2007? 	Martina Hingis 		0
6130	Who did anthony eden succeed as british prime minister in 1955	Winston		0
6131	Gaye on which show were we introduced to ernestine the operator	Laugh in		0
6132	Popular in the Netherlands, what type of food is a frikandel? 	A Sausage 		0
6133	Spermophobia is the fear of	Germs		0
6134	What is the name for the deepest part of the ocean ?	Abyss		0
6135	How much were betty grable's legs insured for	One million dollars		0
6136	What was the full name of the cat	Thomas hewitt edward cat		0
6137	Who Is Kenneth Brannagh Married To 	Emma Thompson 		0
6138	What links Bass, Messina, Hormuz and Torres	Straits of water		0
6139	What is a person with a strong desire to steal	Kleptomaniac		0
6140	What Was Barbara Disksons Only Top 10 Hit, Reaching No 9 In 1976	Answer Me		0
6141	What is the offspring of a male horse and a female donkey	Hinny		0
6142	Where would you find your Glabella	Space between your eyes		0
6143	Who sang the theme song in the Bond film For Your Eyes Only	Shena Easton		0
6144	What Was The Name Of Elvis Presley's Manager?	Colonel Tom Parker		0
6145	Which planet in the solar system was discovered in 1846	Neptune		0
6146	Who starred in the Alfred Hitchcock film 'To Catch a Thief	Cary grant		0
6147	In France what is Framboise	Raspberry		0
6148	For which illness did Lois Pasteur develop a cure 	Rabies 		0
6149	The Song Mr ________ Man Was A Hit For The Birds	Tambourine		0
6150	Wild Bill Hickok was shot in the back by a stranger during a poker game. The hand he was holding aces & eights is known to poker players as what	Dead man's hand		0
6151	What does Sweden call itself on its stamps	Sverige		0
6152	Some animals spend the winter in a sleep-like state known as _________.	Hibernation		0
6153	When a a positive & negative plate are placed together in an electrical circuit which stores a charge in the form of an electric field it is called a _________	Capacitor		0
6154	Cocktails: whiskey, angostura bitters, and sugar make an	Old fashion		0
6155	Which Jump Event Did Carl Lewis Specialize In As Well As The Sprint? 	Long Jump 		0
6156	What does "Ursa Major" mean in everyday English?	Great bear		0
6157	Who said "Too much of a good thing is wonderful"	Mae West		0
6158	The legendary creature "sasquatch" was also known as_________	Bigfoot		0
6159	What is the young of this animal called: Fox	Cub pup		0
6160	What was the first recorded message?	Mary had a little lamb		0
6161	Who is robert van winkle	Vanilla ice		0
6162	Which film star's statue stands in Leicester Square, London? 	Charlie Chaplin 		0
6163	What product was originally called Baby Gays	Q Tips		0
6164	The word negligee is French and suggests wearer does what	Avoids refrains from housework		0
6165	What saint's day is march 17	St. patrick's		0
6166	US civil war Confederate Kingston hospital Georgia specialised	Soldiers with Venereal Disease		0
6167	US school buses are Chrome Yellow but they used to be what	Omaha Orange		0
6168	What type of food is a sacatorta	Chocolate cake or gateau		0
6169	Doctors often have this instrument around their neck	Stethoscope		0
6170	Where is Tabasco?	Mexico		0
6171	In which London recording studios did The Beatles record the majority of their work?	Abbey Road		0
6172	Who wrote The Deceiver 1991 and The Fist of God 1993	Frederick Forsyth		0
6173	The Sam Maguire Trophy is played for in which sport	Gaelic Football		0
6174	In What Year Did Blackburn Rovers Last Win The FA Cup Final	1928		0
6175	In Australian slang what kind if food is a mystery bag	Sausage		0
6176	What are Grapnel, Bruce, Danforth, Plough types of?	Anchor		0
6177	When is turkey traditionally eaten in america	Thanksgiving		0
6178	Which European country has the largest percentage of forest and woodland	Finland		0
6179	What two fruits grow on palm trees? 	Coconuts and dates 		0
6180	What Is The Most Popular English City? 	London 		0
6181	By royal decree in Jidda 1979 women banned from using what	Hotel swimming pools		0
6182	What does the dalmatian have on each individual hair follicle	Barb		0
6183	What treaty ended the American revolution	Treaty of paris		0
6184	Johnny rivers sang 'secret ______ man'	Agent		0
6185	Where is alsace-lorraine	France		0
6186	A structure usually attached to a building, such as a porch, consisting of a roof supported by piers or columns.	Portico		0
6187	A small crown	Coronet		0
6188	What is a `rosti'? 	A pancake of fried grated potatoes		0
6189	What was the name of the Duke of Wellington, who defeated Napoleon at the battle of Waterloo	Arthur Wellesley		0
6190	What is the 'bishop's stone'	Amethyst		0
6191	A sumptuous formal dinner	Banquet		0
6192	Which female gymnast won 3 golds and a silver at the 1972 Olympics? 	Olga Korbut 		0
6193	Who wrote 'The Time Machine'?	H.G. Wells		0
6194	How Much Did NewCastle Pay For Alan Shearer 	15 Million 		0
6195	A Tiercel is the correct name for a male what	Hawk or Falcon		0
6196	 The owl is the only bird to drop its upper eyelid to wink. All other birds raise their lower __________	Eyelids		0
6197	Who is the greek equivalent of the roman god Venus ?	Aphrodite		0
6198	Who invented the electric razor in 1928	Jacob schick		0
6199	In "The Karate Kid" what color did Daniel have to paint Miagi's house, as part of his training	Green		0
6200	What is the unit of currency in Thailand	Baht		0
6418	Who was the greek god of prophecy and archery	Apollo		0
6201	Whe Beat "Martina Navratilova" In The Wimbledon Woman's Singles Final In 1994	Conchita Martinez		0
6202	In what country is the Mekong River Delta?	Vietnam		0
6203	What alcoholic drink is distilled from molasses	Rum		0
6204	What is the pope's pontificial ring	Fisherman's ring		0
6205	Little Jimmy Osmond topped the charts with 'Long Haired Lover from___	Liverpool		0
6206	Who rode a horse called Morengo	Napoleon at Waterloo		0
6207	What river is spanned by the George Washington Bridge	Hudson		0
6208	What country's currency is the Bolivar?	Venezuela		0
6209	To what instrument family do french horns belong	Brass		0
6210	How many johns have been pope	21		0
6211	Name Culture Clubs Debut No.1	Do You Really Want To Hurt Me		0
6212	What boxer was nicknamed The Boston Strong Boy	John L Sullivan		0
6213	Which comedian created the character of maude frickert	Jonathan winters		0
6214	The hamburger was invented in what year	1900		0
6215	Pat & Greg Made A Bit Of A Hue & Cry With Which 1993 Remix Of Their 1987 Hit	Labour Of Love		0
6216	Who burned atlanta in 1864	General sherman		0
6217	What is a group of apes	Shrewdness		0
6218	In which continent would you find the volga river 	Europe 		0
6219	Which actress has the real name Diane Hall	Diane keaton		0
6220	FDA regard 5 Fruit fly maggots 3oz per can acceptable - what	Canned Mushrooms		0
6221	Who is married to Eddie Van Halen?	Valerie Bertanelli		0
6222	What is produced by putting a whole "maris piper" in an oven until it goes soft inside	Baked potato		0
6223	What is the basic unit of currency for Cyprus ?	Pound		0
6224	Where do tangerines live 	Tangier, morocco 		0
6225	Who Had A Hit In 1985 With the Gambler	Madonna		0
6226	What colour was Rudolph the Reindeer's nose? 	Red 		0
6227	Which magazine is subtitled 'The International Magazine for Men'	Penthouse		0
6228	What WW II British medal carries the words For Gallantry	George Cross		0
6229	If you ain't done it by age 40 chances are you never will - what	Go to Prison		0
6230	Montevideo Is The Capital Of Which South American Country? 	Uruguay 		0
6231	Who Won His Only World Snooker World Championship In 1979? 	Terry Griffiths 		0
6232	What is a group of this animal called: Ferret	Business fesnyng		0
6233	In Illinois you can get three years for eavesdropping on who	Your conversation		0
6234	For what movie did Humphrey Bogart win his only Oscar?	The African Queen		0
6235	How many herbs and spices are used in Kentucky Fried Chicken 	Eleven 		0
6236	Whose Scary Movie Character Has The real name is Charles Lee Ray 	Chucky 		0
6237	What was Buddy Hollies current single when he died	It doesn't matter any more		0
6238	In the body where would you find your villus	Small Intestine		0
6239	Who Designed The VW Beetle 	Ferdinand Porsche 		0
6240	Wedding rings are normally worn on what finger of your hand?	Ring finger		0
6241	Which Famous Composer Wrote The Famous Opera "Carmen"	Bizet		0
6242	Who is harold lloyd jenkins	Conway twitty		0
6243	Between which countries was the shortest war in history?	Zanzibar and England		0
6244	What is the flower that stands for: poverty	Evergreen clematis		0
6245	What Team Were Liverpool Playing When The Hillsborough Disaster Occurred In 1989 ?	Nottingham Forest?		0
6246	What english city was known to the romans as venta bulgarum	Winchester		0
6247	Who sang 'all right now'	The free		0
6248	What Score In Darts Is Known As The Madhouse 	Double One 		0
6249	What is measured in Darwin's	Rate of evolutionary  change		0
6250	Which acid gives nettles their sting	Formic acid		0
6251	Who Blew Toni Basil's Mind In 1982	Mickey		0
6252	What was the name of Australia's first girlie magazine in 1936	Men		0
6253	Hawaiian Pia Polish Piwo Hungarian Sor - what is it	Beer		0
6254	What was lucy's maiden name on 'i love lucy'	Mcgillicuddy		0
6255	 Because birds carrying messages were often killed in flight by hawks, medieval Arabs made a habit of sending important messages __________	Twice		0
6256	A cathedral built between 1554 and 1560 for Ivan the Terrible, to which saint is this Russian Orthodox church in Moscow dedicated	Saint basil		0
6257	Which very select organisation has a table as its logo	Mensa		0
6258	On a carving in Coventry Cathedral what did Lady Godiva ride	A Goat		0
6259	At Which Sport Did James Bond Play Auric Goldfinger Waging A Gold Bar On The Outcome? 	Golf 		0
6260	Who in 1958 was the first British Formula one champion	Mike Hawthorne		0
6261	In religion, the assumption of an earthly form by a god	Incarnation		0
6262	Who was the first to climb Mt Everest	Sir edmund hillary		0
6263	According to the title of the film, what is the profession of Ace Ventura?	Pet Detective		0
6264	He led the Israelites out of Egypt.	Moses		0
6265	Which Yorkshire town has the same name as the capital of Nova Scotia	Halifax		0
6266	In The 1998 World Cup Which 3 Teams Were Knocked Out On Penalties (Point For Each) 	England , Italy , Holland 		0
6267	 Within the hawk, or birds of prey, family, there are __________ species _ eagles, hawks, kites, and Old World vultures, which are found nearly worldwide.	208		0
6268	What is the capital of Mauritius?	Port Louis		0
6269	What was the name of the home that Sofia Patrillo lived in before moving in with her daughter on the Golden Girls.	Shady Pines		0
6270	Which Politician Is Known As Tarzan 	Micheal Hestletine 		0
6271	Who married Mutt Lange?	Shania Twain		0
6272	What first appeared on Page 1 of the Times 3 May 1966	News stories		0
6273	What is the only sign in the zodiac which doesn't represent a living thing	Libra		0
6274	What types can be saddle, plane or pivotal	Body Joints		0
6275	How Do Procumbent Plants Grow 	They Spread Overground 		0
6276	The male gypsy moth can "smell" the virgin female gypsy moth from how far away (its a decimal)	1.8 miles		0
6277	What did Americans call the first Cuban in space	Castronaut		0
6278	What word describes the dominance of one state over a group of other states?	Hegemony		0
6279	The Musee de Orsay in Paris was originally what	Railway Station		0
6280	In Which Play Tennesee William Do You Encounter The Character "Big Daddy"	Cat On A Hot Tin Roof		0
6281	Frank Oz was the voice of who	Miss Piggy in the Muppets		0
6282	What is the oldest town in belgium	Tongeren		0
6283	What country lost the Crimean War	Russia		0
6284	What city ranks second after New York as America's advertising hub	Chicago		0
6285	Devil's tower, the first us national monument, is located in what state	Wyoming		0
6286	What is the society for the advancement of science also known as	British		0
6287	Who on TV played Jeeves to Hugh Lawrie's Bertie Wooster	Stephen fry		0
6288	Who Spent Four Weeks In The Charts As The High Numbers	The Who		0
6289	Space indiana jones: what did drinking from the grail "grant"	Immortality		0
6290	According to the Acts of the Apostles, from where did Christ's Ascension into Heaven take place	Olivet mount of olives		0
6291	Who live longer, on average men or women	Women		0
6292	Which cricketer has played more tests than any other	Allan border		0
6293	What is Little Red Riding Hoods name	Blanchette		0
6294	What is the largest ocean	Pacific ocean		0
6295	What cartoon show's record prime time run of 6 years was beaten in 1996 by The Simpsons	The Flintstones		0
6296	Coco de Mer fruits take how long to ripen?	10 Years		0
6297	Which Labour politician did Aneurin Bevan call "a dessicated calculating machine"	Hugh gaitskell		0
6298	What does c.i.a stand for	Central intelligence agency		0
6299	Which Popular Tv Programmes Theme Tune Reached No.8 In 1962	Z Cars		0
6300	What boxer played the lead in the broadway musical buck white	Muhammad ali		0
6301	Crème de Menthe Crème de Cacao an light cream what drink	Grasshopper		0
6302	Which Country Had Their World Cup Debut In France 1998 And Ended Up Finishing 3rd	Croatia		0
6303	What is a native of tangiers called	Tangerine		0
6304	 The ears of the Asiatic __________ are larger than those of other bear species.	Black bears		0
6305	Which compound forms about 70% of the human body	Water		0
6306	What was the title of polanski's horror spoof	Dance of the vampires		0
6307	At the end of "Planet of the Apes" what protruded from the rocks?	Statue of Liberty		0
6308	Name Greek Goat Amaltheas horns that good things flowed from	Cornucopia		0
6309	What is the gift on the seventh day of christmas in the "twelve days of christmas"	Seven swans a swimming		0
6310	Harbour who wrote 'the invisible man'	H.g wells		0
6311	Organisation in the US was co-founded by Ballington Booth	Volunteers of America		0
6312	Why Did "Mathias Rust" Hit Global Headlines In 1987 An Event That Very Nearly Cost Him His Life	Flew Plane Into Red Square		0
6313	Which retail entrepreneur founded The Body Shop in 1976	Anita roddick		0
6314	If you have a buccula what have you got	Double Chin		0
6315	Paedology is the study of ______ ?	Soil		0
6316	What are the two main ingredients of a Hollandaise sauce? 	Egg yolks and butter 		0
6317	What is the Capital of: Guatemala	Guatemala		0
6318	What's the international radio code word for the letter "N"	November		0
6319	Who played the role of Margaret Schlegel in the film Howard's End	Emma thompson		0
6320	Which Uk Football Team Are Known As The Owls 	Sheffield Wednesday 		0
6321	What Does The Term 'A La Carte' Actually Mean 	From The Menu 		0
6322	The Heights of Abraham is in which Canadian province	Quebec		0
6323	This is said to be history's greatest military evacuation	Dunkirk		0
6324	What country has the lowest teen pregnancy rate Western world	Netherlands		0
6325	Which planet has Prometheus as a satellite	Saturn		0
6326	Who got the world's worst circumcision	John bobbit		0
6327	What percentage of canadians dine out regularly	70%		0
6328	"Dead End Street" By The Kinks Was Originally Released 1962, 1966, 1968	1966		0
6329	What was Walt Disney's first cartoon character	Oswald the Rabbit		0
6330	Who sang about cars and girls in 1988	Prefab sprout		0
6331	Which sacred volcano last erupted in 1707	Mount fuji or fujiyama		0
6332	Who Were Bobby Hatfield & Bill Medley	The Righteous Brothers		0
6333	Who sang lead vocals for Lynyrd Skynyrd?	Ronnie Van Zandt		0
6334	Which Italian dish consists of filled tubes of pasta baked in a sauce	Cannelloni		0
6335	What is the capital of north vietnam	Hanoi		0
6336	What country invented the fiber tip marker in 1962	Japan		0
6337	What sport is played on the largest field	Polo		0
6338	These attach muscles to bones or cartilage.	Tendons		0
6339	Who ruled France during the Franco-Prussian War	Napoleon iii		0
6340	What is a wind with a speed of 74 miles or more	Hurricane		0
6341	Which racehorse houses the burial site of Red Rum? 	Aintree 		0
6342	What is an s curve	Ogee curve		0
6343	Name The Female Vocalist That Performed With Kenny Rogers On The Song ” We've Got Tonight ”	Sheena Eastern		0
6344	The Welcome Stranger 173 lb was largest what ever found 1869	Gold Nugget		0
6913	Japanese profesional hostess and entertainer	Geisha		0
6345	The little lump of flesh just forward of your ear canal, right next to your temple, is called a(n) ______	Tragus		0
6346	Sitophobia is the fear of	Food eating		0
6347	Arthur Jefferson better known as who	Stan Laurel		0
6348	What president's hobbies included pitching hay, fishing, and golf	Calvin		0
6349	In 1984, who sang 'girls just want to have fun'	Cyndi lauper		0
6350	Which American Actor Once Had A Trial For "The Green Bay Packers" American Football Team	Bill Cosby		0
6351	Who was William Claude Dukenfield better known as	W C Fields		0
6352	Who invented scissors	Leonardo Da Vinci		0
6353	Who is mia farrow's mother	Maureen o'sullivan		0
6354	How much drinking water did a scuttlebutt hold	A day's supply		0
6355	Who was given temporary custody of the "emerald orb" (ds9)	Benjamin sisko		0
6356	What family is a horse	Ungulate		0
6357	What term applies to the property of metals that allows them to be drawn out in to a thin wire	Ductile		0
6358	Named album of the year in 1981, which pop group's debut album was called "Dare"	Human league		0
6359	What was the first USA TV series screened in the USSR	Fraggle Rock		0
6360	For what does O.P.E.C. stand?	The Organization of Petroleum Exporting Countries		0
6361	Who Wrote The Manfred Man Single "The Mighty Quinn"	Bob Dylan		0
6362	In Australian slang what is a Coughie	Bad Umpiring		0
6363	Who directed 'drive he said', 'goin' south' and 'the two jakes'	Jack		0
6364	The process of making cows milk safe for consumption is	Pasteurization		0
6365	Whose first hit was Rewind The Crowd Say Bo Selecta in 1999?	Artful Dodger/Craig David		0
6366	What is the condition resulting from prolongued muscular or mental activity	Fatigue		0
6367	Whats a community of ants called	A colony		0
6368	What was the name of the rich boy that Andie was asked to go to the senior prom with in the movie 'Pretty in Pink'? 	Blaine 		0
6369	What links Jerry Garcia Buster Keaton Boris Yeltsin	Missing a bit of finger		0
6370	The clusec is the unit measuring the power of what	Vacuum pumps		0
6371	Which Famous Character Did “Jean De Brunhoff” Create In 1931?	BarBar The Elephant		0
6372	What did William Addis invent in prison	Toothbrush		0
6373	Who Re-Released Lionel Richies Classic "Easy" In 1993	Faith No More		0
6374	In which continent would you find the congo river 	Africa 		0
6375	What is the capital city of Ethiopia? 	Addis Ababa 		0
6376	 The flounder swims __________	Sideways		0
6377	Loincloth worn by male Hindus	Dhoti		0
6378	Which is the only US state to have a Z in it's name? 	Arizona 		0
6379	From Which Us City Did Techno Originate	Detroit		0
6380	German dish with roast beef marinated in vinegar, sugar, and seasonings.	Sauerbraten		0
6381	Turn, Side and Why does it always rain on me are all songs from what UK band?	Travis		0
6382	In heraldry animals addorsed are in what position	Back to Back		0
6383	What was the Oscar-winning theme song from "Breakfast at Tiffany's"?	Moon River		0
6384	In Which Country Were The 1992 Olympics Held? 	Spain 		0
6385	What fish can blink its eyes	Shark		0
6386	In Shakespeare's Hamlet, who is the father of Ophelia	Polonius		0
6387	What in muslim countries is a' taj	Brimless hat		0
6388	Which eighties musician got sued by a music related company for using their name as part of his pseudonym?* 	Thomas Dolby 		0
6389	John Travolta, Samuel Jackson, Uma Thurman starred in which 1994 Quentin Tarantino film?	Pulp Fiction		0
6390	Name The 2 Members Of Hall & Oats	Daryl Hall & John Oates		0
6391	Whitney Houston Recorded Which Dolly Parton Song	I Will Always Love You		0
6392	Device which automatically maintains a motor vehicle at a chosen speed is called	Cruise control		0
6393	Who was the first Briton to win the Nobel Prize for Literature	Rudyard kipling		0
6394	What fictional Englishman belongs to the Ganymede club	Jeeves		0
6395	What is a giant sequoia	Redwood tree		0
6396	What was Keanu Reeves' computer world alias in 'The Matrix'?	Neo		0
6397	Who wrote 'To Kill A Mockingbird'?	Harper Lee		0
6398	What is the most dangerous job in the u.s	Commercial fishing		0
6399	"Big Spender" Was A Hit In 1967 For Which Female Singing Star	Shirley Bassey		0
6400	How tall was the tallest man	8' 11"		0
6401	Which TV cartoon series based in Springfield started life on the Tracey Ullman show	The simpsons		0
6402	What future yippie leader was the first male cheerleader at brandeis	Abbie		0
6403	Name The Four Sections Of An Orchestra	Strings, Wood Wind, Brass & Percussion		0
6404	Who led the revolt of roman slaves in A.D.73	Spartacus		0
6405	What Kind Of Fruit Is A Canteloupe? 	Melon 		0
6406	Who plays the role of the Prime Minister, in the 2003 Christmas film 'Love Actually'' 	Hugh Grant 		0
6407	What causes the tangy smell at the seaside	Rotting Seaweed		0
6408	Lewis on what japanese city was the second atomic bomb dropped during world war ii	Nagasaki		0
6409	What is the most widely used seasoning?	Salt		0
6410	Town in the west bank, near Jerusalem, controlled since 1967 by Israel though administered since 1995 by the Palestinian authority	Bethlehem		0
6411	Name The Former Beatles Bass Player Who Died In 1962	Stewart Sutcliffe		0
6412	Second city: Milwaukee (state)	Madison		0
6413	Who Had A Hit In 1994 With "Shaker Maker"	Oasis		0
6414	Who has written many books about Jack Aubrey and Stephen Maturin	Patrick o'brian		0
6415	What degree is 'dds'	Doctor of dental surgery		0
6416	What is the capital of Guatemala	Guatemala		0
6419	Edward de Bono - Maltese Doctor - developed what concept	Lateral Thinking		0
6420	What male name comes from Greek meaning lover of horses	Phillip		0
6421	What number does VII mean in roman numerals	Seven		0
6422	Frank Vos Bob Seagren Wolfgang Nordwig all held what	Pole vault record		0
6423	Which Pianist Joined The Chicago Symphony Orchestra When He Was Just Nine Years Old	Liberace		0
6424	Hydrosis is the medical term for what	Sweating		0
6425	What is the word for 'chewing the cud'	Ruminant		0
6426	What is the capital of Comoros ?	Moroni		0
6427	Name The Artist Who Had A Hit With The Song "Papa's Got A Braned New Pigbag"	Pigbag		0
6428	In what movie did Charlie Chaplin first speak on film?	The Great Dictator		0
6429	What is dittology	Double meaning		0
6430	Those big black CD's that you see at garage sales that people call "albums" are made of _____.	Vinyl		0
6431	Who was assassinated by her own bodyguard in 1984	Indira Ghandi		0
6432	Wild flowers: what's blue, comes out in spring, and smells like hyacinth	Bluebells		0
6433	What is the flower that stands for: bravery	Oak leaves		0
6434	Who sang 'Good Morning To You?	Mildred and Patty Hill		0
6435	What is Greece's second city after Athens	Selonika		0
6436	Which Meat Dish Was Named After A 19th Century Russian Count 	Beef Stroganoff 		0
6437	Who Were Bobby Hatfield & Bill Medley?	The Righteous Bros		0
6438	December 26th is traditionally known as Boxing Day but it is also which Saints Holy Day 	Saint Stephen 		0
6439	Petroselinum crispum is the Latin name of which herb	Parsley		0
6440	Who are the three annoying neighbors in "Small Wonder"?	Brandon,Bonnie,and Harriet Brendel		0
6441	On Which River Does New Orleans Stand 	The Mississippi 		0
6442	In the film 'hackers', how old was 'zero_kool' when he was first arrested	Eleven		0
6443	What is a skin specialist called	Dermatologist		0
6444	What did jack the ripper sign on his first note 	Yours truly 		0
6445	In which city is the Encyclopaedia Britannica based and published today	Chicago		0
6446	 Gymnophobia is the fear of __________.	Naked bodies		0
6447	The Dove awards are presented annually for what	Gospel music		0
6448	What city do the italians call the monaco of bavaria	Munich		0
6449	What's the most popular name for a male pet cat	Tiger		0
6450	What is the capital of Ghana	Accra		0
6451	What african city is built on gold	Johannesburg		0
6452	Decoration of food	Garnish		0
6453	Rita Kuti Kis represented Hungary in what sport	Tennis		0
6454	In 1985, as what did 'people magazine' name Mel Gibson	Sexiest man of the year		0
6455	Where did the judds spend years shopping demos recorded on a cassette recorder	Nashville, tennessee		0
6456	Who in books and films was the man of bronze	Doc Savage		0
6457	Neptune Was The Roman God Of The Oceans, What Name Did The Greeks Use? 	Poseidon 		0
6458	How Long Does A May Fly Live? 	1 Day/ 24 Hours 		0
6459	Who was European correspondent New York Tribune 1851/62	Karl Marx		0
6460	What was Thailand formerly known as?	Siam		0
6461	In which game is gruntilda the witch	Banjo-kazooie		0
6462	In The TV Show Different Strokes What Was The Name Of Arnolds Goldfish	Abraham		0
6463	Who was the first American to make $100 million a year	Al Capone		0
6464	What Nationality Would You Be If You Spoke Inukitut	Canadian		0
6465	What is the federal district in southeastern Australia, bordered by the state of New South Wales	Australian capital territory		0
6466	To what country would a hiker go to assail mt ararat	Turkey		0
6467	Madame Pauline de Vere first female circus performer - do what	Head in Lions Mouth		0
6468	How many miles can a Pershing missile travel	400		0
6469	What can keep for up to 4 years if stored in a cool dark place	Standard Condoms		0
6470	Whose final opera was called Death in Venice	Benjamin Britain		0
6471	A Holland Park Brothers Track, Name The 1981 UK Single From The Album "Forever Michael"	Were Almost There		0
6472	Which British physician, 1749 to 1823, developed the first effective vaccine against smallpox	Edward jenner		0
6473	Who invented the first flush toilet	Thomas crapper		0
6474	What is an instrument for indicating the depth of the sea beneath a moving vessel called	Bathometer		0
6475	Who was 'uncle milty'	Milton berle		0
6476	Who said sex is a bad thing it rumples the clothes	Jacqueline Kennedy Onassis		0
6477	Each body cell contains how many chromosomes	46		0
6478	Name the Apostle who replaced Judas Iscariot	Matthias		0
6479	What was the name of the Monkeys only film made in 1969	Head		0
6480	From Which Football Club Did Manchester United Sign Roy Keane In 1993? 	Nottingham Forest 		0
6481	How many hours does an antelope sleep at night	One		0
6482	A Capriphiliac has sex with who or what	Goats		0
6483	Who plays the character of the only escapee from Alcatraz in the movie "The Rock"?	Sean Connery		0
6484	Who sang the theme song to the "Breakfast Club"?	Simple Minds		0
6485	Syd Barett, Roger Waters, Richard Wright, Nick Mason - Group	Pink Floyd		0
6486	Kitty, fire, draw and tuck in are terms in what sport	Green Bowls		0
6487	A Mai Tai is a cocktail literally meaning what in Tahitian	Out of the World		0
6488	Born Georgios Panayiotou in England in 1963, by what name is this singer better known	George michael		0
6489	In what US city do they watch the most TV evangelists per cap	Washington DC		0
6490	Heinrich Schliemann archaeologist famous for excavating where	Troy		0
6915	Orange juice and what make an ambassador	Tequila		0
6491	In ballet, a position with the body at an oblique angle and the working leg crossing the line of the body.	Croisée		0
6492	Chloe the girls name means what	Green shoot		0
6493	Which Is The Second Heaviest Land Animal? 	The Hippopotamus 		0
6494	Who was the first person to wear a baseball glove	David		0
6495	What were the names of the first so-called 'Siamese Twins'	Chang and eng		0
6496	 Surviving all dangers, a wild __________ may live up to 20 years.	Cobra		0
6497	Guess The Band From These Initials AFL / AF / BA / BU	Abba		0
6498	What Reason Did Peter Criss Give For Leaving Kiss In 1980	The Makeup Was Ruining His Complexion		0
6499	A phrenologist reads _________.	Skulls		0
6500	In which UK city is the 'City Palace of Varieties'?	Leeds		0
6501	Poinephobia is the fear of	Punishment		0
6502	What is the only counties national flag different both sides	Paraguay		0
6503	In which classic Western film did the character Will Kane appear	High noon		0
6504	What year was the bacall-bogart movie "the guys from milwaukee" released	1946		0
6505	Who Won 7 gold Medals In Swimming At The 1972 Olympics 	Mark Spitz 		0
6506	Which people used to settle legal disputes by head butting	Inuit - Eskimo		0
6507	It came into football in 1923 men say women don’t understand?	The offside rule		0
6508	What type of food is Taramasalata	Cured /smoked cod roe		0
6509	What Do You Call The Lines Upon Which Musical Notes Are Written	Staves		0
6510	Where will children as young as 15 be jailed for cheating on their finals?	Bangladesh		0
6511	Nick Nolte and Eddie Murphy star in this 1982 film.	48 Hours		0
6512	More Deaths Occur Each Year Participating In This Sport Than Any Other Sport What Is It?	Fishing		0
6513	Who was appointed Headmaster of Rugby School in 1828	Thomas arnold		0
6514	Name for an oblong cream puff filled and topped with icing.	Eclair		0
6515	Nostophobia is the fear of	Returning home		0
6516	Who was the losing Democratic candidate in the 1968 U.S. Presidential Election	Hubert humphrey		0
6517	In norse mythology, who is the chief of the valkyries	Brunhilda		0
6518	Who released the following 'edible' album 'Tigermilk' 	Belle and Sebastian 		0
6519	Masked pantomime character in diamond patterned costume	Harlequin		0
6520	Tears On My Pillow Was A Hit In 1990 But Who Was The Singer	Kylie Minogue		0
6521	Who played kevin hathaway on the soapie 'days of our lives'	Pat sajak		0
6522	The Indian name Singh translates as what	Lion		0
6523	What was the name of the submarine which sank the General Belgrano during the Falklands conflict	Hms conqueror		0
6524	What is the name of the whale that swallowed Pinocchio.	Monstro		0
6525	What would you do with a hecklephone	Play it - type of woodwind		0
6526	Elizabeth I of England suffered from anthophobia, what is it	Fear of roses		0
6527	In Dallas what was the name of the bar	Cattleman's Club		0
6528	In music what term is used to describe 3 or more notes played simultaneously?	Chord		0
6529	What was the name of the police character played by Roy Scheider in the film Jaws	Martin brody		0
6530	Which musician of non-U.K. citizenship was awarded an honorary knighthood (KBE) in 1986	Bob geldof		0
6531	Though the touch of gold was removed, Midas was forever cursed by Athena to have the ears of which animal?	Donkey		0
6532	Who was born sarah jane fulks	Jane wyman reagan		0
6533	Who Was The Midnight Rider	Paul Davidson		0
6534	How Many Christian Brothers Were Originally In The Group "The Christians"	Three		0
6535	What does the 'x' mean when referring to the speed of a cd-rom (ie.. 32x)	Times faster than a single speed		0
6536	Which is the least populated state in the USA? 	Wyoming 		0
6537	How many olypmic medals has mark spitz won	Nine		0
6538	What is measured on the Mohs scale	Hardness of minerals		0
6539	Which drug can be extracted from the bark of the cinchona tree	Quinine		0
6540	Who wrote 'shogun'	James clavell		0
6541	What Is The Name Of Postman Pats Son?	Julian		0
6542	Where was Hawkeye Pierce's hometown in the show M	A S H ? Crab Apple Cove		0
6543	By what name is the skin complaint of 'comedo' better known	Blackheads		0
6544	In Which Comedy Film Does Aretha Franklin, Star As A Proprietress Of A Soul Food Joint Sing Her 1968 Hit Think	The Blues Brothers		0
6545	What year was a U2 pilot shot down for spying	1960		0
6546	Who prescribed marijuana for queen victoria's menstrual cramps	Her doctor		0
6547	In Cornwall where would you find two legged knockers	Tin Mines goblins		0
6548	What Is Pumpernickel 	A Type Of Bread 		0
6549	Vincent Fernier Is More Commonly Known As Which Rock Star	Alice Cooper		0
6550	Who began his career with 'the yardbirds' and is established as one of the best rock guitarists of his generation	Eric clapton		0
6551	What are kreplach	Jewish ravioli		0
6552	What is alfred e neumans motto	What me worry		0
6553	Which Scottish Football Club Boasted The First All Seater Football Stadium In Britain ? 	Aberdeen 		0
6554	What links Herbert Hoover and Richard Nixon - not the obvious	Both Quakers		0
6555	What digit does not exist in Roman Numerals	Zero		0
6556	Emperor Haile Selassie of Ethiopia was finally diposed in 1974 after how many years in power	Fifty eight		0
6557	How Was The Misubishi A6M Fighter Aircraft Known 	Zero 		0
6558	What is the capital of Ireland	Dublin		0
6559	Where do pilgrims go to march around the Kaaba and kiss The Black Stone	Mecca		0
6560	According to folklore a windy christmas means _____	Good fortune		0
6561	Who Invented The Spinning Jenny In 1764 	James Hargreaves 		0
6562	Which English composer was born near Worcester in 1857 and died in 1934	Edward elgar		0
6563	Which disease is also known as "Hansen's Disease"?	Leprosy		0
6564	Excluding the what word appears most in Bond film titles	Never		0
6565	Not obvious colours - what links orange silver purple	Can't rhyme in English		0
6566	French revolution what did the prisoners travel to the guillotine in	Tumbrels		0
6567	How Are The Pop Duo Ben Watt And Tracy Thorn Collectively Known	Everything But The Girl		0
6568	What did Brian Epstein manage before the Beatles	A Record Shop		0
6569	Tourists who are eager to visit recently erupted volcanoes while on vacation should take heed. Volcanic ash has been known to remain hot for a period of nearly ______________	100 years		0
6570	In which form of Japanese theatre are all roles played by men	Kabuki		0
6571	Which cartoon character has a girlfriend named Petunia	Porky Pig		0
6572	On the show Cheers,What was the name of the restaurant above the bar.	Melvilles		0
6573	Where is the base city for Porsche cars	Stuttgart Germany		0
6574	The fins of which fish are made into a soup?	Shark		0
6575	What did Sally Rogers always wear in her hair?	A bow		0
6576	Two English versions of the 'Bridge of Sighs' are located in which two English cities?	Oxford and Cambridge		0
6577	What was gangster charles floyd's nickname	Pretty boy		0
6578	In order for a deck of cards to be mixed up enough to play with properly, at least how many times should it be shuffled	Seven times		0
6579	A Year Later It Was A Huge Top Ten Hit But Which INXS Single Only Got To No 58 In 1987	Need You Tonight		0
6580	What is the young of this animal called: Tiger	Cub whelp		0
6581	What sci-fi tv show of the 60's became a Filmation cartoon in the 70's?	Star Trek		0
6582	Who Was The Joan Collins Fan Club? 	Julian Clarey 		0
6583	In what sport might you see a stem-christie	Skiing		0
6584	Who was the youngest ever American President?	Theodore Roosevelt 		0
6585	A great wave resulting from an earthquakes is called a (an) ________.	Tsunami		0
6586	 Sir Walter Raleigh's black greyhound was named __________	Hamlet		0
6587	Azote is the old name for what element	Nitrogen		0
6588	Who said in 1951  - "I married beneath me - All women do"	Lady Nancy Astor		0
6589	In which countries would you find the following city 'Cayenne'? 	French Guyana 		0
6590	 You could milk about __________ cows per hour by hand, but with modern machinery, you can milk up to 100 cows per hour.	6		0
6591	What U.S. state includes the telephone area code 816	Missouri		0
6592	What is the best selling single artist ever	Garth brooks		0
6593	What was the name of Ross' pet monkey on 'Friends'	Marcell		0
6594	Which Polish-Ukranian region shares its name with a Spanish region?	Galicia		0
6595	Band of decoration especially at the top of a wall	Frieze		0
6596	In Michigan married couples can be imprisoned unless they what	Live Together		0
6597	In which Olympics did Mark Spitz achieve a new Olympic record by winning seven gold medals	1972		0
6598	An America reindeer	Caribou		0
6599	What hotel hosted the first Oscar ceremony	Roosevelt Hotel		0
6600	“ Fornebu ” International Airport Is In Which European Country	Norway		0
6601	Edgar Cuthwellis was option but the author chose another what	Lewis Carrol		0
6602	What are the English and German names for Easter or Ostern derived from 	The ancient name for the month of April 		0
6603	Who played Dr. Kildare?	Richard Chamberlain		0
6604	Which British bird is the largest of the European grouse	Capercaillie		0
6605	Which Bad Boy Is Arsenals Top Scorer Ever 	Ian Wright 		0
6606	What is the name of the field where Christ was crucified?	Calvary		0
6607	Which Infamous Figure Was Executed Whilst In Prison In Indiana On The 11 th June 2001?	Timothy McVee (The Oklahoma Bomber)		0
6608	Santa Claus reportedly lives at the _____ Pole.	North		0
6609	The Panama canal connects the pacific Ocean and which other body of water	Caribbean sea		0
6610	Israel Tongue and who else devised the "Popish Plot"	Titus oates		0
6611	Which Presenter Of Tomorrows World Married Keith Chegwin 	Maggie Philpin 		0
6612	If someone gets out of a difficult situation, he is said to have saved his what	Bacon		0
6613	Which African country has the letters EAK as its international vehicle registration	Kenya		0
6614	In which year did the UK hand over Hong Kong sovereignty to China? 	1997 (June 30th) 		0
6615	In what Australian state would you find Woomera	South australia		0
6616	In the movie what is Shafts first name	John		0
6617	Who was the first president to be televised	F D Roosevelt Worlds Fair 1939		0
6618	 __________ have three eyelids to protect themselves from blowing sand.	Camels		0
6619	Marie Curie won Nobel prizes in which two categories	Physics and chemistry		0
6620	What does the Italian word "Paparazzi" mean	Little fleas		0
6621	American physicist & government adviser, who directed the development of the first atomic bombs	J robert oppenheimer		0
6622	What colour is cerulean	Blue		0
6623	Who is Harry Potters main enemy	Lord Voldemort		0
6624	Who is Don Van Vliet better known as?	Captain Beefheart		0
6625	What number is used to represent satan	666		0
6626	What animal is on the cover of the Beach Boy's album Pet Sounds?	Goat		0
6627	Liver disease caused by alcoholism	Cirrhosis		0
6628	What is the flower that stands for: confession of love	Moss rosebud		0
6629	Name The Legendary British Producer Who First Shot His Landlady Before Shooting Himself	Joe Meek		0
6630	The U.S. coastline, comprised of the Atlantic, __________, and Gulf waters, involves 25 of the 48 mainland states.	Pacific		0
6631	Which Former Hit Single Did Status Quo Alter The Title Of And Re Release In 1988	They Changed Rockin To Running		0
6632	Who was the original voice of Darth Vader (hint: NOT James Earl Jones)	David Prowse		0
6633	Which great battle took place from July 1st to November 18th 1916?	The Battle of the Somme		0
6634	Which year of the Chinese calander began in the year 2000	Dragon		0
6635	Strawberries are the undoing of an unhinged man in which 50s film ? 	The Caine Mutiny 		0
6636	What Are The Names Of The 3 Wise Men Who Brought Gifts To The Baby Jesus 	Gaspar, Melchior, Balthasar 		0
6637	Bad before a German town name means what	It’s a Spa Town		0
6638	What was the name of the monster that attacked Luke in the trash compactor in Star Wars?	A dianogaIn		0
6639	In the Little Mermaid fairy tale what happens to her	She Dies		0
6640	Which Celebrity Chef Owns A Chain Of Restaurants Called 'Fifteen'' 	Jamie Oliver 		0
6641	What does a cat use to determine if a space is too small to squeeze through	Whiskers		0
6642	What colour is Octopus blood	Blue		0
6643	What does a bryologist study	Mosses		0
6644	The transcendental number 'e' was named after what mathematician	Euler		0
6645	What entertainer is allowing one of his songs to be used in a government campaign to beat drunk driving?	Michael Jackson		0
6646	What was the name of the sad faced clown portrayed by Emmett Kelly	Weary		0
6647	Rank of a knight between bachelor and baron	Banneret		0
6648	Xenophobia is the fear of ______	Strangers		0
6649	The De Beaumont centre in London specialises in what sport	Fencing		0
6650	Which Female Trio Released The Multi Platinum "Wide Open Spaces" In 1998	Dixie Chicks		0
6651	Which Author Who Is Most Remembered for Writing Another Series Of Books. Also Wrote the Childrens Story Chitty Chitty Bang Bang	Ian Flemming		0
6652	Which Musical Was The First To Feature A Mixed Black And White Cast On Stage	Show Boat		0
6653	Which animal is known as 'zorro' in Spanish and 'volpe' in Italian	Fox		0
6654	What famous stone structure is located near Salisbury ?	Stonehenge		0
6655	How many keys are there on a grand piano?	Eighty eight		0
6656	English charts: Clive Dunn had a hit called Grandad in which year	1971		0
6657	Who was the greek god of fire	Hephaestus		0
6658	What was the first man made object to leave the solar system	Pioneer 10		0
6659	What computer language was named after ada lovelace	Ada		0
6660	Which major land offensive began on the 1st July, 1916	Battle of the somme		0
6661	What fashion designer was responsible for "The New Look"	Christian Dior		0
6662	What did President J. Buchanan not have	A wife		0
6663	In 1361 bc, who became the king of egypt at the age of nine	Tutankhamen		0
6664	Cookie what gas that animals exhale do plants utilize	Carbon dioxide		0
6665	A Treskilling Yellow sold for over $2 million in 1996 what is it	A Stamp		0
6666	An Andy Panda cartoon gave birth to a famous, cantankerous bird. Name him.	Woody woodpecker		0
6667	Which UK Band Had A Hit With "Sonic Boom Boy"	Westworld		0
6668	Oedipus was named after what - literal translation	Swollen feet		0
6669	Escaping convicts used to drop what to throw dogs off the scent	Red Herrings		0
6670	Havana is the capital of which country?	Cuba		0
6671	Who wrote "When angry, count a hundred. When very angry, swear"	Mark twain		0
6672	What river does the Grand Coulee Dam dam	Columbia		0
6673	In space talk, FTL is an acronomy for ______ ____ _____.	Faster than light		0
6674	This book, Oscar Wilde's only novel, was used as evidence in his sodomy trial?	The Picture of Dorian Gray		0
6675	What was the last chinese dynasty	Manchu		0
6676	How many organizational levels are there in the human body	Four		0
6677	What is the basis of the Indian dish 'Riata'	Yoghurt		0
6678	Who owned a chimp called Chee-Chee	Dr Dolittle		0
6679	Royal Society Prevention Accidents 1991 7500 injured by what	Shopping Trolleys		0
6680	Which is the most widely used expression in any language	Ok		0
6681	Americans Call It A Caribou What Is It Called In Europe 	Reindeer 		0
6682	The Echidna, Or Spiny Anteater , & The Duck Billed Platypus Shares A Characteristic Which Does Not Apply To Any Other Mammal What Is It? 	They Lay Eggs 		0
6683	Film Title: The Last Days of _________. (a city)	Pompeii		0
6684	Who was the democratically elected President of Chile killed during a military coup in 1973	Salvador allende		0
6685	Which fruit has the most calories per gram?	Avocado		0
6686	What Does TT Stand For In Connection With The Isle Of Man Motorcycle Race? 	Tourist Trophy 		0
6687	Which Song Was A Hit For Both Westlife And Abba?	I Have A Dream		0
6688	What did dr seuss' grinch steal	Christmas		0
6689	What is the name of the gold-mining town in the musical Paint Your Wagon	No name city		0
6690	Which beer was promoted with the slogan 'The Beer that men drink'?	Double Diamond		0
6691	In 1890 the first electric what opened in London	Underground railway		0
6692	Iron statue of Vulcan looks down Red Mountain what US city	Birmingham Alabama		0
6693	What revelation did alexander butterfield make to the senate watergate committee 	The oval office bugging 		0
6694	Which chemical element takes its name from a German word for goblin	Cobalt		0
6695	Singer paula ______	Abdul		0
6696	Who played Annie Walker in Coronation Street	Doris speed		0
6697	Where would you find the Queen Alexandra, Queen Elizabeth and Queen Maud mountain ranges? 	Antarctica 		0
6698	Benjamin Franklin suggested that __________ should be the U.S. national bird	Turkey		0
6699	Which sporting hero from the 70's died in October 1995 at the age of 30? 	Red Rum 		0
6700	What is the largest city in Australia, in terms of population	Sydney		0
6701	What are the roads of guam paved with	Coral		0
6702	What pastry is uded to make eclairs	Choux		0
6703	Whose Breakthrough Single Came With Messages?	Orchestral Manoeuvres In The Dark		0
6704	Which European club has won the most european cups in the 90s?	AC Milan		0
6705	Where does the wine Mateus come from	Portugal		0
6706	What is the emblem on the All Black rugby shirt? 	Silver Fern 		0
6707	What colour are the Amazon river dolphins	Pink		0
6708	Who described TV as "Chewing gum for the masses"	Architect Frank Lloyd Wright		0
6709	Which Billy Rose song, written with Al Jolson and Dave Dreyer, was a hit as a duet for Frank Sinatra and Sammy Davis Jnr. in 1962	Me and my shadow		0
6710	The name of which Indian city means Village of Boiled Beans	Bangalore		0
6711	What ONE word fits ____stream; ____hill; _____pour.	Down		0
6712	What is switzerland's official neutral name	Helvetic confederation		0
6713	Which planet is orbited by the moon Charon	Pluto		0
6714	In Newark its illegal to sell what after 6pm unless Drs note shown	Ice Cream		0
6715	A well in which water rises through natural pressure	Artesian		0
6716	Who Owns The Cray Super Computer?	The Met Office		0
6717	What is the name of the capital of Alberta (Canada)	Edmonton		0
6718	Who coined the term security blanket	Charles Schulz		0
6719	Which European city is served by Galileo Galilei Airport	Pisa		0
6720	What is the largest lizard on earth at ten feet long & up to 250 pounds	Komodo dragon		0
6721	Homichloriphobia is the fear of what	Fog		0
6722	Name The Production Credit That Jagger & Richards Adopted From 1974 Onwards	The Glimmer Twins		0
6723	In the Saint series of books what is Inspector Teal's full name	Claude Eustace Teal		0
6724	Which Nation Has The Sweetest Tooth 	Holland 		0
6725	What does cbs stand for	Columbia broadcasting system		0
6726	Which German federal state surrounds the city of Berlin? 	Bradenburg 		0
6727	What Does An Apiarist Keep? 	Bees 		0
6728	Not harmful to the environment	Eco-friendly		0
6729	The Aztecs Ayecotl is a forerunner of what current food	Haricot Beans		0
6730	The stone what dietary problem were 65 percent of brazilians suffering in 1985	Malnutrition		0
6731	Sigmund Freud had a phobia - what was he afraid of	Ferns		0
6732	Third letter of the Greek alphabet	Gamma		0
6733	Which British Queen was excommunicated by the Pope	Elizabeth i		0
6734	Which country was the setting for The Flame Trees of Thika	Kenya		0
6735	Name the toy that consisted of color pencils and plastic which you would put in the oven to create. 	Shrinky Dinks 		0
6736	What state is the Golden State?	California		0
6737	Who Was The Childhood Playmate Of Little Jackie Papers	Puff The Magic Dragon		0
6738	Which element has the lowest boiling point	Helium		0
6739	In the Bible, which city was destroyed on God's command to Joshua and the people of Israel, by walking around it seven times whilst blowing loudly on horns	Jericho		0
6740	Fill in the blank: take me to your ___	Leader		0
6741	Chinese call it little mouse, Danes Swedes elephants trunk?	The @ sign		0
6742	The phillips head screwdriver was invented where	Oregon		0
6743	What is a moab	Type of hat		0
6744	Bridgeport is the largest city in which state	Connecticut		0
6745	Which 1960's group sang a song inspired by 'Alice In Wonderland'?	The Jefferson Airplane		0
6746	Which Californian desert drops below sea level?	Death Valley		0
6747	In Dukes of Hazard boys drove General Lee name Daisies jeep	Dixie		0
6748	If You Suffered From Lockiophobia What Would You Be Afraid Of	Child Birth		0
6749	Who is the greek equivalent of the roman god Neptune	Poseidon		0
6750	Who said "I like Beethoven especially the poems"	Ringo Starr		0
6751	In 1981, who's gold lp was called "bella donna"	Stevie nicks		0
6752	In The Wizard Of Oz, What Was The Lion Looking For 	Courage 		0
6753	What is the most ordered item in American restaurants	French Fries		0
6754	What is 11-12 Inches Long and Can't Weigh Less Than 50 Grams? 	A Relay Batton 		0
6755	What is the name of the lead singer for the Smiths?	Morrisey		0
6756	What Was Duran Duran First Ever Top 40 Single	Planet Earth		0
6757	Who Recorded A Version Of "It's A Hard Days Night" In The Style Of Laurence Olivier's Richard iii	Peter Sellers		0
6758	Where could you see a likeness of Pharaoh Khafres head	On the Sphinx		0
6759	Whose autobiography was "Can you tell what it is yet"	Rolf Harris		0
6760	Name the French blue-veined cheese that is ripened in limestone caves	Roquefort		0
6761	In music what is a chromatic scale	A scale made up of semi-tones		0
6762	What is the name of the Turkish aniseed liqueur trans lions milk	Raki		0
6763	 Natural vanilla flavoring comes from this plant.	Orchid		0
6764	An iron hook with a handle used for landing large fish.	Gaff		0
6765	In music what does the term 'ff' mean	Very loud		0
6766	What is the venue for the coursing Waterloo Cup	Altcar		0
6767	The Lead Singer Of Ultravox Was Called Midge Because That's His Real Name Or Because He Was Short	Because He Was Short		0
6768	In Shakespeare's The Taming of the Shrew , what is the name of the shrew	Katharina		0
6769	What product sold 330 in the US in its first year	VW Beetle		0
6770	There are only two three letter herbs Rue is one what's the other	Bay		0
6771	Astronomer Fred Hoyle coined which phrase	The Big Bang		0
6772	U.S. Captials - North Dakota	Bismarck		0
6773	Pat Benatar Asked You To "Hit Her With Your" What	Best Shot		0
6774	In Olympic Weight Lifting What Are The 2 Methods Of Lifting 	Clean & Jerk , The Snatch 		0
6775	Who composed the title music to TV's "Inspector Morse"	Barrington pheloung		0
6776	What was astronaut edwin aldrin's nickname	Buzz		0
6777	All American umpires wear what	Black underwear		0
6778	Who Did Shirlie Drink To Success With In 1987 With The Single Heartache	Pepsi		0
6779	Which private eye hero did the author Raymond Chandler create	Philip marlowe		0
6780	What Is The Capital Of Portugal 	Lisbon 		0
6781	Alan Ginsberg is credited with inventing what 60s phrase	Flower Power		0
6782	Two angles that total 180 degrees are called _______.	Supplementary		0
6783	 Milk snakes lay about 13 eggs _ in piles of animal __________	Manure		0
6784	What film starred drew barrymore, mary-louise parker, and matthew mcconaughney	Boys on the side		0
6785	Who produced 'Sgt Pepper's Lonely Hearts Club Band'?	George Martin		0
6786	Name The Composer Who Supplied The Music To The Hitchcock Movies Psycho, North By Northwest & Vertigo	Bernard Hermann		0
6787	Which group's first top 10 hit was Right Now in 1999?	Atomic Kitten		0
6788	What is a group of pheasant	Nest		0
6789	Whose wife was turned into a pillar of salt	Lot's		0
6790	As the speed of a body approaches the speed of light, its mass approaches ________	Infinity		0
6791	John Wayne called what film "The most un-American thing ever"	High Noon		0
6792	The Late Edward Smith "That Means He's Dead" Edward Smith Has What Historical Claim To Fame	Captain Of The Titanic		0
6793	Famous Phrases: Who knows The ______.	Shadow		0
6794	Who invented the thermometer in 1593? 	Galileo 		0
6795	French for 'flight in the wind' 	Vol-au-vent 		0
6796	What was the name of Speed Racer's car?	The Mach Five		0
6797	What is the basic unit of currency for Finland ?	Markka		0
6798	Who wrote the novel The Money Changers	Arthur Hailey		0
6799	What river is represented by the blue stripe on the Gambian flag	Gambia		0
6800	Who was the 16th century physician who revolutionized anatomy by performing post-mortems	Andreas vesalius		0
6801	Ernest Evans became famous under what name	Chubby Checker		0
6802	Itamae have what job in Japan	Chef - In Front of cutting board		0
6803	Which bird is famous for its ability to walk long distances and for killing snakes by stamping on them with its huge feet?	Secretary Bird		0
6804	Mr Doberman developed the breed protection at work - what job	Tax Collector		0
6805	What is the capital of Seychelles	Victoria		0
6806	Who wrote the book 'The Shining' on which the 1980 Stanley Kubrick film was based 	Stephen King 		0
6807	Who designed the WW 1 plane Camel and co designed Hurricane	Thomas Octave Murdoch Sopwith		0
6808	What is bell metal an alloy of	Tin & copper		0
6809	What did Paul Benier leave in his locked getaway car while he robbed a bank in Swansea, Massachusetts	His car keys car keys the car keys		0
6810	Where would you find Argine Esther Judith and Pallas	Pack of cards – Queens names		0
6811	In Which Country Was John Constable Born 	Suffolk 		0
6812	White Room' was a hit off which Eric Clapton album?	Cream		0
6813	What happens to Wanda in "A Fish Called Wanda"?	Wanda is eaten		0
6814	Which wedding anniversary is coral	Thirty fifth		0
6815	To make a car go backwards you have to put it in what gear?	Reverse		0
6816	Which Football Team Managed To Loose The 1974,1978 World Cup Finals 	Holland 		0
6817	What does the electrical abbreviation db stand for	Decibel		0
6818	What is a french 'german shepherd'	Alsatian		0
6819	The state of __________ was once known as the "Earmuff Capital of The World". Earmuffs were invented there by Chester Greenwood in 1873.	Maine		0
6820	What is the fear of chinese, chinese culture known as	Sinophobia		0
6821	What began in 1877 but banned women until 1884	Wimbledon Tennis		0
6822	The archbishop of krakow, in 1978, came to be known as whom	Pope john paul		0
6823	Which film director's films include "Midnight Express" and "Bugsy Malone"	Alan parker		0
6824	How deep is a fathom	Six feet		0
6825	Product name from the words Durability Reliability Excellence	Durex condoms		0
6826	By what name is Allan Stewart Konisburg better known as?	Woody Allan		0
6827	What is the young of this animal called: Hippo	Calf		0
6828	Which Country Has The Longest Coastline In Europe	Norway		0
6829	Which form of light is used to treat skin diseases	Ultraviolet		0
6830	What is the flower that stands for: counterfeit	Mock orange		0
6831	What beverage named after the UK Prime Minister of the 1830s	Earl Grey Tea		0
6832	What creature was the early symbol for christ	Fish		0
6833	In which country is K2, the second-highest mountain in the world, located?	Pakistan		0
6834	After The Fire made 'Der Kommissar' popular, but which eighties musician performed it originally? 	Falco 		0
6835	In which 1975 smash hit film did the male star own a fishing boat called Orca	Jaws		0
6836	What is Blondie's maiden name?	Oop		0
6837	Of what was the first lightbulb filament made	Cotton		0
6838	What profession had Lemual Gulliver when he was shipwrecked	Ships surgeon		0
6839	_______________ has 254 counties. Alaska, which is more than twice as large, hasn't any.	Texas		0
6840	What pigment affects the colour of the hair & skin	Melanin		0
6841	What's pennsylvania's state tree	Mountain laurel		0
6842	Who played the mutating fly in the film 'the fly'	Jeff goldblum		0
6914	Legal Terms: To steal property entrusted to one's care.	Embezzle		0
6843	In siberia in 1994, a container full of what was discovered in the 2,000 year old grave of a scythian princess and priestess	Marijuana		0
6844	Mount Victoria is the highest peak of this island country.	Fiji		0
6845	"Baker Street" Was A Hit In 1992 Who Sang It	Undercover		0
6846	Who surpassed George Halas for most career NFL coaching victories in 1993	Don shula		0
6847	Cherilyn Sarkisian Lapiere Is The Real Name Of Which Singer	Cher		0
6848	Are most cats right pawed or left pawed	Left		0
6849	What northern nation's geyser heated soil allows it to grow bananas	Iceland's icelands iceland		0
6850	Who was the eighties group that was named after the inventor of the radio?	Tesla		0
6851	Brave New World - Aldus Huxley - where name from	Shakespeare's The Tempest		0
6852	 There are about 40 different __________ in a birds wing.	Muscles		0
6853	Who wrote "The Corn is Green"	Emlyn williams		0
6854	In common: nova, comet, galaxy, meteor	Cars named after stellar bodies car		0
6855	From what Irish words is 'Dublin' derived?	Dubh linn		0
6856	Two villains first appear in Batman Comics 1 - Joker and who	Cat - Later called Catwoman		0
6857	Mickey Mouse is known as what in Italy?	Topolino		0
6858	What is the capital of Armenia ?	Yerevan		0
6859	What is the more common name for the bird also known as the windhover	Kestrel		0
6860	What is the fear of flying known as	Pteromerhanophobia		0
6861	What is the name for the study of liquid flow	Hydraulics		0
6862	Where is the old quarter 'plaka'	Athens, greece		0
6863	Fundador is a potent brandy made in what country	Spain		0
6864	Kevin Keegan & Henry Cooper Both Have A Connection , What Is It 	Brut 33 		0
6865	What are the fundamental constituents of tissue building drugs	Anabolic steroids		0
6866	Who would wear a diadem	Kings headband		0
6867	On The Drew Carey Show what foreign country did Mimi send Drew to?	China		0
6868	Where is Selfridges?	Oxford Street, London		0
6869	Which Englishman Was Famously Beheaded On The 29 th October 1618 ?	Sir Walter Raleigh		0
6870	The first International floodlight football match took place in what year	1955		0
6871	Three of the following U.S. Presidents appeared at one time or another on what's my line which one did not Jimmy Carter, Gerald Ford, Ronald Reagan, George Bush	George bush		0
6872	In brewing what do the initials OG stand for	Original Gravity		0
6873	Which German firm produced the World War Two plane the Condor	Fockewulf		0
6874	The pivot point of a lever is called the _________.	Fulcrum		0
6875	The Salvation Army was founded in what year	1865		0
6876	Who, posthumously, was the Formula 1 Drivers' World Champion in 1970	Jochen rindt		0
6877	What Type Of Cheese Was Traditionally Made From Buffaloes Milk? 	Mozzarella 		0
6878	The normal temperature of a cat is _____ degrees (it's a decimal)	101.5F		0
6879	What is the chemical symbol for lead?	Pb		0
6880	What is the minimum number of integer degrees in an obtuse angle?	91		0
6881	What is defined as "The fruit of the oak, beech, chestnut, and other forest trees, on which swine feed"	Mast		0
6882	Logophobia is the fear of	Words		0
6883	The largest rough diamond is a?	Cullinan		0
6884	What is recorded with two beams of light	Holograph		0
6885	In Happy Days what was Potsies full name	Warren Webber		0
6886	What line of latitude separates the Slave States form the Free States of the USA?	Mason-Dixon Line		0
6887	Which fruit has the scientific name of malus pumulia? 	The Apple 		0
6888	What Do You Call A Birth Where A Baby's Feet Are Delivered First 	Breech Birth 		0
6889	In which American city can you get doctorate in hambugerology	Hamburger College – Chicago		0
6890	The Young Ones Was A Hit On Both Screen & Vinyl For Which British Legend	Cliff Richard		0
6891	What is the basic unit of currency for Honduras ?	Lempira		0
6892	What term originally menat instruction in all branches of knowledge, or a comprehensive education in a specific subject	Encyclopedia		0
6893	Which Beatles Son Had A Hit With "Too Late For Goodbyes"	John Lennon (Julian)		0
6894	What is the cube root of 64	Four		0
6895	Who Released The 70's Album Entitled The Grand Tour 	George Jones 		0
6896	Which british club became the first to have an all seater stadium? 	Aberdeen 		0
6897	What two words make the word 'meld'	Melt and weld		0
6898	What two items make up the dish devils on horseback	Bacon Prunes		0
6899	What are Arran Pilot Homeguard and Ulster Chieftain	Early types of Potato		0
6900	With which part of the body is dermatology concerned	Skin		0
6901	What name was given to the light, clear wine developed in medieval times along the coastal valleys of the Gironde river in the Bordeaux region? 	Claret 		0
6902	What is the correct name for brown coal	Lignite		0
6903	Author of Good as Gold and Closing Time but famed for another	Joseph Heller Catch 22		0
6904	How Many Successive Wimbledon Titles Did Bjorn Borg Win 	5 		0
6905	An adventurous penguin named Tennessee Tuxedo had a sidekick named _______?	Chumley		0
6906	Which Song From "The White Album" Was Originally Entitled "Maharishi" ?	Sexy Sadie		0
6907	What is in the Red Data Book	Endangered Species		0
6908	What is tramp's nickname for lady in "Lady and the Tramp"	Pidge		0
6909	The first international cricket match ever, was held between canada and _____	U.S.A.		0
6910	Literature Scramble: lxrnaadee lzynsshietno (Author of Gulag Archipelago)	Alexander Solzhenitsyn		0
6911	Which sailor dreamed of Toasted Cheese in Treasure Island	Ben Gunn		0
6912	In 1900, what was the average lifespan in the u.s	Forty seven		0
6916	What system is based on the number 10	Decimal		0
6917	Who was known as the clown prince of basketball	Meadowlark lemon		0
6918	What is the maximum number of clubs a golfer may use in a round	Fourteen		0
6919	On the fahrenheit scale, there are 180 degrees between boiling point and ______	Freezing point		0
6920	U.S. Captials - Illinois	Springfield		0
6921	What is the fear of politicians known as	Politicophobia		0
6922	The only us state that celebrates its own independence day	Texas		0
6923	What is the longest English word that only has one vowel	Strengths		0
6924	"The Diary of Anne Frank" was first published in English under what title	The diary of a young girl		0
6925	What was the original name of Duran Duran?	RAF		0
6926	Liza Minelli played what character in Cabaret	Sally Bowles		0
6927	In Raton New Mexico its illegal for a woman to ride wearing what	A Kimono		0
6928	What is the second largest of the United States	Texas		0
6929	In the English legal system there are three Divisions in the High Court of Justice. One is the Family division. Name the other two	Queen's bench & chancery		0
6930	 Crabs and other crustaceans can escape danger by simply discarding an injured or trapped __________	Limb		0
6931	What sort of meat is used in the dish Guard of Honour	Neck of Lamb		0
6932	Which actor's real name is Emmanuel Goldenberg	Edward g robinson		0
6933	How often does a quotidian thing occur	Daily		0
6934	The geometric shape found on the Bass Pale Ale bottle	Triangle		0
6935	What was the Grammy album of the year in 1967 (Full name)	Beatles Sergeant Peppers		0
6936	Who Penned The 1999 Autobiography (Managing My Life)? 	Alex Ferguson 		0
6937	Off what coast was 'prison island'	French guiana		0
6938	In 1962 Chubby Checker had a hit with a pop song and novelty dance that remains famous today. What was that dance?	The Twist		0
6939	Who invented the saxophone	Adolphe sax		0
6940	In which European country is Romansch one of the official languages	Switzerland		0
6941	Hills and ridges composed of drifting sand are known as _____.	Dunes		0
6942	A Ten pound note depicts a scene from which Dickens novel	Pickwick papers		0
6943	In Computing What Does The Word Modem Stand For 	Modulate Demodulate 		0
6944	What is the oldest country in Europe	San Marino 301 ad		0
6945	In which country are 'fajitas' a traditional dish	Mexico		0
6946	Addictive drug prepared from morphine	Heroin		0
6947	Which Cricketing Bad Boy Is Known As 'The Cat' 	Phil Tuffnel 		0
6948	What is a Winter Banana	A variety of Apple		0
6949	What is the technical name for the twisting of a stalk as it grows in response to a stimulus from a particular direction	Strophism		0
6950	What is a group of this animal called: Hare	Down husk		0
6951	Who was the NBA's most valuable player in 1976, 1977 and 1980?	Kareem Abdul-Jabbar		0
6952	Gangster Al Capone, boss of the Chicago underworld, was finally gaoled for 11 years for what crime?	Tax evasion		0
6953	What war lasted from june 5 to june 11 1967	Six day war		0
6954	What chemical compound causes pain in muscles after exercise?	Lactic acid		0
6955	What Was The First Record To Chart For US Supergroup "The Eagles"	One Of These Nights		0
6956	What are the Aki - Dai-shimizy - Seikan in Japan	Tunnels		0
6957	3 Singers Have Sung The Opening Line The Christmas Favourite Do They Know Its Christmas (PFE) 	Paul Young, Kylie Minogue, Chris Martin 		0
6958	Which independent family company is Britain's oldest brewer, having been brewing on the site in Faversham since 1698	Shepherd neame		0
6959	What lake is approximately 394,000 sq km	Caspian sea		0
6960	What ship did jason sail on	Argo		0
6961	What's the capital of Uruguay	Montevideo		0
6962	Aesthetic principles derived from the literature and art of ancient Greece & Rome, but found as ideals in all ages is called?	Classicism		0
6963	What is the brewery featured in Coronation Street? 	Newton and Ridley 		0
6964	What is the third month of the year	March		0
6965	Who were Paul Humphries & Andy Mc-Cluskey Better Known As	OMD		0
6966	What Process Is Used For Dating Ancient Organic Objects? 	Radio Carbon Dating 		0
6967	In the rules of golf what type of bad weather can stop play	Only Lightning		0
6968	How many bottles of `champagne' are there in a Nebuchadnezzar? 	20 Bottles 		0
6969	What is the twelfth month of the year	December		0
6970	What Year Saw The Imposition Of Martial Law In Poland 	1918 		0
6971	A 'bunya-bunya' tree is native to which country	Australia		0
6972	Where did the Mafia originate ?	Sicily		0
6973	In what film did Mary Poppins - Julie Andrews bare her nipples	S.O.B.		0
6974	Who was the female Prime Minister of England throughout the eighties? 	Marget Thatcher 		0
6975	What was the. first bird that Noah sent from the Ark	Raven		0
6976	The Balfour Declaration by Great Britain was in what year	1917		0
6977	Who was Poet Laureate from 1843 to 1850, during which period he wrote no poetry at all	William wordsworth		0
6978	In which country is the Machu Picchu?	Peru		0
6979	Which drink did Bach enjoy so much he wrote a cantata for it	Coffee		0
6980	In the UK at least which products selling feature is a magic inch	E A Careys Pipes		0
6981	The following is a line from which 1970's film 'There're all gonna laugh at you' ? 	Carrie 		0
6982	The Associated Powers - the original proposed name of what	The United Nations		0
6983	What kind of drum is beat beat in the first line of night and day	Tom-tom tom tom		0
6984	Which Movie Tough Guy Drove A Car That Had The Licence Plate "Awsome 50"	Cobra		0
6985	A narrow crack or split	Fissure		0
6986	What is the ancient Chinese art of placement called	Feng shui		0
6987	In September of 1994, 852 people died when the ferry Estonia sank in what sea	Baltic Sea		0
6988	Not as soups what have gazpacho - vichyssoise in common	Served Cold		0
6989	How Many Violin Concertos Did Beethoven Write	One		0
6990	What did 'Enigma' return to in January 1994	Innocence		0
6991	Which album is "Only A Nothern Song" on?	Yellow Submarine		0
6992	What was the name of the robot on Buck Rogers?	Twiggy		0
6993	Which beer was advertised as good for you	Guinness		0
6994	The statue of which famous Englishman stands in the"Piazza of the British Library	Sir isaac newton		0
6995	Intense aerial bombing is called what	Saturation		0
6996	Antipater of Sidon first listed what 2nd Century AD	7 Wonders World		0
6997	Who is known as the 'father of the atomic bomb'	Robert oppenheimer		0
6998	What is the capitol of Venezuela	Caracas		0
6999	What is Kenny G's real surname?	Gorelick		0
7000	Little Larry Puny Pete Small Sam considered names of who	Dickens Tiny Tim		0
7001	And What Did Thomas Edison Later Invent In The Lab Set Up With The Prize Money Awarded To The Above Invention 	The Gramophone 		0
7002	Which corporation opened it's new headquarters in Portland Place, London in May 1932? 	The BBC 		0
7003	What Do Invertebrates Lack? 	A Backbone 		0
7004	What does the electrical term 'ac' stand for	Alternating current		0
7005	U.S. Captials - New York	Albany		0
7006	What is a 'yesterday, today and tomorrow'	Shrub		0
7007	What Is The Nickname Of Bruce Springsteen	The Boss		0
7008	In the film 'The Day Of The Jackal', who played the Jackal?	Edward Fox		0
7009	 There are 328 species of __________	Parrots		0
7010	What Famous Gothic Novel Was Written By Mary Shelley 	Frankenstein 		0
7011	Who was Poet Laureate during World War One	Robert bridges		0
7012	Name the author of Dracula 	Bram Stoker		0
7013	Of which State was Jimmy Carter Governor before he became president	Georgia		0
7014	Fear of thunder or thunderstorms is ______	Brontophobia		0
7015	How far is Neptune from the sun	2793 million miles		0
7016	Savoy And Late Flat Dutch Are Both Varieties Of Which Vegetable? 	Cabbage 		0
7017	What is the name of the infection of the gums that causes them to bleed	Pyorrhoea		0
7018	Which biblical character had 12 sons	Jacob		0
7019	How Are Clyde , Ding-A-Ling, Zippy, Pockets, Snoozy, Softy & Yak Yak Collectively Known?	The Ant Hill Mob		0
7020	Who is the best-selling saxophonist	Kenny g		0
7021	N. African dish of cracked wheat steamed over broth	Couscous		0
7022	Which Sportsman's Autobiography Is Called 'My Side''? 	David Beckham 		0
7023	What was superhero Green Lantern vulnerable to	Anything Yellow		0
7024	What did Colonel Blood try to steal in 1671	British crown jewels		0
7025	Which 60's Movie features The Line he's very clean 	A Hard Days Night 		0
7026	Which of the following brands of drink sold the most in the UK in the year 2000 - Ribena, Lucozade or Tango?* * 	Ribena 		0
7027	What is the phonetic alphabet word for letter P	Papa		0
7028	In 1948 A Personnel Officer At ICI Noted That An Applicant Was "Headstrong, Obstinate & Dangerously Self Opinionated" Which Potential Recruit Was Turned Down	Margaret Thatcher		0
7029	Who Beat Arsenal In This Year To Become The UEFA Champions League Winner? 	FC Barcelona 		0
7030	Where in the world are most diamonds found	Australia		0
7031	What Soviet leader seized control from Khrushchev in 1964	Leonid Brezhnev 1984 till died 92		0
7032	Who is better know as Vincent Damon Furnier?	Alice Cooper		0
7033	Where do the White and Blue Niles join	Khartoum - in Sudan		0
7034	How Many Crusades Were There? 	Nine 		0
7035	Which Now Standard Fittings Were First Featured On A Car In 1916 	Automatic Windscreen Wipers 		0
7036	What country declared itself first atheist state in 1967	Albania – banned religion		0
7037	In mythology, who was the mother of Eros and Aeneas	Aphrodite		0
7038	What type of whisky is called "old no 7"	Jack daniels		0
7039	Which city is the capital of the Austrian province of Tyrol	Innsbruck		0
7040	What have woodpecker scalps, porpoise teeth and giraffe tails all been used as?	Money		0
7041	Who wasn't afraid to call James Joyce 'A greasy undergraduate'	Virginia wolfe		0
7042	What was Joseph's job? 	Carpenter 		0
7043	What is the literal meaning of the Spanish word tapas (snacks)	Cover or covers		0
7044	What does the painting The Battle of Gettysburg claim to be	Worlds largest		0
7045	In the movie "The Goonies" what brand of candybar did Chunk try to give to Sloth?	Baby Ruth		0
7046	In Greek mythology, who did zeus place in the heavens as the constellation ursa major	Callisto		0
7047	In Which Year Was The Battle Of Trafalgar Fought? 	1805 		0
7048	Which classical composer was nicknamed 'The Red Priest'	Vivaldi		0
7049	In the monty python parody 'search for the holy grail', what was used to kill the rabbit	Holy hand grenade of antioch		0
7050	Port Louis is the capital of which island state in the Indian Ocean	Mauritius		0
7051	France and which country contested first ever world cup match	Mexico		0
7052	What is the strongest land animal	Elephant		0
7053	A green or yellow liqueur brandy	Chartreuse		0
7054	Which Italian won the 1998 Tour de France cycle race	Marco pantani		0
7055	A villanelle is a type of what	Poem		0
7056	Mans formal dress coat called tails is named after what bird	Swallow		0
7057	Which French composer wrote 'The Sorcerer's Apprentice'?	Paul Dukas		0
7058	Who was the first tennis player to achieve the grand slam	Donald Budge		0
7059	A Polyorchid has at least three what	Testicles		0
7060	Who was La Purcelle of Voltair's poem	Joan of Arc		0
7061	What was the Queen Mother's maiden name?	Bowes Lyon		0
7062	What actress played Laura and Almonzo's niece on Little House on the Prairie?	Shannen Doherty		0
7063	In what Puccini opera does Scarpia appear	Tosca		0
7064	What does the word economy mean in original Greek	Home Management		0
7065	What eventually killed Oliver Cromwell	Malaria		0
7066	What is the biggest disqualifying factor for prospective astronauts?	Eyesight		0
7067	What Is The Highest Peak In England And Wales 	Mount Snowdon 		0
7068	In which country was the match invented?	France		0
7069	What is the name of Princess Anne's second husband	Tim laurence		0
7070	Which member of Busted has left the group to join another band?	Charlie Simpson		0
7071	A haemodializar is a mechanical what	Kidney		0
7072	In an authentic Chinese meal what is served last	Soup		0
7073	Where does Gonzo from the Muppet Show come from?	Outer space		0
7074	Irish-born English scientist, who was an early proponent of the scientific method and a founder of modern chemistry	Boyle		0
7075	Cosmetic brand gets it's name from Latin for as white as snow	Nivea		0
7076	This software company produced hits such as 'Pagemaker' & 'Illustrator'	Adobe		0
7077	Which False Idol Was Worshipped By The Hebrews At The Foot Off Mount Sinai 	The Golden Calf 		0
7078	Indiana is known as ______	Hoosier state		0
7079	Phallophobia is a fear of ______	Penis		0
7080	Numbers Where's the famed Arch of Hadrian	Ahtens		0
7081	Which French actor and crooner sings the theme tune to Disney's The Aristocats	Maurice chevalier		0
7082	Which alcoholic beverage is advertised on TV by Tom the Dancing Cat? 	Bacardi Breezer 		0
7083	As whom was Jan Ludvik Hoch better known	Robert maxwell		0
7084	Whom did Joe Walcott defeat at age 37 to win the heavyweight title	Ezzard charles		0
7085	What colour does a chameleon turn when its angry	Black		0
7086	Who was the last reigning King of Egypt	Farouk		0
7087	By What Name Is "Calcium Oxide" More Commonly Known	Quicklime		0
7088	Ball is 38 millimetres in diameter weighs 2.5 grams what sport	Table Tennis		0
7089	What nationality was Fredrick Chopin	Polish		0
7090	Which dish consists of Steak, sprinkled with ground peppercorns, soaked in Brandy and set alight?	Steak Au Poivre		0
7091	Line of hereditary rulers	Dynasty		0
7092	Which famous building is housed at the former site of the Bankside Power Station?	Tate Modern Art Gallery		0
7093	Which Insect Transmits African Sleeping Sickness 	The Tsetse Fly 		0
7094	What Don't The Children Need In Pink Floyd's Another Brick In The Wall	An Education		0
7095	In Gulliver's Travels, what is the name of the flying island inhabited by scientific theorists	Laputa		0
7096	 Bald eagles are not bald. The top of their head is covered with slicked_down white feathers; from a distance, they appear __________	Hairless		0
7097	Which Boyband That Split Up In 2000 Released All Of Their Songs In The USA Under The Name "Silk"	Another Level		0
7098	What is the most popular crop in U.S. home vegetable gardens	Tomatoes		0
7099	What is the attribution of human attributes to a deity	Anthropomorphism		0
7100	What is Barbie`s full name?	Barbara Millicent Roberts		0
7101	In Monopoly, What is the cost to buy Vermont Avenue	100		0
7102	The oldest written plan of government in effect is in what country	United States of America		0
7103	Whose Concerts Formed The Basis Of The Film Rattle & Hum	U2		0
7104	Christian sacrement in which bread and wine are consecrated and consummed	Eucharist		0
7105	Who was the Roman equivalent of the Greek God Zeus	Jupiter		0
7106	Who Described Russia As (A Riddle Wrapped In A Mystery, Inside An Enigma)? 	Winston Churchill 		0
7107	What color is the car that Starsky & Hutch drive?	Red with a white swoop		0
7108	In which European country would you find the town of Eupen	Belgium		0
7109	What is the flower that stands for: declaration of love	Red tulip		0
7110	Which British soccer club was managed by Christian Gross? 	Spurs 		0
7111	Cinnabar is an ore of which metal	Mercury		0
7112	Why two car thieves caught trying to sell stolen car in 1976	Tried to sell to owner		0
7113	Why do some English Football Clubs have triangular corner flags rather than square? 	Won the F.A Cup 		0
7114	In 1996 who did The Spice Girls say was their Girl Power role model? 	Margaret Thatcher 		0
7115	Ronald Wycherley became more famous than	Billy Fury		0
7116	Who sang 'think' in the original 'blues brothers' film	Aretha franklin		0
7117	What Was The Very First Andrew Lloyd Webber Musical To Be Filmed	Jesus Christ Superstar		0
7118	What is the symbol for copper?	Cu		0
7119	Name the biggest hit for the Animals in 1964	House of the rising sun		0
7120	Where would you find the thickest layer of skin on the human body	Feet		0
7121	In Which Country Does The Annual T In The Park Concert Take Place	Scotland		0
7122	Who was the greek god of dreams	Morpheus		0
7123	 A government in which power is restricted to a few is a(n) __________.	Oligarchy		0
7124	Hydrophobia is the fear of	Water		0
7125	If a girl puts the letters of the alphabet face down in water, how will she know who she will marry 	His initials will be face up next day 		0
7126	What ray bradbury novel is named for temperature at which paper catches fire	Fahrenheit 451		0
7127	What fraternity do the Lewis and Gilbert join in Revenge of the Nerds?	Lambda Lambda Lambda		0
7128	Which Former Member Of Genesis Had A Hit With "One More Night"	Phil Collins		0
7129	London's Trafalgar Square Christmas tree is traditionally given by which country? 	Norway 		0
7130	 What type of drink is Perrier?	Mineral water		0
7131	The only actor to receive France's Commander of Arts and Letters Award	Jerry		0
7132	What famous film maker was first to use the close up	David Wark Griffith Birth of a Nation		0
7133	Who ordered the Code Red in "A Few Good Men"?	Colonel Nathan P. Jessup		0
7134	Andrew John Woodhouse in fiction was who - Ira Levin novel	Rosemary's Baby		0
7135	Number of years that Beatlemania toured the United States	5		0
7136	What Is One Inch In Millimeteres 	25.4 mm 		0
7137	Which Musical Act Went By The Fomer Name Of "Two Tons Of Fun"	The Weathergirls		0
7138	Which country is known as the Hashemite Kingdom	Jordan		0
7139	How many engines are on a b52 bomber	Eight		0
7140	What is a male goose called?	Gander		0
7141	Who plays jennifer lindley on 'dawson's creek'	Michelle williams		0
7142	What is New Year's Eve called in Scotland? 	Hogmanay 		0
7143	Of what do earthworms have five?	Hearts		0
7144	In the game of Bridge what are the first six tricks won called	The Book		0
7145	Which drug, later found to have devastating side effects, was launched in 1958 to help pregnant women overcome morning sickness 	Thalidomide 		0
7146	Which is the largest of Neptune's moons	Triton		0
7147	What was the codename of the Allied invasion of North Africa in 1942	Operation torch		0
7148	What is the capital of Guinea_Bissau	Bissau		0
7149	What is a brickfielder	Hot SE Aussie wind		0
7150	Which company operates the Central Selling Organisation	DeBeers - diamonds		0
7151	Who took "everybody loves somebody" to #1	Dean martin		0
7152	Which opera singer was known as "La Stupenda"	Joan sutherland		0
7153	What expression is used to describe a child who closely resembles a parent	Chip off the old block		0
7154	What was invented 1970 US Dr Buddy Lapidus marketed 1975	Odour Eaters		0
7155	Who dies in every episode of the cartoon series South Park	Kenny		0
7156	How big a can of soda pop contains the equivalent of 9 teaspoons of sugar	Twelve ounce		0
7157	What Did Bob Marley Have Surgically Removed In 1977	A Cancerous Toe		0
7158	What town has the highest post office in the US	Climax Colorado		0
7159	What is the fear of light flashes known as	Selaphobia		0
7160	What is the common name for solid carbon dioxide	Dry ice		0
7161	What links stags tails, pickled worms, gallstones, tomatoes	Once thought to be Aphrodisiacs		0
7162	In darts, what is a score of 26	Bed and breakfast		0
7163	John Richie became famous under what name	Sid Vicious		0
7164	Which movie is synonymous with the Adagietto from Mahler's fifth symphony?	Death In Venice		0
7165	What is the lead in pencils made from ?	Graphite		0
7166	In what Elvis film did he play a double role	Kissing Cousins		0
7167	Who was the author of The Moonstone	Wilkie collins		0
7168	Julius Sturgis in 1861 built the first US factory making what	Pretzels		0
7169	What Are Monsters With Only One Eye Called 	Cyclops 		0
7170	Who played 'Hawkeye' in Robert Altman's classic M.A.S.H	Donald sutherland		0
7171	Which character sang, "When you wish upon a star.." in Disney's "Pinocchio"?	Jiminy Cricket		0
7172	Shakespeare character in The Tempest is the son of Sycorax	Caliban		0
7173	In which city is the Wailing Wall?	Jerusalem		0
7174	Telephonophobia is a fear of ______	Telephones		0
7175	Who advocated the planting peanuts and sweet potatoes to replace cotton and tobacco (i.e. crop rotation)	George Washington Carver		0
7176	A kind of tortoise in the galapagos islands has an upturned shell at its neck so it can reach its head up to eat what	Cactus Branches Cactus		0
7177	From Where Does Spaghetti Bolognese 	Bologna 		0
7178	What Is The Male Bee whose Sole Function Is To Mate With The Queen? 	The Drone 		0
7179	Who did Chief Sitting Bull call "Little sure shot"	Annie oakley		0
7180	What is the longest running race at the olympic games	Marathon		0
7181	Who was the first member of the Royal Family to graduate from University? 	Prince Charles 		0
7182	Name Tthe Australian Actor Who Advertised Fosters Lager On Tv 	Paul Hogan 		0
7183	 The world's fastest reptile (measured on land) is the spiny_tailed __________ of Costa Rica. It has been clocked at 21.7 miles per hour.	Iguana		0
7184	Name Australia's highest mountain	Mount Kosciusko		0
7185	What sort of food is a 'rollmop'	Fish		0
7186	Which kind of flower has the most species	Orchid		0
7187	Why Do We Have Eggs At Easter 	They are a symbol of rebirth 		0
7188	In theology, the study of final things such as death, judgement and the end of the world is called:	Eschatology		0
7189	Which vegetable did President George Bush senior declare publicly that he did not like? 	Broccoli 		0
7190	Name the apartments the Jetson's live in.	The skypad apartments		0
7191	In Englands 2002 World Cup Squad Who Was The Heaviest Player? 	David Seaman 		0
7192	What does "mit"stand for	Massachusetts institute of technology		0
7193	In 1902 What did Mary Anderson invent	Windscreen Wipers		0
7194	Monte Corno, at 9554 feet, is the highest point in which Italian mountain range	Apennines		0
7195	You dot your i - what is the dot called	Tittle		0
7196	In which musical did Barbra Streisand disguise herself as a man	Yentl		0
7197	What is the length of a bombardon	16 feet		0
7198	Slam Dunk (Da Funk) Was The First UK Hit For Which Boy Band	Five		0
7199	What is the meaning of the name of the constellation Ophiuchus ?	Serpent Bearer		0
7200	What was the name of Eddie Murphy's character in Beverly Hills Cop? 	Axel Foley 		0
7201	Columbus is the capital of ______?	Ohio		0
7202	What is a group of this animal called: Hog	Drift parcel		0
7203	Whose motto is " Nation shall speak peace unto Nation "	BBC		0
7204	What does the acronym "ram" stand for	Random access memory		0
7205	The average American consumes 9lbs of what every year	Food Additives		0
7206	Dalmatian dogs are born which colour or colours	White - spots come later		0
7207	Who directed the 1974 film Chinatown starring Jack Nicholson	Roman polanski		0
7208	What is the nickname for Pennsylvania	Keystone state		0
7209	Dr C W Long was the first to use what (anaesthetic) in 1842	Ether		0
7210	The Pittsburgh Steelers Won Which Major Sporting Event In 2006 	The Superbowl 		0
7211	What Is The Connection Between Johnny Logan & Sean Sherrard	They Are The Samer Person		0
7212	What was Nancy Davis Reagan's birth name?	Anne Frances Robbins		0
7213	A common sight in most high streets, what was invented in 1967 by Englishman John Shepherd- Barron? 	The Cash Dispenser 		0
7214	What season is it in Australia when it is summer in England	Winter		0
7215	What new invention was shown to Queen Victoria 14 Jan 1878	The telephone		0
7216	If you were performing Christies or edging what are you doing	Skiing		0
7217	What Does ELO Actually Stand For	Electric Light Orchestra		0
7218	This cluster of stars is also known as the seven sisters	The pleiades		0
7219	Which musical featured the song 'If I ruled the world'	Pickwick		0
7220	Who 'imagined' a better world	John lennon		0
7221	What Is The Stimulant Present In Tea & Coffee 	Caffeine 		0
7222	How Many Times Did Michael Schumaker Win The World Formula One Drivers Championships? 	7 		0
7223	What does a phrenologist read	Skulls		0
7224	Live Aid Took Place On The 13th July 1985 But Who Were The Very First Act To Take To The Stage	Staus Quo		0
7225	Name the number system which uses only the symbols 1 and 0.	The binary system		0
7226	What shape is a saggitated leaf	Arrow shaped What is the Oscar statuette holding Sword		0
7227	Rock Groups: Tom Petty and the _____	Heartbreakers		0
7228	Where is the largest aquarium in the u.s	Chattanooga		0
7229	In which novel would Big Brother be watching you	1984		0
7230	Which eighties sitcom featured Tom Hanks in drag on a regular basis?	Bosom Buddies		0
7231	Who wrote the opera' The Turn of the Screw'	Benjamin britten		0
7232	Bismarck is the capital of ______?	North Dakota		0
7233	What make of car was driven by Nurse Gladys Emmanuel in the TV sitcom 'Open All Hours'?	Morris Minor		0
7234	Which singing King died in 1965	Nat king cole		0
7235	Which British opera festival was started in 1934?	Glyndebourne		0
7236	Mentu Egyptian Tyr Norse Gods of what	War		0
7237	This term for those who oppose technological progress stems from 19th century working men who thought machinery would cause unemployment and societal degradation.	Luddites		0
7238	Where did gladiators fight professionally	Roman arenas		0
7239	In which film did orson welles play 'harry lime'	The third man		0
7240	With what did cricketer Mansoor Ali Khan Pataudi frequently play with in his hands?	Glass eye		0
7241	From where is the music for the 'star spangled banner'	Anacreon in heaven		0
7242	Who WasThe First Male To Be Given The The Title Of "Man Of The Year" On Time Magazine	Charles Liindberg		0
7243	 The __________ of a really famished camel may flop over and hang down the side of the body as the fat is used up.	Hump		0
7244	Flattened, oblong organ that removes disease-producing organisms & worn-out red blood cells from the bloodstream	Spleen		0
7245	What is the capital of Michigan?	Lansing		0
7246	For what is tea from willow bark good for relieving	Pain		0
7247	In The Simpsons name the cat	Snowball		0
7248	Germany's WW I allies were Austria-Hungary, Bulgaria, and ________	Turkey		0
7249	In 'dawson's creek', who does michelle williams play	Jennifer lindley		0
7250	What did Pennsylvania legalise before any other colony?	Witchcraft		0
7251	Who led the raid on harper's ferry in 1859	John brown		0
7252	Who did the singer Lulu marry in 1969? 	Maurice Gibb 		0
7253	Neil Tennant and Chris Lowe make up what pop band?	Pet Shop Boys		0
7254	In which county are all ten of England's highest peaks?	Cumbria		0
7255	Which African capital city is named from the Greek meaning 'three towns'	Tripoli		0
7256	Who produced and directed the film 'Citizen Kane'	Orson welles		0
7257	Which Tennis Player Won Wimbledon Twice With An 8 Year Gap Between Victories 	Jimmy Connors 		0
7258	Who was voted "Time Magazine's" man of the year in 1938?	Adolf Hitler		0
7259	What was Lady Chatterley's first name	Constance		0
7260	Garfunkel What is the smallest dinosaur so far discovered	Compsognathus		0
7261	Who was the 3rd president of the U.S.	Thomas jefferson		0
7262	J H Robertson invented what	Automatic Gearbox		0
7263	What was the first name of Captain Bligh, of 'Mutiny on the Bounty' fame	William		0
7264	Which artist is supposed to have used 1000 greens in painting	John Constable		0
7265	Who is Mega Man's creator?                                                                                                           	Dr. Light		0
7266	Symbolics.com was the worlds first what	Registered domain name		0
7267	What beer was promoted with the line: 'Probably the best lager in the world'? 	Carlsberg 		0
7268	This Roman killed himself after his defeat at Actium.	Marc Antony		0
7269	What Is The Significance Of The 1976 Film 'To The Devil _____ A Daughter' 	Last Horror Film Made By Hammer 		0
7270	Which sitcom helped launch Michael J. Fox's career by portraying him as a money-grubbing teenager?	Family Ties		0
7271	What mountain has the figures of three mounted confederate heroes of the civil war	Stone mountain		0
7272	Scoleciphobia is the fear of	Worms		0
7273	Kelsey Grammer sings and plays the theme song for which TV show?	Frasier		0
7274	What is the second highest peak in Africa?	Mt. Kenya		0
7275	In the A Team name Murdoch’s invisible dog	Billy		0
7276	What type of pottery is the Collingwood Ontario area noted for	Blue mountain		0
7277	Which Actor Is An International Bridge Player 	Omar Sharif 		0
7278	Who Was Responsible For Setting Up The Production Company "Ardent" In 1993	Prince Edward		0
7279	What are the pouched animals called	Marsupials		0
7280	In which American state is George A. Romero's 1968 film 'Night Of The Living Dead' set 	Pennsylvania 		0
7281	What drink began in Morison's drug store Waco Texas in 1885	Dr Peppers		0
7282	Who is the current Secretary of State for Social Security	Alastair darling		0
7283	In the 18th century Siberia used solid blocks of what as money	Tea		0
7284	In European city can you be jailed for not killing furry caterpillars	Brussels		0
7285	What was the first food designed for the microwave	Popcorn		0
7286	The Parents Of Which Rock N Roll Superstar Were Called “Vernon & Gladys”	Elvis		0
7287	 The electric eel's shocking power is so great that it can overtake its victims while __________	15 feet away		0
7288	In science it can be up down strange top or bottom what can	Quark		0
7289	What is meant by the cooking term farci	Stuffed		0
7290	Which Former Chancellor Of The Exchequer Introduced The "TESSA Savings Scheme	John Major		0
7291	In which country is the Commandaria wine region?	Cyprus		0
7292	Who wrote 'across the river and into the trees'	Ernest hemmingway		0
7293	Greek Feta cheese is made from the milk of which animal? 	Ewe 		0
7294	In which Shakespeare play would you find Constable Elbow	Measure for measure		0
7295	What was the first album Roger Waters released after leaving Pink Floyd?	The Pros and Cons of Hitch Hiking		0
7296	Which Band Recorded The Album Entitled "Slippery When Wet"	Bon Jovi		0
7297	Who is the only British Prime Minister to be assassinated?	Spencer Percival		0
7298	Where is guantanamo	Cuba		0
7299	What nationality was Johnny Weismuller	Romanian		0
7300	Traffic lights were first used in London in which year	1869		0
7301	Which Singer Has Released Their 3rd Album In 2007, Entitled “ Life In Mono ” ?	Emma Bunton		0
7302	Who was time magazine's 'person of the year' for 1952	Queen elizabeth 2		0
7303	Who Had An 80's Hit With The Song 'Rock 'n' Roll High School,' 	The Ramones 		0
7304	What's the longest river in the U.S.	Mississippi river mississippi		0
7305	What is the title of John Lennon's first published book	In his own write		0
7306	In 1965 who became country music's first millionairess	Loretta Lynn		0
7307	This coutry holds the distinction of being the least densely populated in the world.	Mongolia		0
7308	A lively Spanish dance in triple time performed with castanets or tambourines.	Fandango		0
7309	According to the song "Glass Onion", who was the Walrus?	Paul		0
7310	What city does beacon hill light 	Boston 		0
7311	The main street in Back to the Future is also the main street in what other 80's movie?	Gremlins		0
7312	What is an object worn as a charm	Amulet		0
7313	In literature who lived at 7 Savile Row	Phileas Fogg		0
7314	As what is Merle Haggard also known as?	Okie from Muskogee		0
7315	How long was the six day war	6 days		0
7316	What is bovine spongiform encephalopathy more commonly known as	Mad cow disease		0
7317	What lasted 5 hours and twelve minutes in 1969 longest ever	Wimbledon TV match no tie break		0
7318	What sort of tax system does Australia & New Zealand have	Goods & services tax gst		0
7319	Saying: A bird in the hand is worth two in the	Bush		0
7320	What country designed and developed the bayonet	France		0
7321	She Was The Greatest Of All Blues Singers But Nobody Placed A Headstone On Her Grave Until Janis Joplin Helped Fund A Memorial Many Years After Her Death Who Was She	Bessie Smith		0
7322	Alex Raymond created which comic strip character in 1934	Flash Gorden		0
7323	What composer wrote the Pomp and Circumstance marches	Edward Elgar		0
7324	The American comedian and actor William Claude Dukenfield, died on Christmas Day in 1946. How was he better known? 	WC Fields 		0
7325	Business on what was the world's first adhesive used	Postage stamp		0
7326	Which country has the longest land border	China		0
7327	Sir Charles Babbage Was The Creator Of Which Modern Day Device?	The Computer		0
7328	Name Alvin & Simon's brother was ________	Theo		0
7329	What is a funambulist	Tightrope walker		0
7330	Where do hippopotamuses do 80%of their vocalizations	Underwater		0
7331	What is a group of eagles	Convocation		0
7332	In which verdi opera does violetta sing 'sempre libera'	La traviata		0
7333	What desert lies in Mongolia	Gobi		0
7334	What is the fear of germs or contamination or dirt known as	Mysophobia		0
7335	With With Horror Film Would You Associate The Character Leatherface 	Texas Chansaw Massacre 		0
7336	In which novel would you find reference to "The Cracks of Doom"	Lord of the Rings		0
7337	In 1845 Boston it was illegal to do what without a doctors note	Bathe		0
7338	What is jimmy carter's middle name	Earl		0
7339	The streets of _________ were lit by gaslights for the first time in 1807. Before that, torches were used.	London		0
7340	What is a community of ants called	Colony		0
7341	Ships known as The First Fleet transported what in 1788	Convicts to Australia		0
7342	Where does the abbreviation for pound lb come from	Libra the scales		0
7343	 The __________ _ a relative of the mole _ is the smallest mammal in North America. It weighs 1/14 ounce _ less than a dime.	Pigmy shrew		0
7344	Warsaw is the capital of what country	Poland		0
7345	Who Wrote The Music To The 1994 Movie “The Lion King”	Elton John		0
7346	If you suffer from diplopia what have you got	Double vision		0
7347	I get around was a hit for which group	Beach Boys		0
7348	In Japan what is Jigali	Female Suicide		0
7349	This cut of beef lies between tenderloin & rump.	Sirloin		0
7350	A mountain is the symbol of which film company	Paramount		0
7351	Does a cat groom itself more in cold weather or in warm weather	Warm		0
7352	For what is 'gravidity' the medical condition	Pregnancy		0
7353	Diplomat living abroad as representative of their country	Ambassador		0
7354	What was the make and model of the villian in "The Terminator" 1984?	T-800 Cyberdyne Systems Model 101		0
7355	Where is your Popliteal Fossa	Back of Knee		0
7356	In Football Who Was Liverpool's Captain When They First Won The European Cup Final In 1977 	Emlyn Hughes 		0
7357	Which sport allows substitutions without stoppage in play	Hockey		0
7358	Which is the only king in a deck of cards without a moustache	King of hearts		0
7359	What's a family group of lions called	Pride		0
7360	What is the most commonly used isotope of Uranium in nuclear fission chain reactions?	Uranium 235		0
7361	In Greek mythology, who did Jocasta marry?	Oedipus		0
7362	19-19-19 who's vital statistics	Olive Oyl		0
7363	Name the slowest moving land mammal.	Sloth		0
7364	Whose shrewish wife was named Xantippe	Socrates		0
7365	Where were the hanging gardens	Babylon		0
7366	What kind of cake is a wedding cake normally	Fruit cake		0
7367	What is the state capital of Alaska	Juneau		0
7368	Which Beatle wife did Eric Clapton fall in love with, and write the song "Layla" for?	Patti Boyd Harrison		0
7369	Actor: ________ Hackman.	Gene		0
7370	Chambre means what when referring to wine	Serve at room temperature		0
7371	Who did Gazza flick the ball over for the Euro 96 goal against Scotland? 	Colin Hendry 		0
7372	Comic strip character 1920s name means meek person in USA	Casper Milquetoast		0
7373	Who was radio's "all american boy"	Jack armstrong		0
7374	During which war did the Battle of Jutland take place	World war 1		0
7375	What does the black and white BMW logo represent	Spinning Propeller – BMW made planes		0
7376	Lyssophobia is the fear of what	Going Mad		0
7377	What in Paris was erected to celebrate the anniversary of the French revolution	The eiffel tower		0
7378	What is the name of the second highest mountain in Africa	Mount Kenya		0
7379	Which canal links Lakes Ontario and Erie	Welland		0
7380	From which Shakespeare play is this line taken: What in a name That which we call a rose, by any other name would smell as sweet.	Romeo and juliet		0
7381	Betty Boo was doing 'the doo' in what year	1990		0
7382	Rouget de Lisle did what to make him famous	Composed Marseillaise		0
7383	In 1918 what were Jelly Babies renamed	Peace Babies		0
7384	In What Year Was The General Strike 	1926 		0
7385	What is a male cat	Tom		0
7386	What did William Seward buy from Russia in 1867	Alaska		0
7387	What is the name of the bone in the lower leg	Tibia		0
7388	Italian painter Jacopo Robusti is better known as who	Tintoretto		0
7389	Which was David Platt's first professional club	Manchester united		0
7390	Who recorded "after the gold rush" in 1970	Neil young		0
7391	The word 'marmalade' comes from the Portuguese word for what	Quince jam		0
7392	Collective nouns - a pace of what creatures	Donkeys		0
7393	Mysophobia is the fear of	Germs contamination dirt		0
7394	The name of which disease comes from the Italian meaning 'bad air'	Malaria		0
7395	Euphrates Who did Adolf Hitler dictate Mein Kampf to while in prison	Rudolf Hess		0
7396	Which Band Was Formed In The 1970's By Fomer Miles Davis Band Members Joe Zawinul & Wayne Shorter	Weather Report		0
7397	In the game 'banjo-kazooie, who is tooty's big brother	Banjo		0
7398	Craig Evans Hit The Headlines In Sensational Style In May 2001 But Can You Tell Me Why	The Man Who Threw Egg At John Prescott		0
7399	What weapon is named from musical instrument inv Bob Burns	Bazooka		0
7400	Who was the English born Surveyor-General of India who completed the first trigonometrical survey of the Sub-Continent	Sir george everest		0
7401	This magazine used to boast a circulation of 7,777,777.	Better homes and gardens		0
7402	Saint Bibiana is the Patron Saint of what	Hangovers		0
7403	What is the connection between Jeffersons and Good Times?	Janet Dubois		0
7404	In what Australian state would you find Launceston	Tasmania		0
7405	Bogota is the capital of ______	Colombia		0
7406	Who wrote "Paradise Lost"	John milton		0
7407	What is the flower that stands for: dauntlessness	Sea lavendar		0
7408	Who created the fictional character 'Tristram Shandy'?	Laurence Stern		0
7409	Where are the guards who wear bearskins	Buckingham palace		0
7410	A Suffragan has what job	Bishop - no parish – helps other		0
7554	Which vegetable got its name from a precious stone	Onion - Latin unio large pearl		0
7411	In law, a formal document stating that a person (defendant) is notified to appear in court and answer a complaint or charge brought against him or her by another party (plaintiff).	Summons		0
7412	What nhl star was known as the thinking man's goalie	Ken dryden		0
7413	What does N.A.S.A stand for?	National Aeronautics and Space Administration		0
7414	What is Homer Simpson's middle name	Jay		0
7415	In a famous opera, who understood the speech of birds after tasting dragon's blood	Siegfried		0
7416	What is activated for freckles to appear	Melanocytes		0
7417	What is the name given to a rower who competes in an individual event?	Sculler		0
7418	Water containing carbon dioxide under pressure is called ________	Soda water		0
7419	68% of Americans do what (Trying to be punctual)	Set their watches ahead		0
7420	The Old English word 'fneosan' means what nowadays	To sneeze		0
7421	Which Group Would You Associate With Steve Craddock	Ocean Colour Scene		0
7422	What is the base twenty numbering system	Vigesimal		0
7423	Who Is Or Was The Oldest Member Of The Beatles	Ringo Starr		0
7424	What is the only silent film to win best picture Oscar	Wings		0
7425	In which US City was Martin Luther King assassinated in 1968? 	Memphis 		0
7426	Where did the dormouse finish up at the Mad Hatter's tea party	In the teapot		0
7427	What is the oldest most widely used drug on earth	Alcohol		0
7428	Who did 'tennis world' name rookie of the year in 1974	Martina navratilova		0
7429	Which is the largest known butterfly?	Queen Alexandra's Birdwing		0
7430	What was the most valuable thing ever stolen	The Mona Lisa		0
7431	In what traditional entertainment does the dog Toby appear	Punch and Judy		0
7432	A statue of Lady Godiva stands in the centre which English city	Coventry		0
7433	What Is Aspic 	Jelly Made From Stock 		0
7434	Patricia McCormick became USA first what January 20th 1957	Bullfighter Ciudad Juarez Mexico		0
7435	What Did Frosty The Snow man Have For A nose (Carrot, Button,Cherry,Coal) 	Button 		0
7436	In the film 'Pretty Woman', for who was Goldie Hawn the body double?	Julia Roberts		0
7437	Although not all come from France, ______ fries.	French		0
7438	The visible spectrum of light ranges from red to ________.	Violet		0
7439	The Vatican is the worlds smallest country what's second	Monaco		0
7440	In Welsh place names Llan- is a common feature, what does it mean	Church		0
7441	U.S. Captials - Oklahoma	Oklahoma City		0
7442	Who Was The First Player To Score 100 Goals In The Football Premiership League? 	Alan Shearer 		0
7443	What colour top do bottles of unpasteurized milk have? 	Green 		0
7444	What are the two kinds of blood corpuscles in vertebrates 	Red and white 		0
7445	On what island is Pearl Harbor?	Oahu		0
7446	When Aretha Franklin Got Married In 1978, Which Stevie Wonder Song Did The 4 Tops Sing As She Walked Down The Aisle	Isn't She Lovely		0
7447	What is the capital of Tennessee?	Nashville		0
7448	What Dickens work features Mr Wardle	Pickwick papers		0
7449	What is the capital of Antigua and Barbuda ?	Saint John's		0
7450	What is Gerber's most popular flavour of baby food	Mashed Bananas		0
7451	Which famous actor is honored in a statue in Leicester Square?	Charlie Chaplin		0
7452	What was the White House formerly known as	Executive Mansion		0
7453	Analogy bull-cow as fox- __________	Vixen		0
7454	Vegetable with greenish flower heads	Broccoli		0
7455	Who Hosted The 2007 Brit Awards?	Russell Brand		0
7456	Which 1950s films took place in Chicago and Miami 1929 	Some Like it Hot 		0
7457	Why Was The Edmontosaurus So Named 	It's Remains Were First Discovered In Edmonton 		0
7458	The vernal euinox is the beginning of ________	Spring		0
7459	The Queensland nut or bush nut is more commonly known as this.	Macadamia		0
7460	Heavier-than-air craft that derives its lift not from fixed wings like those of conventional airplanes, but from a power-driven rotor or rotors, revolving on a vertical axis above the fuselage	Helicopter		0
7461	In Which City Is The Encyclopediaa Britanica Published 	Chicago 		0
7462	Over Which Distance Did Steve Ovett Win Olympic Gold? 	800 Meters 		0
7463	In Athens they can remove your driving licence if found what	Poorly dressed or unbathed		0
7464	On which of the Canary Island would you find the holiday destination of Corralejo	Fuerteventura		0
7465	In approximately what year was steel first made	500 BC		0
7466	In which continent would you find the Niger river ?	Africa		0
7467	Crossword Clues: Shriveled-up and dry. (4)	Sere		0
7468	Which is the Earth's largest continent ?	Asia		0
7469	What is the term for a person who designs dance routines	Choreographer		0
7470	The drink Absinthe is also known as?	Wormwood		0
7471	What is the Capital of: Sao Tome and Principe	Sao tome		0
7472	Which Bridge In Scotland Replaced The Much Loved(Ferry At The Kyle Of Lochalsh) 	The Skye Bridge 		0
7473	Which Iconic Rock Music Frontman Sang Backing Vocals On Carly Simons 1973 Hit "You're So Vain"	Mick Jagger		0
7474	What Happened At Max Yasgur's Dairy Farm In New York State During 15-17th August 1969 	Woodstock Festival 		0
7475	In which country would you find the motor racing circuit called Kyalami	South africa		0
7476	Which is the deepest mine	Western deep levels mine		0
7477	Jakarta is located on which Indonesian island?	Java		0
7478	What country does Queen Beatrix rule	Netherlands		0
7479	The northernmost point in mainland Australia is on this geographic feature	Cape york		0
7480	Americans spent roughly how much dining out in 1993	$267 billion		0
7481	Roman god of doorways and passages. Two headed deity from which we get the name of one of our months?	Janus		0
7482	In One Of Her First Major Acting Roles Who Was Madonna Desperately Seeking	Susan		0
7483	Who composed the Goldberg Variations	J. s. bach		0
7484	In which country are Mariachi bands traditional	Mexico		0
7485	Which Part Of The Body Is Affected By Rhinitis 	The Nose 		0
7486	What firm markets the B25 microcomputer	Burroughs		0
7487	Terrance Nelhams became better knows as who	Adam Faith		0
7488	Which actor took the male lead in the Hitchcock thriller The Birds	Rod taylor		0
7489	By what name is the reed pipe of the bagpipes known	Chanter		0
7490	What word contains the combination of letters: "xop"	Saxophone		0
7491	What does the word Desert (from Latin desertus) translate as	Abandoned		0
7492	In the USA what are the TV equivalent of the Oscars	Emmys		0
7493	In Which Game Are Projectiles Thrown At Stakes Called Hobs 	Quoits 		0
7494	Button Gwinnett Born In Gloucester England On Aril 10th 1735 Was The First Person In History To Do What	Sign The Declaration Of Independence		0
7495	The great gothic cathedral of Milan was started in 1386, & wasn't completed until what year	1805		0
7496	Pharmacophobia is a fear of ______	Drugs		0
7497	In what year was Prince Harry born?	1984		0
7498	Which Of The Worlds Continents Has The Highest Population 	Asia 		0
7499	Who would you expect to see in the Leftorium	Ned Flanders shop The Simpson's		0
7500	How long was jesus' temptation in the desert	40 days		0
7501	Who Is The Heaviest Member Ever To Have Sat In Parliment 	Cyril Smith 		0
7502	Humble Pie Sang About A Natural Born What In The Late 60's	Bugie		0
7503	Name the largest artery in the human body.	Aorta		0
7504	What drug is obtained from the cinchona tree	Quinine		0
7505	Who captained the hms beagle	Charles darwin		0
7506	Who won a Best Actress Academy award for her performance in Annie Hall	Diane keaton		0
7507	Which element makes up 2.6% of the Earth's crust ?	Magnesium		0
7508	Which Prince Song Did Age Of Chance Later Decide To Cover	Kiss		0
7509	In Denver Colorado it is illegal to mistreat who / what	Rats		0
7510	Who was the NBA MVP in 1976, 1977 and 1980?	Kareem Abdul-Jabbar		0
7511	What American feminist went bust as a silver dollar	Anthony		0
7512	Who is the greek equivalent of the roman god Cupid ?	Eros		0
7513	In which region of France is the red wine Chateauneuf du Pape produced	Rhone valley		0
7514	What is the UKs best selling chocolate snack bar	Kit Kat		0
7515	What 2 Parts Of The Body Are The First To Be Mentioned In The Song You've Lost That Loving Feeling	Eyes & Lips		0
7516	On "Three's Company" what was Larry's (the upstairs neighbor) last name?	Dallas		0
7517	Which Artists Wore A Peacock Suit	Paul Weller		0
7518	What 2 Word Term Is Given To A Simulated 3D Environment Used in Computer Graphics 	Virtual Reality 		0
7519	What Disney character was voiced by Pinto Colvig	Sleepy		0
7520	Calypso, catteleya and pogonia are types of which flowering plant	Orchid		0
7521	What is the fourth state of matter?	Liquid crystals		0
7522	On Beverly Hills 90210 What was the name of Brandon's first car?	Mondale		0
7523	Back in the 1890's which football club used to wear pink shirts? (Still In Premiership) 	Everton 		0
7524	Which Player Lost Successive World Snooker Finals From 1990 To 1994? 	Jimmy White 		0
7525	What city provided the setting for One day at a time?	Indianapolis		0
7526	Kathmandu is the capital of ______?	Nepal		0
7527	Who did Pat Sajak play on the soapie 'Days Of Our Lives'?	Kevin Hathaway		0
7528	Baseball: The Florida ______?	Marlins		0
7529	Film Title: An Officer and a(n) _________.	Gentleman		0
7530	Which English King rode a horse called White Surrey	Richard III		0
7531	What is the Capital of: San Marino	San marino		0
7532	Where would you find your purlicue	Space between thumb and finger		0
7533	Who refused the Nobel Literature prize in 1958	Boris Pasternak		0
7534	What is British Columbias capital	Victoria		0
7535	Who founded the McDonalds Chain?	Ray Kroc		0
7536	Who Wrote Chaka Khans 1984 Hit "I Feel For You"	Prince		0
7537	Basketball: the los angeles ______	Lakers		0
7538	Who created the cartoon character Droopy	Tex Avery		0
7539	What is a group of mallards in flight	Sord		0
7540	Which magazine declared bankruptcy in the early 1990s	Success		0
7541	In Greek mythology, who were jason's companions	Argonauts		0
7542	Who wrote "the maltese falcon"	Dashiell hammett		0
7543	What is the only USA state without a natural lake	West Virginia		0
7544	According to the Bible, how many years did Methuselah live?	969		0
7545	What is the most popular decoration on top of a toilet tank	Scented seashells		0
7546	In golf what is the maximum number of clubs allowed in your bag	Fourteen		0
7547	What was the first creature put on the endangered species list	Peregrine Falcon		0
7548	How many feet in a fathom	Six		0
7549	What Turkish city has spread to both sides of the Bosporus Strait	Istanbul		0
7550	Who said: "Let them eat cake."	Marie antoinette		0
7551	The tenth sign of the Zodiac	Capricorn		0
7552	"Who banned Christmas Carol's in England between the years of 1649 and 1660? ""Oliver Cromwell"", ""King Charles II"", ""Queen Victoria"", ""Queen Elizabeth I"" " 	Oliver Cromwell 		0
7553	Popularised in the USA, Australia and New Zealand, which thick drink is made with fresh fruit pur?ed with milk, yoghurt, or ice cream? 	Smoothie 		0
7555	What part of a wine bottle is the punt? 	The indentation in the base 		0
7556	What is the square root of 16	Four		0
7557	At Which Sport Might You See A Crucifix 	Gynmastics (The Rings) 		0
7558	Which Acronym Is Used For The Long Range Radar Surveillance & Control Centre For Air Defence Developed Originally In The USA 	AWACS 		0
7559	Formerly with spencer davis, he went on the form traffic with dave mason	Steve winwood		0
7560	Who Did Princess Anne marry In 1992 ? 	Tim lawrence 		0
7561	What is Homer Simpsons greatest fear	Sock Puppets		0
7562	Which European city is regarded as the clock making capital of the world	Geneva		0
7563	The Ideal toy company was the first to mass produce what item	Teddy Bears		0
7564	The first book of __________ was introduced on april 10, 1924	Crosswords		0
7565	In Medievil England What Name Was Given To The Area Presided Over By A Lord 	Manor 		0
7566	Where is crystal palace	London		0
7567	If you were going to a chiropractor for treatment, what would be affected	Backbone		0
7568	In music who decided that an octave should have eight notes	Pythagoras		0
7569	In which country would you find the Asiatic lion living in the wild	India		0
7570	What Was Shakespear's Last Completed Play 	The Tempest 		0
7571	Which authors books are most borrowed from libraries	Catherine Cookson		0
7572	What is the fear of learning known as	Sophophobia		0
7573	What's the name of the extinct volcano near hawaii's waikiki beach	Diamond		0
7574	Film title ' ______ leagues under the sea'	20000		0
7575	The Song Evergreen Was A Big Hit For Barbara Streisand Did She Write The Words Or The Music	Music		0
7576	According to the bible, who were the baby Jesus's first visitors 	The Shepherds 		0
7577	A part of a church or a separate building, often octagonal or round, in which baptisms take place.	Baptistery		0
7578	What is or was a Portuguese moidore	A Gold Coin		0
7579	Which bird became extinct in 1861 ?	Dodo		0
7580	In which country do the Ashanti people live in the Province of Ashanti	Ghana		0
7581	In the 70s The Bahamas gained independence from who	Great Britain		0
7582	U.S. captials Nebraska	Lincoln		0
7583	On Tv How Is Alistair Graham Better Known?	Ali G		0
7584	This Is Bon Jovi's latest album?	Crush		0
7585	What was keanu reeves' first big film	Point break		0
7586	In what mountain range is Kicking Horse Pass	Rockies		0
7587	The Single "Respect Yourself" Was Released By Which Die Hard Music Lover	Bruce Willis		0
7588	Name captain smollett's ship in treasure island	Hispaniola		0
7589	Who Had A Hit With "Sledgehammer" & "Big Time"	Peter Gabriel		0
7590	With which creature was the Egyptian God Horus identified	Falcon		0
7591	French fries come from this country.	Belgium		0
7592	Which Famous Sculptor Was Refused Entry ToThe French Academy 3 Times 	August Rodin 		0
7593	The art of tracing designs and taking impressions of them is ___________.	Lithography		0
7594	What did AJ stand for in Simon & Simon's AJ Simon?	Andrew Jackson		0
7595	Name beginning with "A" meaning " moon shine	Aysel		0
7596	Thumper was a rabbit from which film	Bambi		0
7597	What emperor ordered St Peter crucified	Nero		0
7598	To Which City Move It's Headquarters In 1971	Los Angeles		0
7599	Hillary What bird lays an egg that is roughly a quarter of its body weight	Kiwi		0
7600	What Type Of Bowler Might Use A Chinaman 	A Legspin Bowler 		0
7601	Barry Allen was the alter ego of which DC comic superhero	The Flash		0
7602	What is a group of this animal called: Deer	Herd		0
7603	What is the flower that stands for: departure	Sweet pea		0
7604	Where Is The World's Largest Atomic Establishment 	Underground At CERN Between France & Switzerland 		0
7605	Name The Rugby Union Trophy For Which England & Scotland Compete 	Calcutta Cup 		0
7606	What Animal Is A Chester White? 	A Pig 		0
7607	What does sctv stand for	Second city television		0
7608	What is the basic unit of currency for Philippines ?	Peso		0
7609	According to 36% of Americans they have done what	Spoken with God		0
7610	What film marked James Cagney's return to the screen after 20 years?	Ragtime		0
7611	Mark David Chapman was famous for what in 1980? 	Shooting John Lennon 		0
7612	What Do The Initals A.I.D.S. Stand For 	Acquired Immune Deficiency Syndrome 		0
7613	 It takes an average of 345 squirts to yield a gallon of milk from a cow's __________	Udder		0
7614	We have used the Latin phrase ad hoc - what literally mean	For this special purpose		0
7615	The Pindus is the main mountain range in what country	Greece		0
7616	What city is the queen of the pacific	San francisco		0
7617	This Spaniard conquered Mexico.	Hernando Cortez		0
7618	Flat, round, brown spots on the skin that contain an excess of melanin, the human skin pigment	Freckles		0
7619	What does the word khaki mean ?	Dusty		0
7620	What is the stage name of roberta anderson	Joni mitchell		0
7621	Karl Landsteiner Won The Nobel Prize For Medicine In 1930 For His Discovery Of What	Blood Groups		0
7622	What is the young of this animal called: Goat	Kid		0
7623	In 1962 - cost 20,000 - size of a small suitcase - what	Portable computer		0
7624	Who did Sue Barker replace as host of the BBC quiz show (A Question Of Sport)? 	David Coleman 		0
7625	The process of water changing to water vapor is known as _______.	Evaporation		0
7626	Name The Company Originally Started By (And Later Sold) By Richard Branson	Virgin		0
7627	Name the director of the film 'American Beauty'	Sam mendes		0
7628	Jimmy Connors won the men's doubles at Wimbledon in the 1970s with which partner	Ilie nastase		0
7629	Poteen is a distilled spirit made in the West of Ireland. What is it made from? 	Potatoes 		0
7630	Ancient art practiced especially in the middle ages, devoted chiefly to discovering a substance that would transmute the more common metals into gold or silver & to finding a means of indefinitely prolonging human life	Alchemy		0
7631	Who is donald duck's girlfriend	Daisy duck		0
7632	Which Side Of The Brain Contributes To Rational Thought 	Left Side 		0
7633	Which Stephen King Novel Is Set At The Overlook Hotel? 	The Shining 		0
7634	Amazing Grace Entered The Charts Eight Times In This Decade Sung By Whom	Judy Collins		0
7635	For which film did Anthony Quinn win an Oscar for Best Suporting Actor, in 1956	Lust for life		0
7636	What is the largest body of fresh water in the world	Lake superior		0
7637	Tsaritsyn in Russia used to be known as what	Volgagrad Stalingrad		0
7638	What country has the largest armed force?	China		0
7639	How many sayings did jesus say from the cross	Seven		0
7640	At the 1991 World championships in Tokyo, which British hurdler ran the last leg of the 4x400 relay to win gold for Britain	Kris akabusi		0
7641	In what form are the signals that a normal TV aerial receives	Analogue		0
7642	Aaron died on mount _____	Hor		0
7643	Assam, darjeeling and oolong are all types of what	Tea		0
7644	We've heard phrase I don’t give a toss - but Tos Greek for what	Bear		0
7645	With what body part is otology involved	Ear		0
7646	Which Country Owns Easter Island	Chile		0
7647	This Pacific island's puzzling monoliths attract ethnologists.	Easter island		0
7648	What is the fear of mother-in-law known as	Pentheraphobia		0
7649	Which Was The Main Instrument Used By Vangelis On His Film Score Chariots Of Fire	Synthesizer		0
7650	What was invented in the 1800s and sold as a diarrhoea cure	Tomato Ketchup		0
7651	Apart From David Beckham Who Is The Only English Footballer To Be Sent Off During The World Cup Finals	Ray Wilkins		0
7652	By What Name Do Argentina Refer To The Falkland Islands 	The Malvinas 		0
7653	Australian Clement Wragge instituted what	Naming Hurricanes		0
7654	What is made at St James's Gate in Dublin? 	Guiness 		0
7655	What were the nicknames of the dean brothers who pitched for the st louis cardinals	Daffy and dizzy		0
7656	What U.S. state includes the telephone area code 503	Oregon		0
7657	Whisky and Drambuie mix to form what sickly cocktail	Rusty Nail		0
7658	From what language is the word 'mummy' derived	Persian		0
7659	What us state has sagebrush as its state flower	Nevada		0
7660	In Winnipeg there is a statue to which bear	Winnie the Pooh		0
7661	Pooley's Guide is used by amateurs and professionals in which profession and hobby	Flying		0
7662	What food links Dundee, Chorley and Eccles	Cake		0
7663	What are the two cities in charles dickens' 1859 novel a tale of two cities?	London & paris		0
7664	Film based PK Dick story We can remember it for you wholesale	Total Recall		0
7665	How many seams are there on a football (American)	Four		0
7666	What Christmas Item Was Invented By Liondon Bakery And wedding Cake Specialist 'Tom Smith' In 1847 	Christmas Crackers 		0
7667	On Airwolf, what instrument does Hawke play	Cello		0
7668	In 1926 Japan deleted 800000 feet from US films showing what	Kissing - it was unclean		0
7669	An etching tecnique in which a solution of asphalt or resin is used on the plate. It produces prints with rich, gray tones.  	Aquatint		0
7670	Meaning person who overcomes name the ancient Indian religion	Jainism		0
7671	In what country was the paperclip invented	Norway		0
7672	Who starred in the film Willie Wonka and the Chocolate Factory	Gene wilder		0
7673	Who created the children's land of Narnia and Lion Witch Wardrobe	Clive Staples Lewis		0
7674	The sea gods had a three_pronged spear called a(n) ________.	Trident		0
7675	Which 3 Family Members Released The Album "Priority"	The Pointer Sisters		0
7676	An Arizona prostitutes organisation is called TWATS meaning	Tucson Whores and Tricks		0
7677	What type of milk is a basic ingredient of Thai cookery? 	Coconut milk 		0
7678	What actress played Rhoda	Valerie harper		0
7679	Who discovered Christmas Island on Christmas Eve 1777 	Captain Cook 		0
7680	In which city is Red Square	Moscow		0
7681	What is the name given to part of the large intestine	Colon		0
7682	Chopin played what instrument as a child	Piano		0
7683	When was the maiden voyage of the 'Titanic'	1912		0
7684	What three European countries begin with the letter 'A' (alphabetically)?	Albania, Andorra and Austria		0
7685	What is removed with an orchidectomy	Testicle		0
7686	What is the flower that stands for: benevolence	Potato flower		0
7687	The study of human behaviour is __________.	Psychology		0
7688	Which singer wrote the autobiography 'Take It Like A Man'? 	Boy George 		0
7689	In what city is the smithsonian institute 	Washington 		0
7690	Pooh loves honey but which creature loves watercress	Roo		0
7691	Who starred in the 1952 film 'niagara'	Marilyn monroe		0
7692	What is a group of lapwings	Deceit		0
7693	Whose 1993 Debut Single Was Bombtrack	Rage Against The Machine		0
7694	What is the capital of Equatorial Guinea ?	Malabo		0
7695	Which territory of North Africa, situated on the southern side of the Strait of Gibraltar, belongs to Spain	Ceuta		0
7696	Oasis Decided To Split In August 2009 But What Song Was The Bands Very First UK Number One Single	Some Might Say		0
7697	Which U.S. states way of life and culture is described as Cajun	Louisiana		0
7698	What is an Ishihara Test used for? 	Check Colour Blindness 		0
7699	Who was king juan carlos' predecessor	General francisco franco		0
7700	In the Tom and Jerry cartoons name the other mouse	Nibbles or Tuffy		0
7701	Balneology Is The Study Of Which Creatures?	Whales		0
7702	A Comte France Landgraf Germany Conde Italy what England	Earl		0
7703	What New York Yankee's 1927 jersey fetched a record $360,000	Lou gehrig		0
7704	Agent Blue is a herbicide that was used agaainst the Vietnamese, what type of poisonous compound does it contain	Arsenic		0
7705	The 1961 Mercedes 300sx had two firsts name either	Gull Wing doors – fuel injection		0
7706	What is the flower that stands for: early friendship	Blue periwinkle		0
7707	Who Is Beck Hansen	Beck		0
7708	How Did Darth Vader Know What Luke Skywalker Got For Christmas 	He Felt His Presents 		0
7709	The 1976 Summer Olympics were held in this city.	Montreal		0
7710	What is Harry Houdini famous for being ?	Escapologist		0
7711	What is the Capital of: Iraq	Baghdad		0
7712	What Was The Name Of Bill Haley's Best Known Band	The Comets		0
7713	What's the United Kingdom's largest ethnic minority	The scots scots		0
7714	 A snake's __________ is located in the front one_fifth portion of its body.	Stomach		0
7715	Almost Unreal By Roxette Was The Original Soundtrack To Which Film	Super Mario Bros		0
7716	In Which Country Was Fuel Injection For Cars Inroduced In 1954 	Germany 		0
7717	Which Band Sang About Their Mothers In 1997	Spice Girls		0
7718	 Javelinas are very noisy animals among each other and squeal, snort, woof, and click their teeth to __________	Communicate		0
7719	What is the connection between Alex Higgins, Barry McGuigan & Jimmy White? 	Nicknames Connected With Wind 		0
7720	What animal was believed to be a cross camel - leopard	Giraffe		0
7721	1955 saw the worst ever disaster in motor racing history when a Mercedes Benz hurtled into the crowd at which French race track, killing 86 people in total 	Le Mans 		0
7722	What is the capital of Florida	Tallahassee		0
7723	Beethoven's third symphony is nicknamed what	The Eroica		0
7724	In which city is the C.N. Tower	Toronto		0
7725	Across Which River Is The Longest Single Span Suspension Bridge 	The Humber 		0
7726	Who sacked Jonathon Shallit as her manager in 2000? 	Charlotte Church 		0
7727	What is a strong aversion to beards known as	Pognophobia		0
7728	What is Switzerland's official name	Swiss Confederation		0
7729	The De Beers group of companies controls more than 80% of the world's supply of ______?	Rough diamonds		0
7730	What is the literal meaning of the Dutch word brandewijn" which we call brandy	Burnt wine		0
7731	Who wrote most of the new testament books	Paul		0
7732	Which 60's Movie features The Line back in your gilded cage Melanie Daniels 	The Birds 		0
7733	What democratic country gives military aid to both iran and iraq	United		0
7734	Who did squeaky fromme try to assassinate	Gerald ford		0
7735	Which Artist One Had A Musical Alto Ego Called "The Thin White Duke"	David Bowie		0
7736	How man legs does a crab have	Ten		0
7737	Who Sang The Song "Sweet Child O Mine" In The 90's	Guns N Roses		0
7738	The KLF Had Their First No.1 Under A Different Name What Was It	The Timlords / Doctorin The Tardis		0
7739	Hammer, anvil, and stirrup are parts of the ________.	Ear		0
7740	This is the strongest poker hand you can get.	Royal flush		0
7741	Confide In Me Was A Hit In 1994, Who Was The Singer	Kylie Minogue		0
7742	In what is food surrounded with dry, hot, circulated air	Convection oven		0
7743	What Japanese dish consists of Tofu Beef and vegetables	Sukiyaki		0
7744	From which musical did ‘One Night in Bangkok’ & ‘I Know Him So Well’ come?	Chess		0
7745	Of Which Animal Is The Gander The Female? 	Goose 		0
7746	What is 2000 in Roman Numerals	MM		0
7747	In Coronation Street, which room in the Rover's Return was regularly used by Ena Sharples and friends	Snug		0
7748	What is the correct term of address to the Pope	Your Holiness		0
7749	What is a person with numerophobia afraid of	Numbers		0
7750	When is the only time a flag should be flown upside down	Emergency		0
7751	What is the chemical name for quicksilver?	Mercury		0
7752	In Which Card Game Might You Be Dealt A Yardborough 	Bridge (No Card Over 9) 		0
7753	What is a group of grasshoppers	Getting bald		0
7754	What not so hep disease had its virus finally identified in 1984	Hepatitis		0
7755	Which British King had the-longest reign	George iii		0
7756	On December 1, 1917, who opened Boys Town, a farm village for wayward boys, near Omaha, Nebraska	Father Edward Flanagan		0
7757	What is the flower that stands for: coldheartedness	Lettuce		0
7758	In what sport do you find 'coursing'	Greyhound racing		0
7759	In The World Of Music How Is "Leslie Charles" More Commonly Known	Billie Ocean		0
7760	Whose Operas Include Tanhauser & Tristan Und Isolde	Wagner		0
7761	What actor was once fruit picker iceman truck driver propman	John Wayne		0
7762	Name the Duke of Wellingtons horse at Waterloo	Copenhagen		0
7763	Who composed the Symphonies Fantastique	Hector Berlioz		0
7764	Whom did David Steel succeed as leader of the Liberal Party	Jeremy thorpe		0
7765	How many hurdles are there in a 400 metres hurdle race	Ten		0
7766	Who tells the story in The Arabian Nights	Sheherazade		0
7767	Tanzania is the country that resulted from the union of zanzibar and ______	Tanganyika		0
7768	In common: henry ford, adolf hitler, frank sinatra, orville and wilbur wright	Secondary school dropouts dropped out of school school drop out		0
7769	Which detective was played by Jack Webb in Dragnet	Sgt joe friday		0
7770	What do americans call chick peas	Garbanzo beans		0
7771	Which French District Does Claret Come From 	Bordeaux 		0
7772	The Church of Santa Maria delle Grazie is a World Heritage Site, in which Italian city would you find it	Milan		0
7773	"What Native Language Would Jesus Christ Have Spoken ? (""Hebrew, Sanskrit, Arabic, Aramaic"" ) " 	Aramaic 		0
7774	What religion was Adolf Hitler	Roman Catholic		0
7775	Which Member Of Duran Duran Produced "Kajagoogoo's" First Album	Nick Rhodes		0
7776	Which Belgian noble woman was sentenced to death for bathing in the blood of servant girls she had murdered in order to keep her young 	Countess Elizabeth Bathory 		0
7777	What is a coral island consisting of a ring of rock enclosing a central lagoon	Atoll		0
7778	A Snooker Player Makes A Break Of Eight Points. Which Three Colours Are Potted? (PFE) 	Red, Yellow & Brown 		0
7779	In the 1980 Summer Olympics, Nadia Comaneci was judged to have given a perfect performance on the asymmetrical bars and which other exercise	The beam		0
7780	What fish was the subject of dispute Spain Canada in 1995	Turbot		0
7781	A roofed gallery with an open arcade or colonnade on at least one side.	Loggia		0
7782	In which game would you have a pitchers mound and an outfield? 	Baseball 		0
7783	Which Queen Had An Extra Finger? 	Anne Boleyn 		0
7784	 __________ don't fly by flapping their wings up and down. The motion is more forward and backward, like a figure eight on its side.	Birds		0
7785	What goes with ruby, emerald and sapphire to make up the world's most valuable gems	Diamond		0
7786	In which country were Lada cars manufactured?	Russia		0
7787	Who Released The Original Recording Of "Lets All Chant"	The Michael Zager Band		0
7788	What links Iguanas, Koalas and Kimono Dragons	Two Penises		0
7789	The song Proud Mary was writted by ___.?	Creedence Clearwater Revival		0
7790	Who was the Prime Minister of Malta between 1971 and 1984	Dom mintoff		0
7791	The Tramps came from which US city?	Philadelphia		0
7792	Who played the girl on the motorcycle in a film of same name	Marianne Faithful		0
7793	Robin Hood: Prince of Thieves was released in what year	1992		0
7794	Whose music featured in The Clockwork Orange	Beethoven		0
7795	What bites campers on the big toe	Vampire bat		0
7796	The song I Talk to the Trees comes from what musical	Paint Your Wagon		0
7797	A catalogue of words and synonyms?	Thesaurus		0
7798	Solar time what's the usual age for a jewish boy to celebrate his "bar mitzvah"	Thirteen		0
7799	In which state are the Everglades ?	Florida		0
7800	Who was the first woman to swim from port angeles to victoria	Marilyn bell		0
7801	Front which part of a pig do we get ham	Hind leg		0
7802	Name the largest island in the world. 	Greenland 		0
7803	Who Was The First Actress To Be Featured On A Postage Stamp?	Grace Kelly		0
7804	What is the minimum IQ score for the genius category	140		0
7805	During The 1980's Patrick Bossert, Was The First Person On The Planet To Do What	Solve The Rubiks Cube		0
7806	What king was murdered by macbeth	Duncan		0
7807	Which Islands Were The Subject Of A War Between Argentina And Britain in 1982? 	Falklands 		0
7808	What Is Ronald Biggs Famous For 	Being A Great Train Robber 		0
7809	Who wrote Moon River used in Breakfast at Tiffanies	Henry Mancini		0
7810	What is the currancy unit of El Salvador	Colon		0
7811	What Dutch master painted 64 self-portraits?	Rembrandt		0
7812	What 2 countries have square flags?	Switzerland and the Vatican		0
7813	Which disease was once known as white plague	Tuberculosis		0
7814	Carrots Are Rich In which Vitamin Is It A,B,C,D 	A 		0
7815	 An __________ may weigh as much as 300 pounds. Its intestinal tract is 45 feet long.	Ostrich		0
7816	A famous RAH novel, as well as a number believed to be cursed	The number of the beast		0
7817	Who signed the declaration of independence	John hancock and charles thomson		0
7818	What is football called in Italy	Calico		0
7819	Which city's music was featured in "I Feel Fine"	Liverpool's		0
7820	Who Asked Do You Want To Know A Secret	Billy J Kramer & The Dakotas		0
7821	Napoleon had a fear of what -  Aelurophobia	Cats		0
7822	What nation has had its own scandels dubbed muldergate & inkathagate	South africa		0
7823	In the dice game 'craps', what is a throw of double one called	Snakeeye		0
7824	Which Charcter Did “ Neil Hamilton ” Play In The Original Tv Series Batman?	Chief Commisioner Gordon		0
7825	Who invented Fingerprint Classification?	Francis Galton		0
7826	Who was the last native-born Prince of Wales	Owen glendower		0
7827	Which Contemporary Scientist Is Suffering From From Motorneurone Disease 	Steven Hawkins 		0
7828	A turn on one leg, with the toe of the other leg touching the knee of the turning leg.	Pirouette		0
7829	What's the official state sport of alaska	Dog sledding		0
7830	What is the Capital of: Ireland	Dublin		0
7831	Several different ways in what printing may be accomplished, such as lithography, letterpress, flexography, gravure, & screen printing	Printing techniques		0
7832	What is the oldest bridge over the Seine in Paris	Pont Neuf		0
7833	Encounter on March 5, 1770, five years before the American Revolution, between British troops and a group of citizens of Boston	Boston Massacre		0
7834	Shbat is Arabic for what month	February		0
7835	What was the name of Hamlets father	Hamlet		0
7836	Name the town that Fred, Wilma, Barney, and Betty lived in.	Bedrock		0
7980	What is the abbreviation for trinitrotoluene?	TNT		0
7837	Whose Debut Album "I Should Coco" Reached No.1 In The UK Album Charts	Supergrass		0
7838	What Is Dry Ice 	Solid Carbon Dioxide 		0
7839	In Morrisville Pennsylvania women need permit to wear what	Cosmetics		0
7840	Who says, "Th-th-th-that's all folks!"	Porky Pig		0
7841	18% of Americans mention who in their will	Their pet		0
7842	Who was both the 22nd & the 24th president of the US	Stephen grover cleveland		0
7843	Who said "all you need to fly are lovely things and fairy dust"	Peter pan		0
7844	What is never shown in a Las Vegas Casino	The Time - No Clocks		0
7845	Which London landmark is now the depository of the royal coronation regalia	The tower of london		0
7846	The average adult human has 32 of these	Teeth		0
7847	What term is used for the speed at which a piece of music is played ?	Tempo		0
7848	What is a virgule	The / slash		0
7849	Who was the Greek god of sleep	Hypnos		0
7850	Which Science Fiction author created The Triffids	John Wyndom		0
7851	What is the capital of Mongolia?	Ulan Bator		0
7852	Where was printing by movable type invented	China		0
7853	Slang word for huge or enormous	Humongous		0
7854	Which Country Won The Most Gold Medals At This Years Olympics (Bonus Pt For How many) 	China (51) 		0
7855	Nordic And Alpine Are Two Main Categories Of Which Sport? 	Skiing 		0
7856	What famed ranch can you see from ranch road no. 1 near stonewall, texas 	The lbj ranch 		0
7857	In the opera, what kind of factory did Carmen work in	Cigarette		0
7858	Hashimoto's disease is the malfunctioning of which gland	Thyroid		0
7859	Iris Somerville - killed London 1982 - Lightning struck what	Metal Support on her Bra		0
7860	Which country consumes more Coca Cola per head than anywhere else in the world? 	Iceland 		0
7861	Buffalo River National Park is in which state	Arkansas		0
7862	This popular card game's name is spanish for "one."	Uno		0
7863	In which countries would you find the following city 'Tabasco'? 	Mexico 		0
7864	 The Rufous is the only species of hummingbird to nest in Alaska. They migrate 2,000 miles to Mexico each winter, and then back to Alaska in the __________	Spring		0
7865	What do the initials NASA stand for	National aeronautics & space administration		0
7866	Name the heaviest flying bird of prey	Condor		0
7867	"My Ever Changing Moods" Was A Hit For Which UK Band	The Style Council		0
7868	Who painted "The Persistence of Memory"	Salvador dali		0
7869	How many years did Nelson Mandela spend in prison?	27 Years		0
7870	Which Band Was Rod Stewart A Member Of Before Going Solo 	The Faces 		0
7871	Who was the first Windsor monarch of the UK? 	George V (reigned 1910-1936) 		0
7872	Which Famous Actor was Charged with Lewd Behavior in 1995 	Hugh Grant 		0
7873	What major league baseball team has a moose for a mascot	The seattle mariners seattle mariners		0
7874	Whose ghost haunted Scrooge with clanking chains & wierd sounds	Jacob marley		0
7875	Which Dessert Has A Custard Base And A Burnt Caramelised Top? 	Cr?me Brulee 		0
7876	Old Irish law what boys name give to fine murderer paid compo	Eric		0
7877	Born In 1962 Who In The World Of Music Has The Real Name "Stanley Kirk Burrell"	MC Hammer		0
7878	Who wrote the novel The Last of the Mohicans, first published in 1820	James fenimore cooper		0
7879	Which major horserace is held in Australia on the first Tuesday in November	The melbourne cup		0
7880	Collectively, what name is given to the first ten of the twenty six amendments to the United States' Constitution	The bill of rights		0
7881	In Which song did Procal Harem Sing About 16 vestal virgins	A Whiter shade of pale		0
7882	Who's only person have Dewey Decimal class named after him	William Shakespeare		0
7883	Morten Harket Is The Lead Singer Of Which Band	Aha		0
7884	In the language of flowers what does straw mean	Agreement		0
7885	In what field is Romuald Rat a well-known name	Paparazzi photographer		0
7886	In the Chinese horoscope what animal comes first alphabetically	Boar		0
7887	Daimants Sur Canape French translation of what film	Breakfast at Tiffanys		0
7888	Who owned a cat called Bismarck	Florence Nightingale		0
7889	The French say Bis - what word do the English use	Encore		0
7890	Founded In 1992 From Which Country Does The Airline Kiwi International Airlines Originate	USA		0
7891	Which US state gets the most rainfall?	Hawaii		0
7892	______________ is the only continent without reptiles or snakes	Antarctica		0
7893	Who is the greek equivalent of the roman god Diana	Artemis		0
7894	What was the hightest mountain in the world before the discovery of everest?	Mount Everest		0
7895	What South American cities inhabitants are called portenos	Buenos Aires		0
7896	What is a group of ducks paddling	Team		0
7897	What country celebrated its National Day on 1st March?	Wales		0
7898	What's another name for tetanus 	Lockjaw 		0
7899	How Is The Double Act Of David Peacock & Charles Hodges Better Known?	Chas & Dave		0
7900	Why Is The Mole Cricket So Called 	Spends Most Of Its Time Underground 		0
7901	What is the largest country wholly within Europe	France		0
7902	Who flew too close to the sun	Icarus		0
7903	On which date is Epiphany celebrated in the traditional Western calendar? 	6th January 		0
7904	How many hours a day does a ferret sleep?	20		0
7905	Which Oscar-winning actor's only film as a director was the 1961 Western One-Eyed Jacks	Marlon brando		0
7906	In badminton, how many points win a singles game	Fifteen points		0
7907	What Became The Tallest Building In England In October 1965 	Post Office Tower 		0
7908	James Stewart starred in Hitchcock's Rear Window, who was his female co-star	Grace kelly		0
7909	What do the tendons attach to the bones or cartilage	Muscles		0
7910	What is the name of the Chinese leader who died in 1997	Deng xiao-ping		0
7911	What event marked the 1954 french grand prix	Return of mercedes		0
7912	Which Long Running Tv Show Was the Brain Child Of Former RAF Gunner Bill Wright	Mastermind		0
7913	What do deciduous trees do	Lose their leaves in winter		0
7914	Who first noticed that the sun had spots	Galileo		0
7915	What nationality is Yehudi Menuhin	American		0
7916	What is the flower that stands for: advice	Rhubarb		0
7917	Where were the 1956 Olympics held ?	Melbourne, Australia		0
7918	What does the energiser bunny wear on his feet	Flip flops		0
7919	"High Class Baby" & "Travellin Ligh" Were Hits For Which Singer	Cliff Richard		0
7920	What was jimmy carter operated on for while serving as president	Haemorrhoids		0
7921	What Does 'CAMRA' Stand For 	The Campaign for Real Ales 		0
7922	Give either of poet E.E.Cummin s' christian names. edward	Estlin		0
7923	What Were Frosty The Snowmans Final Words 	I'll Be Back Again Someday 		0
7924	In which drink will a raisin in a glass keep floating to the top and sinking to the bottom	Champagne		0
7925	Which bony structure includes the zygomatic, ethmoid, and vomer bones'	Skull		0
7926	What meteorological significance is traditionally attached to cows lying down	Rain		0
7927	The Swiss spend the worlds most money per capita on what	Insurance		0
7928	Which character did Mel Gibson play in the film "Braveheart"	William wallace		0
7929	What was the largest town in Britain before it became a city in 1992	Sunderland		0
7930	Who was known as The King of Pop	Michael Jackson		0
7931	In 1999 470 Chinese were injured by what	Exploding beer bottles		0
7932	A stitch in time saves ____	Nine		0
7933	What is the capital of Belgium ?	Brussels		0
7934	In Which Film Did Madonna Play A Character Called "Gloria Tatlock"	Shanghai Surprise		0
7935	In 1973 Roland Ohisson was buried in a coffin made of what	Chocolate		0
7936	What state is only part of the United States by treaty?	Texas		0
7937	President richard m nixon called what songstress an "ambassador of love"	Pearl baily		0
7938	Name The Legendary Australian Outlaw Portrayed On Film By Mick	Ned Kelly		0
7939	In which film do the blue meanies attack pepperland and are defeated by the beatles	Yellow submarine		0
7940	Who Was The First US President To Take Up Residence In The White House	John Adams		0
7941	How was the greek city of troy penetrated	Wooden horse		0
7942	Mexico city is the capital of ______	Mexico		0
7943	What celebrated photographer snapped shots of Yosemite for 67 straight years	Ansel adams		0
7944	Which River Forms A Border Between France & Germany 	The Rhine 		0
7945	In the game 'banjo-kazooie', who is banjo's little sister	Tooty		0
7946	What are affected by phylloxera	Vines		0
7947	What tunnel connects France and Italy ?	Mont Blanc Tunnel		0
7948	Who Wrote The Collection Of Short Stories On Which Fiddler On The Roof Was Based	Sholom Aleichem		0
7949	Baseball: The Chicago ______?	Cubs		0
7950	Which White Blues Singer Attended The University Of Texas In The Early 60's & Was Voted Ugliest Man On Campus	Janis Joplin		0
7951	Who played the lead in the movie "The Mask"?	Jim Carrey		0
7952	To what position was John Masefield appointed in May 1930? 	Poet Laureate 		0
7953	Which of Shakespeares plays involves a pound of flesh	The merchant of venice		0
7954	What is the Capital of: Mauritania	Nouakchott		0
7955	Which Beautiful Capital By The Sea Is Wonderful	Wonderful Wonderful Copenhagen		0
7956	What do you call the person who carries a golfer's clubs	Caddie		0
7957	When a tumour is cancerous, what is it said to be?	Malignant		0
7958	What common word comes from the Latin for who are you	Quiz		0
7959	Freda Payne Enjoyed Her Only Major Chart Hit In 1970. Name It?	Band Of Gold		0
7960	Joan O Neill Who Sings With The Tina Turna Tribute Band Is Actually The Mother Of Which Very Successful Pop Star	Mel C (NOT MEL B)		0
7961	Who wrote the classic science fiction novel ' Hellicona Spring"	Brian aldiss		0
7962	In what sport would you use spikes and blocks	Athletics		0
7963	What country - largest earthquake of 20th cent 8.6 Richter 1906	Colombia		0
7964	What Is Chopin's Piano Sonata In B Flat Minor Also Known As	The Funeral March		0
7965	Which U.S. State is known as the Mother of Presidents	Virginia		0
7966	Who recorded 'I Can't Explain' in 1965?	The Who		0
7967	Where were the Pillars of Hercules located	Gibraltar		0
7968	Where could you have a kip - then spend it	Laos its currency		0
7969	Which Supermarket Chain Uses Jamie Oliver To Advertise It's Products 	Sainsburys 		0
7970	What language do gypsies speak	Romany		0
7971	In which sea would you find the island of Bornholm	Baltic sea		0
7972	Approximately how many genes are there on one human DNA molecule	80		0
7973	In what country do people speak the Language they call Nihongo?	Japan		0
7974	What candy did president reagan keep on his desk in the white house	Jelly		0
7975	What comedy act started as "the six musical mascots"	Marx brothers		0
7976	An upright masonry support.	Pier		0
7977	Collective nouns - What are a group of greyhounds called	A Leash		0
7978	Popular in the south of the United States, which peculiar meat was the original basis of a 'Brunswick Stew'?	Squirrel		0
7979	Rhus Radicans shrub green flowers white berries common name	Poison Ivy		0
7981	What Is The Most Common Venereal Disease 	Gonorrhoea 		0
7982	Average woman's 1.5 times bigger than average mans - what	Circumference of Thighs		0
7983	Who was the father of Ham, Shem and Japheth in the bible?	Noah		0
7984	Which country has the smallest birth rate	Vatican City		0
7985	Which film producer said 'Anyone who goes to a psychiatrist should have his head examined	Samuel goldwyn		0
7986	Manufacturer of the Pentium microprocessor	Intel		0
7987	What's the principal river of ireland	Shannon		0
7988	In the field of psychiatry this term means self-love.	Narcissism		0
7989	In 1992 Who Famously Described Himself As A "Bisexual Who's Never Had A Homosexual Experience"	Brett Anderson		0
7990	Railings on a balcony are called a..	Baulstrade		0
7991	Ancient Rome / Greece what Temple was dedicated to all Gods	Pantheon		0
7992	Which classical composer wrote the Hungarian Rhapsody	Franz Liszt		0
7993	Who sang 'Mull of Kintyre'?	Wings		0
7994	What show did the catch phrase, "Yeah, That's The Ticket" originate on?	Saturday Night Live		0
7995	What is the capital of Central African Republic ?	Bangui		0
7996	What Is Phobophobia The Fear Of	Fear Of Fears		0
7997	Daniel Keys wrote which 1959 Hugo award winning SF novel	Flowers for Algernon		0
7998	U.S. Captials - Vermont	Montpelier		0
7999	What was the name of the train on the tv series petticoat junction	Cannonball		0
\.


--
-- Name: trivia_questions_and_answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cromero
--

SELECT pg_catalog.setval('trivia_questions_and_answers_id_seq', 7999, true);


--
-- Data for Name: trivia_scores; Type: TABLE DATA; Schema: public; Owner: cromero
--

COPY trivia_scores (id, score, nick, vote_skip, vote_hint) FROM stdin;
asdfa	0	what?	0	0
201426498551283712	0	Brumisator	0	0
226380160734199808	0	suicide_mission	0	0
195899822346076160	0	Screech	0	0
\.


--
-- Name: primary_key_id; Type: CONSTRAINT; Schema: public; Owner: cromero; Tablespace: 
--

ALTER TABLE ONLY trivia_questions_and_answers
    ADD CONSTRAINT primary_key_id PRIMARY KEY (id);


--
-- Name: primary_key_user_id; Type: CONSTRAINT; Schema: public; Owner: cromero; Tablespace: 
--

ALTER TABLE ONLY trivia_scores
    ADD CONSTRAINT primary_key_user_id PRIMARY KEY (id);


--
-- Name: primary_key_vname; Type: CONSTRAINT; Schema: public; Owner: cromero; Tablespace: 
--

ALTER TABLE ONLY status
    ADD CONSTRAINT primary_key_vname PRIMARY KEY (vname);


--
-- PostgreSQL database dump complete
--

