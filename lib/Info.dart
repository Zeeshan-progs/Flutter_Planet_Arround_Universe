class PlanetInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final String gifs;
  final String specification;
  final String distance;
  final String orbitalPeriod;
  final String radius;
  final String mass;
  final String background;
  final String gravity;
  final String lengthOfDay;
  final List<String> images;

  PlanetInfo(
    this.position, {
    this.background,
    this.name,
    this.gravity,
    this.distance,
    this.orbitalPeriod,
    this.radius,
    this.mass,
    this.lengthOfDay,
    this.iconImage,
    this.gifs,
    this.description,
    this.images,
    this.specification,
  });
}

List<PlanetInfo> planets = [
  PlanetInfo(1,
      gifs: 'assets/gifs/mercury.gif',
      name: 'Mercury',
      distance: '57.91 million km',
      gravity: "3.7 m/s ^2",
      lengthOfDay: '58d 15h 30m ',
      orbitalPeriod: '88 Days',
      radius: '2,439.7 km',
      mass: ' 3.285 × 10^23 kg',
      specification: 'Nearest Planet to the Sun',
      iconImage: 'assets/mercury.png',
      background: 'assets/background/mercury.jpg',
      description:
          "Zipping around the sun in only 88 days, Mercury is the closest planet to the sun, and it's also the smallest, only a little bit larger than Earth's moon. Because its so close to the sun (about two-fifths the distance between Earth and the sun), Mercury experiences dramatic changes in its day and night temperatures: Day temperatures can reach a scorching 840  F (450 C), which is hot enough to melt lead. Meanwhile on the night side, temperatures drop to minus 290 F (minus 180 C).",
      images: [
        'https://cdn.pixabay.com/photo/2013/07/18/10/57/mercury-163610_1280.jpg',
        'https://cdn.pixabay.com/photo/2014/07/01/11/38/planet-381127_1280.jpg',
        'https://cdn.pixabay.com/photo/2015/06/26/18/48/mercury-822825_1280.png',
        'https://image.shutterstock.com/image-illustration/mercury-high-resolution-images-presents-600w-367615301.jpg',
        'https://www.siliconrepublic.com/wp-content/uploads/2019/11/Mercury-sun-718x523.jpeg',
      ]),
  PlanetInfo(2,
      name: 'Venus',
      distance: '108.2 million km',
      gravity: "8.87 m/s ^2",
      lengthOfDay: '116d 18h 0m ',
      orbitalPeriod: '225 Days',
      radius: '6,051.8 km',
      mass: '4.867 × 10^24 kg',
      specification: 'Brightest Planet',
      gifs: 'assets/gifs/venus.gif',
      background: 'assets/background/venus.jpg',
      iconImage: 'assets/venus.png',
      description:
          "The second planet from the sun, Venus is Earth's twin in size. Radar images beneath its atmosphere reveal that its surface has various mountains and volcanoes. But beyond that, the two planets couldn't be more different. Because of its thick, toxic atmosphere that's made of sulfuric acid clouds, Venus is an extreme example of the greenhouse effect. It's scorching-hot, even hotter than Mercury. The average temperature on Venus' surface is 900 F (465 C). At 92 bar, the pressure at the surface would crush and kill you. And oddly, Venus spins slowly from east to west, the opposite direction of most of the other planets.",
      images: [
        'https://cdn.pixabay.com/photo/2011/12/13/14/39/venus-11022_1280.jpg',
        'https://image.shutterstock.com/image-photo/solar-system-venus-second-planet-600w-515581927.jpg',
        'https://cdn.mos.cms.futurecdn.net/rBhifuFGKAGPFkdLv4Jryb.jpeg',
        'https://wp.technologyreview.com/wp-content/uploads/2020/07/venus20191211-16.jpg',
        'https://skyandtelescope.org/wp-content/uploads/Venus_UV_Credit_PLANET-C-Project_Team_600px.jpg',
      ]),
  PlanetInfo(3,
      name: 'Earth',
      distance: '149.6 million km',
      gravity: "9.80-7 m/s ^2",
      lengthOfDay: '23h 56m ',
      orbitalPeriod: '365 Days',
      radius: '6,371 km',
      mass: '5.972 × 10^24 kg',
      specification: 'Powerful Magnetic Field ',
      gifs: 'assets/gifs/earth.gif',
      iconImage: 'assets/earth.png',
      background: 'assets/background/earth.jpg',
      description:
          "The third planet from the sun, Earth is a waterworld, with two-thirds of the planet covered by ocean. It's the only world known to harbor life. Earth's atmosphere is rich in nitrogen and oxygen. Earth's surface rotates about its axis at 1,532 feet per second (467 meters per second) — slightly more than 1,000 mph (1,600 kph) — at the equator. The planet zips around the sun at more than 18 miles per second (29 km per second).",
      images: [
        'https://cdn.pixabay.com/photo/2011/12/13/14/31/earth-11015_1280.jpg',
        'https://cdn.pixabay.com/photo/2011/12/14/12/11/astronaut-11080_1280.jpg',
        'https://cdn.pixabay.com/photo/2016/01/19/17/29/earth-1149733_1280.jpg',
        'https://image.shutterstock.com/image-photo/3d-render-planet-earth-viewed-600w-1069251782.jpg'
      ]),
  PlanetInfo(4,
      name: 'Mars',
      distance: '227.9 million km',
      gravity: "3.711 m/s ^2",
      lengthOfDay: ' 1d h 37m ',
      orbitalPeriod: '387 Days',
      radius: '3,389.5 km',
      mass: '6.39 × 10^23 kg',
      specification: ' Red Planets',
      gifs: 'assets/gifs/mars.gif',
      iconImage: 'assets/mars.png',
      background: 'assets/background/mars.jpg',
      description:
          "The fourth planet from the sun is Mars, and it's a cold, desert-like place covered in dust. This dust is made of iron oxides, giving the planet its iconic red hue. Mars shares similarities with Earth: It is rocky, has mountains, valleys and canyons, and storm systems ranging from localized tornado-like dust devils to planet-engulfing dust storms. ",
      images: [
        'https://www.vaisala.com/sites/default/files/styles/16_9_liftup_extra_large/public/images/LIFT-Mars%20the%20Red%20Planet-1600x900.jpg?itok=YXq-Cv1K',
        'https://static.euronews.com/articles/stories/04/85/07/52/945x531_cmsv2_146bce4e-8ff7-5c36-b3f8-f046bcb547e4-4850752.jpg',
        'https://techcrunch.com/wp-content/uploads/2020/05/GettyImages-1124672049.jpg',
        'https://im-media.voltron.voanews.com/Drupal/01live-166/styles/892x501/s3/2019-04/E97CAAC4-742E-4629-84C9-20D43A0A7630.jpg?itok=4Y1cPn5s',
      ]),
  PlanetInfo(5,
      name: 'Jupiter',
      distance: '778.5 million km',
      gravity: "24.79 m/s ^2",
      lengthOfDay: ' 0d 9h 56m ',
      orbitalPeriod: '12 years',
      radius: '69,911  km',
      mass: '1.898 × 10^27 kg',
      gifs: 'assets/gifs/jupiter.gif',
      specification: ' Largest / Biggest Planet',
      iconImage: 'assets/jupiter.png',
      background: 'assets/background/jupiter.png',
      description:
          "The fifth planet from the sun, Jupiter is a giant gas world that is the most massive planet in our solar system — more than twice as massive as all the other planets combined, according to NASA. Its swirling clouds are colorful due to different types of trace gases. And a major feature in its swirling clouds is the Great Red Spot, a giant storm more than 10,000 miles wide. It has raged at more than 400 mph for the last 150 years, at least. Jupiter has a strong magnetic field, and with 75 moons, it looks a bit like a miniature solar system.",
      images: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTPE10Zk6ss6UuTyIZrHjcn7nmJIuESOKM-ow&usqp=CAU',
        'https://www.sciencemag.org/sites/default/files/styles/article_main_large/public/jupiter_16x9_0.jpg?itok=hG4P9N8I',
        'https://cdn.vox-cdn.com/thumbor/TGOJarQjlCF_-KG_MR22Tk7cAVM=/0x0:2224x2216/1200x800/filters:focal(969x243:1323x597)/cdn.vox-cdn.com/uploads/chorus_image/image/56541157/hs_2016_24_a_print_new.0.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQEKgnsioAF34_LtfsQVY6nZowdbSc_gzM42A&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQRB0TfEtBPs3pd0nmx9-INrPZrL5ZYuKIGew&usqp=CAU',
      ]),
  PlanetInfo(6,
      name: 'Saturn',
      distance: '1.434  billion km',
      gravity: "10.44 m/s ^2",
      lengthOfDay: ' 0d 10h 42m ',
      orbitalPeriod: '29 years',
      radius: '58,232  km',
      mass: '5.683 × 10^26 kg',
      specification:
          ' Most Moon Of Any Planet (69 in total) 15 is Unknown( Not Named Yet) ',
      gifs: 'assets/gifs/saturn.gif',
      iconImage: 'assets/saturn.png',
      background: 'assets/background/saturn.jpg',
      description:
          "The sixth planet from the sun, Saturn is known most for its rings. When polymath Galileo Galilei first studied Saturn in the early 1600s, he thought it was an object with three parts: a planet and two large moons on either side. Not knowing he was seeing a planet with rings, the stumped astronomer entered a small drawing — a symbol with one large circle and two smaller ones — in his notebook, as a noun in a sentence describing his discovery. More than 40 years later, Christiaan Huygens proposed that they were rings. The rings are made of ice and rock and scientists are not yet sure how they formed. The gaseous planet is mostly hydrogen and helium and has numerous moons.",
      images: [
        'https://cdn.hswstatic.com/gif/saturn-lead-image.jpg',
        'https://www.thesun.co.uk/wp-content/uploads/2020/03/NINTCHDBPICT000572926401.jpg',
        'https://cdn.mos.cms.futurecdn.net/N7HursA3AyyYVcrQV8ntF9-1200-80.jpg',
        'https://img.jakpost.net/c/2019/01/18/2019_01_18_63388_1547784493._large.jpg',
        'https://kids.nationalgeographic.com/content/dam/kids/photos/articles/Space/Q-Z/saturn.ngsversion.1421696395731.adapt.710.1.jpg',
      ]),
  PlanetInfo(7,
      name: 'Uranus',
      distance: '2.871  billion km',
      gravity: "8.87 m/s ^2",
      lengthOfDay: ' 0d 17h 14m ',
      orbitalPeriod: '84 years',
      radius: '25,362  km',
      mass: '8.681 × 10^25 kg',
      specification:
          'Uranus was the first planet found using a telescope.',
      gifs: 'assets/gifs/uranus.gif',
      iconImage: 'assets/uranus.png',
      background: 'assets/background/uranus.jpg',
      description:
          "The seventh planet from the sun, Uranus is an oddball. It has clouds made of hydrogen sulfide, the same chemical that makes rotten eggs smell so foul. It rotates from east to west like Venus. But unlike Venus or any other planet, its equator is nearly at right angles to its orbit — it basically orbits on its side. Astronomers believe an object twice the size of Earth collided with Uranus roughly 4 billion years ago, causing Uranus to tilt. That tilt causes extreme seasons that last 20-plus years, and the sun beats down on one pole or the other for 84 Earth-years at a time. ",
      images: [
        'https://scx2.b-cdn.net/gfx/news/2020/mysteriesofu.jpg',
        'https://skyandtelescope.org/wp-content/uploads/Uranus-Hubble-2005-400px.jpg',
        'https://i.insider.com/59a0dea86eac401b008b53a4?width=1100&format=jpeg&auto=webp',
        'https://i.pinimg.com/474x/2e/b1/9f/2eb19fdda1be090c3a471954bbd92080.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ6G_57eBW5RMIY051Fi0o32ZHHRSUEGwXA6A&usqp=CAU',
      ]),
  PlanetInfo(8,
      name: 'Neptune',
      distance: '4.495  billion km',
      gravity: "11.15 m/s ^2",
      lengthOfDay: ' 0d 16h 6m ',
      orbitalPeriod: '165 years',
      radius: '24,622  km',
      mass: '1.024 × 10^26 kg',
      gifs: 'assets/gifs/neptune.gif',
      specification: 'Invisible to the Human eye',
      iconImage: 'assets/neptune.png',
      background: 'assets/background/neptune.jpg',
      description:
          "The eighth planet from the sun, Neptune is about the size of Uranus and is known for supersonic strong winds. Neptune is far out and cold. The planet is more than 30 times as far from the sun as Earth. Neptune was the first planet predicted to exist by using math, before it was visually detected. Irregularities in the orbit of Uranus led French astronomer Alexis Bouvard to suggest some other planet might be exerting a gravitational tug. German astronomer Johann Galle used calculations to help find Neptune in a telescope. Neptune is about 17 times as massive as Earth and has a rocky core.",
      images: [
        'https://specials-images.forbesimg.com/imageserve/5f587466e55540ec25a40e3a/960x0.jpg?cropX1=0&cropX2=5906&cropY1=827&cropY2=4148',
        'https://solarsystem.nasa.gov/system/stellar_items/image_files/90_feature_1600x900_4.jpg',
        'https://cdn.techexplorist.com/wp-content/uploads/2020/08/planet-K2-25b.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQEhJBB09CRu2hJ6ylUNy5pJh8zYhFzG2LmBA&usqp=CAU',
      ]),
];
