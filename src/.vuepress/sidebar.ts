import { sidebar } from "vuepress-theme-hope";

export default sidebar({
  "/": [
    "",
    {
      text: "Demo",
      icon: "laptop-code",
      prefix: "demo/",
      link: "demo/",
      children: "structure",
    },
    {
      text: "Articles",
      icon: "book",
      prefix: "posts/",
      children: "structure",
    },
    "intro",
    {
      text: "Slides",
      icon: "person-chalkboard",
      link: "https://plugin-md-enhance.vuejs.press/guide/content/revealjs/demo.html",
    },
  ],
  "/demo/": [
    "/Homepage.md",
    {text: "Demo",
      icon: "laptop-code",
      prefix: "",
      link: "/demo/",
      children: ["layout.md", "encrypt.md", "markdown.md"],
    },
  ],
  "/Reading/": [
    "/Homepage.md",
    {text: "Books",
      icon: "book",
      prefix: "",
      link: "/Reading/",
      children: ["高效能人士的七个习惯.md", "GTD.md", "test.md"],
    },
  ],
  "/Photography/": [
    "/Homepage.md",
    {text: "Photography",
      icon: "book",
      prefix: "",
      link: "/Photography/",
      children: ["AfterWork.md", "Vipassana.md"],
    },
  ],
  "/Thoughts/":[
    "/Homepage.md",
    {text: "Thoughts",
      icon: "book",
      prefix: "",
      link: "/Thoughts/",
      children: ["dimission.md"],
    },
  ],
  "/Tools/": [
    "/Homepage.md",
    {
      text: "Tools",
      icon: "fa-solid fa-toolbox",
      link: "/Tools/",
      children: ["online.md"],
    },
  ],
});
