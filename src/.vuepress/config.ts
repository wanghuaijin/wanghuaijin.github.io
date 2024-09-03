import { getDirname, path } from "vuepress/utils";
import { defineUserConfig } from "vuepress";
import { searchPlugin } from '@vuepress/plugin-search';


import theme from "./theme.js";
const __dirname = getDirname(import.meta.url);



export default defineUserConfig({


  markdown: {
    headers: {
      level: [2, 3, 4, 5, 6], // 允许显示到 h4 级别
    },
  },

  base: "/",
  lang: "en-US",
  title: "",
  description: "",
  head: [
    // 站点图标
    ["link", { rel: "icon", href: "/assets/images/favicon2.ico" }],
  ],

  theme,

  // Enable it with pwa
  // shouldPrefetch: false,
  alias: {
    "@theme-hope/modules/blog/components/BlogHero": path.resolve(
      __dirname,
      "./components/BlogHero.vue",
    ),
    "@Reward": path.resolve(__dirname, "./components/Reward.vue"),
  },

  plugins: [
    
    searchPlugin({
      // 设置搜索范围，包括所有 category 和 tags
      locales: {
        '/': {
          placeholder: 'Search',
        },
      },
      // 以下选项是为了确保 category 和 tags 能被搜索到
      maxSuggestions: 10,  // 设置搜索建议的数量
      isSearchable: (page) => page.path !== '/', // 避免搜索首页，但可以调整为需要的路径
      getExtraFields: (page) => {
        const categories = page.frontmatter.category as string[] || [];
        const moreCategories = page.frontmatter.categories as string[] || [];
        const tags = page.frontmatter.tag as string[] || [];
        const moreTags = page.frontmatter.tags as string[] || [];

        const headers = (page.headers || []).filter(header => header.level <= 8).map(header => header.title);

        return [
          ...categories,
          ...moreCategories,
          ...tags,
          ...moreTags,
          ...headers,
        ];
      },
    }),
  ],
});
