<template>
    <div>
      <!-- Navbar -->
      <nav class="nav">
        <div class="container">
          <div class="logo">
            <a href="#">Your Logo</a>
          </div>
          <div id="mainListDiv" class="main_list">
            <ul class="navlinks">
              <li><a href="#">About</a></li>
              <li><a href="#">Portfolio</a></li>
              <li><a href="#">Services</a></li>
              <li><a href="#">Contact</a></li>
            </ul>
          </div>
          <span class="navTrigger" @click="toggleMenu">
            <i></i>
            <i></i>
            <i></i>
          </span>
        </div>
      </nav>
  
      <!-- Home Section -->
      <section class="home"></section>
  
      <!-- Content Section -->
      <div style="height: 1000px">
        <h2 class="myH2">What is this ?</h2>
        <p class="myP">This is a responsive fixed navbar animated on scroll</p>
        <p class="myP">
          I took inspiration from  ABDO STEIF 
          <a href="https://codepen.io/abdosteif/pen/bRoyMb?editors=1100">here</a> 
          and Dicson 
          <a href="https://codepen.io/dicson/pen/waKPgQ">here</a>
        </p>
        <p class="myP">I HOPE YOU FIND THIS USEFUL</p>
        <p class="myP">Albi</p>
        <p class="myP">
          Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ipsum ratione facere animi impedit rem labore sint repellendus ipsa sapiente voluptatem aut excepturi quo itaque, ab earum cumque...
        </p>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    mounted() {
      // Handle the scroll effect to shrink the navbar
      window.addEventListener('scroll', this.handleScroll);
    },
    beforeDestroy() {
      // Remove scroll event listener when the component is destroyed
      window.removeEventListener('scroll', this.handleScroll);
    },
    methods: {
      handleScroll() {
        if (document.documentElement.scrollTop > 50) {
          document.querySelector('.nav').classList.add('affix');
        } else {
          document.querySelector('.nav').classList.remove('affix');
        }
      },
      toggleMenu() {
        document.querySelector('.navTrigger').classList.toggle('active');
        document.querySelector('#mainListDiv').classList.toggle('show_list');
      }
    }
  };
  </script>
  
  <style scoped>
  @import url('https://fonts.googleapis.com/css?family=Quicksand:400,500,700');
  html, body {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Quicksand", sans-serif;
    font-size: 62.5%;
    font-size: 10px;
  }
  
  /* Navbar section */
  .nav {
    width: 100%;
    height: 65px;
    position: fixed;
    line-height: 65px;
    text-align: center;
    padding-top: 20px;
    padding-bottom: 20px;
    transition: all 0.4s ease;
  }
  .nav .logo {
    float: left;
    padding-left: 3rem;
  }
  .nav .logo a {
    text-decoration: none;
    color: #fff;
    font-size: 2.5rem;
  }
  .nav .logo a:hover {
    color: #00E676;
  }
  .nav .main_list {
    float: right;
  }
  .nav .main_list ul {
    display: flex;
    list-style: none;
    margin: 0;
    padding: 0;
  }
  .nav .main_list ul li {
    padding-right: 3rem;
  }
  .nav .main_list ul li a {
    text-decoration: none;
    color: #fff;
    line-height: 65px;
    font-size: 2.4rem;
  }
  .nav .main_list ul li a:hover {
    color: #00E676;
  }
  
  .home {
    width: 100%;
    height: 100vh;
    background-image: url(https://images.unsplash.com/photo-1498550744921-75f79806b8a7?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b0f6908fa5e81286213c7211276e6b3d&auto=format&fit=crop&w=1500&q=80);
    background-position: center top;
    background-size: cover;
  }
  
  .navTrigger {
    display: none;
    cursor: pointer;
    width: 30px;
    height: 25px;
    position: absolute;
    right: 30px;
    top: 0;
  }
  .navTrigger i {
    background-color: #fff;
    border-radius: 2px;
    display: block;
    width: 100%;
    height: 4px;
  }
  .navTrigger i:nth-child(1) {
    animation: outT 0.8s forwards;
  }
  .navTrigger i:nth-child(2) {
    margin: 5px 0;
    animation: outM 0.8s forwards;
  }
  .navTrigger i:nth-child(3) {
    animation: outBtm 0.8s forwards;
  }
  
  .navTrigger.active i:nth-child(1) {
    animation: inT 0.8s forwards;
  }
  .navTrigger.active i:nth-child(2) {
    animation: inM 0.8s forwards;
  }
  .navTrigger.active i:nth-child(3) {
    animation: inBtm 0.8s forwards;
  }
  
  @keyframes inT {
    0% {
      transform: translateY(0px) rotate(0deg);
    }
    50% {
      transform: translateY(9px) rotate(0deg);
    }
    100% {
      transform: translateY(9px) rotate(135deg);
    }
  }
  @keyframes inM {
    50% {
      transform: rotate(0deg);
    }
    100% {
      transform: rotate(45deg);
    }
  }
  @keyframes inBtm {
    0% {
      transform: translateY(0px) rotate(0deg);
    }
    50% {
      transform: translateY(-9px) rotate(0deg);
    }
    100% {
      transform: translateY(-9px) rotate(135deg);
    }
  }
  
  @keyframes outT {
    0% {
      transform: translateY(0px) rotate(0deg);
    }
    50% {
      transform: translateY(9px) rotate(0deg);
    }
    100% {
      transform: translateY(9px) rotate(135deg);
    }
  }
  @keyframes outM {
    50% {
      transform: rotate(0deg);
    }
    100% {
      transform: rotate(45deg);
    }
  }
  @keyframes outBtm {
    0% {
      transform: translateY(0px) rotate(0deg);
    }
    50% {
      transform: translateY(-9px) rotate(0deg);
    }
    100% {
      transform: translateY(-9px) rotate(135deg);
    }
  }
  
  .affix {
    padding: 0;
    background-color: #111;
  }
  
  .myH2 {
    text-align: center;
    font-size: 4rem;
  }
  .myP {
    text-align: justify;
    padding-left: 15%;
    padding-right: 15%;
    font-size: 20px;
  }
  
  @media all and (max-width: 700px) {
    .myP {
      padding: 2%;
    }
  }
  
  @media screen and (max-width: 768px) {
    .navTrigger {
      display: block;
    }
    .nav .main_list {
      width: 100%;
      height: 0;
      overflow: hidden;
    }
    .nav .show_list {
      height: auto;
      display: none;
    }
    .nav .main_list ul {
      flex-direction: column;
      width: 100%;
      height: 100vh;
      background-color: #111;
    }
    .nav .main_list ul li {
      width: 100%;
      text-align: center;
    }
    .nav .main_list ul li a {
      font-size: 3rem;
      padding: 20px;
    }
  }
  </style>
  