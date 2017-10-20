package ${packageName};

//data mapper to domain local implementation
public class Local${modelName}DataToDomainMapperImpl implements ${modelName}DataToDomainMapper<Db${modelName}> {
	
	@Override
    public ${modelName} dataToDomain( Db${modelName} dbModel ) {
        return new ${modelName}();
    }

}