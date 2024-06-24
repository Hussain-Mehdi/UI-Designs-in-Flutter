import 'dart:ui';

class DroneModel {
  String name;
  String version;
  String description;
  String image;
  double price;
  int flighttime;
  String videoQuality;
  String imageSensor;
  String centralsignals;

  DroneModel(
      this.name,
      this.version,
      this.description,
      this.image,
      this.price,
      this.flighttime,
      this.videoQuality,
      this.imageSensor,
      this.centralsignals);
}

List<DroneModel> droneList = [
  DroneModel(
      "Film Drone",
      '2.01',
      "Introducing the FilmMaster X2000, the epitome of aerial cinematography excellence. Engineered to redefine the boundaries of filmmaking, this advanced drone is meticulously crafted to meet the demands of professional filmmakers and enthusiasts alike.Equipped with state-of-the-art stabilization technology, the FilmMaster X2000 ensures buttery-smooth footage even in the most challenging environments. Its precision-engineered gimbal system provides unparalleled stability, allowing you to capture breathtakingly smooth shots with cinematic perfection.",
      "./images/droneimages/drone1.png",
      300,
      30,
      '4k 60fps',
      '20MP',
      '4.3ml'),
  DroneModel(
      "Mavic Pro 2",
      '2.01',
      "The Mavic Pro 2 represents the pinnacle of DJI's engineering prowess, combining cutting-edge technology with unparalleled portability to redefine the possibilities of aerial photography and videography.Compact yet powerful, the Mavic Pro 2 boasts a foldable design that allows you to take it anywhere, ensuring you never miss a moment worth capturing. Whether you're embarking on a cinematic adventure or exploring remote landscapes, this drone is your trusted aerial companion.",
      "./images/droneimages/drone2.png",
      300,
      30,
      '4k 60fps',
      '20MP',
      '4.3ml'),
  DroneModel(
      "DJI Mavic Pro",
      '2.01',
      "The DJI Mavic Pro is a marvel of engineering, packing cutting-edge technology into a compact and portable design. This drone redefines the possibilities of aerial photography and videography, putting professional-grade capabilities in the palm of your hand.Equipped with a high-quality camera capable of capturing 12-megapixel stills and crisp 4K video, the Mavic Pro ensures your aerial images and footage are nothing short of breathtaking. With its stabilized gimbal system, you can achieve smooth, cinematic shots with ease, even in windy conditions or high-speed maneuvers.",
      "./images/droneimages/drone3.png",
      300,
      30,
      '4k 60fps',
      '20MP',
      '4.3ml'),
  DroneModel(
      "Xiaomi",
      '2.01',
      "The Xiaomi FIMI X8 SE is the epitome of innovation and reliability in the world of consumer drones. Designed to provide users with an unparalleled aerial experience, this drone combines cutting-edge technology with user-friendly features, making it the perfect companion for both amateur enthusiasts and seasoned professionals.Equipped with a powerful 4K camera mounted on a 3-axis gimbal stabilization system, the FIMI X8 SE delivers stunningly clear and smooth aerial footage. Capture breathtaking landscapes, dynamic action shots, and cinematic sequences with ease, thanks to its advanced imaging capabilities and precise gimbal control.",
      "./images/droneimages/drone4.png",
      300,
      30,
      '4k 60fps',
      '20MP',
      '4.3ml'),
  DroneModel(
      "DJI unmanned Aerial",
      '2.01',
      "The DJI Phantom 4 Pro stands as a testament to DJI's commitment to excellence in unmanned aerial vehicles (UAVs). Engineered with precision and equipped with cutting-edge technology, this drone is the epitome of reliability, performance, and image quality.At the heart of the Phantom 4 Pro is its powerful camera system. Featuring a 1-inch 20-megapixel CMOS sensor, capable of capturing 4K video at up to 60 frames per second, and a mechanical shutter, the Phantom 4 Pro delivers stunningly crisp and detailed aerial imagery. Whether you're capturing stills or footage, every frame is imbued with rich colors, deep contrasts, and unparalleled clarity.",
      "./images/droneimages/drone5.png",
      300,
      30,
      '4k 60fps',
      '20MP',
      '4.3ml'),
  DroneModel(
      "Helicopter Rotor Mavic",
      '2.01',
      "Introducing the Mavic HeliDrone, a revolutionary hybrid that seamlessly blends the agility of a helicopter with the innovation of a DJI Mavic drone. Designed to push the boundaries of aerial exploration, this cutting-edge aircraft combines the best of both worlds to deliver an unparalleled flying experience.At its core, the Mavic HeliDrone features the iconic foldable design of the DJI Mavic series, ensuring portability without compromise. Whether you're embarking on an outdoor adventure or capturing cinematic footage in urban landscapes, this drone is your go-to aerial companion, ready to deploy at a moment's notice.",
      "./images/droneimages/drone6.png",
      300,
      30,
      '4k 60fps',
      '20MP',
      '4.3ml'),
  DroneModel(
      "Mavic Pro Aerial",
      '2.01',
      "The Mavic Pro Aerial Edition is the culmination of DJI's expertise in aerial imaging, offering enthusiasts and professionals alike an unparalleled platform to capture stunning footage from above. With its compact design, advanced features, and powerful imaging capabilities, this drone redefines the possibilities of aerial photography and videography.Compact yet powerful, the Mavic Pro Aerial Edition is designed to go wherever your adventures take you. Its foldable design makes it incredibly portable, allowing you to pack it into a backpack or carry-on luggage with ease. Whether you're hiking to remote locations or exploring urban landscapes, this drone is your ultimate aerial companion.",
      "./images/droneimages/drone7.png",
      300,
      30,
      '4k 60fps',
      '20MP',
      '4.3ml'),
  DroneModel(
      "Paper Unmanned Aerial",
      '2.01',
      "PaperWing, a minimalist marvel in the world of unmanned aerial vehicles (UAVs). Crafted from lightweight materials and inspired by the elegance of origami, PaperWing embodies the fusion of creativity and innovation, offering a unique platform for aerial exploration and artistic expression.True to its name, PaperWing is constructed from durable yet lightweight paper, making it incredibly portable and environmentally friendly. Its foldable design allows you to easily pack it into a backpack or pocket, making it the perfect companion for spontaneous adventures and impromptu flights.",
      "./images/droneimages/drone8.png",
      300,
      30,
      '4k 60fps',
      '20MP',
      '4.3ml'),
  DroneModel(
      "Aerail Delivery",
      '2.01',
      "AirLift Express redefines the concept of delivery with its cutting-edge aerial drone technology. Designed to deliver packages swiftly and securely, AirLift Express offers a seamless solution for logistics, e-commerce, and emergency response applications.At the heart of AirLift Express is a fleet of robust and versatile delivery drones, engineered to carry various payloads while ensuring safe and efficient operations. These drones are equipped with advanced navigation systems, precise GPS guidance, and obstacle avoidance technology, allowing them to navigate complex environments and deliver packages with pinpoint accuracy.",
      "./images/droneimages/drone9.png",
      300,
      30,
      '4k 60fps',
      '20MP',
      '4.3ml'),
  DroneModel(
      "Yuneec Intermation Typhoon",
      '2.01',
      "The Yuneec Intermation Typhoon represents the pinnacle of innovation in the field of aerial delivery drones. Engineered to meet the demands of logistics companies, e-commerce retailers, and emergency responders, the Typhoon offers unmatched versatility, reliability, and performance.Featuring advanced flight control systems and precision navigation technology, the Typhoon delivers packages with pinpoint accuracy, even in challenging weather conditions or complex urban environments. With its intuitive user interface and streamlined operation, piloting the Typhoon is simple and straightforward, allowing you to focus on delivering your cargo with confidence.",
      "./images/droneimages/drone10.png",
      300,
      30,
      '4k 60fps',
      '20MP',
      '4.3ml'),
];
