if (!process.env.GOOGLE_API_KEY) {
  throw new Error('Google API key token not found, please include it as a GOOGLE_API_KEY environment variable')
}

import googleMaps from '@google/maps';

const googleMapsClient = googleMaps.createClient({
  key: process.env.GOOGLE_API_KEY,
  Promise: global.Promise
});

export const getTimezoneByLocation = async location => {
  const result = await googleMapsClient.timezone({
    location,
    timestamp: Date.now() / 1000
  })
  .asPromise()
  .then(resp => resp.json);

  return result.timeZoneId;
}

export const getCoordinatesByAddress = async address => {
  const results = await googleMapsClient.geocode({ address })
    .asPromise()
    .then(resp => resp.json)
    .then(json => json.results);

    if (!results.length) {
      throw new Error('I couldn\'t find that place.');
    }

    const { formatted_address: name, geometry } = results[0];
    const { lat, lng } = geometry.location;

    return {
      name,
      location: [lat, lng]
    }
}

export default googleMapsClient;
