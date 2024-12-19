<template>
  <div class="flex-container" @load="onImagesLoaded">
    <div v-show="loading" class="spinner">
      <p>
        <div class="cube1"></div>
        <div class="cube2"></div>
        Loading...
      </p>
    </div>

    <div class="flex-slide home">
      <div class="flex-title flex-title-home">Home</div>
      <div class="flex-about flex-about-home">
        <p>Click here to navigate to the home section of the website</p>
      </div>
    </div>

    <div class="flex-slide about">
      <div class="flex-title">About</div>
      <div class="flex-about">
        <p>Click here to navigate to the About section of the website</p>
      </div>
    </div>

    <div class="flex-slide work">
      <div class="flex-title">Work</div>
      <div class="flex-about">
        <p>Listing relevant snippets of work:</p>
        <ul>
          <li>First piece of work</li>
          <li>Second piece of work</li>
          <li>Third piece of work</li>
        </ul>
      </div>
    </div>

    <div class="flex-slide contact">
      <div class="flex-title">Contact</div>
      <div class="flex-about">
        <p>Use the contact form below</p>
        <form class="contact-form">
          <p>Email <input type="text" name="email"></p>
          <p>Comment <textarea name="comment" rows="5"></textarea></p>
          <p><input type="submit" value="Send Message"></p>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      loading: true,
    };
  },
  mounted() {
    // Initialize hover effect
    this.initHoverEffects();
  },
  methods: {
    onImagesLoaded() {
      this.loading = false;
    },
    initHoverEffects() {
      const slides = document.querySelectorAll('.flex-slide');
      slides.forEach(slide => {
        slide.addEventListener('mouseenter', () => {
          const title = slide.querySelector('.flex-title');
          const about = slide.querySelector('.flex-about');
          title.style.transform = 'rotate(0deg)';
          title.style.top = '10%';
          about.style.opacity = '1';
        });

        slide.addEventListener('mouseleave', () => {
          const title = slide.querySelector('.flex-title');
          const about = slide.querySelector('.flex-about');
          title.style.transform = 'rotate(90deg)';
          title.style.top = '15%';
          about.style.opacity = '0';
        });
      });
    },
  },
};
</script>

<style lang="scss" scoped>
@import url('https://fonts.googleapis.com/css?family=Raleway');

$defaultSeconds: 3s;

body {
  margin: 0;
  padding: 0;
  font-family: 'Raleway', sans-serif;
}

.flex-container {
  position: absolute;
  height: 100vh;
  width: 100%;
  display: flex;
  overflow: hidden;
  flex-direction: row;
}

.flex-title {
  color: #f1f1f1;
  position: relative;
  font-size: 6vw;
  margin: auto;
  text-align: center;
  transform: rotate(90deg);
  top: 15%;
  transition: all 500ms ease;
}

.flex-about {
  opacity: 0;
  color: #f1f1f1;
  position: relative;
  width: 70%;
  font-size: 2vw;
  padding: 5%;
  top: 20%;
  border: 2px solid #f1f1f1;
  border-radius: 10px;
  line-height: 1.3;
  margin: auto;
  text-align: left;
  transition: all 500ms ease;
}

.flex-slide {
  flex: 1;
  cursor: pointer;
  transition: all 500ms ease;
}

.home {
  background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/769286/lake-macquarie-71208_1920.jpg);
  background-size: cover;
  background-position: center center;
  background-attachment: fixed;
}

.about {
  background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/769286/beach-2089959_1280.jpg);
  background-size: cover;
  background-position: center center;
  background-attachment: fixed;
}

.contact {
  background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/769286/lake-696098_1920.jpg);
  background-size: cover;
  background-position: center center;
  background-attachment: fixed;
}

.work {
  background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/769286/forest-208517_1280.jpg);
  background-size: cover;
  background-position: center center;
  background-attachment: fixed;
}

.spinner {
  position: fixed;
  top: 0;
  left: 0;
  background: #222;
  height: 100%;
  width: 100%;
  z-index: 11;
  margin-top: 0;
  color: #fff;
  font-size: 1em;
}

.cube1, .cube2 {
  background-color: #fff;
  width: 15px;
  height: 15px;
  position: absolute;
  top: 0;
  left: 0;
  animation: sk-cubemove 1.8s infinite ease-in-out;
}

.cube2 {
  animation-delay: -0.9s;
}

@keyframes sk-cubemove {
  25% { transform: translateX(42px) rotate(-90deg) scale(0.5); }
  50% { transform: translateX(42px) translateY(42px) rotate(-180deg); }
  75% { transform: translateX(0px) translateY(42px) rotate(-270deg) scale(0.5); }
  100% { transform: rotate(-360deg); }
}
</style>
