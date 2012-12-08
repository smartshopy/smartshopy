package com.example.smartshopy2;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;

import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class reachstore extends Activity {

	public void onCreate(Bundle savedInstanceState) {
    	super.onCreate(savedInstanceState);
    	setContentView(R.layout.reach_store);
    	
    	Button submit = (Button) findViewById(R.id.submit);
    	
    	
    	submit.setOnClickListener(new OnClickListener() {
        	public void onClick(View v) {
        		showDialog("searching given address....... ");
        		String url="http://maps.google.com/maps?saddr=Main+Street&addr=Troost";
        		Intent intent = new Intent(android.content.Intent.ACTION_VIEW, Uri.parse(url));
				//intent.putExtra("name", usrId.getText());
				startActivity(intent);
        		       	
        		       	
        	}
        });
    	
	}
	private void showDialog(String mess)

    {

    new AlertDialog.Builder(reachstore.this).setTitle("Message")

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

