<template>
    <div class="theorem">
      <h4>Theorem {{ number }}: {{ title }}</h4>
      <div class="content">
        <slot></slot>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    props: {
      number: {
        type: Number,
        required: true
      },
      title: {
        type: String,
        required: true
      }
    }
  }
  </script>
  
  <style scoped>
  .theorem {
    border: 1px solid #000;
    padding: 10px;
    margin: 20px 0;
    background-color: #f9f9f9;
  }
  
  .theorem h4 {
    margin: 0;
  }
  </style>
  