package com.maryanto.dimas.bootcamp.service;

import com.maryanto.dimas.bootcamp.model.Mahasiswa;

import java.util.List;

public interface MahasiswaService {

    List<Mahasiswa> findAll();

    Mahasiswa findById(String id);

    Mahasiswa save(Mahasiswa value);

    Mahasiswa update(Mahasiswa value);

    boolean deleteById(String id);
}
