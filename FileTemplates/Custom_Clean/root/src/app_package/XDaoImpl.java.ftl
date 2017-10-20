package ${packageName};

//data dao implementation
public class ${modelName}DaoImpl implements ${modelName}Dao {

	private ${modelName}DataToDomainMapper<Db${modelName}> mapper;

	public ${modelName}DaoImpl ( ${modelName}DataToDomainMapper<Db${modelName}> mapper) {
		this.mapper = mapper;
	}
	
}