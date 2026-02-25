CREATE TABLE "public"."gayatri_myrme_ uggroups" (
	"GroupID" serial NOT NULL,
	"Label" varchar(300) NULL,
	"Provider" varchar(10) NULL DEFAULT ''::character varying,
	"Comment" text NULL,
	PRIMARY KEY ("GroupID" )
);

CREATE TABLE "public"."gayatri_myrme_ ugrights" (
	"TableName" varchar(100) NOT NULL,
	"GroupID" integer NOT NULL,
	"AccessMask" varchar(10) NULL,
	"Page" text NULL,
	PRIMARY KEY ("GroupID", "TableName" )
);

CREATE TABLE "public"."gayatri_myrme_ ugmembers" (
	"UserName" varchar(100) NOT NULL,
	"GroupID" integer NOT NULL,
	"Provider" varchar(10) NOT NULL DEFAULT ''::character varying,
	PRIMARY KEY ("GroupID", "Provider", "UserName" )
);

CREATE TABLE "public"."gayatri-my rme _audit" (
	"id" serial NOT NULL,
	"datetime" timestamp NOT NULL,
	"ip" varchar(40) NOT NULL,
	"user" varchar(255) NULL,
	"table" varchar(300) NULL,
	"action" varchar(250) NOT NULL,
	"description" text NULL,
	PRIMARY KEY ("id" )
);

CREATE TABLE "public"."agama" (
	"id" integer NOT NULL DEFAULT '0'::smallint,
	"agama" varchar(30) NOT NULL,
	PRIMARY KEY ("id" )
);

CREATE TABLE "public"."puskesmas" (
	"pusk_id" integer NOT NULL,
	"no_urut" varchar(2) NULL,
	"pusk" varchar(50) NOT NULL,
	"aktif" integer NULL DEFAULT '1'::smallint,
	"user1" text NULL,
	"password" text NULL,
	"cons" text NULL,
	"secret" text NULL,
	"kode_provider" varchar(255) NULL,
	"no_hp_kapus" varchar(50) NULL,
	"no_wa_puskesmas" varchar(255) NULL,
	"user_key" text NULL,
	"access_token" varchar(255) NULL,
	"district" varchar(255) NULL,
	"village" varchar(255) NULL,
	"rw" varchar(255) NULL,
	"rt" varchar(255) NULL,
	"kode_pos" varchar(255) NULL,
	"alamat_fasyankes" varchar(255) NULL,
	"is_bridgingpcare" integer NOT NULL DEFAULT 0,
	"wkt_update_token" timestamp NULL,
	"kab_kota_pcare" varchar(150) NULL,
	"jenis_fasyankes" integer NULL,
	"kode_pusdatin" varchar(255) NULL,
	"berlaku_sd" time NULL,
	"satset_client_id" text NULL,
	"satset_client_secret" text NULL,
	"satset_org_id" text NULL,
	"is_bridgingsatset" integer NULL,
	"kop_gambar" bytea NULL,
	"kop_line1" varchar(255) NULL,
	"kop_line2" varchar(255) NULL,
	"kop_line3" varchar(255) NULL,
	"wa_setelah_periksa" text NULL,
	"wa_reminder" text NULL,
	"kop_line4" varchar(255) NULL,
	"is_resep_diberikan_sama" boolean NOT NULL DEFAULT true,
	PRIMARY KEY ("pusk_id" )
);

CREATE TABLE "public"."o_yatidak" (
	"ket" varchar(255) NULL,
	"kode" integer NOT NULL,
	PRIMARY KEY ("kode" )
);

CREATE TABLE "public"."pustu" (
	"pustu_id" integer NOT NULL,
	"pusk_id" integer NULL,
	"kode_pustu" varchar(2) NULL,
	"pustu" varchar(50) NOT NULL,
	"alamat" varchar(100) NULL,
	"ket" varchar(10) NULL,
	"aktif" integer NULL DEFAULT '1'::smallint,
	"desa_id" integer NULL DEFAULT 0,
	"prefix_nomr" varchar(255) NULL,
	"mid_nomr" bigint NULL,
	"suffix_nomr" varchar(255) NULL,
	"is_digunakan" integer NULL,
	PRIMARY KEY ("pustu_id" )
);

