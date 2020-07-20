import * as APIUtil from '../util/api_util';

export const RECEIVE_SEARCH_GIPHYS = 'RECEIVE_SEARCH_GIPHYS';
export const REQUEST_SEARCH_GIPHYS = 'REQUEST_SEARCH_GIPHYS';

export const fetchSearchGiphys = search => dispatch => {
    return APIUtil.fetchSearchGiphys(search)
        .then(giphs => dispatch(receiveSearchGiphys(giphs.data)))
};

export const receiveSearchGiphys = giphs => {
    return {
        type: RECEIVE_SEARCH_GIPHYS,
        giphs
    }
};
