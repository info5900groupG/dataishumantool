$(function() {

    Morris.Line({ //Area, Bar, Line
        element: 'morris-area-chart',
        data: [{
            year: '2008-8-11',
            headline: 0.031124,
            stock: 1
        }, {
            year: '2008-8-12',
            headline: -0.32799,
            stock: 0
        }, {
            year: '2008-8-13',
            headline: -0.40715,
            stock: 0
        }, {
            year: '2008-8-14',
            headline: -0.20229,
            stock: 1
        }, {
            year: '2008-8-15',
            headline: -0.02436,
            stock: 1
        }],
        xkey: 'year',
        ykeys: ['headline', 'stock'],
        labels: ['Reddit World News Headline', 'DJIA Stock Price Change'],
        pointSize: 2,
        hideHover: 'auto',
        resize: true
    });

    Morris.Donut({
        element: 'morris-donut-chart',
        data: [{
            label: "Download Sales",
            value: 12
        }, {
            label: "In-Store Sales",
            value: 30
        }, {
            label: "Mail-Order Sales",
            value: 20
        }],
        resize: true
    });

    Morris.Bar({
        element: 'morris-bar-chart',
        data: [{
            y: '2006',
            a: 100,
            b: 90
        }, {
            y: '2007',
            a: 75,
            b: 65
        }, {
            y: '2008',
            a: 50,
            b: 40
        }, {
            y: '2009',
            a: 75,
            b: 65
        }, {
            y: '2010',
            a: 50,
            b: 40
        }, {
            y: '2011',
            a: 75,
            b: 65
        }, {
            y: '2012',
            a: 100,
            b: 90
        }],
        xkey: 'y',
        ykeys: ['a', 'b'],
        labels: ['Series A', 'Series B'],
        hideHover: 'auto',
        resize: true
    });
    
});
