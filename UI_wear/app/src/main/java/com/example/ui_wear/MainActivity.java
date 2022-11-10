package com.example.ui_wear;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.example.ui_wear.databinding.ActivityMainBinding;

import java.text.SimpleDateFormat;
import java.util.Date;

public class MainActivity extends Activity {

    private TextView time_TV, date_TV;
    private ActivityMainBinding binding;
    private ImageView img, background, next;
    int background_num = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        time_TV = findViewById(R.id.time_ID);
        date_TV = findViewById(R.id.date_ID);

        // on below line we are creating and initializing
        // variable for simple date format.
        SimpleDateFormat time = new SimpleDateFormat("HH\nmm");
        SimpleDateFormat date = new SimpleDateFormat("EEE, MMM d");

        // on below line we are creating a variable
        // for current date and time and calling a simple date format in it.
        String currentTime = time.format(new Date());
        String currentDate = date.format(new Date());

        // on below line we are setting current
        // date and time to our text view.
        time_TV.setText(currentTime);
        date_TV.setText(currentDate);

        //change background
        background = (ImageView) findViewById(R.id.imageView);
        img = (ImageView) findViewById(R.id.change_ID);
        img.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                background_num++;
                if (background_num == 1) {
                    background.setImageResource(R.drawable.earth);
                } else if (background_num == 2) {
                    background.setImageResource(R.drawable.mars);
                } else if (background_num == 3) {
                    background.setImageResource(R.drawable.pluto);
                    background_num = 0;
                }
            }
        });

        //start new activity, stopwatch
        next = (ImageView) findViewById(R.id.next_ID);
        next.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this,MainActivity2.class);
                startActivity(intent);
            }
        });

    }
}