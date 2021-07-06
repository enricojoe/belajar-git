from django import forms

from .models import Prototype

class PROTOTYPEForm(forms.ModelForm):
	class Meta:
		model = Prototype
		fields =[
			'nama_ketua',
			'email',
			'no_telepon',
			'instansi',
			'prodi_ketua',
			'nama_anggota',
			'prodi_anggota',
			'subtema',
		]