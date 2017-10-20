package ${packageName};

//data service implementation
public class ${modelName}ServiceImpl implements ${modelName}Service {
	
	private final ${modelName}DataToDomainMapper<Api${modelName}> remoteMapper;

	public ${modelName}ServiceImpl( ${modelName}DataToDomainMapper<Api${modelName}> remoteMapper ){
		this.remoteMapper = remoteMapper;
	} 
}