CREATE TABLE "public"."master_unit" (
	"unit_id" integer NOT NULL DEFAULT '0'::smallint,
	"unit" varchar(50) NOT NULL,
	"ispelayanan" integer NULL DEFAULT '1'::smallint,
	"aktif" integer NULL DEFAULT '1'::smallint,
	"def" integer NULL DEFAULT '0'::smallint,
	"oncombo" integer NULL DEFAULT '0'::smallint,
	"aktif_rujukan" integer NULL,
	"dalam_luar" varchar(50) NULL,
	"puskesmas" integer NULL,
	"kelurahan" integer NULL,
	"lingkungan" integer NULL,
	"rw" integer NULL,
	"kriteria" varchar(100) NULL,
	"pcare_poli" varchar(10) NULL,
	"perwakilan_unit_pcare" integer NULL,
	"abjad_pcare" varchar(5) NULL,
	PRIMARY KEY ("unit_id" )
);

CREATE TABLE "public"."master_dokter" (
	"dokter_id" integer NOT NULL DEFAULT '0'::smallint,
	"dokter" varchar(30) NOT NULL,
	"nip" varchar(30) NULL,
	"lp" character NULL,
	"agama" varchar(30) NULL,
	"tmlahir" varchar(30) NULL,
	"tglahir" date NULL,
	"alamat" varchar(100) NULL,
	"kota" varchar(30) NULL,
	"telp" varchar(30) NULL,
	"hp" varchar(30) NULL,
	"maried" integer NULL DEFAULT '0'::smallint,
	"nama_suami_istri" varchar(50) NULL,
	"aktif" integer NULL DEFAULT '1'::smallint,
	"visite" real NULL DEFAULT '0'::double precision,
	"konsul" real NULL DEFAULT '0'::double precision,
	"mtbs" date NULL,
	"jabatan" varchar(20) NULL,
	"photo" bytea NULL,
	"cpns_gol" varchar(30) NULL,
	"cpns_tmt" date NULL,
	"pangkat_gol" varchar(30) NULL,
	"pangkat_tmt" date NULL,
	"pend" varchar(30) NULL,
	"ketpend" varchar(50) NULL,
	"thn_lulus" integer NULL,
	"stt" integer NULL,
	"jbt_fung" varchar(50) NULL,
	"mts_tgl" date NULL,
	"mts_alasan" integer NULL,
	"mts" varchar(50) NULL,
	"mts_ket" varchar(100) NULL,
	"fungsional" varchar(50) NULL,
	"tmtfungsional" date NULL,
	"mulaikerja" date NULL,
	"puskesmas" integer NULL,
	"password" varchar(255) NULL,
	"grup_pengguna" varchar(255) NULL,
	"email" varchar(50) NULL,
	"kode_aktivasi" varchar(255) NULL,
	"pcare_dokter" varchar(255) NULL,
	"nik_dokter" varchar(255) NULL,
	"ihr" varchar(255) NULL,
	PRIMARY KEY ("dokter_id" )
);

CREATE TABLE "public"."kategori_pasien" (
	"kp_id" integer NOT NULL DEFAULT '0'::smallint,
	"kp" varchar(50) NOT NULL,
	"isgratis" integer NULL DEFAULT '0'::smallint,
	"isasuransi" integer NULL DEFAULT '0'::smallint,
	"maxid" bigint NULL DEFAULT '0'::bigint,
	"aktif" integer NULL DEFAULT '1'::smallint,
	"kp_id_sic" integer NULL DEFAULT '0'::smallint,
	"cara_bayar" varchar(255) NULL,
	PRIMARY KEY ("kp_id" )
);

CREATE TABLE "public"."hub_klg" (
	"kode" varchar(2) NOT NULL,
	"hub" varchar(50) NOT NULL,
	"urutan" integer NULL,
	"istunggal" integer NOT NULL,
	PRIMARY KEY ("kode" )
);

CREATE TABLE "public"."m_kabupaten" (
	"id" integer NOT NULL,
	"mst_kabupaten_id" varchar(11) NOT NULL,
	"mst_propinsi_id" varchar(11) NOT NULL,
	"nama_kabupaten" varchar(50) NOT NULL,
	"email" text NOT NULL,
	PRIMARY KEY ("id" )
);

