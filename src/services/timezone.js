import moment from 'moment-timezone';
import { getCoordinatesByAddress, getTimezoneByLocation } from './google';

export const getTimeByAddress = async address => {
  const { name: placeName, location } = await getCoordinatesByAddress(address);
  const timezone = await getTimezoneByLocation(location);

  return {
    placeName,
    time: moment().tz(timezone)
  }
}

export default {
  getTimeByAddress
}