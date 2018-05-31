import "bootstrap";
import './application.css';
import initMap from '../components/map';
import initDate from '../components/datepickr'
import totPrice from '../components/total_price'


const mapElement = document.getElementById('map');
initMap(mapElement);

const startDateinput = document.getElementById('booking_date_begin');
const endDateinput = document.getElementById('booking_date_end');
initDate(startDateinput, endDateinput);

const priceTot = document.querySelector('.price_tag');
totPrice(startDateinput, endDateinput, priceTot);

