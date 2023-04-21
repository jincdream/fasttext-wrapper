#include <nan.h>
#include <string>
#include <vector>
#include <sstream>
#include "fasttext_wrapper.h"

using v8::Array;
using v8::Local;
using v8::Number;
using v8::String;
using v8::Value;

#define __assert_rtn(func, file, line, failedexpr) \
  Nan::ThrowError(Nan::New((std::string(func) + \
                            ", " + file + \
                            ", " + std::to_string(line) + ": " + \
                            failedexpr).c_str()).ToLocalChecked())
class FasttextWrapper : public Nan::ObjectWrap
{
public:
  static NAN_MODULE_INIT(Init)
  {
    v8::Local<v8::FunctionTemplate> tpl = Nan::New<v8::FunctionTemplate>(New);
    tpl->SetClassName(Nan::New("FasttextWrapper").ToLocalChecked());
    tpl->InstanceTemplate()->SetInternalFieldCount(1);

    Nan::SetPrototypeMethod(tpl, "loadModel", LoadModel);
    Nan::SetPrototypeMethod(tpl, "getVector", GetVector);
    Nan::SetPrototypeMethod(tpl, "getSentenceVector", GetSentenceVector);
    Nan::SetPrototypeMethod(tpl, "predict", Predict);
    Nan::SetPrototypeMethod(tpl, "predictProba", PredictProba);
    Nan::SetPrototypeMethod(tpl, "getEmbedding", GetEmbedding);
    constructor().Reset(Nan::GetFunction(tpl).ToLocalChecked());
    Nan::Set(target, Nan::New("FasttextWrapper").ToLocalChecked(),
             Nan::GetFunction(tpl).ToLocalChecked());
  }

private:
  explicit FasttextWrapper() {}
  ~FasttextWrapper() {}

  static NAN_METHOD(New)
  {
    if (info.IsConstructCall())
    {
      FasttextWrapper *obj = new FasttextWrapper();
      obj->Wrap(info.This());
      info.GetReturnValue().Set(info.This());
    }
    else
    {
      const int argc = 1;
      v8::Local<v8::Value> argv[argc] = {info[0]};
      v8::Local<v8::Function> cons = Nan::New(constructor());
      info.GetReturnValue().Set(Nan::NewInstance(cons, argc, argv).ToLocalChecked());
    }
  }

  static NAN_METHOD(LoadModel)
  {
    FasttextWrapper *obj = ObjectWrap::Unwrap<FasttextWrapper>(info.Holder());
    v8::String::Utf8Value str(info.GetIsolate(), info[0]);
    obj->fasttext_instance.loadModel(*str);
  }

  static NAN_METHOD(GetVector)
  {
    FasttextWrapper *obj = ObjectWrap::Unwrap<FasttextWrapper>(info.Holder());
    v8::String::Utf8Value word_str(info.GetIsolate(), info[0]);
    std::string word = std::string(*word_str);
    fasttext::Vector vec(obj->fasttext_instance.getDimension());
    obj->fasttext_instance.getWordVector(vec, word);

    v8::Local<v8::Array> result_list = Nan::New<v8::Array>(vec.size());
    for (size_t i = 0; i < vec.size(); i++)
    {
      Nan::Set(result_list, i, Nan::New<v8::Number>(vec[i]));
    }

    info.GetReturnValue().Set(result_list);
  }

  static NAN_METHOD(GetSentenceVector)
  {
    FasttextWrapper *obj = ObjectWrap::Unwrap<FasttextWrapper>(info.Holder());
    v8::String::Utf8Value sentence_str(info.GetIsolate(), info[0]);
    std::string sentence = std::string(*sentence_str);
    fasttext::Vector vec(obj->fasttext_instance.getDimension());
    std::istringstream in(sentence);
    obj->fasttext_instance.getSentenceVector(in, vec);

    v8::Local<v8::Array> result_list = Nan::New<v8::Array>(vec.size());
    for (size_t i = 0; i < vec.size(); i++)
    {
      Nan::Set(result_list, i, Nan::New<v8::Number>(vec[i]));
    }
    info.GetReturnValue().Set(result_list);
  }

  static NAN_METHOD(Predict)
  {
    FasttextWrapper *obj = ObjectWrap::Unwrap<FasttextWrapper>(info.Holder());
    v8::String::Utf8Value sentence_str(info.GetIsolate(), info[0]);
    std::string sentence = std::string(*sentence_str);
    int32_t k = info[1]->IsUndefined() ? 1 : Nan::To<int32_t>(info[1]).FromJust();
    std::vector<std::pair<fasttext::real, std::string>> predictions;
    std::istringstream in(sentence);
    float threshold = 0.0;
    obj->fasttext_instance.predictLine(in, predictions, k, threshold);

    v8::Local<v8::Array> result_list = Nan::New<v8::Array>(predictions.size());
    for (size_t i = 0; i < predictions.size(); i++)
    {
      Nan::Set(result_list, i, Nan::New(predictions[i].second).ToLocalChecked());
    }

    info.GetReturnValue().Set(result_list);
  }

  static NAN_METHOD(PredictProba)
  {
    FasttextWrapper *obj = ObjectWrap::Unwrap<FasttextWrapper>(info.Holder());
    v8::String::Utf8Value sentence_str(info.GetIsolate(), info[0]);
    std::string sentence = std::string(*sentence_str);
    int32_t k = info[1]->IsUndefined() ? 1 : Nan::To<int32_t>(info[1]).FromJust();
    std::vector<std::pair<fasttext::real, std::string>> predictions;
    std::istringstream in(sentence);
    float threshold = 0.0;
    obj->fasttext_instance.predictLine(in, predictions, k, threshold);

    v8::Local<v8::Array> result_list = Nan::New<v8::Array>(predictions.size());
    for (size_t i = 0; i < predictions.size(); i++)
    {
      v8::Local<v8::Object> prediction = Nan::New<v8::Object>();
      Nan::Set(prediction, Nan::New("label").ToLocalChecked(), Nan::New(predictions[i].second).ToLocalChecked());
      Nan::Set(prediction, Nan::New("probability").ToLocalChecked(), Nan::New(predictions[i].first));
      Nan::Set(result_list, i, prediction);
    }

    info.GetReturnValue().Set(result_list);
  }

  static NAN_METHOD(GetEmbedding) {
    FasttextWrapper *fasttext = Nan::ObjectWrap::Unwrap<FasttextWrapper>(info.Holder());

    v8::String::Utf8Value word(info.GetIsolate(), info[0]);
    std::string word_str = std::string(*word);

    fasttext::Vector vec(fasttext->fasttext_instance.getDimension());
    fasttext->fasttext_instance.getWordVector(vec, word_str);

    v8::Local<v8::Array> result_list = Nan::New<v8::Array>(vec.size());
    for (size_t i = 0; i < vec.size(); i++)
    {
      Nan::Set(result_list, i, Nan::New<v8::Number>(vec[i]));
    }

    info.GetReturnValue().Set(result_list);
  }

  static inline Nan::Persistent<v8::Function> &constructor()
  {
    static Nan::Persistent<v8::Function> my_constructor;
    return my_constructor;
  }

  fasttext::FastText fasttext_instance;
};

NODE_MODULE(fasttext_wrapper, FasttextWrapper::Init)
