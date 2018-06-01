import "bootstrap";
import './application.css';
import initMap from '../components/map';
import initMapShow from '../components/mapshow'
import initDate from '../components/datepickr'
import totPrice from '../components/total_price'

const indexPage = document.querySelector('.books.index');
if (indexPage) {
  const mapElement = document.getElementById('map');
  initMap(mapElement);
}

const showPage = document.querySelector('.books.show');
if (showPage) {
  const mapElement = document.getElementById('map-show');
  initMapShow(mapElement);
}


const startDateinput = document.getElementById('booking_date_begin');
const endDateinput = document.getElementById('booking_date_end');
initDate(startDateinput, endDateinput);

const priceTot = document.querySelector('.price_tag');
totPrice(startDateinput, endDateinput, priceTot);

