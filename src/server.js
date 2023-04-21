const express = require('express');
const app = express();
const port = process.env.PORT || 8080;
const {embedding} = require('./embedding');

app.use(express.json());
app.use('/',(req,res)=>{res.json({})})
app.post('/embedding/en', async (req, res) => {
  const { word } = req.body;
  if (!word) {
    return res.status(400).send({ error: 'Please provide a word.' });
  }
  try {
    const result = await embedding(word);
    res.send({ embedding: result });
  } catch (error) {
    console.error(error)
    res.status(500).send({ error: 'Error processing your request.' });
  }
});
app.post('/embedding/check', ()=>{
  res.status(200).json({success: true})
})
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
