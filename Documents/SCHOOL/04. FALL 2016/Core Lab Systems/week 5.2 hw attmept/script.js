var camera = new THREE.PerspectiveCamera(viewAngle, aspectRatio, near, far);
var scene = new THREE.Scene();
var renderer = new THREE.WebGLRenderer();

var controls;
var tracker;

var cube; //th eoctree replacement

var objects = [];
var objectsSearch = [];
var totalFaces = 0;

var simpleMeshCount = 100;

var clock = new THREE.clock();
var searchDelay = 1;
var searchInterval = 0;
var useCubes = true; //instead of useOctree ?

var raycaster = new THREE.Raycaster();
var mouse = new THREE.Vector2();
var intersected;


function init(){
	window.addEventListener('resize', onWindowResize, false);

	//camera
	camera.position.z = 400;
    camera.position.x = 100;
	camera.lookAt(0, 0, 0); //look at center
	scene.add(camera);

	//renderer
	renderer.setSize(window.innerWidth, window.innerHeight);
	renderer.setPixelRatio(window.devicePixelRatio ? window.devicePixelRatio : 1)
	document.body.appendChild( renderer.domElement );

	//lights
	pointLight = new THREE.PointLight(0xFFFFFF);
    pointLight.position.z = 200;
    scene.add(pointLight);

    cube = new THREE.BoxGemoetry

    //objects
    cube = new THREE.BoxGemoetry(1, 1, 1);
    for (var i = 0; i < simpleMeshCount - 1; i++){
    	totalFaces += cube.faces.length;

    	var simpleMaterial = new THREE.MeshBasicMaterial();
    	simpleMaterial.color.setHex(0x333333);

    }

}

function animatedRender() {

}


// function modifyCubes(geometry, material, useFaces, position){
// 	var mesh;

// 	if (geometry){
// 		mesh = new THREE.Mesh(geometry, material); //create new object
// 		if (position){
// 			mesh.position.set(Math.random() * 100, Math.random() * 2  *Math.PI, Math.random() * 2 *Math.PI);
// 		}
// 	}
// 	scene.add(mesh);
// 	objects.push(mesh);
// }




function onWindowResize() {
	camera.aspect = window.innerWidth / window.innerHeight; //get new aspect 
	camera.updateProjectionMatrix(); //update 
	renderer.setSize(window.innerWidth, window.innerHeight); //set new width / height

}