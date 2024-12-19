import { defineClientConfig } from "vuepress/client";
import HomeSimple from "./components/HomeSimple.vue"
import HomeSimple2 from "./components/HomeSimple2.vue"
import MyHome from "./components/MyHome.vue";
import SolarSystem from "./components/SolarSystem.vue";
import Portrait from "./components/Portrait.vue";
import DeadLine from "./components/DeadLine.vue";
import Theorem from "./components/Theorem.vue";
import Definition from "./components/Definition.vue";


export default defineClientConfig({
  enhance: ({ app, router, siteData }) => {
    app.component("HomeSimple", HomeSimple);
    app.component("HomeSimple2", HomeSimple2);
    app.component("MyHome", MyHome);
    app.component("SolarSystem", SolarSystem);
    app.component("Portrait", Portrait);
    app.component("DeadLine", DeadLine);
    app.component("Theorem", Theorem);
    app.component("Definition", Definition);
  },
  layouts: {
    // 例如，在这里我们将 vuepress-theme-hope 的默认布局更改为 layouts/Layout.vue
    SolarSystem,
    MyHome,
    HomeSimple,
    HomeSimple2,
  },
});