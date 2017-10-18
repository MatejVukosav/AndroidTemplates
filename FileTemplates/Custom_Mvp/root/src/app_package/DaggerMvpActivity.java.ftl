package ${packageName};

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import dagger.android.AndroidInjection;


public class ${NAME} extends AppCompatActivity implements ${NAME}Contract.View{

	@Inject
	${NAME}Contract.Presenter presenter;

	
    @Override
    public void onCreate(Bundle savedInstanceState){
	    AndroidInjection.inject(this);
		super.onCreate(savedInstanceState);
    } 

}