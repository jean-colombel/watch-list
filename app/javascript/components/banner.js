import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Classic", "Superhero", "Drama", "Comedy", "Thriller"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