CREATE TABLE "public"."m_kecamatan" (
	"mst_kecamatan_id" varchar(255) NOT NULL,
	"mst_propinsi_id" varchar(6) NULL,
	"mst_kabupaten_id" varchar(6) NULL,
	"nama_kecamatan" varchar(50) NULL,
	"email" text NULL,
	PRIMARY KEY ("mst_kecamatan_id" )
);

CREATE TABLE "public"."m_kelurahan" (
	"mst_kelurahan_id" varchar(255) NOT NULL,
	"mst_propinsi_id" varchar(2) NOT NULL,
	"mst_kabupaten_id" varchar(5) NOT NULL,
	"mst_kecamatan_id" varchar(255) NOT NULL,
	"keldes" varchar(255) NOT NULL,
	"nama_kelurahan" varchar(50) NOT NULL,
	"email" text NULL,
	"revised_name" varchar(255) NULL,
	PRIMARY KEY ("mst_kelurahan_id" )
);

CREATE TABLE "public"."pekerjaan" (
	"job_id" integer NOT NULL DEFAULT '0'::smallint,
	"job" varchar(50) NOT NULL,
	PRIMARY KEY ("job_id" )
);

CREATE TABLE "public"."tujuan" (
	"id" integer NOT NULL DEFAULT 0,
	"tujuan" varchar(50) NULL,
	PRIMARY KEY ("id" )
);

CREATE TABLE "public"."pendaftaran" (
	"loket_id" varchar(200) NOT NULL,
	"tgl" date NOT NULL DEFAULT CURRENT_DATE,
	"no_rm" text NULL,
	"no_urut" integer NULL,
	"no_urut_pkm" integer NULL,
	"nama" text NOT NULL,
	"sex" character NOT NULL,
	"tgl_lahir" date NOT NULL,
	"umur_t" integer NULL,
	"umur_b" integer NULL,
	"umur_h" integer NOT NULL,
	"usia" varchar(100) NULL,
	"ktp" text NULL,
	"kk" text NULL,
	"no_kk" text NULL,
	"noaskes" text NULL,
	"hp" text NULL,
	"alamat" text NOT NULL,
	"rt" varchar(5) NULL,
	"rw" varchar(5) NULL,
	"desa_id" integer NULL,
	"dsn_id" integer NULL,
	"kabkota" varchar(50) NULL,
	"kecamatan" varchar(50) NULL,
	"kelurahan" varchar(50) NULL,
	"pekerjaan" integer NOT NULL,
	"agama" integer NULL,
	"pendidikan" integer NULL,
	"hub_keluarga_rm" varchar(4) NULL,
	"tujuan" integer NULL,
	"tujuan_poli" integer NOT NULL,
	"kunjung_baru" integer NULL DEFAULT 1,
	"puskesmas" integer NOT NULL,
	"pustu" integer NOT NULL,
	"entri_oleh" varchar(255) NULL,
	"sift" varchar(20) NULL,
	"dalam_luar_gedung" varchar(50) NULL,
	"sehat_sakit" varchar(20) NULL,
	"ss_ihs" varchar(255) NULL DEFAULT '0'::character varying,
	"created_at" varchar(100) NULL,
	"updated_at" varchar(100) NULL,
	"deleted_at" varchar(100) NULL,
	"pelayanan_id" varchar(200) NOT NULL,
	"update_oleh" varchar(200) NULL,
	"idne" varchar(255) NULL,
	"pcare_kelas" integer NULL,
	"pcare_jns_peserta" varchar(50) NULL,
	"pcare_status_peserta" varchar(50) NULL DEFAULT 'AKTIF'::character varying,
	"pcare_tgl_aktif" varchar(20) NULL,
	"pcare_tgl_ed" varchar(20) NULL,
	"pcare_faskes" varchar(200) NULL,
	"satset_encounter_id" varchar(255) NULL,
	"nama_ibu_kandung" text NOT NULL,
	"gol_darah" varchar(5) NULL,
	"status_perkawinan" integer NULL,
	"telepon_rumah" varchar(50) NULL,
	"tempat_lahir" varchar(100) NULL,
	"satusehat_status" integer NULL DEFAULT 0,
	"satusehat_response" text NULL,
	"satusehat_timestamp" varchar(6) NULL,
	"dokter" varchar(50) NULL,
	"bpjs_status" integer NULL DEFAULT 0,
	"deleted_by" integer NULL,
	"is_deleted" boolean NULL DEFAULT false,
	"pcare_nodaftar" varchar(20) NULL,
	"waktu_satusehat" timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	"ss_nama_mark" varchar(255) NULL,
	"nama_mark" varchar(255) NULL,
	"panjang_nik" integer NULL,
	"is_selesai" integer NULL DEFAULT 0,
	PRIMARY KEY ("loket_id", "pelayanan_id" )
);

