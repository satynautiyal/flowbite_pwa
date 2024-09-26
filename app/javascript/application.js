// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import 'flowbite';
// import "flowbite/dist/flowbite.turbo.js";
import 'flowbite-datepicker';
// import 'flowbite/dist/datepicker.turbo.js';

document.addEventListener("DOMContentLoaded", function () {
    if (navigator.serviceWorker) {
      if (navigator.serviceWorker.controller) {
        // If the service worker is already running, skip to state change
        stateChange();
      } else {
        // Register the service worker and wait for it to become active
        navigator.serviceWorker
          .register("/service-worker.js", { scope: "./" })
          .then(function (reg) {
            console.log("[Companion]", "Service worker registered!");
            console.log(reg);
          });
  
        navigator.serviceWorker.addEventListener("controllerchange", controllerChange);
      }
    }
  
    function controllerChange(event) {
      if (navigator.serviceWorker.controller) {
        navigator.serviceWorker.controller.addEventListener("statechange", stateChange);
      }
    }
  
    function stateChange() {
      // Perform any visual manipulations here
      console.log("Service worker state changed.");
    }
});