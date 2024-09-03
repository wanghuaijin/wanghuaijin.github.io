import { defineClientConfig } from "vuepress/client";
import SolarSystem from "./components/SolarSystem.vue";
import Portrait from "./components/Portrait.vue";
import DeadLine from "./components/DeadLine.vue";


export default defineClientConfig({
  enhance: ({ app, router, siteData }) => {
    app.component("SolarSystem", SolarSystem);
    app.component("Portrait", Portrait);
    app.component("DeadLine", DeadLine);
  },
  layouts: {
    // 例如，在这里我们将 vuepress-theme-hope 的默认布局更改为 layouts/Layout.vue
    SolarSystem,
  },
});