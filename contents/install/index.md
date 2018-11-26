---
title: Install diaspora*
nav_title: Installation
title_tag: ""
subtitle: Take your data into your own hands!
---

Welcome to the world of diaspora\*! Follow these guides to get a pod set up and running. If you run into any troubles while installing diaspora\*, [we are there to help](<%= url_to("site", "get_help") %>). Please note that these installation guides are the only supported environments to run diaspora\* in.

<div id="install_selector">
  <%= partial "components/noscript_box" %>

  <div id="system"></div>
  <div id="distribution"></div>
  <div id="version"></div>
  <div id="env"></div>
  <div id="database"></div>
  <div id="reverse_proxy"></div>
</div>

<script id="tpl-systems" type="text/x-handlebars-template">
  <h2>Select your operating system</h2>
  <div class="row">
    {{{items}}}
  </div>
</script>

<script id="tpl-system-entry" type="text/x-handlebars-template">
  <div class="col-md">
    <button
      class="install-button btn btn-{{color}} btn-lg btn-block"
      data-system="{{key}}"
      type="button"
    >
      <i class="fab fa-{{icon}}"></i><br>
      {{title}}
    </button>
  </div>
</script>

<script id="tpl-distributions" type="text/x-handlebars-template">
  <h2>Select your distribution</h2>
  <div class="row">
    <div class="col-md">
      <div class="list-group">
        {{{items}}}
      </div>
    </div>
  </div>
</script>

<script id="tpl-distribution-entry" type="text/x-handlebars-template">
  <button
    class="install-button list-group-item list-group-item-action {{activeClass}}"
    data-distribution="{{key}}"
    type="button"
  >
    {{title}}
  </button>
</script>

<script id="tpl-versions" type="text/x-handlebars-template">
  <h2>Select the OS version</h2>
  <div class="row">
    <div class="col-md">
      <div class="list-group">
        {{{items}}}
      </div>
    </div>
  </div>
</script>

<script id="tpl-version-entry" type="text/x-handlebars-template">
  <button
    class="install-button list-group-item list-group-item-action {{activeClass}}"
    data-version="{{key}}"
    type="button"
  >
    {{title}}
  </button>
</script>

<script id="tpl-envs" type="text/x-handlebars-template">
  <h2>Select the target environment</h2>
  <div class="row">
    {{{items}}}
  </div>
</script>

<script id="tpl-env-entry" type="text/x-handlebars-template">
  <div class="col-md">
    <button
      class="install-button btn btn-{{color}} btn-lg btn-block"
      data-env="{{key}}"
      type="button"
    >
      <i class="{{icon}}"></i><br>
      {{title}}
    </button>
  </div>
</script>


<script>
  function compileTemplate(id) {
    return Handlebars.compile(document.getElementById("tpl-" + id).innerHTML);
  }

  window.installSelector = new DiasporaInstallSelector({
    available: <%= @available_environments.to_json %>,
    elements: {
      database: document.getElementById("database"),
      distribution: document.getElementById("distribution"),
      env: document.getElementById("env"),
      reverseProxy: document.getElementById("reverse_proxy"),
      system: document.getElementById("system"),
      version: document.getElementById("version")
    },
    templates: {
      distributions: compileTemplate("distributions"),
      distributionsEntry: compileTemplate("distribution-entry"),
      envEntry: compileTemplate("env-entry"),
      envs: compileTemplate("envs"),
      systemEntry: compileTemplate("system-entry"),
      systems: compileTemplate("systems"),
      versions: compileTemplate("versions"),
      versionsEntry: compileTemplate("version-entry")
    }
  });

  window.installSelector.init();
</script>
