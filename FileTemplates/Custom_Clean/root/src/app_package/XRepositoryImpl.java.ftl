package ${packageName};

//domain repository implementation
public class ${modelName}RepositoryImpl implements ${modelName}Repository {

	private final ${modelName}Service service;
	private final ${modelName}Dao userDap;

	public ${modelName}RepositoryImpl( ${modelName}Service service, ${modelName}Dao userDao ){
		this.service = service;
		this.userDap = userDap;
	}
}