package com.example.todoapplication

import android.content.Context
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteOpenHelper
import java.lang.StringBuilder

class DatabaseHelper(context: Context): SQLiteOpenHelper(context, DATABASE_NAME,null, DATABASE_VERSION) {

    companion object{
        private const val DATABASE_NAME = "task.db"
        private const val DATABASE_VERSION = 1

    }

    override fun onCreate(db: SQLiteDatabase?) {
        val sb = StringBuilder()//文字列連結するのに使う！
        sb.append("CREATE TABLE todolists(")
        //sb.append("_id INTEGER PRIMARY KEY,")
        sb.append("list TEXT")
        sb.append(");")
        val sql = sb.toString()

        db?.execSQL(sql)
    }

    override fun onUpgrade(db: SQLiteDatabase?, oldVersion: Int, newVersion: Int) {
    }

}