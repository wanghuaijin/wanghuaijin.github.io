import { hopeTheme } from "vuepress-theme-hope";


import navbar from "./navbar.js";
import sidebar from "./sidebar.js";

export default hopeTheme({
  darkmode: "enable",

  lastUpdated: true,
  contributors: false,

  headerDepth: 10,

  fullscreen: true,

  pure: true,

  hostname: "https://ciaotomorrow.github.io",

  author: {
    name: "Wang Huaijin",
    url: "https://ciaotomorrow.github.io",
  },

  iconAssets: "fontawesome-with-brands",

  // 本地logo
  // logo: "assets/images/logo2.png",

  // stargaze
  // logo: "https://files.logomakr.com/8ETtoQ-LogoMakr.png",
  // logoDark: "https://files.logomakr.com/1bGPQQ-LogoMakr.png",

  // wanghuaijin
  logo: "https://files.logomakr.com/9RX62W-LogoMakr.png",
  logoDark:  "https://files.logomakr.com/6H1mWJ-LogoMakr.png",

  // repo: "vuepress-theme-hope/vuepress-theme-hope",

  docsDir: "src",

  // navbar
  navbar,

  // sidebar
  sidebar,

  footer: '<span class="hover-text"> In Mobile <div class="tooltip"> <div class="caption-top">Scan the QR code below</div> <img src="/assets/images/in_mobile.png" alt="Image"> <div class="caption-bottom">View on mobile devices</div></div></span> | <span class="hover-text">Contact Me <div class="tooltip"> <div class="caption-top">Scan the QR code below</div> <img src="/assets/images/contact_me.jpg" alt="Image"> <div class="caption-bottom">Add me as a friend on WeChat</div></div></span> | <span class="hover-text">Support Me <div class="tooltip"> <div class="caption-top">Scan the QR code with WeChat Pay</div> <img src="/assets/images/support_me.jpg" alt="Image"> <div class="caption-bottom">Thank you for your support</div></div></span> | <a href="/intro.html" title="IntroMe" style="color:inherit">About Me</a>',

  displayFooter: true,

  encrypt: {
    config: {
      "/demo/": ["12345"],
      "/timeline/": ["12345"],
      "/folders.md": ["12345"],
      // "/Thoughts/dimission.html": ["xxx"],
    },
  },



  blog: {
    avatar: "",
    name: "",
    description: "",
    intro: "/intro.html",
    medias: {
    //   Baidu: "https://example.com",
    //   BiliBili: "https://example.com",
      // Bitbucket: "https://example.com",
    //   Dingding: "https://example.com",
    //   Discord: "https://example.com",
      // Dribbble: "https://example.com",
      // Email: "mailto:hjwang@163.com", *******
    //   Evernote: "https://example.com",
    //   Facebook: "https://example.com",
    //   Flipboard: "https://example.com",
    //   Gitee: "https://example.com",
    //   GitHub: "https://example.com",
    //   Gitlab: "https://example.com",
      // Gmail: "mailto:hjwang@gmail.com", *******
      // Phone: "123",
    //   Instagram: "https://example.com",
      // Lark: "https://example.com",
      // Lines: "tel:+8617791842334",     ********
    //   Linkedin: "https://example.com",
    //   Pinterest: "https://example.com",
      // Pocket: "tel:+8617791842334",
    //   QQ: "https://example.com",
    //   Qzone: "https://example.com",
    //   Reddit: "https://example.com",
    //   Rss: "https://example.com",
    //   Steam: "https://example.com",
    //   Twitter: "https://example.com",
      // Wechat: '/assets/images/contact_me.jpg', ********
    //   Weibo: "https://example.com",
    //   Whatsapp: "https://example.com",
    //   Youtube: "https://example.com",
    //   Zhihu: "https://example.com",
    //   VuePressThemeHope: {
    //     icon: "https://theme-hope-assets.vuejs.press/logo.svg",
    //     link: "https://theme-hope.vuejs.press",
    //   },
    },
  },

  metaLocales: {
    editLink: "Edit this page on GitHub",
  },

  // enable it to preview all changes in time
  // hotReload: true,

  plugins: {
    blog: true,

    // Install @waline/client before enabling it
    // Note: This is for testing ONLY!
    // You MUST generate and use your own comment service in production.
    // comment: {
    //   provider: "Waline",
    //   serverURL: "https://waline-comment.vuejs.press",
    // },

    components: {
      components: ["Badge", 
                   "VPCard", 
                   "VidStack",
                   "BiliBili",
                   "PDF",
                   "Share"],
    },

    // These features are enabled for demo, only preserve features you need here
    mdEnhance: {
      align: true,
      attrs: true,
      codetabs: true,
      component: true,
      demo: true,
      figure: true,
      imgLazyload: true,
      imgSize: true,
      include: true,
      mark: true,
      plantuml: true,
      spoiler: true,
      stylize: [
        {
          matcher: "Recommended",
          replacer: ({ tag }) => {
            if (tag === "em")
              return {
                tag: "Badge",
                attrs: { type: "tip" },
                content: "Recommended",
              };
          },
        },
      ],
      sub: true,
      sup: true,
      tabs: true,
      tasklist: true,
      vPre: true,

      // install chart.js before enabling it
      // chart: true,

      // insert component easily

      // install echarts before enabling it
      // echarts: true,

      // install flowchart.ts before enabling it
      // flowchart: true,

      // gfm requires mathjax-full to provide tex support
      // gfm: true,

      // install katex before enabling it
      katex: true,

      // install mathjax-full before enabling it
      // mathjax: true,

      // install mermaid before enabling it
      // mermaid: true,

      // playground: {
      //   presets: ["ts", "vue"],
      // },

      // install reveal.js before enabling it
      // revealJs: {
      //   plugins: ["highlight", "math", "search", "notes", "zoom"],
      // },

      // install @vue/repl before enabling it
      // vuePlayground: true,

      // install sandpack-vue3 before enabling it
      // sandpack: true,
      
    },

    // shiki: {
    //   lineNumbers: true,
    //   themes: {
    //     light: "one-light",
    //     dark: "one-dark-pro",
    //   },
    // },

    // searchPro: true,
    // searchPro:{
    //   indexContent: true,
    //   // 为分类和标签添加索引
    //   customFields: [
    //     {
    //       getter: (page) => page.frontmatter.category as any,
    //       formatter: "分类：$content",
    //     },
    //     {
    //       getter: (page) => page.frontmatter.tag as any,
    //       formatter: "标签：$content",
    //     },
    //   ],
    // },


    // install @vuepress/plugin-pwa and uncomment these if you want a PWA
    // pwa: {
    //   favicon: "/favicon.ico",
    //   cacheHTML: true,
    //   cacheImage: true,
    //   appendBase: true,
    //   apple: {
    //     icon: "/assets/icon/apple-icon-152.png",
    //     statusBarColor: "black",
    //   },
    //   msTile: {
    //     image: "/assets/icon/ms-icon-144.png",
    //     color: "#ffffff",
    //   },
    //   manifest: {
    //     icons: [
    //       {
    //         src: "/assets/icon/chrome-mask-512.png",
    //         sizes: "512x512",
    //         purpose: "maskable",
    //         type: "image/png",
    //       },
    //       {
    //         src: "/assets/icon/chrome-mask-192.png",
    //         sizes: "192x192",
    //         purpose: "maskable",
    //         type: "image/png",
    //       },
    //       {
    //         src: "/assets/icon/chrome-512.png",
    //         sizes: "512x512",
    //         type: "image/png",
    //       },
    //       {
    //         src: "/assets/icon/chrome-192.png",
    //         sizes: "192x192",
    //         type: "image/png",
    //       },
    //     ],
    //     shortcuts: [
    //       {
    //         name: "Demo",
    //         short_name: "Demo",
    //         url: "/demo/",
    //         icons: [
    //           {
    //             src: "/assets/icon/guide-maskable.png",
    //             sizes: "192x192",
    //             purpose: "maskable",
    //             type: "image/png",
    //           },
    //         ],
    //       },
    //     ],
    //   },
    // },
  },}, {
    custom: true,  // 使能自定义组件
});
