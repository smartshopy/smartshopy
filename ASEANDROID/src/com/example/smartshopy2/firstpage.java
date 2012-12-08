package com.example.smartshopy2;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class firstpage extends Activity {

	public void onCreate(Bundle savedInstanceState) {
    	super.onCreate(savedInstanceState);
    	setContentView(R.layout.firstpage);
    
    Button account = (Button) findViewById(R.id.account);
    Button web = (Button) findViewById(R.id.web);
    Button store = (Button) findViewById(R.id.store);
    Button reachstore = (Button) findViewById(R.id.reachstore);
    Button logout = (Button) findViewById(R.id.logout);
    	
    	account.setOnClickListener(new OnClickListener() {
        	public void onClick(View v) {
        		Intent intent = new Intent(firstpage.this,account.class);
				//intent.putExtra("name", usrId.getText());
				startActivity(intent);
        		       	
        	}
        });
    	web.setOnClickListener(new OnClickListener() {
        	public void onClick(View v) {
        		Intent intent = new Intent(firstpage.this,searchweb.class);
				//intent.putExtra("name", usrId.getText());
				startActivity(intent);
        		       	
        	}
        });
    	store.setOnClickListener(new OnClickListener() {
        	public void onClick(View v) {
        		Intent intent = new Intent(firstpage.this,searchstore.class);
				//intent.putExtra("name", usrId.getText());
				startActivity(intent);
        		       	
        	}
        });
    	reachstore.setOnClickListener(new OnClickListener() {
        		public void onClick(View v) {
            		Intent intent = new Intent(firstpage.this,reachstore.class);
    				//intent.putExtra("name", usrId.getText());
    				startActivity(intent);
        		       	
        	}
        });
    	logout.setOnClickListener(new OnClickListener() {
        	public void onClick(View v) {
        		Intent intent = new Intent(firstpage.this,MainActivity.class);
				//intent.putExtra("name", usrId.getText());
				startActivity(intent);
        		       	
        	}
        });
	}
	private void showDialog(String mess)

    {

    new AlertDialog.Builder(firstpage.this).setTitle("Message")

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