CREATE TABLE "public"."diagnosa" (
	"penyakit_id" varchar(50) NOT NULL,
	"bl" character NULL,
	"pelayanan_id" varchar(150) NOT NULL,
	"diagnosa_id" varchar(150) NOT NULL,
	"kirim_wa" integer NULL,
	"status_centerview" integer NULL DEFAULT '0'::smallint,
	"respon" varchar(255) NULL,
	"encounter_id" varchar(255) NULL,
	"condition_id" varchar(255) NULL,
	"cek_encounter" integer NULL DEFAULT 0,
	"is_cek" integer NULL DEFAULT 0,
	"input_oleh" varchar(100) NULL,
	"update_oleh" varchar(100) NULL,
	"wkt_input" timestamp NULL,
	"wkt_update" timestamp NULL,
	"dx_pcare" varchar(10) NULL,
	"dx_primer" integer NULL,
	"is_deleted" boolean NULL DEFAULT false,
	"deleted_at" timestamp NULL,
	"deleted_by" integer NULL,
	"created_by" integer NULL,
	"updated_by" integer NULL,
	"loket_id" varchar(200) NOT NULL
);

CREATE TABLE "public"."log_bpjs" (
	"log_bpjs_id" varchar(100) NOT NULL,
	"jenis_transaksi" varchar(100) NOT NULL,
	"aksi" varchar(50) NOT NULL,
	"request_json" text NULL,
	"response_json" text NULL,
	"status_transaksi" varchar(20) NULL DEFAULT 'Pending'::character varying,
	"http_status_code" integer NULL,
	"error_code" varchar(100) NULL,
	"error_message" text NULL,
	"endpoint_url" varchar(500) NULL,
	"method" varchar(10) NULL DEFAULT 'POST'::character varying,
	"response_time_ms" integer NULL,
	"is_deleted" boolean NULL DEFAULT false,
	"deleted_at" timestamp NULL,
	"deleted_by" integer NULL,
	"created_by" integer NOT NULL DEFAULT 1,
	"created_at" timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	"updated_by" integer NULL,
	"updated_at" timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	"no_bpjs" text NULL,
	PRIMARY KEY ("log_bpjs_id" )
);

CREATE TABLE "public"."log_satusehat" (
	"log_satusehat_id" varchar(100) NOT NULL,
	"resource_type" varchar(100) NOT NULL,
	"resource_id" varchar(255) NULL,
	"fhir_operation" varchar(50) NOT NULL,
	"fhir_version" varchar(20) NULL DEFAULT 'R4'::character varying,
	"request_fhir" text NULL,
	"response_fhir" text NULL,
	"status_sync" varchar(20) NULL DEFAULT 'Pending'::character varying,
	"http_status_code" integer NULL,
	"error_code" varchar(100) NULL,
	"error_message" text NULL,
	"endpoint_url" varchar(500) NULL,
	"method" varchar(10) NULL DEFAULT 'POST'::character varying,
	"response_time_ms" integer NULL,
	"x_request_id" varchar(255) NULL,
	"x_correlation_id" varchar(255) NULL,
	"no_rm" varchar(100) NULL,
	"nik" varchar(100) NULL,
	"is_deleted" boolean NULL DEFAULT false,
	"deleted_at" timestamp NULL,
	"deleted_by" integer NULL,
	"created_by" integer NOT NULL DEFAULT 1,
	"created_at" timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	"updated_by" integer NULL,
	"updated_at" timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY ("log_satusehat_id" )
);

