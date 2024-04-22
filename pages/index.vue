<template>
    <div class="flex justify-center items-center w-screen h-screen align-middle text-center bg-black text-white">
        <div>
            <h1 class=" text-8xl text-yellow-300  italic ">nest<b class="text-cyan-400 not-italic">Git</b></h1> 
            <div class="type-wrap overflow-hidden">
                <h2 class="text-2xl italic">{{ typewriter }}</h2>
            </div>
            <div class="my-2">
                <p class="text-base">Contact one of our Founders</p>
                <nuxt-link to="https://www.linkedin.com/in/mehdi-harzallah-24a535225/" >> LinkedIn <</nuxt-link>
            </div>
          
       
        </div>
    </div>
</template>
<script setup>
let typewriter= ref('')
const words = ["The next lead of webHosting.", "Step into the Lead."];
let i = 0;
let j = 0;
let currentWord = "";
let isDeleting = false;
function type() {
  currentWord = words[i];
  if (isDeleting) {
    typewriter.value = currentWord.substring(0, j-1);
    j--;
    if (j == 0) {
      isDeleting = false;
      i++;
      if (i == words.length) {
        i = 0;
        
      }
    }
  } else {
    typewriter.value = currentWord.substring(0, j+1);
    j++;
    if (j == currentWord.length) {
      isDeleting = true;
    }
  }
  setTimeout(type, 100);
}

type();
</script>