`webpack/` hard-coded folder

scripts:
+   create full-access/read-only user and credentials
+   upload/download `webpack/`

hard-coded environment variables names:
+   `AWS_S3_WEBPACK_BUCKET`
+   `AWS_S3_WEBPACK_USER`
+   `AWS_S3_WEBPACK_ACCESS_KEY_ID`
+   `AWS_S3_WEBPACK_SECRET_ACCESS_KEY`

webpack prod config:
```javascript
const output = {
  path: path.resolve('./webpack'),
  filename: "[name]-[hash].js",
  publicPath: 'https://'+process.env.AWS_S3_WEBPACK_BUCKET+'.s3.amazonaws.com/'
}
```
