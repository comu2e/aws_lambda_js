import * as lambda from 'aws-lambda';

export const handler = (
  event: any,
  context: lambda.Context,
  callback: lambda.Callback
) => {
  const response = {
    statusCode: 200,
    body: JSON.stringify({
      message: 'This is a lambda 2'
    })
  };

  callback(null, response);
};