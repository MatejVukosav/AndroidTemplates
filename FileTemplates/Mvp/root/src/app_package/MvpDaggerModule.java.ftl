package ${packageName};

import dagger.Module;
import dagger.Provides;

@Module
public class ${NAME}Module {

    @Provides
    ${NAME}Contract.View provideView( ${NAME} activity ){
        return activity;
    }
    
    @Provides
    ${NAME}Contract.Presenter providePresenter( ${NAME}Contract.View view ){
        return new ${NAME}PresenterImpl( view );
    }
}