CREATE TABLE "public"."obat" (
	"nama" varchar(255) NULL,
	"sat" varchar(200) NULL,
	"harga" numeric(255, 0) NULL,
	"idne" bigint NOT NULL,
	"is_obat" varchar(10) NULL,
	"is_vaksin" integer NULL,
	"jenis" varchar(255) NULL,
	"is_rko" integer NULL DEFAULT 0,
	"is_fornas" integer NULL DEFAULT 0,
	"kd_kfa" varchar(20) NULL,
	"nama_kfa" varchar(200) NULL,
	"sat_normalisasi" varchar(150) NULL,
	"is_aktif" integer NULL DEFAULT 0,
	PRIMARY KEY ("idne" )
);

CREATE TABLE "public"."pendidikan" (
	"id" bigint NOT NULL,
	"pendidikan" varchar(255) NULL,
	PRIMARY KEY ("id" )
);

CREATE TABLE "public"."pemeriksaan" (
	"pelayanan_id" varchar(200) NOT NULL,
	"no_kunjungan_bpjs" varchar(150) NULL,
	"keluhan" text NULL,
	"riwayat_penyakit_sekarang" text NULL,
	"riwayat_penyakit_dulu" text NULL,
	"riwayat_penyakit_keluarga" text NULL,
	"tgl_periksa" date NULL,
	"jam_periksa" time NULL,
	"petugas_periksa" integer NULL,
	"petugas_diagnosa" integer NULL,
	"sistole" integer NULL,
	"diastole" integer NULL,
	"nadi" numeric(10, 0) NULL DEFAULT 0,
	"rr" numeric(30, 0) NULL,
	"suhu" numeric(10, 1) NULL DEFAULT 0,
	"saturasi" numeric(5, 2) NULL,
	"tbne" numeric(10, 1) NULL DEFAULT 0,
	"bbne" numeric(10, 1) NULL DEFAULT 0,
	"imt" numeric(10, 1) NULL DEFAULT 0,
	"arti_imt" varchar(100) NULL,
	"lingkarperut" numeric(5, 1) NULL,
	"kdsadar" varchar(10) NULL,
	"sudah_dilayani_obat" integer NULL DEFAULT 0,
	"is_deleted" boolean NULL DEFAULT false,
	"deleted_at" timestamp NULL,
	"deleted_by" integer NULL,
	"created_by" integer NULL,
	"created_at" timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	"updated_by" integer NULL,
	"updated_at" timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	"tgl_kembali" date NULL,
	"kie_diberikan" text NULL,
	"loket_id" varchar(255) NULL,
	"hp" text NULL,
	"no_urut_obat" integer NULL DEFAULT 0,
	"obat_wkt_konseling" timestamp NULL,
	"obat_konselor" integer NULL,
	"obat_kondisi_khusus" varchar(250) NULL,
	"obat_informasi_saran" text NULL,
	PRIMARY KEY ("pelayanan_id" )
);

CREATE TABLE "public"."ref_diagnosa" (
	"kd_diagnosa" varchar(10) NOT NULL,
	"nm_diagnosa" varchar(255) NULL,
	"kd_diagnosa_pakai" varchar(10) NULL,
	"nama_stp" varchar(100) NULL,
	"dilarang_pcare" integer NULL,
	PRIMARY KEY ("kd_diagnosa" )
);

