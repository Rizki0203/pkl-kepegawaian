@extends('layouts.app')
@section('title', 'Kinerja Karyawan')

@section('content')
    <h1 class="h3 mb-3"><strong>Halaman</strong> Kinerja Karyawan</h1>

    <div class="card mb-5">
        <div class="card-header">
            <div class="row">
                <div class="col-md-6">
                    Kinerja Karyawan
                </div>
                {{-- <div class="col-md-6 text-end">
                    <a href="{{ route('admin.kontrak.create') }}" class="btn btn-sm btn-primary">
                        <i class="me-1" data-feather="plus"></i>Tambah Kontrak Karyawan
                    </a>
                </div> --}}
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-auto">
                        <form>
                            <div class="row no-gutters mb-4 mt-3">
                                <div class="col-md-auto">
                                    <div class="row no-gutters">
                                        <div class="col-md-auto pe-0">
                                            <x-ordering class="form-select-sm" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </form>
                    </div>
                    <div class="col-md-auto">
                        <form id="form-filter">
                            <div class="row no-gutters mb-4 mt-3">

                                <div class="col-md-auto pe-0">
                                    <div class="form-group">
                                        <input type="text" name="tanggal" id="tanggal" value="{{ old('tanggal', @$_GET['tanggal']) }}" class="custom-select custom-select-sm form-control form-control-sm" data-toggle="daterangepicker" autocomplete="off">

                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-auto">
                        <div class="row no-gutters mb-4 mt-3">
                            <div class="col-md-auto">
                                <a href="{{ route('admin.kinerja.exportlist', ['tanggal' => @$_GET['tanggal'], 'show' => @$_GET['show']]) }}" target="_blank" class="btn btn-outline-success btn-sm">
                                    <i class="fas fa-file-export mr-1"></i>Export
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-7 d-flex justify-content-end mt-3">
                        <form>
                            <div class="input-group">
                                <div class="input-group-prepend input-group-sm">
                                    <span class="input-group-text border-0 bg-transparent">Search :</span>
                                </div>
                                <input placeholder="Search" id="search" type="search" name="search" onchange="this.form.submit();" value="{{ @$_GET['search'] }}" class="form-control form-control-sm rounded-3 fa-placeholder bg-transparent">

                            </div>
                        </form>
                    </div>
                </div>
                <table class="nowrap table">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Karyawan</th>
                            <th>Tugas</th>
                            <th>Aktifitas</th>
                            <th>Keterangan</th>
                            <th>Tgl Mengerjakan</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($kinerja as $item)
                            <tr>
                                <td>{{ $loop->iteration }}.</td>
                                <td>{{ $item->tugas->user->name }}</td>
                                <td><b>{{ $item->tugas->tugas }}</b></td>
                                <td>{{ $item->aktifitas }}</td>
                                <td>{{ $item->keterangan }}</td>
                                <td>{{ \Carbon\Carbon::parse($item->created_at)->isoFormat('DD MMM Y') }}</td>
                                <td>
                                    <a href="{{ route('user.kinerja.edit', $item->id) }}" class="btn btn-outline-warning btn-sm" data-bs-toggle="tooltip" title="Klik Untuk Mengedit Data">
                                        <i data-feather="edit" class="btn-icon-wrapper d-inline"></i></a>
                                    <button type="button" class="btn btn-outline-danger btn-sm" onclick="deleteConfirmation('{{ route('user.kinerja.destroy', [$item->id]) }}')" data-bs-toggle="tooltip" title="Klik Untuk Menghapus Data">
                                        <i data-feather="trash" class="btn-icon-wrapper d-inline"></i></button>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td class="text-center" colspan="7">Tidak Ada Data</td>
                            </tr>
                        @endforelse

                    </tbody>
                </table>
            </div>
            <x-pagination :pagination="$kinerja" />
        </div>
    @endsection
