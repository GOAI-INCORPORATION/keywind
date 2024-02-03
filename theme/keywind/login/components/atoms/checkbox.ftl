<#macro kw checked=false label="" name="" rest...>
  <div class="flex items-center">
    <input
      <#if checked>checked</#if>

      class="border-secondary-100 h-4 rounded text-primary-100 bg-white focus:text-white focus:bg-primary-100 w-4 focus:ring-primary-100 focus:ring-opacity-50"
      id="${name}"
      name="${name}"
      type="checkbox"

      <#list rest as attrName, attrValue>
        ${attrName}="${attrValue}"
      </#list>
    >
    <label class="ml-2 text-white text-sm" for="${name}">
      ${label}
    </label>
  </div>
</#macro>
