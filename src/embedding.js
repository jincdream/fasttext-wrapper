const path = require('path');
const { Worker, isMainThread, parentPort } = require('worker_threads');

const worker = new Worker(path.resolve(__dirname,'./worker'));

let messageCallback = {};
let workerLoaded = false;

worker.on('message', (event) => {
  const { type, data, id } = event

  if (type === 'loaded') {
    workerLoaded = true;
  } else if (messageCallback[id]) {
    const callback = messageCallback[id];
    callback(type, data);
    delete messageCallback[id];
  }
});

function handleMessage(type, data) {
  return new Promise((resolve) => {
    if (type === 'embedding') {
      resolve(data);
      // worker.terminate();
    }
  });
}

function generateRequestId() {
  return `${Date.now()}-${Math.random().toString(36).substr(2, 6)}`;
}

exports.embedding = async function embedding(word) {
  if (!workerLoaded) {
    await new Promise((resolve) => {
      const checkLoaded = () => {
        if (workerLoaded) {
          resolve();
        } else {
          setTimeout(checkLoaded, 100);
        }
      };
      checkLoaded();
    });
  }

  return new Promise((resolve) => {
    const requestId = generateRequestId();
    messageCallback[requestId] = (type, data) => {
      handleMessage(type, data).then((result) => {
      console.log(`Embedding for "${word}":`, data.length);
        resolve(result);
      });
    };
    worker.postMessage({ word, id: requestId });
  });
}