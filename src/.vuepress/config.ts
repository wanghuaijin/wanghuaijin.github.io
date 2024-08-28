import { getDirname, path } from "vuepress/utils";
import { defineUserConfig } from "vuepress";
import { searchProPlugin } from "vuepress-plugin-search-pro";
import theme from "./theme.js";
const __dirname = getDirname(import.meta.url);


export default defineUserConfig({
  
  

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

});
