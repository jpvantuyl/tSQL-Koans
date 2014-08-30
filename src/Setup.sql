USE [TSQL_Koans]
GO


IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ZenTweet_Attribution]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZenTweet]'))
ALTER TABLE [dbo].[ZenTweet] DROP CONSTRAINT [FK_ZenTweet_Attribution]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ZenProverbs]'))
DROP VIEW [dbo].[ZenProverbs]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZenTweet]') AND type in (N'U'))
DROP TABLE [dbo].[ZenTweet]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Attribution]') AND type in (N'U'))
DROP TABLE [dbo].[Attribution]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[__]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[___]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[___]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ResultFormatter]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ResultFormatter]
GO


CREATE FUNCTION [dbo].[__]()
RETURNS SQL_VARIANT
AS
BEGIN
    RETURN NULL;
END;
GO

CREATE FUNCTION [dbo].[___]()
RETURNS TABLE
AS
	RETURN SELECT __ = NULL
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attribution](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Source] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Attribution] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


SET IDENTITY_INSERT [dbo].[Attribution] ON 
GO
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (1, N'Alan Watts')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (2, N'Aldous Huxley')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (3, N'Anthony de Mello')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (4, N'Antoine de Saint-Exupery')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (5, N'Atisha')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (6, N'Atisha Dipamkara')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (7, N'Basho')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (8, N'Bill Naughton')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (9, N'Buddha')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (10, N'Byron Katie')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (11, N'Carl Jung')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (12, N'Carlos Castaneda')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (13, N'Charles Lamb')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (14, N'Charlie Chaplin')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (15, N'Chinese Proverb')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (16, N'Chokyi Nyima Rinpoche')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (17, N'Chuang Tzu')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (18, N'Confucius')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (19, N'Confusionism')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (20, N'Dag Hammarskjold')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (21, N'Dalai Lama')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (22, N'Dan Brown')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (23, N'David Brandon')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (24, N'Deng Ming-Dao')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (25, N'Dogen')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (26, N'E. Tolle')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (27, N'Eckhart Tolle')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (28, N'Edward Abbey')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (29, N'Ellen DeGeneres')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (30, N'Epictetus')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (31, N'G. C. Lichtenberg')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (32, N'Gary Snyder')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (33, N'Gautama Siddhartha')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (34, N'George Carlin')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (35, N'George Harrison')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (36, N'Goethe')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (37, N'Han Shan')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (38, N'Henry Miller')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (39, N'Heraclitus')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (40, N'J. Krishnamurti')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (41, N'Janwillem Van De Wetering')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (42, N'Je Tsongkhapa')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (43, N'Jean Anouilh')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (44, N'John Cage')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (45, N'John Lennon')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (46, N'Joseph Campbell')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (47, N'Joyce Cary')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (48, N'Kurt Vonnegut')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (49, N'Lao Tzu')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (50, N'Lily Tomlin')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (51, N'Lin Yutang')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (52, N'Maharishi Mahesh Yogi')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (53, N'Marianne Williamson')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (54, N'Miguel Angel Ruiz')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (55, N'Mongolian Proverb')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (56, N'Montiaigne')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (57, N'Nansen')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (58, N'O')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (59, N'Osho')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (60, N'P. Hayes')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (61, N'Paramahansa Yogananda')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (62, N'Pema Chodron')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (63, N'Philip Kapleau')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (64, N'R.H. Blyth')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (65, N'Ram Dass')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (66, N'Reinhold Niebuhr')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (67, N'Rinzai')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (68, N'Robert M. Pirsig')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (69, N'Roshi So')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (70, N'Rumi')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (71, N'Ryokan')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (72, N'Scott Shaw')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (73, N'Shen Hui')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (74, N'Simone Weil')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (75, N'Sir ThomasBrowne')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (76, N'Socrates')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (77, N'Sogyal Rinpoche')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (78, N'Suzuki Roshi')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (79, N'Sylvia Boorstein')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (80, N'T.S. Eliot')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (81, N'Taisen Deshimaru')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (82, N'Takuan')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (83, N'Takuan Soto')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (84, N'Tao Te Ching')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (85, N'Taoist Proverb')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (86, N'Thaddeus Golas')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (87, N'The Buddha')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (88, N'The Dhammapada')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (89, N'Tibetan Proverb')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (90, N'Tolstoy')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (91, N'William Barrett')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (92, N'Zen Master Kyong Ho')
INSERT [dbo].[Attribution] ([Id], [Source]) VALUES (93, N'Zen Proverb')
GO
SET IDENTITY_INSERT [dbo].[Attribution] OFF
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZenTweet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AttributionId] [int] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[TweetText] [nvarchar](max) NOT NULL,
	[TweetId] [numeric](18, 0) NOT NULL,
	[RetweetCount] [int] NOT NULL,
	[FavoriteCount] [int] NOT NULL,
 CONSTRAINT [PK_ZenTweet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[ZenTweet] ON 

GO
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (1, 93, CAST(0x0000A35B001295D0 AS DateTime), N'All beings are the truth just as they are.', CAST(483778931708133000 AS Numeric(18, 0)), 25, 29)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (2, 93, CAST(0x0000A35B004418D0 AS DateTime), N'Man stands in his own shadow and wonders why it''s dark.', CAST(483824300747919000 AS Numeric(18, 0)), 76, 82)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (3, 84, CAST(0x0000A35B00755328 AS DateTime), N'To know that you do not know is the best. To pretend to know when you do not know is a disease.', CAST(483869402610565000 AS Numeric(18, 0)), 46, 64)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (4, 13, CAST(0x0000A35B00A6C6EC AS DateTime), N'Nothing troubles me more than time and space, and yet nothing troubles me less.', CAST(483914717053067000 AS Numeric(18, 0)), 12, 6)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (5, 76, CAST(0x0000A35B00D849EC AS DateTime), N'Give me beauty in the inward soul; may the outward and the inward man be at one.', CAST(483960080912900000 AS Numeric(18, 0)), 23, 18)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (6, 43, CAST(0x0000A35B0109A064 AS DateTime), N'I like reality. It tastes of bread.', CAST(484005288962711000 AS Numeric(18, 0)), 15, 17)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (7, 12, CAST(0x0000A35B013B210C AS DateTime), N'Challenges cannot possibly be good or bad. Challenges are simply challenges.', CAST(484050644584890000 AS Numeric(18, 0)), 24, 31)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (8, 78, CAST(0x0000A35B016C833C AS DateTime), N'Buddha is always helping you. But usually we refuse Buddha''s offer.', CAST(484095890454749000 AS Numeric(18, 0)), 15, 29)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (9, 88, CAST(0x0000A35C0012717C AS DateTime), N'It is better to do nothing. Than to do what is wrong. For whatever you do, you do to yourself.', CAST(484141189193814000 AS Numeric(18, 0)), 56, 62)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (10, 49, CAST(0x0000A35C0043E540 AS DateTime), N'More words count less. Hold fast to the center.', CAST(484186501866332000 AS Numeric(18, 0)), 33, 30)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (11, 86, CAST(0x0000A35C00759E28 AS DateTime), N'It''s always within us to relate this way.', CAST(484232061008773000 AS Numeric(18, 0)), 5, 6)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (12, 9, CAST(0x0000A35C00A6E438 AS DateTime), N'Believe nothing, no matter where you read it or who said it, no matter if I said it.', CAST(484277209121964000 AS Numeric(18, 0)), 62, 69)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (13, 15, CAST(0x0000A35C00D857FC AS DateTime), N'Enjoy yourself. It''s later than you think.', CAST(484322519944822000 AS Numeric(18, 0)), 17, 19)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (14, 10, CAST(0x0000A35C0109A640 AS DateTime), N'The nightmare always becomes laughter, once it''s understood.', CAST(484367696327614000 AS Numeric(18, 0)), 33, 41)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (15, 19, CAST(0x0000A35C013B7B48 AS DateTime), N'If you make a mistake and do not correct it, this is called a mistake.', CAST(484413355071787000 AS Numeric(18, 0)), 39, 43)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (16, 90, CAST(0x0000A35C016C87EC AS DateTime), N'The highest wisdom has but one science: the science of the whole explaining the whole creation and man''s place in it.', CAST(484458299199586000 AS Numeric(18, 0)), 10, 23)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (17, 70, CAST(0x0000A35D001272A8 AS DateTime), N'Poems are rough notations for the music we are.', CAST(484503584789508000 AS Numeric(18, 0)), 37, 50)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (18, 79, CAST(0x0000A35D0044154C AS DateTime), N'Mindfulness is opening to the present moment, pleasant or unpleasant, just as it is, witho clinging to it or rejecting it.', CAST(484549062415233000 AS Numeric(18, 0)), 43, 57)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (19, 85, CAST(0x0000A35D00755454 AS DateTime), N'If you realize that you have enough, you are truly rich.', CAST(484594185606287000 AS Numeric(18, 0)), 82, 78)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (20, 36, CAST(0x0000A35D00A6C5C0 AS DateTime), N'The present moment is a powerful goddess.', CAST(484639486627049000 AS Numeric(18, 0)), 37, 42)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (21, 85, CAST(0x0000A35D00D83984 AS DateTime), N'It is not enough to be compassionate. You must act also.', CAST(484684796841705000 AS Numeric(18, 0)), 49, 44)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (22, 93, CAST(0x0000A35D0109B324 AS DateTime), N'When you eat, the meal is yourself.', CAST(484730128065626000 AS Numeric(18, 0)), 16, 19)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (23, 67, CAST(0x0000A35D013B756C AS DateTime), N'If you know that fundamentally there is nothing to seek, you have settled your affairs.', CAST(484775720246575000 AS Numeric(18, 0)), 30, 36)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (24, 9, CAST(0x0000A35D016C914C AS DateTime), N'As I am, so are others; as others are, so am I. Having thus identified self and others, harm no one nor have them harmed.', CAST(484820717717192000 AS Numeric(18, 0)), 42, 68)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (25, 70, CAST(0x0000A35E00127758 AS DateTime), N'Everything in the universe is within you. Ask all from yourself.', CAST(484865986655703000 AS Numeric(18, 0)), 45, 68)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (26, 1, CAST(0x0000A35E0043E798 AS DateTime), N'Normally, we do not so much look at things as overlook them.', CAST(484911285843529000 AS Numeric(18, 0)), 33, 37)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (27, 93, CAST(0x0000A35E00754FA4 AS DateTime), N'The tighter you squeeze, the less you have.', CAST(484956555729981000 AS Numeric(18, 0)), 35, 43)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (28, 9, CAST(0x0000A35E00A6C23C AS DateTime), N'In the sky there is no distinction of east & west; people create distinctions out of their own minds & believe them to be true.', CAST(485001864023654000 AS Numeric(18, 0)), 71, 71)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (29, 70, CAST(0x0000A35E00D83600 AS DateTime), N'When someone beats a rug, the blows are not against the rug, but against the dust in it.', CAST(485047174439665000 AS Numeric(18, 0)), 34, 42)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (30, 10, CAST(0x0000A35E0109BDB0 AS DateTime), N'It makes sense that no one else can cause you pain. That''s your job.', CAST(485092553738682000 AS Numeric(18, 0)), 25, 34)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (31, 85, CAST(0x0000A35E013B1680 AS DateTime), N'The journey is the reward.', CAST(485137771020181000 AS Numeric(18, 0)), 75, 79)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (32, 87, CAST(0x0000A35E016C833C AS DateTime), N'Your work is to discover your world and then with all your heart give yourself to it.', CAST(485183054487748000 AS Numeric(18, 0)), 53, 62)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (33, 16, CAST(0x0000A35F0012762C AS DateTime), N'Theoretical knowledge has no end.', CAST(485228371883081000 AS Numeric(18, 0)), 11, 14)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (34, 21, CAST(0x0000A35F0043EC48 AS DateTime), N'When we encounter suffering, it is important to respond with compassion rather than to question the politics of those we help.', CAST(485273692830986000 AS Numeric(18, 0)), 55, 66)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (35, 26, CAST(0x0000A35F007587E4 AS DateTime), N'Nothing ever happened in the past; it happened in the Now. Nothing will ever happen in the future; it will happen in the Now.', CAST(485319142745337000 AS Numeric(18, 0)), 59, 51)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (36, 93, CAST(0x0000A35F00A6F5CC AS DateTime), N'When you understand it is foolish to look for fire with fire, the meal is already cooked.', CAST(485364433766875000 AS Numeric(18, 0)), 21, 21)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (37, 10, CAST(0x0000A35F00D85928 AS DateTime), N'Spare yourself from seeking love, approval, or appreciation-from anyone. And watch what happens in reality.', CAST(485409687203241000 AS Numeric(18, 0)), 71, 98)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (38, 12, CAST(0x0000A35F0109C83C AS DateTime), N'Look at every path closely & ask: Does this path have a heart? If it does, it is good. If it doesn''t, it is of no use.', CAST(485454980263202000 AS Numeric(18, 0)), 56, 68)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (39, 21, CAST(0x0000A35F013B1428 AS DateTime), N'Love is the absence of judgement.', CAST(485500150140264000 AS Numeric(18, 0)), 97, 106)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (40, 8, CAST(0x0000A35F016C9AAC AS DateTime), N'Decent clothes…a car, but what''s it all about?,From the movie Alfie', CAST(485545529745489000 AS Numeric(18, 0)), 7, 10)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (41, 70, CAST(0x0000A3600012A50C AS DateTime), N'When you do things from your soul, you feel a river moving in you, a joy.', CAST(485590928824885000 AS Numeric(18, 0)), 73, 73)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (42, 40, CAST(0x0000A36000440BEC AS DateTime), N'Meditation is not a means to an end. It is both the means and the end.', CAST(485636193040990000 AS Numeric(18, 0)), 34, 40)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (43, 31, CAST(0x0000A360007550D0 AS DateTime), N'Nothing is more conductive to peace of mind than not having any opinion at all.', CAST(485681335827439000 AS Numeric(18, 0)), 25, 48)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (44, 85, CAST(0x0000A36000A6C494 AS DateTime), N'There is more to knowing than just being correct.', CAST(485726646784499000 AS Numeric(18, 0)), 84, 81)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (45, 10, CAST(0x0000A36000D84FC8 AS DateTime), N'Self-realization is not complete until it lives in action.', CAST(485772039740198000 AS Numeric(18, 0)), 28, 35)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (46, 39, CAST(0x0000A3600109A2BC AS DateTime), N'Nothing endures but change.', CAST(485817236717060000 AS Numeric(18, 0)), 36, 52)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (47, 84, CAST(0x0000A360013B8250 AS DateTime), N'Wonder into wonder existence opens.', CAST(485862930278133000 AS Numeric(18, 0)), 18, 25)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (48, 93, CAST(0x0000A360016C86C0 AS DateTime), N'All wrong-doing arises because of mind. If mind is transformed can wrong-doing remain?', CAST(485907844068155000 AS Numeric(18, 0)), 34, 19)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (49, 64, CAST(0x0000A36100129120 AS DateTime), N'A haiku is the expression of a temporary enlightenment in which we see into the life of things.', CAST(485953241835122000 AS Numeric(18, 0)), 36, 45)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (50, 49, CAST(0x0000A3610043E2E8 AS DateTime), N'In dwelling, be close to the land. In meditation, go deep in the heart.', CAST(485998434928066000 AS Numeric(18, 0)), 34, 52)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (51, 70, CAST(0x0000A36100755454 AS DateTime), N'Your task is not to seek love but merely to find all the barriers within yourself that you have built against it.', CAST(486043733625151000 AS Numeric(18, 0)), 98, 116)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (52, 55, CAST(0x0000A36100A6C5C0 AS DateTime), N'If you become a camel, they''ll put a load on your back.', CAST(486089037875130000 AS Numeric(18, 0)), 15, 15)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (53, 7, CAST(0x0000A36100D83150 AS DateTime), N'I hear the unblown flute, in the deep summer shadows, of the Temple of Suma.', CAST(486134320063471000 AS Numeric(18, 0)), 17, 12)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (54, 23, CAST(0x0000A3610109A2BC AS DateTime), N'Zen is…joyous iconoclasm which respects nothing and no one, particularly itself.', CAST(486179624444252000 AS Numeric(18, 0)), 18, 18)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (55, 30, CAST(0x0000A361013B2364 AS DateTime), N'Learn to wish that everything should come to pass exactly as it does.', CAST(486224981601550000 AS Numeric(18, 0)), 41, 56)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (56, 48, CAST(0x0000A361016C9D04 AS DateTime), N'The purpose of human life, no matter who is controlling it, is to love whoever is around to be loved.', CAST(486270313647591000 AS Numeric(18, 0)), 52, 73)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (57, 93, CAST(0x0000A36200127C08 AS DateTime), N'When you realize there is nothing lacking, the whole world belongs to you.', CAST(486315556082311000 AS Numeric(18, 0)), 54, 68)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (58, 2, CAST(0x0000A3620043EB1C AS DateTime), N'There''s only one corner of the universe you can be certain of improving and that''s your own self.', CAST(486360849796567000 AS Numeric(18, 0)), 81, 76)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (59, 21, CAST(0x0000A3620075696C AS DateTime), N'We are all here on this planet as tourists. None of us can live here forever.', CAST(486406200452743000 AS Numeric(18, 0)), 68, 73)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (60, 90, CAST(0x0000A36200A6C368 AS DateTime), N'If you want to be happy, be.', CAST(486451416756920000 AS Numeric(18, 0)), 88, 69)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (61, 93, CAST(0x0000A36200D84FC8 AS DateTime), N'The only Zen you find at the top of the mountain is the Zen you bring with you.', CAST(486496816574107000 AS Numeric(18, 0)), 66, 70)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (62, 45, CAST(0x0000A3620109C5E4 AS DateTime), N'People think the Beatles know what''s going on. We don''t. We''re just doing it.', CAST(486542135764983000 AS Numeric(18, 0)), 32, 40)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (63, 15, CAST(0x0000A362013B5CD0 AS DateTime), N'If you are patient in one moment of anger, you will escape a hundred days of sorrow.', CAST(486587574350536000 AS Numeric(18, 0)), 100, 122)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (64, 25, CAST(0x0000A362016C87EC AS DateTime), N'Sitting is the gateway of truth to total liberation.', CAST(486632625067802000 AS Numeric(18, 0)), 14, 19)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (65, 77, CAST(0x0000A36300127758 AS DateTime), N'We may idealize freedom, but when it comes to our habits, we are completely enslaved.', CAST(486677925518114000 AS Numeric(18, 0)), 60, 52)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (66, 17, CAST(0x0000A363004412F4 AS DateTime), N'Pour into it & it will never be filled; pour out of it & it will never be empty. No one knows why. This is Tao.', CAST(486723378779549000 AS Numeric(18, 0)), 36, 46)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (67, 10, CAST(0x0000A36300757B00 AS DateTime), N'Rather than understand the original cause, we try to change the stressful feelings by looking outside ourselves.', CAST(486768649257385000 AS Numeric(18, 0)), 26, 29)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (68, 10, CAST(0x0000A36300A6EC6C AS DateTime), N'The unquestioned mind is the world of suffering.', CAST(486813952630738000 AS Numeric(18, 0)), 22, 18)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (69, 27, CAST(0x0000A36300DCDCA0 AS DateTime), N'Whatever the present moment contains, accept it as if you had chosen it.', CAST(486863372911386000 AS Numeric(18, 0)), 120, 115)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (70, 6, CAST(0x0000A3630109CBC0 AS DateTime), N'Renounce unethical forms of livelihood, and sustain yourself according to the Dharma.', CAST(486904545554227000 AS Numeric(18, 0)), 21, 19)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (71, 61, CAST(0x0000A363013B2DF0 AS DateTime), N'The happiness of one''s own heart alone cannot satisfy the soul; one must include the happiness of others.', CAST(486949791935778000 AS Numeric(18, 0)), 88, 81)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (72, 87, CAST(0x0000A363016C8B70 AS DateTime), N'Suffering follows an evil thought as the wheels of a cart follow the oxen that draws it.', CAST(486995024643887000 AS Numeric(18, 0)), 38, 42)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (73, 85, CAST(0x0000A3640012762C AS DateTime), N'Just remember, when you should grab something, grab it; when you should let go, let go.', CAST(487040310871330000 AS Numeric(18, 0)), 112, 121)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (74, 72, CAST(0x0000A364004412F4 AS DateTime), N'If you obtain what you desire, does it make you happy?', CAST(487085769719177000 AS Numeric(18, 0)), 48, 52)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (75, 16, CAST(0x0000A364007565E8 AS DateTime), N'The nature of the mind is emptiness, the unified state of being both cognizant and empty.', CAST(487130961562591000 AS Numeric(18, 0)), 26, 25)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (76, 27, CAST(0x0000A36400A6C6EC AS DateTime), N'All the things that truly matter - beauty, love, creativity, joy, inner peace - arise from beyond the mind.', CAST(487176205188464000 AS Numeric(18, 0)), 141, 125)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (77, 10, CAST(0x0000A36400D8327C AS DateTime), N'When you run in fear, it''s square into the wall.', CAST(487221488056274000 AS Numeric(18, 0)), 58, 46)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (78, 92, CAST(0x0000A3640109CBC0 AS DateTime), N'Attain deliverance in disturbances.', CAST(487266932580548000 AS Numeric(18, 0)), 51, 45)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (79, 56, CAST(0x0000A34B013B5118 AS DateTime), N'There is nothing useless in nature; not even uselessness itself.', CAST(478252608952741000 AS Numeric(18, 0)), 28, 25)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (80, 88, CAST(0x0000A34B016C8A44 AS DateTime), N'Just as a mighty boulder stirs not with the wind, so the wise are never moved either by praise or blame.', CAST(478297711213821000 AS Numeric(18, 0)), 40, 51)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (81, 28, CAST(0x0000A34C0012762C AS DateTime), N'What is truth? I don''t know and I''m sorry I brought it up.', CAST(478343002721882000 AS Numeric(18, 0)), 20, 30)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (82, 65, CAST(0x0000A34C00440034 AS DateTime), N'The resistance to the unpleasant situation is the root of suffering.', CAST(478388392099848000 AS Numeric(18, 0)), 44, 75)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (83, 85, CAST(0x0000A34C0075696C AS DateTime), N'Tao is the way and the way is Tao.', CAST(478433666474209000 AS Numeric(18, 0)), 11, 12)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (84, 93, CAST(0x0000A34C00A6C368 AS DateTime), N'Stop trying to observe time and you will be free of time.', CAST(478478886553284000 AS Numeric(18, 0)), 34, 54)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (85, 69, CAST(0x0000A34C00D82EF8 AS DateTime), N'Before enlightenment, chop wood, carry water. After enlightenment, Chinese take out and Twitter.', CAST(478524165977546000 AS Numeric(18, 0)), 21, 23)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (86, 10, CAST(0x0000A34C010A1DC8 AS DateTime), N'You move totally away from reality when you believe that there is a legitimate reason to suffer.', CAST(478569916459909000 AS Numeric(18, 0)), 19, 29)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (87, 9, CAST(0x0000A34C013B1FE0 AS DateTime), N'Three things cannot be long hidden: the sun, the moon, and the truth.', CAST(478614822901547000 AS Numeric(18, 0)), 88, 71)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (88, 59, CAST(0x0000A34C016CAB14 AS DateTime), N'Zen is not a philosophy, it is poetry. It does not propose, it simply persuades. It does not argue, it simply sings its own song.', CAST(478660218453491000 AS Numeric(18, 0)), 27, 36)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (89, 70, CAST(0x0000A34D0012A764 AS DateTime), N'You were born with wings. Why prefer to crawl through life?', CAST(478705567968792000 AS Numeric(18, 0)), 47, 56)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (90, 17, CAST(0x0000A34D004417A4 AS DateTime), N'Wander where there is no path.', CAST(478750863906054000 AS Numeric(18, 0)), 45, 66)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (91, 85, CAST(0x0000A34D0075AB0C AS DateTime), N'Move and the way will open.', CAST(478796290432581000 AS Numeric(18, 0)), 61, 63)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (92, 47, CAST(0x0000A34D00A6EA14 AS DateTime), N'The less a man knows, the more sure he is that he knows everything.', CAST(478841410352054000 AS Numeric(18, 0)), 40, 43)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (93, 71, CAST(0x0000A34D00D864E0 AS DateTime), N'The wind has settled, the blossoms have fallen; Birds sing, the mountains grow dark. This is the wondrous power of Buddhism.', CAST(478886748907266000 AS Numeric(18, 0)), 18, 22)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (94, 16, CAST(0x0000A34D010A01A8 AS DateTime), N'Things appear without really existing.', CAST(478932204396236000 AS Numeric(18, 0)), 15, 11)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (95, 22, CAST(0x0000A34D013B8124 AS DateTime), N'The more I learn, the more questions I have.', CAST(478977558084861000 AS Numeric(18, 0)), 39, 38)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (96, 82, CAST(0x0000A34D016CB0F0 AS DateTime), N'If you would not turn your back on the Way, do not follow the world.', CAST(479022624870506000 AS Numeric(18, 0)), 13, 11)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (97, 93, CAST(0x0000A34E0012CF3C AS DateTime), N'When you seek it, you cannot find it.', CAST(479068097744490000 AS Numeric(18, 0)), 53, 60)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (98, 46, CAST(0x0000A34E004455C0 AS DateTime), N'Follow your bliss and don''t be afraid. Doors will open where you didn''t know they were going to be.', CAST(479113474329837000 AS Numeric(18, 0)), 52, 62)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (99, 74, CAST(0x0000A34E00757B00 AS DateTime), N'Attachment is a manufacturer of illusion and whoever wants reality ought to be detached.', CAST(479158503001837000 AS Numeric(18, 0)), 29, 37)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (100, 75, CAST(0x0000A34E00A72128 AS DateTime), N'We carry with us the wonders we seek without us.', CAST(479203995597418000 AS Numeric(18, 0)), 16, 16)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (101, 5, CAST(0x0000A34E00D83600 AS DateTime), N'Distracting enjoyments have no essence, therefore sincerely practice giving.', CAST(479248968288059000 AS Numeric(18, 0)), 15, 13)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (102, 35, CAST(0x0000A34E0109BDB0 AS DateTime), N'Life flows on within you and without you.', CAST(479294350867046000 AS Numeric(18, 0)), 34, 43)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (103, 68, CAST(0x0000A34E013B62AC AS DateTime), N'The only Zen you find on the tops of mountains is the Zen you bring up there.', CAST(479339835996790000 AS Numeric(18, 0)), 32, 50)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (104, 27, CAST(0x0000A34E016CCBE4 AS DateTime), N'Life is now. There was never a time when your life was not now, nor will there ever be.', CAST(479385111948185000 AS Numeric(18, 0)), 56, 43)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (105, 63, CAST(0x0000A34F0012B574 AS DateTime), N'The truth is that everything is One, and this of course is not a numerical One.', CAST(479430391271784000 AS Numeric(18, 0)), 22, 45)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (106, 87, CAST(0x0000A34F004463D0 AS DateTime), N'The no-mind not-thinks no-thoughts about no-things.', CAST(479475913357524000 AS Numeric(18, 0)), 29, 31)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (107, 5, CAST(0x0000A34F0075A9E0 AS DateTime), N'Since there is never a time when worldly activities come to an end, limit your activities.', CAST(479521060959059000 AS Numeric(18, 0)), 21, 33)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (108, 38, CAST(0x0000A34F00A71570 AS DateTime), N'The world is not to be put in order, the world is order incarnate. It is for us to put ourselves in unison with this order.', CAST(479566343251820000 AS Numeric(18, 0)), 43, 45)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (109, 93, CAST(0x0000A34F00D85928 AS DateTime), N'Journey of a thousand miles begins with a single step.', CAST(479611481999572000 AS Numeric(18, 0)), 36, 37)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (110, 86, CAST(0x0000A34F0109DD54 AS DateTime), N'There is nothing you need to do first in order to be enlightened.', CAST(479656849051238000 AS Numeric(18, 0)), 23, 30)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (111, 89, CAST(0x0000A34F013B2F1C AS DateTime), N'If a just approach is adopted an egg will be able to carry a horse.', CAST(479702038381867000 AS Numeric(18, 0)), 3, 6)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (112, 27, CAST(0x0000A34F016CB924 AS DateTime), N'Love, joy, and peace cannot flourish until you have freed yourself from mind dominance', CAST(479747432730091000 AS Numeric(18, 0)), 41, 44)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (113, 62, CAST(0x0000A3500012D2C0 AS DateTime), N'Whatever you''re doing, you''re doing it now.', CAST(479792885895024000 AS Numeric(18, 0)), 33, 28)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (114, 70, CAST(0x0000A3500043ED74 AS DateTime), N'Water has never feared the fire.', CAST(479837878516981000 AS Numeric(18, 0)), 47, 75)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (115, 29, CAST(0x0000A35000758B68 AS DateTime), N'Never follow anyone else''s path, unless you''re in the woods and you''re lost.', CAST(479883339944693000 AS Numeric(18, 0)), 82, 61)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (116, 76, CAST(0x0000A35000A6C23C AS DateTime), N'I know nothing except the fact of my ignorance.', CAST(479928431669690000 AS Numeric(18, 0)), 30, 42)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (117, 93, CAST(0x0000A35000D833A8 AS DateTime), N'You can watch a clock tick. You can witness a sunrise or a sunset, but that is not time. That is simply movement.', CAST(479973734397526000 AS Numeric(18, 0)), 66, 73)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (118, 5, CAST(0x0000A3500109AC1C AS DateTime), N'Avoid friends who cause you to increase delusions & rely upon those who increase your virtue. This you should take to heart.', CAST(480019063499149000 AS Numeric(18, 0)), 31, 38)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (119, 93, CAST(0x0000A350013B55C8 AS DateTime), N'The bird of paradise lands only on the hand that does not grasp.', CAST(480064565397684000 AS Numeric(18, 0)), 60, 41)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (120, 80, CAST(0x0000A350016CBB7C AS DateTime), N'Teach us to care and not to care. Teach us to sit still.', CAST(480109828464209000 AS Numeric(18, 0)), 27, 26)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (121, 93, CAST(0x0000A3510012A890 AS DateTime), N'From the withered tree, a flower blooms.', CAST(480155121176027000 AS Numeric(18, 0)), 37, 38)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (122, 83, CAST(0x0000A3510043F800 AS DateTime), N'When the eye is not set on one leaf & you face the tree with nothing at all in mind, any number of leaves are visible to the eye.', CAST(480200300759089000 AS Numeric(18, 0)), 32, 31)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (123, 21, CAST(0x0000A35100755B5C AS DateTime), N'Where ignorance is our master, there is no possibility of real peace.', CAST(480245554380029000 AS Numeric(18, 0)), 43, 40)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (124, 24, CAST(0x0000A35100A6EB40 AS DateTime), N'If the boulders are moved, even the river will change its course. This is Tao.', CAST(480290965153153000 AS Numeric(18, 0)), 38, 29)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (125, 66, CAST(0x0000A35100D83150 AS DateTime), N'The mastery of nature is vainly believed to be an adequate substitute for self-mastery.', CAST(480336114138750000 AS Numeric(18, 0)), 23, 17)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (126, 37, CAST(0x0000A3510109D520 AS DateTime), N'I climb the road that never ends. Who can break from the snares of the world & join me in the clouds?', CAST(480381597263613000 AS Numeric(18, 0)), 26, 15)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (127, 93, CAST(0x0000A351013B5370 AS DateTime), N'Everything will come, exactly as it does.', CAST(480426944849539000 AS Numeric(18, 0)), 86, 62)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (128, 10, CAST(0x0000A351016CC608 AS DateTime), N'Nothing terrible has ever happened except in our thinking.', CAST(480472252966653000 AS Numeric(18, 0)), 34, 45)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (129, 9, CAST(0x0000A3520012B7CC AS DateTime), N'Of what I know, I have told you only a little. Why have I not told you the rest? Because it would not help lead you to Nirvana.', CAST(480517564506730000 AS Numeric(18, 0)), 26, 40)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (130, 20, CAST(0x0000A352004447B0 AS DateTime), N'If only I may grow: firmer, simpler, quieter, warmer.', CAST(480562973631852000 AS Numeric(18, 0)), 45, 57)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (131, 10, CAST(0x0000A3520075939C AS DateTime), N'I came to embrace reality with all my heart.', CAST(480608143723204000 AS Numeric(18, 0)), 27, 20)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (132, 10, CAST(0x0000A35200A6E30C AS DateTime), N'Thoughts are just what is. They appear. They''re innocent. They''re not personal.', CAST(480653327081160000 AS Numeric(18, 0)), 37, 36)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (133, 10, CAST(0x0000A35200D88DE4 AS DateTime), N'I came to see that the world is always as it should be, whether I opposed it or not.', CAST(480698834017075000 AS Numeric(18, 0)), 30, 37)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (134, 49, CAST(0x0000A3520109A898 AS DateTime), N'Movement overcomes cold; stillness overcomes heat. Stillness and tranquillity set things in order in the universe.', CAST(480743824709664000 AS Numeric(18, 0)), 37, 41)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (135, 12, CAST(0x0000A352013B7A1C AS DateTime), N'When a warrior learns to stop the internal dialogue, everything becomes possible.', CAST(480789473144635000 AS Numeric(18, 0)), 68, 86)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (136, 93, CAST(0x0000A352016C8594 AS DateTime), N'Better to struggle with a sick jackass than carry the wood by yourself.', CAST(480834410649251000 AS Numeric(18, 0)), 18, 30)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (137, 14, CAST(0x0000A3530012A3E0 AS DateTime), N'Nothing is permanent - not even our troubles.', CAST(480879878624280000 AS Numeric(18, 0)), 105, 106)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (138, 10, CAST(0x0000A35300442230 AS DateTime), N'I''m a lover of reality, not because I''m a spiritual woman, but because it hurts when I argue with what is.', CAST(480925227992354000 AS Numeric(18, 0)), 33, 41)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (139, 10, CAST(0x0000A353007578A8 AS DateTime), N'The story we tell is the only nightmare that we have lived.', CAST(480970436872634000 AS Numeric(18, 0)), 15, 13)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (140, 93, CAST(0x0000A35300A6ED98 AS DateTime), N'Fill your bowl to the brim and it will spill.', CAST(481015748824137000 AS Numeric(18, 0)), 25, 25)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (141, 57, CAST(0x0000A35300D83984 AS DateTime), N'Knowing is delusion; now knowing is confusion. The true Way is as vast and boundless as outer space.', CAST(481060919188135000 AS Numeric(18, 0)), 17, 18)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (142, 27, CAST(0x0000A353010A5E3C AS DateTime), N'You cannot transform yourself. All you can do is create a space for transformation to happen, for grace & love to enter.', CAST(481106861627047000 AS Numeric(18, 0)), 56, 56)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (143, 81, CAST(0x0000A353013B4308 AS DateTime), N'Think with the whole body.', CAST(481151662946394000 AS Numeric(18, 0)), 39, 36)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (144, 42, CAST(0x0000A353016C9E30 AS DateTime), N'Since all living beings are bound by their craving for existence, you must begin by finding the determination to be free.', CAST(481196887522148000 AS Numeric(18, 0)), 27, 33)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (145, 32, CAST(0x0000A3540012AAE8 AS DateTime), N'Zen aims at freedom but its practice is disciplined.', CAST(481242295019507000 AS Numeric(18, 0)), 31, 20)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (146, 93, CAST(0x0000A354004486F8 AS DateTime), N'By plucking the petals, you do not gather the beauty of the flower.', CAST(481287978682425000 AS Numeric(18, 0)), 53, 52)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (147, 49, CAST(0x0000A354007654F8 AS DateTime), N'Nature is not anthropomorphic.', CAST(481333610604408000 AS Numeric(18, 0)), 21, 18)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (148, 3, CAST(0x0000A35400A70184 AS DateTime), N'Wisdom tends to grow in proportion to one''s awareness of one''s ignorance.', CAST(481378207992930000 AS Numeric(18, 0)), 60, 43)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (149, 10, CAST(0x0000A35400D879F8 AS DateTime), N'If I had a prayer, it would be this: ''God, spare me from the desire for love, approval, or appreciation. Amen.''', CAST(481423538474065000 AS Numeric(18, 0)), 46, 59)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (150, 58, CAST(0x0000A3540109FBCC AS DateTime), N'If you are in the future, then ego seems to be very substantial. If you are in the present the ego is a mirage, it starts disappearing.', CAST(481468900757237000 AS Numeric(18, 0)), 31, 26)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (151, 27, CAST(0x0000A354013BD6B0 AS DateTime), N'The significance is hiding in the insignificant. Appreciate everything.', CAST(481514578506162000 AS Numeric(18, 0)), 70, 67)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (152, 33, CAST(0x0000A354016CB0F0 AS DateTime), N'As solid rock remains unmoved by the wind, so the wise remain unmoved by blame and praise.', CAST(481559339950280000 AS Numeric(18, 0)), 59, 69)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (153, 18, CAST(0x0000A35500127758 AS DateTime), N'Real knowledge is to know the extent of one''s ignorance.', CAST(481604498641928000 AS Numeric(18, 0)), 80, 71)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (154, 4, CAST(0x0000A35500440F70 AS DateTime), N'How could the drops of water know themselves to be a river? Yet the river flows on.', CAST(481649939278487000 AS Numeric(18, 0)), 39, 59)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (155, 27, CAST(0x0000A355007587E4 AS DateTime), N'The truth is: you don''t have a life, you are life.', CAST(481695264894242000 AS Numeric(18, 0)), 65, 61)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (156, 51, CAST(0x0000A35500A6FBA8 AS DateTime), N'The secret of contentment is knowing how to enjoy what you have, & to lose desire for things beyond your reach.', CAST(481740576094961000 AS Numeric(18, 0)), 64, 54)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (157, 54, CAST(0x0000A35500D83024 AS DateTime), N'Death is not the biggest fear we have; our biggest fear is taking the risk to be alive and express what we really are.', CAST(481785662337978000 AS Numeric(18, 0)), 61, 72)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (158, 10, CAST(0x0000A3550109AFA0 AS DateTime), N'Reality is always good, even in situations that seem like nightmares.', CAST(481831015909195000 AS Numeric(18, 0)), 28, 35)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (159, 70, CAST(0x0000A355013B1C5C AS DateTime), N'Let go of thinking.', CAST(481876300643434000 AS Numeric(18, 0)), 41, 48)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (160, 24, CAST(0x0000A355016C9278 AS DateTime), N'Tao is everywhere. It cannot be kept from the sincere.', CAST(481921620278509000 AS Numeric(18, 0)), 15, 22)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (161, 44, CAST(0x0000A35600129828 AS DateTime), N'Everyone is in the best seat.', CAST(481967003725754000 AS Numeric(18, 0)), 14, 12)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (162, 15, CAST(0x0000A3560043FDDC AS DateTime), N'The person who says it cannot be done should not interrupt the person doing it.', CAST(482012263159963000 AS Numeric(18, 0)), 119, 104)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (163, 49, CAST(0x0000A35600755328 AS DateTime), N'To know what you do no know is the best. To pretend to know when you do not know is disease.', CAST(482057464670863000 AS Numeric(18, 0)), 26, 28)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (164, 9, CAST(0x0000A35600A6C110 AS DateTime), N'To be idle is a short road to death and to be diligent is a way of life; foolish people are idle, wise people are diligent.', CAST(482102754031050000 AS Numeric(18, 0)), 46, 42)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (165, 70, CAST(0x0000A35600D833A8 AS DateTime), N'Ignore those that make you fearful and sad, that degrade you back towards disease and death.', CAST(482148062354096000 AS Numeric(18, 0)), 42, 46)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (166, 15, CAST(0x0000A3560109C5E4 AS DateTime), N'Better to light a candle than to curse the darkness.', CAST(482193481155477000 AS Numeric(18, 0)), 42, 40)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (167, 15, CAST(0x0000A356013B33CC AS DateTime), N'If you neglect your art for one day it will neglect you for two.', CAST(482238772159856000 AS Numeric(18, 0)), 73, 77)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (168, 70, CAST(0x0000A356016C833C AS DateTime), N'Keep walking, though there''s no place to get to.', CAST(482283953584615000 AS Numeric(18, 0)), 32, 44)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (169, 45, CAST(0x0000A35700128EC8 AS DateTime), N'If someone thinks love & peace is a cliche that''s their problem. Love and peace are eternal.', CAST(482329356535353000 AS Numeric(18, 0)), 69, 59)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (170, 70, CAST(0x0000A35700441EAC AS DateTime), N'Be empty of worrying. Think of who created thought!', CAST(482374767987941000 AS Numeric(18, 0)), 33, 54)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (171, 93, CAST(0x0000A35700756BC4 AS DateTime), N'Better to sit all night than to go to bed with a dragon.', CAST(482419941786656000 AS Numeric(18, 0)), 31, 47)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (172, 52, CAST(0x0000A35700A6BFE4 AS DateTime), N'The transcendental state of Being lies beyond all seeing, hearing, touching - beyond all thinking & feeling.', CAST(482465137149108000 AS Numeric(18, 0)), 22, 22)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (173, 70, CAST(0x0000A35700D834D4 AS DateTime), N'Two there are who are never satisfied -- the lover of the world and the lover of knowledge.', CAST(482510452241358000 AS Numeric(18, 0)), 31, 35)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (174, 33, CAST(0x0000A3570109A76C AS DateTime), N'Thoughtfulness is the way to deathlessness, thoughtlessness the way to death.', CAST(482555762330173000 AS Numeric(18, 0)), 17, 20)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (175, 49, CAST(0x0000A357013B1428 AS DateTime), N'The highest good is like water. It flows in places men reject and so is like the Tao.', CAST(482601045311234000 AS Numeric(18, 0)), 22, 19)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (176, 91, CAST(0x0000A357016C87EC AS DateTime), N'It is the familiar that usually eludes us in life. What is before our nose is what we see last.', CAST(482646357304688000 AS Numeric(18, 0)), 25, 22)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (177, 10, CAST(0x0000A35800127500 AS DateTime), N'If our thinking is clear, how could work or money be the problem? Our thinking is all we need to change.', CAST(482691650729570000 AS Numeric(18, 0)), 35, 46)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (178, 9, CAST(0x0000A3580043EC48 AS DateTime), N'Do not let pleasure distract you from meditation, from the way. Free yourself from pleasure and pain.', CAST(482736977243308000 AS Numeric(18, 0)), 35, 58)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (179, 25, CAST(0x0000A35800755580 AS DateTime), N'The whole moon and the entire sky are reflected in one dewdrop on the grass.', CAST(482782246991302000 AS Numeric(18, 0)), 35, 42)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (180, 70, CAST(0x0000A35800A6EA14 AS DateTime), N'Sell your cleverness and buy bewilderment.', CAST(482827679465754000 AS Numeric(18, 0)), 37, 42)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (181, 70, CAST(0x0000A35800D8372C AS DateTime), N'You are the Truth from foot to brow. Now, what else would you like to know?', CAST(482872848218734000 AS Numeric(18, 0)), 28, 42)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (182, 93, CAST(0x0000A3580109A190 AS DateTime), N'To be calm is the highest achievement of the self.', CAST(482918127509176000 AS Numeric(18, 0)), 54, 81)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (183, 41, CAST(0x0000A358013B4434 AS DateTime), N'Not only has one to do one''s best, one must remain detached from whatever one is trying to achieve.', CAST(482963606611714000 AS Numeric(18, 0)), 27, 42)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (184, 50, CAST(0x0000A358016CA2E0 AS DateTime), N'The best mind-altering drug is the truth.', CAST(483008840649031000 AS Numeric(18, 0)), 75, 70)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (185, 49, CAST(0x0000A35900127500 AS DateTime), N'Guard your senses. Temper your sharpness. Mask your brightness. Be at one with the earth. This is primal union.', CAST(483054039593398000 AS Numeric(18, 0)), 34, 36)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (186, 60, CAST(0x0000A3590043F92C AS DateTime), N'Your thoughts have little legs that go out & create what you think about.', CAST(483099410193477000 AS Numeric(18, 0)), 45, 51)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (187, 93, CAST(0x0000A359007572CC AS DateTime), N'The judgement of time is always done in the past tense.', CAST(483144743124492000 AS Numeric(18, 0)), 23, 22)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (188, 59, CAST(0x0000A35900A6D178 AS DateTime), N'In your hopelessness is the only hope, and in your desirelessness is your only fulfilment.', CAST(483189979120926000 AS Numeric(18, 0)), 28, 46)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (189, 49, CAST(0x0000A35900D856D0 AS DateTime), N'Manifest plainness. Embrace simplicity. Reduce selfishness. Have few desires.', CAST(483235349406441000 AS Numeric(18, 0)), 45, 64)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (190, 93, CAST(0x0000A3590109E204 AS DateTime), N'From the pine tree, learn of the pine tree. From the bamboo, learn of the bamboo.', CAST(483280747810533000 AS Numeric(18, 0)), 30, 30)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (191, 93, CAST(0x0000A359013B8BB0 AS DateTime), N'Keep sharpening your knife and it will blunt.', CAST(483326250711547000 AS Numeric(18, 0)), 30, 36)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (192, 93, CAST(0x0000A359016C833C AS DateTime), N'When nothing is done, nothing is left undone.', CAST(483371118548774000 AS Numeric(18, 0)), 18, 32)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (193, 27, CAST(0x0000A35A0012C384 AS DateTime), N'With stillness comes the benediction of peace.', CAST(483416710574514000 AS Numeric(18, 0)), 31, 45)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (194, 34, CAST(0x0000A35A0044A1EC AS DateTime), N'There''s no present. There''s only the immediate future and the recent past.', CAST(483462399605747000 AS Numeric(18, 0)), 24, 24)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (195, 11, CAST(0x0000A35A0075C4D4 AS DateTime), N'No concept is a carrier of life.', CAST(483507422552924000 AS Numeric(18, 0)), 11, 15)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (196, 27, CAST(0x0000A35A00A6DAD8 AS DateTime), N'Death is a stripping away of all that is not you.', CAST(483552399064571000 AS Numeric(18, 0)), 31, 43)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (197, 73, CAST(0x0000A35A00D8A428 AS DateTime), N'Seeing into nothingness-this is the true seeing, the eternal seeing.', CAST(483598016964988000 AS Numeric(18, 0)), 17, 23)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (198, 59, CAST(0x0000A35A0109A76C AS DateTime), N'Mind always goes ahead or lags behind. Remain with the moment.', CAST(483642923133972000 AS Numeric(18, 0)), 39, 28)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (199, 87, CAST(0x0000A35A013B4D94 AS DateTime), N'When one sees that everything exists as an illusion, one can live in a higher sphere than ordinary man.', CAST(483688414538387000 AS Numeric(18, 0)), 33, 49)
INSERT [dbo].[ZenTweet] ([Id], [AttributionId], [CreatedAt], [TweetText], [TweetId], [RetweetCount], [FavoriteCount]) VALUES (200, 53, CAST(0x0000A35A016CA8BC AS DateTime), N'The highest level of creativity consists in being, not doing', CAST(483733638274887000 AS Numeric(18, 0)), 23, 40)
GO
SET IDENTITY_INSERT [dbo].[ZenTweet] OFF
GO

ALTER TABLE [dbo].[ZenTweet]  WITH CHECK ADD  CONSTRAINT [FK_ZenTweet_Attribution] FOREIGN KEY([AttributionId])
REFERENCES [dbo].[Attribution] ([Id])
GO
ALTER TABLE [dbo].[ZenTweet] CHECK CONSTRAINT [FK_ZenTweet_Attribution]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ZenProverbs]
AS
SELECT  dbo.ZenTweet.TweetText, 
		dbo.Attribution.Source, 
		dbo.ZenTweet.RetweetCount, 
		dbo.ZenTweet.FavoriteCount, 
		dbo.ZenTweet.CreatedAt
