<template>
  <div class="reward-container">
    <p>{{ rewardText }}</p>
    <div class="qrcode-container">
      <div v-for="qrcode in qrcodes" :key="qrcode.name" class="qrcode">
        <p>{{ qrcode.name }}</p>
        <img :src="qrcode.url" :alt="qrcode.name" />
      </div>
    </div>
  </div>
</template>

<script setup>
import { defineProps } from 'vue';

const props = defineProps({
  rewardText: {
    type: String,
    default: '感谢您的支持！',
  },
  qrcodes: {
    type: Array,
    default: () => [
      {
        name: '微信',
        url: '/images/wechat.png',
      },
      {
        name: '支付宝',
        url: '/images/alipay.png',
      },
    ],
  },
});
</script>

<style scoped>
.reward-container {
  text-align: center;
  margin-top: 2rem;
}

.qrcode-container {
  display: flex;
  justify-content: center;
  gap: 2rem;
}

.qrcode img {
  max-width: 150px;
  height: auto;
}
</style>
