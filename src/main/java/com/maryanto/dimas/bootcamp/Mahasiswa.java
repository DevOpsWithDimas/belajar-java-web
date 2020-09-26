package com.maryanto.dimas.bootcamp;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

@Data
public class Mahasiswa {

    private String namaLengkap;
    private Date tanggalLahir;
    private BigDecimal saldo;
}
