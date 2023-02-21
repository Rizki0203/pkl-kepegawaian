@extends('layouts.app')
@section('title', 'Profil')

@section('content')

    <div class="card mb-4 p-4">
        <div class="card-body">
            <form action="{{ route('profile.update', @$user->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="row">
                    <div class="col-md-3 d-flex flex-column p-3">
                        <div class="position-relative align-self-center">
                            <img src="{{ $user->avatar }}" class="rounded-circle" id="output" alt="" style="width: 120px; height: 120px" />
                            
                        </div>
                        <h5 class="fw-bold mt-3 text-center">{{ $user->name }}</h5>
                        <a href="#" class="btn btn-primary btn-shadow btn-outline-2x mt-3 text-start">Data Diri</a>
                    </div>
                    <div class="col-md-9 ps-5">

                        <div class="h5 fw-bold">Info Profil</div>
                        <label class="form-label">Nama</label>
                        <div class="input-group position-relative mb-3">
                            <span class="input-group-text border-end-0 bg-transparent">
                                <i data-feather="user"></i>
                            </span>
                            <input name="name" readonly placeholder="Masukkan nama anda" type="text" class="form-control border-start-0 @error('name') is-invalid @enderror bg-transparent" value="{{ old('name', @$user->name) }}">
                            @error('name')
                                <span class="invalid-feedback" role="alert">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>

                        <label class="form-label">Email</label>
                        <div class="input-group position-relative mb-3">
                            <span class="input-group-text border-end-0 bg-transparent">
                                <i data-feather="mail"></i>
                            </span>
                            <input name="email" readonly placeholder="Masukkan email anda" type="text" class="form-control border-start-0 @error('email') is-invalid @enderror bg-transparent" value="{{ old('email', @$user->email) }}">
                            @error('email')
                                <span class="invalid-feedback" role="alert">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>
                    </div>
                </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label class="form-label">NO KTP</label>
                            <input name="no_ktp" readonly type="text" class="form-control @error('no_ktp') is-invalid @enderror bg-transparent" value="{{ old('no_ktp', @$user->profile->no_ktp) }}">
                            @error('no_ktp')
                                <span class="invalid-feedback" role="alert">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">NO SIM</label>
                            <input name="no_sim" readonly type="text" class="form-control @error('no_sim') is-invalid @enderror bg-transparent" value="{{ old('no_sim', @$user->profile->no_sim) }}">
                            @error('no_sim')
                                <span class="invalid-feedback" role="alert">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6">
                            <label class="form-label">NO NPWP</label>
                            <input name="no_npwp" readonly type="text" class="form-control @error('no_npwp') is-invalid @enderror bg-transparent" value="{{ old('no_npwp', @$user->profile->no_npwp) }}">
                            @error('no_npwp')
                                <span class="invalid-feedback" role="alert">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">NO PASSPORT</label>
                            <input name="no_passport" readonly type="text" class="form-control @error('no_passport') is-invalid @enderror bg-transparent" value="{{ old('no_passport', @$user->profile->no_passport) }}">
                            @error('no_passport')
                                <span class="invalid-feedback" role="alert">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6">
                            <label class="form-label">Jenis Kelamin</label><br/>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" readonly type="radio" name="jenis_kelamin" id="flexRadioDefault1" disabled value="laki-laki" checked>
                                <label class="form-check-label" for="flexRadioDefault1">
                                    Laki - laki
                                </label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" readonly type="radio" name="jenis_kelamin" id="flexRadioDefault2" disabled  value="perempuan">
                                <label class="form-check-label" for="flexRadioDefault2">
                                    Perempuan
                                </label>
                            </div>
                            @error('jenis_kelamin')
                                <span class="invalid-feedback" role="alert">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Agama</label>
                            <input name="agama" type="text" readonly class="form-control @error('agama') is-invalid @enderror bg-transparent" value="{{ old('agama', @$user->profile->agama) }}">
                            @error('agama')
                                <span class="invalid-feedback" role="alert">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6">
                            <label class="form-label">Tempat Lahir</label>
                            <input name="tempat" type="text" readonly class="form-control @error('tempat') is-invalid @enderror bg-transparent" value="{{ old('tempat', @$user->profile->tempat) }}">
                            @error('tempat')
                                <span class="invalid-feedback" role="alert">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Tanggal Lahir</label>
                            <input name="tanggal_lahir" readonly type="date" class="form-control @error('tanggal_lahir') is-invalid @enderror bg-transparent" value="{{ old('tanggal_lahir', @$user->profile->tanggal_lahir) }}">
                            @error('tanggal_lahir')
                                <span class="invalid-feedback" role="alert">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6">
                            <label class="form-label">Status Perkawinan</label><br/>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio"  disabled name="status" id="flexRadioDefault11" value="menikah" checked>
                                <label class="form-check-label" for="flexRadioDefault1">
                                    Menikah
                                </label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" disabled type="radio" name="status" id="flexRadioDefault22" value="belum_menikah">
                                <label class="form-check-label" for="flexRadioDefault2">
                                    Belum Menikah
                                </label>
                            </div>
                            @error('status')
                                <span class="invalid-feedback" role="alert">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">No HP</label>
                            <input name="no_hp" type="text" readonly class="form-control @error('no_hp') is-invalid @enderror bg-transparent" value="{{ old('no_hp', @$user->profile->no_hp) }}">
                            @error('no_hp')
                                <span class="invalid-feedback" role="alert">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>
                    </div>
                     <div class="row mt-3">
                        <div class="col-md-6">
                            <label class="form-label">Tinggi</label>
                            <input name="tinggi" type="number" readonly class="form-control @error('tinggi') is-invalid @enderror bg-transparent" value="{{ old('tinggi', @$user->profile->tinggi) }}">
                            @error('tinggi')
                                <span class="invalid-feedback" role="alert">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Berat</label>
                            <input name="berat" type="number" readonly class="form-control @error('berat') is-invalid @enderror bg-transparent" value="{{ old('berat', @$user->profile->berat) }}">
                            @error('berat')
                                <span class="invalid-feedback" role="alert">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6">
                            <label class="form-label">Bank</label>
                            <input name="bank" type="text" readonly class="form-control @error('bank') is-invalid @enderror bg-transparent" value="{{ old('bank', @$user->profile->bank) }}">
                            @error('bank')
                                <span class="invalid-feedback" role="alert">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">No Rekening</label>
                            <input name="no_rekening" readonly type="text" class="form-control @error('no_rekening') is-invalid @enderror bg-transparent" value="{{ old('no_rekening', @$user->profile->no_rekening) }}">
                            @error('no_rekening')
                                <span class="invalid-feedback" role="alert">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="row mt-4 mb-2">
                        <u>Alamat Domisili</u>
                        <div class="col-md-12">
                            <label class="form-label">Alamat Lengkap</label>
                            <textarea name="alamat" readonly rows="3" type="text" class="form-control @error('alamat') is-invalid @enderror bg-transparent">{{ old('alamat', @$user->profile->alamat) }}</textarea>
                            @error('alamat')
                                <span class="invalid-feedback" role="alert">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>
                      
                    </div>
                   


            </form>
        </div>
    </div>


@endsection
