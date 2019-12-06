#source code final project
#Sistem Operasi Paralel B
#Habib Moch Arif
#18081010072


a=1;
while [[ a -eq 1 ]];
do
clear

   echo "|=============================================|"
   echo "|    Program Bash & Program Pendaftaran       |"
   echo "|=============================================|"
   echo "|1. Manipulasi hak akses berkas               |"
   echo "|2. Menjalankan Program yang ada di direktori |"
   echo "|3. Program Pendaftaran Mahasiswa             |"
   echo "|4. Exit                                      |"
   echo "|=============================================|"
   echo -n " Masukkan Pilihanmu : "
   read pilihan

   if [[ $pilihan -eq 1 ]];
   	then
   	ls -l

      echo "Masukkan nama berkas yang mau diubah hak akses nya"
      read ubah_akses
      echo "Apakah benar ini nama berkasnya $ubah_akses"
      sudo chmod 777 $ubah_akses
      clear
      
      ls -l
      echo "Hak akses telah dirubah"
      echo " "
      read -rsp $'Tekan enter untuk kembali ke menu utama \n' -n1 key

   elif [[ $pilihan -eq 2 ]];
	then
	ls -l
         echo "Nama file yang ingin dijalankan : "
         read nama_file
         bash $nama_file
         echo " File Telah berjalan "
         echo " "
         read -rsp $'Tekan enter untuk kembali ke menu utama \n' -n1 key

   elif [[ $pilihan -eq 3 ]];
	then
	 	   echo "bikin dulu program'nya!"
         read enter
         echo "Program Sudah jadi,Tekan enter untuk menamai filenya"
         read enter
         echo "nama file'nya apa nih? : "
         read nama_file_anda
         nano $nama_file_anda

         nem=0
		 lagi='y'
		 while [ $lagi=='y' ] || [ $lagi=='Y' ];
		 do
		 clear
		 echo "====================================================="
		 echo "|              PENDAFTARAN MAHASISWA BARU           |"
		 echo "|         SELAMAT DATANG CALON MAHASISWA BARU       |"
		 echo "|                UPN VETERAN JAWA TIMUR             |"
		 echo "====================================================="
		 echo "|               Pilih menu di bawah ini             |"
		 echo "|1. Pendaftaran              |                      |"
		 echo "====================================================="
		 echo "|2. Administrasi             |                      |"
		 echo "====================================================="
		 echo "|3. Cetak Data Pendaftar     |                      |"
		 echo "====================================================="
		 echo "|4. Keluar                   |                      |"
		 echo "====================================================="
		 echo -n "==>> Pilihan Anda : "
		 read pilih
		 case $pilih in
		 1)
		 clear
		 echo "Isi data di bawah ini dengan benar"
		 echo -n "Nama                       : "
		 read nama
		 echo -n "Alamat                     : "
		 read alamat
		 echo -n "Tempat Lahir               : "
		 read tlahir
		 echo -n "Tanggal Lahir              : "
	  	 read glahir
		 echo "(1) Perempuan  (2) Laki-laki"
		 echo -n "Jenis Kelamin              : "
		 read pil
		 if [ $pil -eq 1 ];
		 then
        		 jk="Perempuan";
		 elif [ $pil -eq 2 ];
		 then
       		 	 jk="Laki-laki";
		 else
        		 jk="Tidak Terdefinisi";
		 fi
		 echo -n "Asal Sekolah               : "
		 read asal
		 echo -n "Nomor Pendaftaran          : "
		 read nem
		 echo "(1) Teknik Informatika (2) Sistem Informasi (3) Akuntansi (4) Manajemen (5)Hukum"
		 echo -n "Jurusan yang dipilih       : "
		 read pill
		 if [ $pill -eq 1 ];
		 then
        		 jp="Teknik Informatika";
		 elif [ $pill -eq 2 ];
		 then
       			 jp="Sistem Informasi";
		 elif [ $pill -eq 3 ];
		 then
       			 jp="Akuntansi";
		 elif [ $pill -eq 4 ];
		 then
       			 jp="Manajemen";
		 elif [ $pill -eq 5 ];
		 then
       		 	 jp="Hukum";
		 else
        		 jp="Tidak Terdefinisi";
		 fi
		 echo ""
		 echo "Terima Kasih, Anda sudah melengkapi seluruh data"
		 ;;
		 2)
		 clear
		 case $nem in
		 0)
		 echo "Maaf Anda belum mendaftar, jadi tidak bisa melakukan transaksi"
		 ;;
		 *)
		 echo "Rincian dana sebagai berikut:"
		 echo "   UKT     : Rp 2000000,0"
		 read pil4
		 echo ""
		 echo -n "Cicilan UKT        : "
		 read cicilan
		 echo "Saudara $nama ini rincian Anda : "
		 if [ $cicilan -lt 2000000 ];
		 then
        		 kurang1=`expr 2000000 - $cicilan`
        		 echo "UKT Anda kurang Rp $kurang1 "
		 elif [ $cicilan -gt 2000000 ];
		 then
        		 lebih=`expr $cicilan - 2000000`
        		 echo "UKT Anda lunas dan ada kembalian Rp $lebih"
        
		 elif [ $cicilan -eq 2000000 ];
		 then
        		 echo "UKT Anda lunas"
       
		 else
       		 echo "UKT Anda kurang Rp 2000000,0 "
		 fi
		 ;;
		 esac
		 ;;
		 3)
		 clear
		 case $nem in
		 0)
		 echo "Maaf belum ada yang daftar"
		 ;;
		 *)
		 clear
		 echo "=========================================="
		 echo "|             Daftar diri Anda            "
		 echo "|-----------------------------------------"
		 echo "|Nama                         : $nama     "
		 echo "|Alamat                       : $alamat   "
		 echo "|Tempat Lahir                 : $tlahir   "
		 echo "|Tanggal Lahir                : $glahir   "
		 echo "|Jenis Kelamin                : $jk       "
		 echo "|Asal Sekolah                 : $asal     "
		 echo "|Nomor Pendaftaran            : $nem      "
		 echo "|Jurusan yang dipilih         : $jp       "
		 echo "|Transaksi Pembayaran         : $cicilan  "
		 echo "=========================================="
		 echo ""
		 ;;
		 esac
		 ;;
		 4)
		 clear
		 echo "Terima kasih telah berkunjung"
		 echo -n ":)"
		 read enter
		 break

		 ;;
		 *)
		 echo "Anda salah memasukkan pilihan"
		 ;;
		 esac
		 echo ""
		 echo -n "Tekan Y/Enter untuk Kembali ke menu utama ";
		 read lagi;
		 done

   
   echo " "
   read -rsp $'Tekan enter untuk kembali ke menu utama \n' -n1 key

   	elif [[ $pilihan -eq 4 ]];
	then
		 echo "Terima kasih telah berkunjung"
		 echo -n ":)"
		 read enter
		 exit
   
	a=0;
	else
  	echo " "
  	echo "Masukkan pilihan dengan benar!"

  	echo " "
  	read -rsp $'Tekan enter untuk lanjut \n' -n1 key

  	
fi
done