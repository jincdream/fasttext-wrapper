const path = require('path');
const { parentPort } = require('worker_threads');
const fasttext = require(path.resolve(__dirname,'./build/Release/fasttext_wrapper'));
const FasttextWrapper = new fasttext.FasttextWrapper();

console.info('load star')
console.info(path.resolve(__dirname,'./models/cc.en.300.bin'))
console.time('load-model');
FasttextWrapper.loadModel(path.resolve(__dirname,'./models/cc.en.300.bin'));
console.timeEnd('load-model');
parentPort.postMessage({
    type: 'loaded',
})

parentPort.on('message', async (data) => {
    let {word, id} = data
    console.log('word:',word)
    console.time(`${word}embedding`);
    const embedding = FasttextWrapper.getEmbedding(word);
    console.timeEnd(`${word}embedding`);
    parentPort.postMessage({
        type: 'embedding',
        data: embedding,
        id
    });
});