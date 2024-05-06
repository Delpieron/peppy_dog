'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"android-icon-144x144.png": "bc06ccd6633fbd52b28ece72bb514e3b",
"android-icon-192x192.png": "7f3a703dd5fcf7819bcf1482d5854642",
"android-icon-36x36.png": "de4df6645cca170c94dfb29962e9ebe8",
"android-icon-48x48.png": "b2afa99ee72490b5b9daf4f0d58ebe7a",
"android-icon-72x72.png": "c045428d6a3bf148aa9c89e18cd9ded7",
"android-icon-96x96.png": "9f638a45da8ac3004f9c44f941e48a54",
"apple-icon-114x114.png": "a07cbe9e7f705b5b1d73a68bcffb167e",
"apple-icon-120x120.png": "0d7478c8d11c3d9103795e786d84e48f",
"apple-icon-144x144.png": "bc06ccd6633fbd52b28ece72bb514e3b",
"apple-icon-152x152.png": "329ef3855163fe62f6c70f3c2890c731",
"apple-icon-180x180.png": "058b05ce166c04a020db09631db00a56",
"apple-icon-57x57.png": "335f5148327b1df63a2108d17fb7502d",
"apple-icon-60x60.png": "c455f606c0f16e658b971f31184e778b",
"apple-icon-72x72.png": "c045428d6a3bf148aa9c89e18cd9ded7",
"apple-icon-76x76.png": "e1e5c7fc6af59e7487809bf30f3209e8",
"apple-icon-precomposed.png": "a65fd0bba1c40f4bf5c50d2b0b66f187",
"apple-icon.png": "a65fd0bba1c40f4bf5c50d2b0b66f187",
"assets/AssetManifest.bin": "5cbe05091e0ad18541a149a2067df5d7",
"assets/AssetManifest.bin.json": "fc00f8e4fde77de49e74b7801e276ad9",
"assets/AssetManifest.json": "2bab39853ccc854eeddaaa7be266d0bf",
"assets/assets/home_page/Group40.png": "723da943bc47852c648b2e3b9b38f05a",
"assets/assets/home_page/Group40.webp": "e24dfa1cf0f7c13f39ae935d29737679",
"assets/assets/home_page/Group40big.png": "293f191bc39ed8507d8e9110b6dfe4dc",
"assets/assets/home_page/Group40big.webp": "4c8497cff4759461a9c24e8d0e65c138",
"assets/assets/home_page/lewe_1.png": "783392f88b5b0c93c0980faa9e1c7fff",
"assets/assets/home_page/lewe_1.webp": "33fe5d4c45abf961b0dd348be098a63a",
"assets/assets/home_page/lewe_2.png": "c492532ad15e6e4365e4e8b778dd10f0",
"assets/assets/home_page/lewe_2.webp": "7697481093df29f7de9cfba4091d71a6",
"assets/assets/home_page/logo.png": "58904ebd894a5f9e77dea7ed3d9d72a6",
"assets/assets/home_page/logo.webp": "c9563c5bbfea1ffce69b7f0ed54a12f9",
"assets/assets/home_page/pd_008.png": "d7cc82bad468b8191ead5453ab9053d2",
"assets/assets/home_page/pd_008.webp": "94935409c09d4c6abc1d7bedffc7e766",
"assets/assets/home_page/pd_009.png": "27633ff5cd39b717a2a6b976be5af575",
"assets/assets/home_page/pd_009_1.png": "fe2e6d499efc63a8dcbf370e9106c5f5",
"assets/assets/home_page/pd_009_1.webp": "cd2ecac82fbf4d4eaf3dbb5bd82c2008",
"assets/assets/home_page/prawe.png": "543815659684e2c3738e41dbf0f57aac",
"assets/assets/home_page/prawe.webp": "aa07872fa32be0a207b10c49641e5510",
"assets/assets/know_us/pd_001.png": "2e75825da62e0aec2f99c59961f377e4",
"assets/assets/know_us/pd_001.webp": "575d9d6b2389680c65f44b092311c6b0",
"assets/assets/know_us/title1.png": "e7676847bb508ee2e4288bac3356e741",
"assets/assets/know_us/title1.webp": "d08a3a65ccf085fac7a4616218eee016",
"assets/assets/know_us/title2.png": "dd4b7454c75e2b3a28fb29d3e4fa9740",
"assets/assets/know_us/title2.webp": "1db7c3f4567c57f8aff94fb1070248ca",
"assets/assets/know_us/title3.png": "6a8e58a141fce329d2864f2fbeff9672",
"assets/assets/know_us/title3.webp": "92f317eb2db3fff19f5525c8925e19db",
"assets/assets/products/pd_011.png": "d71b67c46dcceeed79479374f6e07d02",
"assets/assets/products/pd_011.webp": "13eb4f06e63f0ee1f1366e4f7822be38",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/NOTICES": "d003aa6deb935c6b2393214bc5d2c744",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"browserconfig.xml": "653d077300a12f09a69caeea7a8947f8",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon-16x16.png": "f40166ca520c486a2af0058e0802d98d",
"favicon-32x32.png": "b3b7712b9797242a81a6f11585118f4b",
"favicon-96x96.png": "9f638a45da8ac3004f9c44f941e48a54",
"favicon.ico": "fac348c68a7468898867bcebf5f280ce",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "3f274ff6c818f99340b6b077b885973b",
"/": "3f274ff6c818f99340b6b077b885973b",
"main.dart.js": "e685a28a76b191c579dc5f250b5b4d75",
"manifest.json": "13d031598060ea490f3b1128c95d54bd",
"ms-icon-144x144.png": "bc06ccd6633fbd52b28ece72bb514e3b",
"ms-icon-150x150.png": "537dcd9bfc7ad29544ce6e19008689a9",
"ms-icon-310x310.png": "8f87369403ae347825b6251eeaffd0f3",
"ms-icon-70x70.png": "d7c0a502307c7af50551a39f56011a5f",
"robots.txt": "cd9cd94aaa699e0a16e692b6bb16f672",
"version.json": "a5f578cfcb618f1b4f065f1fde43573b"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
