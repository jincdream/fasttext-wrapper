{
  "targets": [
    {
      "target_name": "fasttext_wrapper",
      "sources": ["fasttext_wrapper.cc"],
      "include_dirs": [
        "<!(node -e \"require('nan')\")",
      ],
      "cflags!": ["-fno-exceptions"],
      "cflags_cc!": ["-fno-exceptions"],
      "libraries": ["-L../libraries/fastText/build"],
      "ldflags": ["-lfasttext"]
    }
  ]
}