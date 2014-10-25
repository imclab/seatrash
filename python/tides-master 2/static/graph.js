(function basic(container) {
    

    var
    d1 = [
        [0, 3],
        [4, 8],
        [8, 5],
        [9, 13]
    ],
        // First data series
        d2 = [],
        // Second data series
        i, graph;
    // put data into something
    var tideData = [];
    for (i = 0; i < data.data.length; i++) {
        dateStr = data.data[i].t.replace(/-/g, "/");
        recordedTime = new Date(dateStr).getTime(); 
        tideData.push([recordedTime, data.data[i].v]);
    }

    // Generate first data set
    for (i = 0; i < 14; i += 0.5) {
        d2.push([i, Math.sin(i)]);
    }

    // Draw Graph
    graph = Flotr.draw(container, [tideData], {
        xaxis: {
            minorTickFreq: 4,
            mode: 'time'
        },
        grid: {
            minorVerticalLines: true
        }
    });
})(document.getElementById("container"));
