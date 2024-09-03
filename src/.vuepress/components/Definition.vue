<template>
    <div class="definition">
      <h4>定义 {{ number }}: {{ title }}</h4>
      <div class="content" v-html="renderedContent"></div>
    </div>
  </template>
  
  <script>
import markdownIt from "markdown-it";
import markdownItKatex from "markdown-it-katex";
import "katex/dist/katex.min.css";

export default {
  props: {
    number: {
      type: Number,
      required: true,
    },
    title: {
      type: String,
      required: true,
    },
  },
  data() {
    return {
      renderedContent: "",
    };
  },
  mounted() {
    // 处理插槽内容为 VNode
    const slotContent = this.$slots.default ? this.$slots.default.map(vnode => vnode.children).join('') : '';
    this.renderedContent = this.renderMarkdown(slotContent);
  },
  methods: {
    renderMarkdown(text) {
      const md = markdownIt().use(markdownItKatex);
      return md.render(text);
    },
  },
};
</script>
  
  <style scoped>
  .definition {
    border: 1px solid #000;
    padding: 10px;
    margin: 20px 0;
    background-color: #f9f9f9;
  }
  
  .definition h4 {
    margin: 0;
  }
  </style>
  