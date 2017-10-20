<?xml version="1.0"?>
<recipe>

<!-- domain model -->
<instantiate from="src/app_package/XModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${modelName}Model.java" />
         <open file="${escapeXmlAttribute(srcOut)}/${modelName}Model.java" />

<!-- domain model -->
<instantiate from="src/app_package/X.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${modelName}.java" />
         <open file="${escapeXmlAttribute(srcOut)}/${modelName}.java" />

<!-- domain repository interface -->
<instantiate from="src/app_package/XRepository.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${modelName}Repository.java" />
         <open file="${escapeXmlAttribute(srcOut)}/${modelName}Repository.java" />

<!-- domain use case -->
<instantiate from="src/app_package/XUseCase.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${useCaseName}.java" />

<!-- data api model -->
<instantiate from="src/app_package/ApiX.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/Api${modelName}.java" />

<!-- data db model -->
<instantiate from="src/app_package/DbX.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/Db${modelName}.java" />

<!-- data to domain local mapper impl -->
<instantiate from="src/app_package/LocalXDataToDomainMapperImpl.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/Local${modelName}DataToDomainMapperImpl.java" />       

<!-- data to domain remote mapper impl -->
<instantiate from="src/app_package/RemoteXDataToDomainMapperImpl.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/Remote${modelName}DataToDomainMapperImpl.java" />                                  

<!-- data to domain mapper interface -->
<instantiate from="src/app_package/XDataToDomainMapper.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${modelName}DataToDomainMapper.java" />  

<!-- domain to app mapper  -->
<instantiate from="src/app_package/XDomainToAppMapper.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${modelName}DomainToAppMapper.java" />  

<!-- domain to app mapper impl  -->
<instantiate from="src/app_package/XDomainToAppMapperImpl.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${modelName}DomainToAppMapperImpl.java" />  

 <!-- data repository impl -->
<instantiate from="src/app_package/XRepositoryImpl.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${modelName}RepositoryImpl.java" />           

 <!-- data service impl -->
<instantiate from="src/app_package/XServiceImpl.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${modelName}ServiceImpl.java" /> 

<!-- data service interface -->
<instantiate from="src/app_package/XService.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${modelName}Service.java" /> 

 <!-- data dao impl -->
<instantiate from="src/app_package/XDaoImpl.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${modelName}DaoImpl.java" /> 

<!-- data dao interface -->
<instantiate from="src/app_package/XDao.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${modelName}Dao.java" />                                        

</recipe>
