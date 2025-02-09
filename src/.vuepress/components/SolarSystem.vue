
<template>
  <div class="all-background">
    <div class="description" @click="navigateToPage">
      <h1> <br>  Hello And <br> Wekcome!</h1>
      <p class="blink-cursor">
        <br> <br> <br>  <b>Click anywhere to continue...</b>
      </p>
    </div>
    <div class="description2" @click="navigateToPage">
      <hr/>
      <p>
       Time-scaled solar system model, 
      </p>
      <p>
       where 1 Earth year equals 15 sec.
      </p>

      <p class="hide">
        Note the CSS tricks for the Saturn rings (box-shadow) and reverse animation to compensate the orbit.
      </p>
      <hr/>

      <!-- <p class="author">
        Made with <i class="fa fa-heart"></i> by Malik Dellidj
      </p>
      <p class="links">
        <a class="fa fa-codepen icon" href="https://codepen.io/kowlor/" target="_blank"></a>
        <a class="fa fa-github-alt icon" href="https://github.com/KOWLOR" target="_blank"></a>
        <a class="fa fa-twitter icon" href="https://twitter.com/Dathink" target="_blank"></a>
      </p>  -->
    </div>
    

    <div class="solar-syst" @click="navigateToPage">
      <div class="sun"></div>
      <div class="mercury"></div>
      <div class="venus"></div>
      <div class="earth"></div>
      <div class="mars"></div>
      <div class="jupiter"></div>
      <div class="saturn"></div>
      <div class="uranus"></div>
      <div class="neptune"></div>
      <div class="pluto"></div>
      <div class="asteroids-belt"></div>
    </div>
  </div>
  </template>

 
<script>
// import { useDarkmode } from "vuepress-theme-hope/client";
  export default {
  //   mounted() {
  //   document.documentElement.setAttribute('data-theme', 'dark');
  // },


  
    // setup() {
    //     // 获取 darkmode 状态
    //     const { isDarkmode, enableDarkmode, disableDarkmode, toggleDarkmode } = useDarkmode();

    //     // 输出当前的 darkmode 状态
    //     console.log(isDarkmode.value);

    //     // 返回到模板中使用
    //     return {
    //     isDarkmode,
    //     enableDarkmode,
    //     disableDarkmode,
    //     toggleDarkmode,
    //     };
    // },

  methods: {
    navigateToPage() {
      // 使用 Vue Router 进行页面导航
      this.$router.push('/Homepage.md');
      
      // 或者使用 window.location 进行外部导航
      // window.location.href = 'https://example.com/next-page';
    }
  }
}
  </script>




  <style lang="scss" scoped>
  /*
  Malik Dellidj - @Dathink

  Solar System orbit animation true time scaled

  Revolution of planets in earth days (from Wikipedia)
  Mercury : ~87,5 days
  Venus : ~224,7 days
  Earth : ~365,2563 days
    + Moon : ~27,3216 days (around earth)
  Mars : ~687 days (~1,8 year)
  Jupiter : ~4 331 days (~12 years)
  Saturn : ~10 747 days (~30 years)
  Uranus : ~30 589 days (~84 years)
  Neptune : ~59 802 days (~165 years)
  Pluto : ~90 580 days (~248 years)
*/

$year-in-second : 15; // 1 Earth year = 30 sec

@function revolution($pl-year-in-days){
  @return calc($pl-year-in-days * $year-in-second / 365.2563) + s  //Earth reference
}
@function alphaRandom(){
  @return random(1000)*.001;
}
@function stars($s, $max-area, $min-area : 0, $star-size : 0){
  $stars : #{$min-area + random($max-area)}px #{$min-area + random($max-area)}px 0 #{$star-size}px rgba(255,255,255, alphaRandom()); 
  @for $i from 1 to $s{
    $stars: '#{$stars} , #{$min-area + random($max-area)}px #{$min-area + random($max-area)}px 0 #{$star-size}px rgba(255,255,255, #{alphaRandom()})'
  }
  @return unquote($stars);
}

$sun: 40px;
$mercury-orb : 70px; $mercury-pl: 4px; 
$venus-orb : 100px; $venus-pl: 8px; 
$earth-orb : 145px; $earth-pl: 6px; 
$mars-orb : 190px; $mars-pl: 6px;
$jupiter-orb : 340px; $jupiter-pl: 18px; 
$saturn-orb : 440px; $saturn-pl: 12px;
$uranus-orb : 520px; $uranus-pl: 10px;
$neptune-orb : 630px; $neptune-pl: 10px;
$pluto-orb : 780px; $pluto-pl: 3px;

$asteroids-belt-orb : 300px; $asteroids-belt-pl: 210px;


*, *:before, *:after{
  padding:0;
  margin:0;
  box-sizing:border-box;
}

html, body{
  margin: 0;
  padding: 0;
  height:100%;
  width:100%;
}



