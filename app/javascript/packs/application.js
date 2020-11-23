// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import eyeson, { StreamHelpers } from 'eyeson';

eyeson.onEvent(event => {
  if (event.type !== "accept") {
    return;
  }
  // Note: Some iOS devices might require video to have autoplay attribute set.
  let video = document.querySelector("video");
  video.srcObject = event.remoteStream;
  video.play();
});

document.querySelector('button').addEventListener('click', function() {
  eyeson.start(document.querySelector("video").dataset.key);
});
