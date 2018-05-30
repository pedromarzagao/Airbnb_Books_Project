import "bootstrap";
import './application.css';
import initMap from '../components/map';
import initDate from '../components/datepickr'



const mapElement = document.getElementById('map');
initMap(mapElement);

const startDateinput = document.getElementById('crawl_start_date');
const endDateinput = document.getElementById('crawl_end_date');
initDate(startDateinput, endDateinput);

