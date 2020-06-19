---
title: Define your goals
subtitle: We need some input to get started...
---

Glad to see you want to give installing diaspora\* a try! Follow these guides to get a pod set up and running, and rest assured [we are there to help you out](<%= url_to("site", "get_help") %>) if you need any assitance. To get started, we need to know what *exactly* you want to achieve, so please help us by selecting your goal below.

<div id="install_selector">
  <%= partial "components/noscript_box" %>

  <div id="system"></div>
  <div id="distribution"></div>
  <div id="version"></div>
  <div id="env"></div>
  <div id="database"></div>
  <div id="proxy"></div>
  <div id="guides"></div>
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
  <h2>Select your goal</h2>
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

<script id="tpl-database-entry" type="text/x-handlebars-template">
  <div class="col-md">
    <button
      class="install-button btn btn-{{color}} btn-lg btn-block"
      data-database="{{key}}"
      type="button"
    >
      {{title}}
    </button>
  </div>
</script>

<script id="tpl-proxies" type="text/x-handlebars-template">
  <h2>Select your reverse proxy</h2>
  <div class="row">
    {{{items}}}
  </div>
</script>

<script id="tpl-proxy-entry" type="text/x-handlebars-template">
  <div class="col-md">
    <button
      class="install-button btn btn-{{color}} btn-lg btn-block"
      data-proxy="{{key}}"
      type="button"
    >
      {{title}}
    </button>
  </div>
</script>

<script id="tpl-docker-guide" type="text/x-handlebars-template">
  <div class="col-md">
    <a
      class="install-button btn btn-success btn-lg btn-block"
      href="<%= url_to "install", "docker" %>{{params}}"
    >
      Install diaspora*
    </a>
  </div>
</script>

<script id="tpl-manual-guide" type="text/x-handlebars-template">
  <div class="col-md">
    <a
      class="install-button btn btn-success btn-lg btn-block"
      href="<%= url_to "install", "manual/guided/system_preparation" %>{{params}}"
    >
      Install diaspora*
    </a>
    <p class="text-center">
      <a href="<%= url_to "install", "manual/full" %>{{params}}">Show all instructions on a single page</a>.
    </p>
  </div>
</script>

<script>
  window.installSelector = new DiasporaInstallSelector({
    available: <%= @available_environments.to_json %>,
    elements: {
      database: "database",
      distribution: "distribution",
      env: "env",
      guides: "guides",
      proxy: "proxy",
      system: "system",
      version: "version"
    },
    templates: {
      databaseEntry: "database-entry",
      distributions: "distributions",
      distributionsEntry: "distribution-entry",
      dockerGuide: "docker-guide",
      envEntry: "env-entry",
      envs: "envs",
      manualGuide: "manual-guide",
      proxies: "proxies",
      proxyEntry: "proxy-entry",
      systemEntry: "system-entry",
      systems: "systems",
      versions: "versions",
      versionsEntry: "version-entry"
    }
  });

  window.installSelector.init();
</script>
