import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
initMapbox();

import { removeNavbar } from '../plugins/confirmation';
removeNavbar();

import { clickDateTab } from '../plugins/tabDate';
clickDateTab();

import { loadDynamicBannerText } from '../plugins/validation';
loadDynamicBannerText();

import {  } from '../plugins/circle-progress';



import { } from './swipebooking';

