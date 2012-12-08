package com.example.smartshopy2;



import java.io.IOException;

import org.ksoap2.SoapEnvelope;
import org.ksoap2.serialization.SoapObject;
import org.ksoap2.serialization.SoapSerializationEnvelope;
import org.ksoap2.transport.HttpTransportSE;
import org.xmlpull.v1.XmlPullParserException;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.StrictMode;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends Activity {

	EditText username=null;
	EditText password=null;	
	private Button submit;
	private Button register;
	private static final String NAMESPACE = "http://tempuri.org/";
	private static String  URl;
	private static String Method_NAME;
	
	
	
    @SuppressLint("NewApi")
	@Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        
        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
        StrictMode.setThreadPolicy(policy); 	
        
        setContentView(R.layout.activity_main);
        submit= (Button)findViewById(R.id.submit);
        register= (Button)findViewById(R.id.register);
        username=(EditText)findViewById(R.id.username);
        password=(EditText)findViewById(R.id.password);
        
        submit.setOnClickListener(new View.OnClickListener() {
			
			public void onClick(View arg0) {
				// TODO Auto-generated method stub
				String userIdTxt = username.getText().toString();
    			String passwordTxt = password.getText().toString();
    			
    			
    			loginAuthentication();
    			
    			
    			Intent intent = new Intent(MainActivity.this,firstpage.class);
    			startActivity(intent);
			}
    			
		});
       register.setOnClickListener(new View.OnClickListener() {
			
			public void onClick(View arg0) {
				
				Intent intent = new Intent(MainActivity.this,registration.class);
				//intent.putExtra("name", usrId.getText());
				startActivity(intent);
			}
			});
			
    }
    public int loginAuthentication() {
		// HelloActivity.URL =
		// "http://10.0.2.2:42582/WebServiceDisaster/Service.asmx";
		final SharedPreferences prefs = this.getSharedPreferences("com.example.android.helloactivity", Context.MODE_PRIVATE);
		Editor editor = prefs.edit();
		MainActivity.URl = "http://170.225.97.68/aspnet_client/LoginService/CommonLogonService.asmx";

		MainActivity.Method_NAME = "LoginValidation";

		//String data = username.getText().toString();
		//String data1 = password.getText().toString();

		// ***** transport
		HttpTransportSE transport = new HttpTransportSE(URl);
		transport.debug = true;

		// *********** soapobject
		SoapObject soapObject = new SoapObject(MainActivity.NAMESPACE,
				MainActivity.Method_NAME);

		soapObject.addProperty("username", "TestUserEmp1");
		soapObject.addProperty("password", "TestUserEmp1");

		SoapSerializationEnvelope envelope = new SoapSerializationEnvelope(
				SoapEnvelope.VER11);
		envelope.dotNet = true;

		envelope.bodyOut = soapObject;// transport;

		String  logindetails = null;
		int id = 0;
		try {

			transport.call("http://tempuri.org/LoginValidation", envelope);
			
			logindetails = (envelope.getResponse().toString());
			
		    String[] buff =	logindetails.split("-");
			
		    id =  Integer.parseInt(buff[1]);
			editor.putInt("empid", id);
			editor.commit();
			
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			showDialog("E1");
		} catch (XmlPullParserException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			showDialog("E2");
		} catch (Exception ex) {
			ex.printStackTrace();
			showDialog("E3");
		}
		return id;
	}

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.activity_main, menu);
        return true;
        
    }
    private void showDialog(String mess)

    {

    new AlertDialog.Builder(MainActivity.this).setTitle("Message")

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
