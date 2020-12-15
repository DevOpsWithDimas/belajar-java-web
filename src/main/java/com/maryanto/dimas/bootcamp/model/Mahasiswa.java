package com.maryanto.dimas.bootcamp.model;

import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

@Data
@Builder
public class Mahasiswa {

    private String namaLengkap;
    private Date tanggalLahir;
    private BigDecimal saldo;
    private boolean aktif;
}
