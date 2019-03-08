import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.getElementById('banner-typed-text');
  if (banner) {
    new Typed('#banner-typed-text', {
    strings: ["SESSION VALIDEE"],
    typeSpeed: 100,
    repeat: 1
  });
  };
};

// setTimeout(function () {
//         document.querySelector('.body-validation').style.display='none';
//     }, 10000);


export { loadDynamicBannerText };
