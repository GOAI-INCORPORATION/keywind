<#import "/assets/icons/eye.ftl" as iconEye>
<#import "/assets/icons/eye-slash.ftl" as iconEyeSlash>

<#macro
  kw
  autofocus=false
  class="block border-secondary-100 mt-1 py-3 px-4 rounded-lg w-full focus:border-primary-100 focus:ring focus:ring-primary-100 focus:ring-opacity-50 text-[14px]"
  disabled=false
  invalid=false
  label=""
  message=""
  name=""
  required=true
  type="text"
  rest...
>
  <div>
    <label class="sr-only" for="${name}">
      ${label}
    </label>
    <#if type == "password">
      <div class="relative" x-data="{ show: false }">
        <input
          <#if autofocus>autofocus</#if>
          <#if disabled>disabled</#if>
          <#if required>required</#if>

          aria-invalid="${invalid?c}"
          class="${class}"
          id="${name}"
          name="${name}"
          placeholder="${label}"
          :type="show ? 'text' : 'password'"

          <#list rest as attrName, attrValue>
            ${attrName}="${attrValue}"
          </#list>
        >
        <button
          @click="show = !show"
          aria-controls="${name}"
          :aria-expanded="show"
          class="absolute text-white right-3 top-3 sm:top-2"
          type="button"
        >
          <div x-show="!show">
            <@iconEye.kw />
          </div>
          <div x-cloak x-show="show">
            <@iconEyeSlash.kw />
          </div>
        </button>
      </div>
    <#else>
      <input
        <#if autofocus>autofocus</#if>
        <#if disabled>disabled</#if>
        <#if required>required</#if>

        aria-invalid="${invalid?c}"
        class="${class}"
        id="${name}"
        name="${name}"
        placeholder="${label}"
        type="${type}"

        <#list rest as attrName, attrValue>
          ${attrName}="${attrValue}"
        </#list>
      >
    </#if>
    <#if invalid?? && message??>
      <div class="mt-2 text-red-600 text-sm">
        ${message?no_esc}
      </div>
    </#if>
  </div>
</#macro>
