-- {"id":1308639999,"ver":"1.1.4","libVer":"1.0.0","author":"Jobobby04","dep":["Wuxiap>=1.0.7"]}

local GENRES = {
	"All",
	"Fan-Fiction",
	"Action",
	"Adventure",
	"Comedy",
	"Contemporary Romance",
	"Drama",
	"Eastern Fantasy",
	"Ecchi",
	"Fantasy",
	"Fantasy Romance",
	"Gender Bender",
	"Harem",
	"Historical",
	"Horror",
	"Josei",
	"Lolicon",
	"Magical Realism",
	"Martial Arts",
	"Mature",
	"Mecha",
	"Mystery",
	"Psychological",
	"Romance",
	"School Life",
	"Sci-fi",
	"Seinen",
	"Shoujo",
	"Shounen",
	"Shounen Ai",
	"Slice of Life",
	"Smut",
	"Sports",
	"Supernatural",
	"Tragedy",
	"Video Games",
	"Wuxia",
	"Xianxia",
	"Xuanhuan",
	"Yaoi",
	"Two-dimensional",
	"Erciyuan",
	"Adult",
	"Game",
	"Military",
	"Urban Life",
	"Yuri",
	"Chinese",
	"Korean",
	"Japanese",
	"Hentai",
	"Isekai",
	"Magic",
	"Shoujo Ai",
	"Urban",
	"Virtual Reality",
	"Faloo",
	"Wuxia Xianxia",
	"Official Circles",
	"Science Fiction",
	"Suspense Thriller",
	"Travel Through Time"
}

return Require("Wuxiap")("https://www.wuxiap.com", {
	id = 1308639999,
	name = "Wuxiap",
	shrinkURLNovel = "^.-wuxiap%.com",
	hasCloudFlare = true,

	genres = GENRES,

	listingsMap = {
		{
			name = "Recently Added Chapters",
			increments = false,
			selector = "#latest-updates .novel-list.grid.col .novel-item a",
			url = function(data)
				return "https://www.wuxiap.com"
			end
		},
		{
			name = "Popular Daily Updates",
			increments = true,
			url = function(data)
				return "https://www.wuxiap.com/list/all/all-lastdotime-" .. (data[PAGE] - 1) .. ".html"
			end
		},
		{
			name = "Most Popular",
			increments = true,
			url = function(data)
				return "https://www.wuxiap.com/list/all/all-onclick-" .. (data[PAGE] - 1) .. ".html"
			end
		},
		{
			name = "New to Web Novels",
			increments = true,
			url = function(data)
				return "https://www.wuxiap.com/list/all/all-newstime-" .. (data[PAGE] - 1) .. ".html"
			end
		}
	},
})
