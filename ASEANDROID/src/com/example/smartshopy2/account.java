package com.example.smartshopy2;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class account extends Activity {

	public void onCreate(Bundle savedInstanceState) {
    	super.onCreate(savedInstanceState);
    	setContentView(R.layout.my_account);
    	
    	Button checkdetails = (Button) findViewById(R.id.checkdetails);
    	Button history = (Button) findViewById(R.id.history);
    	Button personalize = (Button) findViewById(R.id.personalize);
    	Button subscription = (Button) findViewById(R.id.subscription);
    	
    	checkdetails.setOnClickListener(new OnClickListener() {
        	public void onClick(View v) {
        		Intent intent = new Intent(account.this,checkdetails.class);
				//intent.putExtra("name", usrId.getText());
				startActivity(intent);
        		       	
        		       	
        	}
        });
    	
    	history.setOnClickListener(new OnClickListener() {
        	public void onClick(View v) {
        		
        		Intent intent = new Intent(account.this,history.class);
				//intent.putExtra("name", usrId.getText());
				startActivity(intent);
        		       	
        	}
        });
    	personalize.setOnClickListener(new OnClickListener() {
        	public void onClick(View v) {
        		Intent intent = new Intent(account.this,personalize.class);
				//intent.putExtra("name", usrId.getText());
				startActivity(intent);
        		       	
        	}
        });
    	subscription.setOnClickListener(new OnClickListener() {
        	public void onClick(View v) {
        		showDialog("subscription successful ");
        		
        	}
        });
    	
	}
	private void showDialog(String mess)

    {

    new AlertDialog.Builder(account.this).setTitle("Message")

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