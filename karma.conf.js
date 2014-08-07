module.exports = function (config) {
    config.set({
        basePath: '.',
        frameworks: ['dart-unittest'],
        files: [
            'test/*.dart',
            'packages/browser/dart.js',
            {
                pattern: '**/*.dart',
                watches: true,
                included: false,
                served: true
            }
        ],
        autoWatch: true,
        captureTimeout: 5000,
        plugins: ['karma-dart']
    });
}