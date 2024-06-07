<#import "/assets/icons/fulllogo.ftl" as fulllogoIcon>
  <#macro kw>

    <body class="bg-primary-100 min-h-screen">
      <div class="p-8 top-0 left-0">
        <@fulllogoIcon.kw />
      </div>
      <div class="flex flex-col items-center justify-center mt-10">
        <#nested>
      </div>
    </body>
  </#macro>
