package ${packageName};

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;


public class ${NAME} extends AppCompatActivity implements ${NAME}Contract.View{

	
	${NAME}Contract.Presenter presenter;
	
    @Override
    public void onCreate(Bundle savedInstanceState){
	    super.onCreate(savedInstanceState);

	    this.presenter = new ${NAME}PresenterImpl(this);
    } 

}