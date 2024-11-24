<#import "/assets/icons/logo.ftl" as logoIcon>
  <#import "/assets/icons/chrome.ftl" as chromeIcon>
    <#import "/assets/icons/fulllogo.ftl" as fulllogoIcon>
      <#macro kw>

        <body class="bg-primary-100 flex justify-center min-h-screen">
          <div class="w-full flex justify-center mt-10">
            <#nested>
          </div>
        </body>
      </#macro>
