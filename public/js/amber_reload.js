/**
 * Allows to reload the browser when the server is up again
 */
function tryReload() {
    var request = new XMLHttpRequest();
    request.open('GET', window.location.href, true);
    request.onreadystatechange = function() {
        if (request.readyState == 4) {
            if (request.status == 0) {
                setTimeout(function() {
                    tryReload();
                }, 1000)
            } else {
                window.location.reload();
            }
        }
    };
    request.send();
}

if ('WebSocket' in window) {
    (function() {
        var refreshCSS = function() {
            var sheets = [].slice.call(document.getElementsByTagName('link'));
            var head = document.getElementsByTagName('head')[0];
            for (var i = 0; i < sheets.length; ++i) {
                var elem = sheets[i];
                var rel = elem.rel;
                if (elem.href && typeof rel != 'string' || rel.length == 0 || rel.toLowerCase() == 'stylesheet') {
                    head.removeChild(elem);
                    var url = elem.href.replace(/(&|\\?)_cacheOverride=\\d+/, '');
                    elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
                    head.appendChild(elem);
                }
            }
        }
        var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
        var address = `${protocol}${window.location.host}/client-reload`;
        var socket = new WebSocket(address);
        socket.onmessage = (msg) => {
            if (msg.data == 'reload') {
                window.location.reload();
            } else if (msg.data == 'refreshcss') {
                refreshCSS();
            }
        };
        socket.onclose = function() {
            tryReload();
        }
    })();
}
