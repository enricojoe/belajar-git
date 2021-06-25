from django.db import models

#class Peminjaman_detail(models.Model):
#	ID = models.CharField(primary_key=True,max_length=5)
#	No_Peminjaman = models.ForeignKey("Peminjaman", on_delete=models.CASCADE)
#	Kode_Barang = models.CharField(max_length=5)
#	Jumlah = models.IntegerField()
	
class Barang(models.Model):
	Nama_Barang = models.CharField(primary_key=True,max_length=30)
	Kode_Barang = models.CharField(max_length=5)
	ID = models.CharField(max_length=5, blank=True)
	Merk = models.CharField(max_length=30)
	stock = models.PositiveIntegerField()
	BAST_Perolehan = models.BinaryField(blank=True)

	class Meta:
		verbose_name_plural = 'Barang'

	def __str__ (self):
		return "{}".format(self.Nama_Barang)

class Peminjaman(models.Model):
	No_Peminjaman = models.PositiveIntegerField(primary_key=True,default='1')
	Nama_Barang = models.ForeignKey("Barang", on_delete=models.CASCADE)
	Nama_Pegawai = models.ForeignKey('Pegawai',on_delete=models.CASCADE)
	Gedung = models.ForeignKey("Gedung",on_delete=models.CASCADE)
	Ruang = models.ForeignKey("Ruang",on_delete=models.CASCADE)
	Jumlah_Pinjam = models.PositiveIntegerField(default='1')
	Tanggal_Pinjam = models.DateTimeField()
	Tanggal_Kembali = models.DateTimeField()
	BAST_Disposisi = models.BinaryField(blank=True)

	def save(self, *args, **kwargs):
		sisa = Barang.objects.get(Nama_Barang = self.Nama_Barang).stock - self.Jumlah_Pinjam
		Barang.objects.filter(Nama_Barang = self.Nama_Barang).update(stock = sisa)
		super(Peminjaman, self).save(*args, **kwargs)


	class Meta:
		verbose_name_plural = 'Peminjaman'
	def __str__(self):
		return"{}".format(self.No_Peminjaman)

class Gedung(models.Model):
	Gedung = models.CharField(primary_key=True,max_length=10)
	ID = models.CharField(max_length=5,blank=True)
	MG_Gedung = models.CharField(max_length=30)
	
	class Meta:
		verbose_name_plural = 'Gedung'

	def __str__(self):
		return"{}".format(self.Gedung)

class Ruang(models.Model):
	Ruang = models.CharField(primary_key=True,max_length=5)
	PJ_Ruang = models.CharField(max_length=20)
	Gedung = models.ForeignKey("Gedung",on_delete=models.CASCADE)

	class Meta:
		verbose_name_plural = 'Ruang'

	def __str__(self):
		return"{}".format(self.Ruang)

class Pegawai(models.Model):
	Nama_Pegawai = models.CharField(primary_key=True,max_length=30)
	NIP_NRK = models.CharField(max_length=15)
	Alamat = models.CharField(max_length=30)
	Telp = models.CharField(max_length=13)
	Role = models.CharField(max_length=10)

	class Meta:
		verbose_name_plural = 'Pegawai'
	def __str__(self):
		return"{}".format(self.Nama_Pegawai)