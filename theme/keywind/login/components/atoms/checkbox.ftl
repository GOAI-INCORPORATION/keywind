<#macro kw checked=false label="" name="" rest...>
  <div class="flex items-center">
    <input
      <#if checked>checked</#if>

      class="border-zinc-800 h-4 rounded text-neutral-100 bg-white focus:text-main-100 focus:bg-main-100 w-4 focus:ring-neutral-100 focus:ring-opacity-50"
      id="${name}"
      name="${name}"
      type="checkbox"

      <#list rest as attrName, attrValue>
        ${attrName}="${attrValue}"
      </#list>
    >
    <label class="ml-2 text-neutral-100 text-sm" for="${name}">
      ${label}
    </label>
  </div>
</#macro>
