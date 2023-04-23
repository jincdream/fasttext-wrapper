const path = require('path');
const { parentPort } = require('worker_threads');
console.log(path.resolve(__dirname,'../build/Release/fasttext_wrapper'),'22')
const fasttext = require(path.resolve(__dirname,'../build/Release/fasttext_wrapper'));
const FasttextWrapper = new fasttext.FasttextWrapper();
const model = path.resolve(__dirname,'./models/'+process.env.MODEL_NAME)
console.info('load star')
console.info(model)
console.time('load-model');
FasttextWrapper.loadModel(model);
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