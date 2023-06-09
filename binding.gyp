{
  "targets": [
    {
      "target_name": "fasttext_wrapper",
      "sources": ["src/fasttext_wrapper.cc"],
      "include_dirs": [
        "<!(node -e \"require('nan')\")",
        "libraries/fastText/src"
      ],
      "cflags!": ["-fno-exceptions"],
      "cflags_cc!": ["-fno-exceptions"],
      "libraries": ["-lfasttext", "-lpthread"]
    }
  ]
}