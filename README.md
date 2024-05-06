# RecastCLI
![](https://user-images.githubusercontent.com/7625588/36931426-d560d6aa-1eef-11e8-96a2-14812f7994a3.png)

A command line tools to build navigation mesh for game, which means you can automatically generate navigation mesh on server or localhost in pipeline.

> Based on [recastnavigation](https://github.com/recastnavigation/recastnavigation) under ZLib license

# Nodejs addon

## Building (`nodejs` branch)

```shell
$ npm install && npm run build


$ npm install --python=python2.7 && npm run build --python=python2.7


g++: error: unrecognized command line option ‘-std=gnu++14’
这个错误很明显了，g++版本不够，在stackoverfow上，得知-std=c++14需要g++5.2以上，而centos默认的g++只有4.8.5。
```

## Usage

```js
const recast = require('./build/Release/RecastCLI');

recast.loadFile('myfile.obj');
recast.loadContent('v -0.5 0 0.5@v -0.5 0 -0.5@...f 27 26 25@f 28 26 27@');
recast.loadArray(new Float32Array(position), new Int32Array(index))

recast.build(cellSize, cellHeight, agentHeight, agentRadius, agentMaxClimp, agentMaxSlope); // return string

recast.save("navmesh.obj");
```

----
# Command line tools

At master branch

## Building

![](https://user-images.githubusercontent.com/7625588/36931376-1824eb9e-1eef-11e8-84f6-02b93cfce723.png)

## Usage

```shell
$ ./RecastCLI nav_test.obj 0 0 0 0 0 0 0 0 0 0 0 0 0 > navmesh.obj
```
 - Running at debug mode
 > Toggle with macro `#define DEBUG`
![](https://user-images.githubusercontent.com/7625588/37192900-ac44b93c-23a2-11e8-8487-92699f0ecb3c.png)

### Order

 - cellSize
 - cellHeight
 - agentHeight
 - agentRadius
 - agentMaxClimp
 - agentMaxSlope
 - regionMinSize
 - regionMergeSize
 - edgeMaxLen
 - edgeMaxError
 - vertsPerPoly
 - detailSampleDist
 - detailSampleMaxErro


***Powered by cafe team***





