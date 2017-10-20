package ${packageName};

//domain mapper to app impl
public class ${modelName}DomainToAppMapperImpl implements ${modelName}DomainToAppMapper {
	
	@Override
    public ${modelName}Model mapToApp( ${modelName} model ) {
        return new ${modelName}Model();
    }

}