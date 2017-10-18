<?xml version="1.0"?>
<recipe>

	 <dependency mavenUrl="com.android.support:support-v4:+"/>

    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />


	 <#if includeLayout>
 	 <instantiate from="root/res/layout/activity_layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/activity_${classToResource(NAME)}.xml" />

 	 <open file="${escapeXmlAttribute(resOut)}/layout/activity_${classToResource(NAME)}.xml" />
 	 </#if>


 	 <#if useDagger>
 		
 		 <instantiate from="root/src/app_package/DaggerMvpActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${NAME}.java" />
         <instantiate from="root/src/app_package/MvpDaggerModule.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${NAME}Module.java" />
         <instantiate from="root/src/app_package/DaggerMvpPresenterImpl.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${NAME}PresenterImpl.java" />
 	 <#else>
 		 <instantiate from="root/src/app_package/MvpActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${NAME}.java" />
 	     <instantiate from="root/src/app_package/MvpPresenterImpl.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${NAME}PresenterImpl.java" />
   	</#if>
 
 	 	 <instantiate from="root/src/app_package/MvpContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${NAME}Contract.java" />
         <open file="${escapeXmlAttribute(srcOut)}/${NAME}Contract.java" />
         
         <open file="${escapeXmlAttribute(srcOut)}/${NAME}.java" />
 	     <open file="${escapeXmlAttribute(srcOut)}/${NAME}Module.java" />
 	     <open file="${escapeXmlAttribute(srcOut)}/${NAME}PresenterImpl.java" />

</recipe>
