package ${packageName};

//data mapper to domain remote implementation
public class Remote${modelName}DataToDomainMapperImpl implements ${modelName}DataToDomainMapper<Api${modelName}> {
	
	@Override
    public ${modelName} dataToDomain( Api${modelName} apiModel ) {
        return new ${modelName}();
    }

}