CREATE TABLE "public"."resep" (
	"idne" varchar(100) NOT NULL,
	"pelayanan_id" varchar(150) NULL,
	"jumlah" numeric(255, 0) NULL,
	"sebelum_sesudah_makan" varchar(50) NULL,
	"aturan_minum" varchar(50) NULL,
	"jml_obat_diberikan" numeric(255, 0) NULL,
	"is_diberikan" varchar(10) NULL,
	"harga" numeric(255, 2) NULL,
	"total" numeric(255, 0) NULL,
	"sat" varchar(50) NULL,
	"id_obat" bigint NULL,
	"tgl_ed" date NULL,
	"no_batch" varchar(255) NULL,
	"sbr_dana" varchar(255) NULL,
	"id_display" varchar(255) NULL,
	"subtotal" numeric(255, 0) NULL,
	"medication_id" varchar(100) NULL,
	"is_cekmedication" integer NULL DEFAULT 0,
	"medicationrequest_id" varchar(50) NULL,
	"is_cekmedicationrequest" integer NULL DEFAULT 0,
	"medication_dispense_id" varchar(50) NULL,
	"is_cekmedication_dispense" integer NULL DEFAULT 0,
	"is_racikan" varchar(10) NULL,
	"resepke" integer NULL,
	"jml_bungkus" integer NULL,
	"input_oleh" varchar(100) NULL,
	"update_oleh" varchar(100) NULL,
	"wkt_input" timestamp NULL,
	"wkt_update" timestamp NULL,
	"is_cekmedstatement" integer NULL DEFAULT 0,
	"med_statement_id" varchar(50) NULL,
	"statement_text" varchar(255) NULL,
	"is_deleted" boolean NULL DEFAULT false,
	"deleted_at" timestamp NULL,
	"deleted_by" integer NULL,
	"created_by" integer NULL,
	"updated_by" integer NULL,
	"loket_id" varchar(255) NULL,
	"jml_obat_diresepkan" integer NULL
);

CREATE TABLE "public"."myrme_users" (
	"ID" serial NOT NULL,
	"username" varchar(255) NULL,
	"password" varchar(255) NULL,
	"email" varchar(255) NULL,
	"fullname" varchar(255) NULL,
	"groupid" varchar(255) NULL DEFAULT 'fasyankes'::character varying,
	"active" integer NULL,
	"ext_security_id" varchar(100) NULL,
	"userpic" bytea NULL,
	"reset_token" varchar(50) NULL,
	"reset_date" timestamp NULL,
	"puskesmas" integer NULL,
	"no_hp" text NULL,
	"two_factor" integer NULL,
	"totp" varchar(100) NULL,
	PRIMARY KEY ("ID" )
);

CREATE TABLE "public"."jns_kunjungan" (
	"ket" varchar(255) NULL,
	"nilai" integer NOT NULL,
	PRIMARY KEY ("nilai" )
);

CREATE TABLE "public"."m_unit" (
	"unit_id" integer NOT NULL,
	"pusk_id" integer NOT NULL,
	"unit" varchar(255) NULL,
	"location_id" varchar(100) NULL,
	"unit_id_lama" integer NULL,
	"pcare_poli" varchar(255) NULL,
	"longitude" varchar(255) NULL,
	"latutude" varchar(255) NULL,
	"is_cek" integer NULL DEFAULT 0,
	PRIMARY KEY ("unit_id" )
);

CREATE TABLE "public"."o_status_kawin" (
	"ket" varchar(255) NULL,
	"kode" integer NULL
);

CREATE TABLE "public"."surat_sehat" (
	"loket_id" varchar(255) NOT NULL,
	"no_surat" varchar(255) NULL,
	"keperluan" varchar(255) NULL,
	"dibuat_oleh" varchar(255) NULL,
	"dibuat_pada" varchar(255) NULL,
	"diedit_oleh" varchar(255) NULL,
	"diedit_pada" varchar(255) NULL
);

CREATE TABLE "public"."lab_analis" (
	"id" varchar(250) NOT NULL,
	"analis" varchar(255) NULL,
	"puskesmas" integer NULL,
	"nip" varchar(255) NULL,
	"map_nakes" integer NULL,
	"ihs" varchar(255) NULL,
	PRIMARY KEY ("id" )
);

CREATE TABLE "public"."lab_hasil_lab" (
	"id" varchar(250) NOT NULL,
	"lab_utama_id" varchar(250) NOT NULL,
	"parameter_id" varchar(250) NOT NULL,
	"hasil" varchar(200) NULL,
	"harga_pemr" numeric(10, 0) NULL,
	"harga_jasmed" numeric(10, 0) NULL,
	"fee_dokter" numeric(10, 0) NULL,
	"harga_total" numeric(10, 0) NULL,
	"grup" integer NULL,
	"sub" integer NULL,
	"servicerequest_id" varchar(50) NULL,
	"iscek_servicerequest" integer NULL DEFAULT 0,
	"observation_id" varchar(50) NULL,
	"iscek_observation" integer NULL DEFAULT 0,
	"spesimen_id" varchar(255) NULL,
	"iscek_spesimen" integer NULL DEFAULT 0,
	"diagnosticreport_id" varchar(50) NULL,
	"iscek_diagnosticreport" integer NULL DEFAULT 0,
	"clinimpression_id" varchar(50) NULL,
	"is_cek_clinimpression" integer NULL DEFAULT 0
);

