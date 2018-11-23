# Storage collision PoC

Simple proof-of-concept on how to exploit storage collision in smart contracts that do not implement proxy patterns with all required safety checks.

To read more about proxy patterns and the storage collision vulnerability, you can refer to [ZeppelinOS docs](https://github.com/zeppelinos/zos/blob/master/packages/docs/docs/docs/pattern.md#unstructured-storage-proxies).

## Instructions
1. Install dependencies with `npm install`
2. Run exploit with `npm test`
