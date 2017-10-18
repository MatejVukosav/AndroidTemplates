package ${packageName};

import javax.inject.Inject;

public class ${NAME}PresenterImpl implements ${NAME}Contract.Presenter{

    private ${NAME}Contract.View view;

    @Inject
    public ${NAME}PresenterImpl(${NAME}Contract.View view){
   		 this.view = view;
    }
    
}