CREATE TABLE "public"."lab_jenis_parameter" (
	"id" varchar(250) NOT NULL,
	"singkatan" varchar(50) NULL,
	"grup" integer NULL,
	"sub" integer NULL,
	"parameter" varchar(200) NULL,
	"penggunaan" varchar(20) NULL,
	"operator" varchar(20) NULL,
	"nilai_normal_l1" varchar(200) NULL,
	"nilai_normal_l2" varchar(200) NULL,
	"nilai_normal_p1" varchar(200) NULL,
	"nilai_normal_p2" varchar(200) NULL,
	"satuan" varchar(200) NULL,
	"kelompok_converter" integer NULL,
	"harga_pemr" numeric(10, 0) NOT NULL,
	"harga_jasmed" numeric(10, 0) NOT NULL,
	"fee_dokter" numeric(10, 0) NOT NULL,
	"harga_total" numeric(10, 0) NOT NULL,
	"is_koles" integer NOT NULL,
	"is_ro" integer NOT NULL,
	"metode" varchar(200) NULL,
	"tdk_cetak" integer NULL,
	"code_loinc" varchar(100) NULL,
	"display_loinc" varchar(200) NULL,
	"is_puasa" integer NULL DEFAULT 0,
	"code_specimen" varchar(255) NULL,
	"spesimen_name" varchar(255) NULL,
	"code_collecting_method" varchar(255) NULL,
	"name_collecting_method" varchar(255) NULL,
	"kual_kuan" integer NULL DEFAULT 0,
	"codecategory" varchar(20) NULL,
	"codecategoryname" varchar(150) NULL,
	PRIMARY KEY ("id" )
);

CREATE TABLE "public"."lab_jenis_pelayanan" (
	"id" varchar(250) NOT NULL,
	"jenis_pelayanan" varchar(250) NULL,
	"code_request" varchar(50) NULL,
	PRIMARY KEY ("id" )
);

CREATE TABLE "public"."lab_m_lokasi" (
	"id" varchar(250) NOT NULL,
	"lokasi_sampel" varchar(255) NULL,
	PRIMARY KEY ("id" )
);

CREATE TABLE "public"."lab_m_sample" (
	"id" varchar(250) NOT NULL,
	"sample" varchar(50) NULL,
	"loinc" varchar(50) NULL,
	PRIMARY KEY ("id" )
);

CREATE TABLE "public"."lab_permintaan" (
	"loket_id" varchar(150) NOT NULL,
	"laborat" varchar(150) NULL,
	"is_meminta" integer NULL,
	"request_time" timestamp NULL DEFAULT now(),
	"service_request_id" varchar(36) NULL,
	"nik_nakes" varchar(255) NULL,
	"sitb_reg_lab" varchar(255) NULL,
	"faskes_tujuan" varchar(255) NULL,
	"is_requested" integer NULL DEFAULT 0,
	PRIMARY KEY ("loket_id" )
);

CREATE TABLE "public"."lab_rekap_pemanfaatan" (
	"kode" varchar(1) NOT NULL,
	"tmp" varchar(100) NOT NULL,
	PRIMARY KEY ("kode" )
);

CREATE TABLE "public"."lab_spesimen" (
	"id" varchar(250) NOT NULL,
	"lab_utama_id" varchar(250) NULL,
	"sample" varchar(255) NULL,
	"volume" numeric(255, 1) NULL,
	"lokasi_pengambilan" varchar(255) NULL,
	"kondisi" varchar(50) NULL,
	PRIMARY KEY ("id" )
);

