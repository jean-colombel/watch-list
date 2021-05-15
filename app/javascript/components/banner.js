import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Classic", "Thriller", "Comedy", "Fantastic", "Horror"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
