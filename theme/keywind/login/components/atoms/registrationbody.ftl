<#import "/assets/icons/logo.ftl" as logoIcon>
  <#import "/assets/icons/chrome.ftl" as chromeIcon>
    <#import "/assets/icons/fulllogo.ftl" as fulllogoIcon>
      <#macro kw>

        <body class="bg-white flex justify-center min-h-screen font-inter">
          <div class="flex w-full justify-between bg-white h-screen">
            <div class="w-full bg-primary-100 h-screen px-5">
              <div class="my-28 flex flex-col justify-between">
                <div class="bg-teal-50 w-3/4 mx-auto p-5 py-10 rounded-lg space-y-8">
                  <div class="flex justify-center py-5">
                    <div class="w-8 h-8">
                      <@logoIcon.kw />
                    </div>
                  </div>
                  <div class="space-y-3">
                    <div class="text-center text-[32px]
 font-sheriff leading-none">The browser extension for you to capture ideas!</div>
                    <div class="text-center text-[14px]
 font-inter text-neutral-600">Capture, Process, and Execute your ideas.</div>
                    <div class="flex justify-center">
                      <div class="w-10 h-10">
                        <@chromeIcon.kw />
                      </div>
                    </div>
                  </div>
                </div>
                <div class="mt-40 w-3/4 mx-auto space-y-2">
                  <div class="text-[24px]
 font-sheriff text-center">One click and it’s saved in Lany.</div>
                  <div class="text-center text-[16px]
 font-inter text-neutral-600">Just click the button in your browser to save a web page,article, notes, quote or screenshot.</div>
                </div>
              </div>
            </div>
            <div class="w-full bg-white flex justify-center">
              <div class="p-8">
                <@fulllogoIcon.kw />
              </div>
              <div class="w-full flex flex-col justify-center">
                <#nested>
              </div>
            </div>
          </div>
        </body>
      </#macro>
