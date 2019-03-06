import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css';
// <-- you need to uncomment the stylesheet_pack_tag in the layout!
// import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { initMapbox } from '../plugins/init_mapbox';
import { clickDateTab } from '../plugins/tabDate';

import { initialMouse, slideMovementTotal, mouseIsDown, slider, currentMouse, relativeMouse, slidePercent } from './swipebooking';
// import { function, setTimeout } from './circle';

import { loadDynamicBannerText } from '../plugins/validation';

import { removeNavbar } from '../plugins/confirmation';
import { bar, value, ProgressBar, line  } from '../plugins/circle-progress';

const slide = document.querySelector(".slide-text")

removeNavbar();
initMapbox();
clickDateTab();
loadDynamicBannerText();
bar();
value();
ProgressBar();
line();



if (slide) {
  initialMouse();
  slideMovementTotal();
  mouseIsDown();
  slider();
  currentMouse();
  relativeMouse();
  slidePercent();
}

// setTimeout();
