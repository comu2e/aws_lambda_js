exports.handler = async (event) => {
  const result = Math.floor(Math.random() * 2);
  const statusCode = result ? 200 : 500;
  const body = result ? 'Success' : 'Internal Server Error...';
  const response = {
    statusCode,
    body: JSON.stringify(body),
  };
  return response;
}