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
      children: ["sevenHabits.md", "GTD.md", "test.md"],
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
      children: ["online.md", "settings.md"],
    },
  ],
  "/NLA/": [
    "/Homepage.md",
    {
      text: "Numerical Linear Algebra",
      icon: "fa-solid fa-folder-open",
      link: "/NLA/",
      children: [
        "nla01.md",
      ],
    }
  ],
  "/Research/": [
    "/Homepage.md",
    {
      text: "Numerical Approximation",
      icon: "fa-solid fa-folder-open",
      children: [
        "Stahl_2003.md",
      ]
    },
    // {
    //   text: "Books of Approximating Theory",
    //   icon: "fa-solid fa-folder-open",
    //   prefix: "numApprox_book/",
    //   collapsible: true,
    //   children:[
    //     "numApprox_Weierstrass-Theorem.md", "minimax_approximation.md", "numApprox_uniform-approx.md"
    //   ],
    // },
    {
      text: "References",
      icon: "fa-solid fa-folder-open",
      collapsible: true,
      link: "/Research/",
      // children: [
      //   {
      //     text: "Articles",
      //     icon: "fa-solid fa-folder-open",
      //     collapsible: true,
      //     link: "/Research/",
      //     children: [
      //       "approx_basic.md", "Stahl_2003.md",
      //     ]
      //   },
      //   "approx_basic.md", "Stahl_2003.md",
      // ]
    }
  ],
  "/FEM/": [
    "/Homepage.md",
    {
      text: "FEM Course",
      icon: "fa-solid fa-folder-open",
      link: "/FEM/",
      children: [
        "Course1.md"
      ]
    },
    {
      text: "References",
      icon: "fa-solid fa-folder-open",
      collapsible: true,
      link: "/FEM/",
      children: [
        "divergence_thm.md", 
      ]
    }
  ],
  "/EngLearn/": [
    "/Homepage.md",
    {
      text: "Dec. 2024",
      icon: "fa-solid fa-folder-open",
      collapsible: true,
      link: "/EngLearn/",
      children: [
        "241225.md"
      ]
    }
  ]
});
