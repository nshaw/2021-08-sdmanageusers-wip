<#assign wp=JspTaglibs["/aps-core"]>
<script src="<@wp.resourceURL />sd-manage-users/static/js/2.cf5477df.chunk.js"></script>
<script src="<@wp.resourceURL />sd-manage-users/static/js/main.4a96d483.chunk.js"></script>
<script src="<@wp.resourceURL />sd-manage-users/static/js/runtime~main.6d24a6fd.js"></script>
<#-- entando_resource_injection_point -->
<#-- Don't add anything above this line. The build scripts will automatically link the compiled JS and CSS for you and add them above this line so that the widget can be loaded-->

<@wp.info key="currentLang" var="currentLangVar" />
<!-- TODO: set the service-url (or urls) when re-implmenting the fetchData functionality-->
<sd-manage-users locale="${currentLangVar}" service-url="/banking" pagination-mode="pagination"/>

