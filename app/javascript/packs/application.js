import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css';
// <-- you need to uncomment the stylesheet_pack_tag in the layout!
// import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { initMapbox } from '../plugins/init_mapbox';
import { clickDateTab } from '../plugins/tabDate';

initMapbox();

import { initialMouse, slideMovementTotal, mouseIsDown, slider, currentMouse, relativeMouse, slidePercent } from './swipebooking';

initialMouse();
slideMovementTotal();
mouseIsDown();
slider();
currentMouse();
relativeMouse();
slidePercent();
clickDateTab();
