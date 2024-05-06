<#import "template.ftl" as layout>
<#import "components/atoms/button.ftl" as button>
<#import "components/atoms/button-group.ftl" as buttonGroup>

<@layout.registrationLayout; section>
  <#if section="header">
    <div class="text-neutral-100">
    ${msg("pageExpiredTitle")}
    </div>
  <#elseif section="form">
    <@buttonGroup.kw>
      <@button.kw color="primary" component="a" href=url.loginRestartFlowUrl>
        <div class="text-neutral-100">
        ${msg("doTryAgain")}
        </div>
      </@button.kw>
      <@button.kw color="secondary" component="a" href=url.loginAction>
        <div class="text-neutral-100">
        ${msg("doContinue")}
        </div>
      </@button.kw>
    </@buttonGroup.kw>
  </#if>
</@layout.registrationLayout>
