import express, { Request, Response } from 'express';

const port = 5050;
const app = express();

app.get('/some-route', (req: Request, res: Response) => {
  return res.json({
    works: true
  });
});

app.listen(port, () => console.log(`application started listening at port ${port}`));
