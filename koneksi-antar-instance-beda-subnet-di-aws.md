# Koneksi antar Instance Beda Subnet di AWS
## Setting ini dilakukan dengan asumsi Anda telah berhasil setting instance di public subnet pada VPC yang sama. Masuk dalam aws web console, lakukan hal berikut:

1. Membuat security group baru
2. Menambahkan service yang di-allow dari pri sn ke pub sn (misalnya membuka reply ICMP)
3. Masuk ke menu subnets, ganti security group-nya ke security group baru
4. SSH ke instance di pub sn coba ping ke instance di pri sn
5. Selesai 
