class Mobil {
  final String title;
  final String description;
  final double rating;
  final String gambar;
  final String telp;

  const Mobil({
    required this.title,
    required this.description,
    required this.rating,
    required this.gambar,
    required this.telp,
  });
}

const List<Mobil> listMobil = [
  Mobil(
      title: "Anicar jasa sewa mobil",
      description:
          "Jl. Ahmad Yani, Majalengka Wetan, Kec. Majalengka, Kabupaten Majalengka, Jawa Barat 45411",
      rating: 4.8,
      gambar: "img/0.jpg",
      telp: "(021)8192261"),
  Mobil(
      title: "PT. Harpa Sekawan",
      description:
          "Jl. Cipinang Muara Raya No.47, RW.3, Cipinang Muara, Kecamatan Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13420",
      rating: 4.5,
      gambar: "img/1.jpg",
      telp: "(021)8192263"),
  Mobil(
      title: "CV Zitrans Indonesia Jak Tim",
      description:
          "Jl. I Gusti Ngurah Rai No.24D, RT.10/RW.6, Cipinang Muara, Kecamatan Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13420",
      rating: 5.0,
      gambar: "img/2.jpg",
      telp: "08112551366"),
  Mobil(
      title: "Mandiri Rent Car",
      description:
          "Jl. Yudistira No.23, RT.3/RW.6, Pd. Bambu, Kec. Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13430",
      rating: 5.0,
      gambar: "img/3.jpg",
      telp: "08561679736"),
  Mobil(
      title: "KING RENT CAR",
      description:
          "Jl. Kelurahan Raya No.1, RT.7/RW.1, Duren Sawit, Kec. Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13440",
      rating: 5.0,
      gambar: "img/4.jpg",
      telp: "081911753498"),
];
