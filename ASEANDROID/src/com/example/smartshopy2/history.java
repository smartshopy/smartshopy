package com.example.smartshopy2;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class history extends Activity {
	
	public void onCreate(Bundle savedInstanceState) {
    	super.onCreate(savedInstanceState);
    	setContentView(R.layout.history_page);
    	
    	Button button1 = (Button) findViewById(R.id.button1);
    	
    	button1.setOnClickListener(new OnClickListener() {
        	public void onClick(View v) {
        		
        		Intent intent = new Intent(history.this,MainActivity.class);
				//intent.putExtra("name", usrId.getText());
				startActivity(intent);
        		       	
        		       	
        	}
        });
        	 		       	
	}
    	
	private void showDialog(String mess)

    {

    new AlertDialog.Builder(history.this).setTitle("Message")

    .setMessage(mess)

    .setNegativeButton("OK", new DialogInterface.OnClickListener()

    {

    public void onClick(DialogInterface dialog, int which)

    {

    }

    })

    .show();
    
}
}
