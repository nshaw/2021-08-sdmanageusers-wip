<#assign wp=JspTaglibs["/aps-core"]>
<script src="<@wp.resourceURL />sd-manage-users/static/js/2.cf5477df.chunk.js"></script>
<script src="<@wp.resourceURL />sd-manage-users/static/js/main.4672ea8d.chunk.js"></script>
<script src="<@wp.resourceURL />sd-manage-users/static/js/runtime~main.6d24a6fd.js"></script>
<#-- entando_resource_injection_point -->
<#-- Don't add anything above this line. The build scripts will automatically link the compiled JS and CSS for you and add them above this line so that the widget can be loaded-->
<script nonce="<@wp.cspNonce />">
<!-- TODO: this code needs to be refactored to avoid hardcoded URLs -->
    const keycloakUrl = '/entando-de-app/keycloak.json';
    const serviceUrl = 'http://sd-sales-demo.sales.entando.org';
    document.addEventListener("DOMContentLoaded", function () {
        const wrapper = document.getElementById('manageusers-table');
        fetch(keycloakUrl).then(function (response) {
            return response.json();
        }).then(function (data) {
            console.log(data);
            const mfe = document.createElement('manageusers-table');
            mfe.setAttribute('realm', data.realm);
            mfe.setAttribute('keycloak-url', data['auth-server-url'].replace('/auth', ''));
            mfe.setAttribute('service-url', serviceUrl);
            mfe.setAttribute('pagination-mode', 'pagination');
            wrapper.appendChild(mfe);
        }).catch(function (error) {
            wrapper.innerHTML("Unable to load widget.");
        });
    });</script>
<#--TODO: should be able to just inject the serviceUrl here instead of hardcoding in a DOMContentLoaded event-->
<div id="sd-manage-users"></div>
