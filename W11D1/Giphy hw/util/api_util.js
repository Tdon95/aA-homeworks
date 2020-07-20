export const fetchSearchGiphys = search => (
    $.ajax({
        method: 'GET',
        url: `http://api.giphy.com/v1/gifs/search?q=${search}&api_key=dc6zaTOxFJmzC&limit=2`
    })
);
