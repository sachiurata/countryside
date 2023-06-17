// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

/*global bootstrap*/
document.addEventListener('DOMContentLoaded', () => {
  const carousel = document.querySelector('#carouselExample');
  new bootstrap.Carousel(carousel);
});

//= require jquery3
//= require popper
//= require bootstrap-sprockets