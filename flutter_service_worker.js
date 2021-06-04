'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "1206e9c6fea1ba09eb4ac299068f026e",
"assets/assets/files/Holy-Quran-in-Arabic-Language.pdf": "6309277a726ec7037be5d68a18591422",
"assets/assets/files/quran%2520english.pdf": "1cb1b9b80dc1f71e0b6544fe5b14c2e9",
"assets/assets/files/quran%2520urdu.pdf": "05c0a74895f7617ac56aeb1a2c5f14d7",
"assets/assets/files/yassarnal%2520quran.pdf": "51bd915840aaf4f10d1df528f3bcf38d",
"assets/assets/images/audio.jpg": "da2a2e3730db578cdaa4c9374aeb2ebc",
"assets/assets/images/border01.jpg": "2c04803db9c62ceaa3237e0577f03ac6",
"assets/assets/images/border1.jpg": "a0d176d1c64a9f7586d496c757406eca",
"assets/assets/images/home.jpg": "7d7bd04c531790314d5c84988db774fb",
"assets/assets/images/logos/allah.png": "23662448888ef4893af14a9e4908deee",
"assets/assets/images/logos/calendar.png": "6e6515fcb63a4f9d609e56db6c826249",
"assets/assets/images/logos/dua.png": "074a337251cae1944c3d75abc6f6111b",
"assets/assets/images/logos/hadith.png": "21bf7d6e53fd29baea8a0a55e1005a25",
"assets/assets/images/logos/kalima.png": "dabcc368bcf80875fdcc1ab13788e934",
"assets/assets/images/logos/namaztime.png": "62e4777642b1ff1c46c85c782629d99d",
"assets/assets/images/logos/quran.png": "61cece73eab9211dcac624f191a81d95",
"assets/assets/images/logos/shahada.png": "20973b99a71f2d8649b94b9dc5851d95",
"assets/assets/images/logos/tasbih.png": "310e2ec4b46050f42350f8d5d45a3a98",
"assets/assets/images/namazimage.png": "ef9005eddda34fef9fe9bd2d453b8da1",
"assets/assets/images/names/name1.png": "91122b68c4b0c296097e8a6c3bf4b3f9",
"assets/assets/images/names/name10.png": "04d70ffe2e46c68d2989894bac54639e",
"assets/assets/images/names/name11.png": "a8446941ecb8c77c532ff9f4ebdb4675",
"assets/assets/images/names/name12.png": "95675309b8c4009002cc9f68118e3682",
"assets/assets/images/names/name13.png": "86a4529ff8c89dc0b44e31c3b347a258",
"assets/assets/images/names/name14.png": "1f95fd0a64bd2b0328da3c56d83da41f",
"assets/assets/images/names/name15.png": "e245b0ecac0cc2d6c64b096cdb442d53",
"assets/assets/images/names/name16.png": "2190b63168221b11ff68751a1a1a0aff",
"assets/assets/images/names/name17.png": "772f3442f3f6c1b4f22a6107c17797e5",
"assets/assets/images/names/name18.png": "46582d843b075e79704b1b8cc40a27d2",
"assets/assets/images/names/name19.png": "3bda689bf0bc8715d9a24bbacfa8ed8e",
"assets/assets/images/names/name2.png": "cfb585c7382d8e72268c5ef9ee1da27b",
"assets/assets/images/names/name20.png": "9bfb0e51949e037d6b87c40d239efb21",
"assets/assets/images/names/name21.png": "8553064cddbaa989bc69ae4d2bd5038f",
"assets/assets/images/names/name22.png": "01c5f45fb1ff064c64047a79ac3d8cf9",
"assets/assets/images/names/name23.png": "0ffc7435a33b527311ec77e2f9671901",
"assets/assets/images/names/name24.png": "12ee0ddcf709e1cb56f34fc70b02b2fe",
"assets/assets/images/names/name25.png": "d4be99edd70f8ddae58784c3b9e155f0",
"assets/assets/images/names/name26.png": "6626de8c8f4fd6856afef2cbf98e303c",
"assets/assets/images/names/name27.png": "43620729ca32a426a270f5ac41adaae5",
"assets/assets/images/names/name28.png": "e71078791020ce2ad8af3ae54d84b47e",
"assets/assets/images/names/name29.png": "7ec4919ff4ba9df9a302b0b308bcb8de",
"assets/assets/images/names/name3.png": "5997be9ac5718cae3cb368ecb3d86542",
"assets/assets/images/names/name30.png": "de7d32e87f7707ca6f8192ff4b3f3ccb",
"assets/assets/images/names/name31.png": "fecb0a0e76799e293980e7f40859bd79",
"assets/assets/images/names/name32.png": "5d5d9ad04ac5fbdcdfae39001ed15d58",
"assets/assets/images/names/name33.png": "07d98c92a22e6e3e0aec57ab1e7172a0",
"assets/assets/images/names/name34.png": "a46f05ce058cfac48996c133554152e6",
"assets/assets/images/names/name35.png": "809ff1c27af0a95959beb9dcaa65d9cf",
"assets/assets/images/names/name36.png": "27a71ef97925a88b74ae3d9330c916d7",
"assets/assets/images/names/name37.png": "282eea87db3fe2db0b33bd4a8d10c618",
"assets/assets/images/names/name38.png": "d4460eab80bffd298b5d53cf45cc2a31",
"assets/assets/images/names/name39.png": "8d90aeecec3d1e94b9f0fc314bb7bd44",
"assets/assets/images/names/name4.png": "027755447bbf52aaaf081716f8b5be05",
"assets/assets/images/names/name40.png": "3054a26ea959db75a880abce6618f623",
"assets/assets/images/names/name41.png": "68ce43ff47fb27480712c1e205ee26bc",
"assets/assets/images/names/name42.png": "ec722f0984ca124186c178b127296733",
"assets/assets/images/names/name43.png": "0bde135835fcf9d871b384dbaaa84b1b",
"assets/assets/images/names/name44.png": "485039fac7786afe66d3eac7fc8aaf0f",
"assets/assets/images/names/name45.png": "743761ca999d910bf28de15dd6b8d87d",
"assets/assets/images/names/name46.png": "07b59642cd6c96e8f385df81526de49f",
"assets/assets/images/names/name47.png": "adf55308846f35aae312836b6b7e8a65",
"assets/assets/images/names/name48.png": "8a0c0555689c33a4adc565572c021cc7",
"assets/assets/images/names/name49.png": "6ed6a236ac9eaebe149cf09f5735800f",
"assets/assets/images/names/name5.png": "989b71b7a8e3782e26c173e4bcc2da60",
"assets/assets/images/names/name50.png": "933300af8822826c737e95c29b68a5a5",
"assets/assets/images/names/name51.png": "810f0b291fd2c3f45f6682cbda502bcd",
"assets/assets/images/names/name52.png": "e9694c45a91949f3c7df89637f77dc20",
"assets/assets/images/names/name53.png": "136a1ffd44bb1e27c26402a5aec85445",
"assets/assets/images/names/name54.png": "eb3b751baa7462321420ac41d7879cdd",
"assets/assets/images/names/name55.png": "cf8aabbacb3a308a68cadae161752a0c",
"assets/assets/images/names/name56.png": "619b847fbccdf7b2456a59e7344d8bce",
"assets/assets/images/names/name57.png": "8628d535ba6f2d0390cde7944a8672a4",
"assets/assets/images/names/name58.png": "579e944aa22adf3096fe6bac12593f95",
"assets/assets/images/names/name59.png": "6c51106ce8db818a701d6aad5d96f58e",
"assets/assets/images/names/name6.png": "b4998bea87b61b76184838d5cd9d7fd6",
"assets/assets/images/names/name60.png": "565d8b6bf3a77f8244e13b22fde20e4c",
"assets/assets/images/names/name61.png": "296d44bbfe3e3fcb53c933b1f739c734",
"assets/assets/images/names/name62.png": "926d6ed5393dec853063cb33a0ec049e",
"assets/assets/images/names/name63.png": "f69ed9920f2005ad077f49d1aa467211",
"assets/assets/images/names/name64.png": "8d603c11f23c0bcd03186973d146c538",
"assets/assets/images/names/name65.png": "946bc8376787cd55d7fb124746c48865",
"assets/assets/images/names/name66.png": "43dd7783eeefc26fb1eeb5ebb2bbd8ea",
"assets/assets/images/names/name67.png": "f3f89299e3876f2a9bfde67560630f86",
"assets/assets/images/names/name68.png": "452bae793af3bb57514e77f76a7fe83a",
"assets/assets/images/names/name69.png": "6f5481537fddeef0165a69f04ccf82a5",
"assets/assets/images/names/name7.png": "1a2fee4e47983caeb64ffb706e36b591",
"assets/assets/images/names/name70.png": "7a242e60fa741157423a33d4c907f9a9",
"assets/assets/images/names/name71.png": "e247e55ae10d9057cb8f47d1f47df013",
"assets/assets/images/names/name72.png": "93b4235b04cdc1302308d17769ffcf33",
"assets/assets/images/names/name73.png": "dbfe3f9951eea3e5f6cd6ddb4913c26e",
"assets/assets/images/names/name74.png": "9bf8f707b803ca3de33fd9a844dccf6f",
"assets/assets/images/names/name75.png": "00470407cf9710f40109676ebf2da7c5",
"assets/assets/images/names/name76.png": "6b407cd4a1191dcb7129e6f9b5ab42c3",
"assets/assets/images/names/name77.png": "0f376d1297146bcecfd4d221b5a123c3",
"assets/assets/images/names/name78.png": "4e80b1933a3ec83072fd3dff0a256866",
"assets/assets/images/names/name79.png": "cf2d3ff7b2a49cc196b4a9d416467bec",
"assets/assets/images/names/name8.png": "5f440157b2487fe4c1f4186df51220cc",
"assets/assets/images/names/name80.png": "5e872a83652f61eb98f1d2c70e1fb3b5",
"assets/assets/images/names/name81.png": "5ef448997b78f75d21cb15d86ab6f42b",
"assets/assets/images/names/name82.png": "ee4d0d4486c33baf9a558e8086417830",
"assets/assets/images/names/name83.png": "a4d19820d67abdc2a1278c71cac45ed2",
"assets/assets/images/names/name84.png": "909b68eb5bbb5a87637d1a684ee9e34e",
"assets/assets/images/names/name85.png": "568e7c68559c48b3a4c2ee0b7305e820",
"assets/assets/images/names/name86.png": "406603a785b7e96d0848d6821aefb3fa",
"assets/assets/images/names/name87.png": "f3020c4457b179fc3956478fca474f3f",
"assets/assets/images/names/name88.png": "3a0c6159ba9e6e616c3070fc40625d49",
"assets/assets/images/names/name89.png": "9a622519c77e5cb10adbffe067d895bd",
"assets/assets/images/names/name9.png": "c418178c87562b039fd153288479e366",
"assets/assets/images/names/name90.png": "9133dfa07e2934ca33dab825fc7b1c0b",
"assets/assets/images/names/name91.png": "580d2f6a46d10163af239b49b5acf827",
"assets/assets/images/names/name92.png": "c6958c32371adcf5df25179e66b8d9d2",
"assets/assets/images/names/name93.png": "716c1bb61b1df52ec79c538d7a074c86",
"assets/assets/images/names/name94.png": "52ef70ef26a3aab2a336b8e5c017b54c",
"assets/assets/images/names/name95.png": "82606dc23a1ae124b39dcc91c1c0baa1",
"assets/assets/images/names/name96.png": "32af786763827b501465279dd42a3d95",
"assets/assets/images/names/name97.png": "84a1bee39b9df32759e6776462e4f443",
"assets/assets/images/names/name98.png": "3842a964aeb283c2a7eb32a0a14bcaf9",
"assets/assets/images/names/name99.png": "b09af461153d75d1a11aa95ca82bb6cd",
"assets/assets/images/plane.jpg": "4379d3361e85735ece6841d89da57424",
"assets/assets/images/splash.png": "7d59c8dd813c5118d5a90f3332618d5b",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/NOTICES": "916801d4eae4465854f45d44d7970b71",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "e699652a79f051e9de832ac63a2c7619",
"/": "e699652a79f051e9de832ac63a2c7619",
"main.dart.js": "aaff871ebd68fafd24e8a535c8a4137d",
"manifest.json": "3201fd6b2c55f2e1a6a3f63d5f95bd10",
"version.json": "fe16a1c08dc66515569a2c3541491054"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
