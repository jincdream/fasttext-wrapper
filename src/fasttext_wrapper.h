#ifndef FASTTEXT_WRAPPER_H
#define FASTTEXT_WRAPPER_H

#include <nan.h>
#include "../libraries/fastText/src/fasttext/fasttext.h"

// class FasttextWrapper : public Nan::ObjectWrap {
//  public:
//   static void Init(v8::Local<v8::Object> exports);
//   FasttextWrapper();

//  private:
//   static Nan::Persistent<v8::Function> constructor;
//   std::unique_ptr<fasttext::FastText> fasttext_instance;

//   static NAN_METHOD(New);
//   static NAN_METHOD(LoadModel);
//   static NAN_METHOD(GetEmbedding);
//   static NAN_METHOD(GetSentenceVector);
//   static NAN_METHOD(Predict);
//   static NAN_METHOD(PredictProba);
// };

#endif  // FASTTEXT_WRAPPER_H
