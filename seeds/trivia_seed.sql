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

SET default_with_oids = true;

--
-- Name: trivia_questions_and_answers; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE trivia_questions_and_answers (
    id integer NOT NULL,
    question text NOT NULL,
    answer text NOT NULL
);


ALTER TABLE public.trivia_questions_and_answers OWNER TO postgres;

--
-- Name: questions_and_answers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE questions_and_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questions_and_answers_id_seq OWNER TO postgres;

--
-- Name: questions_and_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE questions_and_answers_id_seq OWNED BY trivia_questions_and_answers.id;


SET default_with_oids = false;

--
-- Name: status; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE status (
    vname text NOT NULL,
    vint bigint DEFAULT 0,
    vstring text DEFAULT ''::text
);


ALTER TABLE public.status OWNER TO postgres;

--
-- Name: trivia_scores; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE trivia_scores (
    id text NOT NULL,
    score integer DEFAULT 0 NOT NULL,
    nick text NOT NULL,
    skip integer DEFAULT 0
);


ALTER TABLE public.trivia_scores OWNER TO postgres;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY trivia_questions_and_answers ALTER COLUMN id SET DEFAULT nextval('questions_and_answers_id_seq'::regclass);


--
-- Name: questions_and_answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('questions_and_answers_id_seq', 5609, true);


--
-- Data for Name: status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY status (vname, vint, vstring) FROM stdin;
trivia_count	0	
trivia_skip	0	
trivia_key	4359	
trivia_time	0	
\.


--
-- Data for Name: trivia_questions_and_answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY trivia_questions_and_answers (id, question, answer) FROM stdin;
728	7-Eleven stores were temporarily converted into Kwik E-marts to promote the release of what movie?	THE SIMPSONS MOVIE
729	`Famous for their work on modernist furniture design, Charles and Ray Eames were related how?	HUSBAND AND WIFE
730	A 1952 episode of “I Love Lucy was titled “Lucy Is Enceinte” because what English word was censored?	PREGNANT
731	A 1960s TV character played by Al Lewis, Count Vladimir Dracula is better known by what name?	GRANDPA MUNSTER
732	A 1985 North Atlantic expedition led by Robert Ballard discovered the wreck of what famous ship 73 years after it sank?	TITANIC
733	A 1995 documentary subtitled “Hollywood Madam” examines the rise and fall of what scandalous figure?	HEIDI FLEISS
734	A 2006 study of phone conversations found that which statement was meant sarcastically 23 percent of the time?	YEAH,RIGHT
735	A 2008 study in “Reference Services Review” found which of these websites to be about 80% accurate?	WIKIPEDIA.ORG
736	A 2009 New York Times article coined the term “Ralph Kramden” to refer to what physical trait?	POT BELLY
737	A 2010 Billboard hit,”Dog Days are Over” is a song by the British band “Florence and the” what?	MACHINE
738	A 2010 study by dating Web site Badoo.com found which of these nation’s women to be most flirtatious online?	SPAIN
739	A 2010 study found that nearly 70% of what imported item failed to live up to its claims of being “extra virgin”?	OLIVE OIL
740	A 2010 Time magazine article debunks the myth that what group of people are “spoiled,selfish,solitary misfits”?	ONLY CHILDREN
741	A 2011 box set celebrates the 13-film collaboration between composer Danny Elfman and what film director?	TIM BURTON
742	A 2011 New York Times obituary for the late Peter Falk discussed the actor’s 30-plus year gig as what TV character?	COLUMBO
743	A 20th-century fashion icon, Gabrielle Chanel was better known by what nickname?	COCO
744	A bill of fare is more commonly known as a what?	MENU
745	A bit in a gossip column that doesn’t mention any names is often called a what?	BLIND ITEM
746	A bit of folk wisdom warns that when you point a finger at someone, how many fingers are pointing back at you?	THREE
747	A blacksmith works primarily with what metal?	IRON
748	A blanket or shawl made of colored squares sewn or crocheted together is called a what?	AFGHAN
749	A book about fashion and gay culture “Don We Now Our Gay Apparel” takes its title from what Christmas carol?	DECK THE HALLS
750	A Boston native,what late night host’s sister made her film debut as one of the Eklund sisters in “The Fighter”?	CONAN O’ BRIEN
751	A breakthrough in fashion,”jeggings” are leggings designed to look like what?	JEANS
752	A bushel is a standard unit originally used to measure the weight of what?	GRAIN
753	A caprese salad traditionally includes which of these ingredients?	MOZZARELLA CHEESE
754	A caramel candy brand since 1903,Werther’s Original is named after a town in the Westphalia region of what country?	GERMANY
755	A cast member of the AMC series “Hell On Wheels,” rapper/actor Lonnie Lynn, Jr. is better known by what stage name?	COMMON
756	A chemical compound known as DHA is a common active ingredient in what beauty product?	SELF-TANNER
757	A child starting kindergarten in September 2010 will ordinarily graduate from high school in what year?	2023
758	A child starting kindergarten in September of 2010 will ordinarily graduate from high school in what year?	2023
759	A clarsach–a traditional Irish musical instrument–is a kind of what?	HARP
760	A classic 1969 work by poet Maya Angelou is titled “I Know Why The Caged Bird” what?	SINGS
761	A classic 1976 song by Blue Oyster Cult features the advice “Don’t Fear The” what?	REAPER
762	A classic 1984 Super Bowl commercial titled “1984” introduced what product to the public?	MACINTOSH COMPUTER
763	A close friend of her Greek actor father,Telly Savalas was the godfather of which of these movie stars?	JENNIFER ANISTON
764	A close friend of her Greek actor father,Telly Savalas was the godfather of which of these movie stars?	JENNIFER ANISTON
765	A collection of Sanskrit hymns and verses known as the Vedas are sacred texts in what religion?	HINDUISM
766	A college graduate who participates in an ROTC program graduates with a what?	MILITARY COMMISSION
767	A common ailment,dyspepsia gets its name from Greek roots meaning “bad” what?	DIGESTION
768	A common ingredient in ice cream and toothpaste, carrageenan is an extract of what?	SEAWEED
769	A common Italian expression, “dolce far niente” means “the sweetness of” what?	DOING NOTHING
770	A common palindrome begins “A man,a plan,a canal” and ends with what country’s name?	PANAMA
771	A common pose in yoga,the “plank” position closely resembles which of these routine exercises?	PUSH-UPS
772	A common problem during childhood, nocturnal enuresis is a medical term better known as what?	BED WETTING
773	A common site for piercings, the auricle is a cartilaginous region located where on the body?	EAR
774	A company known for its atlases and maps was born when William Rand went into business with whom?	ANDREW MCNALLY
775	A contestant on the 2012 season of “Celebrity Apprentice,” Dee Snider won fame as frontman for what ’80s band?	TWISTED SISTER
776	A contestant on the Fall 2011 season of “Dancing With The Stars,” Carson Kressley first gained fame on what reality show?	QUEER EYE
777	A contestant on “Celebrity Apprentice” in 2011, NeNe Leakes is an outspoken “Real Housewife” from what city?	ATLANTA
778	A couple described as a “Sam and Diane” refers to the on-again,off-again duo of what classic sitcom?	CHEERS
779	A cowcatcher is a metal grill that is commonly found on the front of what type of vehicle?	TRAIN
780	A criminal who has “cooked the books” has engaged in what kind of illegal behavior?	ACCOUNTING FRAUD
1319	Basra is the chief port of which Persian Gulf country?	IRAQ
781	A crowd of people are running away from a bull on the cover of the 2008 Fodor’s guide to what country?	SPAIN
782	A cut of beef is said to be “marbled” if it is what?	FLECKED WITH FAT
783	A dangerous type of what bug gets its name from the port town of Taranto, Italy?	SPIDER
784	A Darwinist is,by definition,a believer of what concept?	EVOLUTION
785	A device some people fear will accidentally create a black hole,the Large Hadron Collider is a what?	PARTICLE ACCELERATOR
786	A dish usually consisting of marinated meat,poultry or fish,satay was originally popularized in what part of the world?	SOUTHEAST ASIA
787	A disorder where objects appear shrunken,Lilliputian hallucinations derives its name from what novel?	GULLIVER’S TRAVELS
788	A doe-eyed bad seed named Damien is the main character in what classic horror flick?	THE OMEN
789	A duvet cover is usually used to cover what?	COMFORTER
790	A Eurasian counterpart to the NHL, the KHL is a professional league in what sport?	HOCKEY
791	A false urban myth claims that a combination of pop rocks and soda proved fatal for “Mikey,” the boy in what cereal’s ’70s ads?	LIFE
792	A familiar face in fragrance ads,Argentine Ignacio “Nacho” Figueras is a top-ranking athlete in what sport?	POLO
793	A familiar sight to people who excel at carnival games, the goldfish is technically a member of what fish family?	CARP
794	A family doctor who does not have a specialty is sometimes known by what initials?	G.P.
795	A family that wants everything “instantly,” the Wrightnows appear in commercials promoting what?	NETFLIX
796	A famous 1855 poem by Walt Whitman begins, “I sing the body” what?	ELECTRIC
797	A famous American Revolutionary War flag features a rattlesnake with what motto printed underneath?	DON’T TREAD ON ME
798	A famous auto racing venue,the Bonneville Salt Flats occupy over 30,000 acres of what U.S. state?	UTAH
799	A famous passage from the Bible,the Twenty-third Psalm begins with the line “The Lord is my” what?	SHEPHERD
800	A famous series of silent movies features a gang of slapstick comedians called the “Keystone” what?	KOPS
801	A famous Shakespeare sonnet begins with the question “Shall I compare thee to” what?	SUMMER’S DAY
802	A fashion accessory known as “The Closer Tote” was popularized by a TV character played by what actress?	KYRA SEDGWICK
803	A favorite at weddings, “The Chicken Dance” song is one of the most widely known tunes of what music genre?	POLKA
804	A fetoscope is a medical tool commonly used to examine whom?	PREGNANT WOMEN
805	A few notes of the French national anthem, “La Marseillaise,” play at the start of what Beatles song?	ALL YOU NEED IS LOVE
806	A five-note melody– D flat,D flat,G,D flat,and A flat–is the famous jingle for what technology company?	INTEL
807	A fixture in urban settings, Columba livia is the scientific name for what birds?	PIGEONS
808	A Food & Wine magazine article titled “Cook Like a Pit Master” presents tips on preparing what kind of food?	BARBECUE
809	A form of Vitamin A, Retinol is a popular ingredient in which of these drugstore items?	WRINKLE CREAM
810	A fourth of July staple, a firework that periodically emits sparks and balls of fire is called a what?	ROMAN CANDLE
811	A fragrance by Christian Dior, Fahrenheit 32 gets its name from the temperature at which what happens?	WATER FREEZES
812	A fumarole is an opening in the Earth’s crust,typically found on or near what type of natural formation?	VOLCANO
813	A giant compound in Southern California houses Jay Leno’s famous collection of rare and vintage what?	AUTOMOBILES
814	A great space-saving idea,a twin bed that slides underneath another twin when not in use is called a what?	TRUNDLE BED
815	A group of what birds is known as “murder”?	CROWS
816	A haiku is a Japanese poem consisting of how many lines of verse?	THREE
817	A hand gripping the Holy Grail is depicted on pints of what Ben & Jerry’s ice cream flavor?	VERMONTY PYTHON
818	A hectare is a metric unit used to measure what?	AREA
819	A herpetologist deals with the study and classification of what?	REPTILES AND AMPHIBIANS
820	A historic site since 1982,the Barbizon Hotel was once a residence for young single women in what U.S. city?	NEW YORK
821	A hot dog topped with chili sauce,raw onions and mustard is named after what famous New York City neighborhood?	CONEY ISLAND
822	A key component in their company logo,Pixar’s mascot Luxo Jr. is a what?	DESK LAMP
823	A key figure in the 2008 presidential election, Ohio native Joe Wurzelbacher is better known as what?	JOE THE PLUMBER
824	A key plot point in “The Social Network,” the exclusive frat-like clubs at Harvard University are called what?	FINAL CLUBS
825	A kilowatt is a unit of power equal to how many watts?	1000
826	A laid-back Hawaii native, folk rocker Jack Johnson is famous for performing in what footwear?	FLIP-FLOPS
827	A large bridge spanning the New River Gorge is depicted on the commemorative quarter of what U.S. state?	WEST VIRGINIA
828	A largemouth angler specializes in catching a variety of what fish?	BASS
829	A late night talk show that debuted on TBS in 2009, the “Lopez Show” is hosted by whom?	GEORGE LOPEZ
830	A leghorn is a type of what animal?	CHICKEN
831	A liger is an animal that results from the crossbreeding of a tiger and a what?	LION
832	A likely expert on the Loch Ness monster and the Abominable Snowman,a cryptozoologist studies what?	LEGENDARY CREATURES
833	A local seafood joint called the “Crab Shack” is a frequent setting on which of these TV sitcoms?	MY NAME IS EARL
834	A lover of learning, as of 2010 James Franco has enrolled in all but which of these universities?	HARVARD
835	A lover of red meat and weaponry,Ron Swanson is Leslie Knope’s mustachioed boss on what popular sitcom?	PARKS AND RECREATION
4993	Who is Marshal Bruce Mathers III?	RAP STAR EMINEM
836	A major airport serving what U.S. city is named in honor of mayors William Berry Hartsfield and Maynard Jackson?	ATLANTA
837	A medicine man named Ketut Liyer is now a popular tourist attraction in Bali thanks to his appearance in what memoir?	EAT,PRAY,LOVE
838	A mere 4.2 light years away,what aptly-named star is our sun’s closest neighbor?	PROXIMA CENTAURI
839	A message that translates as “Long Live Nero” is among the ancient graffiti found at what archaeological site?	POMPEII
840	A metaphor for a tough situation, the British phrase “sticky wicket” arose from playing what game on a wet field?	CRICKET
841	A microphone,camera and “powerful pink and black ensemble” are accessories for a new Barbie doll with what career?	NEWS ANCHOR
842	A mix of the words “marionette” and “puppet” provides the name for a set of characters created by whom?	JIM HENSON
843	A mochaccino is traditionally made by adding what ingredient to a cappuccino?	CHOCOLATE
844	A move called a “jackknife” is commonly performed in what sport?	DIVING
845	A movie genre characterized by dark lighting and bleak settings,”film noir” literally translates to what?	BLACK FILM
846	A musician can play notes on which of these instruments while inhaling?	HARMONICA
847	A must-have for new moms, a popular contraption for disposing of dirty diapers is called the diaper what?	GENIE
848	A muumuu is a loose-fitting dress traditionally worn where?	HAWAII
849	A mythical creature blamed for killing livestock in Mexico, El Chupacabra means what in Spanish?	GOAT SUCKER
850	A national dish of Thailand, Pad Thai is traditionally made with all but which of these ingredients?	COCONUT MILK
851	A navy pilot who was shot down in World War II,JFK’s oldest brother “JPK” was named what?	JOSEPH PATRICK KENNEDY
852	A new spin on the BLT,the increasingly popular “BLAT” sandwich typically comes with bacon,lettuce,tomato and what?	AVOCADO
853	A new way to teach kids to ride, balance bikes are bicycles that are missing what part?	PEDALS
854	A nod to its famous horse race, what U.S. state uses the slogan “Unbridled Spirit” to market itself to visitors?	KENTUCKY
855	A nurse takes a person’s radial pulse by feeling what part of the body?	WRIST
856	A pair of men’s pants measuring “30×32” has what two measurements?	30″ WAIST, 32″ INSEAM
857	A paper called “The Assessment of Sultriness” was used to develop what meteorological measurement?	HEAT INDEX
858	A paper clip in France is called what since it resembles that of a musical instrument in shape?	TROMBONE
859	A part of his signature wardrobe,what celebrity chef had an edition of Crocs named after him in 2007?	MARIO BATALI
860	A peace treaty has never been signed for which of these major conflicts?	KOREAN WAR
861	A perennial dance favorite,a popular song by C&C Music Factory describes “Things That Make You Go” what?	HMMMM
862	A person can drink red wine by the Red Sea on the coast of Egypt and white wine by the White Sea on the coast of what?	RUSSIA
863	A person claiming to have psychokinetic powers is supposed to be able to do what with his mind?	MOVE OBJECTS
864	A person flying due east from Iceland would pass over the following countries in what order?	NORWAY, SWEDEN, FINLAND
865	A person is most likely to visit London’s Savile Row to shop for which of the following?	CLOTHING
866	A person known to doctors as a “universal donor” has which of these blood types?	O
867	A person suffering from “leporiphobia” would fear which of these Looney Tunes characters?	BUGS BUNNY
868	A person wearing specialized Capezio shoes is most likely engaging in which of these activities?	BALLET DANCING
869	A person who gets upset over something that’s not really so shocking is often said to be “clutching their” what?	PEARLS
870	A person who has the first generation Apple iPad can use it to do all but which of the following?	VIDEO CHAT
871	A person who is born on March 15th celebrates his “half birthday” on what date?	SEPT 15th
872	A person who is fighting imaginary opponents is said to be “tilting at a” what?	WINDMILLS
873	A person who is said to be “playing the back nine” is participating in what sport?	GOLF
874	A person who orders “bifteck” in a French restaurant expects to see what on his plate?	STEAK
875	A person who peddles medicines that are fake or ineffective is commonly said to be selling what?	SNAKE OIL
876	A person who works full-time and gets paid biweekly would receive how many paychecks in one year?	26
877	A person with an excessive wardrobe and keen interest in dressing well is said to be a what?	CLOTHESHORSE
878	A pescetarian breaks from the vegetarian code by eating which of these foods?	FISH
879	A phillumenist is a collector of what?	MATCHBOOKS
880	A pink monster with a voice like Boris Karloff’s is the mascot of what popular breakfast cereal?	FRANKEN BERRY
881	A pirate who is yelling, “Avast,ye mateys” is actually telling his mates to do what?	STOP
882	A pitfall of cosmetic dentistry,veneered front teeth that are oversized and bright white are known as what?	CHICLET TEETH
883	A plant or animal that grows and feeds on or in another organism is called a what?	PARASITE
884	A politician who suddenly changes his public position on an issue is commonly said to have what?	FLIP-FLOPPED
885	A popular breed of poultry, Cornish hen takes its name from a region of what country?	ENGLAND
886	A popular brunch cocktail, the Bellini is typically made by mixing champagne with what pureed fruit?	PEACH
887	A popular but false urban legend suggests that Washington D.C.’s landscape was originally a what?	SWAMP
888	A popular Chinese proverb says, “A journey of a thousand miles begins with” what?	A SINGLE STEP
889	A popular coffee drink, a macchiato is traditionally an expresso with what topping?	MILK FOAM
890	A popular four-digit passcode on the iPhone is 5683,which turns out to be the keyboard representation of what word?	LOVE
891	A popular game on many college campuses,beer pong is typically played with a ball from what sport?	TABLE TENNIS
892	A popular holiday dish that features a chicken stuffed inside a duck stuffed inside a turkey goes by what name?	TURDUCKEN
893	A popular ingredient in cookies, hazelnuts are also known as what?	BUCKEYES
894	A popular kind of sushi, a California roll commonly features what kind of “imitation” seafood inside?	CRAB
895	A popular maker of parenting accessories, the Babybjorn company is headquartered in what country?	SWEDEN
896	A popular Mexican treat, a paleta is a what?	POPSICLE
897	A popular myth suggests that you’ll be less tasty to mosquitoes if you take vitamin B1,which is also known as what?	THIAMINE
898	A popular New England appetizer, clams casino combines clams with breadcrumbs and what meat?	BACON
899	A popular pose among yoga enthusiasts, the “crane” involves touching the ground only with one’s what?	HANDS
900	A popular snack food for children, string cheese is normally made from what type of cheese?	MOZZARELLA
901	A popular song at sports events, the Ramones’ “Blitzkreig Bop”begins with what chorus?	HEY HO LET”S GO
902	A popular style of music,the blues takes its name from a shortened form of what phrase?	BLUE DEVILS
903	A popular tourist destination in Europe, Prague is the capital of what country?	CZECH REPUBLIC
904	A popular treatment in the 1970s that is making a comeback, rolfing is a sometimes painful method of what?	DEEP-TISSUE MASSAGE
905	A popular vacation spot, the Turks and Caicos Islands are a British colony located where?	CARIBBEAN
906	A popular vacation spot,the Maldives is an island nation off the coast of which of these countries?	INDIA
907	A prayer rug called a “sajjada” is traditionally used by members of what religion?	ISLAM
908	A presumed expert at Mongolian beef,Huou was a 13th-century culinary pioneer and personal chef for whom?	KUBLAI KHAN
909	A prissy blonde brat named Nellie Oleson was a memorable character on what TV show?	LITTLE HOUSE ON THE PRAIRIE
910	A psychiatric disorder in which a person falsely believes their spouse to be unfaithful goes by what apt name?	OTHELLO SYNDROME
911	A raucous road trip featured in the 1996 movie “Swingers” is said to have popularized what catchphrase?	VEGAS,BABY,VEGAS!
912	A recent social trend, “dadchelor parties” are events thrown for men who are about to what?	HAVE A BABY
913	A recurring character by funnyman Russell Brand,Aldous Snow is the lead singer of what fictional band?	INFANT SORROW
914	A reference to its famous monument, “Great Faces. Great Places” appears on license plates issued by what U.S. state?	SOUTH DAKOTA
915	A reference to the last initial of the retailer’s founder, the “K” in “Kmart” stands for what?	KRESEGE
916	A reference to the last initial of the retailer’s founder, the “K” in “Kmart” stands for what?	KRESGE
917	A renowned musical group, “Pershing’s Own” is the official band of what branch of the U.S. armed forces?	ARMY
918	A replica of John Sutter’s sawmill in Coloma,California,marks what important event in U.S. history?	GOLD RUSH
919	A rich sauce in Mexican cuisine,mole most commonly features which of these ingredients?	CHOCOLATE
920	A rival to Amazon’s Kindle,what is the name of the e-book reader sold by Barnes & Noble?	NOOK
921	A rupture in the tympanic membrane usually has a negative effect on which of the senses?	HEARING
922	A sacred prayer in the Roman Catholic faith,Ave Maria gets its name from a Latin phrase meaning what?	HAIL MARY
923	A scholar who is a classicist deals primarily with texts originally written in what languages?	GREEK AND LATIN
924	A scholar who is “classicist” deals primarily with texts originally written in what languages?	GREEK AND LATIN
925	A scratch test is an exam given by a physician to determine whether a patient has what ailment?	ALLERGIES
926	A secret menu item at Fatburger restaurants,the “Hypocrite” is a veggie burger topped with what fixing?	BACON
927	A secret society known as the “Righteous and Harmonious Fists” was the force behind what historic uprising?	BOXER REBELLION
928	A self-proclaimed federal grant expert,infomercial pitchman Matthew Lesko wears suits covered with what?	QUESTION MARKS
929	A sign with the Spanish word “salida” on it indicates what?	EXIT
930	A simple image of a beam of light being refracted is depicted on the cover of what iconic 1973 album?	THE DARK SIDE OF THE MOON
931	A site of historic peace negotiations,the presidential retreat Camp David is located in what U.S. state?	MARYLAND
932	A skeleton’s gender can be determined by looking at the curvature on the sciatic notch,an area on what bone?	HIPBONE
933	A small tool called an orange stick is most commonly used at what type of business?	NAIL SALON
934	A smaller,more intricate version of the popular fabric pattern houndstooth is fittingly known as what?	PUPPYTOOTH
935	A Smithsonian exhibit features one of Celia Cruz’s “batas Cubanas”,which is a Cuban variety of what?	DRESS
936	A so-called “green card marriage” is a union in which one partner is and one partner is not typically what?	A U.S. CITIZEN
937	A sort of prequel to “Sex and The City,” “The Carrie Diaries” is a 2010 novel by what author?	CANDACE BUSHNELL
938	A Spanish speaker in the U.S. who is celebrating “El Dia de Accion de Gracias” is celebrating what holiday?	THANKSGIVING
939	A Spanish-speaking person refers to what national holiday as “Dia de Trabajo”?	LABOR DAY
940	A standard yardstick is approximately how many centimeters long?	91
941	A staple at Tea Party rallies,flags depicting a rattlesnake and the motto “Don’t Tread on Me” have what color background?	YELLOW
942	A staple in Kate Middleton’s wardrobe, a fascinator is an ornate type of what fashion accessory?	HAT
943	A staple in mob movie meals,”gabagool” is one pronunciation of capicola,a type of Italian what?	CURED MEAT
944	A staple of Argentinean cuisine, asado is a dish consisting of meat cooked using what technique?	GRILLING
945	A state that celebrated its “cuarto centenario” in 1998, New Mexico was founded in what year?	1598 *CORRECT*
946	A statue of what movie character stands near the base of the steps of the Philadelphia Museum of Art?	ROCKY BALBOA
947	A study released in 2011 revealed that men tend to undergo a sharp drop in testosterone after doing what?	HAVING CHILDREN
948	A substance,such as rubber,that conducts electricity very poorly is called a what?	INSULATOR
949	A superhero in her own right,Kara Zor-El is the biological cousin of what other superhero?	SUPERMAN
950	A tangelo is a cross between a tangerine and what other fruit?	GRAPEFRUIT
951	A task performed on the reality show “Top Chef,” a brunoise is made by doing what?	DICING VEGETABLES
952	A tattoo with the message “Remember Sammy Jankis” figures prominently in what film?	MEMENTO
953	A tea cozy is commonly made out of what material?	CLOTH
954	A testament to wish fulfillment, what TV personality had, as a teen, a license plate that read L8NITE?	JIMMY KIMMEL
955	A theory emerged in 2011 that was famous painting was actually inspired by the artist’s male apprentice?	MONA LISA
956	A thick type of foundation makeup shares its name with what breakfast food?	PANCAKE
957	A thickening agent used in ice cream,agar is essentially powdered what?	SEAWEED
958	A toilet plunger’s rubber head is an effective “mute” for which of these musical instruments?	TRUMPET
959	A torch, an oak branch and an olive branch are featured on the back of what U.S. coin?	DIME
960	A traditional food for the Japanese New Year,mochi is a cake primarily made of what ingredient?	RICE
961	A traditional whiskey sour is sour because it contains what?	LEMON JUICE
962	A traditional “Hawaiian” pizza is topped with an unusual combination of pineapple and what?	HAM
963	A treat for their customers,in 2011 pet food maker Friskies released three iPad games meant for what animals to play?	CATS
964	A truce enacted at the 11th hour of the 11th day of the 11th month of the year brought an end to combat in what war?	WORLD WAR I
965	A tune or song that becomes stuck in one’s head is slangily known as a what?	EARWORM
966	A type of clay pottery, tera cotta takes its name from an Italian phrase meaning what?	BAKED EARTH
967	A type of clay pottery,terra cotta takes its name from an Italian phrase meaning what?	BAKED EARTH
968	A type of fire-resistant material, Nomex is often worn by what sports stars?	NASCAR DRIVERS
969	A type of molecule,cubane gets its name because its structure resembles a shape with how many sides?	6
970	A type of pesticide,molluscicides are designed to get rid of what slimy creatures?	SNAILS
971	A type of security measure, retinal scanning identifies people based on unique patterns in their what?	EYES
972	A type of thick-crusted, rectangular pizza is named after what region in Italy?	SICILY
973	A unicorn, a ram, and a triceratops have how many horns altogether?	SIX
974	A US President and an actress from the TV Series “Golden Girls” share what surname?	ARTHUR
975	A wandering technician repeatedly asked, “Can you hear me now?” in a series of ads for what company?	VERIZON WIRELESS
976	A Web site that no longer exists will often prompt the phrase “Not Found” and what code number?	404
977	A well-known aphrodisiac, the Spanish fly is not a fly, but rather a species of what insect?	BEETLE
978	A well-known term for a husband whose wife cheats on him is derived from which of these bird names?	CUCKOO
979	A well-known term for a husband whose wife cheats on him is derived from which of these bird names?	CUCKOO
980	A whetstone is an old-fashioned kitchen device with a hard, flat surface designed to do what?	SHARPEN KNIVES
981	A winter time staple,red wine that has been warmed and flavored with spices is called what?	MULLED WINE
982	A woman traditionally waves a fan coyly across her body when performing which of these dances?	FLEMENCO
983	A workplace faux pas if done accidentally,what email function sends an “email blast” to a large group?	REPLY ALL
984	A year is approximately equal to how many fortnights?	26
985	A young,attractive woman who is married to a rich middle-aged man is often described as a what?	TROPHY WIFE
986	A zester is a common kitchen tool designed to be used with which of these foods?	LEMON
987	A zester is a common kitchen tool designed to be used with which of these kitchen foods?	LEMON
988	A “Bogus” was an early nineteenth-century machine used to do what?	COUNTERFEIT MONEY
989	A “cinephile” is a person who is a devoted and knowledgeable fan of what?	MOVIES
990	A “face mask” is a common penalty in what sport?	FOOTBALL
991	A “potbelly” is an old-fashioned type of what household appliance?	STOVE
992	A “tox screen” is a medical test commonly used to examine the components of which of the following?	BLOOD
993	Able to rotate 360 degrees,SkyCity is a restaurant at the top of what U.S. landmark?	SPACE NEEDLE
994	Able to swim for miles on end, what animal has the scientific name “Ursus maratimus?”	POLAR BEAR
995	About 30 seconds long,”Think Music” is the name of the familiar theme heard during the final round of what game show?	JEOPARDY
996	About sharecroppers in Georgia, what novel’s title is also a noun meaning “a poverty-stricken area”?	TOBACCO ROAD
997	About “boys, drama, and best friends” in 2010 what reality star announced her upcoming novel, “A Shore Thing?”	NICOLE “SNOOKIE” POLIZZI
998	Accepting his first Oscar in 2012 at the age of 82,what actor said to his statue, “You’re only two years older than me!”?	CHRISTOPHER PLUMMER
999	According to a debunked urban legend, Avon’s original Skin So Soft was thought to be an effective what?	INSECT REPELLENT
4994	Who is Marshall Bruce Mathers III?	RAP STAR EMINEM
1000	According to 19th-century Romantic poet John Keats,what is “a joy for ever?”	A THING OF BEAUTY
1001	According to 2009 government statistics,what reality show features the most dangerous real-life profession?	THE DEADLIEST CATCH
1002	According to a 1974 Barry Manilow song, who “came and gave…without taking?”	MANDY
1003	According to a 2001 study at Sydney University, belly button lint is most likely what color?	BLUE
1004	According to a 2011 report by Forbes, what country counts 115 billionaires among its citizens, second only to the U.S.?	CHINA
1005	According to a 2011 study on “the return trip effect,” trips home seem to be how much faster than trips out?	20%
1006	According to a 2012 report by Forbes,what country counts 96 billionaires among its citizens,second only to the U.S.?	RUSSIA
1007	According to a Benjamin Franklin quotation,nothing is “certain except” what “and taxes”?	DEATH
1008	According to a classic American railroad song, “Someone’s in the kitchen with Dina” doing what?	STRUMMIN ON THE OLD BANJO
1009	According to a classic theme song, you’ll have a “yabba-dabba-doo time” watching what TV series?	THE FLINTSTONES
1010	According to a classic tune from “Porgy and Bess,” “the living is easy” during what time?	SUMMERTIME
1011	According to a common cliche,a person who objects strongly to doing something wouldn’t do it “for all the tea” where?	IN CHINA
1012	According to a common idiom, extremely close friends are said to be “as thick as” what?	THIEVES
1013	According to a common saying, “the hand that rocks the cradle is the hand that” does what?	RULES THE WORLD
1014	According to a common theory,which of these phrases originally referred to ready-mix concrete trucks?	THE WHOLE NINE YARDS
1015	According to a data-based book called “The Top Ten,” which Shakespeare play is one of the ten best books of all-time?	HAMLET
1016	According to a famous Albert Einstein quote, “God does not play” what with the universe?	DICE
1017	According to a famous poem by John Keats, “a thing of beauty is” what?	A JOY FOREVER
1018	According to a famous quote by designer Coco Chanel,you should do what just before leaving the house?	TAKE ONE THING OFF
1019	According to a famous quote from Confucius,”only the wisest and stupidest of men never” do what?	CHANGE
1020	According to a famous Yves Saint Laurent quote, “Fashions fade,” what “is eternal?”	STYLE
1021	According to a George Carlin joke,what state is truly the “Garden State” only if you are talking about “growing smokestacks”?	NEW JERSEY
1022	According to a key song from “The Sound of Music,” what musical note is “a long, long way to run”?	FAT
1023	According to a Navy tradition, sailors become “shellbacks” after doing what for the first time?	CROSSING THE EQUATOR
1024	According to a nerdy joke about chemical symbols, a female is made up of a male plus what element?	IRON
1025	According to a popular expression,what is “always 20/20”?	HINDSIGHT
1026	According to a popular franchise’s slogan,”America Runs on” what?	DUNKIN’
1027	According to a popular legend, what pasta’s shape is modeled after a woman’s belly button?	TORTELLINI
1028	According to a popular seven-note tune, “a shave and a haircut” costs how much money?	TWO BITS
1029	According to a popular tradition, what should newlyweds do with the top tier of their wedding cake?	EAT IT IN A YEAR
1030	According to a TV Land sitcom starring Betty White,it is “Hot In” what U.S. city?	CLEVELAND
1031	According to a well-known children’s song “The bear went over the mountain” to do what?	SEE WHAT HE COULD SEE
1032	According to a well-known expression, a person who is “dressed to the nines” is wearing what?	FANCY CLOTHES
1033	According to a well-known nursery rhyme,”Wednesday’s child is full of” what?	WOE
1034	According to a well-known quote by historian Lord Acton,”Absolute power” does what “absolutely”?	CORRUPTS
1035	According to a well-known saying, “If you can remember” what decade,”then you weren’t really there”?	THE ’60S
1036	According to an old adage, one should “eat breakfast like a king, lunch like a prince, and dinner like a” what?	PAUPER
1037	According to an old expression, “Great oaks grow from little” what?	ACORNS
1038	According to an old nautical expression, when facing a difficult time you should do what to the hatches?	BATTEN DOWN
1039	According to an old saying,a secretive person plays his or her cards “close to the” what?	VEST
1040	According to astronomers,what is the longest day of the year in the Northern Hemisphere?	SUMMER SOLSTICE
1041	According to census data, the language most frequently spoken in U.S. homes, besides English, is what?	SPANISH
1042	According to company estimates, about 25% of Filet-O-Fish sandwiches are sold during what?	LENT
1043	According to experts at Harvard Medical School,which of these activities burns the most calories in 30 minutes?	ROLLERBLADING
1044	According to forklore, what legendary creature creates no reflection in a mirror?	VAMPIRE
1045	According to Greek myth,King Midas had the power to turn everything he touched into what?	GOLD
1046	According to his TV theme song,who was “born on a mountaintop in Tennessee”?	DAVY CROCKETT
1047	According to its author, which of these books was written to promote kindness toward horses?	BLACK BEAUTY
1048	According to its commercial jingle, consumers are advised to use what amount of Daisy sour cream?	A DOLLOP
1049	According to its long-running tourism slogan,”Virginia Is For” whom?	LOVERS
1050	According to its mission statement,which of these universities was “founded in the fires of evangelism”?	ORAL ROBERTS UNIVERSITY
1051	According to its name,New York City’s MoMA specializes in what kind of art?	MODERN
1052	According to its purported inventor the Brown Derby,all but which of these ingredients are components of a Cobb salad?	HAM
1053	According to its slogan, Snapple is “made from” what?	THE BEST STUFF ON EARTH
1054	According to legend, David Jacks of Monterey County, CA, was the first to market a now-famous type of what?	CHEESE
1055	According to legend, Swiss folk hero William Tell was an expert with what medieval weapon?	CROSSBOW
1056	According to legend, what did Mohammad Ali do with his 1969 Olympic gold medal?	TOSSED IT IN RIVER
1057	According to legend, what frigid country was given a “warmer” name to trick people into settling there?	GREENLAND
1058	According to legend,country club employee Buddy Mulligan inspired a term often used in what sport?	GOLF
1059	According to legend,the ghosts of Anne Boleyn and Sir Walter Raleigh haunt what London landmark?	TOWER OF LONDON
1060	According to Legend,what Looney Tunes character was born in a warren under the old Dodgers stadium in Brooklyn?	BUGS BUNNY
1061	According to McDonald’s, how many calories does its signature Big Mac sandwich have?	540
1062	According to myth,what country’s capital was founded by the twins Romulus and Remus?	ITALY
1063	According to official lore, whose birth was greeted by a double rainbow over sacred Mt Paektu?	KIM JONG II
1064	According to reality star Mike”The Situation” Sorrentino,”The Situation” refers to what muscular body part?	HIS ABS
1065	According to superstition,where should you never put a hat?	ON A BED
1066	According to the 1993 book, “The Left-Hander Syndrome,” roughly what percentage of the world is left-handed?	10%
1067	According to the 2011 Forbes list, how many billionaires are there in the world?	1140
1068	According to the actress, Nichelle Nichols only stayed on what TV series because Martin Luther King, Jr. told her to?	STAR TREK
1069	According to the Association for Dressings and Sauces, what is the most popular salad dressing in the U.S.?	RANCH
1070	According to the book of Exodus,which of these was not one of the ten plagues God inflicted on ancient Egypt?	TEMPLES TURNED TO SAND
1071	According to the Bridal Association of America,what wedding ceremony participant walks down the aisle holding a pillow?	RING BEARER
1072	According to the Catholic Church,what was the name of the very first Pope?	PETER
1073	According to the classic show about Kevin Arnold,which years were “The Wonder Years”?	1968 TO 1973
1074	According to the Constitution, the U.S. vice president also serves as the what?	PRESIDENT OF THE SENATE
1075	According to the Constitution,a U.S. senator elected in 2010 will be up for reelection in what year?	2016
1076	According to the Dept. of Education,more degrees are earned in what undergraduate major than in any other?	BUSINESS
1077	According to the intro of a classic 1950s TV series,who fights “for truth,justice,and the American way”?	SUPERMAN
1078	According to the Irish playwright George Bernard Shaw,”He who can,does. He who cannot,” does what?	TEACHES
1079	According to the lyrics of a 1964 song,the girl from Ipanema is “tall and thin and young and” what?	LOVELY
1080	According to the lyrics of his 1973 hit song,Jim Croce wishes he “could save” what “in a bottle”?	TIME
1081	According to the National Severe Storms Laboratory,about how wide across is a cloud-to-ground lightning bolt?	ONE INCH
1082	According to the OED,which of these shoe names also describes a person “who spends his time in idleness”?	LOAFER
1083	According to the old sports saying,”The best defense is a good” what?	OFFENSE
1084	According to the results of the 2010 Census,what is the approximate population of the United States?	309 MILLION
1085	According to the term’s rough translation,the vegetable and grain-heavy “macrobiotic diet” purports to offer a what?	LONG LIFE
1086	According to the title of a cable sitcom featuring Danny DeVito, “It’s Always Sunny In” what U.S. city?	PHILADELPHIA
1087	According to the title of a popular folk song, what animal is “in the Straw”?	TURKEY
1088	According to the U.S. Naval Observatory, the average length of a calendar year is 365 days and what?	5 HRS, 49 Min, 12 SEC
1089	According to the U.S. State Dept,127 of the world’s 193 countries have what word in their names?	REPUBLIC
1090	According to their ’80s heavy metal anthem,the Scorpions want to “Rock You Like a” what?	HURRICANE
1091	According to U.S. law,what “should never be carried flat or horizontally,but always aloft and free”?	U.S. FLAG
1092	According to Urban Dictionary, “cookie duster” is a playful term for a what?	MUSTACHE
1093	Acting legend Meryl Streep made her film debut in 1977 in what Oscar-nominated film?	JULIA
1094	Actor Matthew Perry shares his first and last name with a famous American who held what U.S. post?	COMMODORE OF THE NAVY
1095	Actor Paul Rudd had roles in all but which of the following comedy blockbusters?	THE HANGOVER
1096	Actors who gain weight for roles are often compared to Robert De Niro,who packed on 60 pounds for what Scorsese film?	RAGING BULL
1097	Actress Christine Baranski guest stars as Dr. Beverly Hofstadter,Leonard’s mom,on what TV sitcom?	THE BIG BANG THEORY
1098	Actress Estelle Getty is best remembered for a TV role in which she always did which of the following?	WORE A WIG
1099	Actress Kimberly Williams changed her last name to WIlliams-Paisley in 2003 after marrying a famous what?	COUNTRY SINGER
1100	Actress Mackenzie Phillips is the daughter of John Phillips,a singer from what popular music group?	THE MAMAS & THE PAPAS
1101	Actually a combination of three tunnels,the so-called “Chunnel” runs underwater from England to what country?	FRANCE
1102	Adam Sandler, Seth Rogen, and Jonah Hill star in a 2009 movie aptly titled what?	FUNNY PEOPLE
1103	Adapted from a children’s book,Jim Carrey plays a businessman who inherits pets in the movie “Mr.Popper’s” what?	PENGUINS
1104	Adding an “a” to the end of what president’s surname gives the name of a wildly popular 19th-century dance?	JAMES K.POLK
1105	Administrative Professionals Day, once called National Secretaries Day, is observed during what month?	APRIL
1106	Advertised as a “Decision Engine,” Bing is a Web Site most similar in function to which of the following?	GOOGLE
1107	Advertising its low calorie count,Anheuser-Busch offers what brew,dubbed “the lightest beer in the world”?	BUDWEISER SELECT 55
1108	Aesop,the 6th-cetntury Greek author,is primarily known for writing what type of fiction?	FABLES
1109	Afghan Girl was captured as the photo of what magazine?	NATIONAL GEOGRAPHIC
1110	Afrikaans and Zulu are just two of the eleven official languages used by what multilingual nation?	SOUTH AFRICA
1111	After 29 years of calling him her “spousal equivalent,” what “View” co-host finally wed her longtime beau Steve Janowitz in 2011?	JOY BEHAR
1112	After a much-hyped 2011 wedding,which Kardashian filed for divorce just days after marrying NBA player Kris Humphries?	KIM
1113	After a well-publicized breakup,what actor altered his “Winona Forever” tattoo to read “Wino Forever”?	JOHNNY DEPP
1114	After adopting her son there,what actress helped rebuild a school in her newly adopted city of New Orleans?	SANDRA BULLOCK
1115	After directing the pro-Dalai Lama 1997 film “Kundun,” what director found himself banned from China?	MARTIN SCORSESE
1116	After dismal performances,a legendary what inspired the 2010 headline “Houston,We Have a Problem”?	POP SINGER
1117	After her breakout role on “The Cosby Show,” Raven-Symone starred in what aptly-named kids’ show?	THAT’S SO RAVEN
1118	After his departure from CBS in 2011,Charlie Sheen embarked on a nationwide tour called “My Violent Torpedo of” what?	TRUTH
1119	After hosting the season premiere of “Saturday Night Live” in 2011, who became the most frequent SNL host in history?	ALEC BALDWIN
1120	After long struggling with cigarettes,which of these politicians was declared “tobacco free” by his doctor in 2011?	BARACK OBAMA
1121	After losing a whopping 88 pounds in 2011, Latino rapper Fat Joe joked that friends started calling him “Joey” what?	FLACO
1122	After moving to cable,Oprah Winfrey debuted her new primetime talk show in 2012,titled “Oprah’s” what?	NEXT CHAPTER
1123	After nearly 70 days underground,33 men were dramatically rescued in 2010 from a mine in what country?	CHILE
1124	After nearly thirty years on the job,Mary Hart stepped down as host of what TV show in 2011?	ENTERTAINMENT TONIGHT
1125	After picking his running mate for vice president,who wrote in his diary,”It was my decision,and I blew it”?	GEORGE H.W. BUSH
1126	After retirement,”emeritus” is traditionally added to the title of a person with which of these occupations?	COLLEGE PROFESSOR
1127	After retirement,”emeritus” is traditionally added to the title of a person with which of these occupations?	COLLEGE PROFESSORS
1128	After Russia, what is the largest country in the world by land area?	CANADA
1129	After the passing of his father in 2011,Kim Jong-Un became the de facto leader of what nation?	NORTH KOREA
1130	After the U.S. and Russia,what is the only country to have launched a person into space aboard its own rocket?	CHINA
1131	Agreeing that greed is good, what actor’s ex-wife sued him for money earned on a 2010 “Wall Street” sequel?	MICHAEL DOUGLAS
1132	Aibohphobia,which reads the same way forwards and backwards,is the fear of what?	PALINDROMES
1133	Aimed at worn-out parents,the title of a best-selling 2011 kids’ book parody profanely urges kids to do what?	GO TO SLEEP
1134	Air, Gel and Zig are three different technological advances available on certain types of what?	SNEAKERS
1135	Airing in 2011, the reality series “Joan & Melissa” follows the ups and downs between two people of what relation?	MOTHER AND DAUGHTER
1136	Albany and New York City are two major ports on what river?	HUDSON
1137	Ali Wentworth,a popular actress and comedienne,is the wife of what prominent news anchor?	GEORGE STEPHANOPOULOS
1138	All Cabbage Patch dolls feature the signature of their creator,Xavier Roberts,stamped on what part of the body?	BACKSIDE
1139	All three of the popular “CSI” TV dramas feature theme songs performed by what rock band?	THE WHO
1140	Along with Bonaire and Curacao,what “A” island comprises the “ABC Islands”?	ARUBA
1141	Along with his wife Melinda,what billionaire has set a goal of eradicating polio worldwide?	BILL GATES
1142	Also a noted Broadway actor,Paul Lynde was most famous for being a regular guest on what game show?	HOLLYWOOD SQUARES
1143	Also about gangsters and New Jersey,the HBO series “Boardwalk Empire” is set in the ’20s in what town?	ATLANTIC CITY
1144	Also called a “serial” comma,the optional comma placed before the “and” at the end of a written list is called a what?	OXFORD COMMA
1145	Also called a “Whammy bar” a “tremolo arm” is used to affect the pitch of which of these musical instruments?	GUITAR
1146	Also called the “cone of shame,” the plastic collar often worn by dogs after a medical procedure is named what?	ELIZABETHAN COLLAR
1147	Also known as the striped polecat,the zorilla closely resembles what other black and white animal?	SKUNK
1148	Also known as the “Indian Date,” which of these exotic fruits grow inside large,but brittle brown pods?	TAMARIND
1149	Also known as “dysmelodia,” the medical term “amusia” describes someone with what common condition?	TONE DEAFNESS
1150	Also the name of her global empire,Martha Stewart’s eponymous magazine is named “Martha Stewart” what?	LIVING
1151	Although Nebraska is known as the Cornhusker State,what neighboring state annually leads the U.S. in corn production?	IOWA
1152	Although the movie “Fargo” mostly takes place in Minnesota,its title refers to a city in what state?	NORTH DAKOTA
1153	Although they are actually different plant species,in the U.S. sweet potatoes are often called what?	YAMS
1154	Aluminum salt is the active ingredient in which of these common drugstore products?	ANTI PERSPIRANTS
1155	American Idol reject William Hung became an instant celebrity due to his mangled version of what pop song?	SHE BANGS
1156	American skiers should pack a passport if they plan to travel to which of these popular resort towns?	BANFF
1157	An 18-karat gold bracelet is what percent gold?	75 PERCENT
4995	Who is Michael Buble?	GRAMMY-WINNING SINGER
1158	An 1899 poem that begins, “I know what the caged bird feels” inspired the title of whose 1969 memoirs?	MAYA ANGELOU
1159	An 18th century British diplomat, Baron St. Helens lends his name to a famous American what?	MOUNTAIN
1160	An abbreviation of the term “hypertext transfer protocol” typically appears at the beginning of a what?	WEBSITE ADDRESS
1161	An action that makes a bad situation worse is often described as “rubbing” what “into a wound”?	SALT
1162	An Al Pacino movie and a Metallica album both share what title,borrowed from the Pledge of Allegiance?	…AND JUSTICE FOR ALL
1163	An alternate to Equal or Sweet’N Low,Splenda is a sugar substitute that comes in what color packets?	YELLOW
1164	An alternative to the SAT, the ACT is a standardized college entrance exam in which scores range from 1 to what number?	36
1165	An alternative to tofu, seitan is a meat substitute primarily made from what?	WHEAT GLUTEN
1166	An apiculturist does what for a living?	KEEPS BEES
1167	An article on slate.com titled “Frying Nemo” determines whether what animals can truly feel pain?	FISH
1168	An Asian equivalent of a John Deere,which of these animals is known as the “living tractor of the East”?	WATER BUFFALO
1169	An aviation fanatic,what film star is a licensed commercial pilot and flies his own Boeing 707 jet?	JOHN TRAVOLTA
1170	An avid art collector himself,what comedian penned the novel “An Object of Beauty,” about an ambitious young art dealer?	STEVE MARTIN
1171	An earthquake measuring 7.0 on the Richter scale is how many times greater in magnitude than one measuring 5.0?	100 *CORRECT*
1172	An elephant’s tusks correspond to what type of teeth on a human?	INCISORS
1173	An English specialty,shepherd’s pie consists of meat baked in a “crust” made from what hearty side dish?	MASHED POTATOES
1174	An epigraph to what classic novel features the quotation, “You are all a lost generation”?	THE SUN ALSO RISES
1175	An essential component in tango music, the bandoneon is a musical instrument that closely resembles a what?	ACCORDION
1176	An expensive building material, particle board is made by pressing together small pieces of what?	WOOD
1177	An explosive episode of the TV show “MythBusters” proved that what nitrate-rich food can be used to power a rocket?	SALAMI
1178	An iconic 1964 painting by Rene Magritte depicts a businessman in a bowler hat who face is obscured by a what?	APPLE
1179	An iconic road sign located just south of the Las Vegas Strip welcomes visitors to what?	FABULOUS LAS VEGAS
1180	An iconic road sign located just south of the Los Vegas Strip welcomes visitors to what?	FABULOUS LOS VEGAS
1181	An important characteristic of motor oil,viscosity is the ability of a liquid to resist what?	FLOWING
1182	An indefinitely large number is often expressed to what degree?	Nth
1183	An interrosseus part of the human body is, by definition, an area that is situated between two what?	BONES
1184	An iPhone app from Runpee.com advises users on the best time to go to the restroom while doing what?	WATCHING A MOVIE
1185	An ironic allusion to a famous legislator, “The Volstead” in New York City is a cheekily-named what?	BAR
1186	An observation platform is called a crow’s nest and is traditionally found at the top of a what?	BOAT
1187	An ocean-dwelling snail,the sea hare is named for its tentacles that resemble two long what?	EARS
1188	An ode to the president,what R&B group remade an old hit with the 2009 single “Solid(As Barack)”?	ASHFORD & SAMPSON
1189	An oenophile is a person who enjoys what?	WINE
1190	An old myth suggests throwing what food against the wall to determine when it is properly cooked?	SPAGHETTI
1191	An old saying claims that if what will not come to Mohammed,Mohammed will go to it?	THE MOUNTAIN
1192	An old saying,similar to “let the buyer beware,” warns against purchasing what animal “in a poke”?	PIG
1193	An old trick for preventing spilled wine from staining is to quickly apply club soda,then which of these?	SALT
1194	An old way of wondering if a new product or work of art will have mainstream success asks, “Will it play” here?	IN PEORIA
1195	An opthamologist would most likely treat someone suffering from which of these ailments?	GLAUCOMA
1196	An organization for bald men,Bald R Us celebrates its International Bald Holiday on the birthday of what Oscar winner?	YUL BRYNNER
1197	An “estate tax” is typically levied by the government after what life event?	DEATH
1198	Angry over their government’s finance policies,in 2011 protestors in what country started hurling yogurt at police?	GREECE
1199	Annoying to some while fun for others “The Name Game” is a children’s rhyming game,also known as what?	THE BANANA SONG
1200	Annually since 1978,the Kennedy Center has bestowed “Honors” on distinguished people in what field?	PERFORMING ARTS
1201	Anyone who has read “Wuthering Heights” should know that the word “wuthering” means what?	WINDY
1202	Appearing at the end of many country names, the suffix “-stan” originates from what language?	PERSIAN
1203	Appearing in autumn,the harvest moon is one of about how many full moons that occur each year?	12 *CORRECT*
1204	Appearing in over 2600 periodicals around the globe, what is the world’s most widely syndicated comic strip?	GARFIELD
1205	Appropriately, “Family Guy” father Peter Griffin’s middle name is Lowenbrau,a popular ’80s brand of what?	BEER
1206	Appropriately,the letters in the name “Katie Holmes” can be rearranged to form the phrase “She like a” what?	TOM
1207	Appropriately,the Spanish word for heaven,”cielo,” is also the word for what?	SKY
1208	Approximately 10,000 avalanches occur each winter in which of these U.S. states?	UTAH
1209	April 12, 2011, marked the 150th anniversary of what event in U.S. history?	START OF CIVIL WAR
1210	Armbands are popular accessories for which of these tech gadgets?	iPOD
1211	Armistice Day, which later became Veterans Day, originally commemorated the end of what war?	WORLD WAR I
1212	As a boy,Louisiana governor Piyush Jindal named himself “Bobby” after a character on what sitcom?	THE BRADY BUNCH
1213	As a familiar rhyme reminds us,which of these months has more than 30 days?	JULY
1214	As a handy rhyme tells us, how many months have 31 days?	7
1215	As a marketing ploy,what critter is often added to bottles of the Mexican liquor Mezcal?	WORM
1216	As a practitioner of “kinetic sculpture,” artist Alexander Calder pioneered what kid-friendly art form?	MOBILES
1217	As a token of goodwill,in 1909 the city of Tokyo donated to the United States 2,000 what?	CHERRY TREES
1218	As any avid Twitterer knows, the maximum number of characters allowed for a single “tweet” is what?	140
1219	As any fashionista could tell you,what upscale designer’s shoes generally feature a signature red sole?	CHRISTIAN LOUBOUTIN
1220	As any foodie can tell you,a geoduck is a type of what?	CLAM
1221	As any late infomercial knows, in the popular “P90X” workout program, the 90 refers to what?	TOTAL DAYS OF THE PROGRAM
1222	As chefs know,the two succulent bits of meat on the back of a chicken,just above the thigh,are called what?	OYSTERS
1223	As compared to “regular” limes,key limes are typically what?	SMALLER IN SIZE
1224	As conservative in his fashion as he is in his politics,politician Rick Santorum is known to favor what clothing item?	SWEATER VEST
1225	As demonstrated by Egyptian protesters in 2011, Arabs consider it disrespectful to wave which of these at someone?	A SHOE
1226	As demonstrated in the name of the 2011 Super Bowl, how is “45” expressed in Roman numerals?	XLV
1227	As depicted in the “Iron Man” movies,which of these is one of Iron Man’s superpowers?	FLIGHT
1228	As host of the Tonight Show, Johnny Carson famously ended his monologues by pretending to do what?	SWING A GOLF CLUB
1229	As it is technically a legume,which of these “nuts” grows in pods underground rather than on trees?	PEANUT
1230	As its commercials incessantly remind you,which piece of exercise equipment was invented by an ex-Navy SEAL?	PERFECT PUSHUP
1231	As its literal title suggests, “Stuck On You” stars Greg Kinnear and Matt Damon as an affable pair of what?	CONJOINED TWINS
1232	As its name implies, Dwell magazine is dedicated to what subject?	HOME DESIGN
1233	As its name implies, the Guinness World Book of Records was initially published by what kind of business?	BREWERY
1234	As its name implies,Bowfire is a music show featuring several performers who are virtuosos on the what?	FIDDLE
1235	As its name implies,the trench coat is a wardrobe staple originally designed for what group of people?	MILITARY SOLDIERS
1236	As its name suggests, No “Zit” Sherlock is a beauty product that treats what unpleasant condition?	ACNE
1237	As its name suggests, Wookieepedia is an online source of information about what sci-fi movie series?	STAR WARS
1238	As its name suggests,the Web site 1040.com allows users to do which of the following online?	FILE TAXES
1239	As its name suggests,what two letters are prominently displayed in Dos Equis beer logo?	XX
1240	As its title hints at,the 2012 movie “Joyful Noise” features what type of musical acts?	GOSPEL CHOIRS
1241	As Mario and Luigi could tell you,”idraulico” is the Italian word for what professional?	PLUMBER
1242	As Mike “The Situation” Torrentino must know,”six-pack” abs are formed by which of the abdominal muscles?	RECTUS ABDOMINIS
1243	As music legend Prince must surely know,which of these colors is often associated with royalty?	PURPLE
1244	As of 2010, Athina Rousell de Miranda is the only surviving heir to whose vast fortune?	ARISTOTLE ONASSIS
1245	As of 2010, how much does it cost to buy a single issue of the newspaper “USA TODAY”?	1.00_
1246	As of 2010, what daytime show has won more Daytime Emmys than any other show in TV history?	SESAME STREET
1247	As of 2010, what is the only state that does not have mandatory seat belt law for adults?	NEW HAMPSHIRE
1248	As of 2010, which of these historic people has not been depicted on a Pez dispenser?	BENJAMIN FRANKLIN
1249	As of 2010, which of these movie franchises has not released a film in 3D?	BATMAN
1250	As of 2010,which of these Bravo “Real Housewives” has not released a music single?	MICHAELE SALAHI
1251	As of 2011, which of these positions in the U.S. government has been filled by a woman three different times?	SECRETARY OF STATE
1252	As of 2011,how much does it cost to buy a single issue of the newspaper “USA Today”?	$1 
1253	As of 2011,what is the earliest age at which a person in the U.S. can collect their Social Security retirement benefits?	62
1254	As of 2011,what southern university has produced three Miss Americas and one William Faulkner?	OLE MISS
1255	As of 2011,which of the following has never been the title of a reality show about making cakes?	CAKE MIX
1256	As of 2011,which of these movie stars has not yet reached the unofficial “retirement age” of 65?	BILL MURRAY
1257	As of 2011,which of these positions in the U.S. government has been filled by a woman three different times?	SECRETARY OF STATE
1258	As of 2012,which of these comedians has never hosted the Academy Awards?	JIMMY FALLON
1259	As of April 2011,residents of which of these U.S. states do not currently pay state income tax?	ALASKA
1260	As part of a recent culinary trend,”locavores” adhere specifically to a strict diet of what?	FOOD GROWN NEAR THEIR HOMES
1261	As part of its 2009 bankruptcy plan,Chrysler agreed to form a partnership with what European automaker?	FIAT
1262	As prolific director Woody Allen once quipped, “Eighty percent of success is” what?	SHOWING UP
1263	As seen in countless movie plots,what government agency oversees the Witness Protection Program?	U.S. MARSHALS
1264	As seen in online videos, a person can create soda geysers by combining Diet Coke with which of these?	MINT MENTOS
1265	As seen on tax refunds from the IRS,checks issued by the U.S. Treasure feature what American landmark?	STATUE OF LIBERTY
1266	As suggested by its quirky style, the 2010 film “Scott Pilgrim vs. The World” is based on an original what?	GRAPHIC NOVEL
1267	As suggested by the food company he created,chef Hector Boiardi specialized in what cuisine?	ITALIAN
1268	As the title of a 2006 documentary puts its, “Who is Harry Nilsoon (And Why Is Everyone Talking About Him)?”	A SINGER
1269	As the “Fresh Prince” theme music tells us,Will Smith was born and raised where?	WEST PHILADELPHIA
1270	As those who observe it well know, lent traditionally lasts how long?	40 DAYS
1271	Asthma is a medical condition that primarily affects what bodily system?	RESPIRATORY
1272	Astigmatism is a medical condition that can often be corrected by which of these surgeries?	LASIK SURGERY
1273	At 1.98 millimeters thick, which of these U.S. coins is the thickest?	NICKEL
1274	At a 2007 charity auction,the winner paid $64,800 for a saxophone belonging to what former U.S. president?	BILL CLINTON
1275	At a recycling plant,which of these materials would be categorized as either “ferrous” or “nonferrous”?	SCRAP METAL
1276	At birth,Hillary Clinton was given what middle name?	DIANE
1277	At Chicago’s Museum of Science and Industry,the Tesla Coil is used to simulate what natural event?	LIGHTNING STORM
1278	At Chinese restaurants,which of these menu items is traditionally deep-fried?	EGG ROLL
1279	At Disneyland Paris,”Le Chateau de la Belle au Bois Dormant” is the castle for what fairy tale heroine?	SLEEPING BEAUTY
1280	At five feet eleven inches, Michelle Obama is tied with whom for tallest First Lady?	ELEANOR ROOSEVELT
1281	At health spas, slices of what vegetable are commonly placed over a person’s eyes to reduce swelling?	CUCUMBERS
1282	At his 2011 Comedy Central roast,who playfully compared his famous hair to that of a “wet raccoon”?	DONALD TRUMP
1283	At just 18,Jason Bateman became the youngest person to join the Director’s Guild after directing an episode of what sitcom?	THE HOGAN FAMILY
1284	At the 1936 Olympics, Jesse Owens shocked the host nation by winning 4 golds in what event?	TRACK AND FIELD
1285	At the 2010 VMA’s,who picked up her “Video of the Year” award wearing a dress fashioned out of raw meat?	LADY GAGA
1286	At the 2011 North American International auto show, what automaker unveiled a new, roomier midsize Passat?	VOLKSWAGEN
1287	At the beginning of a game of chess,what pieces occupy the four corners of the board?	ROOKS
1288	At the end of each episode, which of these reality shows asks the losing contestant to “sashay away”?	RUPAUL’S DRAG RACE
1289	At the end of the 1953 movie “Shane,” what does the little boy famously yell as Shane rides off into the sunset?	COME BACK!
1290	At the end of “The Breakfast Club,” Molly Ringwald gives Judd Nelson her what?	DIAMOND EARRING
1291	At the National Spelling Bee,official “pronouncers” may provide all but which of the following to the spellers?	SYNONYMS
1292	At the Smithsonian’s National Portrait Gallery,whose portrait depicts him holding a computer disk?	BILL GATES
1293	At the start of a chess match, the basic opening move E2-E4 involves moving what game piece?	PAWN
1294	At the State of the Union address,who usually sits with the vice president right behind the U.S. president?	SPEAKER OF THE HOUSE
1295	At which of these food retailers are about 80% of the products on the shelves the store’s own brand?	TRADER JOE’S
1296	At which of these places would a person most likely find a book called a hymnal?	CHURCH
1297	At whose Presidential library may visitors listen to a copy of the infamous “Smoking Gun” tape?	RICHARD NIXON
1298	ATM’s in London that offer instructions in Cockney slang ask you for your “Huckleberry Finn” instead of your what?	PIN
1299	Attempting to liken the phone to a newborn baby,the engineer who sent the first text message in the U.S. wrote what?	BURP
1300	Aubergine, the British term for an eggplant, is also the name of a shade of what color?	DARK PURPLE
1301	Audiences sang the lyrics “summer fling,don’t mean a thing” at a 2010 “Sing-A-Long” re-release of what movie musical?	GREASE
1302	Author and etiquette guru Judith Martin writes a newspaper column under the pen name “Miss” what?	MANNERS
1303	Author Gabriel Garcia Marquez is best known for his masterpiece “One Hundred Years of” what?	SOLITUDE
1304	Available to download on your iPod, Radio Lingua offers users lessons on what?	FOREIGN LANGUAGES
1305	Awarded to about 20 to 40 U.S. citizens each year,the MacArthur Foundation’s annual grant has what nickname?	GENIUS GRANT
1306	Backyard gas grills are commonly fueled by a liquid form of what compound?	PROPANE
1307	Ballerina Sarah Lane made headlines by claiming that Natalie Portman only did 5 percent of the dancing in what film?	BLACK SWAN
1308	Banksy, a wildly popular contemporary artist, is best known for what kind of works?	GRAFFITI PAINTINGS
1309	Banned in some areas,the controversial method by which natural gas is extracted from rock formations is known as what?	HYDROFRACKING
1310	Barack Obama’s 1st name is derived from a Semetic word meaning what?	Blessed
1311	Bartlett,Bosc and Comice are popular varieties of what kind of fruit?	PEAR
1312	Baseball’s Brooklyn Dodgers got its name from fans who “dodged” what on their way to home games?	TROLLEYS
1313	Based on a true story, the 2010 film “127 Hours” stars James Franco as Aron Ralston, a courageous what?	MOUNTAIN CLIMBER
1314	Based on events of the 1976 Soweto riots, the Broadway musical “Sarafina!” is set in what country?	SOUTH AFRICA
1315	Based on France’s “24 hours of Le Mans,” America’s “24 hours of Le Mons” is a race involving what?	CARS
1316	Based on the childrens’ books, the main characters of the Nick Jr TV show “Olivia” are what animals?	PIGS
1317	Based on the foreign film “8 1/2,” the Broadway musical “Nine” features what aptly-titled song?	BE ITALIAN
1318	Basic Enlisted Submarine School is a training course offered by which branch of the U.S. military?	NAVY
1320	Bateau,scoop and sweetheart are terms used to refer to different styles of a dress’s what?	NECKLINE
1321	Bearnaise, a classic French sauce served with steak, is traditionally flavored with which of these herbs?	TARRAGON
1322	Because he grew up with it,which of these actors would not have to fake an Irish accent?	COLIN FARRELL
1323	Because he ostensibly works in the fields all day,what ad icon sports a wide-brimmed hat?	JUAN VALDEZ
1324	Because he produced over 350 low-budget films,what filmmaker is known as the “King of the B-Movies”?	ROGER CORMAN
1325	Because he shares his name with his late father,what NASCAR superstar is popularly known as “Junior”?	DALE EARNHARDT
1326	Because he thought it would improve people’s spirits,in 1920 Harry Burt named his ice-cream-on-a-stick invention what?	GOOD HUMOR BAR
1327	Because he was a housekeeper,what TV father had the lowest-paying job in Salary.com’s “TV Dad Salary Analysis”?	TONY MICELLI
1328	Because he “unconsciously plagerized” it, what artist shares his “Forever Young” royalties with Bob Dylan?	ROD STEWART
1329	Because it can only play one note at a time,which of the following is a monophonic musical instrument?	TRUMPET
1330	Because it causes painful throat contractions that make swallowing water difficult,rabies is also called what?	HYDROPHOBIA
1331	Because it consists of seven installments,which of these popular book series is considered a “heptalogy”?	HARRY POTTER
1332	Because it contains espresso,which of these dessert names literally means “pick-me-up” in Italian?	TIRAMISU
1333	Because it contains liquid, passengers may not carry which of these New York souvenirs on board an airplane?	MANHATTAN SNOW GLOBE
1334	Because it doesn’t contain yeast,which of these breads is considered a quick bread?	CORN BREAD
1335	Because it featured many of its core “members,” which of these ’80s movies is considered a “Brat Pack” film?	ST.ELMO’S FIRE
1336	Because it features a dead character’s secrets,the TV drama “Pretty Little Liars” has been called a teen version of what?	DESPERATE HOUSEWIVES
1337	Because it focuses on the relationship of its two male stars, which of these films is called a “bromance”?	I LOVE YOU MAN
1338	Because it has the lowest boiling point of any substance,what element is used as a cooling agent in MRIs?	HELIUM
1339	Because it is a fictionalized account of the author’s real life, which of these novels is considered a “roman a clef”?	THE DEVIL WEARS PRADA
1340	Because it is a fictionalized account of the author’s real life,which of these novels is considered a “roman a la clef”?	THE DEVIL WEARS PRADA
1341	Because it is considered disrespectful to the monarchy,what movie musical is reportedly banned in Thailand?	THE KING AND I
1342	Because it is easy to raise and has a mild taste, what extremely popular fish is known as “aquatic chicken”?	TILAPIA
1343	Because it is often called “Roquette” in French, which of these gourmet salad greens is commonly referred to as “rocket”?	ARUGULA
1344	Because it is primarily spread through saliva,what illness is popularly known as the “kissing disease”?	MONONUCLEOSIS
1345	Because it is produced by the body,which of these vitamins is classified as a hormone?	VITAMIN D
1346	Because it is released in stressful situations, which of these is known as the “fight or flight” hormone?	ADRENALINE
1347	Because it is similar in texture,which of these fish is often called the “poor man’s lobster”?	MONKFISH
1348	Because it is sold in multiples of 64, computer RAM, or memory, is unavailable in which of these sizes?	878 MB
1349	Because it is thought to be easier than other sciences,what college course is nicknamed “Rocks for Jocks?”	GEOLOGY
1350	Because it lacks a developed sense of smell,the great horned owl is one of the biggest predators of what animal?	SKUNK
1351	Because it means “gentlemen,” which of these words often marks the way to men’s restrooms in Spanish-speaking places?	CABALLEROS
1352	Because it possesses both male and female reproductive organs, which animal is classified as a hermaphrodite?	EARTHWORM
1353	Because it resembles the exercise equipment, tongue-piercing jewelry is often referred to as a what?	BARBELL
1354	Because it was built for him,the prominent White House balcony overlooking the South Lawn is known as the what?	TRUMAN BALCONY
1355	Because it was invented by Eugene Rimmell in the 1800s, “rimmel” is used in France to refer to what cosmetic?	MASCARA
1356	Because it was the highest point on the Ohio & Erie Canal,what city’s name derives from the Greek word for “high place”?	AKRON
1357	Because its members are all related to a man named Leon, a rock band formed in 2000 has what name	KINGS OF LEON
1358	Because its presidential namesake had no middle initial, a Utah grade school goofed by giving itself what name?	JAMES A. MADISON
1359	Because its spelling was not firmly established at the time, what word is misspelled on the Liberty Bell?	PENNSYLVANIA
1360	Because it’s a synonym, which of these French words could be considered a nickname for the word “nickname”?	SOBRIQUET
1361	Because it’s not evergreen,which of the following species would make a terrible Christmas tree?	SILVER MAPLE
1362	Because it’s spicy and made with tomato juice,the Michelada has been called a Mexican version of what classic drink?	BLOODY MARY
1363	Because it’s synthetic,which of these fabrics can be,and often is,made out of recycled plastic water bottles?	POLAR FLEECE
1364	Because it’s trademarked,which of these coffee drinks is only made by Starbucks?	FRAPPUCCINO
1365	Because of a novel by Vladimir Nabokov, what name has come to mean “a seductive young girl”?	LOLITA
1366	Because of how they are paid, what Hollywood professionals are known as “tenpercenters?”	TALENT AGENTS
1367	Because of its abundance of bright lights, what New York city landmark is called “The Great White Way”?	BROADWAY
1368	Because of its population, which state elects two senators but only one representative to Congress?	DELAWARE
4996	Who is Reginald Dwight?	ELTON JOHN
1369	Because of its shape, which of these comfy chairs is sometimes referred to as a “dish chair”?	PAPASAN CHAIR
1370	Because of the motions involved,what activity is thought to help children correct a pigeon-toed gait?	BALLET
1371	Because of the way it looks, sneezing into the crook of your arm is commonly called a what?	DRACULA SNEEZE
1372	Because of their unique shape, TiVo remote controls are often playfully referred to as what?	PEANUTS
1373	Because people aren’t using it much, what term was scrapped from the New Oxford American Dictionary in 2005?	INFORMATION SUPERHIGHWAY
1374	Because she held over 40 different patents,inventor Beulah Louise Henry was popularly known by what nickname?	LADY EDISON
1375	Because the American “r” sound is rarely pronounced, in what country is Ronald McDonald called “Donald McDonald?”	JAPAN
1376	Because the country is at such high altitude,Tibet is known by what “homey” nickname?	THE ROOF OF THE WORLD
1377	Because the government requires it,most enriched grain products in the U.S. are fortified with what?	FOLIC ACID
1378	Because the process renders it undesirable,which of these vegetables is not typically sold in cans?	BROCCOLI
1379	Because the Roman calender began on March 1st,what month’s name comes from the Latin for “tenth”?	DECEMBER
1380	Because the storms were so destructive,all but which of these hurricane names have been retired?	IDA
1381	Because they contain nitrogen,what beer’s bubbles appear to float downward when poured into a glass?	GUINNESS DRAUGHT
1382	Because they give off a fluorescent glow when lit with them,black lights are used to detect which of these pests?	SCORPIONS
1383	Because they lack extra strokes on their letters, fonts like “Arial” and “Helvetica” are called “sans” what?	SERIF
1384	Because ultra-violet rays prompt the body to produce it, Vitamin D is often referred to by what nickname?	SUNSHINE VITAMIN
1385	Because we typically eat the fleshy part of its root, which of these foods is considered a root vegetable?	TURNIP
1386	Becoming popular in the U.S.,the Greek brand FAGE is a “strained” version of what dairy product?	YOGURT
1387	Before Barack Obama,who was the last sitting U.S. senator to become president?	JOHN F. KENNEDY
1388	Before Barbara Bush, what First Lady’s husband and son both served as U.S. president?	ABIGAIL ADAMS
1389	Before becoming a famous actor,who won a televised contest naming him “America’s Toughest Bouncer”?	MR. T
1390	Before becoming a successful film director, Rob Reiner played Michael Stivic on what classic sitcom?	ALL IN THE FAMILY
1391	Before becoming a supermodel,which of these women attended the Univeristy of Nairobi?	IMAN
1392	Before becoming a TV mom, what was Kate Gosselin’s profession?	REGISTERED NURSE
1393	Before becoming vice president, Joe Biden served as what state’s U.S. senator for 36 years?	DELAWARE
1394	Before beginning her solo career, Aimee Mann was the lead singer of what 1980s pop band?	TIL TUESDAY
1395	Before creating his successful TV series “The West Wing,” Aaron Sorkin wrote what famous line in film?	YOU CAN’T HANDLE THE TRUTH!
1396	Before he hit it big, what singer composed the famous ad jingle, “I’m stuck on BandAid”?	BARRY MANILOW
1397	Before he went solo,British singer Morrissey was frontman for which of these ’80s bands?	THE SMITHS
1398	Before it was prescribed to help regrow hair,the drug minoxidil was developed to treat what condition?	HYPERTENSION
1399	Before its country suffered a 15-year civil war, what city was known as “The Paris of the Middle East”?	BEIRUT
1400	Before LL Cool J did the honors in 2012,which of these awards shows had gone without a host for 7 years?	GRAMMYS
1401	Before Martin Scorsese offered him a part in “Raging Bull,” what actor was working at an Italian restaurant in the Bronx?	JOE PESCI
1402	Before playing a cheerleading coach on “Glee,” Jane Lynch played the manager of Smart Tech in what comedy film?	THE 40-YEAR OLD VIRGIN
1403	Before providing her voice on “Family Guy”,actress Mila Kunis played Jackie Burkhart on what TV series?	THAT ’70S SHOW
1404	Before starring in ABC’s “Modern Family,” Ed O’Neill was best known for playing what classic TV dad?	AL BUNDY
1405	Before starring in the 1999 film,who was dubbed a real-life “runaway bride” after leaving her fiance,Kiefer Sutherland?	JULIA ROBERTS
1406	Before starring in the Adam Sandler comedy “Just Go With It,” Brooklyn Decker was most famous for being a what?	SWIMSUIT MODEL
1407	Before starring in “Lost,” Matthew Fox played a key role in what ’90s teen drama?	PARTY OF FIVE
1408	Before starring in “Scrubs,”Sarah Chalke was dubbed “The other Becky” for her fill-in role on what TV show?	ROSEANNE
1409	Before starting a successful shoe company, Klaus Maertens held what position in the German army?	DOCTOR
1410	Before switching career paths,what prominent American studied clarinet performance at Juilliard?	ALAN GREENSPAN
1411	Before the 24th Amendment was passed, many U.S. states required people to pay a poll tax in order to do what?	VOTE IN ELECTIONS
1412	Before the names “Draper” and “Pryce” were added,the name of the ad agency featured on “Mad Men” was what?	STERLING COOPER
1413	Before they hit it big, the Beatles replaced band member Pete Best with whom?	RINGO STARR
1414	Before “Sex and the City,” “Sex and the Single Girl” was a 1962 groundbreaking advice book by whom?	HELEN GURLEY BROWN
1415	Bel Air,Brentwood,and Westwood are neighborhoods in what metropolitan area?	LOS ANGELES
1416	Believed by many to help heart health,resveratol is an organic compound found in which of these foods?	RED WINE
1417	Believed by the ancient Greeks to be a sacred or holy bone,the sacrum is located in what part of the human body?	PELVIS
1418	Believed to be caused by jets,rare cloud formations that often drop snow share their name with what office tool?	HOLE-PUNCH
1419	Believed to bring prosperity,Chinese restaurants often display a statue of what animal with one paw raised?	CAT
1420	Beloved by millions of women, Spanx is a popular brand of which of the following?	UNDERGARMENTS
1421	Benjamin Franklin once keenly observed that what two items “stink after three days”?	FISH AND VISITORS
1422	Benjamin Franklin once quipped that what government post should be addressed as “Your Superfluous Excellency”?	VICE PRESIDENT
1423	Besides elephants and rhinoceroses,what other animals are considered pachyderms?	HIPPOPOTAMUSES
1424	Besides Meredith Vieira,who is the only woman to have won an Emmy for hosting a game show?	BETTY WHITE
1425	Besides sporting his trademark smoking jacket and pipe, what media mogul is often seen wearing a sailor’s hat?	HUGH HEFNER
1426	Besides sporting his trademark smoking jacket and pipe, what media mogul is often seen wearing a sailor’s hat?	HUGH HEFNER
1427	Besides “Righteous Kill,”what other film features scenes between acting greats Al Pacino and Robert De Niro?	HEAT
1428	Best known for her political website “The Huffington Post,” Arianna Huffington hails from what country?	GREECE
1429	Best known for their hazelnut-filled Baci chocolates, Perugina is a confectionery based in what country?	ITALY
1430	Betcha can’t eat just one” is a classic slogan for what food brand?	LAYS
1431	Better known as the “Barefoot Contessa,” author and TV host Ina Garten is a guru in what field?	COOKING
1432	Between 1100 and 1547, there were eight kings of England who had what first name?	HENRY
1433	Between 2006 and 2009,actor Justin Long appeared in a series of TV ads,speaking what memorable line?	HELLO, I’M A MAC. CORRECT
1434	Between the ages of 6 and 10,President Obama resided primarily in what country?	INDONESIA
1435	Beverly Cleary is the author of a series of children’s books about the Quimby sisters,Beezus and whom?	RAMONA
1436	Bigger than all of the Earth’s land area combined,which of the world’s oceans is the largest?	PACIFIC
1437	Bill Clinton once said that climbing Kilimanjaro and running a marathon were two items on his what?	BUCKET LIST
1438	Biological Sciences is one of the four sections that make up which of these standardized tests?	MCAT
1439	Blue sky laws are state regulations designed to protect people from what?	SECURITIES FRAUD
1440	Boasting more than 70% of the state’s people,which of the Hawaiian Islands is the most populated?	OAHU
1441	Boasting of its environmental consciousness,what retailer states that the two colors in its logo blend to make green?	IKEA
1442	Body mass index is a common measure of obesity based on weight and what other factor?	HEIGHT
1443	Born in 1905, Eugene Fodor was a pioneer of what book genre?	TRAVEL GUIDES
1444	Born in 1992,Frances Bean Cobain is the daughter of two musicians who were lead singers in what bands?	NIRVANA AND HOLE
1445	Born in England, musician Saul Hudson is better known by what stage name?	SLASH
1446	Born in New York,the legendary outlaw William H. Bonney,Jr. was better known as “Billy the” what?	KID
1447	Bosco chocolate syrup was used to simulate blood in which of these classic horror films?	PSYCHO
1448	Boston’s Ted Williams tunnel is named in honor of a legendary player in what sport?	BASEBALL
1449	Both Katharine Ross and Nicole Kidman have played Joanna Eberhart, the main character from what novel?	THE STEPFORD WIVES
1450	Both “gam” and “pod” are terms used to describe what group of animals?	WHALES
1451	Brackets are best described as “square-cornered” versions of what other punctuation marks?	PARENTHESES
1452	Breathalyzer test results are often introduced as evidence in cases involving which of these crimes?	DRIVING UNDER THE INFLUENCE
1453	Brewer Anheuser-Busch is the nation’s largest purchaser of which of these crops?	RICE
1454	Bridal veils are typically made from what sheer material?	
1455	British General James Brudenell, the namesake of a popular style of sweater, held which of these titles?	EARL OF CARDIGAN
1456	Bruce Springsteen’s album “The Ghost of Tom Joad” references the main character of what classic novel?	THE GRAPES OF WRATH
1457	Bubbles collapsing in synovial fluid is what creates the sound that occurs when you do what?	CRACK YOUR KNUCKLES
1458	Buddhist scholar Robert Thurman named his daughter Uma,which means “bright one” in what language?	SANSKRIT
1459	Built to mark the 2,500th anniversary of the Persian Empire,the Azadi Tower is a landmark in what capital city?	TEHRAN
1460	Buzz Aldrin served as the model for which of these popular award statuettes?	MTV VIDEO MUSIC AWARD
1461	By definition, a chiropodist is a specialist who treats disorders of the what?	FEET
1462	By definition, a cooper is a person who makes or repairs which of the following?	BARRELS
1463	By definition, a corporation that files for Chapter 11 is doing what?	DECLARING BANKRUPTCY
1464	By definition, a defenestrated object has been what?	THROWN OUT A WINDOW
1465	By definition, a maillot is what type of women’s clothing?	ONE-PIECE SWIMSUIT
1466	By definition, a non-com is an enlisted member of the U.S. armed forces who is what?	NONCOMISSIONED
1467	By definition, a parochial school is run by which of the following?	RELIGIOUS GROUP
1468	By definition, a person whose mouth is “agape”has a mouth that is what?	WIDE OPEN
1469	By definition, a plutocracy is a government controlled by whom?	THE WEALTHY
1470	By definition, a pseudologue does which of these things?	TELLS LIES
1471	By definition, a right triangle must contain one angle that has what precise measurement?	90 DEGREES
1472	By definition, a snickerdoodle is a what?	COOKIE
1473	By definition, a “doula” provides assistance during which of these events?	CHILDBIRTH
1474	By definition, a “supermax” is an extremely high security what?	PRISON
1475	By definition, an apivorous bird eats primarily what?	BEES
1476	By definition, an analgesic is a type of medication intended primarily to do what?	RELIEVE PAIN
1477	By definition, an estuary is a place where what two natural formations meet?	RIVER AND SEA
1478	By definition, bariatrics is a branch of medicine concerned with the treatment of what condition?	OBESITY
1479	By definition, food that is served flambeed is served how?	LIT ON FIRE
1480	By definition, gestational diabetes can only occur to what group of people?	PREGNANT WOMEN
1481	By definition, someone who is “skirling” is playing what type of musical instrument?	BAGPIPES
1482	By definition, what does a game-keeper keep?	ANIMALS
1483	By definition, what does a gamekeeper keep?	ANIMALS
1484	By definition, what shape is a gable roof?	TRIANGULAR
1485	By definition, where does an abyssopalegic animal live?	AT THE BOTTOM OF THE SEA
1486	By definition, which of these geometric shapes is a parallelogram?	RECTANGLE
1487	By definition, which of these popular craft hobbies involves the use of a hooked needle?	CROCHET
1488	By definition, which of these types of triangles is always acute?	EQUILATERAL TRIANGLE
1489	By definition, which of these vessels is a canoe?	KAYAK
1490	By definition,a defenestrated object has been what?	THROWN OUT A WINDOW
1491	By definition,a diurnal event occurs how often?	EVERY DAY
1492	By definition,a doctor specializing in geriatrics primarily treats problems relating to what?	AGING
1493	By definition,a gullywasher is a sudden,strong what?	RAINSTORM
1494	By definition,a holographic will is which of the following?	HANDWRITTEN
1495	By definition,a kibbutz is a communal farm or settlement in what country?	ISRAEL
1496	By definition,a Mexican dish served “con queso” comes with what?	CHEESE
1497	By definition,a pith helmet is a lightweight hat worn to protect the head from what?	SUN AND HEAT
1498	By definition,a quinquagenarian is a person who falls into what age range?	FIFTIES
1499	By definition,a semicircle is what portion of a circle?	ONE-HALF
1500	By definition,a taxiway is a paved strip used by what type of vehicle?	AIRPLANE
1501	By definition,a “roughneck” is a laborer who works where?	OIL RIG
1502	By definition,a “towhead” has what distinguishing feature?	LIGHT-BLOND HAIR
1503	By definition,Angora wool comes from one of two animals:the Angora goat or the Angora what?	RABBIT
1504	By definition,crostini is an Italian appetizer that requires what main ingredient?	TOASTED BREAD
1505	By definition,polyandry occurs when a woman has more than one what?	HUSBAND
1506	By definition,the speed at which music is performed is known as what?	TEMPO
1507	By definition,what kind of flower is a fleur-de-lis?	IRIS
1508	By definition,where does an abyssopelagic animal live?	AT THE BOTTOM OF THE SEA
1509	By definition,which of these classic French recipes contains nuts?	TROUT AMANDINE
1510	By defitnition, a pitch helmet is a lightweight hat worn to protect the hat from what?	SUN AND HEAT
1511	By far the rarest, only 1 percent of the U.S. population has what blood type?	AB NEGATIVE
1512	By tradition,Navy SEAL candidates who give up during training do what to announce they are quitting?	RING A BELL
1513	Cafe Central is one of many historic coffeehouses in what European city,known for its coffeehouse culture?	VIENNA
1514	Calling it “historical fiction” in 2011 the History Channel refused to air a miniseries about what political family?	THE KENNEDYS
1515	Calling itself “America’s third largest party,” what group promotes “Minimum Government, Maximum Freedom”?	LIBERTARIAN PARTY
1516	Cameras that allow users to see exactly what picture will be taken are often labeled “SLR,” or “single lens” what?	REFLEX
1517	Candy made from fruits and nuts bound in starch and dusted with sugar is known as what kind of “delight”?	TURKISH
1518	Canned by Hormel’s competitor Armour,Treet is a rival version of what branded food?	SPAM
1519	Capable of eroding tooth enamel, which of these fruits is the most acidic?	LEMON
1520	Capable of storing up to two hundred gallons of water,a saguaro is a type of what?	CACTUS
1521	Cape Agulhas, and not the nearby Cape of Good Hope, is the southernmost point of what continent?	AFRICA
1522	Cape Wrangell is located at what extreme point in the U.S.?	WESTERNMOST
1523	Capri pants are named for a picturesque resort island located off the coast of what country?	ITALY
1524	Capsaicin is the chemical compound responsible for which of the following?	HEAT OF PEPPERS
1525	Captain Edward John Smith famously piloted what historic craft?	RMS TITANIC
1526	Captured in an iconic photograph, the WWII flag-raising at Iwo Jima took place atop what mountain?	MOUNT SURIBACHI
1527	Carl Bernstein and Bob Woodward’s book “All the President’s Men” details what event in U.S. history?	WATERGATE SCANDAL
1528	Carl Bernstein and Bob Woodward’s book “All the President’s Men” details what event in U.S. history?	WATERGATE SCANDAL
1529	Carrots are said to be good for the eyes because they enable the body to create what nutrient?	VITAMIN A
1530	Carson Daly,the host of the NBC singing contest “The Voice,” was also the host of what MTV music show?	TOTAL REQUEST LIVE
1531	Cartoon character SpongeBob SquarePants has what distinctive physical characteristic?	BUCKTEETH
1532	Castanets are musical instruments traditionally played while attached to what part of the body?	THUMB
1533	Caught by the FBI in 2011, Boston mob boss James “Whitey” Bulger inspired a character in what gangster movie?	THE DEPARTED
1534	Caused by repeatedly looking down,a recent phenomenon of pronounced neck creases has been termed what?	BLACKBERRY NECK
1535	Causing excessive body hair growth,the medical condition hypertrichosis is slangily known as what?	WEREWOLF SYNDROME
1536	Cavendish is the most popular supermarket variety of what fruit?	BANANA
1537	Cavendish is the most popular supermarket variety of what fruit?	BANANA
1538	CC Bloom’s,a hotel in the tropics of Thailand,is named after a character from what 1980s movie?	BEACHES
1539	Celebrating its 60th anniversary in 2010, Junior’s is a New-York based restaurant famous for its what?	CHEESECAKE
1540	Cerulean is a shade of what color?	BLUE
1541	Challenging players to win control of an island,a wildly popular board game is known as “The” what “of Catan”?	SETTLERS
1542	Characterized as conformist and workaholic,the term “salaryman” refers to a white-collar employee in what country?	JAPAN
1543	Characterized by the hair-like strands covering its legs,Kiwa hirsuta is a crustacean more commonly known as what?	YETI CRAB
1544	Charles de Gaulle once quipped about how difficult it is to govern a country with 246 different what?	VARIETIES OF CHEESE
1545	Charlie Sheen and Martin Sheen have both starred in critically-acclaimed films set during what U.S. conflict?	VIETNAM WAR
1546	Chartreuse is a yellowish-green color that gets its name from a similiarly-colored type of what?	LIQUER
1547	Chef Paula Deen has caught flack for her recipe “Lady’s Brunch Burger,” a burger that replaces the bun with two what?	GLAZED DOUGHNUTS
1548	Chevre, Montrachet, and Bucheron are all cheeses primarily made from the milk of what animal?	GOAT
1549	Chiefly used in the U.K.,the term “serviette” refers to what everyday household item?	NAPKIN
1550	Children put Shrinky Dinks into what in order to make them shrink?	OVEN
1551	Christian radio personality Harold Camping was left “a little bewildered” when what day in 2011 passed Rapture-free?	MAY 21ST
1552	Christina Aguilera fumbled the lyrics of the national anthem at Super Bowl XLV when she belted out what phrase?	WHAT SO PROUDLY WE WATCHED
1553	Circus Peanuts,a classic marshmallow candy,are traditionally what color?	ORANGE
1554	Citing blood pressure risks, in 2010 the CDC claimed 90% of Americans were eating too much what?	SALT
1555	Claiming it is her lucky number,what young singer writes “13” on the back of her hand before shows?	TAYLOR SWIFT
1556	Claire Danes won an Emmy for playing Temple Grandin, a real-life autism advocate and expert in what field?	ANIMAL BEHAVIOR
1557	Classic kids’ stories involving Goldilocks,billy goats and little pigs all feature what word in their titles?	THREE
1558	Clocking in at over 8 minutes,what psychedelic Beatles track is by far the longest the group has ever recorded?	REVOLUTION 9
1559	Closely related to a wallaby and another marsupial, a wallaroo is native to what continent?	AUSTRALIA
1560	Cockapoos are hybrid dogs created by breeding cocker spaniels with what other dogs?	POODLES
1561	Coined by George Bernard Shaw,the term “bardolatry” refers to the excessive worship of what famous writer?	WILLIAM SHAKESPEARE
1562	Coined in “Gulliver’s Travels,” what insult originally referred to a race of human savages who were ruled by horses?	YAHOO
1563	College students interested in science commonly take a class known as “gross” what?	ANATOMY
1564	College students often use the term “Underwater basket weaving” to refer to classes that are what?	EASY
1565	Coloma, California marks what important event in U.S. history?	THE GOLD RUSH
1566	Colorado is nicknamed The Centennial State because it joined the Union in what year?	1876
1567	Colorado’s Tour de Cure,which raises money for diabetes research,features what type of athletic event?	BICYCLE RACE
1568	Comedian Dan Whitney is better known by what stage name?	LARRY THE CABLE GUY
1569	Comedians riffed about talking cars and lifeguards at a 2010 Comedy Central roast skewering what actor?	DAVID HASSELHOFF
1570	Comic book hero Green Lantern uses what mystical accessory to unleash his otherworldly powers?	RING
1571	Comic strip character Charlie Brown favors what well-known expression of dismay?	GOOD GRIEF!
1572	Commonly associated with Ireland,a brogue is a type of what?	ACCENT
1573	Commonly known as Prince Harry,Prince William’s younger brother has what actual first name?	HENRY
1574	Commonly known by his nickname “Teddy,” U.S. Senator Ted Kennedy had what given first name?	EDWARD
1575	Commonly used as seating in restaurants,banquettes are what type of furniture?	PADDED BENCHES
1576	Commonly used in Central American cuisine, pernil is meat that comes from what animal?	PIG
1577	Commonly used in the shower, a loofah is the fibrous interior of which of the following?	TROPICAL GOURD
1578	Composed by a Mexican songwriter in 1941,the classic song “Besame Mucho” translates to what in English?	KISS ME A LOT
1579	Composed by Johann Strauss, one of the world’s most famous waltzes is called “Blue” what?	DANUBE
1580	Concerned with the protection of endangered elephants,eBay expressly forbids the sale of objects made of what?	IVORY
1581	ConocoPhillips belongs to a group of multinational corporations often referrred to as “Big” what?	OIL
1582	Considered a stunning architectural achievement,Spain’s Guggenheim Museum Bilbao was designed by whom?	FRANK GEHRY
1583	Considered an “easy A,” what college-level course is often jokingly referred to as “Clapping for Credit”?	MUSIC APPRECIATION
1751	Famed Spanish shoe designer Manuel Blahnik is better known by what nickname?	MANOLO
1584	Considered by many to be the best motion picture ever made,Orson Welles was just how old when he made “Citizen Kane”?	25 *CORRECT*
1585	Considered extremely “contagious,” what term is often used by children to essentially mean “germs”?	COOTIES
1586	Considered good for the heart, tannis are compounds found primarily in which of these beverages?	RED WINE
1587	Considered one of the world’s greatest soccer players, Cristiano Ronaldo hails from what country?	PORTUGAL
1588	Considered the most influential in his field,Lester Bangs was best known for what kind of journalism?	ROCK MUSIC
1589	Considered the opposite of sexy,women’s underwear that comes up to the waist is slangily known as what?	GRANNY PANTIES
3445	What classic cartoon character has a romantic rival named Bluto?	POPEYE
1590	Considered “too fat” for a single seat, what film director was bumped from a Southwest Airlines flight in 2010?	KEVIN SMITH
1591	Consisting of food served in a specialized box, “bento” is a popular type of meal native to what country?	JAPAN
1592	Containing a deadly toxin, the carefully-prepared Japanese delicacy “fugu” is what type of animal?	PUFFERFISH
1593	Contestants for the Scripps National Spelling Bee may not have passed beyond what grade?	EIGHTH
1594	Contestants on the reality show “Scream Queens” compete for a role in a movie that is part of what film franchise?	SAW
1595	Contestants on the singoff in 2010, the Whiffenpoofs are an a capella group from what university?	YALE
1596	Coordinated Universal Time,the worldwide standard for timekeeping,is directly based on the behavior of what?	ATOMS
1597	Coral reefs form due to a gradual accumulation of which of the following?	ANIMAL SKELETONS
1598	Courting worldwide controversy, in 2010 what country banned wearing full-face Islamic veils in public?	FRANCE
1599	Covered by The Fugees in 1996,”Killing Me Softly” was first made famous by what singer in 1973?	ROBERTA FLACK
1600	Covering about 3.5 million square miles,which of these deserts is the largest?	SAHARA
1601	Covering almost the entire body and marketed toward Muslim women,the “Burqini” is a modest type of what clothing?	BATHING SUIT
1602	Cowboy Sketch and “A View to Kill” are two listings in a book titled what?	CHRISTOPHER WALKEN A TO Z
1603	Craftsmen known as “shapers” and “glassers” are involved in the production of what kind of sports equipment?	SURFBOARDS
1604	Craigslist is a popular online message board that was created in 1995 to serve what U.S. city?	SAN FRANCISCO
1605	Created by a college professor, what is the CORRECT order when typing the original emoticon for a smiley face?	COLON, DASH, PARENTHESES
1606	Created by J.J. Abrahms,the 2012 crime drama “Alcatraz” is set in and around what U.S. city?	SAN FRANCISCO
1607	Created in the Chesapeake Bay area,Old Bay seasoning was meant to go with what type of food?	SEAFOOD
1608	Creator of a famous sportswear brand,Rene Lacoste was a French champion in the 1920s in what sport?	TENNIS
1609	Crucial for maintaining balance,the vestibular apparatus is located where in the human body?	INNER EAR
1610	Culinarily speaking,which of these nursery rhyme characters had the easiest access to mutton?	LITTLE BO PEEP
1611	Curds and whey,Miss Muffet’s snacks of choice,are created during what culinary process?	MAKING CHEESE
1612	Curves is a popular fitness club chain aimed at what specific demographic?	WOMEN
1613	Dampers,pieces of felt used to mute the strings,are often inside which of these musical instruments?	PIANO
1614	Daniel Handler writes the kids’ book series “A Series of Unfortunate Events” under what pen name?	LEMONY SNICKET
1615	Daredevil motorcyclist Evel Knievel once earned a Guinness World Record for doing what 433 times?	BREAKING A BONE
1616	Darwin’s theory of evolution was supported by observing which of these birds on the Galapagos Islands?	FINCHES
1617	Dashiell Hammett’s Sam Spade mysteries are set in the seamy underside of what U.S. city?	SAN FRANCISCO
1618	Dave Berry once wrote that there was no way to kill what plant “that does not involve nuclear weapons”?	CRABGRASS
1619	David Evans,the lead guitarist for the rock band U2,performs under what stage name?	THE EDGE
1620	David Letterman and Madonna are two celebrities known for having a diastema, the medical term for a what?	GAP BETWEEN TEETH
1621	Deadly Nadders, Hideous Zipplebacks and Gronckles are feared creatures in what 2010 movie?	HOW TO TRAIN YOUR DRAGON
1622	Debuting in 1960,what classic animated series was the first to run in primetime?	THE FLINTSTONES
1623	Debuting in 2008, “The Rachel Maddow Show” is a popular political talk show that airs on what network?	MSNBC
1624	Debuting in 2010,which As-Seen-On-TV product promises to make women’s outfits”office appropriate?”	CAMI SECRET
1625	Decades before WikiLeaks,the leaked “Pentagon Papers” were classified documents about what U.S. event?	VIETNAM WAR
1626	Dee Brown’s bestselling history of the American West is titled “Bury My Heart” where?	AT WOUNDED KNEE
1627	Demonstrating the popularity of the internet,the CBS sitcom “$#*!” My Dad Says” actually began as a what?	TWITTER ACCOUNT
1628	Dendrochronology is the scientific method of estimating the date of past events or artifacts by analyzing what?	TREE RINGS
1629	Deoxiribose, a main component of DNA, is a type of what?	SUGAR
1630	Depicted in a 2002 Scorsese film, Five Points was a notoriously dangerous slum located in what U.S. city?	NEW YORK
1631	Depicting two hands sketching each other, “Drawing Hands” is a 1948 lithograph by what famous artist?	M.C. ESCHER
1632	Derived from a Chinese expression,a person who is “kowtowing” is doing what?	KNEELING AND BOWING
1633	Derived from a passage in Balzac,a popular saying states “behind every great fortune is a great” what?	CRIME
1634	Derived from a Spanish term for a newborn animal, a “cria” is used to refer to a baby what?	LLAMA
1635	Derived from its Greek name, areology is the scientific study of what planet?	MARS
1636	Derived from the name of an American Indian tribe the famous prison in Ossining,New York is called what?	SING SING
1637	Derived from the practice of drinking lime juice to prevent scurvy,”limey” is a slang term for a person from where?	GREAT BRITAIN
1638	Deriving its name from the French word for “melt,” fondant is a creamy mixture mostly used as what?	CAKE ICING
1639	Described as a 370-year old Forks, WA resident, who ranked second on Forbes’ 2011 list of wealthiest fictional characters?	CARLISE CULLEN
1640	Describing a person as “sinistral” is a fancy way of saying they are what?	LEFT-HANDED
1641	Design guru Jonathan Ive is responsible for the look of which of these iconic products?	IPOD
1642	Designed by Tiffany & Co.,the Commissioner’s Trophy is awarded to the winners of what championship?	WORLD SERIES
1643	Designed in 1958 to promote nuclear disarmament,the “peace symbol” is a circle divided into how many pieces?	FOUR *CORRECT*
1644	Designed to keep criminals from profiting from their crimes,a “Son of Sam” law is named after what infamous person?	DAVID BERKOWITZ
1645	Despite being a surprisingly good golfer,President Taft weighed roughly how much when he left office?	340 POUNDS
1646	Despite being only 10 sentences long, what children’s book was adapted into a 94-minute film in 2009?	WHERE THE WILD THINGS ARE
1647	Despite being “the epicenter of prep style,” what city did GQ dub “America’s Worst-Dressed” in 2011?	BOSTON
1648	Despite having the word “fly” in their name, fireflies are actually what kind of insect?	BEETLE
1649	Despite how its spelled,what state’s capital name is properly pronounced “PEER”?	SOUTH DAKOTA
1650	Despite its international sounding name, which of these foods was actually invented in the U.S?	GERMAN CHOCOLATE CAKE
1651	Despite its name, which of the following is an actual type of meat?	SWEETBREAD
1652	Despite its name,the popular piece of meat for barbecue known as “pork butt” comes from what part of the pig?	SHOULDER
1653	Despite publishing under a male pseudonym,which of these classic authors was actually a woman?	GEORGE ELIOT
1654	Despite serving the shortest presidency, who delivered the longest inaugural address, nearly 2 hours long?	WILLIAM HENRY HARRISON
1655	Despite spanning nearly four million square miles, what country has had only one time zone since 1949?	CHINA
1656	Developed by an elementary school teacher, Airborne is a popular herbal remedy that aims to do what?	FIGHT OFF COLDS
1657	Developed by engineer James Watt,what unit of measure is equivalent to lifting 33,000 “foot pounds” per minute?	HORSEPOWER
1658	Developed by the Greeks,the geocentric theory of the universe states that what lies at its center?	EARTH
1659	DHMO.org is a tongue-in-cheek website that exposes the dangers of dihydrogen monoxide,better known as what?	WATER
1660	Diets that incorporate the eating habits of Greece,Spain and Italy are fittingly referred to as what?	MEDITERRANEAN
1661	Directed by Jack Nicholson,”The Two Jakes” is the critically-panned sequel to what acclaimed film?	CHINATOWN
1662	Discovered 2.2 miles under the ground,the deepest living animal was given what appropriate nickname?	DEVIL WORM
1663	Displayed on all their farming equipment, what are the trademark colors of the John Deere brand?	GREEN AND YELLOW
1664	Doctors advise pregnant women to consume sufficient amounts of Vitamin B9, known as what?	FOLIC ACID
1665	Doctors listen for “Korotkoff sounds” when they check what?	BLOOD PRESSURE
1666	Dolittle,Strangelove and Zhivago are surnames of classic movie characters who share what distinguished title?	DOCTOR
1667	Donning a sizeable gray-ribboned hat, who performed “My Country Tis of Thee” at Barack Obama’s inaugeration?	ARETHA FRANKLIN
1668	Doppler is the team mascot of what WNBA franchise?	SEATTLE STORM
1669	Doppler is the team mascot of what WNBA franchise?	SEATTLE STORM
1670	Drawing 3 million visitors over 24 days,what U.S. state reportedly hosts the most attended state fair in the country?	TEXAS
1671	Dresses whose hemlines are short in front but long in back are known by what hair-inspired term?	MULLET DRESS
1672	Drip irrigation systems perform roughly the same function as which of these gardening implements?	LAWN SPRINKLER
1673	Drivers traversing the Golden Gate Bridge are afforded picturesque views of what famous island?	ALCATRAZ
1674	Dropping from a size 16 down to a size 6, what actress was spokesperson for Weight Watchers in 2010?	JENNIFER HUDSON
1675	Drugs known as “beta blockers” are commonly prescribed for which of these conditions?	HYPERTENSION
1676	Dubbed “The Angriest Man in the World,” viral video star Jack Rebney is better known as what?	WINNEBAGO MAN
1677	Due in part to the city of Hershey,what U.S. state is the country’s leading producer of chocolate?	PENNSYLVANIA
1678	Due to his line of work, what notable American is often referred to by the press as “The Reverend Al?”	AL SHARPTON
1679	Due to his real-life first initial, the actor known for playing Mini-Me in the Austin Powers films has what nickname?	MINI-V
1680	Due to its deep and powerful sound,what brass instrument is traditionally the only one of its kind in an orchestra?	TUBA
1681	Due to its history, New York’s Ellis Island is home to a museum focusing on what subject?	IMMIGRATION
1682	Due to its immense popularity with the Chinese,what U.S. state was the first to open its own tourism office in China?	NEVADA
1683	Due to its low rate of obesity,what state is consistently labeled the “skinniest” in the U.S.?	COLORADO
1684	Due to its political content, which of these comics was often published in newspapers’ op-ed sections?	THE BLOOMDOONS
1685	Due to its presumed power over backsliding vegetarians,which of the following has been labeled a “Gateway Meat”?	BACON
1686	Due to its rich history,what area of the world is popularly known as the “cradle of civilization”?	MESOPOTAMIA
1687	Due to its strict obscenity laws, which of these countries once published a version of “Playboy” without any nudity?	INDONESIA
1688	Due to its unique chemical qualities, which of these foods can remain edible for centuries if sealed from moisture?	HONEY
1689	Due to licensing costs, what singer’s version of “Love and Marriage” is not on “Married…With Children” DVDs?	FRANK SINATRA
1690	Due to shifts in the Mississippi River,in 2010 Minnesota had to “return” two islands to what neighboring state?	WISCONSIN
1691	Due to Spanish naming conventions,which of these artists was born with a name that was 20 words long?	PABLO PICASSO
1692	Due to the appearance of the numbers, what poker hand is slangily known as “snowmen”?	PAIR OF EIGHTS
1693	Due to the popularity of Harry Potter, what word was added to the Oxford English dictionary in 2003?	Muggle
1694	Due to the way the player’s legs move,the difficult soccer maneuver known as a “scissors kick” is also called a what?	BICYCLE KICK
1695	Due to their decorative trim, what type of automobiles popularized the nickname “woodies” in the ’60s?	STATION WAGONS
1696	During deep sleep, a healthy adult’s brain emits which of these kind of waves?	DELTA
1697	During her 2010 SNL monologue,Betty White quipped that what website sounded like “a huge waste of time”?	FACEBOOK
1698	During his illustrious career, Romanian-born Bela Karolyi coached 9 Olympic champions in what sport?	GYMNASTICS
1699	During his presidency, Bill Clinton added which of these amenities to the White House?	JOGGING TRACK
1700	During Kabbalah study,what music star prefers to go by her Hebrew name “Esther”?	MADONNA
1701	During the 2010 BP oil spill, oil gushed into the Gulf of Mexico for a total of how many days?	86 days
1702	During the Depression.impoverished people built tent cities and shantytowns known by what “presidential” nickname?	HOOVERVILLES
1703	During World War I,what country introduced a fleet of submarines known as “U-boats”?	GERMANY
1704	During WWI,butter often had to be imported from the Netherlands to France to create what aptly named sauce?	HOLLANDAISE
1705	Dwight Eisenhower renamed the presidential retreat “Camp David” in honor of who?	HIS GRANDSON
1706	E is for “Everyone,” T is for “Teen” and M is for “Mature” are standard ratings for which of the following?	VIDEO GAMES
1707	Each May, what European country observes National Windmill and Pumping Station Day?	THE NETHERLANDS
1708	Each of these 2010 films is primarily set in the state of Massachusetts, except for which?	UNSTOPPABLE
1709	Each year since 1993, the coveted T.S. Eliot Prize has been awarded to a writer of what?	POETRY
1710	Each year, the Bram Stoke awards are presented to writers of what literary genre?	HORROR
1711	Each year, the South Pole experiences how many months of total darkness?	6
1712	Each year,the Bram Stoker Awards are presented to writers of what literary genre?	HORROR
1713	Earl Grey tea gets its distinctive flavor from the oil of what citrus fruit?	BERGAMOT
1714	Earning its lead actor an Oscar, the 1968 drama “Charly” is based on what science fiction novel?	FLOWERS FOR ALGERNON
1715	Echolocation is a scientific process that determines the location of objects by using what?	SOUND
1716	Editor-in-chief of Men’s Health magazine,David Zinczenko is the best-selling author of what diet book?	EAT THIS,NOT THAT
1717	Eduardus and Ursus and Christophorus Robinus are two characters in a Latin version of what classic kids’ story?	WINNIE-THE-POOH
1718	Edward Michael Grylls, rugged host of the Discovery Series “Man vs. Wild,” goes by what nickname?	BEAR
1719	Eirik Thorvaldson was a famous Viking explorer who is better known by what hair-inspired nickname?	ERIC THE RED
1720	Ellen DeGeneres typically kicks off episodes of her popular daytime talk show by doing what?	DANCING
1721	Emeralds contain small amounts of chromium that cause them to have what characteristic color?	GREEN
1722	Emirates Airlines, the largest carrier in the Middle East, is headquartered in what city?	DUBAI
1723	Enabling it to go for weeks without food,a camel’s hump is primarily used to store what?	FAT
1724	Ending the careers of many a pro baseball player,which of these injuries affects the shoulder?	ROTATOR CUFF TEAR
1725	Endorsed by celebs like Jessica Simpson and Katy Perry,Proactiv is a what?	ACNE TREATMENT
1726	Engineered by scientists, the broccoflower is what type of edible?	VEGETABLE
1727	Entertainment Weekly’s 2008 list of “Horrible Movie Accents” included Tom Cruise’s Irish brogue in what film?	FAR AND AWAY
1728	Equivalent to 20 bottles, which of these large bottles of champagne holds the greatest volume?	NEBUCHADNEZZAR
1729	Eric Clapton wrote the classic hit “Layla” as a love song to what rock star’s wife?	GEORGE HARRISON
1730	Erin Andrews earned the apt nickname “America’s Sideline Princess” as a reporter for what network?	ESPN
1731	Espadrilles are a type of what?	SHOES
1732	Especially used at airports,SPDT is a security program that stands for “Screening of Passengers by” what?	OBSERVATION TECHNIQUES
1733	Established in 1867, the Marquess of Queensberry Rules set the modern framework for what sport?	BOXING
1734	Established in 1954, what Rhode Island city hosts a well-known jazz music festival every summer?	NEWPORT
1735	Established in 1990, the James Beard Foundation Awards recognizes excellency in which of these fields?	CUISINE
1736	Established in 1996,an emergency response bulletin issued upon the suspected abduction of a child is known as a what?	AMBER ALERT
1737	Estro-Logic is the name of an herb supplement that markets itself towards what demographic?	MENOPAUSAL WOMEN
1738	Eva Longoria once sadly noted that the only bilingual cartoon character of her youth was who?	SPEEDY GONZALES
1739	Even though he is a famous teetotaler,which of these celebrities launched his own brand of vodka in 2006?	DONALD TRUMP
1740	Even though he is a fish,StarKist’s “hipster” mascot Charlie the Tuna is usually depicted wearing what?	RED BERET AND GLASSES
1741	Even though he’s deceased,what actor has appeared on every Harris Poll for America’s Favorite Actor since 1994?	JOHN WAYNE
1742	Every January,college football’s Sugar Bowl takes place in what U.S. city?	NEW ORLEANS
1743	Every year McDonald’s offers its popular Shamrock Shake for a limited time during what month?	MARCH
1744	Every year on March 31st,California observes Cesar Chavez Day to honor the birth of a famous what?	LABOR LEADER
1745	Evite is a popular website for people planning to do what?	THROW A PARTY
1746	Excluding the two-part series finale,what long-running sitcom’s episode titles all started with “The One…”?	FRIENDS
1747	Experts suggest rubbing your hands against stainless steel to chemically neutralize the smell of what household odor?	GARLIC
1748	Explicitly taking on the iphone, in 2009 Motorola released a smartphone with which futuristic name?	DROID
1749	Exposure to sunlight would most likely help to cure a person suffering from which of these conditions?	SEASONAL AFFECTIVE DISORDER
1750	Falafel,a popular Middle Eastern dish,is usually made by grinding and frying what?	CHICKPEAS
1752	Familiar to film buffs,Sunset Boulevard borders which of these prominent college campuses?	UCLA
1753	Familiar to viewers of Fox football broadcasts, the computer-animated mascot “Cleatus” is a what?	ROBOT
1754	Famous for his attempts to predict the future,16th-century physician Nostradamus hailed from what country?	FRANCE
1755	Famous for his deadpan line “Bueller…..Bueller,” Ben Stein is given what title in the credits for “Ferris Bueller’s Day Off”?	ECONOMICS TEACHER
1756	Famous for his namesake “curl”,how do you spell the nickname of hairdresser and chemist Robert Redding?	JHERI
1757	Famous for its 18th-century architecture,the historic neighborhood “Society Hill” lies in what city?	PHILADELPHIA
1758	Famous for playing a butcher, what eccentric actor has taken time off to work as a cobbler?	DANIEL DAY-LEWIS
1759	Famous for playing a butcher,what eccentric actor has taken time off to work as a cobbler?	DANIEL-DAY LEWIS
1760	Famous for playing sneering villains,which of these British actors appeared in his first-ever film role at the age of 42?	ALAN RICKMAN
1761	Famous for the lifesaving maneuver named after him, Henry J. Heimlich was what type of doctor?	THORACIC SURGEON
1762	Famous in her own right, handbag designer Kate Spade has a famous brother-in-law named David, who is a what?	COMIC
1763	Famous siblings Rosanna,David,Patricia and Alexis are all Hollywood actors with what last name?	ARQUETTE
1764	Far lighter than lead, what electron-rich metal does Chevrolet use for the batteries in its Volt car?	LITHIUM
1765	Fashionistas often use cosmetics to achieve a common and coveted look known as “smoky” what?	EYES
1766	Featured in a 1990s Beck song,what is the translation of the Spanish lyric “Soy un perdedor”?	I’M A LOSER
1767	Featured in Madonna’s 1998 video “Frozen,” mehndi are temporary henna tattoos traditionally placed where?	HANDS & FEET
1768	Featured in the popular Chinese dish lo mein, “mein” means what in Chinese?	NOODLES
1769	Featured in working mother’s list of “Most Powerful Moms in Sports,” Dara Torres is a well-known what?	SWIMMER
1770	Featured on a jokey apron,”Dijon Vu” is defined as “the feeling that you’ve had this” what “before”?	MUSTARD
1771	Featured on light bulb packages,what unit of measure is defined as the amount of light emitted by one candle?	LUMEN
1772	Featured on the Shakespeare family coat of arms,the French motto “Non sans droit!” means “not without” what?	RIGHT
1773	Featuring a high,prominent bridge,an aquiline nose is better known as a what?	ROMAN NOSE
1774	Featuring a nod to his company’s name, “Losing My Virginity” is the title of what entrepreneur’s memoir?	RICHARD BRANSON
1775	Featuring an emotional scene set a potter’s wheel,a musical based on what movie opened in London in 2011?	GHOST
1776	Featuring Betty White,what organization launched its irrelevant “Get Over It!” ad campaign in 2011?	AARP
1777	Featuring men who agree to murder to help one another,the 2011 comedy “Horrible Bosses” echoes what Hitchcock film?	STRANGERS ON A TRAIN
1778	Fela kuti is credited with creating what genre of “world music”?	AFROBEAT
1779	Filled with warm, slightly salty water, a neti pot is used for treating what common condition?	SINUSITUS
1780	Films like “Avatar” use what technology,where sensors are placed on an actor’s body to record their movements digitally?	PERFORMANCE CAPTURE
1781	Finally closed in 2010, Chicago’s notorious Cabrini-Green housing projects were the setting of what ’70s sitcom?	GOOD TIMES
1782	First enjoyed in 1949, which candy brand was created by Bill and Dorothy Harmsen in Golden, Colorado?	JOLLY RANCHER
1783	First found in the U.S. in 1999,West Nile virus is primarily transmitted by what?	MOSQUITOES
1784	First Lady of France Carla Bruni-Sarkozy plays a museum tour guide in whose 2011 film “Midnight in Paris”?	WOODY ALLEN
1785	First used to describe certain jazz fans in the ’40s,what term now refers to irony-loving youngsters?	HIPSTER
1786	Fitting for a devout Baptist and Sunday school teacher,”Deacon” was the Secret Service code name for what president?	JIMMY CARTER
1787	Fittingly, John Deere round balers and square balers do what?	GATHER HAY
1788	Fittingly, the Liberty Bell is featured in the logo of what Major League Baseball team?	PHILADELPHIA PHILLIES
1789	Fittingly, the World Potato Congress was held in the U.S. for the first time in 2006 in what U.S. state capital?	BOISE
1790	Fittingly, what world landmark boasts a feature known as “The Tsar’s Tower?”	THE KREMLIN
1791	Fittingly, “Georgia On My Mind” is the theme song to which of these classic TV shows?	DESIGNING WOMEN
1792	Fittingly,the Atlanta-Fulton Public Library displays the typewriter used to write what classic novel?	GONE WITH THE WIND
1793	Fittingly,the entrance to Colorado’s state capitol building features the phrase “One Mile Above” what?	SEA LEVEL
1794	Fittingly,the first Filene’s Basement was located below a store called Filene’s in what big city?	BOSTON
1795	Fittingly,the online retailer Zappos adapted its name from “zapatos,” the Spanish word for what?	SHOES
1796	Fittingly,what man-made fabric derived its name by rearranging the letters in the word “expands”?	SPANDEX
1797	Fittingly,which of these popular 20th century authors is buried in Tarzana,California?	EDGAR RICE BURROUGHS
1798	Five different yellow Volkswagen buses were used in the filming of which of these road trip movies?	LITTLE MISS SUNSHINE
1799	Fleur de sel is an expensive type of what?	SALT
1800	Fluent in French, what actress often dubs her own lines for the French language versions of her films?	JODIE FOSTER
1801	Foam Hands is a company that encourages it’s customers to wear gear at which of the events?	Football Games
1802	Following a highly public scandal,Tiger Woods returned to pro golf in 2010 at what tournament?	THE MASTERS
1803	Following a September Harvest Moon,the full moon in October is commonly known as what?	HUNTER’S MOON
1804	Following China,India and the United States,what country has the world’s fourth largest population?	INDONESIA
1805	Following suit with Princess Diana,Kate Middleton omitted what word from her wedding vows to Prince William?	OBEY
1806	Following up on the lives of Rick and Ilsa, the 1998 novel “As Time Goes By” is a controversial sequel to what film?	CASABLANCA
1807	Foods that are high in fiber contain a complex carbohydrate indigestible to humans called what?	CELLULOSE
1808	Footrests are common features on which of these children’s toys?	POGO STICKS
1809	For a 1967 “Ed Sullivan Show” stint,The Doors were asked to change an indecent lyric in what song?	LIGHT MY FIRE
1810	For a holiday promotion, TravelLodge offered a free “room at the inn” for couples whose first names were what?	MARY AND JOSEPH
1811	For half a century,Mister Softee trucks have driven America’s streets playing music and peddling what?	ICE CREAM
1812	For his significant contribution to the genre, author Zane Grey is often called the “father of the” what?	WESTERN NOVEL
1813	For his skill at playing his instrument of choice,legendary bandleader Artie Shaw was dubbed the “King of the” what?	CLARINET
1814	For many years, which of these snack foods promoted itself as “the cheese that goes crunch”?	CHEETOS
1815	For many years,which of these TV journalists was suspected of being the Watergate informant known as Deep Throat?	DIANE SAWYER
1816	For most of his 40-year run as the Today show’s film critic,Gene Shalit sported which of these looks?	BOW TIE, BUSHY MUSTACHE
1817	For most of the 1988 movie “Working Girl,” Melanie Griffith’s character had what occupation?	SECRETARY
1818	For over 100 years,the dreaded woll beevil was a scrooge to which of these U.S. crops?	COTTON
1819	For over 30 years,United Airlines’ ad slogans urged travelers to fly what kind of skies?	FRIENDLY SKIES
1820	For over 60 years,which of these retailers featured an annual “Running of the Brides” wedding dress sale?	FILENE’S BASEMENT
1821	For over a century,the New Year’s Day Tournament of Roses Parade has taken place in what U.S. city?	PASADENA, CA
1822	For reasons that should be clear to math enthusiasts,April 16th is the official “holiday” of what popular website?	FOURSQUARE
1823	For seven seasons,TV’s “Gilmore Girls” featured a fast-talking mother and daughter who shared what name?	LORELAI
1824	For several seasons, Jillian Michaels and Bob Harper have helped contestants on what reality TV show?	THE BIGGEST LOSER
1825	For several years,the male dancing company Chippendales has tried to copyright what signature look?	CUFFS & COLLAR
1826	For shoppers on a budget,Designer Imposters is a brand providing knockoffs of what luxury item?	FRAGRANCE
1827	For the most part,what imaginary geographical line follows the 180th meridian?	INTERNATIONAL DATE LINE
1828	For those seeking more bang for your bite,the larger version of the pasta tortellini is called what?	TORTELLONI
1829	For years, Conan O’Brien has poked fun of his decidedly unhip car, a 1992 what?	FORD TAURUS
1830	For years, the Slim-Fast slogan was a “shake for breakfast, a shake for lunch, and then a ” what for dinner?	SENSIBLE DINNER
1831	For years, the “Today” Show’s Willard Scott has wished centenarians happy birthday on a segment sponsored by whom?	SMUCKERS
1832	For years,the now-defunct Weekly World News tabloid captivated readers with ongoing stories about what creature?	BAT BOY
1833	For years,what long-running TV show used a theme song aptly titled “Johnny’s Theme”?	THE TONIGHT SHOW
1834	Forensics investigators often use “dactyloscopy,” a method of identifying people using what unique trait?	FINGERPRINT PATTERN
1835	Forget-me-not flowers are typically a shade of what color?	BLUE
1836	Formed in 1998, 30 Seconds to Mars is a Los-Angeles based rock band led by what actor?	JARED LETO
1837	Former energy company Enron originally held what name,before realizing the word meant “intestine”?	ENTERON
1838	Former House speaker Newt Gingrich once stated in an interview that he thought what actor should play him in a movie?	BRAD PITT
1839	Former model Padma Lakshmi began hosting what popular reality competition series in 2006?	TOP CHEF
1840	Former pro hockey player Tim Horton lent his name to a popular fast food franchise specializing in what?	DOUGHNUTS
1841	Former rapper Vanilla Ice stars in a reality show that follows his current career doing what?	REMODELING HOMES
1842	Former Secretary of State Henry Kissinger was born in what country?	GERMANY
1843	Formerly known as Sleuth, Cloo is a cable TV channel dedicated to what genre of programming?	MYSTERY
1844	Fought over for decades, what Mediterranean island speaks Greek in its southern half and Turkish up north?	CYPRUS
1845	Found at a German zoo,Eclyse the “zorse” is a half-horse hybrid animal with what distinctive markings on her coat?	BLACK AND WHITE STRIPES
1846	Found in Asia and Africa,jackals belong to the same family as what domesticated animals?	DOGS
1847	Found mostly in Asia,the macaque is a type of what animal?	MONKEY
1848	Founded in 1856, the Wurlitzer Company is famous for producing which of these items?	JUKEBOXES
1849	Founded in 1868, Martinelli’s is a California-based company best known for producing what?	SPARKLING CIDER
1850	Founded in 1881, the Wharton School is a prestigious business school at what university?	UNIVERSITY OF PENNSLYVANIA
1851	Founded in 1958, the FAA is a government agency controlled by what U.S. department?	TRANSPORTATION
1852	Founded in 1963, the letters in the national drugstore chain CVS stand for what?	Corrective Vaccine Salves
1853	Founded in 1968, what is the company J.D. Power and Associates best known for providing?	CUSTOMER SATISFACTION DATA
1854	Founded in 1972,Scantron Corporation is best known for its products that do what?	GRADE TESTS
1855	Founded in 1984, what natural food brand bills itself as “7 Whole Grains on a Mission”?	KASHI
1856	Founded in 1999,Edible Arrangements specializes in edible “bouquets” primarily made of what?	FRESH FRUIT
1857	Founded in Jamaica, the Rastafari religion was popularized by what famous iconic musician?	BOB MARLEY
1858	Founded in London in 1766,Christie’s is one of the world’s oldest what?	AUCTION HOUSES
1859	Founded in Pennsylvania in 1829,what brand of beer claims to be from “America’s Oldest Brewery”?	YUENGLING
1860	French Impressionist Edgar Degas is famous for his paintings and sculptors depicting what performers?	BALLET DANCERS
1861	Fresh blueberries grown in the U.S. are typically in season during which of these months?	JULY
1862	From 1856 until 1939, the country of Thailand was officially known as what?	SIAM
1863	From 1883 until the 1950s what country claimed Vietnam as a country?	FRANCE
1864	From 1898 to 1901, what country experienced a popular uprising known as the Boxer Rebellion?	CHINA
1865	From 1916 to 2001,the Boeing aircraft company was headquartered in what city?	SEATTLE
1866	From 1948 to 1956,Americans’ growing taste for pizza sparked an increase in sales of what herb?	OREGANO
1867	From 1967-1989, Jesse White played what advertising icon?	MAYTAG REPAIRMAN
1868	From 2005 to 2011,actor Steve Carell played Michael Scott on what popular TV sitcom?	THE OFFICE
1869	From a Sanskrit phrase meaning “one with great measure,” a mahout is a driver of what kind of animal?	ELEPHANT
1870	From a word meaning “to sit”, a seance is a gathering at which people attempt to do what?	SPEAK WITH THE DEAD
1871	From Earth, Mars appears to be what shade of color?	RED
1872	From the French for “half-cup,” a demitasse is commonly a small serving of what?	COFFEE
1873	From what country’s controversial court case did the phrase “a dingo’s got my baby” originate?	AUSTRALIA
1874	Garbanzo beans are also known by what name?	CHICKPEAS
1875	Generally speaking,the difference between a liquor and a liqueur is that a liqueur is what?	SWEETENED
1876	Generally speaking,which of these U.S. cities is pronounced with a “z” sound by outsiders and an “s” sound by locals?	BOISE
1877	George A. Romero’s classic “Night of the Living Dead” series popularized what movie monsters?	ZOMBIES
1878	George Bernard Shaw once humorously defined what activity as “the vertical expression of horizontal desire”?	DANCING
1879	George H.W. Bush’s presidential library is located on the campus of what Texas university?	TEXAS A&M
1880	George Orwell’s autobiographical 1938 book “Homage to Catalonia” opens with Orwell in what European city?	BARCELONA
1881	George Steinbrenner,the legendary owner of the NY Yankees,made his fortune in what industry?	SHIPPING
1882	George W. Bush gets his middle name, “Walker,” from which of his relatives?	PATERNAL GRANDMOTHER
1883	Giving her a radiant halo called an “aureole,” how many rays shoot out from the Statue of Liberty’s crown?	SEVEN
1884	Giving it the scientific name of Leviathan melvillei,researchers recently discovered the bones of a prehistoric what?	WHALE
1885	Golden-voiced Julie Andrews won her only Oscar for her work in what movie musical?	MARY POPPINS
1886	Grammatically speaking,which of these reality TV show titles is an imperative statement?	SAY YES TO THE DRESS
1887	Grammy-winning country music star Judith Newton rose to fame in the ’80s with what nickname?	JUICE NEWTON
1888	Great Britain’s Chancellor of the Exchequer is the equivalent to what U.S. cabinet position?	SECRETARY OF THE TREASURY
1889	Greater New York City is often called the “Tri-state area,” a term that refers to New York,New Jersey and what third state?	CONNECTICUT
1890	Gregory Maguire’s 2003 novel “Mirror Mirror” is a revisionist version of what classic fairy tale?	SNOW WHITE
1891	Groundhogs are also commonly known as what?	WOODCHUCKS
1892	growing spa treatment service, thermal-auricular therapy is better known by what name?	EAR CANDLING
1893	Grown and cultivated from the Yerba mate plant,mate is a South American variety of what beverage?	TEA
1894	Gun-control advocate James Brady once held what position in the Reagan administration?	PRESS SECRETARY
1895	Hailed as a must-have for new parents, “Sophie” is a French-made baby’s chew toy in the shape of what animal?	GIRAFFE
1896	Hailed as a super-food, the much-hyped acai berry is harvested in which of these countries?	BRAZIL
1897	Hailing from Spain,what pro tennis player uses a logo that resembles a bull?	RAFAEL NADAL
1898	Haley’s comet, which last appeared in and will next return in 2061, takes how long to orbit the sun?	75 YEARS
1899	Harpo,Oprah’s production company,shares its name with a character from a novel by what author?	ALICE WALKER
1900	Harvest gold and “avocado green” were trendy colors for kitchen appliances during what decade?	1970S
1901	Haskell Opera House has its stage in Quebec, Canada, while most of its audience members sit in what state?	VERMONT
1902	Having nothing to do with their political views, what sport features players labeled as right and left wing?	HOCKEY
1903	Hawaiian for “quick,” what word describes a web page that can be edited by many people?	WIKI
1904	he 2010 film “The Last Play at Shea” examines the history of a stadium and former home of what team?	NY METS
1905	he political Web site Huffingtonpost.com was founded in 2005 by a writer with what first name?	ARIANNA
1906	he popular Ed Hardy line of clothing is named after a person with what profession?	TATTOO ARTIST
1907	Headlines exclaimed “Aack!” when it was announced that what long-running comic strip would end in 2010?	CATHY
1908	Headlines quipped, “Mr. & Mrs. Smith Go To Washington,” reporting on a 2012 White House visit by what celeb couple?	BRAD PITT & ANGELINA JOLIE
1909	Headlines read “Deja Blue” after what NFL team scored a second Super Bowl win over the Patriots in 2012?	NEW YORK GIANTS
1910	Headquartered in Cupertino,what tech company offers “Cupidtino,” an online dating site that connects fans of its products?	APPLE
1911	Heard in the expression, “That really sticks in my craw,” a “craw” is literally a what?	BIRD’S THROAT
1912	Held in New York, “Night of a Thousand Stevies” is a fan festival honoring what band’s former lead singer?	FLEETWOOD MAC
1913	Helping campus-bound kids since 1996,which bit of numerical jargon is a tax-friendly college savings plan?	529
1914	Helping people cope with the current economy,The Recessionista blog primarily covers what area of interest?	FASHION
1915	henille, a soft, fuzzy fabric, is aptly named for the French word for what bug?	CATERPILLAR
1916	Henry Ford built a replica of Thomas Edison’s famous Menlo Park labaratory in what Midwestern city?	DEARBORN, MI
1917	Henry Heimlech,the doctor famous for his life-saving maneuver,is the cousin of an actor famous for what sitcom character?	“POTSIE” WEBER
1918	Henry VIII belonged to what royal family?	TUDOR
1919	Hidden in the word “mosquito” is the name of the capital city of what South American country?	ECUADOR
2644	Signed in 1992, NAFTA is a trade agreement among the U.S., Mexico and what third country?	CANADA
1920	Hidden in the word “mosquito” is the name of the capital city of what South American country?	ECUADOR
1921	Hillary Clinton’s 1996 bestseller was based on the African proverb “It takes a whole village to” do what?	RAISE A CHILD
1922	Hirsutism is a medical condition common among which of these circus performers?	BEARDED LADIES
1923	Historian Edward Gibbon is best known for his six-volume account of the “Decline and Fall” od what empire?	ROMAN
1924	Hollywood’s favorite time of year,which of these months falls within a period known as “awards season”?	FEBRUARY
1925	Hollywood’s star-studded Walk of Fame is centered at the famous intersection of Hollywood Blvd and what?	VINE
1926	Home of “Clawed the Eagle,” American University is a private school located where?	WASHINGTON, D.C.
1927	Home to a 5,000-year-old stone circle,the Hebrides islands are located off the coast of what country?	SCOTLAND
1928	Home to a famous breed of tiger,Bengal is a region located in what part of the world?	SOUTH ASIA
1929	Home to a large global banking industry, Zurich is the most populated city of what country?	SWITZERLAND
1930	Home to the National Christmas Tree,the park area directly south of the White House is known as what?	THE ELLIPSE
1931	Honolulu,the capital city of Hawaii,is located on which of its islands?	OAHU
1932	Honored by the Kennedy Center in 2003, Itzhak Perlman is a world-renowned player of what musical instrument?	VIOLIN
1933	Horn and Fishbacher are the last names of what famous duo?	SIEGFRIED AND ROY
1934	Hosted by Don Francisco since 1962,the variety show “Sabado Gigante” fittingly airs on what day of the week?	SATURDAY
1935	How many basic positions of the feet are there in traditional ballet?	FIVE
1936	How many calories does a person have to burn to lose one pound of fat?	3,500 *CORRECT*
1937	How many emirates, or territories, comprise the Middle Eastern territory known as United Arab Emirates?	7
1938	How many episodes of the “real-time” TV series “24” would it take to depict the events of a single week?	168
1939	How many fluid ounces are in a pint?	16
1940	How many issues would a subscriber to both USA TODAY and Texas Weekly get in one calendar year?	64
1941	How many numbers between ten and twenty have names that end with the suffix “-teen?”	7
1942	How many prime numbers are there between 1 and 20?	8 *CORRECT*
1943	How many queens does a typical honeybee nest have at any one time?	ONE
1944	How many seconds are in one hour?	3600
1945	How many total ribs are there in the human rib cage?	25
1946	How many total ribs are there in the human rib cage?	24
1947	How many U.S. presidents have had sons who also served as U.S. president?	2
1948	How many workers sit on a steel beam hundreds of feet in the air in the iconic 1932 photo “Lunch Atop a Skyscraper”?	11
1949	How many years after the Civil War did WWII end?	80
1950	How many years transpired between the publication of George Orwell’s “1984” and the year 1984?	35
1951	How old was Thomas Jefferson when he drafted the Declaration of Independence?	33 *CORRECT*
1952	Icebreakers are ships often used to navigate which of these parts of the world?	ARCTIC OCEAN
1953	If 10-year-old Bart Simpson had aged since the show’s premiere,in what year would he have reached drinking age in the U.S.?	2000 *CORRECT*
1954	If a gross is equal to 144 units,how many units are in a dozen gross,also known as a “great gross”?	1728 *CORRECT*
1955	If a group of people does something “en masse,” how are they doing it?	IN UNISON
1956	If a man’s shirt size is 16-32/33,the “16” is a measurement of what?	CIRCUMFERENCE OF NECK
1957	If a person has blue eyes, it is because what part of his eyes are blue?	IRIS
1958	If a person was born in 1991, what birthday did they celebrate during the palindromic year?	11TH
1959	If a woman making 50,000 dollars a year gets a 20% raise, what is her new annual salary?	$60,000 
1960	If a woman walks 10,000 feet,how many more feet does she have to walk to go a distance of two miles?	560
1961	If an “n” is added to the end of it, what zodiac sign becomes the name for the animal that symbolizes it?	SCORPIO
1962	If Blue from “Blue’s Clues” and Clifford the Big Red Dog had a puppy,what color would it most likely be?	PURPLE
1963	If each can contains 12 ounces, what is the total volume of liquid in a six-pack of beer?	72 OUNCES
1964	If every U.S. Senator had the floor for 3 minutes, how many total hours of speaking would ensue?	5
1965	If he lived in ancient Rome, what superhero might have gone by the name “Homo Ferreus”?	IRONMAN
1966	If hot dogs come in 10-packs and buns in 8-packs, which of these combos will have an equal amount of franks and buns?	4 HOT DOG PACKS, 5 BUN PACKS
1967	If it could talk, the traditional animal symbol of the Democratic Party would most likely say what?	HEE-HAW!
1968	If it were an actual pole,the axis around which the Earth spins would pass through what continent?	ANTARCTICA
1969	If someone is not familiar with another person,he might say “I don’t know him from” whom?	ADAM
1970	If someone were to describe Nicolas Cage as “cagey,” they might mean that he is what?	SHREWD
1971	If the countries were represented by their national flowers, what would be the 2010 World Cup final match up?	RED CARNATIONS VS. TULIPS
1972	If the Gettysburg Address were delivered in 2012,”four score and seven years ago” would refer to what year?	1925 *CORRECT*
1973	If the Gettysburg Address were delivered today in 2011, “Four score and seven years ago” would refer to what year?	1924
1974	If the Gettysburg Address were delivered today in 2011, “four score and seven years ago” would refer to what year?	1924 (C)
1975	If the Indy 500 were “converted” from miles to kilometers,it would be called the what?	INDY 805
1976	If the singer Davy Jones had a locked actually located in “Davy Jones’s locker,” where would it be?	AT THE BOTTOM OF THE SEA
1977	If the “OctoMom” Nadya Suleman had birthed one more child,she might have been called the what?	NONAMOM
1978	If there are 8 bits in a byte, then how many bytes are in a bit?	0.125
1979	If they were actual members of the U.S. Army,which of these characters would hold the highest rank?	COLONEL SANDERS
1980	If tripe is on the menu for dinner,which of the following might you have the pleasure of eating?	COW STOMACH
1981	If you are traveling on an airplane that has a cruising altitude of 30,000 feet,about how many miles are you above the Earth?	5.7 *CORRECT*
1982	If you burn off 500 more calories than you consume each day,how long should it take for you to lose one pound?	SEVEN DAYS
1983	If you counted them, which of the following would total 36, 525?	DAYS IN A CENTURY
1984	If you had one of each of the 50 U.S. commemorative quarters, how much money would you have?	$12.50 
1985	If you have four shirts and three pairs of pants, how many unique ensembles can you put together?	TWELVE
1986	If you rearrange the letters in Meg Ryan’s name,you can form the name of a European country that has what capital?	BERLIN
1987	If you wanted to visit the “Geographic Center of North America,” you’d have to go to what U.S. state/	NORTH DAKOTA
1988	If you “throw brickbats” at someone, it means you are doing which of these things?	CRITICIZING THEM
1989	If your astrological sign is the one that comes first alphabetically,then when is your birthday?	JANUARY OR FEBRUARY
1990	If your astrological sign is the one that comes first alphabetically,then when is your birthday?	JANUARY OR FEBRUARY
1991	If “ASAP” is too long, text messengers can type what three- letter abbreviation to mean “immediately”?	PDQ
1992	ILM, the special effects company founded by George Lucas, stands for Industrial Light and what?	MAGIC
1993	Immortalized by The Beatles, Abbey Road is a famous street in what European city?	LONDON
1994	Important for ad rates, TV programming in Feb, May, July, and November has what special name?	SWEEPS
1995	Important for its use in fertilizer, ammonia is a compound made from hydrogen and what other element?	NITROGEN
1996	Important for proper feng shui,which home improvement item comes in “right-handed” and “left-handed” versions?	DOOR
1997	Important in South American cuisine, which of these foods has been called “the supergrain of the future?”	QUINOA
1998	In a cliche scene from many Westerns, gunslingers meet for a final showdown when?	HIGH NOON
1999	In 1587, Mary Queen of Scots was beheaded for her part in a plot to assassinate which British monarch?	ELIZABETH I
2000	In 1587, what family gave birth to Virginia, the first English child born in the Americas?	THE DARES
2001	In 1667, the Dutch traded Manhattan for the tiny Indonesian island of Rum, valuable for its abundance of what spice?	NUTMEG
2002	In 1820,Maine became the 23rd state in the Union by separating from what other state?	MASSACHUSETTS
2003	In 1835, Charles Darwin spent five weeks observing the indigenous life on what chain of islands?	THE GALAPAGOS ISLANDS
2004	In 1839,what inventor first vulcanized rubber?	CHARLES GOODYEAR
2005	In 1844,the independent candidate Joseph Smith,Jr. became the first what to run for president?	MORMON
2006	In 1849,mounting debt forced what French author to sell his famed castle,the Chateau de Monte-Cristo?	ALEXANDRE DUMAS
2007	In 1865, John Stetson introduced a now-famous version of what type of hat?	COWBOY HAT
2008	In 1872,an act of Congress established what as America’s first official national park?	YELLOWSTONE
2009	In 1872,Susan B.Anthony was arrested in Rochester,New York,for illegally doing what?	VOTING
2010	In 1876, what inventor uttered the now-famous words, “Mr. Watson, come here, I want to see you” ?	ALEXANDER GRAHAM BELL
2011	In 1881,the infamous Gunfight at the O.K. Corral took place in a city that is now part of what state?	ARIZONA
2012	In 1884,brothers Al,Otto,Charles,John,and Alf Ringling founded a famous what in Baraboo,WI?	CIRCUS
2013	In 1885, what popular soft drink was invented at Morrison’s Old Corner Drug Store in Waco, TX?	DOCTOR PEPPER
2014	In 1898,Swiss businessman Cesar Ritz established a now-famous what in Paris?	HOTEL
2015	In 1902,nine motor clubs merged to form a nonprofit organization currently known by what name?	AAA *CORRECT*
2016	In 1903,the International Brotherhood of Teamsters was formed to help persons who did what?	HAULED LOADS
2017	In 1909, who became the first President to be depicted on a circulating U.S. monetary coin?	ABRAHAM LINCOLN
2018	In 1918, William L. Murphy invented a stow-away version of what piece of furniture?	BED
4997	Who is Rick Rubin?	MUSIC PRODUCER
2019	In 1926,Adriano,Marcello,and Bruno Ducati founded a firm today known for manufacturing what?	MOTORCYCLES
2020	In 1927,Charles Lindbergh flew the first solo,non-stop transatlantic flight aboard what aircraft?	SPIRIT OF ST.LOUIS
2021	In 1928, anthropologist Margaret Mead published her landmark study titled “Coming of Age in” what country?	SAMOA
2022	In 1930, Herman Fisher and Irving Price became the namesakes for a famous brand of what?	CHILDREN’S TOYS
2023	In 1935,what accounting firm began its long-running tradition of tallying votes for the Academy Awards?	PRICE WATERHOUSE
2024	In 1939,Bill Hewlett and Dave Packard founded a company that today specializes in making what?	COMPUTER EQUIPMENT
2025	In 1945,what food became the first to be intentionally microwaved?	POPCORN
2026	In 1946, the John Oster Manufacturing Company introduced the Osterizer, a popular brand of what?	BLENDER
2027	In 1948, a Chicago paper ran the famously incorrect headline “Dewey Defeats Truman” on the third of what month?	NOVEMBER
2028	In 1950,Senator Joe McCarthy became the central figure in a national crusade known as the what?	RED SCARE
2029	In 1955,Rosa Parks made history when she refused to give up her seat on a public bus in what city?	MONTGOMERY,ALABAMA
2030	In 1955,the novel “The Year the Yankees Lost the Pennant” was turned into a Broadway musical with what title?	DAMN YANKEES
2031	In 1956, Chuck Williams opened the first WIlliams-Sonoma store in what state?	
2032	In 1956,Chuck Williams opened the first Williams-Sonoma store in what U.S. state?	CALIFORNIA
2033	In 1959, Travelers Insurance began featuring what red item as part of its logo?	UMBRELLA
2034	In 1960, Mount Everest explorer Sir Edmund Hillary led an expedition to find what mythical creature?	ABOMINABLE SNOWMAN
2035	In 1960,Mattel introduced a popular “talking” doll named what?	CHATTY CATHY
2036	In 1965,former test pilot Owen Maclaren patented a prototype of the B-01,the basis for a popular line of what?	BABY STROLLERS
2037	In 1966, rock guitarist James Hendrix officially changed the spelling of his first name to what?	JIMI
2038	In 1968, what star of “Planet of the Apes” turned heads with what’s billed as the first ever himan-ape movie kiss?	CHARLTON HESTON
2039	In 1969, the Apollo 11 lunar module landed on a region of the moon named “Sea of” what?	TRANQUILITY
2040	In 1971 cult classic, what does an older woman say to a younger man when he says, “I love you Maude”?	I LIKE YOU HAROLD
2041	In 1971,in an effort to bolster relations,a team of U.S. athletes was invited to China to compete in what sport?	PING-PONG
2042	In 1971,The NY Times published excerpts of top-secret Vietnam War documents commonly known as what?	PENTAGON PAPERS
2043	In 1972,what organization’s office was the site of a famous break-in at the Watergate hotel?	THE DEMOCRATIC PARTY
2044	In 1973,Bjorn Jakobson founder of the BabyBjorn company,invented a revolutionary product that helps parents do what?	CARRY BABIES
2045	IN 1975, Wally Adams became famous for making what type of snack food?	CHOCOLATE CHIP COOKIES
2046	In 1978, an all-male rock band released an album titled “Q: Are We Not Men? “A: We Are” who?	DEVO
2047	In 1979,a Florida restaurateur founded the Boca brand,starting with a line of meatless what?	BURGERS
2048	In 1983,February 11th was declared “National Inventors’ Day,” fittingly the birthday of what great American?	THOMAS EDISON
2049	In 1984 David Stern became the commissioner of what sport’s professional league?	BASKETBALL
2050	In 1984, the NBA Championship Trophy was renamed to honor what legendary NBA Commissioner?	LARRY O’BRIEN
2051	In 1984,Huey Lewis sued Ray Parker,Jr.,claiming his theme song for “Ghostbusters” was a rip-off of which hit?	I WANT A NEW DRUG
2052	In 1984,Michael Larson racked up $110,237 in winnings by memorizing the patterns on what game show’s Big Board?	PRESS YOUR LUCK
2053	In 1985, Alexa Ray Joel was born to two famous people with what occupations?	SUPERMODEL and SONGWRITER
2054	In 1985, what product’s notoriously unsuccessful “New” formula was introduced to the public?	COCA COLA
2055	In 1985,the word “Classic” was added to what soft drink’s label,where it remained for many years?	COCA-COLA
2056	In 1986, what media mogul caused a stir when he released a list of over 100 films he planned to colorize?	TED TURNER
2057	In 1986,over 100 tons of what product were used to clean the inner copper walls of the Statue of Liberty?	ARM & HAMMER BAKING SODA
2058	In 1987,what Beatles song was banned by the BBC because of its lyric “I’d love to turn you on”?	A DAY IN THE LIFE
2059	In 1988,midwesterners Mark Badgley and James Mischka joined forces to become famous names in what industry?	FASHION
2060	In 1989,a 7.1 magnitude earthquake shook what World Series host city just before Game 3?	SAN FRANCISCO
2061	In 1990, George H.W. Bush signed the U.S. Interstate System after what President?	DWIGHT D. EISENHOWER
2062	In 1990,the SkyMall catalog was launched to target shoppers where?	ON AIRPLANES
2063	In 1994, Texas native Tom Ford began his legendary tenure as creative director of what Italian label?	GUCCI
2064	In 1994,seventeen-year-old Laetitia Thompson asked Bill Clinton the famous question, “Is It” what?	BOXERS OR BRIEFS?
2065	In 1994,the author of the sci-fi collection “I Robot” had a posthumous memoir released,titled what?	I. ASIMOV
2066	In 1994,what country singer adapted her hit song “Coat of Many Colors” into a children’s book?	DOLLY PARTON
2067	In 1995, what country created the Truth and Reconciliation Commission to examine its past?	SOUTH AFRICA
2068	In 1995,what Muppet debuted his signature cologne,a scent called “Amphibia”?	KERMIT THE FROG
2069	In 1996,Olympic gymnast Kerri Strug landed her gold-medal-clinching vault despite what injury?	SPRAINED ANKLE
2070	In 1997, what state passed a law allowing its residents to cast absentee ballots from space?	TEXAS
2071	In 1997,what pro sport officially retired the number 42,the uniform number worn by Jackie Robinson?	BASEBALL
2072	In 1998, Gus Van Sant directed Vince Vaughn in a shot-by-shot remake of what classic Hitchcock thriller?	PSYCHO
2073	In 1999,the current world record for the mile was set by a man running at approximately what speed?	16 MPH
2074	In 1999,the RIAA created what award to recognize albums that have sold more than 10 million copies?	DIAMOND
2075	In 2000, Van Heusen launched its “Regis” line, featuring paired shirts and ties that were what?	MONOCHROMATIC
2076	In 2000,a former member of what family band gave his newborn son the punny name “Jermajesty”?	THE JACKSON FIVE
2077	In 2001, which of these people was named Honorary Sergeant, Regular Army by President Clinton?	SACAGAWEA
2078	In 2001,Utah invited Bill Cosby to help announce what food as its official state snack?	JELL-O
2079	In 2001,what author of “The CORRECTions” created controversy when he snubbed Oprah’s Book Club?	JONATHAN FRANZEN
2080	In 2003, R & B singer Kelis released a hit single named after what tasty treat?	MILKSHAKE
2081	In 2003,what country became the third,after the U.S. and Russia,to launch a person into space aboard its own rocket?	CHINA
2082	In 2004, the FDA approved Botox injections as a treatment for what?	EXCESSIVE SWEATING
2083	In 2004, who spawned a rubber-bracelet trend by selling yellow wristwear to raise money for charity?	LANCE ARMSTRONG
2084	In 2004,Douglas Hamilton and Antonio Burr reenacted what 1804 event between their ancestors?	DUEL
2085	In 2004,what agency got thousands of complaints about Janet Jackson’s halftime performance at the Super Bowl?	FCC *CORRECT*
2086	In 2004,what awards show instituted a five-second tape delay on the 30th anniversary of a famous streaking incident?	OSCARS
2087	In 2005, Dan Rather concluded his final show as a CBS news anchor with what familiar sign-off?	COURAGE
2088	In 2005, W. Mark Felt revealed himself to be “Deep Throat,” the long-anonymous source in what scandal?	WATERGATE
2089	In 2006, Russell Crowe and his wife named their newborn baby boy Tennyson, after a famous what?	POET
2090	In 2006,Nouri al-Maliki became known worldwide when he assumed what post?	IRAQI PRIME MINISTER
2091	In 2006,the International Astronomical Union downgraded Pluto from planet to what lesser celestial body?	DWARF PLANET
2702	Someone who “views the world though rose-colored glasses” is unusually what?	OPTIMISTIC
2092	In 2007, Forest Whitaker won the Oscar for portraying Idi Amin, the former dictator of what country?	UGANDA
2093	In 2007, John Denver’s “Rocky Mountain High” became an official state song of what U.S. state?	COLORADO
2094	In 2007, the Moldy Peaches hit it big after its ballad “Anyone Else But You” was featured in what film?	JUNO
2095	In 2007, what comedian replaced Bob Barker as host of “The Price is Right”?	DREW CAREY
2096	In 2007, what TV actor’s daughter released a video of her intoxicated father attempting to eat a hamburger?	DAVID HASSELHOFF
2097	In 2007, what “Grey’s Anatomy” character “spunoff” from the show to join a friend’s medical group in L.A.?	ADDISON MONTGOMERY
2098	In 2007,Barry Bonds broke Hank Aaron’s career home run record while playing for what MLB team?	SAN FRANCISCO GIANTS
2099	In 2007,protesting college student Andrew Meyer won lasting Internet fame by shouting what at university police?	“DON’T TASE ME, BRO!”
2100	In 2007,the Plain White T’s scored a #1 hit with an infectious love song titled “Hey There” what?	DELILAH
2101	In 2007,what singer revealed that Caroline Kennedy was the inspiration for one of his 1969 hit songs?	NEIL DIAMOND
2102	In 2007,what U.S. state acknowledged the town of Robstown as the birthplace of the “Hold ‘Em” style of poker?	TEXAS
2103	In 2008, a high-profile sex scandal centered on the exposure of what elected official as “Client 9”?	NEW YORK GOVERNOR
2104	In 2008, archaeologists in Jordan announced the possible discovery of what biblical figure’s fabled mines?	KING SOLOMON
2105	In 2008, Eva Longoria opened a Los Angeles restaurant named Beso, Spanish for what?	KISS
2106	In 2008, George W. Bush ducked twice when an Iraqi journalist threw what at his head?	SHOES
2107	In 2008, who became the first rock musician ever to be awarded a Pulitzer Prize?	BOB DYLAN
2108	In 2008, “Saved by the Bell” alum Mario Lopez became host of what entertainment news show?	EXTRA
2109	In 2008, “Subway Guy” Jared Fogle went on a “Tour de Pants” to raise awareness about what issue?	CHILDHOOD OBESITY
2110	In 2008, “Subway Guy” Jared Fogle went on “Tour de Pants” to raise awareness about what issue?	CHILDHOOD OBESITY
2111	In 2008,Jeremy Piven quit a Broadway play,blaming Mercury poisoning he got from eating too much what?	SUSHI
2112	In 2009, after decades of secrecy, Mrs. Butterworth’s first name was revealed to be what?	JOY
2113	In 2009, Chicago’s famed Sear’s Tower officially changed its name to what?	WILLIS TOWER
2114	In 2009, China surpassed what country to become the world’s leading consumer of energy?	UNITED STATES
2115	In 2009, disgraced financier Bernie Madoff was sentenced to how many years in prison?	150
2116	In 2009, Heath Ledger won an Oscar for a role played twenty years earlier by whom?	JACK NICHOLSON
2117	In 2009, Jimmy Fallon vainly attempted to reunite the cast of what series?	SAVED BY THE BELL
2118	In 2009, Lego introduced a new toy model made of what architect’s iconic Guggenheim Museum?	FRANK LLOYD WRIGHT
2119	In 2009, Scotland allowed convicted Lockerbie bomber Abdel Basset to return to what home country?	LIBYA
2120	In 2009, the Fiesta of San Fermin in Pamplona, Spain, held its first look-alike contest honoring what author?	ERNEST HEMINGWAY
2121	In 2009, the International Olympic Committee named what city as the host of the 2016 games?	RIO DE JANEIRO
2122	In 2009, the U.S. Navy rescued Captain Richard Phillips from pirates off the coast of what nation?	SOMALIA
2123	In 2009, Utah’s Fitness Ridge Resort & Spa teamed up with a popular reality show and renamed itself what?	THE BIGGEST LOSER RESORT
2124	In 2009, what country’s runaway inflation led their reserve bank to issue 100 trillion dollar bills?	ZIMBABWE
2125	In 2009, what major corporation changed its slogan to “More saving. More doing.” to reflect the times?	HOME DEPOT
2126	In 2009, what pizza chain revamped its recipe amid customer complaints that their old crust tasted “like cardboard”?	DOMINO’S
2127	In 2009, what pro athlete launched his own TV show in which he tackles other pros at their jobs?	SHAQUILLE O’NEAL
2128	In 2009, which of these “Family Guy” characters moved to Stoolbend, VA to star in his own spin-off?	CLEVELAND BROWN
2129	In 2009,astronomers discovered a “supersized” ring around what planet,much further away than its other known rings?	SATURN
2130	In 2009,Barack Obama completed his much-hyped first 100 days in office on the 29th of what month?	APRIL
2131	In 2009,Crystal Renn released her book “Hungry,” which chronicles her experiences as a what?	PLUS-SIZE MODEL
2132	In 2009,England’s Prince Harry made his first official visit to the U.S. to participate in what charity event?	POLO MATCH
2133	In 2009,Utah’s Fitness Ridge Resort & Spa teamed up with a popular reality show and renamed itself what?	THE BIGGEST LOSER RESORT
2134	In 2009,what politician released a much-anticipated memoir titled “Going Rogue:An American Life”?	SARAH PALIN
2135	In 2009,what rapper beat Elvis Presley’s record for most No.1 albums on the Billboard charts by a solo artist?	JAY-Z
2136	In 2009,what U.S. president was on hand as an 11-foot statue honoring him was unveiled in Kosovo?	BILL CLINTON
2137	In 2009,which of these singers released a men’s cologned called “Southern Blend”?	TIM MCGRAW
2138	In 2010 Jeff Bridges received a Best Actor Oscar for his performance as Bad Blake, who is a what?	COUNTRY SINGER
2139	In 2010 President Obama and a former NBA athlete played what fitting version of the game H-O-R-S-E?	P-O-T-U-S
2140	In 2010 what sitcom aired a live episode featuring Julia Lewis-Drayfus as “Liz Lemon” in flashbacks?	30 ROCK
2141	In 2010 what TV host changed his time slot from 11:00 to midnight to accommodate Conan O’Brien?	GEORGE LOPEZ
2142	In 2010 who became the first living person to acquire more than 10 million fans on Facebook?	LADY GAGA
2143	In 2010, a British government official praised which of these TV actresses as a curvy role model for women?	CHRISTINA HENDRICKS
2144	In 2010, a fed-up flight attendant on what airline dramatically deplaned via an inflatable emergency chute?	JET BLUE
2145	In 2010, a U.S. assemblyman advocated a bill to allow the “Spanish pronunciation” of what state’s name?	NEVADA
2146	In 2010, actress Portia de Rossi petitioned to legally change her last name to what?	DEGENERES
2147	In 2010, after a young fan asked for help with a “mutiny,” Johnny Depp visited a U.K. school dressed as what character?	CAPTAIN JACK SPARROW
2148	In 2010, an out-of-control Amish teenager led police on a wild one-mile chase involving what?	HORSE-DRAWN BUGGY
2149	In 2010, Apple introduces a video calling service for the iphone 4 with what snappy name?	FACETIME
2150	In 2010, Elian Gonzalez announced he was thankful he had returned to what homeland 10 years earlier?	CUBA
2151	In 2010, for the first time in 27 years, the House of Reps censured one of its members, Charlie Rangel of what state?	NEW YORK
2152	In 2010, Louise Brown, the world’s first “test tube baby” turned what age?	32
2153	In 2010, Nicki Minaj became the first woman ever named to MTVs list of “hottest” what?	MCs
2154	In 2010, Oprah hosted a reunion special for “The Color Purple,” in which she talked about playing what role?	SOFIA
2155	In 2010, Reba McEntire won praise for cover of “If I Were a Boy,” originally a hit single by whom?	BEYONCE
2156	In 2010, Russell Brand and Katy Perry were quietly married near what country’s Rathambore tiger sanctuary?	INDIA
2157	In 2010, Target recalled a T-shirt featuring the now-banned flag of what country’s Francoist regime?	SPAIN
2158	In 2010, the Pentagon estimated that which poor nation is home to $1 trillion in untapped precious minerals?	AFGHANISTAN
2159	In 2010, Time.com announced the retirement of Takeru “Tsunami” Kobayashi, a legend in what field?	COMPETITIVE EATING
2160	In 2010, TV personality Jo Frost announced her retirement from what popular reality show?	SUPERNANNY
2161	In 2010, what actress became a mother again at the age of 48 when she gave birth to a boy named Benjamin?	KELLY PRESTON
2162	In 2010, what actress helped her 3-year old son launch his own Twitter account “Liam’s World?”	TORI SPELLING
2163	In 2010, what author revealed that he was writing his memoir about his years living under a “fatwa” death sentence?	SALMAN RUSHDIE
2164	In 2010, what comedienne became the first woman in 16 years to host MTV’s Video Music Awards?	CHELSEA HANDLER
2165	In 2010, what company’s founder surprisingly donated $100 million to the public schools of Newark, NJ?	FACEBOOK
2166	In 2010, what country’s cultural minister banned mullets and ponytails for men as being “decadent”?	IRAN
2167	In 2010, what formerly married couple announced their respective engagements within days of each other?	JESSICA SIMPSON & NICK LACHEY
2168	In 2010, what Fortune 500 company overtook Royal Dutch Shell to become the largest in the world?	WALMART
2169	In 2010, what openly graying sitcom star revealed, “I dyed my hair red the whole time I was on ‘Friends'”?	MATT LEBLANC
2170	In 2010, what philanthropist announced plans to give away 99 percent of his estimated $47 billion fortune?	WARREN BUFFETT
2171	In 2010, what political duo made headlines by divorcing after 40 years of marriage?	AL AND TIPPER GORE
2172	In 2010, what snack brand unveiled a new bag that, when crinkled, is reportedly louder than a jet cockpit?	SUN CHIPS
2173	In 2010, what “reality” show finale revealed that its last scene was actually filmed on a Hollywood set?	THE HILLS
2174	In 2010, which of these figures was vilified for his seemingly callous remark, “I’d like my life back”?	CEO OF BP
2175	In 2010, who coined the term “mama grizzly” to refer to the female political candidates she endorses?	SARAH PALIN
2176	In 2010, Whole Foods pulled what beverage from its shelves amid concerns over its high alcohol content?	KOMBUCHA
2177	In 2010, “Survivor:Nicaragua” was won by Jud Birza,a 21-year-old male model with with apt nickname?	FABIO
2178	In 2010,a single violinist set a world record by playing what frenetic classical piece in just over one minute?	FLIGHT OF THE BUMBLEBEE
2179	In 2010,actor Steve Carell announced he was leaving what TV show after the 2010/2011 season?	THE OFFICE
2180	In 2010,Alaska’s Lisa Murkowski became the first senate candidate since 1954 to do what?	WIN AS A WRITE-IN CANDIDATE
2181	In 2010,an Oregon man changed his name to “Captain Awesome” in honor of a character from what TV show?	CHUCK
2182	In 2010,an out-of-control Amish teenager led police on a wild one-mile chase while driving a what?	HORSE-DRAWN BUGGY
2183	In 2010,Angus T.Jones topped the list of “TV’s Richest Kids” for playing Jake Harper on what sitcom?	TWO AND A HALF MEN
2184	In 2010,Barbara Walters joked she chose a cow valve for her heart surgery over one from what non-kosher animal?	PIG
2185	In 2010,country star Kenny Chesney’s 40-acre home was all wet when floods washed over what city?	NASHVILLE
2186	In 2010,Doris Roberts reunited with “Raymond” castmate Patricia Heaton when she guest starred on what sitcom?	THE MIDDLE
2187	In 2010,Pennsylvania introduced machines that check customers’ breath and ID before vending what?	WINE
2188	In 2010,Rhonda Byrne released “The Power,” a follow-up to what controversial 2006 self-help book?	THE SECRET
2189	In 2010,Robert Halderman was sentenced to six months in jail for attempting to blackmail what late night comic?	DAVID LETTERMAN
2190	In 2010,the long-running “Cathy” comic strip ended,with Cathy making what revelation?	SHE’S HAVING A BABY GIRL
2191	In 2010,the media reported “World War I Officially Ends” after what country paid off its $33 billion war debt?	GERMANY
2192	In 2010,the New York Post reported a bank robber dressed as whom made off with an “Alderaan-sized wad of cash”?	DARTH VADER
2193	In 2010,the space shuttle Atlantis honored Isaac Newton by carrying what into space?	A PIECE OF AN APPLE TREE
2194	In 2010,the Triple-A team known as the Bisons celebrated its 125th season of professional baseball in what town?	BUFFALO,NY
2195	In 2010,two-year old Indonesian Ardi Rizal gained worldwide notoriety for doing what?	SMOKING 40 CIGARETTES PER DAY
2196	In 2010,video game fanatics lined up at midnight to buy the “Black Ops” sequel in what popular game series?	CALL OF DUTY
2197	In 2010,what 37-year-old model resigned her 13-year post as “Head Angel” of Victoria’s Secret?	HEIDI KLUM
2198	In 2010,what comic’s live talk about his novel “An Object of Beauty” was deemed so boring guests were offered refunds?	STEVE MARTIN
2199	In 2010,what country saw its first official state visit by a pope since breaking with the Vatican in 1534?	ENGLAND
2200	In 2010,what food mascot was given a makeover and new voice,courtesy of Robert Downey Jr.?	MR.PEANUT
2201	In 2010,what nation began a “convictourism” program to attract foreigners descended from long-ago prisoners?	AUTRALIA
2202	In 2010,what right-wing pundit started TheBlaze.com,his own conservative news website?	GLENN BECK
2203	In 2010,what Senate hopeful released an odd political ad in which she declared,”I’m not a witch”?	CHRISTINE O’DONNELL
2204	In 2010,what singer released an album featuring a philharmonic orchestra,aptly titled “Symphonicities”?	STING
2205	In 2010,what teen pop star’s fragrance line “My World”,debuted on scented wristbands at Walmart?	JUSTIN BIEBER
2206	In 2010,what word did Gawker coin for a star getting a “career bump without actually being an addict”?	PREHAB
2207	In 2010,what “tell-it-like-it-is” comedian replaced John O’Hurley as the host of TV’s “Family Feud”?	STEVE HARVEY
2208	In 2011, a religiously devout programmer released “Confession,” an iPhone app with what subtitle?	A ROMAN CATHOLIC APP
2209	In 2011, Newsweek artificially “aged” a photo of Princess Diana to suggest what she might have looked like at what age?	50
2210	In 2011, Rolling Stone named “Tubthumping,” “Barbie Girl” and “I’m Too Sexy” among the “Worst Songs of” what decade?	THE NINETIES
2211	In 2011, the child of what U.S. president released a timely memoir called “My Father at 100”?	RONALD REAGAN
2212	In 2011, the Oxford English Dictionary added an entry for “Dutch colonial,” a term used to designate a style of what?	ARCHITECTURE
2213	In 2011, TheOnion.com joked that what cereal was now being sold with “15 Percent Less Leprechaun Meat”?	LUCKY CHARMS
2214	In 2011, Time Magazine named what movie’s Jack Torrance as the “Worst Fictional Father” of all time?	THE SHINING
2215	In 2011, what British reality TV judge replaced Larry King upon his retirement from his nightly CNN show?	PIERS MORGAN
2216	In 2011, what country elected its first ever female prime minister, Yingluck Shinawatra?	THAILAND
2217	In 2011,a crashed truck in Georgia burst into flames because it was loaded with what highly flammable foodstuff?	MARGARINE
2218	In 2011,a national poll found that only 51 percent of Republicans knew that GOP stands for what?	GRAND OLD PARTY
2219	In 2011,a Utah KFC controversially donated $1 for every giant soda sold to help cure what sugar-sensitive disease?	DIABETES
2220	In 2011,actor Luke Wilson,rapper Snoop Dogg and comedian Amy Poehler all turned what age?	40 *CORRECT*
2221	In 2011,an actress identified only as “Jane Doe” sued the movie website IMDB.com for revealing her what?	AGE
2222	In 2011,Charlene Wittstock was compared to Grace Kelly when she married Prince Albert II of what small state?	MONACO
2223	In 2011,Derek Jeter became just the 28th player in the history of baseball to reach what number of career “hits”?	3000
2224	In 2011,FOX announced plans to remake what immensely popular Carl Sagan-hosted science series from 1980?	COSMOS
2225	In 2011,Google unveiled its new service Google+,meant to compete directly with what popular website?	FACEBOOK
2226	In 2011,Google’s home page logo featured an interactive six-string electric guitar in honor of what music legend?	LES PAUL
2227	In 2011,Heather Locklear announced her engagement to actor Jack Wagner,her co-star from what ’90s TV series?	MELROSE PLACE
2228	In 2011,Italian cops caught the mob boss of the Sicilian town of Corleone,the namesake of the crime family in what film?	THE GODFATHER
2229	In 2011,Jay Carney replaced Robert Gibbs as President Obama’s what?	PRESS SECRETARY
2230	In 2011,Keithroy Yearwood revealed that he was the baby on the cover of what rapper’s 1994 album “Ready to Die”?	NOTORIOUS B.I.G.
2231	In 2011,Lady Gaga’s single “Born This Way” was criticized as being a “rip-off” of what 1989 Madonna hit?	EXPRESS YOURSELF
2232	In 2011,raging wildfires in New Mexico forced what highly fortified government compound to evacuate?	LOS ALAMOS NATIONAL LAB
2233	In 2011,Rolling Stone named “Tubthumping,” “Barbie Girl” and “I’m Too Sexy” among the “Worst Songs of” what decade?	THE NINETIES
2234	In 2011,Seth Rogen and Ryan Reynolds both played movie superheroes with what colorful word in their name?	GREEN
2235	In 2011,Ted Danson replaced Laurence Fishburne on what popular crime drama?	CSI
2236	In 2011,the Department of Homeland Security did away with using which of these to indicate terrorism threat levels?	COLORS
2237	In 2011,the FDA banned the use of the words “waterproof” and “sweatproof” on what products’ labeling?	SUNSCREEN
2238	In 2011,the Smithsonian acquired pieces from the set of what classic TV show and “hippest trip in America”?	SOUL TRAIN
2239	In 2011,the U.S. Army announced that it was abandoning what type of hat as part of its official combat uniform?	BERET
2240	In 2011,TNT announced Larry Hagman would return to play J.R. Ewing in a “sequel” to what classic show?	DALLAS
2241	In 2011,what 66-year-old actress beat out Elle MacPherson to win L.A. Fitness’ “Body of the Year” poll?	HELEN MIRREN
2242	In 2011,what animal-centric film released a straight-to-DVD prequel subtitled “The Puppy Years”?	MARLEY & ME
2243	In 2011,what baseball Hall of Famer and Cardinals great was awarded the Presidential Medal of Freedom?	STAN MUSIAL
2244	In 2011,what car-centric city experienced “Carmageddon” when its 405 freeway was shut down for repairs?	LOS ANGELES
2245	In 2011,what classic ’80s movie was adapted into a television series on MTV?	TEEN WOLF
2246	In 2011,what country announced plans to close its notorious marijuana-peddling “coffee shops” to tourists?	THE NETHERLANDS
2247	In 2011,what late night funnyman consented to an on-air beard shaving by Will Ferrell?	CONAN O’BRIEN
2248	In 2011,what media mogul found himself in the center of a widespread phone-hacking scandal?	RUPERT MURDOCH
2249	In 2011,what name didn’t make Social Security’s list of Popular Baby Names for the first time since 1955?	ELVIS
2250	In 2011,what secretive leader revealed that he had actually relinquished his powers to his brother back in 2006?	FIDEL CASTRO
2251	In 2011,what Supreme Court justice opened up to the public about what it’s like to grow up with type 1 diabetes?	SONIA SOTOMAYOR
2252	In 2011,what TV actor’s costar quipped that he checks gossip news every day “to know if I have to go to work at all”?	CHARLIE SHEEN
2253	In 2012,Obama impressed spectators with his smooth vocals when he crooned “I’m so in love with you” from what song?	LET’S STAY TOGETHER
2254	In 2012,pop icon Beyonce gave birth to a daughter with what colorful,unusual name?	BLUE IVY
2255	In 2012,the daughter of which of these actors earned a “ticket to Hollywood” on “American Idol”?	JIM CARREY
2256	In 2012,the Girl Scouts marked their 100th anniversary with what new cookie,named for their founder’s hometown?	SAVANNAH SMILES
2257	In 2012,what celebrity chef stepped forward to reveal that she had been living with type-2 diabetes for years?	PAULA DEEN
2258	In 218 B.C., Hannibal and his army famously crossed	ALPS
2259	In 79 A.D., what major catastrophe resulted in the burial of the Roman cities of Pompeii and Herculaneum?	VOLCANIC ERUPTION
2260	In a criminal investigation, a person who is not quite a suspect but still sought by the police is often called a what?	PERSON OF INTEREST
2261	In a 1970 hit song, James Taylor sings, “I’ve seen fire and I’ve seen” what?	RAIN
2262	In a 1970 song by The Partridge Family, David Cassidy croons, “I think I” what?	LOVE YOU
2263	In a 1971 cult classic,what does an older woman say to a younger man when he says “I like you,Maude”?	I LIKE YOU,HAROLD
2264	In a 1971 hit song, Tom Jones sings, “Whoa, whoa, whoa!” “She’s a” what?	LADY
2265	In a 1974 Rolling Stones song,Mick Jagger sings, “I know it’s only” what “but I like it”?	ROCK ‘N’ ROLL
2266	In a 1983 hit single,”backstreet guy” Billy Joel states his intention to woo what kind of “Girl”?	UPTOWN
2267	In a 2002 hit, Grammy-winning artist John Mayer sings “your body is a” what?	WONDERLAND
2268	In a 2003 bestselling novel, Mitch Albom writes about “The Five People You Meet” where?	IN HEAVEN
2269	In a 2005 commencement speech at Stanford University, Steve Jobs famously told students to “Stay hungry, stay” what?	FOOLISH
2270	In a 2005 hit single,a hip-hop star raps “Call me George Foreman ’cause I’m sellin’ everybody” what?	GRILLZ
2271	In a 2006 film,it was revealed that which of these classic children’s book characters is actually named “Ted”?	THE MAN IN THE YELLOW HAT
2272	In a 2006 hit single,Justin Timberlake repeatedly claims to be “bringing” what “back”?	SEXY
2273	In a 2006 viral video,a Florida weatherman delivers a high-pitched squeal after encountering a what?	COCKROACH
2274	In a 2007 movie, Nicholas Cage plays Johnny Blaze, a fiery vigilante who is better known by what name?	GHOST RIDER
2275	In a 2008 book containing six-word memoirs, what celeb’s six-word memoir is “Brought it to a boil, often”?	MARIO BATALLI
2276	In a 2008 interview, who did Oprah ask, “If you could take it back, would you still jump on the sofa?”	TOM CRUISE
2277	In a 2009 documentary,comic Chris Rock examines the African-American fascination with what?	“GOOD HAIR”
2278	In a 2010 performance at the White House,who serenaded the First Lady with his 1965 song “Michelle”?	PAUL MCCARTNEY
2279	In a 2011 episode of “The View,” who confessed that she once worked as a phone sex operator?	WHOOPI GOLDBERG
2280	In a 2011 lottery drawing,41,763 people each won $150 by playing the mysterious numbers featured on what TV show?	LOST
2281	In a 2011 TV appearance,what rapper resorted to reading his own lyrics to “Don’t Stop The Party” from a cell phone?	WILL. I. AM
2282	In a Beverly Cleary book, Ramona Quimby famously misunderstands the instruction to “sit here for the” what?	PRESENT
2283	In a candid 2010 interview,Sylvester Stallone admitted that making which “Rocky” sequel was a “mistake”?	ROCKY V
2284	In a case of life imitating art,Charlie Sheen admitted he took steroids to enhance his performance in what movie?	MAJOR LEAGUE
2285	In a casino, someone who brings bad luck to a winning table is known as a what?	COOLER
2286	In a classic arcade game, a dot-devouring Pac Man is plagued by four ghosts who have all but which of these names?	SLINKY
2287	In a classic Biz Markie hip-hop song from 1989,the rapper sings in the chorus, “But you say he’s” what?	JUST A FRIEND
2288	In a classic nursery rhyme,who did Peter,Peter Pumpkin Eater keep in a pumpkin shell?	HIS WIFE
2289	In a classic series of TV ads, an unsuspecting customer’s coffee is secretly replaced with what brand?	FOLGERS
2290	In a classic “Twilight Zone” episode,a woman undergoes surgery to look “normal” among people who look like what?	PIGS
2291	In a cover of the song “Proud Mary,” Tina Turner sings “And we’re rolling,rolling,rolling on the” what?	RIVER
2292	In a familiar expression of caution, what phrase typically precedes “Twice shy”?	ONCE BITTEN
2293	In a famous ad campaign in the ’80s,what branch of the military wanted you to “be all you can be”?	ARMY
2294	In a famous opera by Mozart, a young lover is protected by the “magical” powers of what musical instrument?	FLUTE
2295	In a famous patriotic quote, Nathan Hale reportedly declared, “I only regret that I have but one” what “for my country”?	LIFE TO LOSE
2296	In a famous poem by Edgar Allen Poe, what animal repeatedly quoths the word “nevermore”?	RAVEN
2297	In a famous presidential speech,Franklin Roosevelt declared that Americans had a “rendezvous with” what?	DESTINY
2298	In a famous Robert Frost poem,a traveler finds “two roads diverged in a wood” and chooses which one?	THE ONE LESS TRAVELED BY
2299	In a famous scence from “Marathon Man,” Laurence Olivier tortures Dustin Hoffman,repeatedly asking him what?	IS IT SAFE?
2300	In a famous scene from the 1981 film “Mommie Dearest,” Joan Crawford berates her daughter for using what?	WIRE HANGERS
2301	In a formal place setting,where should a wine glass be positioned relative to the plate?	TOP RIGHT
2302	In a highly contentious verdict,Casey Anthony was found not guilty on all but which of these charges in 2011?	LYING TO POLICE
2303	In a hit song from 1982,Thomas Dolby revealed “She Blinded Me With” what?	SCIENCE
2304	In a hit song from the 1987 movie “Dirty Dancing,” a man and woman croon “Now I’ve had” what?	THE TIME OF MY LIFE
2305	In a hit song from the ’60s,a singer is “rockin’ and a-rollin'” and “rockin’ and a-rollin” over whom?	BARBARA ANN
2306	In a key scene from “Gone With The Wind,” Scarlett says “As God is my witness,i’ll never be” what?	HUNGRY AGAIN
2307	In a landmark congressional hearing, “Have you no sense of decency sir?” was asked of whom?	JOSEPH MCCARTHY
2308	In a lavish 2010 ceremony, Bill and Hillary Clinton’s only child married a man with what first name?	MARC
2309	In a memorable gaffe,the late Senator Ted Stevens famously referred to what technology as “a series of tubes”?	THE INTERNET
2310	In a memorable scene from the 1987 comedy “Spaceballs,” President Skroob gives orders to do what?	“COMB THE DESERT!”
2311	In a memorable scene from “Beverly Hills Cop,” what does Detective Axel Foley use to disable a car?	BANANAS
2312	In a memorable scene from “Mad Men,” Don Draper pitches what actual name for a Kodak slide projector?	THE CAROUSEL
2313	In a much-hyped 2010 event,Chelsea Clinton walked down the aisle in a wedding dress designed by whom?	VERA WANG
2314	In a newspaper, the section devoted to a list of incidents reported by the local police is called what?	POLICE BLOTTER
2315	In a newspaper,which of these features often contains a warning to readers called a “spoiler alert”?	MOVIE REVIEW
2316	In a nod to her Spice Girl nickname, Melanie Brown’s 2010 reality TV series is subtitled what?	IT’S A SCARY WORLD
2317	In a nod to her Spice Girl nickname,Melanie Brown’s 2010 reality series is subtitled what?	IT’S A SCARY WORLD
2318	In a nod to his job,New York’s Port Authority Bus Station features an 8-foot-tall statue of what classic TV character?	RALPH KRAMDEN
2319	In a nod to its home state of Pennsylvania, the “Keystone State,” what brand’s products have “keystone-shaped” labels?	HEINZ
2320	In a nod to its setting,what TV show’s theme song is performed by a band called the Scrantones?	THE OFFICE
2321	In a nod to one of Facebook’s most iconic features, a couple in 2011 gave their newborn daughter what first name?	SUBCOASTAL
2322	In a nod to one of Facebook’s most iconic features, a couple in 2011 gave their newborn daughter what first name?	LIKE
2323	In a nod to the bird depicted on its face, the dollar coin of Canada is affectionately known as what?	LOONIE
2324	In a nod to the venue where they were traditionally worn,women’s gloves that extend to the elbow are called what?	OPERA GLOVES
2325	In a non-leap year, April Fools’ Day would fall on what numerical day of the year?`	THE 91ST DAY
4998	Who is Rick Rubin?	MUSIC PRODUCER
2326	In a phrase credited to Thomas Carlyle,the field of economics is known by what gloomy nickname?	THE DISMAL SCIENCE
2327	In a pinch,which of these pantry staples can be used to put out a kitchen fire?	BAKING SODA
2328	In a popular version of the children’s tune “The Wheels on the Bus,” the “driver on the bus says” what?	MOVE ON BACK
2329	In a popular ’80s cartoon,what creatures often sing a catchy tune with the simple lyrics “La la la la la la,la la la la la”?	THE SMURFS
2330	In a popular ’80s TV theme,”you take the good,you take the bad,you take them both,and there you have” what?	THE FACTS OF LIFE
2331	In a public statement,Justin Timberlake famously blamed the 2004 Super Bowl halftime debacle on what?	WARDROBE MALFUNCTION
2332	In a recent fast food survey by Zagat,Five Guys defeated In-N-Out in what category?	BEST BURGER
2333	In a running joke,Bugs Bunny frequently finds himself in strange locations after taking a wrong turn in what city?	ALBUQUERQUE
2334	In a song title on Michael Jackson’s 1982 “Thriller” album, what do the initials “P.Y.T.” stand for?	PRETTY YOUNG THING
2335	In a standard Sudoku game, how many individual digits are there once the entire grid has been filled?	81
2336	In a T-bone steak, the meat is attached to what “T”-shaped bone?	VERTEBRA
2337	In a tradition inspired by the Bible, a sabbatical leave is usually taken once every how many years?	SEVEN
2338	In a typical symphony orchestra,what instrument is played by more musicians than any other?	VIOLIN
2339	In a V8 car engine,which of these components is arranged in a V-shaped pattern?	CYLINDER
2340	In a Web Site address,what punctuation marks immediately precede the “www”?	FORWARD SLASHES
2341	In a well-known expression.what two-word phrase typically follows the line “stick a fork in it”?	IT’S DONE
2342	In a well-known PSA, “Take a bite out of crime” is the motto of what trench coat-wearing “Crime Dog”?	MCGRUFF
2343	In a well-known scence from “Pretty Woman,” Julia Roberts’ character struggles with eating what delicacy?	ESCARGOT
2344	In a Youtube hit, the indie band OK Go performs an elaborate dance routine using what unlikely props?	TREADMILLS
2345	In addition to a golden globe,the Golden Globe Awards statuette features a what?	FILM STRIP
2346	In addition to being a popular playground attraction,a seesaw is an example of what type of simple machine?	FIRST-CLASS LEVER
2347	In addition to English,which of the following is an official language of Canada?	FRENCH
2348	In addition to golf,what other pro sport also hosts a well-known tournament called the “U.S. Open”?	TENNIS
2349	In addition to the weight of the human hand, the boy in “Jerry Maguire” also informs us that what animals “can smell fear”?	BEES AND DOGS
2350	In advertisements,what cosmetics brand promotes itself as “Easy,breezy,beautiful”?	COVERGIRL
2351	In Albert Einstein’s groundbreaking formula E=mc2, the “m” stands for what?	MASS
2352	In Dante’s “The Divine Comedy,” a sign at Hell’s entrance instructs “ye who enter here” to do what?	ABANDON ALL HOPE
2353	In Disney’s “Alice In Wonderland,” which extinct animal makes an appearance as a pipe-smoking nitwit?	DODO
2354	In Disney’s “Cinderella,” what phrase enables the Fairy Godmother to turn a pumpkin into a carriage?	BIBBIDI-BOBBIDI-BOO
2355	In criminal law, a plea of “nolo contendre” is more commonly known as a plea of “no” what?	CONTEST
2356	On an old-fashioned rotary phone,what number requires the longest turn of the dial?	0 *CORRECT*
2357	On an ’80s TV series, a plucky orphan named Penelope Brewster was better known as what?	PUNKY
2358	On average, what denomination of U.S. paper currency remains in circulation the longest?	100 DOLLAR BILL
2359	On average, what is the most abundant gas released into the atmosphere by a volcano?	WATER VAPOR
2360	On average,a healthy person’s resting heart rate falls into which of these ranges of “beats per minute”?	60-100 *CORRECT*
2758	The 1557 mile long Ganges River flows through what country/	INDIA
2361	On December 21, 1864, General Sherman’s famous “March to the Sea” concluded with the capture of what Southern city?	SAVANNAH
2362	On dress shirts,button-down,spread and tab are popular types of what?	COLLAR
2363	On food packaging, a circle with a “U” indicates that the food is certified as what?	KOSHER
2364	On HBO’s “Entourage,” movie star Vincent Chase stars in all but which of these fictional movies?	VALENTINO
2365	On his past troubles,who admitted to Leno on a 2011 “Tonight Show” appearance, “I realized I was pretty much LOSING”?	CHARLIE SHEEN
2366	On his show “Man v Food,” host Adam Richman won the “Davy Jones Locker Challenge” by eating 7 pounds of what?	SEAFOOD
2367	On his talk show “Maury,” host Maury Povich famously says to some of his guests “you are NOT” what?	THE FATHER
2368	On Home Depot’s web site, “islands” are items marked for what room of the house?	KITCHEN
2369	On March 4, 2010, baby Cecelia Marie Halpert was “born” on an emotional episode of what hit TV series?	THE OFFICE
2370	On television, Dr. Gregory House’s apartment number is “221B,” a nod to what famous literary sleuth’s address?	SHERLOCK HOMES
2371	On the 2010 Forbes 400 list, what billionaire identifies himself as residing in Medina, Washington?	BILL GATES
2372	On the 2010 Fortune Global 500 list of the world’s largest companies,3 of the top 4 are in what sector?	OIL
2373	On the cartoon series Scooby-Doo, Where Are You, which character usually wears an ascot?	FRED
2374	On the children’s TV “Dora the Explorer,” Dora’s best friend Boots is what kind of animal?	MONKEY
2375	On the classic sitcom “Happy Days,” what was the name of Richie’s practical joke-loving buddy,played by actor Don Most?	RALPH MALPH
2376	On the classic sitcom “I Love Lucy,” Lucy often went on auditions using what maiden name instead of Mrs. Ricardo?	MCGILLICUDDY
2377	On the classic TV series “The Brady Bunch,”what is the name of the Brady family dog?	TIGER
2378	On the classic TV series “Welcome Back Kotter” what subject did Mr. Kotter teach?	SOCIAL STUDIES
2379	On the E! reality TV series, “The Girls Next Door,” who are the girls next door?	PLAYBOY MODELS
2380	On the Fahrenheit scale, 98.6 degrees is generally considered to be what?	BODY TEMPERATURE
2381	On the FDA Nutrition Facts food label,the abbreviation “DV” stands for “daily” what?	VALUE
2382	On the front of a U.S. Social Security Card,what images appear on the left and right hand edges?	CLASSICAL COLUMNS
2383	On the Great Seal of the United States,the eagle holds in its beak a scroll bearing what Latin phrase?	E PLURIBUS UNUM
2384	On the human body, the area of skin known as “The T-zone” is located where?	FACE
2385	On the human body, the intercostal muscles are located where?	RIBS
2386	On the Internet, the abbreviation “LOL” typically denotes which of these emotional states?	AMUSEMENT
2387	On the New York Stock Exchange,what company uses the apt stock symbol “ZZ”?	SEALY
2388	On the pronunciation of her last name, what actress has explained that it’s “like the lettuce?”	REBECCA ROMIJN
2389	On the Simpsons, what member of the Simpson family is commonly seen sucking on a pacifier?	MAGGIE
2390	On the TV series “Community,” the main characters become friends after they all take part in a what?	SPANISH STUDY GROUP
2391	On the TV series “Diff’rent Strokes,” Arnold often poses what signature question to his brother,Willis?	WHAT’ CHU TALKIN’ ‘BOUT?
2392	On the TV series “Sesame Street,” what is the full name of the muppet known as The Count?	COUNT VON COUNT
2393	On the TV series “The Fugitive,” Dr.Richard Kimble pursues a man with what physical trait?	ONE ARM
2394	On the TV series “The Simpsons,” Marge has the same maiden name as what First Lady?	JACQUELINE KENNEDY
2395	On the TV show “Throwdown,” chefs are challenged to a cook-off of their signature dish by what star chef?	BOBBY FLAY
2396	On the TV sitcom “How I Met Your Mother,” what actor provides the voice of the unseen narrator?	BOB SAGET
2397	On the ’90s sitcom “Blossom,” Joey Lawrence’s character is known for what concise catchphrase?	WHOA!
2398	On the “Arsenio hall Show,” a special section of the studio audience was called a what?	DOG POUND
2399	On TLC’s “19 Kids & Counting,” all 19 children in the Duggar family have first names that begin with what?	J
2400	On TV’s “Family Guy,” creator Seth MacFarlane voices all but which of these members of the Griffin family?	CHRIS
2401	On TV’s “Glee,” the glee club’s main competition is a 26-member show choir at Carmel High named what?	VOCAL ADRENALINE
2402	On TV’s “The Muppet Show,” what muppet is often seen chained to his drum set?	ANIMAL
2403	On Twitter,a proper “Twaiku” poem consists of 140 characters or fewer and how many syllables?	17
2404	On what classic TV game show do contestants frequently chant “No Whammies”?	PRESS YOUR LUCK
2405	On what TV series do the judges regularly accuse the contestants of being “pitchy?”	AMERICAN IDOL
2406	On which date do all the places in the Earth experience 12 hours of daylight and 12 hours of darkness?	MARCH 21ST
2407	On “Gilligan’s Island,” Captain Jonas Grumby of the S.S. Minnow was known by what nautical nickname?	THE SKIPPER
2408	On “Saturday Night Live,” David Spade popularized the catchphrase “buh-bye” in his role as a what?	FLIGHT ATTENDANT
2409	On “The Lord of the Rings: The Return of the King” soundtrack, Renee Fleming sings in what language?	SINDARIN
2410	On “The Lord Of The Rings:The Return of The King” soundtrack,Renee Fleming sings in what language?	SINDARIN
2411	Once believed to ward off evil spirits,a Greek wedding tradition involves the ceremonious smashing of what?	PLATES
2412	Once dubbed “The Notorious B.A.G.” by the media, Brian Austin Green starred in what ’90s teen drama?	BEVERLY HILLS,90210
2413	Once dubbed “The Notorious B.A.G.” by the media,Brian Austin Green starred in what ’90s teen drama?	BEVERLY HILLS,90210
2414	Once featured on a TV infomercial, the Flowbee is a haircutting device that works with what household appliance?	VACUUM CLEANER
2415	Once ranked #1 for a record 237 weeks,tennis great Roger Federer hails from what country?	SWITZERLAND
2416	One of at least 50 children born to a construction mogul,Osama Bin Laden was,until 1994,a citizen of what country?	SAUDI ARABIA
2417	One of Hollywood’s funniest movie quotes,”Well,nobody’s perfect!” is the last line of what classic film?	SOME LIKE IT HOT
2418	One of the coaches on the talent show “The Voice,” Adam Levine is best known as the frontman for what rock band?	MAROON 5
2419	One of the great ’90s fashion fads, “Zubaz” were brightly-colored what?	PANTS
2420	One of the most translated books in the world, Anne Frank’s original diary was published in what language?	DUTCH
2421	One of the sport’s most famous players,Prince William captained what team at the University of St.Andrews?	WATER POLO
2422	One of the world’s steepest streets in a major city,Filbert Street is located where?	SAN FRANCISCO
2423	One of “The Real Housewives Of Beverly Hills,” Camille Grammer is the ex-wife of the star of what TV sitcom?	FRASIER
2424	One week comprises approximately what percentage of a year?	2%
2425	ontaining a purposely misspelled word, the title of Quentin Tarantino’s 2009 WWII epic is written how?	INGLORIOUS BASTARDS
2426	Opponents of genetically modified food often refer to it by what “scary” name?	FRANKENFOOD
2427	Opposed by Apple, using unapproved software on your iPhone is popularly referred to as what?	JAILBREAKING
2428	Oregon’s George Fox University is named in honor of the founder of what religious movement?	QUAKER
2429	Originally developed by NASA in the ’70s, memory foam is often used to make which of these household items?	MATTRESSES
2430	Originally en vogue in the early 1900s, a “craftsman” is a simplistic style of what?	HOUSE
2431	Originally made in Canada, canola is a vegetable oil made from what crop?	RAPESEED
2432	Originally made in Germany, traditional Rumple Minze schnapps is known for what distinctive flavor?	PEPPERMINT
2433	Originally sung by Peggy Lee and covered by Madonna, the song “Fever” mentions what famously amorous pair	ROMEO AND JULIET
2434	Originally used by American Indians,the term “pow-wow” is now mainly used to refer to a what?	MEETING
2435	Originally voiced by John Goodman, which of the five animated M&M’s “spokescandies” is a peanut M&M	YELLOW
2436	Originally,a “pound cake” recipe called for a pound of butter plus a pound of all but which of the following?	SALT
2437	Originating in Turkey, sultanas are a flavorful variety of what food?	RAISINS
2438	Orzo is a type of Italian pasta shaped like what?	GRAINS OF RICE
2439	Ossicones are hair-covered horns atop the head of which of these mammals?	GIRAFFE
2440	Other than Antarctica, what continent has the smallest population?	AUSTRALIA
2441	Out on parole since 2007,Sara Jane Moore spent decades in prison for trying to assassinate whom?	GERALD FORD
2442	Outraging conservationists, who said “A tree is a tree, how many more do you need to look at?”	RONALD REAGAN
2443	Over 17000 feet tall, Mount Kenya is the second highest mountain on what continent?	AFRICA
2444	Over 30 years ago, which of these Presidents signed legislation to immunize Americans from swine flu?	GERALD FORD
2445	Owned by Donald Trump, the Mar-a-Lago Club is a 126-room estate located in what resort town?	PALM BEACH
2446	Painted in 1893,the famous Edvard Munch painting “The Scream” depicts an organized figure holding his hands where?	ON HIS CHEEKS
2447	Paleontologists believe that which of these prehistoric animals were likely covered in feathers?	VELOCIRAPTOR
2448	Paris’s largest airport is named after what French leader?	CHARLES DE GAULLE
2449	Partly due to its rounded shape and leathery green skin,what fruit is also known as an “alligator pear”?	AVOCADO
2450	Passed by Congress in 1798, the Sedition Act focused on what problem?	TREASONOUS ACTIVITY
2451	Passed by the Senate in 2010,the CALM Act requires TV broadcasters to limit the volume of what?	COMMERCIALS
2452	Pastis,sambuca and ouzo are three similar liqueurs that all have what distinctive flavor?	ANISE
2453	Patagonian toothfish is served in restaurants under which of these more menu-friendly names?	CHILEAN SEA BASS
2454	Patellofemoral Pain Syndrome is an unpleasant sports injury commonly known as what?	RUNNER’S KNEE
2455	Patients who elect to have malar augmentation surgery wish to increase the size of their what?	CHEEKS
2456	Patty Hearst,Eddie Van Halen and John McEnroe all voiced “callers” on what TV sitcom?	FRASIER
2457	Payola is a type of illegal payment typically associated with what industry?	RADIO
2458	Pectin,a water-soluble carbohydrate,is an important ingredient in which of the following?	JELLY
2459	Peddled by a charismatic infomercial pitchman,the ShamWow! is primarily used for which of these tasks?	CLEANING UP LIQUIDS
2460	PEG’S LAW is a helpful mneumonic for remembering the names of the seven what?	DEADLY SINS
2461	People traveling abroad often use GSM cell phones that use what “System for Mobile Communications”?	GLOBAL
2462	People who are getting Xrays taken commonly wear protective bibs containing what metal?	LEAD
2463	People who are “cyberchondriacs” obsessively use the Internet to hunt for what?	MEDICAL INFORMATION
2464	People who generate their own electricity or go without it are said to live how?	OFF THE GRID
2465	People who selfishly prevent others from succeeding are sometimes compared to which of these animals “in a bucket”?	CRABS
2466	People would most likely use the mnemonic “Every good boy does fine” when doing what?	READING MUSIC
2467	Performed to assist breathing, a tracheotomy is a surgery on what part of the body?	WINDPIPE
2468	Perhaps alluding to the diets of very small children,deciduous or “baby” teeth are also known as what?	MILK TEETH
2469	Perhaps as a nod to its lead singer,what classic rock band titled one of its albums “Morrison Hotel”?	THE DOORS
2470	Perhaps because gin was invented by a physician in Holland,alcohol is sometimes referred to as what?	DUTCH COURAGE
2471	Perhaps because it’s so romantic,a full moon often triggers which of these sea creatures to reproduce?	CORAL
2472	Perhaps best known in its computerized version,Klondike is a popular variety of what card game?	SOLITAIRE
2473	Perhaps putting her classical music training to use,who composed the music for the 2011 Broadway play “Stick Fly”?	ALICIA KEYS
2474	Perhaps to distinguish themselves,certain ketchup packets boast what descriptive word on their label?	FANCY
2475	Perhaps to the chagrin of his female fans,in which of these movies does Brad Pitt not bare his backside?	INTERVIEW WITH THE VAMPIRE
2476	Philly locals order their city’s signature cheesesteak sandwich “wit” or “witout” what topping?	FRIED ONIONS
2477	Photos snapped in 1972 of Jane Fonda seated on an anti-aircraft gun earned the actress what infamous nickname?	HANOI JANE
2478	Physicist Stephen Hawking’s bestselling 1988 book on the cosmos is titled “A Brief History of” what?	TIME
2479	Piscivorous animals feed mainly on what?	FISH
2480	Pixar has won Academy Awards for all but which of the following?	BEST PICTURE
2481	Placing a blanket over a fire extinguishes it by robbing the flame of what gas?	OXYGEN
2482	Played by Brendan Fraser in a 1999 movie,Dudley Do-Right is a cartoon character with what unusual day job?	CANADIAN MOUNTIE
2483	Played by Garry Shandling,which of these iconic ’90s TV characters was a neurotic late-night TV host?	LARRY SANDERS
2484	Played by Honor Blackman,the provocatively named Pussy Galore is a character in what James Bond film?	GOLDFINGER
2485	Played by Jerry Ferrara,what is the name of Vincent Chase’s hapless sidekick on the HBO series “Entourage”?	TURTLE
2486	Played by Kim Fields for all 9 seasons, Tootie on TVs “The Facts of Life” has what real first name?	DOROTHY
2487	Played by Tony Shalhoub, the TV detective “Monk” suffers prominently from what medical condition?	OBSESSIVE-CUMPULSIVE DISORDER
2488	Playing himself,what TV actor pays for the burger feast at the end of “Harold & Kumar Go to White Castle”?	NEIL PATRICK HARRIS
2489	Pointe shoes,also known as “toe shoes,” are commonly used in what style of dance?	BALLET
2490	Pointillism,a painting technique involving tiny dots of color,was pioneered by what French artist?	GEORGES SEURAT
2491	Pope Benedict XVI is the first pope in centuries to come from what country?	GERMANY
2492	Popular as a pet,the colorful freshwater betta fish is more commonly known by what fanciful nickname?	SIAMESE FIGHTING FISH
2493	Popular at Christmas time,mistletoe plants normally have what color berries?	WHITE
2494	Popular at high school proms, an “upto” is a type of what?	HAIRSTYLE
2495	Popular during the Depression and making a comeback,which of these describes a type of installment purchase plan?	LAYAWAY
2496	Popular in Europe and the Middle East, the leeks belong to the same family as what other vegetable?	ONION
2497	Popular in France, a croque-monsieur is a heated sandwich traditionally filled with what?	HAM AND CHEESE
2498	Popular in homes in the state for which it’s named,an “Arizona Room” is a type of what?	SCREENED-IN PATIO
2499	Popular in India, a tandoor is a clay structure used for what purpose?	COOKING FOOD
2500	Popular in India, paneer is a type of what food?	CHEESE
2501	Popular in many states, “Click It or Ticket” campaigns encourage drivers to do what?	WEAR SEAT BELTS
2502	Popular in Russia,samovars are used primarily to do what?	BOIL WATER
2503	Popular in the American Southwest,a “sopaipilla” is best described as a what?	FRIED PASTRY
2504	Popular in the U.S.,the hip-hop infused music known as “reggaeton” originated in what part of the world?	LATIN AMERICA
2505	Popular in the world of hip-hop, Courvoisier is a nearly 200-year old brand of what liquour?	COGNAC
2506	Popular in the ’80s, “By Mennen” was a three-note jingle often heard at the end of commercials for what product?	DEODORANT
2507	Popular on college campuses, a capella singing is, by definition, performed how?	WITHOUT INSTRUMENTS
2508	Popular on the web, low-res animations that run a continuous loop are called what?	GIFS
2509	Popular with the MTV crowd,which of these rock bands derives its unusual name from “The Simpsons”?	FALL OUT BOY
2510	Popular with tourists,what U.S. city’s Chinatown features the famous thoroughfare Grant Avenue?	SAN FRANCISCO
2511	Popular with tweens, the RipStik is a brand of sporting equipment that resembles a what?	SKATEBOARD
2512	Popular with vacationing parents,a novelty souvenir item reads,”My parents went to___ and all I got was this lousy” what?	T-SHIRT
2513	Popularized by Audrey Hepburn,women’s shoes with short,slender heels are known as what?	KITTEN HEELS
2514	Popularized by celebrities like Madonna, Kaballah bracelets are made from what color string?	RED
2515	Popularized by celebrity chef Rachael Ray,the term “EVOO” is an abbreviation for a type of what?	OIL
2516	Popularly known as “SMU,” Southern Methodist University is located in what southern state?	TEXAS
2517	Possibly aided by Kate Middleton’s notable use of them, what leg wear is said to be making a comeback?	NUDE PANTYHOSE
2518	Posters of famous Irish writers proudly displayed in pubs often feature all but which of the following?	CHARLES DICKENS
2519	Practiced by samurai in feudal Japan,tessenjutsu is a martial art utilizing what seemingly feminine item as a weapon?	FAN
2520	Praised for her role on the sitcom “Up All Night,” Christina Applegate first won fame on what TV show?	MARRIED…WITH CHILDREN
2521	Premiering in 1997,what TV series was the first one-hour drama ever produced by HBO?	OZ
2522	Presented as a token of welcome to tourists visiting Hawaii,the “lei” is a garland of flowers commonly worn how?	AROUND THE NECK
2523	President Barack Obama was born during whose presidential administration?	LBJ
2524	President Barack Obama’s first name is derived from a Semitic word meaning what?	BLESSED
2525	President Bush gave his famous “Mission Accomplished” speech in 2003 aboard what aircraft carrier?	ABRAHAM LINCOLN
2526	President Obama’s speechwriter John Favreau, happens to share his name with the writer of what popular film?	SWINGERS
2527	President Obama’s speechwriter Jon Favreau happens to share his name with the writer of what popular film?	SWINGERS
2528	Presidents View Resort is a hotel with suites that look out at what national landmark?	MOUNT RUSHMORE
2529	Presumably named after the love of his life, “The Olive” is a boat belonging to what character?	POPEYE
2530	Prince Charles and Princess Diana officially divorced in 1996 after how many years of marriage?	15 *CORRECT*
2531	Prior to 2010’s “Love and Other Drugs,” Anne Hathaway and Jake Gyllenhaal appeared together in what film?	BROKEBACK MOUNTAIN
2532	Prior to becoming a world famous Italian tenor, Andrea Bocelli had what occupation?	LAWYER
2533	Prior to her career in television,Nancy Grace was licensed by the state of Georgia as a what?	PROSECUTOR
2534	Prior to his career as a TV journalist,George Stephanopoulos was a White House adviser to what U.S. president?	BILL CLINTON
2535	Prized by breeders for its intelligence and striking appearance,the Puli dog’s hair resembles what household item?	MOP
2536	Prized by collectors, $20 U.S. gold coins minted from 1849 to 1933 are known by what name?	DOUBLE EAGLES
2537	Prized for its agreeable temperament, the puggle is a cross between the pug and what other breed of dog?	BEAGLE
2538	Prized for its silk-producing abilities,the silkworm is the larva of what type of insect?	MOTH
2539	Produced in France since 1849, Cointreau is a popular liquor with what distinctive flavor?	ORANGE
2540	Produced in Germany, Maybach is a luxury brand of what?	AUTOMOBILE
2541	Proposition 8,California’s controversial 2008 ballot measure,dealt with what hot-button issue?	SAME-SEX MARRIAGE
2542	PSI, which stands for “pounds per square inch” is a unit commonly used for measuring what in cars?	TIRE PRESSURE
2543	Published in 1798,a well-known poem by Samuel Taylor Coleridge is titled “The Rime of the Ancient” what?	MARINER
2544	Published in 2004,”No Woman No Cry” is the memoir of what legendary singer’s widow?	BOB MARLEY
2545	Published in 2010, “Gunn’s Golden Rules” is a life lessons book by a TV personality from what reality show?	PROJECT RUNWAY
2546	Published in 2010,the memoir “You Don’t Know Me” was written by the son of what late musician?	RAY CHARLES
2547	Published in 2011,Stephen King’s “11/22/63” is a time travel novel that centers around what event in history?	JFK ASSASSINATION
2548	Purdue University is one of the largest public universities of what state?	INDIANA
2549	Pyrogeography is the study of what natural phenoma?	FIRES
2550	Pyrophoric substances are so reactive that exposure to air causes them to spontaneously what?	IGNITE
2551	Quicken computer software helps users do what?	MANAGE FINANCES
2552	R&B singer Robin Thicke is the son of a famous TV actor,best known for what ’80s sitcom?	GROWING PAINS
2553	Rainier cherries were named after a mountain in what U.S. state,where they were first grown?	WASHINGTON
2554	Ranch dressing,the popular salad topper,got its start at an actual California dude ranched named what?	HIDDEN VALLEY RANCH
2555	Randy Newman sings “Rollin’ down Imperial Highway” in a 1983 hit song titled “I Love” where?	L.A.
2556	Ranging in color from pale violet to deep purple,what is the traditional birthstone for the month of February?	AMETHYST
2557	Rap superstar Andre Young is better known by what name?	DR. DRE
2558	Rapper Pitbull is also known as “Mr.305” because he hails from what U.S. city?	MIAMI
2559	Rappers Jay-Z,Busta Rhymes and Notorious B.I.G. all once attended what city’s George Westinghouse High School?	NEW YORK
2560	Ratified in 1971,the 26th Amendment to the Constitution lowered the voting age to what?	18
2561	Real estate listings often describe a home requiring repairs as being in need of what?	TLC
2562	Recent health concerns about bisphenol A or BPA focus on the chemical’s presence in what everyday item?	PLASTIC DRINK BOTTLES
2563	Referenced in Shakespeare’s nickname “the bard of Avon,” the Avon is a what?	RIVER
2564	Referring to a meaningful science, the phrase “the dog that didn’t bark” derives from which fictional detective?	SHERLOCK HOLMES
2565	Referring to an old-fashioned term for feline appreciation,which of these is the name of a long-running magazine?	CAT FANCY
2566	Referring to its iconic founder, the first two letters in the firm today known as JP Morgan Chase stand for what?	JOHN PIERPONT
2567	Referring to powerful Internet servers that store and process data,a Microsoft tagline states, “To the” what?	CLOUD
2568	Referring to the plastic it’s made from, recyclable water bottles often feature what acronym?	PETE
2569	Reflecting its owners’ religious faith, what fashion retailer prints “John 3:16” on its yellow shopping bags?	FOREVER 21
2570	Reflecting on a subject he masters, Garry Kasperov’s 2007 book is titled “How Life Imitates” what?	CHESS
2571	Refusing the Secret Service,what First Lady was given her own gun and later wrote, ” I carried it religiously”?	ELEANOR ROOSEVELT
2572	Regardless of his name, a man without any clothes is cheekily said to be going “the full” what?	MONTY
2573	Regular brushing and flossing of the teeth are recommended measures for preventing what?	GINGIVITIS
2574	Reindeer are in the same species as which of these animals?	CARIBOU
2575	Released by Apple in 1998, which of these gadgets is the earliest?	IPOD
2576	Released posthumously in 2009, Michael Jackson’s single “This Is It” was co-written by what music legend?	PAUL ANKA
2577	Replacing Angela Merkel, in 2010, who topped Forbes’ list of “The World’s 100 Most Powerful Women”?	MICHELLE OBAMA
2578	Replacing the long-standing “food pyramid,” in 2011 what government agency introduced their “MyPlate” nutrition guide?	USDA *CORRECT*
2579	Reportedly created in the 18th Century for British citizens living abroad,an IPA beer stands for what?	INDIA PALE ALE
2580	Represented by a set of scales,what sign of the zodiac is derived from the Latin word for “pound”?	LIBRA
2581	Representing the number of letters in each word, “143” is a common text abbreviation for what phrase?	I LOVE YOU
2582	Requiring considerable skill and experience,”throwing” is a technique used in what artistic medium?	POTTERY
2583	Responding to charges that her cuisine leads to obesity,what TV chef once said “I’m your cook,not your doctor!”?	PAULA DEEN
2584	Responsible for “artist and repertoire,” an A & R person is a powerful figure in what industry?	MUSIC
2585	Resulting in a shiny sheen,which of the following is a step in the traditional process for making bagels?	BOILING THEM
2586	Resulting in a “pruney” look,fingertips get wrinkly after water has washed away what oily substance?	SEBUM
2587	Retired New York Yankees uniform number 3 belonged to which baseball great?	BABE RUTH
2588	Retired Supreme Court Justice John Paul Stevens was known for favoring which of these fashion items?	BOW TIES
2589	Retiring shortly after filming,what Oscar-winning actor’s final legacy is the 2004 comedy “Welcome to Mooseport”?	GENE HACKMAN
2590	Rice wine, sugar, and soy sauce are the three primary ingredients of what?	TERIYAKI SAUCE
2591	Rich Riordan’s best-selling kids book feature Percy Jackson’s adventures with what “fantastic” group	THE OLYMPIANS
3557	What gaseous element makes up about 70 percent of the mass of the Sun?	HYDROGEN
2592	Rick Riordan’s bestselling kids’ books feature Percy Jackson’s adventures with what “fantastic” group?	THE OLYMPIANS
2593	Ricky Gervais is the co-creator and star of the original,British version of what hit U.S. TV Show?	THE OFFICE
2594	Riffing on Scorsese,the 90’s cartoon “Animaniacs” featured the “Goodfeathers,” three pigeons who were also what?	GANGSTERS
2595	Robert Kardasian, the biological father of Kourtney, Kim, Khloe, and Robert Jr, was a well-known what?	ATTORNEY
2596	Ronald Reagan’s plainspoken and affable demeanor earned him the apt nickname “The Great” what?	COMMUNICATOR
2597	Ronald Reagan’s role in the 1940 movie “Knute Rockne: All American” earned him what nickname?	THE GIPPER
2598	Roughly 35 million men in the U.S. suffer from androgenetic alopecia,also known as “male pattern” what?	BALDNESS
2599	Roughly speaking,a typical commercial jet flying from New York to London cruises at what average airspeed?	550 MPH *CORRECT*
2600	Roz Doyle,a producer on the ’90s sitcom “Wings”,was the namesake for a character on what other sitcom?	FRASIER
2601	Rumspringa, meaning “running around,” is a freewheeling rite of passage for teens in what community?	AMISH
2602	Said by Sigmund Freud to determine personality,which of these is not one of his three “agencies” of the mind?	SUPERID
2603	Said to be invented by British officers in India in the 1800s, snooker is a form of what game?	BILLIARDS
2604	Said to belong to Saint Peter, Vatican City’s official flag depicts two crossed what?	KEYS
2605	Said to have been created by Ric Silver in 1976,the crowd-pleasing “Electric Slide” is what kind of dance?	LINE DANCE
2606	Said to have been ruled by Zeus,Mount Olympus is the highest mountain range in what country?	GREECE
2607	Said to have inspired the song “America The Beautiful,” Pikes Peak is part of what U.S. mountain range?	ROCKY
2608	Sampling a 1984 song and flipping the words in its title, Jay-Z had a top 40 hit in 2010 called what?	YOUNG FOREVER
2609	Sampling the soul classic “Try a Little Tenderness,” a 2011 song by rappers Jay-Z and Kanye West is named what?	OTIS
2610	San Francisco’s Ghirardelli Square is the longtime site of a factory that produces which of the following?	CHOCOLATE
2611	Sanskrit for “moon craft,” the Chandraayan I was the first lunar orbiter ever launched by what country?	INDIA
2612	Santa Domingo and Port-au-Prince,the capitals of two separate countries,are both located on what island?	HISPANIOLA
2613	Sapparo is a major city of what Asian country?	JAPAN
2614	Sapporo is a major city of what Asian country?	JAPAN
2615	Sarah Palin’s husband Todd is a four-time winner of the Iron Dog,the world’s longest what?	SNOWMOBILE RACE
2616	Sarah Silverman,Seth MacFarlane and Dwayne “The Rock” Johnson have all appeared on which of these TV franchises?	STAR TREK
2617	Sargent Shriver is best remembered for his role in creating what organization	PEACE CORPS
2618	Sassybax is a woman’s brand that sells which of these items?	BRAS
2619	Scandalous at the time,what was the first ballroom dance to feature couples facing each other in a “closed hold” position?	WALTZ
2620	Scholars and intellectuals are commonly said to reside in a tower made of what material?	IVORY
2621	Scientific American claims that flowers will stay fresh longer when placed in water mixed with which of these drinks?	VODKA
2622	Sean Parker,the founding president of Facebook,also helped create what early Internet success?	NAPSTER
2623	Seen at sporting events near you,MetLife Insurance’s blimp has what call sign?	SNOOPY ONE
2624	Seen in many still life paintings,a ewer is a decorative type of what household object?	PITCHER
2625	Seen in the 2012 Super Bowl halftime show,slacklining is an obscure version of what?	TIGHTROPE WALKING
2626	Seen on certain notorious celebrities,a SCRAM bracelet alerts authorities when the wearer does what?	DRINKS ALCOHOL
2627	Selling high-end cookware since 1972, the name of retail company Sur La Table in French means what?	ON THE TABLE
2628	Selling high-end cookware since 1972,the name of retail company Sur La Table is French for what?	ON THE TABLE
2629	Served on a poppy seed bun, a Chicago-style hot dog traditionally included all but which of these toppings?	KETCHUP
2630	Set in an L.A. office building,the 1979 novel “Nothing Lasts Forever,” is the basis for what ’80s action film?	DIE HARD
2631	Set in France,what Disney animated film includes a quick cameo of Belle from “Beauty and the Beast”?	THE HUNCHBACK OF NOTRE DAME
2632	Set in Hot Springs,Arkansas in 1959,”Billy Blythe” is a folk opera about which famous “Bill”?	BILL CLINTON
2633	Shakespeare’s “Romeo and Juliet” is set primarily in Verona,a city in what country?	ITALY
2634	Shaquille O ‘Neal and Robin Williams have both played which type of supernatural being on the big screen?	GENIE
2635	Sharing their name with a local river,Boston’s mass transit passes are officially called what?	CHARLIECARDS
2636	Shel Silverstein spent over 3 years on the bestseller lists with his 1981 book “A Light in the” what?	ATTIC
2637	Shel Silverstein spent over 3 years on the bestseller lists with his 1981 book “A Light in the” what?	ATTIC
2638	Shirt sleeves that are fastened with cuff links instead of buttons have what kind of “cuffs”?	FRENCH
2639	Short for “post cibum,” doctors use the abbreviation “p.c” to indicate that a prescription should be taken how?	AFTER MEALS
2640	Short for “Unterseeboot,” a U-boat is a German what?	SUBMARINE
2641	Short Shorts, a 1958 hit by The Royal Teens, was the basis for what drugstore brand’s classic TV jingle?	NAIR
2642	Shot in his hometown, Ben Affleck’s 2010 film “The Town” takes place in what U.S. city?	BOSTON
2643	Shredded cabbage is the main ingredient in which of these dishes?	COLESLAW
2645	Signed into law by Bill Clinton in 2000, the federal legal limit for blood alcohol content while driving is what?	0.08
2646	Silent film star Norma Talmadge started a Hollywood tradition after accidentally stepping in wet concrete outside what theater?	GRAUMAN’S CHINESE
2647	Silver amalgam,a combination of silver,mercury,copper and tin,is often used to make what?	CAVITY FILLINGS
2648	Silver-studded outfits and wide-brimmed hats are commonly worn by what type of musical groups?	MARIACHI BANDS
2649	Since 1911,which of these states has proudly featured a “Butter Cow” at its annual State Fair?	IOWA
2650	Since 1916, Nathan’s Hot Dog Eating Contest has been held annually at what iconic New York locale?	CONEY ISLAND
2651	Since 1925, what food has featured an image of a Native American woman on its packaging?	LAND O LAKES BUTTER
2652	Since 1934, the Masters Golf tournament has been held in what U.S. city?	AUGUSTA, GA
2653	Since 1935, Old Mr.Boston’s guide has been the official manual for professionals and amateurs in what field?	BARTENDING
2654	Since 1946, what slogan has appeared on the cover of Highlights for Children magazine?	FUN WITH A PURPOSE
2655	Since 1950, the College World Series has been played annually in which Midwestern city?	OMAHA, NE
2656	Since 1950,the World Cup’s men soccer championship has been played how often?	EVERY FOUR YEARS
2657	Since 1951,what company has sponsored the popular “Hall of Fame” series of TV movies?	HALLMARK
2658	Since 1955, what has been the highest prize awarded at the Cannes Film Festival?	GOLDEN PALM
2659	Since 1963, “To protect and to serve” has been the official motto of which of these organizations?	LAPD
2660	Since 1980,what award has honored the worst in Hollywood filmmaking?	GOLDEN RASPBERRY
2661	Since 1985, what magazine has a regularly published “Sexiest Man Alive” issue?	PEOPLE
2662	Since 1988,the brand Acuvue has billed itself as introducing the world’s first disposable what?	CONTACT LENS
2663	Since 1990, over one-third of all shark attacks worldwide have occurred off the coast of what state?	FLORIDA
2664	Since 1991,high school students have competed in a National Science Bowl sponsored by what U.S. department?	ENERGY
2665	Since 1991,the Burning Man festival has been held in the late summer in what U.S. state?	NEVADA
2666	Since 1996,the White Wave company has produced Silk,a popular brand of which of these health foods?	SOY MILK
2667	Since 1998, Fox has aired a morning show titled “Fox and” what?	FRIENDS
2668	Since 1998,compilation CDs filled with pop music hits have been sold in the U.S. under what emphatic name?	NOW THAT’S WHAT I CALL MUSIC!
2669	Since 2000, the logo for the online company MSN has featured a multicolored image of what animal?	BUTTERFLY
2670	Since 2001,Apple has named the different versions of its popular MAC OS X operating system after various what?	BIG CATS SPECIES
2671	Since 2001,Gillette has offered a popular line of women’s razors named after what mythological figure?	VENUS
2672	Since 2002, what movie star has been a global spokesperson for cell phone provider T-Mobile?	ZETA JONES
2673	Since 2002,Carson Daly has hosted a very late night show with what apt name?	LAST CALL
2674	Since 2003,Anderson Cooper has hosted a CNN news program with what numerical title?	ANDERSON COOPER 360
2675	Since 2003,the Heart Truth campaign has presented a NY fashion show in which celebrities don what color dresses?	RED
2676	Since 2003,what company has employed the advertising slogan “Imagination at work”?	GENERAL ELECTRIC
2677	Since 2004,the FDA has allowed the use of fly larvae,or maggots,for what medical purpose?	CLEANING OUT WOUNDS
2678	Since 2007,diminutive personality Chuy Bravo has starred as the sidekick to what late night talk show host?	CHELSEA HANDLER
2679	Since 2008,what U.S. pro sport has held an annual outdoor game at the start of the year called the “Winter Classic”?	HOCKEY
2680	Since 2008,”Mustang”,a 32-foot-tall sculpture of a blue horse,has stood beside the terminal of what city’s airport?	DENVER
2681	Since Greek times, valerian root has been used to treat what condition?	INSOMNIA
2682	Since the 1920s,what sport has held an amateur tournament known as the “Golden Gloves”?	BOXING
2683	Since the mid 1970s, singer Tom Petty has performed with what musical band?	THE HEARTBREAKERS
2684	Since the show premiered in 2002,”CSI:Miami” has used what song by The Who as its opening theme?	WON’T GET FOOLED AGAIN
2685	Single Awareness Day, or SAD is often celebrated as a humorous alternative to what holiday?	VALENTINE’S DAY
2686	Sipping water through a straw is a very basic example of what scientific principle at work?	SUCTION
2687	Site of the French Open,the tennis courts of Roland Garros feature clay surfaces of what color?	RED
2688	Sixth-grader Harriet M. Welsch is the heroine of the classic children’s book “Harriet the” what?	SPY
2689	Slangily used to describe a curvaceous woman, the Yiddish word “zaftig” literally means what?	JUICY
2690	Slated to open in 2013,the Louvre Abu Dhabi, like its Paris counterpart,will be an enormous what?	MUSEUM
2691	Some of the world’s oldest paintings are France’s Lascaux cave paintings which primarily depict what?	ANIMALS
2692	Someone or something that is given up for the common good is often called the “sacrificial” what?	LAMB
2693	Someone who compliments you by saying they like “the cut of your jib” is using a phrase borrowed from what field?	SAILING
2694	Someone who fixes things using makeshift items is often jokingly compared to what popular TV character?	MACGYVER
2695	Someone who has declared his candidacy for elected office is said to be “throwing his hat” where?	INTO THE RING
2696	Someone who is being unrealistically optimistic is said to be “whistling” what song?	DIXIE
2697	Someone who is constantly at the gym is known by what unflattering name?	GYM RAT
2698	Someone who is naive or gullible is often described as having “fallen off the” what?	TURNIP TRUCK
2699	Someone who is “lily-livered” exhibits what unflattering trait?	COWARDICE
2700	Someone who performs a handspring properly will finish by landing on what part of his or her body?	FEET
2701	Someone who repeatedly tries to revive interest in a hopeless issue is said to be “beating a” what?	DEAD HORSE
2703	Sometimes taking human form, the “smoke monster” is a mysterious character on what TV drama?	LOST
2704	Sometimes used with historical dates, the abbreviation “B.C.E.” stands for “Before the Common” what?	ERA
2705	Song parodist Alfred Matthew Yankovic is better known by what nickname?	WEIRD AL
2706	Sort of in between two colors, rose wine by definition has what type of hue?	PINKISH
2707	Soviet Lt. General Mikhail Kalashnikov is today best remembered for inventing a widely used type of what?	ASSAULT RIFLE
2708	Specializing in grilled cheese sandwiches,the Arkansas food truck Grillenium Falcon pays homage to what film franchise?	STAR WARS
2709	Spider Spud and Optimash Prime are movie-themed updates of what classic toy?	MR. POTATO HEAD
2710	Sported by celebrities like Billy Ray Cyrus, a “soul patch” is a type of what?	BEARD
2711	Standard issue for sailors and preppies,which of these shoes was designed to be worn on boats?	TOP-SIDERS
2712	Starring Bruce Willis, the 2010 film “RED” features CIA agents who are “Extremely Dangerous” as well as what?	RETIRED
2713	Starring Jack Black, the 2010 3D comedy “Gulliver’s Travels” is a twist on whose classic tale?	JONATHAN SWIFT
2714	Starring Jeff Bridges,the 2010 film “True Grit” is a reworking of a 1969 film that won what actor his only Oscar?	JOHN WAYNE
2715	Starring Rob Lowe,the 2012 Lifetime movie “Drew Peterson: Untouchable” is about a man accused of what heinous crime?	MURDERING HIS WIFE
2716	Starting a Victorian fad diet craze,Horace “The Great Masticator” Fletcher said weight could be lost simply by doing what?	CHEWING
2717	Starting from the bottom, what is the order of colors found in traditional candy corn?	YELLOW, ORANGE, WHITE
2718	Steak tartare consists of seasoned beef served in what distinctive manner?	UNCOOKED
2719	Steffi Graf,Jennifer Capriati and Lindsay Davenport have all won Olympic gold medals in what sport?	TENNIS
2720	Stephen King’s short story “The Body” was the basis for what popular ’80s movie?	STAND BY ME
2721	Steve Martin,Chevy Chase and Martin Short don sombreros on the movie poster for what 1986 comedy?	THREE AMIGOS!
2722	Still popular today,C.M. Coolidge’s famous paintings of dogs playing poker were originally advertisements for what?	CIGARS
2723	Strike one the umpire said,” is a line from what famous poem?	CASEY AT THE BAT
2724	Struggling with health issues,what author had the habit of penciling in a daily weight record on his bathroom wall?	ERNEST HEMINGWAY
2725	Substituting basketball for battle,the musical Lysistrata Jones is an adaptation of an ancient Greek play by whom?	ARISTOPHANES
2726	Subway performer and 2010 “America’s Got Talent’ contestant Alice Tan Ridley is the talented mother of what actress?	GABOUREY SIDIBE
2727	Successful in her own right,Gayle King is perhaps most famous for her enviable position of being what?	OPRAH’S BEST FRIEND
2728	Suffered by many babies, colic is an unexplained condition characterized by long bouts of what?	CRYING
2729	Suffered by marathoners,hyponatremia is a serious medical condition that occurs if you do what?	DRINK TOO MUCH WATER
2730	Sugar magnate Henry Tate is the founder and namesake of a noted art gallery located in what city?	LONDON
2731	Suggestive of fiery rumors and exciting deals, which of these terms refers to baseball’s off-season?	THE HOT STOVE LEAGUE
2732	Sunni is the largest denomination of what religion?	ISLAM
2733	Super-bowl winning coach Jimmy Johnson made his debut on what reality TV show in 2010?	SURVIVOR
2734	Superstars in Great Britain,the celebrity couple “Posh and Becks” is one pop singer and one what?	SOCCER PLAYER
2735	Sushi-rolling mats are commonly made from which of these materials?	BAMBOO
2736	Suspense novelist Robert Ludlum created what well-known movie character?	JASON BOURNE
2737	Taken from a Greek myth about a man forced to roll a boulder uphill forever, a tough-never-ending job is called what?	SISYPHEAN
2738	Taken from Greek mythology,the term “Achilles’ heel” is synonymous with what?	FATAL WEAKNESS
2739	Taken from “Leave It To Beaver,” the label “June Cleaver” typically refers to what TV stereotype?	PERFECT HOUSEWIFE
2740	Taking advantage of Rocco DiSpirito’s skill set,a 2011 Bravo reality show is aptly titled “Rocco’s” what?	DINNER PARTY
2741	Taking its name from the “thirty-mile zone” around Hollywood, TMZ.com is devoted to what subject?	CELEBRITY GOSSIP
2742	Tattooed on Angelina Jolie’s back are the words “Know Your Rights,” the title of a 1982 song by what band?	THE CLASH
2743	Teased for it on “Saturday Night Live,”what actress appears in a series of TV ads for Activia yogurt?	JAMIE LEE CURTIS
2744	Teen superstar Miley Cyrus dances in and around a cage in her music video aptly titled “Can’t be” what?	TAMED
2745	Ten years before Lindsay Lohan faced similar charges,what actress was arrested for shoplifting from Saks in 2001?	WINONA RYDER
2746	Texan humorist Kinky Friedman once noted, “Y’all is singular. All y’all is plural.All y’all’s is” what?	PLURAL POSSESSIVE
2747	Texas humorist Kinky Friedman once noted, “Y’all is singular. All ya’all is plural. “All ya’alls is” is what?	PLURAL POSSESIVE
2748	Thanks to a ban on 100-watt incandescent light bulbs,what classic children’s toy was redesigned in 2011?	EASY-BAKE OVEN
2749	Thanks to a curious Supreme Court ruling in 1922,what’s the only pro sport with an antitrust exemption?	BASEBALL
2750	Thanks to Dwayne Wayne, what TV show helped popularize “flip-up” sunglasses in the 1980s?	A DIFFERENT WORLD
2751	Thanks to Dwayne Wayne,what TV show helped popularize “flip-up” sunglasses in the 1980s?	A DIFFERENT WORLD
2752	Thanks to its function, not flavor, rock salt is a key part of a traditional method for making homemade what?	ICE CREAM
2753	Thanks to its most common host, the bloodsucking arachnid Ixodes scapularis is more commonly known as the what?	DEER TICK
2754	Thanks to its most common host,the bloodsucking arachnid lxodes scapularis is more commonly known as the what?	DEER TICK
2755	Thanks to microorganisms that collect in their paws,many dogs’ feet have a distinctive odor known as what?	FRITO FEET
2756	Thanks to the availability of both silk and bamboo, the kite was invented in what country?	CHINA
2757	The 1-wood golf club, used to strike the ball long distances, is better known by what name?	DRIVER
2759	The 16th-century Italian scientist Gabriel Fallopius is famous for his work in what field?	ANATOMY
2760	The 1920 play “R.U.R” by the Czech writer Karel Capek is credited with introducing what technological term?	ROBOT
2761	The 1929 stock market crash occurred in what month of the year?	OCTOBER
2762	The 1938 “War of the Worlds” radio broadcast convinced listeners that what event had taken place?	ALIEN INVASION
2763	The 1954 work “Flag” was the first in a famous series of paintings by what American artist?	JASPER JOHNS
2764	The 1960 Hitchcock masterpiece “Psycho” has the odd distinction of being the first U.S. film to show what onscreen?	TOILET BEING FLUSHED
2765	The 1964 Tonkin Gulf Resolution is located for a body of water located off the coast of which of these countries?	VIETNAM
2766	The 1974 book “Alive” documents the aftermath of a plane crash in the Andes survived by teammates in what sport?	RUGBY
2767	The 1975 documentary “Grey Gardens” follows the two Edith Beales, the eccentric relatives of which First Lady?	JACQUELINE KENNEDY
2768	The 1980 Devo song “Whip It” suggests a person must “whip it” in all but which of these scenarios?	WHEN LIFE GIVES YOU A GONG
2769	The 1983 holiday film “A Christmas Story” memorably features a kitsch floor lamp in the shape of a what?	WOMAN’S LEG
2770	The 1986 movie “Sid and Nancy” chronicles a brief period in the life of a musician from what rock band?	THE SEX PISTOLS
2771	The 1986 Tom Cruise movie “The Color of Money” centers around what high-stakes game?	POOL
2772	The 1986 “Weird Al ” Yankovic song “Addicted to Spuds” parodies a hit tune by what pop singer?	ROBERT PALMER
2773	The 1990 film that made Julia Roberts a superstar takes its name from the title of what Roy Orbison song?	OH,PRETTY WOMAN
2774	The 1998 animated movie “The Prince of Egypt” tells the story of which of these biblical figures?	MOSES
2775	The 2002 film “Windtalkers” details the true story of how U.S. soldiers used what language as a code during World War II?	NAVAJO
2776	The 2002 music video for The White Stripes’ “Fell in Love With a Girl” solely features what toys?	LEGOS
2777	The 2002 of TV’s “Celebrity Boxing” famously featured a bout between Tonya Harding and what infamous person?	PAULA JONES
2778	The 2006 movie “Dreamgirls” stars what pop singer as Deena Jones,the leader of a 1960s soul trio?	BEYONCE
2779	The 2007 finance book “Grande Expectations,” chronicles what U.S. company’s stock prices?	STARBUCKS
2780	The 2008 autobiography “Audition” chronicles the storied career of what female journalist?	BARBARA WALTERS
2781	The 2008 bestseller “The Story of Edgar Sawtelle” features a title character who is what?	MUTE
2782	The 2008 book “The Encyclopedia Shatnerica” is about an actor who starred in what classic TV show?	STAR TREK
2783	The 2009 animated film “Fantastic Mr.Fox” is based on a 1970 children’s book by whom?	ROALD DAHL
2784	The 2009 bestseller “The Accidental Billionaires”is an account of what Web company’s founding?	FACEBOOK
2785	The 2009 documentary “The Agony and the Ecstasy of Phil Spector” examines the downfall of a famous what?	MUSIC PRODUCER
2786	The 2010 Ben & Jerry’s flavor “Hannah Teter’s Maple Blondie” honors an Olympic medalist in what sport?	SNOWBOARDING
2787	The 2010 Bravo Series “Bethenny Getting Married” is a spin-off of what “Real Housewives” edition?	NEW YORK CITY
2788	The 2010 comedy “Vampires Suck” is a movie spoof that pokes fun at which of these film franchises?	TWILIGHT
2789	The 2010 documentary “4192:The Crowning of the Hit King” examines the career of what legendary athlete?	PETE ROSE
2790	The 2010 documentary “The Tillman Story” explores the death of a U.S. soldier who gave up a career in what?	PROFESSIONAL FOOTBALL
2791	The 2010 documentary “When You’re Strange” features unseen footage of what classic rock band?	THE DOORS
2792	The 2010 headline “Chaz is the Man” refers to the recent major life change of what pop diva’s eldest child?	CHER
2793	The 2010 memoir “Confessions of a Prairie Bitch” was written by an actress who played what bratty TV character?	NELLIE OLESON
2794	The 2010 movie “The Social Network” tells the real-life story of the young founders of what wildly popular website?	FACEBOOK
2795	The 2010 “Under the Boardwalk” documentary tracks the evolution and popularity of which classic board game?	MONOPOLY
2796	The 2011 book “Rawhide Down” details the attempted assasination of which U.S. president?	RONALD REAGAN
2797	The 2011 film “Conan the Barbarian” reintroduces a character first made famous by what action star in 1982?	ARNOLD SCHWARZENEGGER
2798	The 2011 film “The Descendants” features George Clooney as the head of an old family in what exotic location?	HAWAII
2799	The 2011 reality show “La La’s Full Court Life” follows the former VJ and her marriage to what NBA player?	CARMELO ANTHONY
2800	The 2012 TV show “Smash” features a TV actor playing a Broadway actor playing what famous movie actor?	MARILYN MONROE
2801	The 2014 Winter Olympic Games will mark the first time women will be able to compete in which of these disciplines?	SKI JUMPING
2802	The 70s sitcom “Good Times” centers on a family with what last name?	EVANS
2803	The A&E Web series “Hammertime” centers on the life and family of a musician best known for what ’90s megahit?	U CAN’T TOUCH THIS
3558	What government agency has the ominous nickname “The Agency”?	CIA
2804	The ab exercise that involves lying facedown and extending the arms forward over the head is aptly called what?	THE SUPERMAN
2805	The ABC series that features jilted contestants from “The Bachelor” and “The Bachelorette” has what title?	BACHELOR PAD
2806	The actor who played Capt. James T. Kirk on TV’s “Star Trek” also played which of these TV cops?	T.J. HOOKER
2807	The addictive jingle “I want my baby back” refers to what Chilli’s Grill & Bar dish?	RIBS
2808	The adrenal,thyroid and pituitary glands are important components of what bodily system?	ENDOCRINE
2809	The American Dialect Society’s 2006 Word of the Year “to pluto” something means to do what to it?	DEVALUE IT
2810	The American Film Institute lists what movie’s “Juror #8” as one of the top fifty movie heroes of all time?	12 ANGRY MEN
2811	The American Heart Association says the average adult heart pumps about how much blood each day?	2000 GALLONS
2812	The ampersand symbol,used to mean “and,” was designed to look like what two letters combined?	E AND T
2813	The animated spokesbird Sonny often spouts the catchphrase “I’m cuckoo for” what?	COCOA PUFFS
2814	The animated TV series “The Flintstones” was based on what earlier TV series?	THE HONEYMOONERS
2815	The anise-flavored liqueur ouzo is a traditional drink of what country?	GREECE
2816	The annual World Ice Art Championship in Fairbanks,Alaska is primarily a competition in what artistic discipline?	SCULPTING
2817	The anterior fontanelle usually knows as “the soft spot”is located where on a newborn baby?	TOP OF THE HEAD
2818	The April 1972 issue of Cosmopolitan sold over 1.5 million copies, thanks to a nude centerfold of whom?	Burt Reynolds
2819	The aptly named town of Thermopolis,Wyoming boasts that it is home to the world’s largest what?	MINERAL HOT SPRING
2820	The aptly titled comic strip “B.C.” primarily features what people as its main characters?	CAVEMEN
2821	The aptly titled memoir “Many Unhappy Returns” was written by a former commissioner of what agency?	IRS
2822	The art of trimming shrubs and trees into sculpture-like shapes is known as what?	TOPIARY
2823	The artist Selena won multiple awards for her performances in which genre of music?	TEJANO
2824	The assassination of Archduke Francis Ferdinand is widely considered the event that triggered what war?	WORLD WAR I
2825	The Australian flag features what country’s flag in its upper left-hand corner?	UNITED KINGDOM
2826	The author of the 2010 bestseller “Chelsea Chelsea Bang Bang” also has which of these jobs?	TALK SHOW HOST
2827	The award-winning British TV drama “Downton Abbey” begins in the year 1912,with news of what historic event?	SINKING OF THE TITANIC
2828	The award-winning British TV drama “Downtown Abbey” begins in the year 1912,with news of what historic event?	SINKING OF THE TITANIC
2829	The band Pink Floyd is known for augmenting its concerts with a giant inflatable replica of what animal?	PIG
2830	The birthplace of actress Portia de Rossi, Geelong is a port city located where?	AUSTRALIA
2831	The border of a standard U.S. Social Security card is what color?	BLUE
2832	The bounty hunger Dwayne Chapman, star of an A & E reality series, is better known by what nickname?	DOG
2833	The bounty hunter Duane Chapman, star of an A&E reality series, is better known by what nickname?	DOG
2834	The brainy video game “Portal 2” utilizes the conservation of momentum and other principles from what field of study?	PHYSICS
2835	The brand Seven for All Mankind is best known for its high-end brand of what?	JEANS
2836	The Bravo series “Bethenney Getting Married?” and “Bethenney Ever After” feature a cast member of what “Real Housewife” edition?	NEW YORK CITY
2837	The Broadway musical “American Idiot” is a stage adaptation of a popular album by what band?	GREEN DAY
2838	The Broadway musical “Spamalot” is a stage adaptation of what classic movie comedy?	MONTY PYTHON & THE HOLY GRAIL
2839	The cable series “American Chopper” features a father and son who specialize in what?	CUSTOMIZING MOTORCYCLES
2840	The caduceus, a staff entwined with two serpents, is the symbol for what profession?	MEDICINE
2841	The Cape Hatteras Lighthouse,the tallest in the nation,lights up the coast of what U.S. state?	NORTH CAROLINA
2842	The capital letter-heavy album “NKOTBSB” features 5 hits from New Kids On The Block and what other band?	BACKSTREET BOYS
2843	The card game canasta shares its name with a Spanish word meaning what?	BASKET
2844	The Caribbean’s Virgin Islands are divided between the U.S. and what European country?	UNITED KINGDOM
2845	The catastrophic 2010 BP oil spill resulted from the explosion of an offshore drilling rig with what name?	DEEPWATER HORIZON
2846	The catchphrase “to boldly go where no man has gone before” features what grammatical problem?	SPLIT INFINITIVE
2847	The center of the human body is found at which of these body parts?	BELLY BUTTON
2848	The championship thoroughbred horse Zenyatta takes its name from the title of what ’80s band’s third album?	THE POLICE
2849	The chant “Donna Martin graduates” will resonate with fans of what ’90s TV show?	BEVERLY HILLS,90210
2850	The Chinook salmon is the official state fish of what two U.S. states?	ALASKA AND OREGON
2851	The chorus of the song “Home on the Range” mentions what pair of playful animals?	DEER AND ANTELOPE
2852	The city of Karachi is located in what country?	PAKISTAN
2853	The city’s tallest building until 2007,One Liberty Place is a 61-story skyscraper located where?	PHILADELPHIA
2854	The Clara Barton National Historic Site was both her home and an early headquarters for what organization?	AMERICAN RED CROSS
2855	The classic 1969 movie “Easy Rider” features two men riding cross-country by what?	MOTORCYCLE
2856	The classic ads for the drugstore brand Nair stirred scantilly-clad women chanting “We wear” what?	SHORT SHORTS
2857	The classic Burberry check is a famous plaid pattern that features all but which of these colors?	EMERALD
2858	The classic game show “Press Your Luck” features an array of greedy,animated gremlins known as what?	WHAMMIES
2859	The classic jingle for Toys R Us begins with the line “I don’t want to” do what?	GROW UP
2860	The classic sitcom “Seinfeld” is often referred to as “a show about” what?	NOTHING
2861	The classic song “Chattanooga Choo Choo” immortalized a train station located in what Southern state?	TENNESSEE
2862	The classic song “Chattanooga Choo Choo” immortalized a train station located in what Southern state?	TENNESSEE
2863	The classic TV series “Mister Rogers’ Neighborhood” was filmed at the WQED studios located in what U.S. city?	PITTSBURGH
2864	The co-founder of Caterpillar Inc. was inducted into the National Inventors Hall of Fame for his work on what?	TRACTORS
2865	The coldest NFL game in history, the 1967 championship Ice Bowl was played where?	LAMBEAU FIELD
2866	The combined populations of China and India make up approximately what percentage of the world’s total?	35 PERCENT
2867	The comic book superhero Wonder Woman is best known for traveling how?	IN AN INVISIBLE PLANE
2868	The concert films “Delirious” and “Raw” feature memorable stand-up comedy routines by whom?	EDDIE MURPHY
2869	The Congress member who officially assists a majority or minority leader has what violent-sounding title?	WHIP
2870	The Conquistadors were 16th-century New World adventurers native to what European country?	SPAIN
2871	The controversial 1915 movie “The Birth of a Nation” depicts what historical event?	CIVIL WAR
2872	The copying method that gave rise to Xeroxes,”xerography” derives its name from Greek words meaning what?	DRY WRITING
2873	The country name “Argentina” derives from the Latin word for what chemical element?	SILVER
2874	The cover of what band’s debut album appropriately features a picture of the ill-fated Hindenburg?	LED ZEPPELIN
2875	The cover of what band’s debut album appropriately features a picture of the ill-fated Hindenburg?	LED ZEPPELIN
2876	The cry “eureka!” comes from a Greek word meaning “I have” what?	FOUND IT
2877	The dandelion gets its name from the corruption of the French phrase meaning “lion’s” what?	TOOTH
2878	The dapper board game mascot Mr. Monopoly typically sports all but which of the following?	MONACLE
2879	The Darien Gap,the only break in the highway system that runs from Alaska to Chile,lies between what two countries?	PANAMA AND COLOMBIA
2880	The dating site ScientificMatch.com differs from other sites because it makes matches with the aid of what?	DNA ANALYSIS
2881	The deliciously wicked TV drama “Revenge” is set among the wealthy elite of what seaside town?	THE HAMPTONS
2882	The dinar is the official currency of several countries in what region of the world?	MIDDLE EAST
2883	The director of what 2010 film has said in interviews that he often gets asked, “Does the top ever stop spinning?”	INCEPTION
2884	The double bass is a low-pitched member of what musical instrument family?	STRING
2885	The drink known as “Bloody Mary” shares its name with the nickname of what famous woman?	MARY TUDOR
2886	The drug morphine is named after Morpheus,the Roman god of what?	DREAMS
2887	The Dutch painter Vermeer is perhaps most famous for his portrait called “Girl with a” what?	PEARL EARRING
2888	The Earth’s equator passed through all but which of these oceans?	ARCTIC
2889	The Eighth Amendment to the Constitution prohibits any punishments that are “cruel or” what?	UNUSUAL
2890	The Enlightenment was an 18th century movement also commonly known as the “Age of ” what?	REASON
2891	The ensemble cast of the 2010 comedy “Grown Ups” reunites all but which of these fellow SNL alums?	KEVIN NEALON
2892	The ensemble cast of the 2010 comedy “Grown-ups” reunites all but which of these SNL alums?	KEVIN NEALON
2893	The Euphrates river runs through which of these countries?	IRAQ
2894	The expression “I’ll be a monkey’s uncle” was popularized by skeptics of what scientist’s theories?	CHARLES DARWIN
2895	The expression “Perfect Storm” is widely believed to have been coined by what bestselling author?	SEBASTIAN JUNGER
2896	The expression “top brass” originally referred to the decorative gold braids worn by whom?	MILITARY OFFICERS
2897	The family drama “7th heaven” launched the acting career of which of these Hollywood starlets?	JESSICA BIEL
2898	The family drama “7th Heaven” launched the acting career of which of these Hollywood stars?	JESSICA BIEL
2899	The famous Lincoln-Douglas debates took place in 1858 between two men running for what office?	U.S. SENATOR
2900	The famous line “Et tu,Brute?” is most likely to be used to accuse someone of being a what?	TRAITOR
2901	The famous logo of Playboy Magazine depicts the stylized head of a rabbit wearing what?	BOW TIE
2902	The famous presidential declaration “The only thing we have to fear is fear itself” was in response to what crisis?	THE GREAT DEPRESSION
2903	The famous train robber Butch Cassidy headed up a loosely organized group of outlaws known as what?	THE WILD BUNCH
2904	The famous unsolved murder of actress Elizabeth Short inspired what 1987 James Ellroy novel?	THE BLACK DAHLIA
2905	The famous ’80s quote “Mr.Gorbachev,tear down this wall” referred to a wall in what country?	GERMANY
2906	The famous “Warren Commission” was created in order to investigate what American crisis?	THE JFK ASSASSINATION
2907	The fantastical lands of Gondor,Mordor,and the Shire feature prominently in what author’s fiction?	J.R.R. TOLKIEN
2908	The Federal Pell Grant Program is a financial program that provides government money to fund what?	COLLEGE EDUCATION
2909	The feel-good adjective “Cabraesque” is derived from the last name of a famous what?	MOVIE DIRECTOR
2910	The female star of the 2010 movie “Date Night” is also the star of what TV show?	30 ROCK
2911	The first Chinese NBA all-star ever,Yao Ming retired in 2011 after spending eight seasons with what team?	HOUSTON ROCKETS
2912	The first female to receive the honor, Kathryn Bigelow received a Best Director Oscar in 2010 for what film?	THE HURT LOCKER
2913	The first jersey ever retired in MLB history,the uniform number 4 belonged to what Yankees legend?	LOU GEHRIG
2914	The first jigsaw puzzles were developed in 18th-century England as a tool for teaching what subject?	GEOGRAPHY
2915	The first musical to win a Pulitzer Prize, “Of Thee I Sing” takes its title from a lyric in what patriotic song?	MY COUNTRY ‘TIS OF THEE
2916	The first thirteen games of the ancient Olympics featured what sole event?	FOOTRACE
2917	The first U.S. presidential election in which Barack Obama was eligible to vote was won by whom?	RONALD REAGAN
2918	The first word of the national anthem of the U.S., “O say, can you see,” is what part of speech?	INTERJECTION
2919	The five interlocking rings on the Olympic flag are representative of what?	CONTINENTS
2920	The Flemings and the Walloons are the two predominant cultural groups of what country?	BELGIUM
2921	The fortune-telling die inside the Magic 8-ball toy is an icosahedron,meaning it has how many sides?	20
2922	The French Open is played on tennis courts with what surface?	CLAY
2923	The French phrase “fin de siecle” would most likely refer to the events occurring in which of these years?	1899
2924	The French phrase “Tous pour un, un pour tous” is the motto of what legendary fictional group?	THE THREE MUSKETEERS
2925	The full title of the R.E.M. song “It’s The End of the World As We Know It” contains what parenthetical phrase?	(AND I FEEL FINE)
2926	The game of Scrabble contains only one tile of each of the following rarely used letters,except for which?	Y *CORRECT*
2927	The game Uno has rules similar to what children’s card game?	CRAZY EIGHTS
2928	The German company Wusthof is primarily known as a maker of high-end what?	KITCHEN KNIVES
2929	The Golden Gate Bridge is painted a distinctive cover officially known as “international” what?	ORANGE
2930	The gossip Web site wwtdd.com or “What Would Tyler Durden Do?” references a character from what film?	FIGHT CLUB
2931	The gossip Web site wwtdd.com,or “What Would Tyler Durden Do?,” references a character from what film?	FIGHT CLUB
2932	The government agency known informally as the “VA” primarily serves people who have done what?	SERVED IN THE MILITARY
2933	The government-sponsored company known as Fannie Mae specializes in helping people do what?	BUY HOMES
2934	The Grammy-winning soundtrack to “O brother, where art thou?” features the music of what genre?	BLUEGRASS
2935	The Great Expectations boat ride is an attraction at a British theme park inspired by whom?	CHARLES DICKENS
2936	The Greek mythical sea creature hippocampus lends its name to what animal’s scientific genus?	SEAHORSE
2937	The hammer,anvil and stirrup are common names for the three bones located in what part of the body?	EAR
2938	The hat dance is a popular folk dance of what country?	MEXICO
2939	The head chef of a restaurant is often assisted by a person with what title?	SOUS-CHEF
2940	The high school dance known as “prom” is actually short for what word?	PROMENADE
2941	The History Channel’s docu-series “Swamp People” follows the day-to-day lives of alligator hunters in what U.S. state?	LOUISIANA
2942	The holiday classics “Jingle Bell Rock” and “Santa Baby” were first recorded in what decade?	1950’S *CORRECT*
2943	The house in the background of the painting “American Gothic” stood in the artist’s home state of what?	IOWA
2944	The husband and wife duo of Julius and Ethel Rosenberg made headlines in the 1950s as what?	SOVIET SPIES
2945	The iconic logo for Paramount Pictures features the summit of a mountain encircled by 22 what?	SNOWFLAKES
2946	The iconic phrase “The Eagle has landed” is forever linked to what historic event?	FIRST MOON LANDING
2947	The iconic picture of Bruce Spingsteen’s butt that appears on his “Born In The U.S.A.” album was taken by whom?	ANNIE LEIBOVITZ
2948	The iconic Umbrella Girl who appears on the Morton Salt label wears what color dress?	YELLOW
2949	The iconic “Fail Whale”image sometimes appears during periods of high traffic on what popular Internet site?	TWITTER
2950	The idea of mise en place,meaning “everything in place,” is of utmost importance to what type of professionals?	CHEFS
2951	The idea that tiny actions can lead to big,unexpected effects far away is popularly known as what?	THE BUTTERFLY EFFECT
2952	The impolite act of leaving a social gathering without telling your friends is slangily known as a what?	IRISH GOODBYE
2953	The infamous 1994 court case of Liebeck v. McDonald’s was fought over the temperature of what menu item?	COFFEE
2954	The infamous general Napoleon is mentioned in the opening line of what ABBA song?	WATERLOO
2955	The infamous “Rat Pack” originated in the ’50s as a circle of what famous actor’s friends?	HUMPHREY BOGART
2956	The inspiration for the trademarked term “Botox,” Botulinum toxin is commonly used to treat what?	MUSCLE SPASMS
2957	The interior of a fiber-optic cable is usually made out of what substance?	GLASS
2958	The interjection “ahem” is meant to imitate the sound a person makes while doing what?	CLEARING HIS THROAT
2959	The international runaway bestseller “The Girl With The Dragon Tattoo” takes place in what country?	SWEDEN
2960	The interrobang is a fabricated punctuation mark that combines an exclamation point with a what?	QUESTION MARK
2961	The island nation of St Kitts and Nevis is located in what body of water?	CARIBBEAN SEA
2962	The Italian dish carpaccio is traditionally made from thin slices of what?	RAW BEEF
2963	The Italian word “piazza” means what?	OPEN SQUARE
2964	The jazz style known as Dixieland originated in the early 20th century in what Southern city?	NEW ORLEANS
2965	The Jewish holiday Passover celebrates the exodus of the Israelites from where?	EGYPT
2966	The Kathy Bates quip “Every time an Oscar is given out,an agent gets his wings” plays on a famous line from what film?	IT’S A WONDERFUL LIFE
2967	The Labrador Retriever is a dog breed named after an Eastern region of what country?	CANADA
2968	The lambada is a spirited ballroom dance originating in what country?	BRAZIL
2969	The landmark Supreme Court decision that made interracial marriage legal in the U.S. has what apt name?	LOVING V.VIRGINIA
2970	The largest of the all parrots, the hyacinth macaw’s plumage is what distinctive color?	DEEP BLUE
2971	The largest population of manatees in the U.S. lives primarily in the coastal waters of what state?	FLORIDA
2972	The Latin abbreviation “cf” is typically used to mean what?	COMPARE
2973	The Latin phrase “mea culpa” is closest in meaning to which of these modern slang phrases?	MY BAD
2974	The legendary Heisman trophy features a helmeted player in what distinctive pose?	GIVING A STIFF_ARM
2975	The letter “S” is directly printed on individual pieces of what brand of candy?	SKITTLES
2976	The letters in the ubiquitous delivery service UPS stand for “United” what?	PARCEL SERVICE
2977	The Lhasa apso is a dog originally bred to guard temples and monasteries in what part of the world?	TIBET
2978	The Lido deck on a cruise ship takes its name from a historic seaside resort area in what city?	VENICE,ITALY
2979	The life of Maureen Marder,a construction worker and exotic dancer,inspired what ’80s movie?	FLASHDANCE
2980	The logo for the Goodyear tire company features the winged foot of what Roman god?	MERCURY
2981	The logo of the Shell oil company is a stylized image of what kind of shell?	SCALLOP
2982	The long-running CBS drama “NCIS” is a spin-off of what other long-running TV series?	JAG
2983	The long-time running prime time soap “Knots Landing” was a spin-off of what other long-time soap?	DALLAS
2984	The longtime spokesman for Motel 6,Tom Bodett ad-libbed the famous slogan, “We’ll” do what “for you”?	LEAVE THE LIGHT ON
2985	The lowest possible temperature, 0 Kelvin is commonly known as what?	ABSOLUTE ZERO
2986	The lyrics of the rock song “White Rabbit” make several references to what author’s children’s book?	LEWIS CARROLL
2987	The magazine “Decanter” promotes itself as the “bible” for collectors and connoisseurs of what?	WINE
2988	The manipulative killer in the “Saw” series of horror movies is known by what nickname?	JIGSAW
2989	The members of the European Union that collectively use the euro are often referred to collectively as the what?	EUROZONE
2990	The members of the ’70s pop group ABBA collectively have as many legs as which of these animals?	SPIDER
2991	The military vehicle known as the Humvee first saw U.S. combat action in 1989 in what foreign country?	PANAMA
2992	The minute hand of a clock points to the number 3 at which of these times?	21:15:00
2993	The monthly magazine “Cuesport” is primarily targeted toward enthusiasts of what game?	POOL
2994	The moon is roughly how far from the Earth?	240,000 MILES
2995	The mortarboard hat seen at graduations shares its name with a tool used by which of these craftsmen?	STONEMASON
2996	The Mossad is the secret intelligence service of what country?	ISRAEL
2997	The movie poster for what Best Picture winner features a man sitting alone on a park bench?	FORREST GUMP
2998	The movie “Steel Magnolias” is often credited with a surge in popularity of what type of cake,popular in the South?	RED VELVET CAKE
2999	The movies “Spider-Man” and “Breakfast at Tiffany’s” both feature what cinematic cliche?	KISS IN THE RAIN
3000	The MTV reality show “The Challenge” began as a combination of “The Real World” and what other show?	ROAD RULES
3001	The murder trials of Belva Gaertner and Beulah Annan inspired what Best Picture winner?	CHICAGO
3002	The musical acts that compete on NBC’s reality show “The Sing-Off” all have what defining characteristic?	A CAPELLA
3003	The musical duo Sugarland are chart-topping artists in what musical genre?	COUNTRY
3004	The musical scores of the “Charlie Brown” animated TV series notably feature what genre of music?	JAZZ
3005	The musical “Camelot,” which debuted on Broadway in 1960,features what legendary figure as the lead role?	KING ARTHUR
3006	The musical “Million Dollar Quartet” depicts a legendary 1956 jam session by all but which of these artists?	ROY ORBISON
3007	The musical “West Side Story” is based on what Shakespearean tragedy?	ROMEO AND JULIET
3008	The name for a food item popular in China, “bok choy” literally means what?	WHITE VEGETABLE
3009	The name of a famous grocery brand, “Spam” is a combination of “ham” and what word?	SPICED
3010	The name of a popular menu item at Taco Bell, “gordita” is a Spanish word that literally means what?	FATTY
3011	The name of a song from the popular musical “The Sound of Music,” edelweiss is a type of what?	FLOWER
3012	The name of a type of Asian dumpling, “won ton” is Chinese for what two words?	CLOUD, SWALLOW
3013	The name of Louisiana’s state capital,Baton Rouge,is a French phrase meaning what?	RED STICK
3014	The name of Oregon’s capital city can be found embedded within the name of which of these world cities?	JERUSALEM
3015	The name of the holiday Kwanzaa comes from the Swahili phrase “matunda ya kwanza,” which means what?	FIRST FRUITS
3016	The name of the Italian opera house La Scala means what in English?	THE STAIRCASE
3017	The name of the restaurant chain Au Bon Pain is a French expression meaning “place of good” what?	BREAD
3018	The name of what basic component in nature is derived from a Greek term meaning “indivisible”?	ATOM
3019	The name of what headgear is derived from an old Persian term meaning “to tie”?	TURBAN
3020	The national program of medicare was established during the term of what U.S. president?	LYNDON B. JOHNSON
3021	The nautical term “starboard” refers to what part of the ship?	RIGHT SIDE
3022	The NBA’S Philadelphia 76ers are named for the year what historic document was signed?	DECLARATION OF INDEPENDENCE
3023	The newspaper term “Op-Ed” means what?	OPPOSITE THE EDITORIAL PAGE
3024	The nickname “Fergie” is shared by both a hip-hop star and a famous ex-royal who holds what title?	DUCHESS OF YORK
3025	The Nile Basin constitutes roughly 10% of the total area of what world continent?	AFRICA
3026	The Notable Names Database,or nndb.com,lists what historic woman’s job experience as “Cake proponent”?	MARIE ANTOINETTE
3027	The numbered spaces on a standard roulette wheel fittingly add up to what sinful number?	666
3028	The Obama administration often points out that Warren Buffet pays a lower tax rate than Debbie Bosanek,his what?	SECRETARY
3029	The Obama girls attend Sidwell Friends, a D.C. school founded by a member of what religious group?	QUAKER
3030	The official cocktail of the annual Preakness Stakes horse race shares its name with what flower?	BLACK-EYED SUSAN
3031	The official flag of the European Union features a ring of twelve gold stars on a field of what color?	BLUE
3032	The official logo for the Girl Scouts of the U.S.A. features a picture of what?	GIRLS’ SILHOUETTED FACES
3033	The official slogan of the United States Blind Golf Association is “You Don’t Have To See It To” what?	TEE IT
3034	The old farming adage “knee high by the fourth of July” usually refers to the approximate height of what crop?	CORN
3035	The OPEC Oil cartel includes member nations from all but which of these continents?	EUROPE
3036	The Oregon state flag features an emblem on the front and image of what animal on the back?	BEAVER
3037	The original cover art of the children’s classic “Charlotte’s Web” features all but which of the following?	A TOAD
3038	The original “Lost in Space” TV series,which debuted in 1965,is set in what “futuristic” year?	1997 *CORRECT*
3039	The Oscar-winning film “No Country for Old Men” was adapted from a novel by what author?	CORMAC MCCARTHY
3040	The outlaw Robert Ford is remembered as a “coward” for doing what to his gang leader Jesse James?	SHOOTING HIM IN THE BACK
3041	The Parris Island Marine Corps Recruit Depot is located in what state?	SOUTH CAROLINA
3042	The philosophical issue of “determinism” is devoted to questioning whether humans are born with what?	FREE WILL
3043	The phrase “Dawn of a new era” includes the names of two popular brands of what?	CLEANING PRODUCTS
3044	The phrase “get out of Dodge” is commonly believed to refer to a city in what U.S. state?	KANSAS
3045	The phrase “going against the grain” originally referred to a more difficult method of doing what?	CUTTING WOOD
3046	The phrase “long in the tooth” comes from what animal’s tendency to have receding gums as it ages?	HORSE
3047	The phrase “Pike’s Peak or Bust!” was a popular slogan for settlers who moved to Colorado looking for what?	GOLD
3048	The phrase “Quality is Our Recipe” is part of the logo of what fast-food chain?	KFC
3049	The plots of the 2010 romantic comedies “The Back-Up Plan” and “The Switch” both revolve around what medical procedure?	ARTIFICIAL INSEMINATION
3050	The Polar Rim section of the San Diego Zoo houses an exhibit featuring which of these animals?	REINDEER
3051	The polemonium plant derives its common nickname from a Biblical story about a “ladder” seen by whom?	JACOB
3052	The pop singer Fergie has what lesser-known first name?	STACY
3053	The popular burrito chain Chipotle is named after a type of what?	PEPPER
3054	The popular drink known as an “Arnold Palmer” is typically made with equal parts iced tea and what?	LEMONADE
3055	The popular lunch meat baloney,sometimes spelled bologna,takes its name from a city in what country?	ITALY
3056	The popular slang term “nom,” which refers to eating something yummy, derives from what Sesame Street character?	COOKIE MONSTER
3057	The popular video game “Grand Theft Auto IV” is set in what fictional metropolis?	LIBERTY CITY
3058	The popular Web show “Easy to Assemble” is appropriately set at what distinctive retail spot?	IKEA
3059	The popular web show “Easy to Assemble” is appropriately set at what distinctive retail spot?	IKEA
3060	The position of “long snapper” plays a key,if understated role in which of these team sports?	FOOTBALL
3061	The practice of performing in public places for tips and gratuities is known as what?	BUSKING
3062	The practice of tightly wrapping an infant with blankets to prevent the movement of limbs is known as what?	SWADDLING
3063	The prestigious Juno Award is the Canadian equivalent of what American honor?	GRAMMY
3064	The prevailing shrub of the Great Basin Desert, sagebrush is the official flower of what U.S. state?	NEVADA
3065	The product of two negative numbers is always what?	A POSITIVE NUMBER
3066	The punny 1966 Time Magazine headline “Truman’s Compote” combines an author’s name and a type of what?	DESSERT
3067	The punny 1966 Time Magazine headline “Truman’s Compote” combines an author’s name and a type of what?	DESSERT
3068	The Queen song “Bohemian Rhapsody” mentions which of these great thinkers in its lyrics?	GALILEO
3069	The real-life town of Hameln,Germany,is famous as the site of a folk tale starring what legendary figure?	PIED PIPER
3070	The rebellious “Beat Generation writers flourished in the U.S. during which of these decades?	1950s
3071	The recipe for eggs Benedict traditionally calls for what type of meat?	HAM
3072	The Red Cross estimates that how much blood is collected during a typical donation?	1 PINT
3073	The reflective surface of a CD usually consists of an extremely thin layer of what metal?	ALUMINUM
3074	The result of strong solar flares that scientists fear could destroy power grids,an “EMP” is a what?	ELECTROMAGNETIC PULSE
3075	The retailer Burberry is known for accenting its garments with tan,black,white and red in what trademark pattern?	PLAID
3076	The romantic comedy “Sleepless In Seattle” ends with Meg Ryan and Tom Hanks finally meeting atop what landmark?	EMPIRE STATE BUILDING
3077	The Rosetta stone is a famous ancient artifact that features writing in Egyptian and what other language?	GREEK
3078	The ruins of the ancient city of Pompeii are located in what country?	ITALY
3079	The Salton Sea is a large salt lake located in what U.S. state?	CALIFORNIA
3080	The sartorius,the longest muscle in the human body,is located where?	THIGH
3081	The Scoville scale, used to measure the “zing” of chili peppers, rates which of these peppers the hottest?	HABENERO
3082	THE SEC is a government agency that was established in response to what national event?	1929 STOCK MARKET CRASH
3083	The second half of each episode of TV’s “Law & Order” focuses on the efforts of what professionals?	DISTRICT ATTORNEYS
3084	The Secret Service reportedly refer to Malia and Sasha Obama by what code names?	RADIANCE & ROSEBUD
3085	The section of New York’s Central Park known as “Strawberry Fields” memorializes a member of what iconic band?	THE BEATLES
3086	The series finale of “The Sopranos” ended with Tony engaging in what decidedly un-mob-like activity?	EATING ONION RINGS
3087	The Showtime series “Episodes” stars what “Friends” star as a lightly fictionalized version of themselves?	MATT LEBLANC
3088	The Silver Bullet Band is the longtime backing band of what popular musician?	BOB SEGER
3089	The Sinai Peninsula is a triangular piece of land that connects what two continents together?	ASIA AND AFRICA
3090	The sinking of the Lusitania ocean liner hastened the U.S.’s entry into what war?	WORLD WAR I
3091	The site of a 1969 political scandal, Chappaquiddick Island connects to what larger island?	MARTHA”S VINEYARD
3092	The site of a big loss for Colonel Cluster,Wyoming’s Little Bighorn is which of the following?	A RIVER
3093	The site of a famous 1839 slave mutiny,the 19th-century ship La Amistad has a name that means what in Spanish?	FRIENDSHIP
3094	The site of the Wright Brothers historic first flight,Kitty Hawk is located in what U.S. state?	NORTH CAROLINA
3095	The sketch comedy series “Portlandia” pokes fun at hipsters residing in what state’s most populous city?	OREGON
3096	The slang term “El Lay” phonetically spells out the abbreviation for what state’s most populated city?	CALIFORNIA
3097	The slogan “This machine kills fascists” often appeared on the guitars of what musician?	WOODY GUTHRIE
3098	The slogan “Untouched by Man” is used to advertise which of these grocery store products?	FIJI WATER
3099	The slogan, “Liberte,Egalite,Fraternite” appears on euro coins minted in what country?	FRANCE
3100	The snail Bufonaria borisbeckeri was named by a German researcher in honor of a champion in what sport?	TENNIS
3101	The son of a jazz promoter,Billy Crystal was taken to his first movie by what legendary singer?	BILLIE HOLIDAY
3102	The song “Do-Re-Mi” in “The Sound of Music” teaches us that all but which of the following are music syllables?	LO
3103	The song “Over The River and Through The Woods” was originally an 1844 poem about what holiday?	THANKSGIVING
3104	The sounds of what London landmark were first broadcast over BBC radio on New Year’s Eve to ring in 1924?	BIG BEN
3105	The Spanish warning “Esta caliente” often appears on which of these containers?	COFFEE CUP
3106	The Spanish-American War began in 1898 as an intervention by the United States on behalf of what country?	CUBA
3107	The square dance move “do-si-do” is derived from the French phrase “dos-a-dos,” which translates to what?	BACK-TO-BACK
3108	The star of her own cable TV reality series, Rachel Zoe is best known for her work as a celebrity what?	FASHION STYLIST
3109	The state whose name comes first alphabetically is located where in the U.S.?	DEEP SOUTH
3110	The storied fugitive known as D.B. Cooper famously eluded capture in 1971 by doing what?	JUMPING OUT OF A PLANE
3111	The Strait of Magellan runs primarily through which of these countries?	CHILE
3112	The style of American architecture based on building designs popular during the Revolutionary War is called what?	COLONIAL REVIVAL
3113	The style of pickup truck known as a “dually” gets its name from having twice the standard number of what?	REAR WHEELS
3114	The subject of a famous Revolutionary War poem, the “shot heard ’round the world” was fired in what U.S. state?	MASSACHUSETTS
3115	The subject of a much-publicized hoax in 2009, 6-year old Falcon Heene was better known in the media as what?	BALLOON BOY
3116	The Sundance Film Festival is held every January in what U.S. state?	UTAH
3117	The T-Birds,the Pink Ladies,and the Scorpions are all high school cliques in what movie musical?	GREASE
3118	The tabloid term “Brangelina,” which combines two names into one,is an example of what kind of word?	PORTMANTEAU
3119	The talking dog in the 2011 TV series “Wilfred” won comparisons to the imaginary animal in what Jimmy Stewart film?	HARVEY
3120	The Tasman Sea is part of what ocean?	PACIFIC
3121	The Tea Party movement takes its name from a famous historical event that took place in what city?	BOSTON
3122	The teenage drama “Gossip Girl” is partly set at a fictional New York City prep school called what?	CONSTANCE BILLIARD SCHOOL
3123	The term French paradox refers to the fact that, despite a high-fat diet, the French are relatively what?	SLENDER
3124	The term “ad lib” comes from the Latin phrase “ad libitum,” which roughly means what?	AT ONE’S PLEASURE
3125	The term “banana republic” originally referred to small,politically unstable countries in what part of the world?	CENTRAL AMERICA
3126	The term “bootleg” comes from an old habit of smugglers hiding what in their boots?	ALCOHOL
3127	The term “carbon footprint” refers primarily to the impact of a person’s lifestyle on the what?	ENVIRONMENT
3128	The term “head honcho” is derived in part from the Japanese word “hancho,” which roughly translates as what?	GROUP LEADER
3129	The term “lower forth-eight” is commonly used to refer to the U.S. minus what two states?	ALASKA AND HAWAII
3130	The term “melting pot” is often used to refer to the fact that the U.S. is very what?	CULTURALLY DIVERSE
3131	The term “paparazzi” comes from the name of an aggressive photographer in what movie?	LA DOLCE VITA
3132	The term “Polyanna” refers to a person who is excessively what?	CHEERFUL
3133	The term “provenance” is used in the art world to refer to a painting’s what?	OWNERSHIP HISTORY
3134	The term “slush fund” was originally used by sailors to refer to the side money they made selling what?	ANIMAL FAT
3135	The term “spam” for junk e-mail is derived from a well-known sketch on what comedy show?	MONTY PYTHON’S FLYING CIRCUS
3136	The term “Tin Pan Alley” originally referred to a New York City district famously associated with what industry?	SONGWRITING
3137	The theme song for what popular cartoon features the line “robots in disguise”?	TRANSFORMERS
3138	The theme song for “The Young and Restless,” “Nadia’s Theme” is named for a famous female what?	GYMNAST
3139	The theme song to what ’80s sitcom begins with the memorable line, “Streaks on the china never mattered before”?	MR. BELVEDERE
3140	The theme song “Eye of the Tiger” is featured in the third installment of what movie franchise?	ROCKY
3141	The tick bites that cause Lyme disease typically form a reddish rash with what distinctive shape?	BULL’S-EYE
3142	The title of a 1955 Marilyn Monroe film suggests that spouses “itch” to stray after how many years of marriage?	SEVEN
3143	The title of a famous show tune from the 1949 musical “South Pacific,” “Bali Ha’i” is a what?	ISLAND
3144	The title of a popular online game sold by Zynga invites players to form “Words With” what?	FRIENDS
3145	The title of Stephen Covey’s 1989 self-help book claims that “Highly Effective People” have how many “habits”?	SEVEN
3146	The title of the 1927 novel “Treasure of the Sierra Madre” refers to a mountain range in what country/	MEXICO
3147	The title of the 2011 film “Super 8” refers to a largely outdated type of what?	FILM STOCK
3148	The title of the classic novel “Wuthering Heights” refers to what place?	FAMILY ESTATE
3149	The title of the TV series “Friends” refers to a group of how many total friends?	6
3150	The title “maitre d” is from a longer phrase that features what well-known French word?	HOTEL
3151	The TLC reality series “Sister Wives” has been described as a real-life version of what cable drama series?	BIG LOVE
3152	The town of Riverside, Iowa claims to be the “future birthplace” of what fictional character?	CAPTAIN JAMES KIRK
3153	The Toyota models Camry,Corolla and Corona all get their names from Latin or Japanese words that mean what?	CROWN
3490	What country’s cuisine would most likely be served in a taqueria?	MEXICO
3154	The tradition known as “Carburetion Day” takes place every year on the Friday before what sporting event?	INDIANAPOLIS 500
3155	The tradition of indoor Christmas tree decorating began in the 16th century in what country?	GERMANY
3156	The traditional Chinese game of mah-jongg is played using what kind of game pieces?	TILES
3157	The trendy Master Cleanse diet involves drinking a concoction made with all but which of these ingredients?	GINGER
3158	The triangular orange logo on Elmer’s glue labels features the head of Elmer,who is what kind of “spokesanimal”?	BULL
3159	The trophy for the annual Teen Choice Awards consists of a full-size, usable what?	SURFBOARD
3160	The TV series “Ugly Betty” is set at the offices of what fictional “Vogue-like” magazine?	MODE
3161	The TV shows “Glee,” and “Freaks and Geeks” are both set at high schools named after which U.S. President?	WILLIAM MCKINLEY
3162	The TV shows “Glee” and “Freaks and Geeks” are both set at high schools named after what U.S. president?	WILLIAM MCKINLEY
3163	The two countries in the world whose names come last alphabetically are both located where?	SOUTHERN AFRICA
3164	The U.S. Constitution begins “We the People of the United States,in order to form a more perfect” what?	UNION
3165	The U.S. government issues federal Stafford loans to help borrowers pay for what?	EDUCATION
3166	The U.S. icon “Uncle Sam” was based on Samuel Wilson, who, during the War of 1812, was a what?	MEAT INSPECTOR
3167	The U.S. Marine Corps motto is often shortened to Semper Fi, a phrase in which “Fi” is short for what?	FIDELIS
3168	The U.S. tested its first atomic bomb in 1945 near what location?	ALAMAGORDO, NM
3169	The unconventional women of America’s Jazz Age are commonly known by what nickname?	FLAPPERS
3170	The unique sound of a Harley-Davidson motorcycle engine idling is commonly described by what food phrase?	POTATO POTATO POTATO
3171	The United Nations flag depicts a map of the world surrounded by what?	OLIVE BRANCHES
3172	The United States of America is named after a famous what?	EXPLORER
3173	The University of California,San Diego’s Geisel Library bears the real surname of what author?	DR.SEUSS
3174	The US imports the most oil from which of these countries?	CANADA
3175	The USDA uses the official terms “broiler,” “fryer,” and “roaster” to classify different types of what?	CHICKENS
3176	The USDA’s 2010 “Dietary Guidelines for Americans” urges people to eat more of all but which of these”?	REFINED GRAINS
3177	The Van Gogh Museum is a popular destination for art lovers visiting what European capital?	AMSTERDAM
3178	The VH1 reality show “Brandy and Ray J: A Family Business” centers on a pair of singers that are related how?	BROTHER AND SISTER
3179	The voice actor Don LaFontaine was famous for what signature phrase, often heard in movie trailers?	IN A WORLD…
3180	The war memorial for what branch of the U.S. military depicts soldiers raising a flag at Iwo Jima?	MARINES
3181	The Washington Monument was modeled after the obelisks built by what ancient empire?	EGYPTIAN
3182	The Washington Post evaluates the truthfulness of political ads by assigning a rating of between one and four what?	PINOCCHIOS
3183	The Web site IDoNowIDont.com is a marketplace for buying and selling secondhand what?	ENGAGEMENT RINGS
3184	The Web site Stubhub.com is a popular place to buy which of the following?	CONCERT TICKETS
3185	The Web site www.thefabricofourlives.com was created to support producers of what?	COTTON
3186	The wine-producing grape called Syrah in France is known by what other name in Australia?	SHIRAZ
3187	The word diaphanous is used to describe what type of clothing?	SEE-THROUGH
3188	The word for “handcuffs” is the same as the word for “wives” in what language?	SPANISH
3189	The word “aide,” used generally to refer to an assistant,is short for what longer French expression?	AIDE-DE-CAMP
3190	The word “alimony” comes from a Latin word meaning what?	SUSTENANCE
3191	The word “alligator” is derived from the Spanish term “el lagarto,” meaning what?	THE LIZARD
3192	The word “alphabet” is derived from “alpha” and “beta,” the first two letters of what alphabet?	GREEK
3193	The word “discotheque” comes from a French word meaning what?	RECORD LIBRARY
3194	The word “Draconian” comes from the name of a Greek statesman who was best known for doing what?	PASSING STRICT LAWS
3195	The word “fleabag” is commonly used to describe a seedy or run-down what?	HOTEL
3196	The word “harvest” is derived from an Old English word that referred to what season?	AUTUMN
3197	The word “pita” comes from a Greek term meaning what?	BREAD
3198	The World Barista Championship is an annual event that tests competitors’ skills in what activity?	MAKING ESPRESSO DRINKS
3199	The Yuko hair straightening treatment is often referred to by its country of origin, which is what?	JAPAN
3200	The Yum-o! organization, a nonprofit that teaches healthy eating,was founded by what bubbly TV chef?	RACHAEL RAY
3201	The zoological classification Lepidoptera consists of butterflies and what other insects?	MOTHS
3202	The “.tv” Internet address,often used for television-related websites,belongs to what country?	TUVALU
3203	The “3000 Mile Myth” refers to the debunked belief that you should do what to your car every 3000 miles?	CHANGE THE OIL
3204	The “Family Jewels” of the British monarchy are kept under armed guard at what London landmark?	TOWER OF LONDON
3205	The “fingerstache” is a popular tattoo of a stylized mustache typically inked on what finger?	INDEX
3206	The “funny bone” is thought to get its name due to its proximity to what funny-sounding bone?	HUMERUS
3207	The “Grandfather Paradox” is a problem facing those attempting to unlock which of these scientific theories?	TIME TRAVEL
3208	The “greaser” look of Shia LaBeouf’s character in “Indiana Jones 4” was modeled after Marlon Brando in what film?	THE WILD ONE
3209	The “Green Line” is a term used to describe the boundary between what two historically hostile areas?	ISRAEL AND THE WEST BANK
3210	The “heat index” is a weather indicator that takes into account air temperature and what other factor?	RELATIVE HUMIDITY
3211	The “jerk” method of preparing and cooking meat originated in what country?	JAMAICA
3212	The “O” in Irish names like “O’Neill” and “O’Casey”comes from “ua”,an Irish word meaning what?	GRANDSON
3213	The “Star Wars” films notably contain music themes for each main character,a practice known by what music term?	LEITMOTIF
3214	The “wrap dress” is the signature creation of what high-end fashion designer?	DIANE VON FURSTENBERG
3215	Theodore Roosevelt National Park is located on the former site of the president’s Elkhorn Ranch is what U.S. state?	NORTH DAKOTA
3216	Thiamine, riboflavin, and niacin are three vitamins in a group commonly known as what?	VITAMIN-B COMPLEX
3217	Though a female turkey is called a hen,a male is known not as a rooster but as a what?	TOM
3218	Though a popular term now,”hipster” was actually coined in the 1940s to replace what jazzy term?	HEPCAT
3219	Though a silvery-white medal,what chemical element lends its name to a deep shade of blue?	COBALT
3220	Though a single issue costs $5.95, what weekly magazine was sold in its entirety in 2010 for only $1	NEWSWEEK
3221	Though airing in different decades, which of these TV shows featured the same actor as a character?	FAMILY TIES & SPIN CITY
3222	Though airing in different decades, which of these TV shows featured the same actor as a main character?	FAMILY TIES AND SPIN CITY
3223	Though critics called him a “walking dust mop,” the 2012 Westminster Best in Show went to Malachy,a 4-year-old what?	PEKINGESE
3224	Though he lives and works in Nashville,which of these country singers is a New Zealand-born Australian?	KEITH URBAN
3225	Though he now makes his home in Dallas, NBA superstar Dirk Nowitzki hails from what foreign country?	GERMANY
3226	Though he often just goes by his first name,celebrity physician Dr.Drew has what surname?	PINSKY
3227	Though he still tours playing The Who classics,what former frontman owns a trout fishery in East Sussex,England?	ROGER DALTREY
3228	Though he was 21 when it all wrapped up, how old was Daniel Radcliffe when the first Harry Potter film came out?	12
3229	Though her recent work is Christian-themed, what novelist announced in 2010 she was leaving Christianity	ANNE RICE
3230	Though his successor removed them, what U.S. President was the first to install solar panels on the White House roof?	JIMMY CARTER
3231	Though human fat is typically whitish,most people also have small amounts of calorie-burning fat that is what color?	BROWN
3232	Though it applies to all of them now,the term “vermin” derives from the Latin word for which of these creatures?	WORM
3233	Though it can be traced back to the 1500s, the proverb “Tomorrow is another day” was popularized by what author?	MARGARET MITCHELL
3234	Though it didn’t feature buffalo wings as an in-flight snack,what chain restaurant once operated its own short-lived airline?	HOOTERS
3235	Though it doesn’t contain egg or cream, an “egg cream” traditionally contains which of the following?	SELTZER WATER
3236	Though it is often quoted,the line “Elementary,my dear Watson” never actually appears in the works of what author?	ARTHUR CONAN DOYLE
3237	Though it later became associated with Christie Brinkley, Billy Joel’s hit “Uptown Girl” was originally about whom?	ELLE MACPHERSON
3238	Though it sounds like a movie awards category,which of these is the name of a hotel chain?	BEST WESTERN
3239	Though it sounds like it is for a children’s game,which of these websites belongs to a major U.S. book publisher?	SIMONSAYS.COM
3240	Though it sounds like something for a plumber, a “piping bag” is used by which of these professionals?	PASTRY CHEF
3241	Though it works for other cuts,which of these is the name of a kitchen knife used to remove the delicate skin from fresh fish?	SALMON KNIFE
3242	Though it’s in the dictionary, which of these words is considered an improper combination of two other words?	IRREGARDLESS
3243	Though known for her comedy, what actress won an Oscar for her dramatic turn in the 2009 film “Precious”?	MONIQUE
3244	Though mostly free of it as an adult,which of these politicians grew up with a strong stutter?	JOE BIDEN
3245	Though not confirmed by the author,Johnny Fontane,the singer in “The Godfather,” is believed to be based on whom?	FRANK SINATRA
3246	Though not known to drive cats crazy,which of these herbs is classified in the same family as catnip?	OREGANO
3247	Though now associated with Mexico,piatas are thought to have originated from what country’s New Year celebrations?	CHINA
3248	Though now headquartered in New York,the United Nations drew up its charter in what other U.S. city?	SAN FRANCISCO
3249	Though now made with artificial flavors, traditional grenadine syrup is made with the juice of what fruit?	POMEGRANATE
3250	Though now often referred to any roasted beef,barbacoa traditionally comes from what part of the cow?	HEAD
3251	Though often billed as small-claims courts,TV shows like “Judge Joe Brown” are actually a form of what?	BINDING ARBITRATION
3252	Though often referred to by its trademarked name,the Crock-Pot is really what kitchen appliance?	SLOW COOKER
3253	Though scientists can now simulate the process,what milk’s preparation traditionally involved churning?	BUTTERMILK
3254	Though she’s technically “Mrs. Jenner,” the matriarch of the Kardashian family has what first name?	KRIS
3255	Though sommeliers may disagree,boxes of Franzia proudly declare it to be “the world’s most popular” what?	WINE
3256	Though spelled “feng shui,” the Chinese art of spatial arrangement is typically pronounced how?	“FUNG SHWAY”
3257	Though the amount is no longer in U.S. circulation,the classic game of monopoly comes with bills in what denomination?	$500 *CORRECT*
3258	Though there are certainly more,a famous George Carlin bit lists how many “words you can never say on television”?	7 *CORRECT*
3259	Though there is little historical evidence, horned helmets are often associated with whom?	VIKINGS
3260	Though they all have the same voltage,which of these alkaline batteries is the smallest in size?	AAA
3261	Though they move back and forth while budding,mature sunflowers typically face what direction?	EAST
3262	Though they suspected it was hazardous,the ancient Romans extensively used what material in their water pipes?	LEAD
3263	Though trained as a doctor, Richard Jordan Gatling is best known for inventing an early type of what?	MACHINE GUN
3264	Though you’d have to eat a lot to get sick, which of these fruits have seeds that naturally contain cyanide?	APPLES
3265	Thought to be a combination of “simon” and “napoleon,” “simoleon” is an old-fashioned slang term for a what?	DOLLAR BILL
3266	Thousand Island dressing is said to have gotten its name from a chain of islands that lie in what river?	THE ST.LAWRENCE
3267	Throughout her career in the kitchen,Julia Child often said the secret to a long life is what?	RED MEAT AND GIN
3268	Tilapia is a popular variety of what?	FISH
3269	Timothy Q.Mouse initially frightens,but then befriends the title character of what classic Disney film?	DUMBO
3270	To a resident of the British Isles, which of these countries is commonly called “The Antipodes?”	AUSTRALIA
3271	To avoid blinking, many women unconsciously open their mouths when applying what cosmetic?	MASCARA
3272	To avoid confusion with a prominent city,what state’s tourism department advertises itself as “The State”?	WASHINGTON
3273	To celebrate his 85th birthday,what did George H.W. Bush do while strapped to a U.S. Army Sergeant?	SKYDIVE
3274	To enhance its sense of authenticity, which of these TV dramas was shot on location in Austin, TX?	FRIDAY NIGHT LIGHTS
3275	To extend their shelf life,bags of potato chips are often filled with what gas before being sealed?	NITROGEN
3276	To help fans pronounce it CORRECTly, comedian Louis Szekely typically spells his name how?	LOUIS C.K.
3277	To make paper-mache,kids traditionally dunk newspaper strips into paste made from water and what?	FLOUR
3278	To make papier-mache, kids traditionally dunk newspaper strips into paste made from water and what?	FLOUR
3279	To prevent fires, consumers are often warned not to use which of these products in a microwave oven?	ALUMINUM FOIL
3280	To promote Breast cancer awareness,in 2010 Elizabeth Hurley helped light 39 landmarks what color?	PINK
3281	To pursue his hobby, a cruciverbalist would flip to what part of a newspaper?	CROSSWORD PUZZLE
3282	To reduce the risk of a bladder infection,many experts advise drinking what tannin-rich beverage?	CRANBERRY JUICE
3283	To sound like a New Yorker,you can say “light and sweet” when ordering which of the following?	COFFEE
3284	To the dismay of nutritionists,what chain restaurant’s “Bistro Shrimp Pasta” contains a reported 2,700 calories?	THE CHEESECAKE FACTORY
3285	To tour the USS Arizona Memorial at Pearl Harbor, you must visit what Hawaiian island?	OAHU
3286	To win a superfecta wager at the track,a bettor must pick how many of the top finishers in the right order?	FOUR
3287	Tom Hanks received an Oscar nomination for his work in all but which of these films?	THE GREEN MILE
3288	Tonic water is distinctively flavored because it contains what chemical?	QUININE
3289	Torts is a common first-year course for students in what professional school?	LAW
3290	Tourists intending to visit the capital city of San Jose would receive the best travel advice from what guide book?	LET’S GO COSTA RICA
3291	Traditional Requiem Masses often include a sequence called the “Lacrimosa,” a Latin term meaning what?	TEARFUL
3292	Traditionally made with a base of olive oil,Castile soap is named for a region of what country?	SPAIN
3293	Traditionally made with fried seafood,a po’ boy is a sandwich associated with what U.S. city’s cuisine?	NEW ORLEANS
3294	Traditionally served on New Year’s Day,Hoppin’ John is a popular Southern side dish made with what type of bean?	BLACK-EYED PEAS
3295	Traditionally worn by geishas and sumo wrestlers,geta are wooden footwear from what country?	JAPAN
3296	Traditionally worn by golfers, “plus fours” are a type of what?	PANTS
3297	Traditionally, quarterbacks yell which of these words to their center when they want to start a play?	HIKE
3298	Traditionally, what member of a wedding party is in charge of “bustling” the bride’s gown?	MAID OF HONOR
3299	Traditionally, which of these professionals is most likely to wear a skirt made of tulle?	BALLERINA
3300	Traditionally,s’mores are made by sandwiching chocolate and marshmallows between what?	GRAHAM CRACKERS
3301	Traditionally,the U.S. Congress takes a month-long recess during what month?	AUGUST
3302	Traditionally,which wedding anniversary is considered the “Diamond” anniversary?	60TH *CORRECT*
3303	Translating to “Fashion Dispatch,” what 80s band took its name from a French fashion magazine?	DEPECHE MODE
3304	Trial lawyers often refer to the false expectation that a witness will confess under cross-examination as what?	PERRY MASON SYNDROME
3305	TV and movie character Peewee Herman is known for wearing which of these fashion accessories?	RED BOW TIE
3306	TV journalist Jane Pauley is married to Garry Trudeau, a cartoonist best known for what strip?	DOONESBURY
3307	TV personality Ross Matthews first rose to fame as “Ross the Intern” on what TV host’s show?	JAY LENO
3308	Twenty-five times the size of the Bonneville Salt Flats, the Salar de Uyuni Salt Flats are located where?	BOLIVIA
3309	Two siblings born to the same mother less than a year apart are often cheekily described as what?	IRISH TWINS
3310	Two words that have directly opposite meanings are called what?	ANTONYMS
3311	Typically flavored with caraway seeds, which of these spirits derives its name from the Latin for “water of life”?	AQUAVIT
3312	Typically flavored with caraway seeds,which of these spirits derives its name from the Latin for “water of life”?	AQUAVIT
3313	Typically marking the end of a conversation,the Spanish phrase “Vaya con Dios” means what in English?	GO WITH GOD
3314	Typically preferring to wade rather than swim, which of these birds does not have webbed feet?	CRANE
3315	Typically served as a Southern side dish,spoonbread is a pudding-like bread with what ingredient?	CORNMEAL
3316	U.N. Lifts Beluga Ban was the headline for a 2010 news story about international restrictions on what luxury item?	CAVIAR
3317	U2’s hit song “Vertigo” begins with the line “Uno,dos,tres,catorce,”,spanish for one,two,three” what?	FOURTEEN
3318	UGG, a trendy brand that specializes in sheepskin boots, originated in what country?	AUSTRALIA
3319	Unaware he was starting an Internet fad,in 2007 Charlie Schmidt posted a YouTube video of his cat Fatso doing what?	PLAYING A KEYBOARD
3320	Under European Law,bottles of “traditional balsamic vinegar” can only be produced in two provinces of what country?	ITALY
3321	Understood by folks familiar with the metric system,what day always falls within “National Metric Week”?	OCTOBER 10TH
3322	Unhappy with the 2010 Nobel Peace Prize award,what country launched its own “Confucius Peace Prize”?	CHINA
3323	Unimpressed by cupies, split lifts and basket tosses, a federal judge ruled in 2010 that what is not a sport?	CHEERLEADING
3324	Until 1834, John Jacob Astor was America’s most successful businessman in what industry?	FUR
3325	Until 1949,regular packs of chocolate M&Ms included which of these colors?	VIOLET
3326	Until his abrupt dismissal in 2011, John Galliano had been head designer of what fashion house since 1996?	CHRISTIAN DIOR
3327	Until it was discovered to be toxic, asbestos was commonly used in buildings to guard against what?	FIRE
3328	Updated in 1997 to honor Princess Diana, “Candle in the Wind” was originally a tribute to what actress?	MARILYN MONROE
3329	Upon his arrival in D.C. in 2011, what newly-elected senator moved in with his congressman father Ron?	RAND PAUL
3330	Upon losing the Tour de France in 2010,what athlete declared, “I wasn’t fast enough in the end”?	LANCE ARMSTRONG
3331	Upon the cancellation of “Ugly Betty,” what actress joined the cast of “Desperate Housewives” in 2010?	VANESSA WILLIAMS
3332	Urushiol,a toxic resin,causes the typical rashes and itchiness associated with which of these plants?	POISON IVY
3333	Used for centuries to make gunpowder and cure meats, potassium nitrate is commonly called what?	SALTPETER
3334	Used in a variety of dishes,garam marsala is a blend of ground spices commonly used in what cuisine?	INDIAN
3335	Used in airports to detect sick passengers,thermal scanners measure a person’s what?	TEMPERATURE
3336	Used to describe a carefree lifestyle, “bohemian” refers to an area in what modern day country?	CZECH REPUBLIC
3337	Used to describe something petty or of little value, the word “picayune” once referred to a type of Spanish what?	COIN
3338	Used to gauge stock market performance, the Dow Jones Industrial tracks how many companies?	30
3339	Used to indicate academic honors, the Latin phrase “magna cum laude” literally means what?	WITH GREAT PRAISE
3340	Used to make rope,sisal fiber is a common material also found in which of these sporting goods?	DARTBOARD
3341	Used to mean “finishing strong,” the phrase “sticking the landing” comes from what sport?	GYMNASTICS
3342	Used to provide structure to connective tissue,what is the most abundant protein in the human body?	COLLAGEN
3343	Used to refer to a computer’s unique location in cyberspace, “IP address” is short for “internet” what?	PROTOCOL ADDRESS
3344	Used to test vision,the Snellen eye chart typically has what bold,single letter in the top row?	E
3345	Using its local specialty, in 2009 the city of Portland, Maine created a 61-foot long what?	LOBSTER ROLL
3346	Usually a male role,Prospero is played by Dame Helen Mirren in the 2010 film of what Shakespeare play?	THE TEMPEST
3347	Usually associated with pirates,the “Jolly Roger” is a distinctive what?	FLAG
3348	Usually considered a minor injury, what is the medical term for a common bruise?	CONTUSION
3349	Usually either white or brown,the shell color of chicken eggs is determined by which of these factors?	THE BREED OF HEN
3350	Usually referred to by his first name,the Renaissance artist Michelangelo had what surname?	BUONARROTI
3351	Varieties of what beauty aid are often advertised as being “acetone-free”?	NAIL POLISH REMOVER
3352	Vendors at Seattle’s Pike Place Market are world famous for doing what?	THROWING FISH
3353	Viral conjunctivitis is a highly contagious eye infection better known as what?	PINK EYE
3354	Visible even with the naked eye,which of these planets is brightest in the evening sky?	VENUS
3355	Voiced by Johnny Depp, the title character in the 2011 animated movie “Rango” is what kind of desert creature?	CHAMELEON
3356	Voiced by Johnny Depp,the title character in the 2011 animated movie “Rango” is what kind of desert creature?	CHAMELEON
3357	Walt Whitman’s poem “When Lilacs Last in the Dooryard Bloom’d” was written as an elegy for what notable American?	ABRAHAM LINCOLN
3358	Walter and Cordelia Knott, founders of Knott’s Berry Farm, introduced what berry in the 1930s?	BOYSENBERRY
3359	Washing a dog in tomato juice is a traditional home remedy for what?	REMOVING SKUNK ODOR
3360	Web sites like WallStreetJournal.com charge for some of their content by keeping it behind a so-called what?	PAY WALL
3361	Well-known to sailors in the tropics,winds that blow steadily from east to west and toward the equator are called what?	TRADE WINDS
3362	West Point,the oldest military academy in the United States,is located on the bank of what river?	HUDSON
3363	What 1960s Raquel Welch film was advertised with the slogan “Mankind’s First Bikini!”?	ONE MILLION YEARS B.C.
3364	What 2009 big screen comedy features Betty White as a wacky grandmother?	THE PROPOSAL
3365	What 2009 hit single by Shakira has a Spanish version called “Loba”?	SHE WOLF
3366	What 2009 hit song heavily samples a 1985 song by the band “Dead or Alive”?	RIGHT ROUND
3367	What 2010 movie prominently features a mythical beast called a kraken?	CLASH OF THE TITANS
3368	What 2011 documentary follows a late night comic on a cross country tour after being fired from NBC?	CONAN O’BRIEN CAN’T STOP
3369	What 2011 superhero movie was marketed in Russia using only its subtitle “The First Avenger”?	CAPTAIN AMERICA
3370	What 60s TV show peppered its fight scenes with words such as “kapow” or “biff” flashed onto the screen?	BATMAN
3371	What 70s song invariably compels dancers to spell out each letter of the song with their bodies?	YMCA
3372	What actor delivers the oft-misquoted line, That dirty, double-crossing rat” in the 1931 film “Blonde Crazy”?	JAMES CAGNEY
3373	What actor donned fake chest hair and a bald cap for a cameo in the 2008 comedy “Tropic Thunder”?	TOM CRUISE
3374	What actor established the Make It Right Foundation,which aims to build “green” housing in New Orleans?	BRAD PITT
3375	What actor once blamed his career slump on a 1982 People magazine article that mistakenly referred to him as deceased?	ABE VIGODA
3376	What actor plays the mustachioed slacker “Wooderson” in the 1993 indie film “Dazed and Confused”?	MATTHEW MCCONAUGHEY
3377	What actor starred in a film version of Arthur Miller’s “The Crucible,” and then married Miller’s daughter Rebecca?	DANIEL DAY-LEWIS
3378	What actor starred in the 1990s movies “Universal Soldier” and “Universal Soldier: The Return”?	JEAN CLAUDE-VAN DAMME
3379	What actor’s guest role on a Showtime series inspired the 2010 headline, “Close Encounters of the Weed Kind”?	RICHARD DREYFUSS
3380	What actor’s mother reportedly named him after he kicked her in the womb while she was looking at a Da Vinci painting?	LEONARDO DICAPRIO
3381	What actress and international sex symbol was the inspiration for the term “sex kitten”?	BRIGITTE BARDOT
3382	What actress stars as as ruthless litigator Patty Hewes in the TV drama “Damages”?	GLENN CLOSE
3383	What actress was the subject of a 2011 NY Times piece titled “All About the Woman Behind Erica Kane”?	SUSAN LUCCI
3384	What ad mascot is often depicted wearing epaulets?	CAP’N CRUNCH
3385	What adjective is often used to describe an unscrupulous political leader’s behavior?	MACHIAVELLIAN
3386	What adjective is used to describe animals that emit light?	BIOLUMINESCENT
3387	What airline’s official emblem features a traditional Aztec warrior known as an “Eagle Knight”?	AEROMEXICO
3388	What American author is credited with popularizing the Spanish word “cojones” as a synonym for bravery?	ERNEST HEMINGWAY
3389	What animal appears on a pro-vegetarian PETA sticker that reads “I Am Not a Nugget”?	CHICKEN
3390	What animal appears on the national coat of arms of the African nation Cote D’ lvoire,or Ivory Coast?	ELEPHANT
3391	What animal did Woody Allen once memorably describe as “a rat with wings”?	PIGEON
3392	What animalistic sound is sung throughout the 1978 Warren Zevon hit song “Werevolves of London”?	AHOOOOOO!
3393	What animalistic sound is sung throughout the 1978 Warren Zevon hit “Werewolves of London”?	AHOOOOO!
3394	What animals are some of the only adult vertebrates with the ability to regrow a limb that has been cut off?	SALAMANDERS
3395	What animals engage one another in a mating competition that is often compared to boxing?	KANGAROOS
3396	What are renal calculi?	KIDNEY STONES
3397	What artist is known for his groundbreaking “drip” method of painting?	JACKSON POLLOCK
3398	What artist painted his young daughter in his works “Paloma with an Orange” and “Paloma in Blue?”	PABLO PICASSO
3399	What artist’s famous sketch, “The Vitruvian Man,” is said to depict the ideal proportions of the male body?	LEONARDO DA VINCI
3400	What athlete portrays himself in the 1977 movie “The Greatest”?	MOHAMMAD ALI
3401	What athletes participate in Blood, Sweat, and Gears, an annual sporting event held in North Carolina?	CYCLISTS
3402	What author courted controversy in 2006 when his memoir,”A Million Little Pieces” was proved to be widely exaggerated?	JAMES FREY
3403	What author famously defined “guts” as “grace under pressure?”	ERNEST HEMINGWAY
3404	What author is often credited with being the first person to submit a book manuscript written on a typewriter?	MARK TWAIN
3405	What author of “The Handmaid’s Tale” has argued that her novels are “speculative fiction,” not science fiction?	MARGARET ATWOOD
3406	What author of “The Handmaid’s Tale” has argued that her novels are “speculative fiction,” not science fiction?	MARGARET ATWOOD
3407	What ballpark’s ground rules states it’s a double if the “baseball sticks in vines on bleacher wall”?	WRIGLEY FIELD
3408	What band claims its name was inspired by the initials of a popular brand of motor oil?	STONE TEMPLE PILOTS
3409	What band’s lead singer often went by the name “Mr. Mojo Risin,” an anagram of his real name?	THE DOORS
3410	What baseball legend shares his name with a “golden voiced’ homeless man who shot to national fame in 2011?	TED WILLIAMS
3411	What baseball player was the first to have his signature printed on a Louisville Slugger bat?	HONUS WAGNER
3412	What best-selling novelist copyrights his books under the name “Garp Enterprises Ltd.”?	JOHN IRVING
3413	What beverage is named for the football team at the University of Florida,where it was developed?	GATORADE
3414	What biopic’s screenplay was translated into brail at its subject’s request?	RAY
3415	What birds rotate their wings in a distinct figure-eight pattern that allows them to fly backwards?	HUMMINGBIRDS
3416	What body part is the final word of the chorus in the folk song “Oh! Susanna”?	KNEE
3417	What book of the Bible derives its name from the Greek word for “creation”?	GENESIS
3418	What brand’s Web Site urges visitors to “become an agent for the Wetness Protection Program”?	ARRID
3419	What breed of dog,known for its thick white coat,is named for the nomadic people of Siberia who once raised it?	SAMOYED
3420	What British author’s second novel was dedicated “To my mum,Nellie,for not being like Bridget’s”?	HELEN FIELDING
3421	What Broadway musical features the extravagant song-and dance number “Springtime for Hitler”?	THE PRODUCERS
3422	What Broadway musical features the song “Food, Glorious Food”?	OLIVER!
3423	What Broadway musical is largely set in a seedy nightclub called the Kit Kat Klub?	CABARET
3424	What Broadway musical is subtitled “The American Tribal Love-Rock Musical”?	HAIR
3425	What Broadway musical spawned an unsuccessful 1990 sequel titled “Miss Hannigan’s Revenge”?	ANNIE
3426	What business was known as the Harold Company before it took the name of its most famous product?	XEROX
3427	What cable network broadcasts a popular annual week of programming known as “Shark Week”?	DISCOVERY
3428	What cable series’ stellar ratings were once described by Entertainment Weekly as “Fangtastic!”?	TRUE BLOOD
3429	What Canadian city’s streets saw riots after their beloved Canucks lost the 2011 Stanley Cup to the Boston Bruins?	VANCOUVER
3430	What candies are described on their packaging as “semisweet chocolate nonpareils?”	SNO-CAPS
3431	What candy bar sounds like it was named for the author of the short story “The Gift of the Magi”?	O HENRY!
3432	What candy is protected by a U.S. patent titled “Process of Preparing Gasified Candy”?	POP ROCKS
3491	What country’s current government was established in 1958 and is known as the Fifth Republic?	FRANCE
3433	What carmaker puts an “M” in the model name of the sportier versions of its regular cars, such as its “M3” and “M5”?	BMW
3434	What carmaker’s iconic “911” sports coupe has been in continuous production since 1963?	PORSCHE
3435	What casino game allows gamblers to make an “insurance” bet against losing to the house?	BLACKJACK
3436	What celebrity postponed his wedding to a Swedish actress for fear it would hurt JFK’s Presidential campaign?	SAMMY DAVIS JR.
3437	What chemical formula was mentioned 5 times by Al Gore in his Nobel Peace Prize acceptance speech?	CO2
3438	What city’s stock exchange is home to the FTSE 100 index, informally known as the “footsie”?	LONDON
3439	What city’s subway has white-gloved “platform pushers” that cram commuters into crowded trains?	TOKYO
3440	What city’s subway system is referred to by locals as “The Tube”?	LONDON
3441	What city’s subway system is referred to by locals as “The Tube”?	LONDON
3442	What classic Alfred Hitchcock film is set primarily in the seaside town of Bodega Bay, California?	THE BIRDS
3443	What classic big-screen comedy is available in a special “Don’t Call Me Shirley! Edition” DVD?	AIRPLANE!
3444	What classic brand name comes from the German word for “water” and the Greek word for “oil?”	VASELINE
3446	What classic children’s book features the adventures of a boy named Milo and a watchdog named Tock?	THE PHANTOM TOLLBOOTH
3447	What classic children’s book is subtitled “How Animals Become Real”?	THE VELVETEEN RABBIT
3448	What classic comedy film is credited with popularizing toga parties on college campuses?	ANIMAL HOUSE
3449	What classic comic strip character is known for the catchphrase “Leapin’ Lizards!”?	LITTLE ORPHAN ANNIE
3450	What classic Disney film’s soundtrack features the song “Never Smile at a Crocodile”?	PETER PAN
3451	What classic Michael Jackson tune features the catchy refrain “Mama-say-mama-sah,ma-ma-coo-sah”?	WANNA BE STARTIN’ SOMETHIN’
3452	What classic movie has a lead female character whose real name is revealed to be Lulamae Barnes?	BREAKFAST AT TIFFANY’S
3453	What classic novel is mentioned in a 2002 biography of Shania Twain even though she and the novel’s author are unrelated?	THE ADVENTURES OF TOM SAWYER
3454	What classic novel was originally published as a shorter novella titled “The Fireman”?	FAHRENHEIT 451
3455	What classic play features a character named Giles Corey and his memorable last words “more weight”?	THE CRUCIBLE
3456	What classic rock song asks the unusual question, “Scaramouche, scaramouche, will you do the fandango?”	BOHEMIAN RAPSODY
3457	What classic rock song’s first line urges you to “get your motor runnin, head out on the highway”?	BORN TO BE WILD
3458	What classic sitcom features a mustachioed,tool belt-wearing building super named Schneider?	ONE DAY AT A TIME
3459	What classic song features the distinctive chant, “a-wimoweh, a wimoweh, a-wimoweh?”	THE LION SLEEPS TONIGHT
3460	What classic TV character’s rickety,high-backed easy chair is now displayed in the Smithsonian Institute?	ARCHIE BUNKER
3461	What classic TV show is the inspiration for the text message service Thismessagewillselfdestruct.com?	MISSION: IMPOSSIBLE
3462	What classic TV show’s open features the title character triumphantly flinging her hat into the air?	THE MARY TYLER MOORE SHOW
3463	What classic TV show’s open features the title character triumphantly flinging her hat through the air?	THE MARY TYLER MOORE SHOW
3464	What classic TV show’s theme song ends with the exclamation “Yee haw!”?	THE DUKES OF HAZZARD
3465	What classic TV sitcom popularized the exclamation “Shazbot!”?	MORK & MINDY
3466	What classic work of literature is centered around a ship called the Pequod?	MOBY-DICK
3467	What clothing retailer features a line of jeans called 1969, a nod to the year its first store opened?	THE GAP
3468	What Coen brothers movie gets its title from the fictional film-within-a-film in the 1941 comedy “Sullivan’s Travels”?	O BROTHER,WHERE ART THOU?
3469	What color is created when blending the standard billiard ball colors seen on the eight ball and the cue ball?	GRAY
3470	What columnist once received over 15,000 letters after opining about which way a toilet paper roll should hang?	ANN LANDERS
3471	What comedian often mentions his wife, Camille, in his stand-up performances?	BILL COSBY
3472	What comedian’s production is named Happy Madison, a play on the titles of his two films?	ADAM SANDLER
3473	What comedy film ends with the lead character staging an elaborate puppet musical about Dracula?	FORGETTING SARAH MARSHALL
3474	What comedy movie once inspired a line of T-shirts bearing the boastful slogan “I am McLovin”?	SUPERBAD
3475	What comic book hero’s powers are the result of a botched gamma bomb experiment?	THE INCREDIBLE HULK
3476	What company is referred to as “The House that Jack Built?”	AT & T
3477	What company takes its name from the first mate in the classic novel “Moby Dick?”	STARBUCKS
3478	What company’s iconic logo was created by an Oregon college student in 1971 for just $35?	NIKE
3479	What company’s longtime slogan is “You are now free to move about the country”?	SOUTHWEST AIRLINES
3480	What component of a human cell is named after the Italian Nobel Prize winner who discovered it?	GOLGI APPARATUS
3481	What continent would a person have to go to in order to go to Togo?	AFRICA
3482	What cooking term comes from the French word for “White”?	BLANCH
3483	What country has the oldest written constitution that is still in effect?	UNITED STATES
3484	What country hosted the 2010 FIFA World Cup, soccer’s premier international competition?	SOUTH AFRICA
3485	What country is famous for the scenic fjords that line its shores?	NORWAY
3486	What country is home to Cape Town International Airport?	SOUTH AFRICA
3487	What country is home to the 2,300-mile-long Volga,Europe’s longest river?	RUSSIA
3488	What country is said to have cultivated the world’s first orange carrot,in honor of their king William of Orange?	HOLLAND
3489	What country’s annual film awards are called “The Goyas”,named for its celebrated native artist?	SPAIN
3492	What country’s national anthem includes a version in the Inuktitut language for its Inuit population?	CANADA
3493	What country’s two official languages are French and Creole?	HAITI
3494	What creatures are typically featured in a museum’s Hymenoptera collection?	BEES
3495	What crime occurs when businesses conspire to control the market?	PRICE FIXING
3496	What crop does Sting mention repeatedly in his 1993 hit song “Fields Of Gold”?	BARLEY
3497	What deep-pocketed filmmaker spent $100 million of his own money on the 2012 film “Red Tails” about the Tuskegee Airmen?	GEORGE LUCAS
3498	What desert’s name is a Mongolian word meaning “waterless place”?	GOBI
3499	What did humorist Dave Barry once call “a medium-sized rural island that is slowly but steadily consumed by sheep”?	IRELAND
3500	What director’s 1989 film “Parenthood” was adapted into a TV series twice: once in 1990 and once in 2010?	RON HOWARD
3501	What Disney film features the Billboard #1 hit and Oscar-winning song “A Whole New World”?	ALADDIN
3502	What distinguished athlete is the star of a 1999 documentary titled “His Airness”?	MICHAEL JORDAN
3503	What division of the U.S. government aptly features an encrypted hexadecimal code hidden within its logo?	U.S. CYBER COMMAND
3504	What do scientists term the living matter that makes up all plant and animal cells?	PROTOPLASM
3505	What do the letters in the name of the drugstore brand Pepcid AC stand for?	ACID CONTROL
3506	What does the “C” stand for in the sports abbreviation NCAA?	COLLEGIATE
3507	What does the “E” stand for in “NEA”,the government agency that provides funding for the arts?	ENDOWMENT
3508	What does the “N” stand for in the CBS hit drama “NCIS”?	NAVAL
3509	What does the “P” stand for in the common financial abbreviation “APR”?	PERCENTAGE
3510	What does the “T” stand for in the Disney acronym EPCOT?	TOMORROW
3511	What does the “V” stand for in the name of the QVC cable shopping network?	VALUE
3512	What does “Erin go bragh” mean?	IRELAND FOREVER
3513	What Donna Summers hit features the memorable refrain “toot toot, hey, beep beep”?	BAD GIRLS
3514	What Dr.Seuss tale is set “On the 15th of May,in the jungle of Nool,in the heat of the day,in the cool of the pool”?	HORTON HEARS A WHO!
3515	What drugstore remedy was originally called “Mixture Cholera Infatum” by its creator?	Vicks VapoRub
3516	What European city is home to the famously whimsical architecture of Antonio Gaudi?	BARCELONA
3517	What European city is home to the International Criminal Court,which tries war criminals from around the world?	THE HAGUE
3518	What European city is known as the center of the world’s diamond trade?	ANTWERP
3519	What European language is often referred to as “Nederlands” by its native speakers?	DUTCH
3520	What event was created in the 1920s to attract tourists to Atlantic City after Labor Day?	MISS AMERICA PAGEANT
3521	What faith’s wedding ceremonies typically feature assistants known as “chuppah holders”?	JEWISH
3522	What famous American was the first person inducted into the National Inventors Hall of Fame?	THOMAS EDISON
3523	What famous historical figure’s dying words were, “Hold the cross high so I may see it through the flames”?	JOAN OF ARC
3524	What famous inventor founded the company that introduced the revolutionary Kodak camera in 1888?	GEORGE EASTMAN
3525	What famous landmark was shipped to the U.S. in 350 pieces aboard the French frigate “Isere?”	STATUE OF LIBERTY
3526	What famous line in Shakespeare is followed by the heartfelt request “Deny thy father,and refuse thy name”?	WHEREFORE ART THOU,ROMEO?
3527	What famous painter once receieved a scathing 1949 review describing his artwork as “a mop of tangled hair”?	JACKSON POLLOCK
3528	What famous Shakespeare character’s last words are “Thus with a kiss I die”?	ROMEO
3529	What famous structure is topped by a 200-foot spire that was meant to be a dock for zeppelins?	EMPIRE STATE BUILDING
3530	What famous tourist attraction was closed to the public during the ’90s because it was in danger of falling over?	LEANING TOWER OF PISA
3531	What famous U.S. military leader was named “Old Blood-and-Guts”?	GEORGE PATTON
3532	What famously reticent Supreme Court justice hasn’t asked a question from the bench since 2006?	CLARENCE THOMAS
3533	What fashion designer is typically credited with inventing “the little black dress”?	COCO CHANEL
3534	What fast food chain was the target of a 2011 class action lawsuit that claimed there wasn’t enough beef in its beef?	TACO BELL
3535	What fast food franchise offers “Stackers” that allow customers to double,triple,or quadruple their burgers?	BURGER KING
3536	What fictional character is often depicted smoking a distinctively-shaped calabash pipe?	SHERLOCK HOLMES
3537	What fictional East Coast resort town is the setting for the 1975 movie “Jaws”?	AMITY
3538	What film critic gives out Golden Thumb awards to his annual Overlooked Film Festival?	ROGER EBERT
3539	What filmmaker’s 2009 exhibit at New York’s Museum of Modern Art included a Jack Skellington figure?	TIM BURTON
3540	What filmmaking icon has received the most Academy Awards,with twenty-six?	WALT DISNEY
3541	What firearm shares its name with a classic Beatles album?	REVOLVER
3542	What First Family could have shared the same set of monogrammed luggage because they all had the same initials?	THE JOHNSONS
3543	What fitness trend often utilizes a piece of equipment called “The reformer”?	PILATES
3544	What food additive is the cause of a physical reaction known as “Chinese restaurant syndrome”?	MONOSODIUM GLUTAMATE
3545	What food legend, though born in Indiana, is more closely associated with the state of Kentucky?	COLONEL SANDERS
3546	What food-related phrase refers to a simple task or an easily achieved goal?	LOW-HANGING FRUIT
3547	What football icon lends his name to one of the top-selling video franchises of all time?	JOHN MADDEN
3548	What foreign tourist destination is often reached by visitors traveling on PeruRail?	MACHU PICCHU
3549	What former child star is the co-creator of the popular stop-motion animated series “Robot Chicken”	SETH GREEN
3550	What former president’s initials are “U” and “S”?	GRANT
3551	What former U.S. president is often referred to by the nickname “Poppy”?	GEORGE H.W. BUSH
3552	What French phrase, meaning “equal to,” is commonly used to refer to foreign nannies?	AU PAIR
3553	What frozen food company has featured a bearded fisherman in its logo since 1905?	GORTON’S
3554	What future “Sex and the City” actress had a small role in the 1984 Oscar-winning film “Amadeus”?	CYNTHIA NIXON
3555	What game show host’s constant smooching of female contestants won him the nickname “The Kissing Bandit”?	RICHARD DAWSON
3556	What game’s name is aptly derived from a Swahili word meaning “to build”?	JENGA
3559	What government agency has the ominous nickname “The Company”?	CIA
3560	What grocery mascot is described as eight feet tall and five feet wide with three ice cubes on his head?	KOOL-AID MAN
3561	What hit 1950s song features the line “A-wop-bop-a-loo-bop-a-lop-bam-boo”?	TUTTI-FRUTTI
3562	What hit 1967 song features the lyric “Sock it to me,sock it to me,sock it to me,sock it to me”?	RESPECT
3563	What hit TV series’ pilot was a two-hour movie titled “Panic at Malibu Pier”?	BAYWATCH
3564	What home product brand contributes $1 to its “Loads of Hope” charity program for every bottle sold?	TIDE
3565	What household item is often seen at hunting lodges fashioned from the antlers of deer or elk?	CHANDELIER
3566	What icon of the fashion world both directed and financed the 2009 indie film “A Single Man”?	TOM FORD
3567	What iconic fashion designer published a 2005 bestseller about losing 92 pounds in a single year?	KARL LAGERFELD
3568	What iconic recording studio is aptly mentioned in the lyrics of Lynyrd Skynyrd’s “Sweet Home Alabama”?	MUSCLE SHOALS
3569	What imported beer brand is available in “beugel” bottles,notable for their resealable swingtop caps?	GROLSCH
3570	What internal organ was the first to be successfully transplanted between humans?	KIDNEY
3571	What international city refers to its Chinatown as “Barrio Chino”?	MEXICO CITY
3572	What is a bodega?	A SMALL GROCERY STORE
3573	What is Dora the Explorer’s last name?	MARQUEZ
3574	What is Silvio Berlusconi’s claim to fame?	ITALIAN PRIME MINISTER
3575	What is the answer to a groan-inducing math riddle that asks,”Where can you buy a ruler that is three feet long”?	YARD SALE
3576	What is the answer to the common crossword puzzle clue “Eve’s tempter”?	SERPENT
3577	What is the architectural term for the part of a church where the congregation usually sits?	NAVE
3578	What is the common term for the oily “zone” of the face that includes the forehead, nose, and chin?	T-ZONE
3579	What is the correct spelling of the last name of the Academy Award-winning director of “The Departed”?	SCORSESE
3580	What is the correct spelling of the word that refers to the Middle Ages in Europe?	MEDIEVAL
3581	What is the CORRECT term for someone who is a member of The Mafia?	MAFIOSO
3582	What is the ending to the riddle that begins, If a tree falls in the forest and nobody’s around to hear it…”?	DOES IT MAKE A SOUND?
3583	What is the English translation of the Latin phrase “mea culpa”?	THROUGH MY FAULT
3584	What is the first line of Little League Baseball’s official pledge?	I TRUST IN GOD
3585	What is the first name of the pop singer whose legions of devotees are known as “Fanilows”?	BARRY
3586	What is the full name of the notoriously difficult college course often called “orgo”?	ORGANIC CHEMISTRY
3587	What is the highest score that a student can earn on an Advanced Placement Test?	5
3588	What is the highest score you can get on the SAT,an exam with three sections each worth 800 points?	2400
3589	What is the last word of Martin Luther King, Jr.’s famous “I Have a Dream” speech?	LAST
3590	What is the less fierce-sounding given name of pro golfer Tiger Woods?	ELDRICK
3591	What is the meaning of the term “pro tempore”?	FOR THE TIME BEING
3592	What is the most populous city in the world’s most populous country?	SHANGHAI
3593	What is the name for the youngest members of the Girl Scouts of the U.S.A.?	DAISIES
3594	What is the name of a concise feature on Facebook that helps users get a friend’s attention?	POKE
3595	What is the name of MySpace’s president,who is included as the first “friend” for every new member?	TOM ANDERSON
3596	What is the name of Robert De Niro’s star-obsessed character in the 1983 film “King of Comedy”?	RUPERT PUPKIN
3597	What is the name of the cell ringtone that is popular with teens, as its high frequency makes it inaudible to adults?	MOSQUITO RINGTONE
3598	What is the name of the classic toy that utters lines such as “The cow says moo” with the pull of a string?	SEE N SAY
3599	What is the name of the dog who has appeared alongside Sailor Jack on Cracker Jack packages since 1918?	BINGO
3600	What is the name of the fictitious company featured in the 1999 cult film “Office Space”?	INITITECH
3601	What is the name of the greedy corporation featured predominantly in the animated movie “Wall-E”?	BUY N LARGE
3602	What is the name of the novelty tune used as the theme song to Britain’s long-running “Benny Hill Show”?	YAKETY SAX
3603	What is the name of the well-known organization for gay and lesbian Republicans?	LOG CABIN
3604	What is the only Grand Slam tennis tournament that makes its players dress almost entirely in white?	WIMBLEDON
3605	What is the only piece of equipment needed to play the popular kids’ game known as cat’s cradle?	LENGTH OF STRING
3606	What is the only place in the world where alligators and crocodiles coexist in their natural habitat?	FLORIDA EVERGLADES
3607	What is the only type of fish’s fin that is featured on a Pepperidge Farm Goldfish cracker?	CAUDAL FIN
3608	What is the only U.S. state whose official state song was a #1 hit on the Billboard charts?	GEORGIA
3609	What is the primary occupation of the man whose official website address is jgrisham.com?	NOVELIST
3610	What is the primary setting of the 1975 classic film “One Flew Over The Cuckoo’s Nest	MENTAL HOSPITAL
3611	What is the product of the famous perfume names “Chanel No 5” and “Chanel No 19”?	CHANEL NO 95
3612	What is the proper spelling of a mythological being known for shape-shifting,often under a full moon?	WEREWOLF
3613	What is the punch line to the joke that asks, “Why couldn’t Beethoven find his teacher?”	HE WAS HAYDN
3614	What is the punch line to the math joke, “What does trigonometry have in common with a beach”?	TAN GENTS
3615	What is the real first name of movie director Spike Lee?	SHELTON
3616	What is the singular form of the word “criteria”?	CRITERION
3617	What is the singular form of the word “criteria”?	CRITERION
3618	What is the subject of the 2011 documentary “Beats Rhymes & Life: The Travels of a Tribe Called Quest”?	90s RAP GROUP
3619	What is the technical term for a word or phrase in a Twitter post that is preceded by a “#” symbol?	HASHTAG
3620	What is the term for the stage of pregnancy during which a mother begins to feel her baby moving?	QUICKENING
3621	What is the three-letter abbreviation commonly used to refer to ABC’s long-running morning show?	GMA
3622	What is the title of the classic American song that famously begins, “Way down upon the Swanee River”?	OLD FOLKS AT HOME
3623	What is the total number of Commandments and deadly sins traditionally recognized in Christianity?	17
3624	What is the Wall Street lingo for a small company’s stock that trades for under $5 a share?	PENNY STOCK
3625	What is the well-known nickname for Montana,a title hinted at by the state’s official motto, “Oro y Plata”?	TREASURE STATE
3626	What is the “Brangelina”-like nickname that tabloids use to refer to the young stars of the “Twilight” films?	ROBSTEN
3627	What is the “product” of the famous perfume names “Chanel No.5” and “Chanel No.19”?	CHANEL NO. 95
3628	What is Yuri Gagarin’s claim to fame?	FIRST MAN IN SPACE
3629	What Italian cheese derives its name from the name of Italy’s capital city?	ROMANO
3630	What Jack Nicholson film features the line, “If you wanted to get me on my back, you just had to ask me”?	TERMS OF ENDEARMENT
3631	What James Bond film gets its title from Bond’s family motto “Orbis non suffit?”	THE WORLD IS NOT ENOUGH
3632	What keyboard symbol’s name comes from a Greek word meaning “little star”?	ASTERISK
3633	What kind of athletes are most likely to use small optical devices known as “range finders”?	GOLFERS
3634	What kind of food is produced in an apiary?	HONEY
3635	What kind of food is produced in an apiary?	HONEY
3636	What kind of person suffers from what psychiatrists term “pseudologia fantastica”?	PATHOLOGICAL LIAR
3637	What kind of vehicle can be ordered in standardized “Panamax” and “Suezmax” sizes?	CONTAINER SHIP
3638	What kitchen utensil is often found in four-sided and six-sided versions?	GRATER
3639	What Lady Gaga song features the memorable refrain, “Rah rah ah-ah-ah,Ro-mah ro-mah-mah,Gaga ooh-la-la”?	BAD ROMANCE
3640	What Las Vegas Strip casino was built by famed mobster Bugsy Siegel in the 1940s?	FLAMINGO
3641	What late night TV host features a weekly segment in which he writes humorous thank you notes from his desk?	JIMMY FALLON
3642	What legendary musician played Jareth the Goblin King in Jim Henson’s 1986 film “Labyrinth”?	DAVID BOWIE
3643	What legendary musician was known for his love of fried peanut butter and banana sandwiches?	ELVIS PRESSLEY
3644	What literary character owned an unusual portrait of himself that aged over time,while he did not?	DORIAN GRAY
3645	What luxury automaker is known to car enthusiasts as “The Prancing Horse,” a reference to its famous logo?	FERRARI
3646	What Madonna single shares its name with a psychiatric “Personality Disorder” characterized by sharp mood swings?	BORDERLINE
3647	What major artery located in the upper arm,is commonly monitored to check a person’s blood pressure?	BRACHIAL
3648	What Major League Baseball Team is commonly referred to by the synonymous nickname “Pale Hose”?	CHICAGO WHITE SOX
3649	What Major League Baseball team plays its spring training home games at George M. Steinbrenner Field?	NEW YORK YANKEES
3650	What major tennis tournament bills itself as “The Grand Slam of Asia/Pacific”?	AUSTRALIAN OPEN
3651	What medical device was invented by a doctor who was too shy to put his ear to a lady’s chest?	STETHESCOPE
3652	What member of Congress is also an OBGYN who claims to have delivered more than 4000 babies?	RON PAUL
3653	What member of the rock band Led Zeppelin shares his name with a famous naval hero of the Revolutionary War?	JOHN PAUL JONES
3654	What MLB team has gone longer without winning the World Series than any other franchise in history?	CHICAGO CUBS
3655	What month of the year is fittingly named after the Roman god of beginnings?	JANUARY
3656	What movie’s famous “counting cards” scene is spoofed in the 2009 comedy “The Hangover”?	RAIN MAN
3657	What musical act’s “Livin’ On a Prayer” placed number one on VH1’s “100 Greatest Songs of the ’80s”?	BON JOVI
3658	What musical artist opened the Hard Candy Fitness gym in 2010,which takes its name from a 2008 album?	MADONNA
3659	What musical instrument, when made with a vertical frame and strings, is called an “upright”?	PIANO
3660	What musician wrote his song “Walk On The Wild Side” about the unusual people who hung out with Andy Warhol?	LOU REED
3661	What musician wrote the 1989 bestseller, “Tales from Margaritaville”?	JIMMY BUFFETT
3662	What NASA mission’s stated primary objective was, simply, “Perform a manned lunar landing and return”?	APOLLO 11
3663	What national advocacy group uses the trademarked slogan, “We are their voice?”	AFL-CIO
3664	What nation’s film industry,called “Nollywood,” has in recent years become one of the top movie producers in the world?	NIGERIA
3665	What Native American tribe shares its name with a popular brand of recreational vehicle?	WINNEBAGO
3666	What natural occurrences are the subjects of the children’s book “Flash,Crash, Rumble and Roll”?	THUNDERSTORMS
3667	What naval vessel shares its name with a popular game that comes pre-installed on Windows computers?	MINESWEEPER
3668	What NBA star is named after an expensive type of beef?	KOBE BRYANT
3669	What NFL franchise plays home games in a venue appropriately named Arrowhead Stadium?	KANSAS CITY CHIEFS
3670	What NFL team’s name was chosen to honor its large number of fans with Scandinavian ancestors?	MINNESOTA VIKINGS
3671	What normally hairless actor has been bald since the age of 20 due to a makeup mishap involving greasepaint?	MICHAEL CHIKLIS
3672	What noted African-American writer collaborated on “The Autobiography of Malcolm X”?	ALEX HALEY
3673	What novel begins “When he was nearly thirteen,my brother Jem got his arm badly broken at the elbow?	TO KILL A MOCKINGBIRD
3674	What novel features a character suffering from the fictional genetic disorder “chrono displacement”?	THE TIME TRAVELER’S WIFE
3675	What novelist’s best-known protagonists include Elizabeth Bennet,Emma Woodhouse and Elinor Dashwood?	JANE AUSTEN
3676	What now-famous singer played Charlene DuPrey,Willis’s girlfriend,on the ’80s sitcom “Diff’rent Strokes”?	JANET JACKSON
3677	What number follows 8 in the Fibonacci sequence 1,1,2,3,5,8?	13
3678	What number-named candy bar was originally sold in multiple pieces,but was later joined into one delicious piece?	3 MUSKETEERS
3679	What nut is a primary ingredient in the chocolate-flavored spread Nutella?	HAZELNUT
3680	What office supply was invented in 1962 when a scientist found he could read through spilled yellow ink?	HI-LIGHTER
3681	What oil-rich Western nation joined four Middle East nations to found OPEC in 1960?	VENEZUELA
3682	What old-fashioned exclamation is repeated throughout the 1957 hit song “Great Balls of Fire”?	GOODNESS GRACIOUS!
3683	What part of a bride’s wedding dress comes in elbow,fingertip and cathedral lengths?	VEIL
3684	What part of a suit of armor is a gauntlet?	GLOVE
3685	What part of the body is made up of about 100 billion neurons?	BRAIN
3686	What part of the world is home to the only country whose name begins with the letter “Q”?	MIDDLE EAST
3687	What performer’s “obscene gesture” during the 2012 Super Bowl halftime show compelled the NFL to issue an apology?	M.I.A.
3688	What phenomenon is caused by the refraction and reflection of light passing through water droplets?	RAINBOW
3689	What phrase is often used to describe government projects that are prepared to hire new workers right away?	SHOVEL-READY
3690	What phrase was used by the media to describe the wave of change that swept some Arab countries in 2011?	ARAB SPRING
3691	What physical characteristic is also known as “a nevus”?	BIRTHMARK
3692	What piece of sporting equipment is colloquially known as a “pigskin”?	FOOTBALL
3693	What Pixar animated character has a parent named Coral?	NEMO
3694	What plastic toy comes with a pointing device called a planchette?	OUIJA BOARD
3695	What playwright artfully plugged his most famous work by saying, “Some of my plays peter out,and some pan out”?	J.M. BARRIE
3696	What poet is commonly credited with writing the traditional lyrics to the New Year’s Eve Song “Auld Lang Syne”	ROBERT BURNS
3697	What political figure had a mechanical heart pump installed in 2010 that left him literally without a pulse?	DICK CHENEY
3698	What pop singer’s videos often feature professional motocross racer Carey Hart,her husband since 2006?	PINK
3699	What pop star made his TV acting debut in 2010, playing teenage bomber Jason McCann on “CSI”?	JUSTIN BIEBER
3700	What pop star once quoted as saying “I don’t want to be Mr.Sexy back forever”?	JUSTIN TIMBERLAKE
3701	What pop star was named an Ambassador for Youth and Culture by her native country of Barbados?	RIHANNA
3702	What popular cleaning brand’s varieties include “Dusters,” “Dry” and “WetJet”?	SWIFFER
3703	What popular dish’s name is pronounced exactly like that of a well-known brand of pasta sauce?	RAGOUT
3704	What popular grocery store brand comes in a distinctive grandmother-shaped container?	MRS. BUTTERWORTH’S SYRUP
3705	What popular movie was based on a 1976 magazine article about the 2001 Odyssey nightclub?	SATURDAY NIGHT FEVER
3706	What popular toy was created when engineer Scott Stillinger tied together a bunch of rubber bands?	KOOSH BALL
3707	What popular TV program began as a local talk show called “AM Chicago?”	OPRAH
3708	What popular TV show is set in the fictional seaside town of Cabot Cove?	MURDER, SHE WROTE
3709	What popular U.S. tourist destination’s exterior consists of 142 stainless-steel equilateral triangles?	GATEWAY ARCH
3710	What popular Web series features an irritating piece of fruit that constantly heckles his kitchen counter neighbors?	THE ANNOYING ORANGE
3711	What presidential appointee is charged with arguing cases on behalf of the U.S. in the Supreme Court?	SOLICITOR GENERAL
3712	What presidential election will be the first in which both Barack Obama’s daughters will be eligible to vote?	2020
3713	What presidential last name can be typed using just the right-hand side of a standard keyboard?	POLK
3714	What product’s 1972 patent describes a “foamable resinous composition” sprayed from an aerosol can?	SILLY STRING
3715	What professional “title” is shared by media personalities Ruth Westheimer and Phil McGraw?	DOCTOR
3716	What professionals are sometimes disparagingly referred to as “the gnomes of Zurich”?	SWISS BANKERS
3717	What psychological condition shares its name with a region of the Atlantic Ocean known for its squalls and shifting winds/	DOLDRUMS
3718	What punny prize is doled out each year by real Nobel laureates to highlight unusual research?	IG NOBEL
3719	What puny prize is doled out each year by real Nobel laureates to highlight unusual research?	IG NOBEL
3720	What R&B artist was an early mentor to Justin Bieber, getting him his first record deal at 14 years old?	USHER
3721	What race’s last place finisher receives a red lantern,supposedly to help light the way home at night?	IDITAROD
3722	What rapper’s song “Dear Mama” was officially preserved in the U.S. Library of Congress in 2010?	TUPAC SHAKUR
3723	What reality star had her famous catch-phrases “I die!” and “Bananas!” trademarked in 2009?	RACHEL ZOE
3724	What region of the globe shares its name with a term meaning “a state of listlessness or sadness”?	DOLDRUMS
3725	What religious sect congregates in buildings called “Kingdom Halls?”	JEHOVAH’S WITNESSES
3726	What renowned scientist’s lab books were once kept in lead-lined boxes because they were radioactive?	MARIE CURIE
3727	What restaurant chain is famous for its trademarked Horsey Sauce?	ARBYS
3728	What restaurant chain offers a signature meal called the Rooty Tooty Fresh ‘N Fruity?	IHOP *CORRECT*
3729	What retailer donates proceeds from sales of its “Easy Button” to the Boys & Girls Clubs of America?	STAPLES
3730	What retailer offers customers its signature dish of Swedish meatballs?	IKEA
3731	What retailer’s original store in Freeport, MA has been opened 24 hours a day for over 50 years?	L.L. BEAN
3732	What retailer’s “Angels” models have their own star on the Hollywood Walk of Fame?	VICTORIA’S SECRET
3733	What rock band dedicated a 2005 to it’s lead singer’s father-in-law, director Bruce Paltrow?	COLDPLAY
3734	What sci-fi movie depicts an ageist, futuristic world in in which people over 30 are systematically shot?	LOGAN’S RUN
3735	What scientific theory attempts to find unexpected patterns in seemingly random data?	CHAOS THEORY
3736	What season includes three consecutive months that are also popular female names?	SPRING
3737	What serves as the punchline in a popular Cheez-It commercial that asks, “What do you call a cheese that isn’t yours”?	NACHO CHEESE
3738	What singer plays screen siren Jean Harlow in Martin Scorsese’s 2004 movie “The Aviator”?	GWEN STEFANI
3739	What singer’s 2009 greatest hits albums includes the tracks “Toxic” and “Baby, One More Time”?	BRITANNY SPEARS
3740	What singer’s concerts often include “Hot Patootie,” a song he sang as Eddie in “The Rocky Horror Picture Show”?	MEAT LOAF
3741	What singer’s revealing 1993 Rolling Stones cover memorably featured two strategically placed hands?	JANET JACKSON
3742	What single word is California’s state motto?	EUREKA
3743	What sitcom features a well-to-do family employing a wise-cracking butler named Geoffrey Butler?	THE FRESH PRINCE OF BEL_AIR
3744	What sport does Jose Canseco play professionally?	BASEBALL
3745	What sports “unnecessary roughness” penalty inspired the name of the USA drama “Necesay Roughness”?	FOOTBALL
3746	What sport’s college teams traditionally compete in post-season games called “bowls”?	FOOTBALL
3747	What state contains the ten tallest peaks in the U.S.	ALASKA
3748	What state’s capital and largest city sits on the shores of Narragansett Bay?	RHODE ISLAND
3749	What state’s former chief executive once inspired the bumper sticker, “Coldest State.Hottest Governor”?	ALASKA
3750	What state’s standard license plates feature the motto “The First State”?	DELAWARE
3751	What supernatural film features a psychic giving a lonely widow the warning, “Molly, you in danger girl”?	GHOST
3752	What tattooed celebrity has the name of his three sons, Brooklyn, Romeo, and Cruz, inked on his back?	DAVID BECKHAM
3753	What tech company proudly notes that its name is a reference to an ancient gourd that was used to “hold precious things”?	HULU
3754	What term is often used to describe a session of Congress held after the elections but before the new term?	LAME DUCK
3755	What terms refers to the tendency for shoppers to buy small comfort items during a recession?	LIPSTICK EFFECT
3756	What Tim Burton film was advertised with the tagline “His story will touch you,even though he can’t”?	EDWARD SCISSORHANDS
3757	What Tony-winning Broadway musical features a cast of risque, R-rated puppets?	AVENUE Q
3758	What toy was once reportedly banned in Japan because people looked indecent when they used it?	HULA HOOP
3759	What track and field event is also known as the “quarter mile”?	400 METERS
3760	What trade magazine is famous for its distinctive jargon,inventing words like “boffo” and “whammo”?	VARIETY
3761	What traditional M&M’s Milk Chocolate candy color was replaced by blue in 1995?	TAN
3762	What TV actress’ first job was as one of “The Love Boat Mermaids,” a dance troupe on “The Love Boat”?	TERI HATCHER
3763	What TV cartoon centers on two stepbrothers,their pet platypus and an evil scientist named Dr.Doofenshmirtz?	PHINEAS AND FERB
3764	What TV chef released the 2010 book “Savannah Style,” illustrating a full year of Southern living?	PAULA DEEN
3765	What TV drama is based on the popular Sookie Stackhouse novels by Charlaine Harris?	TRUE BLOOD
3766	What TV drama’s opening narration begins, “My name is Michael Weston. I used to be a spy, until…”	BURN NOTICE
3767	What TV network operates the website jokes.com?	COMEDY CENTRAL
3768	What TV personality’s fans express their allegiance by proclaiming themselves members of “Team Coco”?	CONAN O’BRIEN
3769	What TV sitcom was based on a novel by H.Richard Hornberger,a surgeon and Korean War veteran?	M*A*S*H
3770	What TV star was famous for his stage-exiting catch-phrase, “And away we go”?	JACKIE GLEASON
3771	What two-word term is used by publishers to refer to all unsolicited manuscripts they receive?	SLUSH PILE
3772	What type of clothing is a monokini?	SWIMSUIT
3773	What type of cloud is typically associated with fair weather?	CUMULUS
3774	What type of jewelry appropriately gets its name from the French for “long needle”?	BROOCH
3775	What type of neckline gets its name because it is traditionally seen on sweaters by rowers?	CREW NECK
3776	What type of scientist is commonly referred to as a “prehistorian”?	ARCHAELOGIST
3777	What type of soup is known affectionately as “Jewish penicillin”?	CHICKEN SOUP
3778	What type of vehicle “with the fringe on top” is the subject of a classic song from the musical “Oklahoma!”?	SURREY
3779	What U.S. agency is headquartered in a D.C.-area neighborhood known as “Langley”?	CIA
3780	What U.S. agency’s website features the motto “Moving America Safely”?	FAA*CORRECT*
3781	What U.S. city has a public transportation system known as MARTA?	ATLANTA
3782	What U.S. city is home to Grant’s tomb, the final resting place of President Ulysses S. Grant?	NEW YORK
3783	What U.S. city was founded by 11 men,11 women,22 children,and 4 soldiers,collectively known as “Los Pobladores”?	LOS ANGELES
3841	What “casual dining” restaurant uses the slogan “Eatin’ Good in the Neighborhood”?	APPLEBEE’S
3784	What U.S. city’s layout is based on plans by Pierre Charles L’Enfant, who was inspired by the Palace of Versailles?	WASHINGTON,D.C.
3785	What U.S. institution is nicknamed “The Nation’s Attic”?	SMITHSONIAN INSTITUTE
3786	What U.S. landmark exists today as a result of the Boulder Canyon Project Act of 1928?	HOOVER DAM
3787	What U.S. landmark is outfitted with multiple foghorns because its locale is so often enveloped in dense fog?	GOLDEN GATE BRIDGE
3788	What U.S. movie was released in France under the title “La Guerre des Etoiles”?	STAR WARS
3789	What U.S. president famously declared that he felt as “strong as a bull moose?”	THEODORE ROOSEVELT
3790	What U.S. president is commonly credited with inventing the swivel chair?	THOMAS JEFFERSON
3791	What U.S. president was famous for his involvement with a volunteer cavalry group known as the Rough Riders?	THEODORE ROOSEVELT
3792	What U.S. president’s mother was given the rather unusual first name Stanley?	BARACK OBAMA
3793	What U.S. reality show has a Chinese version whose title translates to “Forward at High Speeds”?	THE AMAZING RACE
3794	What U.S. state is divided into two regions called the Upper Peninsula and the Lower Peninsula?	MICHIGAN
3795	What U.S. state is home to a city that promotes itself with the catchphrase “There’s No Place Like Nome!”?	ALASKA
3796	What U.S. state is home to a university whose football team is known as “The Ragin Cajuns?”	LOUISIANA
3797	What U.S. state is home to both Boise National Forest and Coeur d’Alene National Forest?	IDAHO
3798	What U.S. state is home to England’s historic London Bridge, which was dismantled and moved in 1968?	ARIZONA
3799	What U.S. state is home to the airport with the three-letter identification code “DFW”?	TEXAS
3800	What U.S. state is home to the International Tennis Hall of Fame?	RHODE ISLAND
3801	What U.S. state name is featured on labels of Jim Beam whiskey?	KENTUCKY
3802	What U.S. state was denied statehood until 1896, after it agreed to ban the practice of polygamy?	UTAH
3803	What U.S. state’s 3 most populous cities all have names beginning with the letter “C”?	OHIO
3804	What U.S. state’s capital city is named after Revolutionary War hero Francis Nash?	TENNESSEE
3805	What U.S. state’s capital was named after “the Most Holy Sacrament of the Body and blood of Christ”?	CALIFORNIA
3806	What U.S. state’s history of mining has earned it the nickname “The Silver State”?	NEVADA
3807	What U.S. state’s largest city is named for Frederick Billings, a president of the Northern Pacific Railway?	MONTANA
3808	What U.S. town holds an annual “Wyatt Earp Days” festival to celebrate its most famous lawman?	TOMBSTONE, AZ
3809	What unit of measure is still based on a century-old platinum-iridium cylinder kept near Paris, France?	KILOGRAM
3810	What university lists its official colors as “Madonna blue and papal gold”?	UNIVERSITY OF NOTRE DAME
3811	What urban clothing brand was co-founded by hip-hop mogul Jay-Z?	FUBU
3812	What vegetable plant produces a soft,yellowish “silk,” often used in herbal remedies?	CORN
3813	What vegetable’s name is an answer to the common riddle “What has eyes but cannot see”?	POTATO
3814	What veteran performer stars alongside Christina Aguilera in the 2010 musical “Burlesque”?	CHER
3815	What was the first James Bond movie to show 007 ordering a martini,”shaken,not stirred”?	GOLDFINGER
3816	What was the first name of the man who created Webster’s dictionary?	NOAH
3817	What was the name of a Santa Fe roadside attraction that featured dozens of refrigerators stacked in a circle?	STONEFRIDGE
3818	What was the name of the cocker spaniel featured in a famous 1952 address by Richard Nixon?	CHECKERS
3819	What was the relationship between U.S. Presidents William and Benjamin Harrison?	GRANDFATHER & GRANDSON
3820	What was the relationship of fashion designer Donatella Versace to the late Gianni Versace?	SISTER
3821	What was the subject of a 1964 decision in which Justice Potter Stewart wrote, “I know it when I see it”?	OBSCENITY
3822	What was the world’s tallest man-made structure for over 43 centuries?	PYRAMID AT GIZA
3823	What was the world’s tallest man-made structure for over 45 centuries?	PYRAMID AT GIZA
3824	What weather-related term is in the title of a nursery rhyme with a line “The old man is snoring”?	RAINY
3825	What well-known patriotic song features the line “From sea to shining sea”?	AMERICA THE BEAUTIFUL
3826	What Will Ferrell movie features several actors who are credited as “Background Sleestak”?	LAND OF THE LOST
3827	What word of Yiddish origin means “pleasantly plump”?	ZAFTIG
3828	What words are on the official flag of the Salvation Army?	BLOOD AND FIRE
3829	What world leader travels on an airplane nicknamed “Shepherd One”?	POPE
3830	What world religion is based on five basic requirements known as the five “pillars”?	ISLAM
3831	What world-famous building has a roof that was reportedly inspired by the sections of an orange?	SYDNEY OPERA HOUSE
3832	What would be the name of Crosby,Stills,Nash & Young if its members’ last names were replaced with their first names?	DAVID,STEPHEN,GRAHAM & NEIL
3833	What would be the name of ’60s folk group Peter,Paul and Mary if their last names replaced their first names?	YARROW,STOOKEY AND TRAVERS
3834	What writer sought out his former college professor Morrie Schwarz after seeing him on an episode of “Nightline”?	MITCH ALBOM
3835	What ’70s movie features the oft-quoted line, “I’m as mad as hell, and I’m not going to take this anymore”?	NETWORK
3836	What ’70s song invariably compels dancers to spell out each letter of the song’s title using their bodies?	Y.M.C.A.
3837	What ’80s film is loosely based on events in Elmore City,Oklahoma,where dancing was banned for almost 100 years?	FOOTLOOSE
3838	What ’80s musical act notoriously demanded M&Ms be provided backstage,but with the brown ones removed?	VAN HALEN
3839	What ’90s sitcom often featured a character doing a strange dance to Tom Jones’s “It’s Not Unusual”?	THE FRESH PRINCE OF BEL-AIR
3840	What “Beverly Hills 90210” co-star competed on “Dancing With The Stars” a season after her fellow co-star Ian Ziering?	JENNIE GARTH
3956	Which of the following words is spelled inCORRECTly?	OCCURENCE
3842	What “Sesame Street” character is famous for having a single,oversized eyebrow?	BROW
3843	What “SNL” cast member based his “Coffee Talk” character Linda Richman on his then mother-in-law?	MIKE MEYERS
3844	What’s the CORRECT spelling of the winning word in the first-ever Scripps National Spelling Bee in 1925?	GLADIOLUS
3845	What’s unusual about the way Ziggy, the loveable comic strip character, is commonly depicted?	HE DOESN’T WEAR PANTS
3846	Whcih of these adjectives refers to a legendary English king and not a famous English writer?	ARTHURIAN
3847	When a 1968 football game ended in a tie,the Harvard Crimson newspaper ran what famous headline?	HARVARD BEATS YALE 29-29
3848	When a person assumes the “fetal position,” what do they do?	CURL UP IN A BALL
3849	When a person is at rest,about how long does it take for all of his blood to circulate through his heart?	ONE MINUTE
3850	When an NFL head coach chooses to challenge a referee’s ruling,he throws what color “flag” onto the field?	RED
3851	When asked in 2007 if he had ever cried at a movie,what actor jokingly replied “At the premiere of Batman & Robin”?	GEORGE CLOONEY
3852	When asked why he titled his movie “Bananas,” what director replied, “Because there are no bananas in it?”	WOODY ALLEN
3853	When checking your account balance in countries like Spain or Turkey,remember that periods are replaced by what?	COMMAS
3854	When communicating online,a person might type the emoticon “o_O” to indicate that they are what?	SURPRISED
3855	When decorating a Christmas Tree,most experts would reccomend adding what first?	LIGHTS
3856	When digesting one’s food,which of these steps in the digestion process occurs first?	SALIVARY DIGESTION
3857	When England adopted the new Gregorian calendar in 1752, people complained that they “lost” how many days?	11
3858	When he was assassinated in Dallas Texas in in 1963, John F. Kennedy was riding in what make of car?	LINCOLN CONTINENTAL
3859	When in the air,the famous Goodyear blimps are filled with nearly 203,000 cubic feet of what?	HELIUM
3860	When introducing new Apple products, Steve Jobs was known for sporting what distinct fashion ensemble?	Black turtleneck, blue jeans
3861	When introducing new Apple products,Steve Jobs was known for sporting what distinct fashion ensemble?	BLACK TURTLENECK,BLUE JEANS
3862	When it is expressed in Roman numerals,which of these years is represented by the fewest number of letters?	2001 *CORRECT*
3863	When it is July in the U.S., what season is it in Argentina?	WINTER
3864	When it premiered,which of these movies had a title that referred to a date in the future and not the past?	2001:A SPACE ODYSSEY
3865	When it was founded in 1970,what company’s name was a reference to its founder’s curly head of hair?	KINKO’S
3866	When its first three letters are removed,what U.S. president’s name becomes that of an ’80s TV icon?	LYNDON JOHNSON
3867	When it’s not capitalized,which of these men’s names is also a term used by con men to refer to an intended victim?	MARK
3868	When jump-starting a car, the jumper cables are usually attached to what part of the vehicle?	BATTERY
3869	When kissed,which of these landmarks is said to endow visitors with the “gift of gab”?	BLARNEY STONE
3870	When listed in the newspaper, which of these numbers are often referred to as “quotes?”	STOCKS
3871	When measuring a woman’s measurements, as in “36, 35, 36” the numbers correspond to which of the following?	BUST, WAIST, HIPS
3872	When not anchoring “NBC Nightly News,” what newsman frequently spoofs himself of TV’s “30 Rock”?	BRIAN WILLIAMS
3873	When ordered Venti-sized,which Starbucks drink tops out at more calories–630–than a McDonald’s Big Mac?	ICED WHITE CHOCOLATE MOCHA
3874	When poaching eggs, chefs often use which of these ingredients to prevent the whites from “spreading?”	VINEGAR
3875	When President Garfield was shot in 1881, who invented a type of metal detector to try and find the bullet?	ALEXANDER GRAHAM BELL
3876	When repeated three times,which of these words does not become the title of a Top 40 pop song?	BAD
3877	When Robert Frost famously wrote “It finds the thought and the thought finds the words,” he was referring to a what?	POEM
3878	When spelled as one word, what baseball hall of famer’s last name means “having a pH more than 7?”	AL CALINE
3879	When stating a woman’s measurements — as in “36, 25, 36” — the numbers correspond to which of the following?	BUST, WAIST, HIPS
3880	When stating a woman’s measurements– as in 36,25,36″– the numbers correspond to which of the following?	BUST,WAIST,HIPS
3881	When the number 4 is multiplied by its reciprocal, what is the product?	1
3882	When the year 1776 is written in Roman numerals, what letter is farthest on the right?	I
3883	When their perimeters are of equal length, which of these shapes always has the largest area?	CIRCLE
3884	When translated from the French,what is the full name of the resort company known as Club Med?	CLUB MEDITTERANEAN
3885	When translated into English,which Shakira song title can describe someone infected with a serious medical condition?	RABIOSA
3886	When TV advertisers refer to the all-important “18-49 demo,” “demo” stands for what?	DEMOGRAPHIC
3887	When used as a verb,the name of what vital organ becomes a word meaning “to tolerate”?	STOMACH
3888	When used in reference to electronic organizers,the abbreviation “PDA” stands for “personal digital” what?	ASSISTANT
3889	When would a car dealership need to sell a Ford Taurus in order to sell it during the astrological period of Taurus?	EARLY MAY
3890	When written CORRECTly,which of these terms should not contain an apostrophe?	GRAND’MA
3891	When written properly,which of these ’80s pop bands has an exclamation point at the end of its name?	WHAM
3892	When you put the word “water” in front of it,which of these shoes becomes the name of a venomous snake?	MOCCASIN
3893	When you use a key resource to gain advantage in a deal,it is said that you are playing what kind of “card”?	TRUMP
3894	When “Footloose” was remade in 2011, it dropped the original’s chicken race scene, which took place on what?	TRACTORS
3895	Where does the German accent mark, the “umlaut,” appear in the brand name Haagan-Dazs?	OVER THE FIRST “A”
3896	Where on a personal check can you typically find its nine-digit ABA or “routing number”?	BOTTOM LEFT CORNER
3897	Where would you find a widow’s peak?	IN SOMEONE’S HAIRLINE
3898	Whereas the back of a coin is called its “reverse,” the front side is technically known as what?	OBVERSE
3899	Which actress has twins named Hazel and Finn?	JULIA ROBERTS
3900	Which Baldwin brother wrote “The Unusual Suspect,” an account of becoming an evangelical Christian?	STEPHEN
3901	Which branch of the U.S. military was founded most recently?	AIR FORCE
3902	Which culinary device uses a method known as a bain-marie,or water bath,to provide heat?	DOUBLE BOILER
3903	Which department of the U.S. federal government has the authority to issue passports?	STATE
3904	Which Jackson family member shares his name with the nickname of the man who ruled Yugoslavia from 1953 to 1980?	TITO
3905	Which literary character is a famous example of a “picaresque” hero, a lowborn character who lives by his wits?	HUCKLEBERRY FINN
3906	Which member of Congress is known as “Dr.No” because he a)votes “no” a lot,and b) is a doctor?	RON PAUL
3907	Which movie title comes from a phrase its screenwriter heard while working as an embedded journalist in Iraq?	THE HURT LOCKER
3908	Which New York City street is best known as the home of the New York Stock Exchange?	WALL STREET
3909	Which of the following animals is not an ungulate?	RACCOON
3910	Which of the following aquatic creatures is not actually a fish?	STARFISH
3911	Which of the following best describes a man who is known as a “Beau Brummell”?	VERY WELL-DRESSED
3912	Which of the following birds is not named for the sound it makes?	ROBIN
3913	Which of the following birds is not named for the sound that it makes?	ROBIN
3914	Which of the following classic sitcom characters had only sisters for siblings?	THEO HUXTABLE
3915	Which of the following could be used to introduce both the 29th U.S. president and a Grammy-nominated rapper?	WARREN G
3916	Which of the following countries could be said to have occidental cuisine?	MEXICO
3917	Which of the following dishes is defined as “a hearty soup usually containing fish or shellfish,especially clams”?	CHOWDER
3918	Which of the following familiar words is derived from a Latin word that means “the meeting point of three ways”?	TRIVIA
3919	Which of the following films deals with the transportation of illegal drugs?	TRAFFIC
3920	Which of the following halls is synonymous with the corrupt political group that ran New York City in the late 19th century?	TAMMANY HALL
3921	Which of the following is a 2007 movie featuring Beatles music and not a 60s movie starring The Beatles?	ACROSS THE UNIVERSE
3922	Which of the following is a classic men’s toiletry brand and not one of the Spice Girls?	OLD SPICE
3923	Which of the following is a classic men’s toiletry brand and not one of the Spice Girls?	OLD SPICE
3924	Which of the following is a common definition for the word “tawny”?	LIGHT BROWN
3925	Which of the following is a fancy substitute for “my fiance”?	MY BETROTHED
3926	Which of the following is a fancy word for the behavior that makes Pinocchio’s nose grow?	PREVARICATION
3927	Which of the following is a hip-sounding chapter title in Stephen Hawking’s “A Brief History of Time”?	Black Holes Ain’t So Black
3928	Which of the following is a true statement about reindeer?	MALES & FEMALES HAVE ANTLERS
3929	Which of the following is equal to one century?	FIVESCORE YEARS
3930	Which of the following is equal to the number to the total number of days in a fortnight?	LINES IN A SONNET
3931	Which of the following is not a lyric from Bob Dylan’s rock ballad “Like a Rolling Stone”?	WHEN YOU’RE ALL ALONE
3932	Which of the following is not a synonym for “trinket”?	HOOPLA
3933	Which of the following is not a word?	EMMANENT
3934	Which of the following is not one of the 5 ingredients listed on a pint of Haagan Dags ice cream?	EGG WHITES
3935	Which of the following is not one of the 8 vegetables in the beverage V8?	RADISH
3936	Which of the following is not one of the five ingredients listed on a pint of Haagen Dazs vanilla ice cream?	EGG WHITES
3937	Which of the following is often classified as a type of role-playing game?	DUNGEONS & DRAGONS
3938	Which of the following is often referred to as “chicken scratch”?	ILLEGIBLE HANDWRITING
3939	Which of the following is the CORRECT case-sensitive spelling of a popular brand of digital video recorder?	TiVo
3940	Which of the following is the CORRECT name for the popular breed of dog much prized by Queen Elizabeth II?	WELSH CORGI
3941	Which of the following is the name of a landlocked country in Africa and not an island in Hawaii?	MALAWI
3942	Which of the following is the name of a popular blog specializing in “nerd culture”?	BOING BOING
3943	Which of the following is the name of an organization that holds an annual “Best Bagger” championship?	NATIONAL GROCERS ASSOCIATION
3944	Which of the following is the title of a 1963 Marvin Gaye song and not a phrase commonly uttered by courtroom attorneys?	CAN I GET A WITNESS
3945	Which of the following names does not refer to the same rapper as the others?	BIGGIE SMALLS
3946	Which of the following names does not refer to the same rapper as the others?	BIGGIE SMALLS
3947	Which of the following refers to a style of eating in which patrons share large dishes of food?	FAMILY STYLE
3948	Which of the following repetitive titles is not an actual Destiny’s Child song?	BABY,BABY,BABY
3949	Which of the following results in a professional bull rider being disqualified and receiving no score?	HOLDING ON WITH TWO HANDS
3950	Which of the following superlative phrases is true of Abraham Lincoln?	TALLEST PRESIDENT
3951	Which of the following terms is used in chemistry and not in real estate?	REAGENT
3952	Which of the following values is equal to one billion?	TEN TO THE NINTH POWER
3953	Which of the following was the name of an upscale ocean liner that sailed from 1969 to 2008?	QUEEN ELIZABETH II
3954	Which of the following word pairs constists of synonyms,not antonyms?	FLAMMABLE AND INFLAMMABLE
3955	Which of the following words is not a synonym for “brouhaha”?	DOOHICKEY
3957	Which of the following words was spelled backwards in the movie and novel “The Shining”?	MURDER
3958	Which of the following would be the name of Spanish actor Antonio Banderas if it were “translated” into English?	ANTHONY FLAGS
3959	Which of these 1981 hits would best be described as a “power ballad”?	DON’T STOP BELIEVING
3960	Which of these 2010 movies held a premiere in Lexington, Kentucky, near where much of it was filmed?	SECRETARIAT
3961	Which of these 2011 movies was based in part on a stage play that took the 2011 Tony for Best Play?	WAR HORSE
3962	Which of these 80s action icons is not featured in the 2010 action flick “The Expendables”?	STEVEN SEAGAL
3963	Which of these activities involves a process known as “purling”?	KNITTING
3964	Which of these actors appeared as both a male and a female character in the “Godfather” films?	SOFIA COPPOLA
3965	Which of these actors attributes his unique performance style to ignoring the punctuation marks in his scripts?	CHRISTOPHER WALKEN
3966	Which of these actors is a devout Buddhist who has studied with the Dalai Lama?	RICHARD GERE
3967	In all seriousness,the satirical newspaper The Onion has tried and failed to win what prestigious journalism award?	PULITZER PRIZE
3968	In alternative medicine, halotherapy is a treatment that replicates what natural environment’s health benefits?	SALT CAVE
3969	In American Sign Language, how do you make the letter “S”?	MAKE A FIST
3970	In American Sign Language,an extended thumb and pinkie placed next to one’s ear is the sign for doing what?	MAKING A PHONE CALL
3971	In an airplane,the flight data recorder and the cockpit voice recorder are often referred to as the what?	BLACK BOX
3972	In an annual holiday tradition,the “Late Show with David Letterman” trims the top of its Christmas tree with what food item?	MEATBALL
3973	In an automobile,what does the tachometer measure?	ENGINE SPEED
3974	In an early celebrity endorsement,which of these famous women promoted her own line of luggage?	AMELIA EARHART
3975	In an emergency,which procedure can be performed with little more than a razor blade and a ballpoint pen?	TRACHEOTOMY
3976	In an expression borrowed from poker,high-quality stocks like Coca-Cola and IBM are known as what?	BLUE-CHIP STOCKS
3977	In an expression that means “That might be useful,” a person might say “That’s grist to the” what?	MILL
3978	In an extended trailer,Alfred Hitchcock says of what film’s main character, “his hobby…was taxidermy”?	PSYCHO
3979	In an Olympic-size pool,which is 50-meters long,about how many lengths would you have to swim in order to swim a mile?	32 *CORRECT*
3980	In Apple’s slogan, “There’s an app for that,” the “app” mentioned is short for what?	APPLICATION
3981	In April 2010, which of these country’s erupting volcanoes shut down European air travel for nearly a week?	ICELAND
3982	In architecture, a vertical window set in a gable on a sloping roof is called a what?	DORMER
3983	In the AAMCO song, when does the double beep occur.	AFTER THE DOUBLE A
3984	In the abbreviation for the medical procedure popularly known as an MRI,what does the “I’ stand for?	IMAGING
3985	In the acronym SRS, a common term for automobile airbags,the letter “R” stands for what?	RESTRAINT
3986	In the act that incited WWI,Serbian Gavrilo Princip assassinated Archduke Franz Ferdinand in 1914 in what city?	SARAJEVO
3987	In the agency abbreviation “EEOC,” the first E stands for “equal” and the second stands for what?	EMPLOYMENT
3988	In the animal kingdom, what term is used to describe the male who is the dominant member of a group?	ALPHA
3989	In the Bahamas, Oct 12th is Discovery Day, marking the arrival of what European explorer?	CHRISTOPHER COLUMBUS
3990	In the Bible, whose height is given as “six cubits and a span,” somewhere between nine and twelve feet?	GOLIATH
3991	In the Bizet opera, “Carmen,” the flirtatious Carmen works in what type of establishment?	CIGARETTE FACTORY
3992	In the board game Risk,what continent has the most territories for a player to occupy?	ASIA
3993	In the British royal family,which of the following is not the name of one of Prince Charles’s three siblings?	MARGARET
3994	In the Broadway musical “Cats,” costumed actors romp around a set designed to look like a what?	JUNKYARD
3995	In the business abbreviation “R & D,” the “R” stands for what?	RESEARCH
3996	In the cable drama “Boss,” Kelsey Grammar plays a crooked mayor of what U.S. city?	CHICAGO
3997	In the Charles Dickens novel “A Christmas Carol,” what is the last name of the young Tiny Tim?	CRATCHIT
3998	In the children’s book “The Little Engine That Could”,what is the engine attempting to deliver?	TOYS
3999	In the children’s classic “Goodnight Moon,” what is the last thing that is bid “Goodnight”?	NOISES EVERYWHERE
4000	In the children’s rhyme “This Little Piggy,” where did the first little piggy go?	TO MARKET
4001	In the classic animated movie “The Little Mermaid,” Ariel’s best friend is a fish named what?	FLOUNDER
4002	In the classic arcade game Centipede,players battle all but which of these deadly creatures?	WASPS
4003	In the classic book “The Swiss Family Robinson,” the Robinsons build a makeshift house where?	IN A TREE
4004	In the classic folk song “On Top of Old Smoky,” what is “Old Smoky”?	Mountain
4005	In the classic Mark Twain novel,Tom Sawyer lives in a small town located near what river?	MISSISSIPPI
4006	In the classic Rocky and Bullwinkle cartoons,Rocky is what type of animal?	FLYING SQUIRREL
4007	In the classic Shel Silverstein book “The Giving Tree,” what type of tree gives its fruit to a little boy?	APPLE TREE
4008	In the classic story “Peter Pan,” what does Wendy use to reattach Peter’s shadow?	NEEDLE AND THREAD
4009	In the classic T.V. series “The Waltons,” the Walton family lives in which U.S. state?	VIRGINIA
4010	In the classic tale “Moby Dick,” Moby Dick is what kind of whale?	SPERM WHALE
4011	In the classic tearjerker “Beaches,” two girls begin their lifelong friendship on a beach in what U.S. state?	NEW JERSEY
4012	In the classic TV special, Rudolph, the Red-Nosed Reindeer befriends an elf who wants to be a what?	DENTIST
4013	In the classic version of Monopoly, the two “utility companies” are Water Works and the what?	ELECTRIC COMPANY
4014	In the classic version of Monopoly,the two “utility companies” are Water Works and the what?	ELECTRIC COMPANY
4015	In the climactic prom scene of the 1976 film “Carrie,” the title character is doused with the blood of what farm animal?	PIG
4016	In the comedy classic “This is Spinal Tap,” the famous quote “These go to eleven” refers to what?	GUITAR AMPLIFIERS
4017	In the comedy film “Fever Pitch,” Jimmy Fallon plays a crazed fan of what sports team?	BOSTON RED SOX
4018	In the comic strip “Peanuts,” what character is typically surrounded by clouds of dirt and dust?	PIGPEN
4019	In the computer game “The Oregon Trail,” kids learn about U.S. history by pretending to be what?	WESTERN PIONEERS
4020	In the courtroom expression “pleading the Fifth,” the word “Fifth” refers to a what?	CONSTITUTIONAL AMENDMENT
4021	In the cover of the song “Proud Mary,” Tina Turner sings, “And we’re rolling, rolling, rolling on the” what?	RIVER
4022	In the critically acclaimed TV drama “The Good Wife,” who plays the good wife?	JULIANNA MARGULIES
4023	In the Discover card logo,what natural event is depicted in the “O” in “Discover”?	SUNRISE
4024	In the Disney animated classic “Pinocchio,” what kind of animal swallows Pinocchio whole?	WHALE
4025	In the e-mail and memo abbreviation “bcc,” what does the “b” stand for?	BLIND
4026	In the early 1900s,FTD began using the classic slogan “Say it with” what?	FLOWERS
4027	In the early 20th century, Robert Perry and Frederick Cook each claimed to be the first to what?	REACH THE NORTH POLE
4028	In the early ’90s, comic strip housewife Blondie Bumstead began a career as a what?	CATERER
4029	In the fairy tale ending of “Pretty Woman,” what does Edward do to “rescue” Vivian?	CLIMB A FIRE ESCAPE
4030	In the famous Latin saying “veni, vidi, vici,” what does “vidi” mean?	I SAW
4031	In the favorite brunch menu item Eggs Benedict,how are the eggs prepared?	POACHED
4032	In the federal law known as “RICO,” the “R” stands for what?	RACKETEER
4033	In the film business, what tech-inspired term is often used to refer to “starting over” a popular film franchise?	REBOOT
4034	In the film “Back To The Future,” Marty McFly performs what song at his parents’ high school dance?	JOHNNY B. GOODE
4035	In the film “Forrest Gump,” Forrest tells President Kennedy “I gotta pee” after drinking 15 bottles of what?	DR.PEPPER
4036	In the film “Million Dollar Baby,” Maggie wears a robe labeled “Mo Cuishle,” a saying in what language?	GAELIC
4037	In the folk song “She’ll Be Coming ‘Round the Mountain,” what will she “be driving”?	SIX WHITE HORSES
4038	In the full name of the military alliance “NATO,” the “T” stands for what?	TREATY
4039	In the historical term, “V-J Day,” the “J” stands for the name of a what?	COUNTRY
4040	In the holiday classic “The Twelve Days of Christmas,” which of these gifts does the singer receive on the 6th day?	GEESE-A-LAYING
4041	In the holiday film “A Christmas Story”,the Parkers dine on what dish after their Christmas turkey is ruined?	PEKING DUCK
4042	In the holiday song “The Twelve Days of Christmas,” how many gifts are received on the 12th day?	78
4043	In the horror flick “A Nightmare on Elm Street,” a frightened teen warns “Whatever you do,don’t” do what?	FALL ASLEEP
4044	In the human body, the pericardium is a membrane that surrounds what organ?	HEART
4045	In the human body, what internal organ regulates the amount of glucose in the blood?	LIVER
4046	In the human body,a “bicuspid” can refer to a type of tooth and a type of valve located in what organ?	HEART
4047	In the human body,the pancreas is part of both the endocrine system and what other system?	DIGESTIVE
4048	In the iconic WW II poster, “We can Do it!” Rosie the Riveter is depicted doing what?	FLEXING HER BICEPS
4049	In the Kurt Vonnegut novel “Breakfast of Champions,” what is referred to as the “breakfast of champions”?	MARTINIS
4050	In the late 1800s, William “Boss” Tweed led a corrupt political machine centered in what U.S. city?	NEW YORK
4051	In the late 1860s, Charles and Max Fleischmann created America’s first commercially produced what?	YEAST
4052	In the late ’90s,a Chihuahua named Gidget served as the “spokesdog” for what restaurant chain?	TACO BELL
4053	In the logo for the office supply company Staples,what letter appears to be formed from a bent staple?	L *CORRECT*
4054	In the mid-twentieth century,what U.S. state grew about 80 percent of the world’s pineapples?	HAWAII
4055	In the military, a Huey is a type of what?	HELICOPTER
4056	In the military,a U.S. marine with the ranking “E-3” is better known as a “lance” what?	CORPORAL
4057	In the military,which of these terms is slang for “kilometer”?	KLICK
4058	In the movie “Arthur,” what does Arthur say to elicit his butler’s famously dry response “I’ll alert the media”?	I’M GOING TO TAKE A BATH
4059	In the movie “Mean Girls,” a naive teen played by Lindsay Lohan tangles with a popular clique of girls nicknamed what?	THE PLASTICS
4060	In the movie “Snow White and the Seven Dwarfs,” how many of the dwarfs’ names do not end in “Y”?	2
4061	In the movie “The Lord of the Rings: The Return of the King,” the “king” in the title refers to whom?	ARAGORN
4062	In the movie “The Sound of Music,” the Von Trapps escape the Nazis by trekking through what mountain range?	ALPS
4063	In the name of communications giant AT & T, the second “T” originally stood for what?	TELEGRAPH
4064	In the name of the famous 1980s British band, what word follows “Psydelic”?	FURS
4065	In the name of the famous 1980s British band,what word follows “Psychedelic”?	FURS
4066	In the NATO phonetic alphabet that begins “Alpha,Bravo,Charlie,” how do you spell “USA”?	UNIFORM,SIERRA,ALPHA
4067	In the nautical expression “Shiver me timbers!” the word “timbers” originally referred to what?	HULL OF A SHIP
4068	In the news in 2012,a type of political fundraising group that can raise and spend unlimited money is called a what?	SUPER PAC
4069	In the novel “A Tale of Two Cities,” Madame Defarge spends most of her time doing what?	KNITTING
4070	In the novel “Twilight,” Edward and Bella attend Forks High School,located in what U.S. state?	WASHINGTON
4071	In the number 4.231, what digit is in the “hundredths” place?	3 *CORRECT*
4072	In the nursery rhyme “The Farmer in the Dell,” what “stands alone”?	THE CHEESE
4073	In the Old Testament, who said, “I am a stranger in a strange land”?	MOSES
4074	In the Olympics,a decathlon has how many more events than a triathlon?	7
4075	In the opening credits,what cartoon dad drops off his two kids at “Little Dipper School” and “Orbit High School”?	GEORGE JETSON
4076	In the original edition of “Trivial Pursuit,” what category is represented by the color yellow?	HISTORY
4077	In the Oscar-nominated 2009 movie “Fantastic Mr. Fox,” who voices Mr. Fox?	GEORGE CLOONEY
4078	In the Paul Simon song “50 Ways To Leave Your Lover,” which of these is not one of the ways to leave your lover?	FILL UP THE TANK,HANK
4079	In the Paul Simon song “50 Ways to Leave Your Lover,” which of these names is mentioned first?	JACK
4080	In the phrases “bar mitzvah” and “bat mitzvah,” “bar” and “bat” are Hebrew words meaning what?	SON AND DAUGHTER
4081	In the popular abbreviation FAQ,the letter “A” stands for what?	ASKED
4082	In the popular children’s song “On Top of Spaghetti,” what causes the singer’s meatball to roll off the table?	SOMEBODY SNEEZES
4083	In the popular diet book “Eat Right 4 Your Type,” what is the “type” the author wants you to “eat right for”?	BLOOD TYPE
4084	In the popular drink bubble tea,the little pearls or “boba” that gather at the bottom are typically made from what?	TAPIOCA
4085	In the popular “Ice Age” movies,the acorn-obsessed character Scrat is what type of fictional beast?	SABER-TOOTHED SQUIRREL
4086	In the Pulitzer Prize-winning novel,”The Amazing Adventures of Kavalier & Clay,” who are Kavalier and Clay?	COMIC BOOK ARTISTS
4087	IN the quality inspection process known as “candling,” which of these foods is held in a bright light?	EGGS
4088	In the Republican party abbreviation “GOP,” the “G” stands for what?	GRAND
4089	In the Schoolhouse Rock cartoon “Conjunction Function,” individual words are portrayed on what?	TRAIN CARS
4090	In the song “Folsum Prison Blues,” Johnny Cash claims, “I shot a man in Reno” for what callous reason?	JUST TO WATCH HIM DIE
4091	In the song “Frosty The Snowman,” what part of Frosty’s face is made of a button?	NOSE
4092	In the U.S. a $100 bill is often referred to by what musical nickname?	C-NOTE
4093	In the U.S. military, a “Black Hawk: refers to what type of vehicle?	HELICOPTER
4094	In the U.S. the companies McClatchy, Gannett, and Tribune are three of the largest owners of what?	NEWSPAPERS
4095	In the U.S. the federal appeals courts are divided into thirteen separate units called what?	CIRCUITS
4096	In the U.S. what is the earliest date on which Memorial Day can fall?	MAY 25th
4097	In the U.S., a bottled labeled “86 Proof” contains what percentage of alcohol?	43%
4098	In the U.S., a car’s “zero-to-sixty” time is a measure of the car’s what?	ACCELERATION
4099	In the U.S., people traditionally tie yellow ribbons around trees to show support for whom?	SOLDIERS IN COMBAT
4100	In the U.S., the Sherwin-Williams company is the largest producer of what product?	PAINT
4101	In the U.S., the small front pocket on a pair of Levi’s blue jeans is known as the what?	WATCH POCKET
4102	In the U.S., what 20th century event preceded the start of the so-called “Baby Boom” era?	WORLD WAR II
4103	In the U.S., what flower is traditionally worn to honor one’s mother on Mother’s Day?	CARNATION
4104	In the U.S., which of these abbreviations both refer to the same type of professional degree?	D.D.S. AND D.M.D
4105	In the U.S.,the Amish speak both English and a particular dialect of what European language?	GERMAN
4106	In the U.S.,what liquor is required to be so distilled “as to be without distinctive character,aroma,taste or color”?	VODKA
4107	In the U.S.,what term refers to the number 1 followed by 15 zeros?	QUADRILLION
4108	In the U.S.,which of these holidays falls between the Fourth of July and Thanksgiving?	LABOR DAY
4109	IN the UK, new parents often refer to which of these everyday objects as a “pram”?	BABY CARRIAGE
4110	In the United States,National African American History Month is celebrated when?	FEBRUARY
4111	In the upcoming biopic “The Iron Lady,” Meryl Streep takes on what famous female?	MARGARET THATCHER
4112	In the Washington D.C. memorial honoring him,what U.S. president is depicted in a wheelchair?	FRANKLIN ROOSEVELT
4113	In the well-known acronym “laser,” the “L” stands for what?	LIGHT
4114	In the Winter Olympics, females are not allowed to compete in which of these disciplines?	SKI JUMPING
4115	In the wireless phone abbreviation “4G,” the “G” stands for what?	GENERATION
4116	In the world of comics,who is Selina Kyle?	CATWOMAN
4117	In the world of DC Comics,Barbara Gordon is better known as what comic book superhero?	BATGIRL
4118	In the world of DC comics,”Edward Nigma” is the birth name of what Batman foe?	THE RIDDLER
4119	In the world of Greek mythology, where do the souls of the deceased lie in eternal rest?	ELYSIUM
4120	In the world of journalism,a piece designed to appeal to people’s emotions is often referred to as what type of “story”?	HUMAN INTEREST
4121	In the world of logic, the statement “This statement is a lie” is known as which of these?	LIAR’S PARADOX
4122	In the world of politics,the accusatory acronym RINO stands for “Republican In” what?	NAME ONLY
4123	In the world of reality television, who is Patti Stanger?	THE “MILLIONAIRE MATCHMAKER”
4124	In the ’30s, a hand-cranked pasta maker inspired Adolf Ehinger to develop an early form of what office machine?	PAPER SHREDDER
4125	In the ’50s,the Swedish company Malaco debuted a line of soft,gummy candies shaped like what animals?	FISH
4126	In the ’70s, what sport transitioned from traditional white balls to “optic yellow,” which were more visible to TV viewers?	TENNIS
4127	In the ’80s,Michael Jackson was rumored to sleep in a hyperbaric chamber for its high levels of what gas?	OXYGEN
4128	In the ’90s,what singer lent the smooth touch of his voice to the “Fabric of our Lives” jingle in TV ads for cotton?	AARON NEVILLE
4129	In the “Legally Blonde” movies,Elle Woods gets men’s attention using a signature move called what?	BEND AND SNAP
4130	In the “Little Thinkers” doll series,what thinker comes with a detachable ear?	VINCENT VAN GOGH
4131	In the “Lord of the Rings” movies, which of these creatures is usually the shortest?	HOBBIT
4132	In their campy 70s act, members of the Village People typically dressed like all but which of these people?	FIREFIGHTER
4133	In their logo, department store giant Macy’s replaces what should be an apostophe with what symbol?	A STAR
4134	In total,how many silhouetted faces appear on a 2007 U.S. postage stamp that honors jury duty?	12
4135	In TV slang,a “zitcom” is a comedy series targeting what audience group?	TEENS
4136	In two Peanuts movies in the 80s,future Black Eyed Pea Fergie voiced what blonde-haired sister of Charlie Brown?	SALLY
4137	In video game adaptations of “Toy Story,” what actor’s younger brother Jim has voiced the character “Woody”?	TOM HANKS
4138	In Western astrology, which of these is NOT one of the four elements that make up the universe?	METAL
4139	In what blockbuster classic does a character crawl inside a slain Tauntaun beast to keep from freezing?	THE EMPIRE STRIKES BACK
4140	In what body of water are the islands collectively known as the Grecian Archipelago found?	AEGEAN SEA
4141	In what classic comedy does a confused Steve Martin memorably exclaim “Those aren’t pillows!”?	PLANES,TRAINS AND AUTOMOBILES
4142	In what classical musical does the main character have a bad-boy best friend named “Kenickie”?	GREASE
4143	In what country do government officials wear guayaberas,shirts marked by pleats and four front pockets,to state functions?	CUBA
4144	In what country do people normally answer the phone by saying “Moshi, moshi”?	JAPAN
4145	In what Denzel Washington movie does he say “We didn’t land on Plymouth Rock. Plymouth Rock landed on us!”?	MALCOLM X
4146	In what film does John Travolta memorably discuss a foreign McDonald’s burger he calls a “Royale with cheese”?	PULP FICTION
4147	In what film does Robert De Niro play a vindictive criminal named Max Cady, originally played in 1962 by Robert Mitchum?	CAPE FEAR
4148	In what film does Robert De Niro’s character say “You,you,you’re very good,you”?	ANALYZE THIS
4149	In what horror film does a disturbed romance novel enthusiast repeatedly gush, “I am your number one fan”?	MISERY
4150	In what language do written questions begin with an upside-down question mark?	SPANISH
4151	In what movie do Nicole Kidman and Sandra Bullock play sisters who also happen to be witches?	PRACTICAL MAGIC
4152	In what movie does a character quiz his fiancee on the Baltimore Colts before agreeing to marry her?	DINER
4153	In what movie does Jack Nicholson repeatedly type “All work and no play makes Jack a dull boy”?	THE SHINING
4154	In what part of the house would you find treads and risers?	STAIRCASE
4155	In what U.S. national do backpackers brave challenging “Rim to Rim” hike?	GRAND CANYON
4156	In what U.S. state does the U.S. own the highest percentage of land, over 80 percent?	NEVADA
4157	In what U.S. state would you find Arches National Park,home to over 2,000 natural sandstone arches?	UTAH
4158	In what U.S. state would you find the American Indian pueblo of Zuni?	NEW MEXICO
4159	In what year did the U.S. celebrate its sesquicentennial?	1926
4160	In what year did thousands of baby boomers converge in San Francisco for the so-called “Summer of Love”?	1967
4161	In what year did thousands of baby boomers converge in San Francisco for the so-called “Summer of Love”?	1967
4162	In what ’90s movie does Winona Ryder fail an impromptu pop quiz about the definition of irony?	REALITY BITES
4163	In which of the following comedies does a woman,not a cross-dressing man,don a fat suit?	SHALLOW HAL
4164	In which of the following games is “spinning the rods” an illegal move?	FOOSBALL
4165	In which of these cities are you most likely to “suck the heads” at a traditional crawfish boil with friends?	NEW ORLEANS
4166	In which of these classic musicals does Franklin Delano Roosevelt appear as a character?	ANNIE
4167	In which of these comedies does a bratty kid memorably tell Vince Vaughn,”Make me a bicycle,clown!”?	WEDDING CRASHERS
4168	In which of these countries is it customary to eat using only the right hand, as the left is considered unclean?	ETHIOPIA
4169	In which of these countries might you find “gauchos” riding horses across lowlands called “pampas” ?	ARGENTINA
4170	In which of these films does Harrison Ford play a villain and not a hero?	WHAT LIES BENEATH
4171	In which of these films is Joaquin Phoenix credited as “Leaf Phoenix,” his self-given childhood moniker?	PARENTHOOD
4172	In which of these films is the director not also the lead actor?	MICHAEL CLAYTON
4173	In which of these languages is the word for “no” spelled the same as it is in English?	ITALIAN
4174	In which of these locations would a redcap most likely work?	RAILROAD STATION
4175	In which of these occupations would a person likely suffer from the medical condition known as “circadian dysrhythmia”?	FLIGHT ATTENDANT
4176	In which of these Olympic events do contestants often wear a finger tab and an arm guard called a bracer?	ARCHERY
4177	In which of these places would you most likely find men’s and women’s restrooms labeled “kane” and “wahine”?	HAWAII
4178	In which of these regions are you most likely to encounter a Gila woodpecker in a saguaro?	ARIZONA DESERT
4179	In which of these sporting events is a victor often determined by means of a “split decision”?	BOXING
4180	In which of these sports do players cover their heads with numbered caps with padded ear covers?	WATER POLO
4181	In which of these sports do players not serve the ball at the start of play?	FIELD HOCKEY
4182	In which of these sports does the clock count up rather than down?	SOCCER
4183	In which of these sports is the term “love” typically used to indicate a score of zero?	TENNIS
4184	In which of these sports would a player most likely use a “sky hook”?	BASKETBALL
4185	In which of these well-known fairy tales does the heroine die and then come back to life?	SNOW WHITE
4186	In women’s fashion, a bodice is a garment specifically designed to cover what part of the body?	TORSO
4187	In “27 Dresses,” Katherine Heigl’s character obtains 27 dresses by repeatedly serving as a what?	BRIDESMAID
4188	In “About a Boy,” Hugh Grant’s character lives off the royalties from what one-hit wonder Christmas song?	SANTA’S SUPER SLEIGH
4189	In “Alice’s Adventures in Wonderland,” the Cheshire cat leaves behind what conspicuous feature when it disappears?	ENORMOUS GRIN
4190	In “Apocalypse Now,” Robert Duvall’s character makes what declaration about his Viet Cong enemies?	CHARLIE DON’T SURF
4191	In “Caddyshack,” Bill Murray plays a deranged assistant greenskeeper who claims to have caddied for whom?	THE DALAI LAMA
4192	In “Charlie and the Chocolate Factory,” the gum-chewing Violet Beauregarde turns into a giant what?	BLUEBERRY
4193	In “Happy Gilmore,” Adam Sandler shouts what variation on a classic game show catchphrase at TV host Bob Barker?	THE PRICE IS WRONG!
4194	In “Highlights for Children” magazine,what character serves as Gallant’s ill-mannered counterpart?	GOOFUS
4195	In “Pee-Wee’s Big Adventure” Pee-Wee memorably interrupts the filming of what metal band’s music video?	TWISTED SISTER
4196	In “Slumdog Millionaire,” what is the CORRECT answer to Jamal’s final grand prize question?	ARAMIS
4197	In “Spain…On The Road Again,” chef Mario Batali explores the cuisine of all but which of these cities?	PALERMO
4198	In “Teen Wolf,” Michael J. Fox’s transformation into a werewolf causes him to excel at what high school sport?	BASKETBALL
4199	In “The Empire Strikes Back,” Han Solo memorably says, “Laugh it Up Fuzzball” to what character?	CHEWBACCA
4200	In “The Fugitive,” how does Tommy Lee Jones respond after Harrison Ford declares “I didn’t kill my wife”?	I DON’T CARE
4201	In “The Godfather”,Don Corleone says,”Someday,and that day may never come,I will call upon you to” what?	DO A SERVICE FOR ME
4202	In “The Karate Kid,” which of these is not one of the unorthodox training methods Mr. Miyagi assigns to Daniel-san?	WEEDING HIS GARDEN
4203	In “The Matrix” film series, the character Neo was born with what first name?	THOMAS
4204	In “The Princess Bride”,the vengeful Inigo Montoya seeks a murderer who has what?	SIX FINGERS
4205	In “The Star-Spangled Banner,” the adjective “perilous” is used to describe what word?	FIGHT
4206	In “The Three Little Pigs,” which of these materials is not used by one of the pigs to build a house?	BAMBOO
4207	In “Twilight,” Edward and Bella listen to a recording of “Claire de Lune,” a famous piano piece by what composer?	CLAUDE DEBUSSY
4208	Including its main thoroughfare,what southern city has over one hundred streets named Peachtree?	ATLANTA
4209	Including the 2006 film “The Queen,” actor Michael Sheen has portrayed what politician 3 different times?	TONY BLAIR
4210	Including “Sleepless In Seattle” Meg Ryan has starred in four movies written by whom?	NORA EPHRON
4211	Increasingly popular in the U.S.,the Southeast Asian sport “Muay Thai” is a form of what?	KICKBOXING
4212	Increasingly popular to the U.S., Pink Berry and Red Mango are two retail chains that primarily sell what?	FROZEN YOGURT
4213	Indianapolis lawyer Mark S. Zuckerberg says he gets about a dozen calls per day complaining about what website?	FACEBOOK
4214	Indicating how the food is prepared, the cuisine “crudo” means what in Italian?	RAW
4215	Indigenous to Africa,the graceful impala is a variety of what animal?	ANTELOPE
4216	Indigenous to Central and South America, the bushmaster is a type of what animal?	SNAKE
4217	Inspired by her real life,what actress created “Happily Divorced,” a sitcom about a wife who learns her husband is gay?	FRAN DRESCHER
4218	Inspired by the decor of the room where Nick Cannon proposed,in 2011 Mariah Carey named her baby boy what?	MOROCCAN
4219	Inspired by the name of a large corporation, which of these terms refers to a large and pretentious house?	MCMANSION
4220	Inspired by the Scottish flag, the hero of the movie “Braveheart” wears what color paint?	BLUE
4221	Inspired in part by a jazz legend,what did Sandra Bullock name her newly adopted baby boy in 2010?	LOUIS
4222	Inspiring a 2010 film,the 2005 economics bestseller by Stephen Levitt and Stephen Dubner has what unusual title?	FREAKONOMICS
4223	Inspiring a character in a Robert Redford film,Buck Brannaman is known for his ability to “whisper” to what animals?	HORSES
4224	Instead of being aged until it has a stronger flavor,which of these cheeses is typically served fresh?	COTTAGE CHEESE
4225	Intended to resemble the aftershave, Aqua Velva is a cocktail that contains which of these liqueurs?	CURACAO
4226	Introduced as a “ready-to-serve” drink in 1950, Hawaiian Punch’s original flavor is now called what?	FRUIT JUICY RED
4227	Introduced by Apple in 1998,which of these tech gadgets was released the earliest?	IMAC
4228	Introduced by infomercial legend Ron Popeil,GLH Formula Number 9 offers a solution to what problem?	THINNING HAIR
4229	Introduced in 1559, the Vatican’s “Index Librorum Prohibitorum” is a list of what?	BANNED BOOKS
4230	Introduced in 1898,what brand of soap was named for the two kinds of oil that were used to produce it?	PALMOLIVE
4231	Introduced in 1913, what popular childrens’ toy derives its name from the Roman god of love?	KEWPIE DOLLS
4232	Introduced in 1913, what popular toy derives its name from the Roman god of love?	KEWPIE DOLLS
4233	Introduced in 1928, Red Stripe Beer is brewed in what country?	JAMAICA
4234	Introduced in 1963,the Easy-Bake Oven includes ingredients allowing kids to make miniature what?	CAKES
4235	Introduced in 1966,which of these brands of candy boasts “First it’s Candy,Then it’s Gum!”?	RAZZLES
4236	Introduced in 1977, KC Masterpiece is a leading brand of which of the following?	BARBECUE SAUCE
4237	Introduced in 1979, Croakies were designed to prevent people from losing what fashion accessory?	GLASSES
4238	Introduced in 1979,Croakies were designed to prevent people from losing what fashion accessory?	GLASSES
4239	Introduced in 1982 and still popular today,the Nike “Air Force 1” is an iconic what?	BASKETBALL SHOE
4240	Introduced in 1986, the Levi’s Dockers brands has become synonymous with what “casual day” staple?	KHAKI PANTS
4241	Introduced in 1987,Viking is a popular high-end brand of which of these household items?	COOKING RANGES
4242	Introduced in 1996,Reaction is a more casual and affordable clothing line belonging to what fashion label?	KENNETH COLE
4243	Introduced in 2007,”Franklin the Fair Housing Fox” is a friendly mascot for what government agency?	HUD
4244	Introduced in the 1950s,the ad slogan “It takes a licking and keeps on ticking” was used to sell what product?	WRISTWATCHES
4245	Introduced in the 1980s, the Wacky WallWalker was a popular sticky toy in the shape of what animal?	OCTUPUS
4246	Introduced in the late 1960s, antilock mechanisms are now a common feature of what car parts?	BRAKES
4247	Introduced in the ’50s,the first Swanson frozen TV dinners were ready to eat in how many minutes?	25
4248	Introduced to grocery stores in 1902,Karo is a classic brand of what?	CORN SYRUP
4249	Invented by Colombian Beto Perez, Zumba is a trendy fitness program that combines aerobics with elements of what?	LATIN DANCE
4250	Inventor Amos Bose is famous for developing a high-end variety of what?	STEREO SPEAKERS
4251	Involving a tremendous food fight, La Tomatina is a festival held annually in the Bunol village of what country?	SPAIN
4252	In”Top Gun,” the characters Navy “call signs” include “Maverick,” “Goose,” and all but which of these?	NIGHTHAWK
4253	Iranian-born businessman Al Yeganeh was the inspiration behind what classic “Seinfeld” character?	THE SOUP NAZI
4254	Ironically not the Charleston, what is the beach-friendly state dance of South Carolina?	SHAG
4255	Ironically,the initials of the Miss America Organization form the name of a former leader of what Communist nation?	CHINA
4256	Isaiah Mustafa plays “The Man Your Man Could Smell Like” in a surreal series of ads for what product?	OLD SPICE
4257	Issued by the Internal Revenue Service,the dreaded Form 1040 is commonly known by what nickname?	THE LONG FORM
4258	Issued in 1787, the U.S. government’s first official coin was a penny featuring which of these mottos?	MIND YOUR BUSINESS
4259	It is often said about what Hollywood legend that she did everything her partner did,only “backwards and in high heels”?	GINGER ROGERS
4260	Jazz legend Charlie Parker is best known for playing what instrument?	SAXOPHONE
4261	Jeans get their name from the French word for what European city,where the first denim trousers were made?	GENOA
4262	Jeff Lewis,host of the reality series “Flipping Out,” has what main occupation?	REAL ESTATE INVESTOR
4263	Jeremy Piven’s character on TV’s “Entourage” is said to be modeled after what politician’s brother	RAMH
4264	Jim Carrey plays many roles, including Ebenezer Scrooge, in a 2009 adaptation of what classic story?	A Christmas Carol
4265	Joanna Kramer,Karen Silkwood,and Miranda Priestly are all characters portrayed by what film actress?	MERYL STREEP
4266	Jodhpurs,a style of long pants worn by horseback riders,take their name from a city in what country?	INDIA
4267	John F. Kennedy’s Pulitzer Prize-winning account of eight great political leaders is titled “Profiles in” what?	COURAGE
4268	John Lennon’s 1971 song “Imagine” asks listeners to imagine a world without all but which of these things?	POLITICS
4269	John McCain’s wife Cindy is the chairman of the board of a company that sells what?	BEER
4270	Johnny Depp modeled his Pirates of the Caribbean character in large part after what musician?	KEITH RICHARDS
4271	Jokingly called “Chicken Pizza” by visitors,Chichen Itza is a site of ancient Mayan ruins in what country?	MEXICO
4272	Jon Bon Jovi reportedly wrote “You Give Love A Bad Name” about what actress,whom he once dated briefly?	DIANE LANE
4273	Jose Canesco’s book “Juiced” primarily addresses what controversial sports topic?	STEROID USE
4274	Journey’s classic rock anthem “Don’t Stop Believin'” features a “city boy” who is “born and raised” where?	IN SOUTH DETROIT
4275	Jude Law claims he was named after both a Beatles song and the title character of a novel by whom?	THOMAS HARDY
4276	Julia Roberts became the first actress to be paid $20 million for her role in what movie?	ERIN BROCKOVICH
4277	Just as George W.Bush and his dad are “43” and “41,” John Quincy Adams and his dad would have had what nicknames?	6 AND 2
4278	Just for Men is a leading drugstore brand of what product?	HAIR COLOR
4279	Justitia,the Roman goddess of justice,is commonly depicted wearing which of these accessories?	BLINDFOLD
4280	K2,the world’s second highest mountain,lies in a region that is currently controlled by what country?	PAKISTAN
4281	Kahlua is a brand of liquor that has what distinct flavor?	COFFEE
4282	Katy Perry has admitted that her hit single “I Kissed A Girl” was inspired by an imagined kiss with what Hollywood hottie?	SCARLETT JOHANSSON
4283	Katy Perry’s 2010 hit “California Gurls” borrows a lyric from a similarly titled 1965 song by what classic band?	THE BEACH BOYS
4284	Kauai’s Mount Makana is better known as “Bali Ha’ “i” because a scene from what movie was filmed there?	SOUTH PACIFIC
4285	Keith Ellison, the first Muslim elected to the U.S. Congress, was sworn in on a Koran once owned by what U.S. president?	THOMAS JEFFERSON
4286	Kenneth Lay and Jeffrey Skilling are both depicted in a 2010 musical about what scandalized corporation?	ENRON
4287	Kevin Bacon is married to the star of what TV series?	THE CLOSER
4288	Khaled Hosseini’s bestseller “The Kite Runner” is set primarily in what country?	AFGHANISTAN
4289	Khaled Hosseini’s novels “The Kite Runner” and “A Thousand Splendid Suns” are both set primarily in what country?	AFGHANISTAN
4290	Khaled Hosseni’s bestseller “The Kite Runner” is primarily set in what country?	AFGHANISTAN
4291	Kid gloves are usually made from the hide of what animal?	GOAT
4292	Kiddingly referred to as the only food that is “made” backwards, Edam is a type of what?	CHEESE
4293	Kirkland Signature is the in-house brand of what chain of stores?	COSTCO
4294	Known as a difficult area to stretch, your IT, or iliotibial band, is located where?	ALONG YOUR THIGH
4295	Known as the “High Priestess of Soul,” what singer is the subject of the 1992 autobiography “I Put a Spell on You”?	NINA SIMONE
4296	Known as “The Flying Lady,” the hood ornament on Rolls-Royces is officially called “The Spirit of” what?	ECSTASY
4297	Known as “The Happiest Place On Earth,” Disneyland is located in what California City?	ANAHEIM
4298	Known early in the series as “McDreamy,” Patrick Dempsey’s character on “Grey’s Anatomy” has what specialty?	NEUROSURGERY
4299	Known for creating her signature look,who was the official designer for First Lady Jackie Kennedy?	OLEG CASSINI
4300	Known for her cosmetics line,international supermodel Iman is the wife of what rock legend?	DAVID BOWIE
4301	Known for her wiggle and high-pitched coo,actress Jackee played sexy neighbor Sandra Clark on what ’80s sitcom?	227 *CORRECT*
4302	Known for his big mouth,Cartman from “South Park” has been described as a little version of what classic sitcom character?	ARCHIE BUNKER
4303	Known for his unique batting stance, which of these Hall of Fame ball players was nicknamed “The Man”?	STANLEY FRANK MUSIAL
4304	Known for its bright colors,the gerbera is a type of what flower?	DAISY
4305	Known for its distinctive bottle that resembles a friar, Frangelico is an Italian liquer with what flavor?	HAZELNUT
4306	Known for its memorable drum fill, what Phil Collins song does Steelers coach Mike Tomlin play to amp up his team?	IN THE AIR TONIGHT
4307	Known for its movie-centric lineup,what TV channel features films “hosted” by historian Robert Osborne?	TCM
4308	Known for its obsession with UFOs,what U.S. town has a McDonald’s restaurant shaped like a flying saucer?	ROSWELL, NM
4309	Known for its signature square bottles, Essie is a leading maker of what beauty product?	NAIL POLISH
4310	Known for its spiciness,what Italian pasta sauce has a name that literally translates to “Brother Devil”?	FRA DIAVOLO
4311	Known for its spreadable cheese wedges,the French brand “La Vache Qui Rit” has what name in the U.S.?	THE LAUGHING COW
4312	Known for playing Arizona on “Grey’s Anatomy,” actress Jessica Capshaw has what famous stepdad?	STEVEN SPIELBERG
4313	Known for the hit “Mr.Roboto,” the band Styx shares its name with a famous what in Greek mythology?	RIVER
4314	Known for their classic fairy tale collections,the Brothers Grimm had what first names?	JACOB & WILHEIM
4315	Known simply as “Cojo,” TV personality Steven Cojocaru is an expert in what field?	FASHION
4316	Known to most Americans by his Anglicized name,Cristobal Colon was a famous what?	EXPLORER
4372	Made by heating natural clays,burnt umber is a shade of what color?	BROWN
4317	Known to ruin the occasional reputation,Page Six is a famous gossip column in what U.S. newspaper?	NEW YORK POST
4318	Kurt Cobain and Jimi Hendrix are a part of a “morbid” club of musicians that all died at what all-too-early age?	27
4319	La Petite Roche, a riverside rock formation once used for navigation, inspired the name of what state’s capital?	ARKANSAS
4320	Labels bearing the Latin phrase “Ex Libris” are traditionally used to identify the owners of what items?	BOOKS
4321	Lacoste shirts feature an embedded logo of what animal,a nod to Rene Lacoste’s nickname on the tennis court?	CROCODILE
4322	Later used by the British army for their famous coats,the Aztecs crushed up insects to create what color dye?	RED
4323	Latin is the official language of which of these small European countries?	VATICAN CITY
4324	Launched in 1964, Kellogg’s pop tarts were named for “pop art,” a movement popularized by whom?	ANDY WARHOL
4325	Launched in 1978,Simon is an electronic memory game consisting of four buttons in all but which of these colors?	ORANGE
4326	Launched in 1993,Miu Miu is an offshoot of what upscale fashion label?	PRADA
4327	Launched in 2005,the Girl Detective Super Mystery series stars what beloved children’s book character?	NANCY DREW
4328	Launched in 2010, Cupidtino is an online dating site that connects fans of what company’s products?	APPLE
4329	Launched in 2010, Michelle Obama’s initiative, “Let’s Move” brings awareness to what childhood issue?	OBESITY
4330	Led by saxophonist Cleto Escobedo III,what late night talk show features the house band “Cleto and the Cletones”?	JIMMY KIMMEL LIVE!
4331	Legendary for his skill at pitching ringers,Alan Francis is widely considered the best player ever in what sport?	HORSESHOES
4332	Legendary Scottish hero William Wallace is the subject of what 1995 Mel Gibson movie?	BRAVEHEART
4333	Leonardo da Vinci wrote his famous notebooks mainly using what unusual method?	MIRROR WRITING
4334	Less common than its counterpart,”centenary” is an alternate term for what anniversary?	100TH *CORRECT*
4335	Like Chevrolet’s Volt, Nissan offers a 100% electric car with what “green” name?	LEAF
4336	Like George Foreman,boxer Evander Holyfield released what type of kitchen gadget in 2007?	GRILL
4337	Like graffiti,”scratchiti” is a form of what misconduct?	VANDALISM
4338	Like his father was before him, Ziggy Marley is a prolific artist in what music genre?	REGGAE
4339	Like Indiana Jones, which of these action movie heroes is an archaeologist?	LARA CROFT
4340	Like Ronald Reagan,which of these U.S. presidents had the same first and last name initials?	HOOVER
4341	Like the Broadway musical,the 2008 movie “Mamma Mia!” showcases the music of what group?	ABBA
4342	Like the Lincoln Memorial,which of these world landmarks also overlooks a man-made reflecting pool?	TAJ MAHAL
4343	Like The New York Times, most newspapers run their hardest crossword puzzle on what day?	SATURDAY
4344	Like the tomato, which of the following is usually considered to be a vegetable but is really a fruit?	ZUCCINI
4345	Like TV’s “Lost,” which of these movies features a fictional airline called “Oceanic”?	EXECUTIVE DECISION
4346	Like “screwdriver,” which of these words refers to both a tool and a type of cocktail?	GIMLET
4347	Limestone that has been heated and pressurized eventually turns into what building material?	MARBLE
4348	Lipase is a digestive enzyme used by the body to break down what food component?	FAT
4349	Listenership is the term often used to refer to which type of media?	RADIO
4350	Literally meaning “on the iron,” “a la plancha” is a Spanish term for what method of cooking?	GRILLING
4351	LL Cool J once jokingly teased he was “too sexy for Barbara,” during an appearance on what talk show?	THE VIEW
4352	Loaded dice would give an unfair advantage to players of which of these casino games?	CRAPS
4353	Located in Atlanta,the King Center honors what famous American?	MARTIN LUTHER KING, JR.
4354	Located in Chiba Prefecture,Narita International Airport is the main airport serving what world capital?	TOKYO
4355	Located in Cleveland,Georgia,BabyLand General Hospital is the “birthplace” of what popular children’s dolls?	CABBAGE PATCH KIDS
4356	Located in Danvers,MA, the Rebecca Nurse Homestead was once the home of a figure associated with what event?	SALEM WITCH TRIALS
4357	Located in New York, the National Tennis Center is named in honor of what famous athlete?	BILLIE JEAN KING
4358	Located in Oyster Bay,Long Island,the Sagamore Hill National Historic Site is the former home of what U.S. president?	THEODORE ROOSEVELT
4359	Located in the arm in humans, the humerus bone is located where in birds?	WINGS
4360	Located near the root of hair follicles,the arrector pili muscle is responsible for what bodily phenomenon?	GOOSEBUMPS
4361	Logophobia is an irrational fear of what?	WORDS
4362	London’s famed Portobello Road shares its name with a popular variety of what?	MUSHROOM
4363	Long before it was a billion dollar industry,what hobby did men such as Thomas Jefferson and Mark Twain enjoy?	SCRAPBOOKING
4364	Longtime Congressman Henry Waxman’s distinctive grooming has earned him what cheeky nickname?	THE MUSTACHE OF JUSTICE
4365	Looney Tunes character Pepe Le Pew speaks with what kind of accent?	FRENCH
4366	Love Field is a major airport of which of these US cities?	DALLAS
4367	Lover,fighter,adventurer–what beer’s “spokesman” is billed as “the most interesting man in the world”?	DOS EQUIS
4368	Lunulae, the crescent-shaped marks on fingernails, are named for the Latin word for what?	MOON
4369	Lymph nodes are an important component of what human body system?	IMMUNE
4370	Lynne Spears’s 2008 memoir “Through the Storm” chronicles the ups and downs of parenting a what?	POP STAR
4371	Made by combining milk with a sweetened coffee syrup, “coffee milk” is the official beverage of what U.S. state/	RHODE ISLAND
4373	Made famous in the movie “Dracula,” Transylvania is a region of what country?	ROMANIA
4374	Made popular by men in the 50s, what hairstyle is named after a French mistress from the 1700s?	POMPADOUR
4375	Made with a beefy patty,an egg and beetroot,the McDonald’s Kiwiburger has only been sold in what country?	NEW ZEALAND
4376	Made with coconut milk,potatoes and peanuts, Massaman curry is a popular dish from what country?	THAILAND
4377	Made with eggs and lemon juice, avgolemono is a traditional soup from what country?	GREECE
4378	Made with green and red food coloring,”rainbow cookies” are meant to resemble what nation’s flag?	ITALY
4379	Made with Kevlar, the “Ove” Glove is a product intended to be used in which of these places?	IN A KITCHEN
4380	Mainly mined in Pakistan,the chunky rock salt known as Himalayan salt typically has what distinctive hue?	PINK
4381	Making a “1600” less impressive,what is the SAT’s highest possible score as of its revamping in 2005?	2400
4382	Mandy Moore voices for what classic fairly tale princess in the 2010 Disney animated film “Tangled”?	RAPUNZEL
4383	Manga A Go-Go and Super Yumberry are two menu items offered by which of these food chains?	JAMBA JUICE
4384	Manufactured in the U.S.,Chinet is a brand that specializes in what disposable item?	TABLEWARE
4385	Many banks offer their account holders “overdraft protection” to guard against what financial mishap?	BOUNCING A CHECK
4386	Many graduate students find themselves in the ambiguous state commonly known as “ABD,” or “all but” what?	DISSERTATION
4387	Many graduate students find themselves in the ambiguous status commonly known as “ABD,” or “all but” what?	DISSERTATION
4388	Many scientists have reported that what malodorous cheese is as attractive to mosquitoes as human feet?	LIMBURGER
4389	Marilyn Monroe sings out “Tiffany’s!” and “Cartier!” in a famous ditty that claims that what are “A Girl’s Best Friend”?	DIAMONDS
4390	Marked up to 130 degrees,”The World’s Largest Thermometer” is a roadside attraction near what U.S. park?	DEATH VALLEY
4391	Marketed as a low-fat food, what cereal brand “challenges” consumers to “drop a jean size in 2 weeks”?	SPECIAL K
4392	Marketed to parents with infant children, Dreft is a popular brand of what?	LAUNDRY DETERGENT
4393	Marking the first day of Lent, observers of Ash Wednesday have ashes placed on what part of the body?	FOREHEAD
4394	Mary Magdalene is often depicted as having what color hair, a detail that provides a key clue in “The Da Vinci Code?”	RED
4395	Matching the guardsmen’s tunics at Buckingham Palace,British telephone booths are traditionally what color?	RED
4396	Mather Point and Yavapi Point are two of the most popular overlooks at what U.S. tourist spot?	GRAND CANYON
4397	Meaning “great work,” which of these Latin terms is used to describe an artist’s most renowned work?	MAGNUM OPUS
4398	Meaning “guitar” in Italian,a chitarra is a stringed device used by chefs to do what?	CUT PASTA
4399	Meaning “half moon” in Italian,a mezzaluna is a kitchen utensil used mostly for what?	CHOPPING
4400	Meaning “Hawaiians” in Portuguese.”Havaianas” is the name of a popular brand of what?	FLIP FLOPS
4401	Meaning “idealistic and impractical,” the word “quixotic” comes from a character created by what author?	MIGUEL DE CERVANTES
4402	Meaning “one who has gone before,” the Japanese word “sensei” is often used to mean what?	TEACHER
4403	Meaning “they go out,” what Latin term do playwrights use to indicate that actors should leave the stage?	EX PARTE
4404	Meaning “they go out”,what Latin term do playwrights use to indicate that actors should leave the stage?	EXEUNT
4405	Meaning “to go for it all,” the phrase “shooting the moon” refers to a risky play in what card game?	HEARTS
4406	Meant to symbolize hard work and productivity,the beehive is the official emblem of what U.S. state?	UTAH
4407	Media pundits often refer to which of these time periods as “The Decade of Greed”?	1980S
4408	Meg Ryan was married for ten years to what leading man,her costar in the 1987 comedy “Innerspace”?	DENNIS QUAID
4409	Melanie Brown was better known by what nickname when she was a member of the Spice Girls?	SCARY SPICE
4410	Members of Gideon International are best known for their distribution of what items in hotel rooms?	BIBLES
4411	Members of Gideons International are best known for their distribution of what items in hotel rooms?	BIBLES
4412	Memorably featured in the O.J. Simpson trial,Bruno Magli is a luxurious brand best known for making what?	SHOES
4413	Mensa,an organization for people with high IQs,has a name that means “stupid” in what language?	SPANISH
4414	Mentioned in the children’s song “The Farmer in the Dell,” a dell is,by definition,a what?	WOODED VALLEY
4415	Mentioned in the lyrics of “The Star-Spangled Banner,” a rampart is a what?	BARRICADE
4416	Mentioned in “Twas the Night Before Christmas”,a “Sugarplum” is what kind of treat?	CANDY
4417	Merino wool comes from sheep originally native to what country?	SPAIN
4418	Merriam-Webster credits what prominent figure with popularizing a new definition of the word “earmark”?	JOHN MCCAIN
4419	Michael Balzary, bassist for the Red Hot Chili Peppers, is better known by what insect-inspired alias?	FLEA
4420	Michael Jackson’s father shares his name with a famous baseball player who had what nickname?	SHOELESS
4421	Michael Jordan has appeared on the cover of Sports Illustrated magazine playing all but which of these sports?	TENNIS
4422	Millions more viewers tuned in for Little Ricky’s birth on “I Love Lucy” than whose inauguration the next day?	DWIGHT D. EISENHOWER
4423	Miners used to carry canaries into the mines in order to detect what?	POISONOUS GASES
4424	Moet & Chandon’s headquarters in France features a statue of which of these French icons?	DOM PERIGNON
4425	Monte Carlo is a popular tourist attraction located in what part of the world?	FRENCH RIVIERA
4426	Most experts would agree that which of these kitchen staples is the best way to treat a jellyfish sting?	VINEGAR
4427	Most famous as TV’s June Cleaver,Barbara Billingsley also had what famous line in the 1980 film “Airplane!”?	“OH STEWARDESS!I SPEAK JIVE.”
4428	Most famous for his 1955 novel “Lolita,” author Vladimir Nabokov was also an expert in the study of what?	BUTTERFLIES
4429	Most household aquariums are equipped with bubbler systems to maintain levels of what gas?	OXYGEN
4430	Most of the world’s supply of table sugar is derived from either sugar cane or what other sucrose-filled vegetable?	SUGAR BEET
4431	Mostly covered in desert and prone to droughts,what country does the word for “rain” also mean “blessing”?	BOTSWANA
4432	Mount Rushmore National Memorial depicts the faces of how many U.S. presidents?	4
4433	Mount Vernon,George Washington’s home for over forty years,overlooks what U.S. river?	POTOMAC
4434	Movie posters for which of these biopics sported the tagline “A life misunderestimated”?	W.
4435	Movie producer Albert “Cubby” Broccoli is best known for his work on what film franchise?	JAMES BOND
4436	Much like a “Trekkie” loves “Star Trek,” an “otaku” is a big fan of the comics and pop culture of what country?	JAPAN
4437	Much of the animation of “The Simpsons” and “Family Guy” is outsourced to what foreign country?	SOUTH KOREA
4438	Muscatel is a sweet-flavored type of what?	WINE
4439	Muscatel is a sweet-flavored type of what?	WINE
4440	Music fans who identify themselves as “Beliebers” would most likely enjoy which of these hit songs?	BABY
4441	Mycotic,psoriatic and rheumatoid are three varieties of what common medical condition?	ARTHRITIS
4442	Myology is the scientific study of what?	MUSCLES
4443	n 2001, Chevron merged with what company to form the U.S.’s second largest oil and gas provider? I	TEXACO
4444	n the classic game “Operation,” what is the name of the patient receiving the operation?	CAVITY SAM
4445	N2O is the chemical formula for what?	LAUGHING GAS
4446	Nahasapeemapetilon is the last name of what character on TV’s “The Simpsons”?	APU
4447	Named #1 jingle of the century by Ad Age,”You Deserve a break today” appeared in ads for what?	MCDONALD’S
4448	Named after her father, what best-selling author was born with the unusual name Howard Allen O’Brien?	ANNE RICE
4449	Named after Sergei Rachmanioff, “Rach 3” is the nickname of a famous what?	PIANO CONCERTO
4450	Named after two goddesses of love, Aphrodite Tera and Ishtar Terra are two prominent regions on what planet?	VENUS
4451	Named for a city in Poland,what food has been described as “a bagel that’s lost inside a Polish joke”?	BIALY
4452	Named for a famous fictional character, a “Cyber-Cyrano” is a person paid to write what?	ONLINE DATING PROFILES
4453	Named for a famous poet, Pushkin Square is a busy intersection in what world city?	MOSCOW
4454	Named for a key figure in its history,Myles Standish State Forest is located in what U.S. state?	MASSACHUSETTS
4455	Named for a line of eighteenth century kings, Georgian architecture originated in what country?	ENGLAND
4456	Named for a nearby embassy,the renowned Spanish Steps are a tourist attraction not in Spain,but in what city?	ROME
4457	Named for a Shakespeare character, a balcony roughly large enough for one person to use is called a what?	JULIET BALCONY
4458	Named for her most famous screen role,”Foxy” is the title of a 2010 memoir by what actress?	PAM GRIER
4459	Named for its distinctive shape, a porkpie is what type of fashion accessory?	HAT
4460	Named for its proximity to the border between two states, the Flora-Bama nightclub is located where?	SOUTHEAST
4461	Named for shortstop Mario Mendoza’s lousy stats, “The Mendoza Line” is baseball slang for what poor batting average?	POINT .200
4462	Named for the activity that inspired their design,which of these terms refers to a popular kind of women’s shoe?	BALLET FLAT
4463	Named for the artist who famously photographed it,Mount Ansal Adams is a peak in what U.S. mountain range?	SIERRA NEVADA
4464	Named for the artist’s last name, who released the number-one album “Raymond v. Raymond” in 2010?	USHER
4465	Named for the Dutch business that originated it,what is an Asscher cut?	SHAPE OF DIAMOND
4466	Named for the Dutch city where it originated,Gouda is a well-known type of what?	CHEESE
4467	Named for the expensive spice, the color saffron is what hue?	YELLOW-ORANGE
4468	Named for the Fair Isaac Corporation, a FICO score measures a person’s what?	CREDIT RATING
4469	Named for the physicist who invented it,a Moog is what type of musical instrument?	KEYBOARD
4470	Named for the state where they were developed,concrete barrier walls that often line highways are called what?	JERSEY BARRIERS
4471	Named for the town’s most famous disc-jockey, “Moondog” is a lovable mascot of what city’s NBA team?	CLEVELAND
4472	Named for the writer who first popularized it,what questionnaire appears in issues of “Vanity Fair”?	PROUST QUESTIONNAIRE
4473	Named for the young star who popularized it,”The Bieber” is a style of what?	HAIRCUT
4474	Named for two of the instruments they play, the U.S. Army’s “Old Guard” music corps is known as the what?	FIFE AND DRUM CORPS
4475	Native to Borneo,the proboscis monkey gets its name because the males have what distinctive body part?	BIG NOSE
4476	Natives of what country traditionally have a last name that combines their father’s first name with either “son” or “dottir”?	ICELAND
4477	Navis Amoris is a loose Latin translation of what classic TV show’s title?	THE LOVE BOAT
4478	New England barn owners know that mixing ferric oxide with linseed oil,lime and milk creates what color paint?	RED
4479	New York’s Oak Beach Inn is believed to be the birthplace of what cocktail?	LONG ISLAND ICED TEA
4480	Nicknamed “Hemingway cats” for the author who owned several,polydactyl cats have what distinctive trait?	EXTRA TOES
4481	Nicole Richie’s first child,Harlow,was reportedly named after a famous 1930s what?	MOVIE STAR
4482	Night of the Living Dead popularized what monster?	ZOMBIES
4483	Nobel laureate Robert Richardson once claimed that party balloons should cost $100 apiece because of what gas’s scarcity?	HELIUM
4484	North America is connected to South America by an isthmus located in what country?	PANAMA
4485	Norton and McAfee are two of the biggest names in what type of computer software?	ANTI-VIRUS
4486	Not as pleasant as it sounds, giving someone a “Glasgow kiss” means doing what to them?	HEADBUTTING THEM
4487	Not connected to another bone in the body,the hyoid bone is supported by a network of muscles located in what area?	NECK
4488	Not just an Asian-inspired menu item,which of the following is a publicly traded commodity that is sold as in investment?	PORK BELLIES
4489	Not just found on fish,which of these growing things have also ribbed structures referred to as “gills”?	MUSHROOMS
4490	Not quite as American as apple pie,what came in second on the American Pie Council’s 2008 survey of favorite flavors?	PUMPKIN
4491	Not surprisingly, what classic novel figures prominently in the plot of the 2010 teen comedy “Easy A”?	THE SCARLET LETTER
4492	Not surprisingly,which of these countries often ranks lowest on the Reporters Without Borders “Press Freedom Index”?	NORTH KOREA
4493	Not surprisingly,Wiz Khalifa’s rap hit “Black and Yellow” served as what NFL team’s unofficial anthem in 2011?	PITTSBURGH STEELERS
4494	Notable for its narrow, curly outer leaves, which of these fancy green salads is also called “curly endive”?	FRISEE
4495	Notably set in a parish, not a county, “Steven Seagal: Lawman” follows the actor’s work as a policeman where?	LOUISIANA
4496	Notably worn by Theodore Roosevelt,pince-nez are a type of what fashion accessory?	EYEGLASSES
4497	Noted for its grainy texture, sucanet is an alleged healthier version of what common kitchen ingredient?	SUGAR
4498	Nova Scotia,or “Nova” for short,is a popular but pricey type of what food?	SMOKED SALMON
4499	Novice callers to sports talk shows often use which of these phrases as part of their greetings?	FIRST TIME,LONG TIME
4500	Now available in a variety of flavors, the original Malibu Rum is flavored with what exotic fruit?	COCONUT
4501	Now considered a classic teen comedy,the 1995 film “Clueless” is loosely based on what classic novel?	EMMA
4502	Now known as “The Gospel of Wealth,” the 1889 article arguing that the wealthy must aid society was written by whom?	ANDREW CARNEGIE
4503	Now named for the last name of its inventor, what exercise system was first known as “contrology”?	PILATES
4504	Now older than much of its audience,which TV network celebrated its 30th birthday on August 1,2011?	MTV
4505	Now present in all 50 U.S. states, in 1962 the very first Wal-Mart store opened where?	ARKANSAS
4506	Now produced around the world,Riesling is a white variety of wine that originated in what country?	GERMANY
4507	Nuclear reactors generate energy by splitting the atoms of which of these elements?	URANIUM
4508	Nutritionists use the glycemic index to rank foods based on how they affect a person’s what?	BLOOD SUGAR LEVEL
4509	Octoberfest is a famous beer festival held each year in what German city?	MUNICH
4510	Octothorpe is another name for what common computer keyboard symbol?	NUMBER SIGN
4511	Oddly enough,on the 2012 sitcom “Are You There,Chelsea?” Chelsea Handler does not play “Chelsea,” but whom?	CHELSEA’S SISTER
4512	Of all the U.S. presidents, which of these statements applies only to Ronald Reagan?	HE WAS DIVORCED
4513	Of the 193 member states of the United Nations,the greatest number–54–are from what continent?	AFRICA
4514	Of the 2006 movie “Dreamgirls,” what singer once joked,”I’m going to see it with my lawyers”?	DIANA ROSS
4515	Of the following Tonys,who is the only won to have won a Tony Award?	TONY KUSHNER
4516	Of the world’s seven continents,four have names that begin with what letter?	A
4517	Of these clothing brand names,which is the only one that refers to a specific geographic region?	PATAGONIA
4518	Of these Starbucks coffee sizes,which is the smallest?	TALL
4519	Of these “50 Greatest Political Moments” listed on Politico.com,which occurred first?	DUKAKIS GETS TANKED
4520	Officially called the University of Southern California,USC in Los Angeles is sarcastically nicknamed the “University of” what?	SPOILED CHILDREN
4521	Often a topic in the world of yoga,what is a “chakra”?	AN ENERGY ZONE IN THE BODY
4522	Often associated with weddings,an advanced notice stating the date of the big event is called a what?	SAVE-THE-DATE
4523	Often called Coach K, he won a fourth NCAA men’s basketball title with what school in 2010?	DUKE
4524	Often called the “Mozart of the Madras,” A.R. Rahman is a prolific composer from what country?	INDIA
4525	Often called the “poor man’s koi,” a shubunkin is a popular variety of what?	GOLDFISH
4526	Often called the “richest city in the world,” Abu Dhabi is located in what Middle Eastern country?	UNITED ARAB EMIRATES
4527	Often called “Rooster Sauce” because of the image on its label, Sriracha is a popular brand of what?	HOT SAUCE
4528	Often causing injury,the hard-to-open plastic packaging encasing many electronics is known as what?	CLAMSHELL PACKAGING
4529	Often compared to “Tetris,” which of these is the name of a wildly popular smartphone puzzle game?	BEJEWELED
4530	Often confused with “e.g.,” which of these phrases best conveys the meaning of the abbreviation of “i.e.”?	THAT IS
4531	Often described as the nation’s largest block party,The Calle Ocho Festival takes place annually in what U.S. city?	MIAMI
4532	Often dubbed “the St.Tropez of South America,” Punta del Este is an upscale resort located where?	URUGUAY
4533	Often featuring a woman in white silhouette,a gem brooch that is carved in a raised design is called a what?	CAMEO
4992	Who is Mario Lavandeira?	GOSSIP BLOGGER PEREZ HILTON
4534	Often found in cafes throughout the Middle East, a hookah is an ancient device traditionally used to do what?	SMOKE TOBACCO
4535	Often found in cafes throughout the Middle East,a hookah is an ancient device traditionally used to do what?	SMOKE TOBACCO
4536	Often found in the pockets of new clothes,silica gel packets are “desiccants,” meaning they do what?	SOAK UP MOISTURE
4537	Often governing the use of music,books and films acquired online,”DRM” stands for what kind of “Management”?	DIGITAL RIGHTS
4538	Often heard at weddings, “May the road rise to meet you” is the start of what traditional blessing of what country?	IRELAND
4539	Often located in airports and train stations, what restaurant chain’s logo features a halo above a pretzel?	AUNTIE ANNE’S
4540	Often located in convenience stores,RedBox kiosks offer a simple way for consumers to do what?	RENT DVDS
4541	Often made by pranksters in photos,the “rabbit ears” hand signal is identical to what other gesture?	PEACE SIGN
4542	Often marketed as a cure-all for fatigue and aging, royal jelly is a secretion produced by what animals?	HONEY BEES
4543	Often misportrayed in film and TV,Dissociative Identity Disorder is a condition formerly known as what?	MULTIPLE PERSONALITY DISORDER
4544	Often misquoted the “Wall Street” line “Greed…is good” actually contains what phrase after the first word?	FOR LACK OF A BETTER WORD
4545	Often needed after a trip to IKEA, what tool is also known as a “hex key”?	ALLEN WRENCH
4546	Often part of a traditional Jewish wedding, the “ketubah” is a type of what?	MARRIAGE CONTRACT
4547	Often read at weddings,the Bible verse 1 Corinthians 13:4 begins “Love is patient,love is” what?	KIND
4548	Often referred to as the “good cholesterol,” HDL stands for “high- density” what?	LIPOPROTEIN
4549	Often referred to as “NASCAR Valley,” what U.S. state is home to the NASCAR Hall of Fame?	NORTH CAROLINA
4550	Often seen in postcards of Paris,the historic Pont-Neuf is what type of structure?	BRIDGE
4551	Often served as an hors’d’oeuvres, a cornichon is a what?	SMALL PICKLE
4552	Often served with gravy,steak that’s been coated with flour and deep fried is known by which of the following?	CHICKEN-FRIED STEAK
4553	Often served with sushi as a palate cleanser,gari is a type of pickled what?	GINGER
4554	Often served with tea,a “crumpet” is most aptly described as which of the following?	AN UNSWEETENED MUFFIN
4555	Often sporting an outfit covered with shamrocks,Lucky the Leprechaun is the official mascot of what NBA team?	BOSTON CELTICS
4556	Often topped with caviar or smoked salmon, a blini is a small what?	PANCAKE
4557	Often topped with confectioners’ sugar, the New Orleans delicacy beignets are a type of what?	FRIED PASTRY
4558	Often used a magic symbol,a pentacle is what shape?	FIVE-POINTED STAR
4559	Often used in desserts, mascarpone is an Italian variety of what?	CHEESE
4560	Often used in French, what pronunciation mark is always placed under a letter and never above it?	CEDILLA
4561	Often used in French,what pronunciation mark is always placed under a letter and never above it?	CEDILLA
4562	Often used in the past to transport cargo, a windjammer is a large type of which vehicle?	SAILBOAT
4563	Often used sarcastically,someone who is very cool is often said to be “all that” plus what snack food?	A BAG OF CHIPS
4564	Often used to describe an accomplished conductor,the word “maestro” comes from which of these languages?	ITALIAN
4565	Often used to describe something incredibly dumb online,Urban Dictionary defines “smh” as what?	SHAKING MY HEAD
4566	Often used to make clothing, pima is a variety of what?	COTTON
4567	Often used to make shawls,pashmina is woven from the soft wool of what animals?	GOATS
4568	Often very annoying to people dining nearby,pagophagia is the compulsive chewing of what?	ICE
4569	Often viewed as the fifth taste detected by the human tongue, “umami” is closely associated with what foodstuff?	MSG
4570	Often wrapped in lettuce leaves, barbecued short ribs called kalbi are a key part of the cuisine of what nation?	SOUTH KOREA
4571	Often “played” by car horns,the classic Mexican folk song “La Cucaracha” tells the story of a type of what?	INSECT
4572	On a 2012 “Glee” episode,Ricky Martin sings “Soy sexy y lo sabes” in a bilingual rendition of a hit song by what group?	LMFAO
4573	On a bank check for a million dollars,the “Amount” box should feature a “1” with how many zeros?	SIX
4574	On a classic episode of the “Brady Bunch,” Jan makes up an imaginary boyfriend with what name?	GEORGE GLASS
4575	On a classic “Seinfeld” episode, George undergoes a phenomenon called “shrinkage” as a result of doing what?	SWIMMING IN A POOL
4576	On a classic “Seinfeld” episode,what future “desperate housewife” declared “They’re real,and they’re spectacular”?	TERI HATCHER
4577	On a direct flight,which of these pairs of cities are farthest apart in terms of air miles?	MIAMI AND PHOENIX
4578	On a football field,the 50-yard line is located how many feet from either team’s goal line?	150 FEET
4579	On a man’s jacket, “notch” and “peak” are two common styles of what?	LAPELS
4580	On a memorable episode of “Seinfeld,” Jerry is reprimanded for making out with his girlfriend during what movie?	SCHINDLER’S LIST
4581	On a movie set, a boom is a long, movable pole often used to do which of the following?	HOLD MICROPHONES
4582	On a popular kids’ TV show,Tasha,Tyrone,Pablo,Austin and Uniqua are better known as the what?	BACKYARDIGANS
4583	On a restaurant menu,which of these dishes would most likely be followed by the initials “M.P.,” meaning “market price”?	LOBSTER THERMIDOR
4584	On a standard backgammon game, players move their pieces onto spaces shaped like what?	TRIANGLES
4585	On a standard Bingo card, the “Free Space” is in the column beneath what letter?	N
4586	On a standard computer keyboard, what key usually lacks any number or symbol to indicate its function?	SPACE BAR
4587	On a standard QWERTY computer keyboard,which of these keys is not directly above the space bar?	P
4588	On a standard QWERTY keyboard,which symbol can be typed without pressing the “shift” key?	COMMA
4589	On a standard telephone keypad,what number is located directly between the asterick and the number sign?	0
4590	On a topographic map, contour lines are used to represent what?	TERRAIN ELEVATION
4591	On a “Golden Girls” episode, a confused Dorothy asks, “The actor or the sausage?” in reference to whom?	JIMMY DEAN
4592	On account of his yellow skin,a doctor might mistakenly “diagnose” TV’s Homer Simpson with what medical condition?	JAUNDICE
4593	On airplanes,a person’s ears “pop” because of air moving through what part of the body?	EUSTACHIAN TUBE
4594	Which of these food-related places saw the invention of the chocolate chip cookie in 1933?	TOLL HOUSE INN
4595	Which of these foods goes unmentioned in Sesame Street’s song “I Eat the Colors of the Rainbow”?	CAULIFLOWER
4596	Which of these foods has a pH value that is the lowest,making it the most acidic?	ORANGE JUICE
4597	Which of these foods is commonly sold in probiotic varieties?	YOGURT
4598	Which of these foods is often available in both “farmed” and “wild” varieties?	SALMON
4599	Which of these foods is said to have “negative calories” because it requires more calories to eat than it provides?	CELERY
4600	Which of these football-related verbs is also the name of a football position?	TACKLE
4601	Which of these foreign automobile brands translates as “the people’s car” in its country of origin?	VOLKSWAGEN
4602	Which of these foreign-language words literally means “the many”?	HOI POLLOI
4603	Which of these former presidents did not serve as a governor before being elected to the White House?	GEORGE H.W. BUSH
4604	Which of these FOX shows was not created by animation impresario Seth MacFarlane?	KING OF THE HILL
4605	Which of these fractions can be further reduced?	4/8 *CORRECT*
4606	Which of these French expressions means roughly the the same as “a done deal”?	FAIT ACCOMPLI
4607	Which of these French phrases means “to know how to act”?	SAVOIR-FAIRE
4608	Which of these French terms is used to refer to the main exhibit in a collection?	PIECE DE RESISTANCE
4609	Which of these funny expressions is Yiddish for “dirt?”	SCHMUT
4610	Which of these games features the categories “Action,” “Object” and “Person/Place/Animal”?	PICTIONARY
4611	Which of these gases is not considered one of the “greenhouse gases” believed to contribute to global warming?	NEON
4612	Which of these gemstones is named after a Russian czar?	ALEXANDRITE
4613	Which of these genres of world music traces its roots to the Mexican Revolution?	RANCHERA
4614	Which of these geological features shares its name with a verb meaning “to reach a stable level”?	PLATEAU
4615	Which of these geometric-sounding names is synonymous with the word “scam”?	PYRAMID SCHEME
4616	Which of these glands are present only in a person’s skin?	SWEAT
4617	Which of these golf terms comes from a Latin word meaning “equality”?	PAR
4618	Which of these government agencies is headquartered in Atlanta?	CDC
4619	Which of these government officials counts Paul Volcker and Alan Greenspan as predecessors?	BEN BERNANKE
4620	Which of these government programs would most likely be affected by “entitlement reform”?	MEDICARE
4621	Which of these grocery items is commonly sold in a container that features a gabled top?	MILK
4622	Which of these groups define almost all hemophiliacs?	MALES
4623	Which of these groups of geometric shapes has the most total sides?	FIVE RECTANGLES
4624	Which of these guitar parts shares its name with a verb meaning “to worry”?	FRET
4625	Which of these has never been the title of a reality series about people who attempt to flip houses?	ON THE FLIP SIDE
4626	Which of these healthy edibles is a type of algae?	KELP
4627	Which of these heavy metal bands was named after the title of a Bob Dylan song?	JUDAS PRIEST
4628	Which of these herb names comes first in the title of a classic 1966 album by Simon and Garfunkel?	PARSLEY
4629	Which of these historic events took place in New Jersey?	HAMILTON-BURR DUEL
4630	Which of these historic events took place in NJ?	HAMILTON-BURR DUEL
4631	Which of these historic leaders was known to wear clothing he made himself using a spinning wheel?	GHANDI
4632	Which of these historical events occurred earliest in the calendar year?	SINKING OF THE TITANIC
4633	Which of these History network TV series is hosted by the prominent Egyptologist Dr. Zahi Hawass?	CHASING MUMMIES
4634	Which of these hit songs from the ’70s has the same title as a classic Christmas carol?	JOY TO THE WORLD
4635	Which of these hit Tom Cruise films is famous for its somewhat gratuitous shirtless volleyball scene?	TOP GUN
4636	Which of these hit ’80s songs features the recurring line “The shareef don’t like it”?	ROCK THE CASBAH
4637	Which of these Hollywood disaster movies features an African-American president?	DEEP IMPACT
4638	Which of these household appliances contains a vacuum tube called a magnetron?	MICROWAVE OVEN
4639	Which of these household appliances is commonly equipped with an ionizer?	AIR PURIFIER
4640	Which of these household cleaners shares its name with a figure from Greek mythology?	AJAX
4641	Which of these idioms features the last names of an Oscar-winning actress and actor?	HUNT AND PECK
4642	Which of these illnesses is caused by a bacteria,not a virus?	STREP THROAT
4643	Which of these ingredients is not traditionally used to make pesto?	SARDINES
4644	Which of these instruments is not part of a traditional mariachi band?	FLUTE
4645	Which of these internationally famous luxury brands was founded not in Italy,but in Spain?	BALENCIAGA
4646	Which of these is a character on “The Sopranos” and not a cast member on “Jersey Shore”?	PAULIE WALNUTS
4647	Which of these is a common slang term meaning “an extremely short period of time”?	NEW YORK MINUTE
4648	Which of these is a famous singer’s Web site and not a children’s entertainment site?	KIDROCK.COM
4649	Which of these is a fancy word for a “bartender”?	MIXOLOGIST
4650	Which of these is a genetic trait that causes one to have an unusual reaction to sunlight?	PHOTIC SNEEZE REFLEX
4651	Which of these is a popular carnival game in which you hit mechanical critters on the head with a mallet?	WHACK-A-MOLE
4652	Which of these is a show on the Fox Business Channel, and not a USA Network drama/	FREEDOM WATCH
4653	Which of these is a term for spicing up otherwise mild food?	DEVILING
4654	Which of these is a true statement about celebrities Taylor Lautner,Taylor Hicks and Taylor Swift?	TWO ARE MEN,ONE’S A WOMAN
4655	Which of these is a true statement about the letters in the standard Google logo?	BOTH G’S ARE BLUE
4656	Which of these is an accurate description of a person with what is playfully known as a “farmer’s tan”?	PALE CHEST,TAN ARMS
4657	Which of these is equal in number to the number of items in a baker’s dozen?	ORIGINAL U.S. COLONIES
4658	Which of these is equal in number to the number of items in a baker’s dozen?	ORIGINAL U.S. COLONIES
4659	Which of these is not a popular Facebook game?	SUBURBVILLE
4660	Which of these is not a real movie title?	28 WEEKS *CORRECT*
4661	Which of these is not a reed instrument?	CORNNET
4662	Which of these is not a type of jewelry, but rather a device for monitoring alcohol consumption?	SCRAM BRACELET
4663	Which of these is not an actual comic book superhero?	GREEN HAMMER
4664	Which of these is not an example of static electricity at work?	A CELL PHONE CHARGING
4665	Which of these is not one of the bones found in the human ear?	TARSUS
4666	Which of these is not one of the few elements that are naturally magnetic?	COPPER
4667	Which of these is not one of the four superheroes featured in the 2005 movie “The Fantastic Four”?	THE FLASH
4668	Which of these is not one of the so-called BRIC countries, the four nations with the largest emerging markets?	ROMANIA
4669	Which of these is not one of the three corners of the mysterious “Bermuda Triangle”?	JAMAICA
4670	Which of these is not one of the twelve years represented in the Chinese calendar?	YEAR OF THE SWAN
4671	Which of these is often defined as “doing the same thing over and over again and expecting different results”?	INSANITY
4672	Which of these is the CORRECT name of a popular brand of eco-friendly household products?	SEVENTH GENERATION
4673	Which of these is the CORRECT spelling for a popular brand of breakfast cereal?	CAP’N CRUNCH
4674	Which of these is the CORRECTly capitalized abbreviation for a common graduate degree?	PH.D.
4675	Which of these is the name for a chain of membership-only warehouse stores?	SAM’S CLUB
4676	Which of these is the name of a common type of medium-heeled shoe worn by both men and women?	CUBAN HEEL
4677	Which of these is the name of a popular brand of electric-powered “mobility scooter”?	RASCAL
4678	Which of these is the name of an all-natural line of products known for its beeswax-based lip balm?	BURT’S BEES
4679	Which of these is the not-so-modest title of a ubiquitous hit song in 2006?	FERGALICIOUS
4680	Which of these is true about Mike Wazowski, the character that Billy Chrystal plays in “Monsters, Inc.”	HE HAS ONE EYE
4681	Which of these Italian greats has a last name that’s only one letter different from his first name?	GALILEO
4682	Which of these jazz greats was often billed as “The World’s Greatest Trumpeter”?	LOUIS ARMSTRONG
4683	Which of these key ingredients helps give traditional Worcestershire sauce its signature taste?	ANCHOVIES
4684	Which of these key ingredients helps give traditional Worchestshire sauce its signature taste?	ANCHOVIES
4685	Which of these kinds of documents gets its name from a Greek word meaning “folded paper”?	DIPLOMA
4686	Which of these kitchen gadgets performs the same function as a “strainer”?	COLANDER
4687	Which of these landmarks selected as one of the “New 7 Wonders of the World” in 2007 was built most recently?	TAJ MAHAL
4688	Which of these languages uses the Cyrillic alphabet?	RUSSIAN
4689	Which of these Las Vegas casinos is famous for its elaborate “dancing fountains”?	BELLAGIO
4690	Which of these Latin phrases roughly translates to “it does not follow”?	NON SEQUITUR
4691	Which of these legendary sports figures was nicknamed “Joltin’ Joe”?	JOE DIMAGGIO
4692	Which of these lines of a traditional wedding rhyme is the name of a 2011 romantic comedy starring Kate Hudson?	SOMETHING BORROWED
4693	Which of these literary children is not an orphan?	ENCYCLOPEDIA BROWN
4694	Which of these Looney Tunes cartoons stars Pepe Le Pew and not Speedy Gonzalez?	ODOR-ABLE KITTY
4695	Which of these Looney Tunes characters would be classified in the animal kingdom as “Gallus gallas domesticus”?	FOGHORN LEGHORN
4696	Which of these lyrics does not appear in The Police’s #1 hit “Every Breath You Take”?	EVERY PRICE YOU PAY
4697	Which of these major cities is located in Pakistan?	ISLAMABAD
4698	Which of these male names comes from French words meaning “the king”?	LEROY
4699	Which of these mammals has the longest maximum life expectancy?	FINE WHALE
4700	Which of these mathematical terms best describes the trajectory path of a fly ball?	PARABOLA
4701	Which of these members of “The Brady Bunch” is said to be suffering from “middle child syndrome”?	JAN
4702	Which of these men’s names is also slang for someone hugely biased towards their favorite sports team?	HOMER
4703	Which of these modern inventions uses gyroscopes to operate?	SEGWAY
4704	Which of these monuments is the only surviving structure of the Seven Wonders of the Ancient World?	GREAT PYRAMID OF GIZA
4705	Which of these movie actors has never played Tom Clancy hero Jack Ryan on the big screen?	MATT DAMON
4706	Which of these movie funnymen started out as a “correspondent” on Comedy Central’s “The Daily Show”?	STEVE CARELL
4707	Which of these movie stars got her famous last name from her first husband?	DEMI MOORE
4708	Which of these movie stars named “Sean” is a woman?	SEAN YOUNG
4709	Which of these movie stars named “Sean” is a woman?	SEAN YOUNG
4710	Which of these movie titles is based on the name of a real person?	MICHAEL COLLINS
4711	Which of these movies does not feature Jack Nicholson’s character dying a gruesome death?	CHINATOWN
4712	Which of these movies features a prime number in its title?	101 DALMATIANS
4713	Which of these movies features a scene in which Brad Pitt’s character wrestles a bear?	LEGENDS OF THE FALL
4714	Which of these movies features a scene involving Halloween but not Christmas?	E.T. THE EXTRA-TERRESTRIAL
4715	Which of these movies in the “Pirates of the Caribbean” film franchise was released first?	THE CURSE OF THE BLACK PEARL
4716	Which of these movies is based on the life of NYPD officer Eddie Egan and his partner Sonny Grosso?	THE FRENCH CONNECTION
4717	Which of these movies is not mentioned in the 1989 Billy Joel song “We Didn’t Start the Fire”?	DOCTOR ZHIVAGO
4718	Which of these movies named for cities spawned an Oscar-winning song by Bruce Springsteen?	PHILADELPHIA
4719	Which of these movies was released the earliest?	BEVERLY HILLS COP
4720	Which of these music acts is not co-ed?	COLDPLAY
4721	Which of these music icons shares his name with an MLB relief pitcher who inspired the phrase “fear the beard”?	BRIAN WILSON
4722	Which of these music legends has a daughter who’s an acclaimed fashion designer?	PAUL MCCARTNEY
4723	Which of these musical acts shares its name with a dish traditionally served on New Year’s Day in the South?	THE BLACK EYED PEAS
4724	Which of these musical groups could be loosely described as a “string quartet”?	FOUR VIOLINISTS
4725	Which of these musical stars is the only one not born and raised in Canada?	CHRISTINA AGUILERA
4726	Which of these musical terms means “very slowly”?	LENTISSIMO
4727	Which of these names for a Mexican dish is also the Spanish name for a musical instrument?	FLAUTA
4728	Which of these names is trademarked by the Sealed Air Corporation?	BUBBLE WRAP
4729	Which of these national landmarks features a large stone tablet inscribed with the text of the Gettysburg Address?	LINCOLN MEMORIAL
4730	Which of these nations is not considered to be part of the European region known as Scandinavia?	THE NETHERLANDS
4731	Which of these natural wonders is a cataract?	NIAGARA FALLS
4732	Which of these natural wonders is a well-known example of a chasm?	GRAND CANYON
4733	Which of these nautical terms refers to the rear part of a ship?	STERN
4734	Which of these New York City landmarks is a prime example of Art Deco architecture?	CHRYSLER BUILDING
4735	Which of these New York Times front page headlines ran in the 1910s and not the 1920s?	TITANIC SINKS
4736	Which of these newspapers features distinctive portraits called “dot-drawings” instead of actual photos?	THE WALL STREET JOURNAL
4737	Which of these newspapers is published the farthest west?	LOS ANGELES TIMES
4738	Which of these NFL venues boasts a scoreboard topped with two giant condiment bottles?	HEINZ FIELD
4739	Which of these non-common disorders did not exist until the 20th century?	JET LAG
4740	Which of these noted scientists is often referred to as a “primatologist”?	JANE GOODALL
4741	Which of these nouns does not function as a one-word definition for the word “teddy”?	VEHICLE
4742	Which of these nouns is not commonly used as a slang verb meaning “to dismiss from a job”?	HORN
4743	Which of these nouns,when used as an adjective,means “typical” or “classic”?	TEXTBOOK
4744	Which of these now generic terms did not once refer to a specific brand name?	STYROFOAM
4745	Which of these numbers is considered an improper fraction?	3/2 *CORRECT*
4746	Which of these numbers is used as a slang term meaning “to get rid of”?	86
4747	Which of these nursery rhymes is about a treat traditionally eaten around Easter?	HOT CROSS BUNS
4748	Which of these objects is not part of the contraption at the center of the board game “Mouse Trap?”	BICYCLE
4749	Which of these objects weights roughly 45.52 carets?	HOPE DIAMOND
4750	Which of these ocean-dwelling creatures is named for its equine profile?	SEA HORSE
4751	Which of these ocean-dwelling creatures is named for its equine profile?	OCTOPUS
4752	Which of these odd-sounding terms is actually a popular type of additive?	LIQUID SMOKE
4753	Which of these offenses can be committed simply by speaking?	SLANDER
4754	Which of these oft-quoted movie lines was originally spoken by Dustin Hoffman?	“I’M WALKING HERE!”
4755	Which of these one-named performers has a name that means “my lady” in Italian?	MADONNA
4756	Which of these organizations holds a massive get-together every four years called a “Jamboree”?	BOY SCOUTS OF AMERICA
4757	Which of these organizations is commonly known by just the first letter of its abbreviation?	YMCA
4758	Which of these organizations proclaims on it’s Web site, “Animals are not ours to wear”?	PETA
4759	Which of these Oscar-winning actresses won her Oscar for playing an Oscar-winning actress?	CATE BLANCHETT
4760	Which of these overused words on Lake Superior University’s “Banished Words” list was added last?	TEACHABLE MOMENT
4761	Which of these painters is known for his prominent use of gold leaf?	GUSTAV KLIMT
4762	Which of these pairs of letters would not appear on the face of a clock that uses Roman numerals?	XV
4763	Which of these pairs of same-named presidents served their terms in office furthest apart?	JOHNSON & JOHNSON
4764	Which of these parts of the body is formally known as the pharynx?	THROAT
4765	Which of these pastas derives its name from an Italian word meaning “little twine”?	SPAGHETTI
4766	Which of these patriotic songs was written by a person whose last name ends with the letters “U-S-A?”	THE STARS AND STRIPES FOREVER
4767	Which of these people belongs to a group often identified by the acronym “SCOTUS”?	SONIA SOTOMAYOR
4768	Which of these performers was famous for saying in a deep voice, “Thank you, thank you very much”?	ELVIS PRESLEY
4769	Which of these phrases best describes the blood of a person suffering from anemia?	TOO FEW RED BLOOD CELLS
4770	Which of these phrases completes the famous Admiral David Farragut saying, “Damn The Torpedoes!”?	FULL SPEED AHEAD!
4771	Which of these phrases does not appear in the famous last line of the Gettysburg Address?	FROM THE PEOPLE
4772	Which of these phrases does not appear in the title of one of the bestselling Harry Potter books?	FLIGHT OF THE DRAGON
4773	Which of these phrases is commonly used to describe a person who is emotional and creative?	RIGHT-BRAINED
4774	Which of these phrases is not sung at the end of the theme to “Gilligan’s Island”?	NO STORES
4775	Which of these phrases is sung repeatedly in the popular kids’ song “Jimmy Crack Corn”?	I DON’T CARE
4776	Which of these pieces of office equipment is widely regarded as useful for preventing identity theft?	PAPER SHREDDER
4777	Which of these platinum- selling hard rock bands is fronted by a woman?	EVANESCENCE
4778	Which of these plays was written while the playwright lived at 632 St. Peter Street in New Orleans?	A STREETCAR NAMED DESIRE
4779	Which of these poets shares his initials with the TV network that airs “Sesame Street”?	P.B. SHELLEY
4780	Which of these political figures was born in Hope,Arkansas,just nine years after Bill Clinton?	MIKE HUCKABEE
4781	Which of these political pundits is nicknamed “The Ragin’ Cajun?”	JAMES CARVILLE
4782	Which of these pop singers was never a guest star on an episode of “Will & Grace”?	MARIAH CAREY
4783	Which of these popular candies are often sold in containers resembling milk cartons?	WHOPPERS
4784	Which of these popular candy bars is not normally covered in chocolate?	PAYDAY
4785	Which of these popular cell phone apps allows users to “check-in” to the places they visit?	FOURSQUARE
4786	Which of these popular Christmas tunes was originally titled “One Horse Open Sleigh”?	JINGLE BELLS
4787	Which of these popular drugstore brands is used to treat the medical condition androgenic alopecia?	ROGAINE
4788	Which of these popular films does not share its name with a main character in the film?	TROY
4789	Which of these popular kids’ movie franchises features a 2009 film subtitled “The Squeakquel”?	ALVIN AND THE CHIPMUNKS
4790	Which of these popular liqueurs is not orange flavored?	MIDORI
4791	Which of these popular soft drink brands was named after a slang term for “moonshine”?	MOUNTAIN DEW
4792	Which of these popular TV sitcoms is not filmed in a mock documentary style?	THE BIG BANG THEORY
4793	Which of these popular types of dogs was originally bred to herd livestock?	BORDER COLLIE
4794	Which of these popular Web sites designates its most active users as “PowerSellers?”	EBAY
4795	Which of these popular ’80s sitcoms shares its names with a TV game show that aired in the ’50s?	WHO’S THE BOSS?
4796	Which of these popular “family” sitcoms debuted on TV the earliest?	ALL IN THE FAMILY
4797	Which of these poultry-peddling fast food chains is famous for always being closed on Sundays?	CHICK FIL A
4798	Which of these precious metals is a form of resin?	AMBER
4799	Which of these prefixes literally means “occurring together”?	SYNCHRO-
4800	Which of these pro baseball teams fittingly plays its home games in a stadium named for a beer company?	MILWAUKEE BREWERS
4801	Which of these produce items is known for having high levels of lycopene?	TOMATOES
4802	Which of these products comes in a “pure cornstarch” variety?	BABY POWDER
4803	Which of these professional sports leagues does not include a team from Canada?	NFL
4804	Which of these prominent political surnames is also the name of a Japanese town that lies west of Tokyo?	OBAMA
4805	Which of these proverbs has the same meaning as “an ounce of prevention is worth a pound of cure”?	A STITCH IN TIME SAVES NINE
4806	Which of these psychology terms comes from a Greek verb meaning “to purge”?	CATHARSIS
4807	Which of these Radio Hall of Fame inductees is nicknamed “King of the Countdowns”?	CASEY KASEM
4808	Which of these real-life figures of antiquity was renowned above all for his fabulous wealth?	CROESUS
4809	Which of these reality shows is hosted by visual effects experts Jamie Hynamen and Adam Savage?	MYTHBUSTERS
4810	Which of these relatives of former First Daughter Jenna Bush are named “Barbara?”	HER SISTER AND GRANDMOTHER
4811	Which of these retail chains is named for a prudish English queen?	VICTORIA’S SECRET
4812	Which of these retailers claim to be the most recognized name in “plus-size” clothing?	LANE BRYANT
4813	Which of these rhymes correctly reminds you how to identify and avoid poison ivy?	LEAVES OF 3, LET IT BE
4814	Which of these rhyming pairs of words are both synonyms for “complain”?	HARP AND CARP
4815	Which of these rituals traditionally takes place at an African-American wedding?	JUMPING OVER A BROOM
4816	Which of these rocks is known for its ability to produce sparks when it is struck with steel?	FLINT
4817	Which of these rodents are known for collecting bright, shiny objects and taking them to their nests?	PACKRATS
4818	Which of these S&P credit ratings would most strongly suggest that a company is a good investment?	AAA
4819	Which of these sassy phrases is not also the title of a film featuring Diane Keaton?	YOU CAN SAY THAT AGAIN
4820	Which of these schools features a famous Rotunda that is a half-scale version of the Pantheon in Rome?	UNIV OF VA
4821	Which of these scientific units is named in honor of the inventor of the telephone?	DECIBEL
4822	Which of these scientists made his most famous discoveries while working with pea plants?	GREGOR MENDEL
4823	Which of these sea creatures can be classified as a pinniped?	SEAL
4824	Which of these Sesame Street characters is known for referring to himself in third person?	ELMO
4825	Which of these sets of celebrity siblings are professional football players?	MANNING BROTHERS
4826	Which of these Shakespeare characters is guilty of regicide?	MACBETH
4827	Which of these sheet music notations directs a musician to play “lovingly”?	AMOROSO
4828	Which of these shoe companies shares its name with a type of antelopes?	REEBOK
4829	Which of these shoe styles traditionally has soles made of rope?	ESPADRILLES
4830	Which of these sides of a standard six-sided die does not have a dot located directly in the middle?	4
4831	Which of these signs of the zodiac is traditionally symbolized by a person and not an animal?	VIRGO
4832	Which of these singers could sing “EIEIO” if she sang only the vowels in her name in a row?	CELINE DION
4833	Which of these singers could sing “EIEIO” if she sang only the vowels in her name in a row?	CELINE DION
4834	Which of these singers had a hit Top 40 song with a title that begins with the letter X?	LINDA PONSTADT
4835	Which of these singers had a Top 40 song with a title that begins with the letter “X”?	OLIVIA NEWTON-JOHN
4836	Which of these slang phrases means roughly the same thing as “put the pedal to the metal”?	BURN RUBBER
4837	Which of these slang phrases means “to contribute money to a special collection”?	FEED THE KITTY
4838	Which of these slang terms is defined out west as “an urban easterner who vacations on a ranch?”	DUDE
4839	Which of these slang terms is defined out West as “an urban Easterner who vacations on a ranch”?	DUDE
4840	Which of these snack brands has a name that was inspired by a First Lady?	DOLLY MADISON
4841	Which of these snack food brands has a mascot named “Finn” who,for some reason,wears sunglasses?	GOLDFISH
4842	Which of these songs by the Beatles contains three different pronouns in its title?	I ME MINE
4843	Which of these soon-to-be stars did not appear in the 1983 movie “The Outsiders?”	KEIFER SUTHERLAND
4844	Which of these sources of light can be categorized as phosphorescent?	GLOW-IN-THE-DARK STICKER
4845	Which of these Southern cities shares its name with a dance that was wildly popular in the 1920s?	CHARLESTON
4846	Which of these Spanish phrases is often used to help make a person feel comfortable in your home?	MI CASA ES SU CASA
4847	Which of these sports has a “shot clock” that gives players 24 seconds to try to score?	BASKETBALL
4848	Which of these sports stars was not in the top 5 of Sports Illustrated’s 2010 list of highest-earning athletes?	PEYTON MANNING
4849	Which of these stars is not among the few to have won an Emmy, Oscar, Grammy, and Tony?	JULIE ANDREWS
4850	Which of these state capitals is closest to the Mexican border?	PHOENIX
4851	Which of these statements is true regarding Pinot Grigio and Pinot Gris wines?	THEY ARE BOTH WHITE
4852	Which of these states has a postal abbreviation that is also a commonly used exclamation?	OHIO
4853	Which of these states is longer from east to west than it is from north to south?	NEBRASKA
4854	Which of these states is longer from east to west than it is from north to south?	NEBRASKA
4855	Which of these states is often referred to in the media as a “flyover state”?	KANSAS
4856	Which of these states shares a border with more than two other U.S. states?	MICHIGAN
4857	Which of these Steven Seagal movie titles does not begin with a preposition?	HARD TO KILL
4858	Which of these stringed instruments often has over forty-five strings?	HARP
4859	Which of these stunning natural landmarks inspired the composition of “America The Beautiful”?	PIKES PEAK
4860	Which of these substances,if subjected to enough heat and pressure,could theoretically be turned into a diamond?	PENCIL GRAPHITE
4861	Which of these suffixes appears in the names of two U.S. state capitals?	-POLIS *CORRECT*
4862	Which of these superstar superheroes,when properly spelled,has a hyphen before the “man”?	SPIDERMAN
4863	Which of these tabloid mainstays is a mom to a young son named “Jayden James”?	BRITNEY SPEARS
4864	Which of these talk shows is not considered a spin-off of “The Oprah Winfrey Show”?	THE WENDY WILLIAMS SHOW
4865	Which of these technological advancements was not invented by Benjamin Franklin?	ELEVATOR
4866	Which of these television networks bills itself with the punny slogan “Positively Entertaining”?	ION *CORRECT*
4867	Which of these terms derives from early film shorts that often ended with its female characters in perilous situations?	CLIFFHANGER
4868	Which of these terms for a writing implement is actually a brandname trademarked in 1957?	MAGIC MARKER
4869	Which of these terms is often used to refer to the generation of Americans born between 1978 and 1989?	MILLENNIALS
4870	Which of these terms is commonly used to describe a group of locusts?	PLAGUE
4871	Which of these terms is often used to describe radio static or the humm of a fan?	WHITE NOISE
4872	Which of these terms is the apt name of one of the most common causes of the common cold?	RHINOVIRUS
4873	Which of these terms is used to refer to things that are suitable for either gender?	UNISEX
4874	Which of these terms of endearment are repeated throughout the Motown classic “I Can’t Help Myself”?	SUGAR PIE,HONEY BUNCH
4875	Which of these terms refers to a psychic entertainer who specializes in manipulating people’s minds?	MENTALIST
4876	Which of these Texan city names is Spanish for “yellow”?	AMARILLO
4877	Which of these Texan city names is Spanish for “yellow”?	AMARILLO
4878	Which of these Texas city names can be spelled by writing three well-known musical syllables?	LAREDO
4879	Which of these theme restaurants typically features simulated thunderstorms and animatronic gorillas?	RAINFOREST CAFE
4880	Which of these things found in nature are often classified as “angiosperms” or “gymnosperms?”	PLANTS
4881	Which of these title characters rarely talks?	MR BEAN
4882	Which of these Tom Cruise movies is technically a sequel?	THE COLOR OF MONEY
4883	Which of these Toyota models shares its name with the 3rd largest city in the state of Washington?	TACOMA
4884	Which of these trademarked kitchen products is a form of acrylic?	CORIAN
4885	Which of these traffic signs is in the shape of a polygon with the most sides?	STOP
4886	Which of these trees secretes a thick,sticky substance called pitch?	PINE
4887	Which of these tropical locales is not mentioned in the Beach Boys hit song “Kokomo”?	BARBADOS
4888	Which of these TV characters commonly buzzed friends into his home using a two-way intercom?	JERRY SEINFELD
4889	Which of these TV comedies popularized the catch phrase “That’s what she said”?	THE OFFICE
4890	Which of these TV dramas is credited with inventing the jokey holiday tradition known as “Chrismukkah”?	THE O.C.
4891	Which of these TV personalities is a former fashion model,who once spent a summer modeling for Chanel?	MARTHA STEWART
4892	Which of these TV series titles contains a superlative adjective?	THE BIGGEST LOSER
4893	Which of these TV show ratings denotes programming intended specifically for viewers seventeen and older?	TV-MA
4894	Which of these TV show titles contains an ampersand?	LAW & ORDER
4895	Which of these TV show titles is a synonym for “happiness”?	GLEE
4896	Which of these TV shows typically concluded with its main character typing an entry into his computer diary?	DOOGIE HOWSER, M.D.
4897	Which of these TV sitcoms features a pesky uber-geek whose signature catch-phrase is “Did I do that?”	FAMILY MATTERS
4898	Which of these types of jewelry in standard sizes known as “opera,” “princess” and “choker”?	NECKLACE
4899	Which of these types of shower takes place in outer space and is not a weather phenomenon?	METEOR SHOWER
4900	Which of these U.S. banknotes features a portrait of a man who is bearded?	$50 
4901	Which of these U.S. cities is located in a tri-state region known as “Ark-La-Tex”?	SHREVEPORT
4902	Which of these U.S. cities is located in the tri-state region known as “Ark-la-Tx”?	SHREVEPORT
4903	Which of these U.S. cities is named after an ancient Greek city, not a Native American tribe?	SYRACUSE
4904	Which of these U.S. cities is primarily serviced by a major airport named for jazz great Louis Armstrong?	NEW ORLEANS
4905	Which of these U.S. cities is situated northeast of Denver, CO?	MINNEAPOLIS
4906	Which of these U.S. cities is west of the Mississippi River?	LITTLE ROCK,AR
4907	Which of these U.S. cities’ social elite were commonly known as “brahmins” in the 19th century?	BOSTON
4908	Which of these U.S. corporations has thousands of employees that are members of the UAW?	GENERAL MOTORS
4909	Which of these U.S. national parks lies across the Continental Divide?	ROCKY MOUNTAIN
4910	Which of these U.S. presidents does not have a state capital named after him?	GROVER CLEVELAND
4911	Which of these U.S. presidents has a middle name that was the last name of another U.S. president?	RONALD REAGAN
4912	Which of these U.S. states has a capital city whose name features an adjective?	ARKANSAS
4913	Which of these U.S. states has a postal abbreviation whose letters are not in alphabetical order?	NEW MEXICO
4914	Which of these U.S. states have postal abbreviations that contain the same two letters?	ALABAMA AND LOUISIANA
4915	Which of these U.S. states is home to the Chocolate Mountains, rumored to contain vast amounts of gold?	CALIFORNIA
4916	Which of these U.S. states is located east and not west of the Mississippi River?	ILLINOIS
4917	Which of these U.S. states is located entirely in the Eastern time zone?	OHIO
4918	Which of these units of measurement comes in standard “statute” and slightly longer “nautical” versions?	MILE
4919	Which of these vegetables is actually a miniature variety of cabbage?	BRUSSELS SPROUTS
4920	Which of these vegetables is also known as the “Mexican turnip”?	JICAMA
4921	Which of these vegetables is commonly referred to as a “spring onion” or “green onion”?	SCALLION
4922	Which of these vehicles often lacks handlebars?	UNICYCLE
4923	Which of these verbs has a past tense form that is also a word for a type of woman’s shoulder scarf?	STEAL
4924	Which of these wars took place during the nineteenth century?	U.S. CIVIL WAR
4925	Which of these was not a member of the original cast of “Saturday Night Live”?	BILL MURRAY
4926	Which of these web sites requires visitors to give a DOB before entering?	GREYGOOSE
4927	Which of these websites features often-annoying pop-up text balloons officially dubbed “Annotations”?	YOUTUBE
4928	Which of these websites is not about a Founding Father, but the home page of a major insurance company?	JOHNHANCOCK.COM
4929	Which of these well-known nicknames is not commonly used to refer to a former U.S. President?	THE DONALD
4930	Which of these well-known nursery rhymes prominently features an insect?	LITTLE MISS MUFFET
4931	Which of these well-known songs is an example of a sea chanty?	BLOW THE MAN DOWN
4932	Which of these well-known TV dads was played by an actor who had the same first name as his character?	TONY MICELLI
4933	Which of these winged creatures is not featured in the U.S. postal stamp series “Pollination”?	EAGLE
4934	Which of these women has never been married to Tom Cruise?	Nicole Kidman
4935	Which of these women helped created the “Parental Advisory Labels” found on albums with explicit content?	TIPPER GORE
4936	Which of these words comes from a Latin term meaning, “almost an island”?	PENINSULA
4937	Which of these words contains an umlaut?	DOPPELGANGER
4938	Which of these words contains an umlaut?	DOPPELGANGER
4939	Which of these words derives from the belief that mental illness is influenced by the moon?	LUNATIC
4940	Which of these words does not form an English word when the suffix “-ster” is added to it?	PUSH
4941	Which of these words features all five vowels in alphabetical order?	FACETIOUS
4942	Which of these words features four consecutive letters in alphabetical order?	UNDERSTUDY
4943	Which of these words features four consecutive letters in alphabetical order?	UNDERSTUDY
4944	Which of these words features the chemical symbols for sulfur, gold, and sodium?	SAUNA
4945	Which of these words is a fancier way of saying a “lie”?	MENDACITY
4946	Which of these words is derived from the popular name of a notorious London mental institution?	BEDLAM
4947	Which of these words is derived from two Greek roots meaning “self” and “write”?	AUTOGRAPH
4948	Which of these words is often seen on Nintendo’s Web site,but never in Merriam-Webster’s dictionary?	WII
4949	Which of these words means both “to stick together” and “to split apart”?	CLEAVE
4950	Which of these words means “dramatic” or “theatrical?”	HISTRIONIC
4951	Which of these words once referred to hoods worn by French nobles?	CHAPERONE
4952	Which of these world leaders is a graduate of the University of Leipzig?	ANGELA MERKEL
4953	Which of these would be an appropriate response to the Spanish question “Que tal?”	MUY BIEN
4954	Which of these would be an appropriate response to the Spanish question “Que tal”?	MUY BIEN
4955	Which of these years will be a leap year?	2012
4956	Which of these ’80s movies did not star both “Coreys,” Haim and Feldman?	LUCAS
4957	Which of these ’80s sitcoms did not feature a live-in housekeeper as one of its main characters?	GROWING PAINS
4958	Which of these ’90s movies shares a main character with the best-selling novel “Hannibal Rising”?	THE SILENCE OF LAMBS
4959	Which of these ’90s romantic comedies did not star Tom Hanks and Meg Ryan?	FRENCH KISS
4960	Which of these “colorful” characters does not appear in the 1992 movie “Reservoir Dogs”?	MR.GREEN
4961	Which of these “old” cities shares its name with a popular brand of Mexican food products?	OLD EL PASO
4962	Which of these “Real Housewives” installments was canceled after only one season?	WASHINGTON,D.C.
4963	Which pair of Santa’s reindeer derive their names from the German words for “thunder” and “lightning,” respectively?	DONNER AND BLITZEN
4964	Which planet is often called the earth’s twin because it is nearly the same size in diameter?	VENUS
4965	Which popular reality show is based out of the island town Unalaska,Alaska,better known as “Dutch Harbor”?	DEADLIEST CATCH
4966	Which retailer donates 5 percent of its income–about $3 million per week–to community outreach programs?	TARGET
4967	Which sports position is assessed using a “passer rating” that incorporates “completion percentage” and “yards per attempt”?	QUARTERBACK
4968	Which treat was the indirect result of a failed attempt by its inventor to make synthetic rubber?	CHEWING GUM
4969	Which type of nut puts the “rocks” in Haagen-Dazs’ Rocky Road ice cream?	ALMONDS
4970	Which writer captured the essence of Transcendentalism thinking with an 1841 essay that advised, “Trust thyself”?	RALPH WALDO EMERSON
4971	Which “Dancing With the Stars” professional shares their name with a well-known brand of vodka?	KARINA SMIRNOFF
4972	Which “Desperate Housewives'” actress’s first name is also a noun meaning “happiness”?	FELICITY HUFFMAN
4973	While a fisherman hauls in the catch, what is the name for the person who sells it?	FISHMONGER
4974	While campaigning,what U.S. president appeared on “Laugh-In,” delivering a deadpan “Sock It To Me?”	RICHARD NIXON
4975	While First Lady,Nancy Reagan regularly enlisted the help of Joan Quigley,a San Francisco what?	ASTROLOGER
4976	While in office,which of these U.S. presidents donated his entire salary to charity?	JOHN F. KENNEDY
4977	While Johnny Cash famously sang about “A Boy Named Sue,” what oldie features a lyric about “a gal named Sue”?	TUTTI FRUTTI
4978	While on the job,which of these sports stars often uses a black finish Louisville Slugger C271?	ALEX RODRIGUEZ
4979	Who are the three “Heathers” in the cult 1989 movie of the same name?	HIGH SCHOOL GIRLS
4980	Who are “The Twitter Guys”?	EVAN WILLIAMS & BIZ STONE
4981	Who created the SNL character Sally O’Malley,a 50 year-old who loves to “kick,stretch and kick!”?	MOLLY SHANNON
4982	Who designed the famous black and red dress worn by Michelle Obama the night of the 2008 election?	NARCISCO RODRIGUEZ
4983	Who designed the iconic pink suit worn by Jackie Kennedy the day of her husband’s assassination?	COCO CHANEL
4984	Who holds the record for the longest Senate speech, spending 24 hrs attacking a famous Civil Rights bill?	STROM THURMOND
4985	Who holds the record for the longest Senate speech,spending 24 hours attacking a famous civil rights bill?	STROM THURMOND
4986	Who is Alberto Contador?	2010 TOUR DE FRANCE WINNER
4987	Who is Berry Gordy, Jr.?	MOTOWN RECORDS FOUNDER
4988	Who is credited with the memorable quip “In the future,everyone will be world-famous for fifteen minutes”?	ANDY WARHOL
4989	Who is Curtis Stone?	AN AUSTRIAN CELEBRITY CHEF
4990	Who is Dr. Egon Spendler?`	HARRY RAMIS IN “GHOSTBUSTERS”
4991	Who is Laurence Tureaud?	MR. T
4999	Who is the only person currently featured on the front of U.S. paper currency whose portrait faces the observer’s left?	ALEXANDER HAMILTON
5000	Who is the only person who has won Emmys for both Lead Actress in a Drama and Lead Actress in a Comedy?	EDIE FALCO
5001	Who is the only U.S. president in history to serve two nonconsecutive terms?	GROVER CLEVELAND
5002	Who is the youngest justice currently sitting on the U.S. Supreme Court?	ELENA KAGAN
5003	Who once referred to her parents’ love triangle as the Brad Pitt/JenniferAniston/Angelina Jolie of their day?	CARRIE FISHER
5004	Who penned the 2008 memoir “Here’s the Story: Surviving Marcia Brady and Finding My True Voice”?	MAUREEN MCCORMICK
5005	Who was both the last U.S. president of the 19th century and the first U.S. president of the 20th century?	WILLIAM MCKINLEY
5006	Who was David Letterman’s first guest on NBC in 1982 and again on CBS in 1993?	BILL MURRAY
5007	Who was president of the Soviet Union when it formally dissolved in 1991?	MIKHAIL GORBACHEV
5008	Who was president when CNN debuted “Larry King Live,” which ended its 25-year run in 2010?	RONALD REAGAN
5009	Who was sworn in as a Supreme Court justice13 years after winning “Brown v. Board of Education”?	THURGOOD MARSHALL
5010	Who wrote the famous poem that begins, “A thing of beauty is a joy forever”?	JOHN KEATS
5011	Whose famous World Series walk-off home run inspired Jack Buck’s classic line, “I don’t believe what I just saw”?	KIRK GIBSON
5012	Whose NY Times obituary noted that “his fashion and portrait photographs helped define America’s image of style”?	RICHARD AVEDON
5013	Whose work on sound recordings earned him a spot in the National Inventors Hall of Fame in 2004?	RAY DOLBY
5014	Why do old newspapers turn yellow?	BECAUSE OF OXIDATION
5015	Why is there a brass ring embedded in the middle of 8th Street in the town of Manitowoc,Wisconsin?	SPUTNIK CRASHED THERE
5016	Winner of seventeen James Beard awards, “Saveur” magazine primarily covers what topic?	CUISINE
5017	With 21 states,what letter is by far the most common one found at the end of the names of the U.S. states?	A *CORRECT*
5018	With a career that spans over fifty years,singer Joan Baez is known as “The Queen of” what?	FOLK
5019	With a diet that includes gibbons and macaques, clouded leopards are native to what part of the world?	SOUTHEAST ASIA
5020	With a traditional French manicure, a person’s nails receive which of these treatments?	WHITE POLISH AT THE TIPS
5021	With a wider wingspan than Air Force One, what country’s leader flies in an airbus dubbed “Air Sarko One”?	FRANCE
5022	With an alien hero sent to earth as an infant, the 2010 film “Megamind” shares a setup with what other movie?	SUPERMAN
5023	With Dana Andrews as Lt. Ted Stryker,the 1957 film “Zero Hour!” served as the basis for what movie spoof?	AIRPLANE!
5024	With handles shaped like bunny ears, the Rabbit is a popular high-end version of what kitchen utensil?	CORKSCREW
5025	With just 100 calories per serving,VitaTops are a snack food that are simply the “tops” of what treat?	MUFFINS
5026	With lyrical answers like “Shave his belly with a rusty razor,” an old song asks “What shall we do with” whom?	A DRUNKEN SAILOR
5027	With music by Burt Bacharach,what Broadway musical is based on the 1960 film “The Apartment”?	PROMISES,PROMISES
5028	With one degree equaling one gram of sucrose,the Brix scale can be used to measure what aspect of a food?	ITS SWEETNESS
5029	With only a 345-foot difference between its highest and lowest points,what is the flattest U.S. state?	FLORIDA
5030	With over fifty mountain peeks exceeding 14,000 feet, what U.S. state has the most “fourteeners”?	COLORADO
5031	With Pluto being labeled a “dwarf planet” in 2006, what is now the smallest planet in our solar system?	MERCURY
5032	With Pluto reclassified as a “dwarf planet,” what planet in our solar system is now farthest from the Sun?	NEPTUNE
5033	With roughly 1 in 10 companies giving employees the day off,what is the least-observed major U.S. holiday?	COLUMBUS DAY
5034	With roughly 8000 residents, what is the smallest state capital in the United States?	MONTPELIER VT
5035	With the help of Martin Luther,the 16th-century Reformation began as a movement to reform what?	ROMAN CATHOLIC CHURCH
5036	With white sand offsetting dark,peaty water,Ireland’s Lough Tay is a body of water often referred to as what?	GUINNESS LAKE
5037	Women currently make up what fraction of the Supreme Court?	1/3/2012
5038	Woodward and Bernstein,the journalists who first broke the Watergate Scandal,have what first names?	BOB AND CARL
5039	Worn bindings and missing dust jackets are common problems that can devalue what collectibles?	BOOKS
5040	Wrestler and actor Andre the Giant’s unusual height was caused by a rare defect in what gland?	PITUITARY
5041	Written by the British group Psapp, “Cosy in the Rocket” is the theme song to what long-running TV drama?	GREY’S ANATOMY
5042	Written circa 340 BC,Aristotle’s work “Meteorologica” largely examines which of these subjects?	WEATHER
5043	Years before his brief marriage to Renee Zellweger,what country crooner had a hit with the song “You Had Me from Hello”?	KENNY CHESNEY
5044	Years before starring in the movie “Enchanted,” what actress worked briefly as a Hooters waitress?	AMY ADAMS
5045	“1 Radioactive Bite,8 Legs and 183 Previews” was the title of a 2011 review for what Broadway musical?	SPIDER MAN:TURN OFF THE DARK
5046	“A crate is hidden away in a large government warehouse” describes the end of what adventure film?	RAIDERS OF THE LAST ARK
5047	“A is for Amy,who fell down the stairs,” is a quote from a book by what macabre writer-illustrator?	EDWARD GOREY
5048	“Across the Universe” is 2007 film that showcases the music of what legendary group?	THE BEATLES
5049	“Aggies,Immies,Shooters,and Swirls” is the title of a coffee table book devoted to what children’s game?	MARBLES
5215	Which of these cable networks focuses on music,not movies?	CMT
5050	“American Idol” judge Randy Jackson got his big break playing what instrument for the rock band Journey?	BASS GUITAR
5051	“Ariel’s Beginning” is the sub-title of a 2008 straight-to-DVD prequel of what animated Disney movie?	THE LITTLE MERMAID
5052	“As far back as I can remember,I always wanted to be a gangster,” is heard near the start of what Scorsese film?	GOODFELLAS
5053	“As-Salaam Alaikum,” which means “peace be unto you,” is a traditional greeting among whom?	MUSLIMS
5054	“Avoid Missing Ball for High Score” are the complete instructions for what classic video game?	PONG
5055	“Believe the legend.Beware the Wolf” is an apt tagline for a 2011 film featuring what fairy tale protagonist?	LITTLE RED RIDING HOOD
5056	“Big Sky Country” is a popular nickname for what U.S. state?	MONTANA
5057	“Boffo” and “whammo” are two examples of the distinctive slang of what trade magazine?	VARIETY
5058	“Born” in 1938, what cartoon icon was inspired by a fleet-footed Disney critter named Max Hare?	BUGS BUNNY
5059	“Buddha” is an ancient Sanskrit word meaning what?	ENLIGHTENED ONE
5060	“Calculus” is another name for what dental problem?	TARTAR
5061	“Cash for Clunkers” was a government program that encouraged Americans to switch to more efficient what?	CARS
5062	“Cerebro” is the Spanish word for what organ in the human body?	BRAIN
5063	“Check the neck” is common advice given to those evaluating the ripeness of what fruit?	PEAR
5064	“Circumaural” and “supra-aural” are two common styles of what tech gadget?	HEADPHONES
5065	“Citizen Cake,” a popular bakery in San Francisco,derives its name from a classic film directed by whom?	ORSON WELLES
5066	“Coaches and assistant coaches must wear a sport coat or suit coat” is an official rule in what pro sport?	NBA
5067	“Control +C then Control+V” is a computer keyboard shortcut combination commonly known as what?	COPY & PASTE
5068	“Cooties” is a slang word for what insects?	LICE
5069	“Cowbell Sketch” and “A View To a Kill” are two listings in the index of a book titled what?	CHRISTOPHER WALKEN A TO Z
5070	“Cowboys and Indians” magazine once described what singer as “part cowboy, part Indian, all icon”?	WILLIE NELSON
5071	“Cryptophasia” is a fancy term for the made-up language that sometime develops between what?	TWINS
5072	“Daniel” and “Sweep the Leg” are two songs inspired by what ’80s teen flick?	THE KARATE KID
5073	“Dead-tree version” is slang for a document that is what?	PRINTED ON PAPER
5074	“Do a good turn daily” is the official slogan of which of these do-good organizations?	BOY SCOUTS
5075	“Do I have to remove my shoes?” is a section found on what government agency’s website?	TSA
5076	“Don’t Be Evil” is the unofficial corporate motto of what Internet giant?	GOOGLE
5077	“Drink, ye harpooners!” is a line from what classic novel?	MOBY-DICK
5078	“EE” is an academic course of study that stands for “electrical” what?	ENGINEERING
5079	“Egad!” is an old-fashioned term whose meaning is roughly equivalent to what texting shorthand?	OMG
5080	“Eight plus danger-packed days” describes the 2010 DVD box set of the entire run of what TV series?	24
5081	“Enriched flour” is flour that has which of the following added to it?	VITAMINS
5082	“Erstwhile” is a fancy word for what adjective?	FORMER
5083	“Estrella de mar” is the Spanish term for what ocean creature?	STARFISH
5084	“Fair and Balanced” is the trademarked slogan of which of these cable news networks?	FOX NEWS
5085	“Fierce,” “ferosh,” and “hot tranny mess” are all catchphrases coined by what popular reality star?	CHRISTIAN SIRIANO
5086	“Final Fantasy” is a popular series of video games that are classified as RPG’s, or what kind of “games”?	ROLE-PLAYING
5087	“Five and a half” is the self-described age of what classic comic strip character?	DENNIS THE MENACE
5088	“Flyg,fula fluga,flyg!Och den fula flugen flog” is a tongue twister about an ugly fly in what language?	SWEDISH
5089	“For Audrey” is a shade of blue nail polish that pays tribute to what classic Audrey Hepburn film?	BREAKFAST AT TIFFANY’S
5090	“Forget You” is the title of the cleaned up radio version of a popular 2010 expletive-filled song by whom?	CEE LO GREEN
5091	“Fork-split and gently pull apart” are common instructions for preparing what type of food?	ENGLISH MUFFINS
5092	“God is dead” is a widely quoted line taken from the works of what famous philosopher?	FRIEDERICH NIETSZCHE
5093	“Ground Ball Grape,” “Wild Pitch Watermelon” and “Swingin’ Sour Apple” are all flavors of what brand of gum?	BIG LEAGUE CHEW
5094	“Handheld collapsible canopy” is a very brief definition of which of these words?	UMBRELLA
5095	“He floats through the air with the greatest of ease” is a familiar lyric about what kind of circus performer?	TRAPEZE ARTIST
5096	“He is a very good little elephant” is a line in the popular child’s tale “A Story of” who?	BABAR
5097	“Hell’s Kitchen,” “Kitchen Nightmares,” and “MasterChef” are reality shows hosted by what hot-tempered chef?	GORDON RAMSAY
5098	“Help you I can” is an example of what Star Wars character’s famously “inverted manner of speaking”?	YODA
5099	“Heteropaternal superfecundation” is the technical term to describe twins who have what?	DIFFERENT FATHERS
5100	“He’s got crazy flipper fingers” and “Never tilts at all” are lyrics from a 1969 song by The Who titled what?	PINBALL WIZARD
5101	“Hold Me Closer,Tony Danza,” a 2007 book about misheard song lyrics,references a song by whom?	ELTON JOHN
5102	“Home Alone” director Christopher Columbus has a production company that is aptly named for what year?	1492
5103	“Honolulu” is a Hawaiian word meaning what?	PROTECTED BAY
5104	“I fear all we have done is to awaken a sleeping giant” was allegedly said after a famous attack during what war?	WORLD WAR II
5105	“I Feel Pretty,” “America,” and “Tonight” are all songs featured in what classic musical?	WEST SIDE STORY
5106	“Imagine me and you,I do/I think about you day and night,it’s only right” are lyrics to a 1967 song by what group?	THE TURTLES
5107	“Ionization chamber” and “photoelectric” are the two most common types of what household device?	SMOKE DETECTOR
5108	“It is better to have 100 friends than 100 rubles” is a proverb in what country?	RUSSIA
5109	“It’s like rain on your wedding day” is a lyric from a 1995 Alanis Morissette hit with what title?	IRONIC
5110	“I’m Alright,” a 1980 hit by Kenny Loggins,is the opening theme song of what popular comedy?	CADDYSHACK
5111	“I’m so hungry I could eat a horse!” is a well-known example of what commonly used literacy device?	HYPERBOLE
5112	“Jenny dies from an incurable disease” spoils the ending of not only “Forrest Gump” but what other film?	LOVE STORY
5113	“Kim” and “Park are two of the most common family names in which of these Asian countries?	SOUTH KOREA
5114	“Kitchen Confidential” is a best-selling memoir by what celebrity chef?	ANTHONY BOURDAIN
5115	“Knobby’s Quest” is a video game based on what classic children’s toy?	ETCH A SKETCH
5116	“K” is the chemical symbol for what element?	POTASSIUM
5117	“Lands End,” a mansion in Long Island built in 1902, is said to have inspired a fancy home in what classic novel?	THE GREAT GATSBY
5118	“Laryngeal prominence” is the scientific term for what part of the human body?	ADAM’S APPLE
5119	“Love and Glamour” is the name of Jennifer Lopez’s sixteenth what?	PERFUME
5120	“Love and Light” is the name of Jennifer Lopez’s seventeenth what?	PERFUME
5121	“Mahalo” is a commonly used Hawaiian word that means what?	THANK YOU
5122	“Maximum Angle of Stability of a Wet Granular Pile” is a published physics study on how to build the perfect what?	SAND CASTLE
5123	“May I have a large container of coffee?” is a popular mnemonic for remembering what?	DIGITS OF PI
5124	“Mendicant” is a fancy word for what type of person?	BEGGAR
5125	“Molly Pitcher” was so named because she brought water to soldiers on the battlefield during what war?	AMERICAN REVOLUTION
5126	“Never do today what you can put off until tomorrow” would be an apt motto for which of these people?	PROCRASTINATOR
5127	“New Amerykah” is the title of a 2008 R&B album by an artist with what last name?	BADU
5128	“Not Really a Waitress”,OPI is a leading brand of what?	NAIL POLISH
5129	“Nowhere Boy” is a 2009 biopic about what legendary musician?	JOHN LENNON
5130	“One can fly and the other cannot” is one way of describing a key difference between which of these animals?	PENGUINS AND PUFFINS
5131	“One husband, two kids…and multiple personalities” is the apt tagline for what showtime series?	UNITED STATES OF TARA
5132	“Parting is such sweet sorrow” is a line from Shakespeare that offers an example of what literary device?	OXYMORON
5133	“Patient has some ribs to spare,take out a couple,but use care” is an instruction in what classic game?	OPERATION
5134	“Pineapple shrimp, and lemon shrimp, coconut shrimp, pepper shrimp” is a line from what hit film?	FOREST GUMP
5135	“Pink Panther” refers to a what?	DIAMOND
5136	“Pinoy Idol” and “Pinoy Big Brother” are what country’s version of the popular reality shows?	THE PHILLIPPINES
5137	“Popping” and “locking” are moves associated with what style of dance?	BREAKDANCING
5138	“Potent potable” is a fancy phrase that refers to which of the following?	ALCOHOLIC BEVERAGES
5139	“Practice” is the answer to an old joke that asks, “How do you get to” what New York City landmark?	CARNEGIE HALL
5140	“Publish or perish” is a rule usually said to apply to the careers of what professionals?	PROFESSORS
5141	“Quit your jibba jabba!” and “Shut up,fool!” are two phrases that can be played on a novelty toy called what?	MR.T IN YOUR POCKET
5142	“Rabbit ears” are a device once commonly used to help improve which of the following?	TV RECEPTION
5143	“Rango,” the title character in a 2011 animated movie voiced by Johnny Depp,is what kind of desert creature?	CHAMELEON
5144	“Rebound tumbling” is another name for what?	TRAMPOLINING
5145	“Red Shirt”, a term for a minor TV character doomed to be killed off quickly,derives from what classic show?	STAR TREK
5146	“Reiki” is a type of what?	ENERGY HEALING
5147	“Rocky Top” is one of the official songs of what state?	TENNESSEE
5148	“Runaway,” a sprawling 35-minute musical film by Kanye West,prominently features what performers?	BALLERINAS
5149	“Saltimbocca,” the name of a flavorful Italian veal dish, means what in English?	JUMP IN THE MOUTH
5150	“Samuel Spade’s jaw was long and bony” is the first line of what famous detective novel?	THE MALTESE FALCON
5151	“Sawing logs” is a slang expression often used to describe someone who is doing what?	SNORING
5152	“Schmaltzy,” meaning “overly sentimental,” comes from a Yiddish word for what?	CHICKEN FAT
5153	“Scuse me while I kiss this guy” is an often misheard lyric in a song by what classic rock guitarist?	JIMI HENDRIX
5154	“Senseless in Seattle” and “The Da Vinci Coma” are Mad Magazine spoofs of movies starring what actor?	TOM HANKS
5155	“Sherri Shepherd Wants to Make Whoopee” was a 2010 headline about the comedian hosting what game show?	THE NEWLYWED GAME
5156	“Sixteen coaches long” is a lyric in an Elvis Presley song titled what?	MYSTERY TRAIN
5157	“Slider” is a common slang term for a miniature version of which of these foods?	HAMBURGERS
5158	“Snatiation” is a tongue-in-cheek term that refers to a bout of uncontrallable sneezing brought on by what?	A FULL STOMACH
5159	“Someone left the cake out in the rain” is a lyric from what often-ridiculed pop song?	MACARTHUR PARK
5160	“Spin Cycle,” “Scary-Go-Round” and “Rib Rage” are all events on what hit TV game show?	WIPEOUT
5161	“Stay Puft” is a brand of marshmallows inspired by what ’80s film?	GHOSTBUSTERS
5162	“Stick-to-itiveness” is a folksy synonym for which of these words?	PERSEVERANCE
5163	“Surfer dude feuds with teacher while teenage girl loses her innocence” summarizes what movie’s plot?	FAST TIMES AT RIDGEMONT HIGH
5164	“Synchronicity”, the last studio album by The Police, shares its name with a theory put forward by whom?	CARL JUNG
5165	“Systolic” and “diastolic” are medical terms that refer to what human vital sign?	BLOOD PRESSURE
5166	“Take me down to the Paradise City,where the grass is green and the girls are pretty” are lyrics in an ’80s hit by whom?	GUNS N’ ROSES
5167	“Team Edward or Team Jacob” is a passionate debate amongst readers of which of these authors?	STEPHENIE MEYER
5168	“The Adventures of Trash Gordon” is a favorite bedtime story of what “Sesame Street’ character?	OSCAR
5169	“The Blind Side” depicts the troubled adolescence of Michael Oher, a linebacker drafted by what NFL team in 2009?	BALTIMORE RAVENS
5170	“The Boot” is the name of a popular website featuring inside information for fans of what music genre?	COUNTRY
5171	“The Foie Gras Wars” is a 2009 book that features what type of animal on the cover?	DUCK
5172	“The Lost Symbol” is the latest in a series of Dan Brown novels that center on what protagonist?	ROBERT LANGDON
5173	“The Meltdown” and “Dawn of the Dinosaurs” are both apt subtitles of sequels to what animated film?	ICE AGE
5174	“The Roaring Twenties” is a well-known nickname for a decade that coincided with what historic period?	THE JAZZ AGE
5175	“The Wicker Man, the Weather Man, and the Family man” are all films starring what lead man?	NICOLAS CAGE
5176	“The Widows Of Eastwick” is the follow-up novel to a 1984 work with which of these words in its title?	WITCHES
5177	“There’s More Than Meets the Arch” is the former motto of what U.S. city?	ST LOUIS
5178	“Thrombocyte” is another name for what common component of blood that aids in clotting?	PLATELET
5179	“Ti amo” means “I love you” in what language?	ITALIAN
5180	“Tip the pan slightly to ignite the rum” is an instruction in the recipe for which of these popular desserts?	BANANAS FOSTER
5181	“Tippling” is an old-fashioned term for what unsavory behavior?	DRINKING ALCHOHOL
5182	“To serve,not to be served” is the motto of what organization?	AARP *CORRECT*
5183	“TomKitten” is a tabloid nickname for a celebrity kid with what first name?	SURI
5184	“Top hat” and “junk shot” were two proposed,albeit bizarre-sounding,solutions for what 2010 crisis?	BP OIL SPILL
5185	“Tramp Stamp” is a common slang term for a tattoo found where?	LOWER BACK
5186	“Tramp Stamp” is a common slang term for a tattoo found where?	LOWER BACK
5187	“Traveling” is a common violation in which of these sports?	BASKETBALL
5188	“Two bufoons go to Aspen to return a woman’s purse” is the basic premise of what big-screen comedy?	DUMB AND DUMBER
5189	“Two cows,make ’em cry” is diner slang for an order of two hamburgers topped with what?	ONIONS
5190	“Two small antelopes can beat a big one” is a traditional proverb in which of these countries?	GHANA
5191	“Uncap what’s inside” is the slogan of what popular office supply brand?	SHARPIE
5192	“Ursus arctos horribilis” is the scientific name for what kind of bear?	GRIZZLY BEAR
5193	“Violet Precipitation” could be an “alternate title” of a 1984 movie starring whom?	PRINCE
5194	“What is…Cliff Clavin?” is the title of a classic “Cheers” episode in which Cliff appears on what TV show?	JEOPARDY!
5195	“When the night has come / And the land is dark” are the first two lines in what classic 1961 song?	STAND BY ME
5196	“Whew!” is an interjection often used to express which of these emotions?	RELIEF
5197	“Who Do You Think You Are” is a question repeatedly posed to the “Mr” in what hit song?	MR. BIG STUFF
5198	“World Without End” is the title of the 2007 follow-up to what author’s best-selling “Pillars of the Earth”?	KEN FOLLETT
5199	“Yappy hours” are social events in which attendees are encouraged to bring their what?	DOGS
5200	“You must have been something before electricity” is a playful jab at a person’s what?	AGE
5201	“You probably think this song is about you” is a famously caustic lyric from what hit song?	YOU’RE SO VAIN
5202	“You take the high road and I’ll take the low road” is a line from a traditional song of what people?	SCOTTISH
5203	“Your mother was a hamster and your father smelt of elderberries” is a bizarre insult from what funny film?	MONTY PYTHON & THE HOLY GRAIL
5204	On an Italian restaurant menu,which of these dishes would typically be listed under the heading “Zuppa”?	MINESTRONE
5205	Which of these body parts is not normally treated by an otolaryngologist?	EYE
5206	Which of these body parts is not normally treated by an otolaryngologist?	EYE
5207	Which of these bottled water brands is produced by the makers of Coca-Cola?	DASANI
5208	Which of these Brady Bunch episode titles is also the title of a 1974 Martin Scorsese film?	ALICE DOESN’T LIVE HERE ANYMORE
5209	Which of these branches of mathematics would a student most likely learn first?	ARITHMETIC
5210	Which of these branches of the Armed Forces operates F-16s?	AIR FORCE
5211	Which of these brand names features two misspelled words?	REDDI-WIP
5212	Which of these brave actresses appeared in a 2006 movie in which her head was shaved on screen?	NATALIE PORTMAN
5213	Which of these breeds of dogs takes it name from the region in Germany where it was originally bred?	WEIMARANER
5214	Which of these Broadway musicals was inspired by a famous painting?	SUNDAY IN THE PARK WITH GEORGE
5216	Which of these cable pundits is known for using an old-fashioned chalkboard as a visual aid?	GLEN BECK
5217	Which of these cable reality series is usually set nearest to the Arctic Circle?	ICE ROAD TRUCKERS
5218	Which of these cable TV news hosts once served in Congress as a Florida Republican?	JOE SCARBOROUGH
5219	Which of these California cities lays claim to the title “Capital of Silicon Valley”?	SAN JOSE
5220	Which of these camera parts controls how much light passes through the lens?	APERTURE
5221	Which of these candies typically comes in only two colors,pink and white?	GOOD & PLENTY
5222	Which of these candy bars was once marked with the slogan “Two for me,none for you”?	TWIX
5223	Which of these capital cities is not located in mainland Asia?	TOKYO
5224	Which of these card games is also called “Memory”?	CONCENTRATION
5225	Which of these cartoon characters is usually squinting?	MR.MAGOO
5226	Which of these cartoon characters likely suffers from rhotacism,a speech disorder where R’s are pronounced like W’s?	ELMER FUDD
5227	Which of these cartoon characters would best be described as a lothario?	PEPE LE PEW
5228	Which of these celebrities is not mentioned in the lyrics of the 1998 Barenaked Ladies hit “One Week?”	MEG RYAN
5229	Which of these celebrities was born in Cuba and not Puerto Rico?	GLORIA ESTEFAN
5230	Which of these celebrity kids is the child of an Oscar-winning mother and a Grammy-winning father?	APPLE MARTIN
5231	Which of these characteristics must be true about an Olympic-size pool?	50 METERS LONG
5232	Which of these characters appeared in the short-lived Broadway musical “Seussical”?	THE CAT IN THE HAT
5233	Which of these characters from AFI’s list of the fifty greatest movie villains was an actual movie star?	JOAN CRAWFORD
5234	Which of these characters from the original “Star Trek” TV series speaks with a Russian accent?	MR.CHEKOV
5235	Which of these characters is from the 1978 movie “Grease” and not the 1988 movie “Hairspray?”	MARTY MARASCHINO
5236	Which of these Charlie Chaplin movies was intended to make fun of Adolf Hitler?	THE GREAT DICTATOR
5237	Which of these Charlie Chaplin movies was intended to make fun of Adolph Hitler?	THE GREAT DICTATOR
5238	Which of these chart-topping albums was recorded by an “American Idol” champion?	SOME HEARTS
5239	Which of these chart-topping albums was recorded by an “American Idol” champion?	SOME HEARTS
5240	Which of these cheeses is commonly known in the United States as “Swiss Cheese”?	EMMENTALER
5241	Which of these children’s games traditionally ends when someone reaches “tensies”?	JACKS
5242	Which of these children’s games uses a spinner to determine a player’s move?	CHUTES AND LADDERS
5243	Which of these children’s movies was not based on a book by Roald Dahl?	THE JUNGLE BOOK
5244	Which of these cities has roughly the same latitude as New York City?	TOKYO
5245	Which of these cities in Michigan shares its name with a cryptocrystalline variety of the mineral quartz?	FLINT
5246	Which of these cities is also the name of a famous cocktail made with vermouth, whiskey, and a dash of bitters?	MANHATTAN
5247	Which of these city-themed songs mentions Graceland and the ghost of Elvis in its lyrics?	WALKING IN MEMPHIS
5248	Which of these classic animated Disney characters never communicates using words?	TINKER BELL
5249	Which of these classic board games is designed for the youngest age group?	CHUTES AND LADDERS
5250	Which of these classic fairy tales does not feature a wicked stepmother?	LITTLE RED RIDING HOOD
5251	Which of these classic fictional characters performs his on-the-job duties in a belfry?	QUASIMODO
5252	Which of these classic films was directed by Diane Sawyer’s husband?	THE GRADUATE
5253	Which of these classic movies is set during the Korean War?	M.A.S.H.
5254	Which of these classic novels features the wise advice “Never laugh at live dragons”?	THE HOBBIT
5255	Which of these classic novels was written by a man named after Ralph Waldo Emerson?	INVISIBLE MAN
5256	Which of these classic sitcom characters was not played by an actor with the same first name?	ELAINE BENES
5257	Which of these classic TV characters often tells others to “sit on it!”?	THE FONZ
5258	Which of these classic TV series featured a regular character who was a cross-dresser?	MASH
5259	Which of these classic TV shows has a title character whose name means “large” in Latin?	MAGNUM, P.I.
5260	Which of these classic works of literature is a sequel?	HUCKLEBERRY FINN
5261	Which of these classic works of literature is typically categorized as a short story and not a novel?	THE PIT AND THE PENDULUM
5262	Which of these classroom supplies is traditionally made of calcium carbonate?	CHALK
5263	Which of these cocktails typically requires the use of a bartending tool called a muddler?	MOJITO
5264	Which of these coffee shop orders requires the least preparation,simply adding water to espresso?	AMERICANO
5265	Which of these coins depicts the U.S. president who served in office the earliest?	QUARTER
5266	Which of these colors does not take its name from a gemstone?	PERIWINKLE
5267	Which of these colors is,by defintion, a shade of purplish-red?	MAGENTA
5268	Which of these combinations of road races would require a participant to run the farthest?	TEN HALF-MARATHONS
5269	Which of these combinations of standard coin rolls is worth the most money?	FIVE ROLLS OF DIMES
5270	Which of these comedies features both Luke and Owen Wilson?	THE ROYAL TENEBAUMS
5271	Which of these comedies prominently features a fortune-telling carnival game called “Zoltar Speaks”?	BIG
5272	Which of these common house plants does not actually produce flowers?	FERN
5273	Which of these common household objects is a simple incendiary device?	MATCH
5274	Which of these common ingredients in Japanese cuisine is a vegetable, and not a type of edible seaweed?	DAIKON
5275	Which of these common kitchen ingredients is often “clarified” by heating it on the stove?	BUTTER
5276	Which of these common Latin phrases means “to a sickening degree”?	AD NAUSEAM
5277	Which of these common tongue-twisting phrases features numerous examples of sibilance?	SHE SELLS SEASHELLS
5278	Which of these common yoga positions involves standing on one leg?	TREE POSE
5279	Which of these commonly used abbreviations is short for a French phrase?	RSVP
5280	Which of these companies was founded in the early 1980s in Melbourne,Australia ,by a woman and her husband?	JENNY CRAIG
5281	Which of these company’s stocks more than doubled in the early ’20s,largely as a result of Prohibition?	COCA-COLA
5282	Which of these computer keyboard symbols is also featured on a standard telephone keypad?	ASTERISK
5283	Which of these computer keyboard symbols is also featured on a standard telephone keypad?	Asterick
5284	Which of these condiments is sold under the brand name “Best Foods” west of the Rockies?	HELLMAN’S MAYONNAISE
5285	Which of these confections is often made in a machine that uses centrifugal force?	COTTON CANDY
5286	Which of these consumer product titans is known as the “father of frozen food”?	CLARENCE BIRDSEYE
5287	Which of these continents lies in the Northern,Southern,Eastern and Western Hemispheres?	AFRICA
5288	Which of these cooking terms is believed to come from a Norweigan word meaning “lump”?	DOLLOP
5289	Which of these cooking-related words is also a verb meaning “to hunt illegally”?	POACH
5290	Which of these cosmetics can be used in an emergency to stop pantyhose from running?	NAIL POLISH
5291	Which of these could be an alternative title for TV Land’s celeb reality show “Harry Loves Lisa?”	HAMLIN LOVES RINNA
5292	Which of these countries generally gets colder in temperature the farther south you travel?	AUSTRALIA
5293	Which of these countries is an island nation in the Pacific and not a country in Africa?	PAPUA NEW GUINEA
5294	Which of these countries is home to the world’s largest Kurdish population?	TURKEY
5295	Which of these countries is situated partly on what continent and partly on the other?	TURKEY
5296	Which of these countries lies in the coffee-producing region of the world known as the “bean belt”?	COLUMBIA
5297	Which of these countries’ people usually eat with fork and spoon, using only chopsticks for noodles?	THAILAND
5298	Which of these country names can be spelled by placing three U.S. state postal abbreviations in a row?	MALAWI
5299	Which of these Crayola Crayon colors takes its name from a lyric in the song “America the Beautiful”?	Purple Mountain’s Majesty
5300	Which of these creatures are on display in the Nocturnal House at the Cincinnati Zoo?	BATS
5301	Which of these deserts is by far the coldest,with temperatures known to fall as low as minus 40 degrees?	GOBI
5302	Which of these designer labels is best known for its trendy line of eyewear?	OLIVER PEOPLES
5303	Which of these devices indicates the time of day with a shadow?	SUNDIAL
5304	Which of these dishes is traditionally prepared in a molcajete,a heavy bowl made of volcanic rock?	GUACAMOLE
5305	Which of these Disney characters is typically drawn wearing only a collar?	PLUTO
5306	Which of these Disney Princesses was not born with,but rather married into her royal title?	CINDERELLA
5307	Which of these dog breeds is also slang for an overly aggressive person?	PIT BULL
5308	Which of these drinks is sometimes ceremoniously opened by cutting the top off the bottle with a specialized sword?	CHAMPAGNE
5309	Which of these drugstore brands operates the website RespectTheRoll.com?	COTTONELLE
5310	Which of these drugstore brands shares its logo design with the Socialist Labor Party of America?	ARM AND HAMMER
5311	Which of these elements derives its chemical symbol, “Hg,” from the Latin word for “liquid silver”?	MERCURY
5312	Which of these elements is an active ingredient in calamine lotion?	ZINC
5313	Which of these English towns is famous for the bath salts that come from its local springs?	EPSOM
5314	Which of these entries from the Cassell Dictionary of Slang means “to follow closely?”	LIKE WHITE ON RICE
5315	Which of these entries from the Cassell Dictionary of Slang means “very closely”?	LIKE WHITE ON RICE
5316	Which of these esteemed actors had a brief, if memorable, nude scene in the comedy classic “Animal House”?	DONALD SUTHERLAND
5317	Which of these European capitals is not located along the Danube river?	BERN
5318	Which of these European cities was built thousands of years ago atop seven hills?	ROME
5319	Which of these European countries is,in large part,a peninsula?	ITALY
5320	Which of these European “lands” is an island?	IRELAND
5321	Which of these events derives its name from a Greek word meaning “to dip”?	BAPTISM
5322	Which of these events occurs quadrennially?	SUMMER OLYMPICS
5323	Which of these fabrics is named for a variety of goat found in a hilly region between India and Pakistan?	CASHMERE
5324	Which of these family movies about animals centers on a creature that weighs the most?	FREE WILLY
5325	Which of these family movies about animals centers on a creature that weights the most?	FREE WILLY
5326	Which of these famous actors overcame childhood stuttering to become the voice of Darth Vader and CNN?	JAMES EARL JONES
5327	Which of these famous American poems mentions the Massachusetts towns of Lexington and Concord?	PAUL REVERE’S RIDE
5328	Which of these famous authors was not born in Ireland?	EUGENE O’NEILL
5329	Which of these famous lines is associated with a president who was a Democrat?	THE BUCK STOPS HERE
5330	Which of these famous melodies is traditionally played on a bugle?	TAPS
5331	Which of these famous names features a Spanish phrase meaning “of the bull”?	BENICIO DEL TORO
5332	Which of these famous people never appeared as a guest star on the HBO series “Sex and The City”?	ROBERT DOWNEY, JR
5333	Which of these famous phrases was chanted throughout the New Orleans Saints’ Super Bowl victory in 2010?	WHO DAT
5334	Which of these famous poem titles features the first words of the poem itself?	O CAPTAIN! MY CAPTAIN!
5335	Which of these famous poems recounts an event immediately preceding the American Revolution?	PAUL REVERE’S RIDE
5336	Which of these famous scientists was an Augustinian monk?	GREGOR MENDEL
5337	Which of these famous statues depicts a young man who is about to do battle with a giant?	DAVID
5338	Which of these famous structures was built as a tomb?	GREAT PYRAMID OF GIZA
5339	Which of these famous teenagers is a black belt in karate?	TAYLOR LAUTNER
5340	Which of these famous women was beheaded?	MARIE ANTOINETTE
5341	Which of these famous WWII battles took place on a Pacific island?	IWO JIMA
5342	Which of these fancy deserts is not typically lit on fire as part of its preparation?	BAKED ALASKA
5343	Which of these fashion accessory names is sometimes used as a verb to mean eating very quickly?	SCARF
5344	Which of these fashion houses is named after its founder’s first name and not his last name?	VALENTINO
5345	Which of these fast food chains specializes in burgers known as “sliders”?	MCDONALD’S
5346	Which of these fast food chains specializes in miniature hamburgers known as “sliders”?	WHITE CASTLE
5347	Which of these features of planet Earth is considered part of its hydrosphere?	ATLANTIC OCEAN
5348	Which of these felines lends its name to Apple’s 2011 version of their operating system OS X?	LION
5349	Which of these female names has not appeared in a Rolling Stones hit song title?	DAISY
5350	Which of these fictional characters are described as being “three apples tall”?	SMURFS
5351	Which of these fictional characters gives a famous speech popularly known as the “Nose Tirade”?	CYRANO DE BERGERAC
5352	Which of these films depicts a real-live court case and not an epic battle between two fictional creatures?	Dracula v. Frankenstein
5353	Which of these films features an ordinal number in its title?	THE THIRD MAN
5354	Which of these films is a “real” Hollywood movie,and not a “mockbuster”– a low-budget ripoff of a hit film?	LAND OF THE LOST
5355	Which of these films was loosely based on a 1927 Upton Sinclair novel?	THERE WILL BE BLOOD
5356	Which of these firearms also serves as shorthand for punching a hole in a beer can and drinking it quickly?	SHOTGUN
5357	Which of these fish names is thought to derive from the Latin word for “leaper”?	SALMON
5358	Which of these flowers has a common yoga pose named after it?	LOTUS
5359	Which of these fonts consists of symbols instead of letters?	WINGDINGS
5360	Which of these food brand names would also serve as a proper response to the Italian expression “grazie”?	PREGO
5361	Which of these food items is predominantly produced in the Italian town of Modena	BALSAMIC VINEGAR
5362	Which of these food pairs is commonly used to refer to one’s job or livelihood?	BREAD AND BUTTER
5363	In Disney’s “Operation Dumbo Drop,” U.S. soldiers attempt to bring what animal to a Vietnamese village?	ELEPHANT
5364	In E.B. White’s classic children’s novel “Charlotte’s Web,” what is the name of the gluttonous rat?	TEMPLETON
5365	In education,the Flesch-Kincaid readability test assigns a level of difficulty that corresponds to what statistic?	GRADE LEVEL
5366	In England, the term “Oxbridge” is used to refer collectively to the country’s two best-known what?	UNIVERSITIES
5367	In England, the word “lorry” refers to what type of vehicle?	TRUCK
5368	In England, what professionals are classified either as barristers or solicitors?	LAWYERS
5369	In England,a “hackney carriage” is another name for a what?	TAXI CAB
5370	In England,which of these common police detective duties is known as an “identity parade”?	POLICE LINEUP
5371	In English,the letter “B” is often silent when it is directly followed by what other letter?	T
5372	In farm lingo,the eggs laid by one hen during a single nesting period are known as what?	CLUTCH
5373	In February 2011,what cell phone provider began selling the iPhone,ending AT&T’s run as its exclusive carrier?	VERIZON WIRELESS
5374	In figure skating,which of these crowd-pleasing maneuvers requires two skaters?	DEATH SPIRAL
5375	In film credits,which of these actors is typically listed with his full middle name,and not just a middle initial?	PHILLIP HOFFMAN
5376	In finance, what adjective is used to describe a person’s income after taxes have been taken out?	DISPOSABLE
5377	In France,”haricot vert” is the term used for which of these vegetables?	GREEN BEAN
5378	In Frank Sinatra’s ode to “New York,New York,” what completes the famous line,”Start spreading the news”?	I’M LEAVING TODAY
5379	In French cuisine,a remoulade is a type of what?	SAUCE
5380	In genealogical terms, your grandfather’s great-great granddaughter is best described as your what?	FIRST COUSIN, TWICE REMOVED
5381	In geometry, which of these measurements applies only to circles and not triangles?	CIRCUMFERENCE
5382	In Germany,which of these common household items is known as a “fingerhut”?	THIMBLE
5383	In golf,if you “bogey” a hole,what score did you get?	ONE STROKE OVER PAR
5384	In Gray’s Anatomy, what bone in the human wrist is described as having a “crescentic outline”?	SEMILUNAR
5385	In Greek myth,what form did Zeus assume when he seduced Leda?	SWAN
5386	In Greek mythology, who succeeded in killing Achilles?	PARIS
5387	In Greek mythology,who is the goddess of the rainbow?	IRIS
5388	In health insurance parlance, the abbreviation “PPO” usually denotes what type of organization?	PREFERRED PROVIDER
5389	In her 1985 number one single. Whitney Houston asks, “How will I know if” what?	HE REALLY LOVES ME
5390	In her memoir,”Then Again,” what actress explains the origins of her love of men’s hats?	DIANE KEATON
5391	In hiking, the marks on trees that indicate the trail are called what?	BLAZES
5392	In hip-hop lingo,the word “shorty” commonly refers to a what?	YOUNG WOMAN
5393	In his 1989 book “From Beirut to Jerusalem,” Thomas Friedman recounts a journey he once took from Lebanon to where?	ISRAEL
5394	In his 1999 film “The Sixth Sense,” director M. Night Shyamalan makes a cameo appearance playing a what?	DOCTOR
5395	In his hit 1983 song,Elton John ponders “I guess that’s why they call it” what?	THE BLUES
5396	In his memoir, George W. Bush reveals his “all-time low” in office was hearing what rapper’s harsh, post-Katrina comments?	KANYE WEST
5397	In his memoir,celebrity chef Anthony Bourdain warns against ordering which of these foods on a Monday?	FISH
5398	In his Oscar acceptance speech, what actor asked for a moment of silence for the victims of the Titanic?	JAMES CAMERON
5399	In his satirical essay “A Modest Proposal,” Jonathan Swift proposed that Ireland’s poor do what with their children?	SELL THEM TO BE EATEN
5400	In honor of the famous race held in its capital,what state’s commemorative quarter features a racecar?	INDIANA
5401	In humans, what joint causes the “click” or “pop” that’s heard when mouths open and close?	TEMPORAMANDIBULAR JOINT
5402	In humans,the trachea is a tube that runs in front of what other body part?	ESOPHAGUS
5403	In Internet chat and text lingo,”ITA” is typically short for what phrase?	I TOTALLY AGREE
5404	In its final episode, what TV show revealed that the hospital was actually inside a snowglobe?	ST ELSEWHERE
5405	In its logo,the fast food chain Wendy’s described its hamburgers as what?	OLD FASHIONED
5406	In its third season,what TV drama featured an actor playing real-life hotel tycoon Conrad “Connie” Hilton?	MAD MEN
5407	In its title, a fitness article posted online asks the age-old question “Can You Get Six Pack Abs Without” what?	CRUNCHES
5408	In its TV ads,which brand of cat food is known for featuring a fluffy white cat eating from a crystal goblet?	FANCY FEAST
5409	In its written form,which of these languages has over 50,000 characters but no alphabet?	CHINESE
5410	In January 2012,many websites,including Google,loudly protested a proposed law known as SOPA,the “Stop Online” what?	PIRACY ACT
5411	In keeping with its maritime image,what fashion label’s logo features a J-class sailboat?	NAUTICA
5412	In keeping with its name,what Web Site once billed itself as “The World’s Greatest Recipe Collection”?	EPICURIOUS.COM
5413	In law, what is the term for a document that revises a person’s will?	CODICIL
5414	In law,the time period during which a person may be sued is called the “statute of” what?	LIMITATIONS
5415	In law,what is the term for a child who has been officially released from the control of his parents?	EMANCIPATED
5416	In law,what is the term for a document that revises a person’s will?	CODICIL
5417	In Los Angeles in 1927, Sid Grauman opened a now-famous what?	MOVIE THEATER
5418	In lunch counter lingo,what kind of bread does a customer get if his sandwich is “on whiskey?”	RYE
5419	In Mafia lingo,the phrase “sleeping with the fishes” refers to person who is what?	DECEASED
5420	In math, a ratio is commonly written as two numbers separated by which of these punctuation marks?	COLON
5421	In math, which of these numbers is a common denominator of the fractions 1/3 and 2/5?	15
5422	In math,what two letters are used to identify the horizontal and vertical axes on a graph?	X AND Y
5423	In mathematics,what punctuation mark is commonly used between numbers to indicate a ratio?	COLON
5424	In Mexico, a tortilla is a thin corn or flour flatbread, but in Spain, a tortilla is a what?	POTATO OMELET
5425	In Michael Jackson’s “You Rock My World” video,what actor makes a fitting cameo as the boss of “The Waterfront Hotel”?	MARLON BRANDO
5426	In military time, what number denotes one minute past midnight?	0001 ..
5427	In movies, what actor has twice portrayed Dr. Alex Cross, the hero of several James Patterson movies?	MORGAN FREEMAN
5428	In movies,Eric Bana and Edward Norton have both played a comic book character that was played on TV by whom?	BILL BIXBY
5429	In music industry lingo, an artist’s record “drops” when it what?	GETS RELEASED
5430	In music industry lingo,an artist’s record “drops” when it does what?	GETS RELEASED
5431	In musical notation,a flat is denoted by a symbol resembling what lowercase letter?	B
5432	In musical notation,a set of five horizontal lines and four spaces on which music is written is known as a what?	STAFF
5433	In musical theater,when a dancer shakes his open palms to the audience with fingers splayed,it is known as what?	JAZZ HANDS
5434	In NASCAR racing, how many cars traditionally start in each race?	43
5435	In New Orleans, the “po boy” is a signature style of what?	SANDWICH
5436	In office for 22 years,Richard M. Daley was the longest serving mayor of what U.S. city?	CHICAGO
5437	In one of 2010’s biggest viral videos,a hiker laughs and cries for three minutes at the sight of a what?	DOUBLE RAINBOW
5438	In one of his fireside chats,what U.S. president described America as a great “Arsenal of Democracy”?	FRANKLIN ROOSEVELT
5439	In order to perform the Heimlech maneuver on a choking person,you usually put your arms where?	AROUND HIS WAIST
5440	In order to play the banjo more effectively, what comedian maintains acrylic nails nails on two of his picking fingers?	STEVE MARTIN
5441	In order to “ford” a stream, how does a person cross it?	BY WADING
5442	In orthodontics,dental braces that are fitted behind the teeth,so as not to be visible,are called what?	LINGUAL
5443	In Pamplona’s Running of the Bulls, brave tourists run through the streets wearing what distinctive piece of clothing?	RED SCARVES
5444	In Paris, the Moulin Rouge nightclub is located in what historic neighborhood?	MONTMARTE
5445	In performing Darth Vader’s stunts,Bob Anderson called on his skills as an Olympic what?	FENCER
5446	In physics equations, what letter is typically used to represent the speed of light?	c
5447	In physics,the point at which an object can be balanced is called its “center of” what?	GRAVITY
5448	In pool,if you accidentally shoot the cue ball into a pocket,what have you done?	SCRATCHED
5449	In popular money slang,if you have five “Lincolns” and five “Hamiltons,” how much cash do you have?	$75 
5450	In pregnant women,what is the name of the thin,fluid-filled membrane that surrounds the fetus?	AMNION
5451	In preparation for hosting the 2008 Olympics, what country launched a campaign to stop public spitting?	CHINA
5452	In publishing,what nickname is commonly used for novels that are geared toward a female readership?	CHICK LIT
5453	In real estate lingo, buying a house with the intention of quickly reselling it for a profit is called what?	FLIPPING
5454	In real estate listings, the common acronym “FSBO” means “for sale” what?	BY OWNER
5455	In real estate listings,”a/g pl” stands for a swimming pool that is what?	ABOVEGROUND
5456	In recent years,several U.S. cities and towns have passed ordinances banning what contentious fashion trend?	SAGGY PANTS
5457	In response to a new immigration law, what city’s NBA team donned “Los Suns” jerseys in May 2010?	PHOENIX
5458	In restaurant lingo,a server who is falling behind is said to be where?	IN THE WEEDS
5459	In Robert Louis Stevenson’s novel “Treasure Island,” Long John Silver has a pet parrot named what?	CAPTAIN FLINT
5460	In Rodin’s statue “The Thinker,” which of these correctly describes the pose of the man’s arm touching his head?	RIGHT ELBOW ON LEFT KNEE
5461	In Roman mythology, Vulcan was the god of what?	FIRE
5462	In roman numerals, how is the year 2011 written?	MMXI
5463	In scientific classification,which of the taxonomic ranks are ranked in the right order,from highest to lowest?	FAMILY,GENUS,SPECIES
5464	In Shakespearean English, the word “ere” was commonly used to mean what?	BEFORE
5465	In Shakespeare’s “Richard III,” the main character famously shouts, “My kingdom for a” what?	HORSE
5466	In some cases, “hands-only” CPR can be as effective as the original method, which also involves doing what to the patient?	BREATHING INTO HIS MOUTH
5467	In Spain, which of these popular reality TV shows goes by the name, “No te lo pongas!”	WHAT NOT TO WEAR
5468	In Spain,which of these meals is typically taken at 9:00 p.m.?	LA CENA
5469	In Spanish cuisine,the dish “gambas al ajillo” is literally what main ingredient in garlic sauce?	SHRIMP
5470	In Spanish, which of these wines is not considered a “vino tinto”?	RIESLING
5471	In Spanish,”de nada” is a standard response to which of these niceties?	MUCHAS GRACIAS
5472	In street lingo, “Scratch” is slang for what?	MONEY
5473	In surfing and skateboarding,a person who rides with their right foot forward is known as a what?	GOOFY FOOT
5474	In tabloid gossip,the term “new ink” refers to a star’s newly acquired what?	TATTOO
5475	In taste tests,60% of consumers indicate preferring the “creamy” over the “crunchy” version of what food?	PEANUT BUTTER
5476	In teen girl slang, if someone is your “BFF,” she is your what “Forever”?	BEST FRIEND
5477	In tennis,a player who has lost a set 6-0 is said to have been what?	BAGELED
5478	In terms of square mileage,which of these Middle Eastern countries is the largest?	SAUDI ARABIA
5479	In the 1800s,Ohio native Annie Oakley gained national fame for her remarkable skills as a what?	SHARPSHOOTER
5480	In the 1870s,the standard QWERTY keyboard was developed to prevent which of these common typewriter problems?	JAMMED TYPEWRITERS
5481	In the 1880s,Australians built an enormously long fence to keep what animals from attacking their sheep?	DINGOES
5482	In the 1895 novel “Red Badge of Courage,” Henry Fleming, the main character, is a what?	UNION SOLDIER
5483	In the 1895 novel “The Red Badge Of Courage”, Henry Fleming,the main character,is a young what?	UNION SOLDIER
5484	In the 1945 novel “Animal Farm,” what animals control the “government” of the farm?	PIGS
5485	In the 1958 film “Vertigo,” Jimmy Stewart’s character has an irrational fear of what?	HEIGHTS
5486	In the 1960s,the CIA reportedly tried to manufacture exploding cigars in order to assassinate what world leader?	FIDEL CASTRO
5487	In the 1960s,the FBI conducted an investigation into the unintelligible lyrics of what popular song?	LOUIE LOUIE
5488	In the 1962 movie “The Manchurian Candidate,” what playing card triggers Raymond’s trances?	QUEEN OF DIAMONDS
5489	In the 1967 film “Bonnie and Clyde,” Clyde famously offers what terse description of the duo’s occupation?	WE ROB BANKS
5490	In the 1968 movie “Funny Girl,” Barbara Streisand’s character looks into the mirror and says “Hello” what?	GORGEOUS
5491	In the 1972 film “The Godfather,” Vito Corleone dies while playing with his grandson where?	IN A TOMATO GARDEN
5492	In the 1979 hit song “Escape,” what does the singer claim to like in addition to pina coladas?	GETTING CAUGHT IN THE RAIN
5493	In the 1980s the Members Only brand became famous for its wildly popular version of what?	MEN’S JACKET
5494	In the 1987 movie “The Princess Bride,” what actress plays the Princess Bride?	ROBIN WRIGHT PENN
5495	In the 1988 movie “Rain Man,” Raymond Babbitt is obsessed with watching what TV personality?	JUDGE WAPNER
5496	In the 1989 movie “Field Of Dreams”,a mysterious voice inspires a farmer to build what in his cornfield?	BASEBALL DIAMOND
5497	In the 1989 movie, “When Harry met Sally…” Harry and Sally first meet at what university?	UNIVERSITY OF CHICAGO
5498	In the 1990 movie “Ghost,” what classic song is featured during the famous “pottery-making” love scene?	UNCHAINED MELODY
5499	In the 1992 film “My Cousin Vinny,” Joe Pesci and Marisa Tomei memorably sample what Southern dish?	GRITS
5500	In the 1993 drama “Indecent Proposal,” Demi Moore agrees to sleep with Robert Redford for what tidy sum?	ONE MILLION DOLLARS 1,000,000
5501	In the 1994 film “The Shawshank Redemption” a newly freed Red reunites with Andy in what Mexican town?	ZIHUATANEJO
5502	In the 1994 movie “Speed,” a bomb is set to go off as soon as a bus’s speed falls below what?	50 MPH
5503	In the 1995 comedy “Tommy Boy,” Chris Farley ruins David Spade’s clothes as he sings, “Fat guy in” what?	A LITTLE COAT
5504	In the 1997 film “Donnie Brasco,” Johnnie Depp memorably explains the varied nuances of what mob phrase?	“FORGET ABOUT IT!”
5505	In the 1997 movie “Boogie Nights,” Heather Graham plays a young starlet known by what nickname?	ROLLERGIRL
5506	In the 1997 movie “My Best Friend’s Wedding,” who plays the titular “best friend”?	DERMOT MULRONEY
5507	In the 1998 film “The Big Lebowski,” what actress plays Bunny,a trophy wife who wears green nail polish?	TARA REID
5508	In the 1999 film “Muppets from Space,” what muppet is revealed to actually be an alien?	GONZO
5509	In the 1999 movie “American Pie” Alyson Hannigan’s character discusses playing what instrument at band?	FLUTE
5510	In the 2003 animated movie “Finding Nemo,” the good-natured Dory suffers from what problem?	MEMORY LOSS
5511	In the 2003 film “The Last Samurai,” Tom Cruise plays a soldier who goes to what country to train its warriors?	JAPAN
5512	In the 2003 hit song “Hey ya!” the band OutKast urges listeners to “shake it like a” what?	POLAROID PICTURE
5513	In the 2004 movie “Sideways,” wine lover Miles adamantly states that he will not drink what varietal?	MERLOT
5514	In the 2009 film “Watchmen” which character fittingly wears a mask decorated with inkblots?	RORSCHACH
5515	In the 2009 movie “The Hangover,” the missing groom is eventually found at what Las Vegas locale?	ROOF OF CAESARS PALACE
5516	In the 2009 movie “The Hangover,” what eccentric celeb cameos as the owner of a stolen tiger?	MIKE TYSON
5517	In the 2010 film “Black Swan,” Natalie Portman plays a dancer who performs in a famous ballet composed by whom?	TCHAIKOVSKY
5518	In the 2010 film “Eat, pray, love,” Julia Roberts eats in Italy, prays in India, and loves where?	INDONESIA
5519	In the 2010 movie “Shutter Island,” Shutter Island is primarily home to what?	MENTAL INSTITUTION
5520	In the 2010 sequel “Tron:Legacy,” Jeff Bridges reprises his 1982 role in “Tron” as a man transformed into what?	A COMPUTER PROGRAM
5521	Which of these actors is a devout Buddhist who studied with the Dalai Lama?	RICHARD GERE
5522	Which of these actors is also a successful venture capitalist,who made a killing on an early investment in Skype?	ASHTON KUTCHER
5523	Which of these actors’ last names is often used as a slang term meaning “to go”?	HUMPHREY BOGART
5524	Which of these actors’ last names is often used as a slang term meaning “to hog”?	HUMPHREY BOGART
5525	Which of these actresses bears a heart-shaped tattoo inscribed with her husband’s name “Antonio”?	MELANIE GRIFFITH
5526	Which of these actresses did not divorce her husband shortly after receiving her Academy Award?	CATHERINE ZETA-JONES
5527	Which of these actresses is the author of a 2010 self-help book,aptly titled “Getting the Pretty Back”?	MOLLY RINGWALD
5528	Which of these actresses shares her name with a common shade of brown?	SIENNA MILLER
5529	Which of these actresses shares her name with a popular line of Pepperidge Farm cookies?	ALYSSA MILANO
5530	Which of these adjectives has never doubled as the name of a Pope?	BENIGN
5531	Which of these adjectives is not included in the lyrics of the 1958 novelty song “Purple People Eater”?	SIX-LEGGED
5532	Which of these American Revolutionary War figures is buried not in the United States,but in London,England?	BENEDICT ARNOLD
5533	Which of these American Revolutionary War figures is often considered the “Father Of The American Navy”?	JOHN PAUL JONES
5534	Which of these ancient Greeks is famous for writing “Elements,” an influential treatise on geometry?	EUCLID
5535	Which of these ancient locations becomes the name of a present-day country when the first two letters of its name are removed?	ASSYRIA
5536	Which of these animal classifications best describes the traditional symbol of the Republican Party?	PACHYDERM
5537	Which of these animal names is also a unit of measurement commonly used by chemists?	MOLE
5538	Which of these animal noise words is also the name of a popular online urban city guide?	YELP
5539	Which of these Animal Planet TV Shows “stars” animals that typically grow the largest?	GROWING UP CAMEL
5540	Which of these animal terms comes from a Latin word meaning “to gnaw”?	RODENT
5541	Which of these animals can produce upwards of 500 offspring in a single year?	COCKROACH
5542	Which of these animals commonly moves around using a technique known as “knuckle-walking”?	CHIMPANZEES
5543	Which of these animals has the longest gestation period, lasting an average over 20 months?	ELEPHAND
5544	Which of these animals have webbed hind feet that help them to swim?	BEAVERS
5545	Which of these animals hunts its prey using echolation, a system of biological sonar?	BATS
5546	Which of these animals is a marsupial?	WOMBAT
5547	Which of these animals is classified as an actual variety of fish?	CATFISH
5548	Which of these animals is known for “breaching”?	WHALE
5549	Which of these animals is not considered an insect?	SPIDER
5550	Which of these animals is usually trapped for its fur in the winter when its coat is almost completely white?	ERMINE
5551	Which of these animals is well known for spitting at people and other creatures when it gets agitated?	CAMEL
5552	Which of these animals transports food in its cheeks?	HAMSTER
5553	Which of these animated characters flexes his “muskels” in the 1960 cartoon “Muskels Shmuskels”?	POPEYE THE SAILOR
5554	Which of these apple varieties shares its name with a well-known mountain in Japan?	FUJI
5555	Which of these architectural elements is a type of built-in seat located adjacent to a fireplace?	INGLENOOK
5556	Which of these are the initials of a high-end fashion label and not a code for a US city airport?	YSL
5557	Which of these articles of clothing fittingly gets its name from the Spanish word for “shade”?	SOMBRERO
5558	Which of these articles of clothing shares its name with an 18th-century Spanish folk dance?	BOLERO
5559	Which of these artists is notorious for singing through Auto-Tune pitch CORRECTion software?	T-PAIN
5560	Which of these artsy surnames is also the name of a division in the World Beard and Moustache Championships?	DALI
5561	Which of these Asian “Stans” is an ethnic religion and not an independent country?	KURDISTAN
5562	Which of these athletic pursuits is not one of the three events in a traditional triathalon?	KAYAKING
5563	Which of these authors’ last names sounds the same as a capital city in Texas?	JANE AUSTEN
5564	Which of these authors’ monograms is the same as the name of a well-known delivery company?	D.H. LAWRENCE
5565	Which of these band names does not feature the name of a chemical element?	STEELY DAN
5566	Which of these bands gets its name from its bassist’s days making change as a cashier at Starbucks?	NICKELBACK
5567	Which of these Beatles classics featured several lyrics sung in French?	MICHELLE
5568	Which of these beloved comedy pairings consists of two animated characters and not two real-life people?	WALLACE AND GROMIT
5569	Which of these beloved Disney characters would be classified by zoologists as a “ruminant”?	BAMBI
5570	Which of these beloved Sesame Street muppets doesn’t have a nose?	COOKIE MONSTER
5571	Which of these Ben and Jerry’s flavors was named after a key figure in the 1969 Woodstock festival?	WAVY GRAVY
5572	Which of these berries is believed to be a hybrid of the blackberry and raspberry?	LOGANBERRY
5573	Which of these berries is believed to be a hybrid of the blackberry and the raspberry?	LOGANBERRY
5574	Which of these Best Picture winners is about a fictional character and not a historical figure?	OLIVER!
5575	Which of these beverages is usually homogenized before being sold to consumers?	MILK
5576	Which of these big names in aviation is also the first name of one of Sarah Palin’s children?	PIPER
5577	Which of these Bill Murray movies takes place primarily at Christmas time?	SCROOGED
5578	Which of these bird names is also a verb meaning “to complain”?	GROUSE
5579	Which of these birds is able to fly?	PEACOCK
5580	Which of these birds is able to fly?	FLAMINGO
5581	Which of these bodies of water was named for the oysters once harvested there?	PEARL HARBOR
5582	In art, the Greek Titan Atlas is traditionally depicted holding what on his shoulders?	GLOBE
5583	In astrology, what planetary symbol of communication can cause discord when it is in “retrograde?”	MERCURY
5584	In Avatar, the humans infiltrate Pandora in order to raid its supply of what highly valuable mineral?	UNOBTAMIUM
5585	In baseball lingo,which of the following is known as a “tater”?	HOME RUN
5586	In baseball, a “balk” is a deceptive and illegal motion made by what player?	PITCHER
5587	In baseball,home plate is traditionally shaped like a what?	PENTAGON
5588	In baseball,who is the only fielder positioned in foul territory?	CATCHER
5589	In basketball, a referee often forms the letter “T” with his hands to indicate a what?	TECHNICAL FOUL
5590	In birds, the gizzard is an organ that plays an important role in what process?	DIGESTION
5591	In bowling, how many consecutive strikes comprise a perfectly bowled “300” game?	12
5592	In business, what phrase is used to describe traditional companies that do not exist purely on the Internet?	BRICK AND MORTAR
5593	In cartoons,Tweety Bird is often portrayed as the pet of a woman simply referred to by what name?	GRANNY
5594	In CB radio lingo,the question “What’s your twenty?” is actually asking what?	WHAT IS YOUR LOCATION?
5595	In celebration of its 15th anniversary,”South Park” sold a real-life version of what snack?	CHEESY POOFS
5596	In Chicago,you’ll find a kitschy 26-foot tall statue of what actress in a famous pose,white dress billowing up around her?	MARILYN MONROE
5597	In China,what does a person do with renminbi?	SPEND IT
5598	In Christianity, Ascension Day is celebrated 40 days after what holiday?	EASTER
5599	In Christianity, the ashes used on Ash Wednesday are traditionally made by burning what?	PALM FRONDS
5600	In Christianity,who is said to be the guardian of the Pearly Gates,the entranceway to Heaven?	SAINT PETER
5601	In college sports,which of these terms refers to an athlete who was never recruited or offered a scholarship?	WALK-ON
5602	In Colombia,the aptly named “Biblioburros” is a program that uses donkeys to distribute what?	BOOKS
5603	In comedy, an event where the guest of honor is subjected to humorous criticisms is called a what?	ROAST
5604	In comic strips, what letters are depicted on bottles to show alcohol?	XXX
5605	In common flavor of potato chips, “sour cream” is usually paired with what?	ONION
5606	In competitive swimming, which of these styles is considered the slowest?	BREASTSTROKE
5607	In cooking, recipes commonly call for “sprigs” of which of these ingredients?	THYME
5608	In cop drama slang terms, a prepaid cell phone is called a what?	BURNER
5609	In cosmetic surgery, the temple lift is a procedure that addresses which of the following?	DROOPY EYES
\.


--
-- Data for Name: trivia_scores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY trivia_scores (id, score, nick, skip) FROM stdin;
asdfa	0	what?	0
226380160734199808	0	suicide_mission	0
195899822346076160	0	Screech	0
\.


--
-- Name: primary_key_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY trivia_questions_and_answers
    ADD CONSTRAINT primary_key_id PRIMARY KEY (id);


--
-- Name: primary_key_user_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY trivia_scores
    ADD CONSTRAINT primary_key_user_id PRIMARY KEY (id);


--
-- Name: primary_key_vname; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY status
    ADD CONSTRAINT primary_key_vname PRIMARY KEY (vname);


--
-- PostgreSQL database dump complete
--