FROM    dbo.Attribution INNER JOIN
        dbo.ZenTweet ON dbo.Attribution.Id = dbo.ZenTweet.AttributionId
GO


CREATE PROCEDURE [dbo].[ResultFormatter]
AS
BEGIN
    DECLARE @Msg1 NVARCHAR(MAX);
    DECLARE @Msg2 NVARCHAR(MAX);
    DECLARE @Msg3 NVARCHAR(MAX);
    DECLARE @Msg4 NVARCHAR(MAX);
    DECLARE @IsSuccess INT;
    DECLARE @SuccessCnt INT;
    DECLARE @Severity INT;
    
    SELECT ROW_NUMBER() OVER(ORDER BY Result DESC, Name ASC) No,Name [Test Case Name], Result
      INTO #Tmp
      FROM tSQLt.TestResult;
    
    EXEC tSQLt.TableToText @Msg1 OUTPUT, '#Tmp', 'No';

    SELECT @Msg3 = Msg, 
           @IsSuccess = 1 - SIGN(FailCnt + ErrorCnt),
           @SuccessCnt = SuccessCnt
      FROM tSQLt.TestCaseSummary();
      
    SELECT @Severity = 16*(1-@IsSuccess);
    
    SELECT @Msg2 = REPLICATE('-',LEN(@Msg3)),
           @Msg4 = CHAR(13)+CHAR(10);
    
    
    EXEC tSQLt.Private_Print @Msg4,0;
    EXEC tSQLt.Private_Print '+------------------------------+',0;
    EXEC tSQLt.Private_Print '|mountains are merely mountains|',0;
    EXEC tSQLt.Private_Print '+------------------------------+',0;
    EXEC tSQLt.Private_Print @Msg4,0;
    EXEC tSQLt.Private_Print @Msg1,0;
    EXEC tSQLt.Private_Print @Msg2,0;
    EXEC tSQLt.Private_Print @Msg3, @Severity;
    EXEC tSQLt.Private_Print @Msg2,0;
END;
GO


EXEC [tSQLt].[SetTestResultFormatter] '[dbo].[ResultFormatter]'
GO