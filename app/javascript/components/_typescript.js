import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["BESOIN D'UN NOUVEL ARBRE A CHAT ? ", "TROUVE TON BONHEUR SUR DAYLICAT !"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
