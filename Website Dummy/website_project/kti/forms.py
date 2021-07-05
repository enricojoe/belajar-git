from django import forms

from .models import Kti

class KTIForm(forms.ModelForm):
	class Meta:
		model = Kti
		fields =[
			'nama_ketua',
			'email',
			'no_telepon',
			'instansi',
			'prodi_ketua',
			'nama_anggota',
			'prodi_anggota',
			'subtema',
			'judul_abstrak',
		]