CREATE TABLE "public"."lab_utama" (
	"id" varchar(250) NOT NULL,
	"pendaftaran_id" varchar(250) NULL,
	"waktu_periksa" timestamp NULL,
	"spesimen_didapatkan" timestamp NULL,
	"pengirim" varchar(255) NULL,
	"petugas_pemeriksa" varchar(255) NULL,
	"shift_kerja" varchar(255) NULL,
	"jenis_pelayanan" varchar(255) NULL,
	"pemeriksaan_selesai" timestamp NULL,
	"service_request_id" varchar(50) NULL,
	"faskes_tujuan_pusdatin" varchar(250) NULL,
	"referal_status" varchar(50) NULL,
	"pelayanan_id" varchar(255) NULL,
	"is_selesai" integer NULL DEFAULT 0,
	"is_puasa" integer NULL DEFAULT 0,
	"is_delete" boolean NULL DEFAULT false,
	"dilaksanakan_oleh" varchar(50) NULL DEFAULT 'analis'::character varying,
	PRIMARY KEY ("id" )
);

CREATE TABLE "public"."lab_spesimen_kirim" (
	"id" bigint NOT NULL,
	"lab_utama_id" varchar(255) NULL,
	"code_specimen" varchar(255) NULL,
	"nama_spesimen" varchar(255) NULL,
	"code_method_collecting" varchar(255) NULL,
	"name_method_collecting" varchar(255) NULL,
	"wkt_pengambilan" timestamp NULL,
	"iscek_spesimen" integer NULL DEFAULT 0,
	"spesimen_id" varchar(255) NULL,
	PRIMARY KEY ("id" )
);

CREATE TABLE "public"."saran" (
	"id" varchar(255) NOT NULL,
	"waktu" timestamp NULL DEFAULT now(),
	"saran" text NULL,
	"dokumen" text NULL,
	"oleh" varchar(255) NULL,
	"Is_tl" integer NULL DEFAULT 0,
	"kapan" timestamp NULL,
	"dokumen_fedback" text NULL,
	PRIMARY KEY ("id" )
);

CREATE TABLE "public"."changelog" (
	"id" varchar(255) NOT NULL,
	"waktu" timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	"changelog" text NULL,
	"kriteria" varchar(255) NULL,
	PRIMARY KEY ("id" )
);

CREATE TABLE "public"."setting" (
	"url_wablas" varchar(255) NULL,
	"token_wablas" text NULL,
	"secret_key_wablas" text NULL,
	"pass_hrs_diubah_hari" integer NULL,
	"url_pcare" varchar(255) NULL,
	"url_satset" varchar(255) NULL,
	"url_authsatset" varchar(255) NULL,
	"id" integer NOT NULL DEFAULT 1,
	PRIMARY KEY ("id" )
);

CREATE TABLE "" (
	
);

CREATE TABLE "public"."pcareAlergiObat" (
	"id" varchar(255) NOT NULL,
	"obat" varchar(255) NULL,
	PRIMARY KEY ("id" )
);

CREATE TABLE "public"."pcareAlergiMakanan" (
	"id" varchar(255) NOT NULL,
	"obat" varchar(255) NULL,
	PRIMARY KEY ("id" )
);

CREATE TABLE "public"."riwayat_alergi" (
	"id" varchar(250) NOT NULL,
	"jenis_alergi" varchar(250) NOT NULL,
	"person_id" varchar(250) NOT NULL
);

CREATE TABLE "public"."jenis_alergi" (
	"id" varchar(100) NOT NULL,
	"id_pcare" varchar(255) NOT NULL,
	"id_satset" varchar(255) NOT NULL,
	"alergen" varchar(255) NULL,
	"jns_alergi" varchar(250) NULL,
	PRIMARY KEY ("id" )
);




ALTER TABLE "pemeriksaan"
ADD FOREIGN KEY ( "pelayanan_id" )
REFERENCES "public"."pendaftaran" ( "pelayanan_id" )
ON UPDATE CASCADE
ON DELETE CASCADE
;

ALTER TABLE "lab_hasil_lab"
ADD FOREIGN KEY ( "lab_utama_id" )
REFERENCES "public"."lab_utama" ( "id" )
ON UPDATE CASCADE
ON DELETE CASCADE
;

ALTER TABLE "lab_spesimen"
ADD FOREIGN KEY ( "lab_utama_id" )
REFERENCES "public"."lab_utama" ( "id" )
ON UPDATE CASCADE
ON DELETE CASCADE
;
