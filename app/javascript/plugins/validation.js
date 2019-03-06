import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["SESSION VALIDEE"],
    typeSpeed: 10,
    repeat: 1
  });
};

setTimeout(function () {
        document.getElementById('foo').style.display='none';
    }, 10000);


export { loadDynamicBannerText };