body{
  font:normal 1em/1.45em "Helvetica Neue", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  color:#fff;
  background: radial-gradient(ellipse at bottom, #1C2837 0%, #050608 100%);
  background-attachment:fixed;
}



h1{
  font-weight:300;
  font-size:2.5em;
  text-transform:uppercase;
  font-family: Lato;
  line-height:1.6em;
  letter-spacing:.1em;
}

a, a:visited{
  text-decoration:none;
  color:white;
  opacity:.7;
  &:hover{
    opacity:1
  }
  &.icon{
    margin-right:2px;
    padding:3px;
  }
}

.description{
  padding:30px;
  position:absolute;
  top:0;
  left:0;
  min-width:25%;
  z-index:999;
  p{
    font-size:.9em;
    & + p{
      margin-top:20px;
    }
    &.author{
      font-size:.7em;
      .fa-heart{
        color:#860014;
      }
    }
  }
}


.description2{
  padding:30px;
  position:absolute;
  bottom:0;
  left:0;
  min-width:25%;
  z-index:999;
  p{
    font-size:.7em;
    & + p{
      margin-top:20px;
    }
  }
}

hr{
  margin:26px 0;
  border:0;
  border-top:1px solid white;
  background:transparent;
  width:25%;
  opacity:.1;
}

code{
  color: #ae94c0;
  font-family:Menlo, Monaco, Consolas, 'Courier New', monospace;
  font-size:.9em;
}

.all-background {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  width: 100%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: #010101;
  color:#c0bebe;
}

.solar-syst{
  &:after{
    content:"";
    position:absolute;
    height:2px;
    width:2px;
    top:-2px;
    background:white;
    box-shadow: stars(500, 1800);
    border-radius:100px;
  }
//   background-color: black;
//   color: black;
  margin:0 auto;
  margin-top: 100px;
  padding-top: 600px;

  margin-left: 100px;
  width:100%;
  height:100%;
  position:relative;
  div{
    border-radius:1000px;
    top:50%;
    left:50%;
    position:absolute;
    z-index:999;
    &:not(.sun){
      border: 1px solid rgba(102, 166, 229, 0.12);
      &:before{
        left:50%;
        border-radius:100px;
        content:"";
        position:absolute;
      }
    }
    &:not(.asteroids-belt){
      &:before{
        box-shadow: inset 0 6px 0 -2px rgba(0, 0, 0, 0.25);
      }
    }
  }
}

.sun{
  background:radial-gradient(ellipse at center, #ffd000 1%,#f9b700 39%,#f9b700 39%,#e06317 100%);
  height:$sun;
  width:$sun;
  margin-top: calc(-1 * $sun / 2);
  margin-left: calc(-1 *$sun / 2);
  background-clip: padding-box;
  border:0 !important;
  background-position: -28px -103px;
  background-size: 175%;
  box-shadow: 0 0 10px 2px rgba(255, 107, 0, 0.4), 0 0 22px 11px rgba(255, 203, 0, 0.13);
}

.mercury{
  height: $mercury-orb;
  width: $mercury-orb;
  margin-top: calc(-1 * $mercury-orb / 2);
  margin-left: calc(-1 * $mercury-orb / 2);
  animation: orb revolution(87.5) linear infinite;
  &:before{
    height:$mercury-pl;
    width:$mercury-pl;
    background: #9f5e26;
    margin-top: calc(-1 * $mercury-pl / 2);
    margin-left: calc(-1 * $mercury-pl / 2);
  }
}

.venus{
  height: $venus-orb;
  width: $venus-orb;
  margin-top: calc(-1 * $venus-orb / 2);
  margin-left: calc(-1 * $venus-orb / 2);
  animation: orb revolution(224.7) linear infinite;
  &:before{
    height:$venus-pl;
    width:$venus-pl;
    background:#BEB768;
    margin-top: calc(-1 * $venus-pl / 2);
    margin-left: calc(-1 * $venus-pl / 2);
  }
}

.earth{
  height: $earth-orb;
  width: $earth-orb;
  margin-top: calc(-1 * $earth-orb / 2);
  margin-left: calc(-1 * $earth-orb / 2);
  animation: orb revolution(365.2563) linear infinite;
  &:before{
    height:$earth-pl;
    width:$earth-pl;
    background:#11abe9;
    margin-top: calc(-1 * $earth-pl / 2);
    margin-left: calc(-1 * $earth-pl / 2);
  }
  &:after{
    position: absolute;
    content: "";
    height: 18px;
    width: 18px;
    left: 50%;
    top: 0px;
    margin-left: -9px;
    margin-top: -9px;
    border-radius: 100px;
    box-shadow: 0 -10px 0 -8px grey;
    animation: orb revolution(27.3216) linear infinite;
  }
}
.mars{
  height: $mars-orb;
  width: $mars-orb;
  margin-top: calc(-1 * $mars-orb / 2);
  margin-left: calc(-1 * $mars-orb / 2);
  animation: orb revolution(687) linear infinite;
  &:before{
    height:$mars-pl;
    width:$mars-pl;
    background:#cf3921;
    margin-top: calc(-1 * $mars-pl / 2);
    margin-left: calc(-1 * $mars-pl / 2);
  }
}

.jupiter{
  height: $jupiter-orb;
  width: $jupiter-orb;
  margin-top: calc(-1 * $jupiter-orb / 2);
  margin-left: calc(-1 * $jupiter-orb / 2);
  animation: orb revolution(4331) linear infinite;
  &:before{
    height:$jupiter-pl;
    width:$jupiter-pl;
    background:#c76e2a;
    margin-top: calc(-1 * $jupiter-pl / 2);
    margin-left: calc(-1 * $jupiter-pl / 2);
  }
}
.saturn{
  height: $saturn-orb;
  width: $saturn-orb;
  margin-top: calc(-1 * $saturn-orb / 2);
  margin-left: calc(-1 * $saturn-orb / 2);
  animation: orb revolution(10747) linear infinite;
  &:before{
    height:$saturn-pl;
    width:$saturn-pl;
    background:#e7c194;
    margin-top: calc(-1 * $saturn-pl / 2);
    margin-left: calc(-1 * $saturn-pl / 2);
  }
  &:after{
    position: absolute;
    content: "";
    height: 2.34%; 
    width: 4.676%;
    left: 50%;
    top: 0px;
    transform: rotateZ(-52deg);
    margin-left: -2.3%;
    margin-top: -1.2%;
    border-radius: 50% 50% 50% 50%;
    box-shadow: 0 1px 0 1px #987641, 3px 1px 0 #987641, -3px 1px 0 #987641;
    animation: orb revolution(10747) linear infinite;
    animation-direction: reverse; // compensate to reverse main orbit animation
    transform-origin: 52% 60%;
  }
}

.uranus{
  height: $uranus-orb;
  width: $uranus-orb;
  margin-top: calc(-1 * $uranus-orb / 2);
  margin-left: calc(-1 * $uranus-orb / 2);
  animation: orb revolution(30589) linear infinite;
  &:before{
    height:$uranus-pl;
    width:$uranus-pl;
    background:#b5e3e3;
    margin-top: calc(-1 * $uranus-pl / 2);
    margin-left: calc(-1 * $uranus-pl / 2);
  }
}

.neptune{
  height: $neptune-orb;
  width: $neptune-orb;
  margin-top: calc(-1 * $neptune-orb / 2);
  margin-left: calc(-1 * $neptune-orb / 2);
  animation: orb revolution(59802) linear infinite;
  &:before{
    height:$neptune-pl;
    width:$neptune-pl;
    background:#175e9e;
    margin-top: calc(-1 * $neptune-pl / 2);
    margin-left: calc(-1 * $neptune-pl / 2);
  }
}

.asteroids-belt{
  opacity:.7;
  border-color: transparent !important;
  height: $asteroids-belt-orb;
  width: $asteroids-belt-orb;
  margin-top: calc(-1 * $asteroids-belt-orb / 2);
  margin-left: calc(-1 * $asteroids-belt-orb / 2);
  animation: orb revolution(2191) linear infinite;
  overflow:hidden;
  &:before{
    top:50%;
    height:$asteroids-belt-pl;
    width:$asteroids-belt-pl;
    margin-left: calc(-1 * $asteroids-belt-pl / 2);
    margin-top: calc(-1 * $asteroids-belt-pl / 2);
    background: transparent;
    border-radius:140px !important;
    box-shadow: stars(390, 290, calc(-290/2), -104);
  }
}

.pluto{
  height: $pluto-orb;
  width: $pluto-orb;
  margin-top: calc(-1 * $pluto-orb / 2 + -60px);;
  margin-left: calc(-1 * $pluto-orb / 2 + 70px);
  animation: orb revolution(90580) linear infinite;
  &:before{
    height:$pluto-pl;
    width:$pluto-pl;
    background:#fff;
    margin-top: calc(-1 * $pluto-pl / 2);
    margin-left: calc(-1 * $pluto-pl / 2);
  }
}

.hide{
  display:none;
}
.links{
  margin-top:5px !important;
  font-size:1em !important;
}

@keyframes orb{
  from {
    transform:rotate(0deg)
  }
  to{
    transform:rotate(-360deg)
  }
}

.blink-cursor {
  font-size: 16px;
  color: rgb(255, 255, 255);
  font-family: 'Courier New', Courier, monospace;
  /* 添加闪烁动画 */
  animation: blink 1.5s steps(2, start) infinite;
}

/* 定义闪烁动画 */
@keyframes blink {
  0% {
    opacity: 1;
  }
  // 50% {
  //   opacity: 1;
  // }
  100% {
    opacity: 0;
  }
}
  </style>
