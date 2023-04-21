{
  "targets": [
    {
      "target_name": "fasttext_wrapper",
      "sources": ["fasttext_wrapper.cc"],
      "include_dirs": [
        "<!(node -e \"require('nan')\")",
        "<!(node -p \"require('path').join(__dirname, '../libraries/fastText/src')\")"
      ],
      "cflags!": ["-fno-exceptions"],
      "cflags_cc!": ["-fno-exceptions"],
      "libraries": ["-lfasttext", "-lpthread"]
    }
  ]
}