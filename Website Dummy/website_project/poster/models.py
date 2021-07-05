from django.db import models

# Create your models here.

class Poster(models.Model):
	nama_ketua			= models.CharField(max_length=100)
	email	  			= models.EmailField(max_length=100)
	no_telepon 			= models.CharField(max_length=100)
	instansi			= models.CharField(max_length=100)
	prodi_ketua			= models.CharField(max_length=100)
	nama_anggota		= models.CharField(max_length=100)
	prodi_anggota		= models.CharField(max_length=100)
	subtema				= models.CharField(max_length=100, primary_key=True)

	def __str__(self):
		return "{}".format(self.subtema)