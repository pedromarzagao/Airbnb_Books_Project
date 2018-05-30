import "bootstrap";
import './application.css';
import initMap from '../components/map';
import initDate from '../components/datepickr'



const mapElement = document.getElementById('map');
initMap(mapElement);

const startDateinput = document.getElementById('booking_date_begin');
const endDateinput = document.getElementById('booking_date_end');
initDate(startDateinput, endDateinput);

