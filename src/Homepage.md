---
home: true
layout: BlogHome
icon: house
title: Blog Home
# heroImage: https://theme-hope-assets.vuejs.press/logo.svg
heroText: Welcome to the blog
# tagline: You can put your slogan here
heroFullScreen: false
projects:
  - icon: project
    name: Mathematics
    desc: Content of my major
    link: /Mathematics/

  - icon: link
    name: Demo
    desc: This is a demo
    link: /demo/

  - icon: book
    name: Books
    desc: Occasionally reading books
    link: /Reading/

  - icon: article
    name: Articles
    desc: Published works
    link: /Articles/

  - icon: friend
    name : Manuscripts
    desc: Work in progress
    link: /Manuscripts/

  - icon: friend
    name: Photography
    desc: Content of photography
    link: /Photography/

  - icon: friend
    name: Thoughts
    desc: Meaningless
    link: /Thoughts/

  - icon: friend
    name: Snippets
    desc: Snippets in mathematics
    link: /Snippets/

  - icon: friend
    name: NLA
    desc: Numerical Linear Algebra
    link: /NLA/
  # - icon: https://theme-hope-assets.vuejs.press/logo.svg
  #   name: custom item
  #   desc: Detailed description of this custom item
  #   link: https://link.to.your.friend

# footer: customize your footer text
---



<script>
// import { useDarkmode } from "vuepress-theme-hope/client";
  export default {
    mounted() {
    document.documentElement.setAttribute('data-theme', 'light');
  },
}
</script>


This is a blog home page demo.

To use this layout, you should set both `layout: BlogHome` and `home: true` in the page front matter.

For related configuration docs, please see [blog homepage](https://theme-hope.vuejs.press/guide/blog/home.html).
