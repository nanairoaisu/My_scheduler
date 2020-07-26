package com.example.todoapplication

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.*

class MainActivity : AppCompatActivity() {

    //private var _todoId = -1
    private val _helper = DatabaseHelper(this@MainActivity)

    val catalogList:MutableList<String> = mutableListOf()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)


        val lvCatalog = findViewById<ListView>(R.id.lv_catalog)

        catalogList.add("suika")
        catalogList.add("karasu")
        val adapter = ArrayAdapter<String>(this,android.R.layout.simple_list_item_1,catalogList)
        lvCatalog.adapter = adapter

    }

    fun onAddButtonClick(view: View) {
        val etTask = findViewById<EditText>(R.id.et_task)
        val list = etTask.text.toString()

        //val db = _helper.writableDatabase

        /*val sqlDelete = "DELETE FROM todolists WHERE _id = ?"

        var stmt = db.compileStatement(sqlDelete)
        stmt.bindLong(1, _id)//１って？が一番目のあれじゃん
        stmt.executeUpdateDelete()*/
        /*
        val sqlInsert = "INSERT INTO todolists(_id,list) VALUES(?,?)"

        var stmt = db.compileStatement(sqlInsert)
        //stmt.bindString(1, _id)
        stmt.bindString(1, list)
        stmt.executeInsert()*/

        val lvCatalog = findViewById<ListView>(R.id.lv_catalog)

        catalogList.add(list)

        val adapter = ArrayAdapter<String>(this,android.R.layout.simple_list_item_1,catalogList)
        lvCatalog.adapter = adapter

        etTask.setText("")

        Toast.makeText(applicationContext,"${list}",Toast.LENGTH_SHORT)
            .show()


    }

    override fun onDestroy() {
        _helper.close()
        super.onDestroy()

    }

    /*override fun onItemClick(parent: AdapterView<*>, view: View, position: Int, id: Long){
        //val db = _helper.writableDatabase
        //val sql = "SELECT * FROM todolists WHERE "
    }*/
}