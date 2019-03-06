import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.getElementById('banner-typed-text');
  if (banner) {
    new Typed('#banner-typed-text', {
    strings: ["SESSION VALIDEE"],
    typeSpeed: 10,
    repeat: 1
  });
  };
};

// const
// setTimeout(function () {
//         document.getElementById('foo').style.display='none';
//     }, 10000);


export { loadDynamicBannerText };
