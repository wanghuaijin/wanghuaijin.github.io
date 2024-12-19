import { Tooltip } from "vidstack";
import { navbar } from "vuepress-theme-hope";

export default navbar([
  // "/Solarsystem.md",
  "/Homepage.md",
  // "/demo/",
  // {
  //   text: "Posts",
  //   icon: "pen-to-square",
  //   prefix: "/posts/",
  //   children: [
  //     {
  //       text: "Apple",
  //       icon: "pen-to-square",
  //       prefix: "apple/",
  //       children: [
  //         { text: "Apple1", icon: "pen-to-square", link: "1" },
  //         { text: "Apple2", icon: "pen-to-square", link: "2" },
  //         "3",
  //         "4",
  //       ],
  //     },
  //     {
  //       text: "Banana",
  //       icon: "pen-to-square",
  //       prefix: "banana/",
  //       children: [
  //         {
  //           text: "Banana 1",
  //           icon: "pen-to-square",
  //           link: "1",
  //         },
  //         {
  //           text: "Banana 2",
  //           icon: "pen-to-square",
  //           link: "2",
  //         },
  //         "3",
  //         "4",
  //       ],
  //     },
  //     { text: "Cherry", icon: "pen-to-square", link: "cherry" },
  //     { text: "Dragon Fruit", icon: "pen-to-square", link: "dragonfruit" },
  //     "tomato",
  //     "strawberry",
  //   ],
  // },
  {
    text: "Tools",
    icon: "fa-solid fa-toolbox",
    link: "/Tools/",
    children: [
      {
        text: "Convert PDF to Latex",
        icon: "fa-solid fa-file-pdf",
        link: "https://snip.mathpix.com/home",
      },
      {
        text: "Chebfun Package",
        icon: "fa-solid fa-box",
        link: "http://www.chebfun.org/",
      },
      {
        text: "Hope V2 Docs",
        icon: "book",
        link: "https://theme-hope.vuejs.press/",
      },
      {
        text: "More",
        icon: "fa-solid fa-angles-right",
        link: "/Tools/README.md",
      },
    ],
  },
  {
    text: "Time Line",
    link: "/timeline/",
  }
  // {
  //   text: "V2 Docs",
  //   icon: "book",
  //   link: "https://theme-hope.vuejs.press/",
  // },
  
]);
