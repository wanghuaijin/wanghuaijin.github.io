<template class="body">
    <div class="typing animate" ref="typingElement" @click="triggerAnimation">
      <p>Testing typing animation</p>
    </div>
  </template>
  
  <script setup>
  import { ref, nextTick } from 'vue';
  
  const typingElement = ref(null);
  
  // Trigger animation function
  const triggerAnimation = () => {
    nextTick(() => {
      if (typingElement.value) {
        typingElement.value.classList.remove('animate');
        typingElement.value.offsetWidth; // Trigger reflow
        typingElement.value.classList.add('animate');
      }
    });
  };
  </script>
  
  <style scoped>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  background: #eee;
}

.typing.animate {
  width: 21ch;
  border-right: 0.1em solid black;
  font-family: monospace;
  font-size: 2em;
  animation: type 2.5s steps(20), writer 1s infinite alternate, delete 0.5s steps(5) 2.5s, type2 1s steps(4) 3s forwards, type3 3s steps(22, end) 6s forwards;
  overflow: hidden;
  white-space: nowrap;
  cursor: pointer;
}

.typing.animate::before { 
  content: "Hello, I'm Christine";
  animation: type2 1s steps(4) 3s forwards, type3 3s steps(22, end) 6s forwards;
}

@keyframes type {
  from {
    width: 0;
  }
  to {
    width: 21ch;
  }
}

@keyframes type2 {
  from {
    width: 16ch;
    content: "Hello, I'm Chrissy. "
  }
  to {
    width: 20ch;
    content: "Hello, I'm Chrissy. "
  }
}

@keyframes type3 {
  from {
    width: 20ch;
    content: "Hello, I'm Chrissy. Welcome to my Website!"
  }
  to {
    width: 42ch;
    content: "Hello, I'm Chrissy. Welcome to my Website!"
  }
}

@keyframes writer {
  50% {
    border-color: transparent;
  }
}

@keyframes delete {
  from {
    width: 21ch;
  }
  to {
    width: 16ch;
  }
}
  </style>
  