<#import "logintemplate.ftl" as layout>
  <#import "components/atoms/button.ftl" as button>
    <#import "components/atoms/button-group.ftl" as buttonGroup>
      <#import "components/atoms/checkbox.ftl" as checkbox>
        <#import "components/atoms/form.ftl" as form>
          <#import "components/atoms/input.ftl" as input>
            <#import "components/atoms/link.ftl" as link>
              <#import "components/molecules/identity-provider.ftl" as identityProvider>
                <#import "features/labels/username.ftl" as usernameLabel>
                  <#assign usernameLabel>
                    <@usernameLabel.kw />
                  </#assign>
                  <@layout.loginLayout
                    displayInfo=realm.password && realm.registrationAllowed && !registrationDisabled??
                    displayMessage=!messagesPerField.existsError("username", "password" )
                    ;
                    section>
                    <#if section="header">
                      <div class="text-neutral-100 space-y-2">
                        <div class="text-center text-[16px]
 text-cente text-neutral-600">Enter your details to login.</div>
                      </div>
                      <#elseif section="form">
                        <#if realm.password>
                          <@form.kw
                            action=url.loginAction
                            method="post"
                            onsubmit="login.disabled = true; return true;">
                            <input
                              name="credentialId"
                              type="hidden"
                              value="<#if auth.selectedCredential?has_content>
${auth.selectedCredential}
</#if>">
                            <@input.kw
                              autocomplete=realm.loginWithEmailAllowed?string("email", "username" )
                              autofocus=true
                              disabled=usernameEditDisabled??
                              invalid=messagesPerField.existsError("username", "password" )
                              label=usernameLabel
                              message=kcSanitize(messagesPerField.getFirstError("username", "password" ))
                              name="username"
                              type="text"
                              value=(login.username)!'' />
                            <@input.kw
                              invalid=messagesPerField.existsError("username", "password" )
                              label=msg("password")
                              name="password"
                              type="password" />
                            <#if realm.rememberMe && !usernameEditDisabled?? || realm.resetPasswordAllowed>
                              <div class="flex items-center justify-between text-sm text-neutral-100">
                                <#if realm.rememberMe && !usernameEditDisabled??>
                                  <@checkbox.kw
                                    checked=login.rememberMe??
                                    label=msg("rememberMe")
                                    name="rememberMe" />
                                </#if>
                                <#if realm.resetPasswordAllowed>
                                  <@link.kw color="primary" href=url.loginResetCredentialsUrl size="small">
                                    <div class="text-neutral-100">
                                      ${msg("doForgotPassword")}
                                    </div>
                                  </@link.kw>
                                </#if>
                              </div>
                            </#if>
                            <@buttonGroup.kw>
                              <@button.kw color="primary" name="login" type="submit">
                                ${msg("doLogIn")}
                              </@button.kw>
                            </@buttonGroup.kw>
                          </@form.kw>
                        </#if>
                        <#elseif section="info">
                          <#if realm.password && realm.registrationAllowed && !registrationDisabled??>
                            <div class="text-center text-sm text-neutral-100">
                              ${msg("noAccount")}
                              <@link.kw color="primary" href=url.registrationUrl>
                                <div class="underline font-semibold">
                                  ${msg("doRegister")}
                                </div>
                              </@link.kw>
                            </div>
                          </#if>
                          <#elseif section="socialProviders">
                            <#if realm.password && social.providers??>
                              <@identityProvider.kw providers=social.providers />
                            </#if>
                    </#if>
                  </@layout.loginLayout>
