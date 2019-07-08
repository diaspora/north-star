window.DiasporaInstallSelector = (() => {
  /**
   * So, here's a thing. I really thought about adding React or Vue.js or something,
   * just to make this code more clean. However, The install guides are, as of right now,
   * the only place where we need any kind of interacitivty, and it's not really
   * worth it to add that much JS just for this purpose.
   *
   * So, let's go with some plain VanillaJS. :)
   */

  let DiasporaInstallSelector = function(args) {
    this._available = args.available;
    this._elements = args.elements;
    this._templates = args.templates;
    this.resetState();
  };

  DiasporaInstallSelector.prototype = {
    _hasDistributions(system) {
      let selectedSystem = this._available[system];
      return Object.keys(selectedSystem.distributions).length > 1;
    },

    _renderList(args) {
      let listHtml = Object.keys(args.listEntries)
        .map((entry) => {
          return this._templates[args.innerTpl](args.entryMap(entry));
        });

      this._elements[args.elementKey].innerHTML = this._templates[args.outerTpl]({
        items: listHtml.join("")
      });

      this._elements[args.elementKey].querySelectorAll(".install-button").forEach((button) => {
        button.addEventListener("click", args.clickHandler(button));
      });
    },

    _queryParameters(object) {
      return "?" + Object
        .keys(object)
        .map(key => `${encodeURIComponent(key)}=${encodeURIComponent(object[key])}`)
        .join("&");
    },

    init() {
      this.redraw("");
    },

    resetState() {
      this._state = {
        distribution: null,
        env: null,
        proxy: "nginx",
        system: null,
        version: null
      };
    },

    redraw(changedItem) {
      // Yes, this reset is kinda ugly, but as we are only iterating over a
      // limited range of elements, it's fine.
      Object.keys(this._elements).forEach((el) => {
        this._elements[el].innerHTML = "";
      });

      switch (changedItem) {
        case "system": {
          this._state.distribution = null;
          this._state.version = null;
          this._state.env = null;

          if (!this._hasDistributions(this._state.system)) {
            this.setState("distribution", "main");
          }
          break;
        }

        case "distribution": {
          this._state.version = null;
          this._state.env = null;
          break;
        }

        case "version": {
          this._state.env = null;
          break;
        }
      }

      this.drawSystemSelector();

      let state = this._state;

      state.system && this.drawDistributionSelector();
      state.distribution && this.drawVersionSelector();
      state.version && this.drawEnvSelector();

      if (state.env) {
        if (["development_docker"].includes(state.env)) {
          this.drawDockerGuideLinks();
        } else {
          if (["production_manual"].includes(state.env)) {
            this.drawProxySelector();
          }
          this.drawManualGuideLinks();
        }
      }
    },

    setState(key, value) {
      this._state[key] = value;
      this.redraw(key);
    },

    drawSystemSelector() {
      this._renderList({
        innerTpl: "systemEntry",
        outerTpl: "systems",
        listEntries: this._available,
        entryMap: (system) => {
          return {
            key: system,
            color: system == this._state.system ? "primary" : "light",
            icon: this._available[system].icon,
            title: this._available[system].title
          };
        },
        elementKey: "system",
        clickHandler: (button) => {
          return () => {
            this.setState("system", button.dataset.system);
          };
        }
      });
    },

    drawDistributionSelector() {
      // We can safely skip rendering this if the current system only has one distribution
      // in the list, which means there is no choice for the user here anyway.
      if (!this._hasDistributions(this._state.system)) {
        return;
      }

      let distributions = this._available[this._state.system].distributions;
      this._renderList({
        innerTpl: "distributionsEntry",
        outerTpl: "distributions",
        listEntries: distributions,
        entryMap: (distribution) => {
          return {
            key: distribution,
            activeClass: distribution == this._state.distribution ? "list-group-item-primary" : "",
            icon: distributions[distribution].icon,
            title: distributions[distribution].title
          };
        },
        elementKey: "distribution",
        clickHandler: (button) => {
          return () => {
            this.setState("distribution", button.dataset.distribution);
          };
        }
      });
    },

    drawVersionSelector() {
      let versions = this._available[this._state.system]
        .distributions[this._state.distribution]
        .versions;

      this._renderList({
        innerTpl: "versionsEntry",
        outerTpl: "versions",
        listEntries: versions,
        entryMap: (version) => {
          return {
            key: version,
            activeClass: version == this._state.version ? "list-group-item-primary" : "",
            icon: versions[version].icon,
            title: versions[version].title
          };
        },
        elementKey: "version",
        clickHandler: (button) => {
          return () => {
            this.setState("version", button.dataset.version);
          };
        }
      });
    },

    drawEnvSelector() {
      let supportedEnvs = this._available[this._state.system].supports;
      let envs = {};

      if (supportedEnvs.production.manual) {
        // eslint-disable-next-line camelcase
        envs.production_manual = {
          icon: "fas fa-rocket",
          title: "Production pod"
        };
      }

      if (supportedEnvs.development.docker) {
        // eslint-disable-next-line camelcase
        envs.development_docker = {
          icon: "fab fa-docker",
          title: "Development setup via Docker"
        };
      }

      if (supportedEnvs.development.manual) {
        // eslint-disable-next-line camelcase
        envs.development_manual = {
          icon: "fas fa-wrench",
          title: "Manual development setup"
        };
      }

      this._renderList({
        innerTpl: "envEntry",
        outerTpl: "envs",
        listEntries: envs,
        entryMap: (env) => {
          return {
            key: env,
            color: env == this._state.env ? "primary" : "light",
            icon: envs[env].icon,
            title: envs[env].title
          };
        },
        elementKey: "env",
        clickHandler: (button) => {
          return () => {
            this.setState("env", button.dataset.env);
          };
        }
      });
    },

    drawProxySelector() {
      let proxies = {
        nginx: { title: "Nginx" },
        apache: { title: "Apache" }
      };

      this._renderList({
        innerTpl: "proxyEntry",
        outerTpl: "proxies",
        listEntries: proxies,
        entryMap: (proxy) => {
          return {
            key: proxy,
            color: proxy == this._state.proxy ? "primary" : "light",
            icon: proxies[proxy].icon,
            title: proxies[proxy].title
          };
        },
        elementKey: "proxy",
        clickHandler: (button) => {
          return () => {
            this.setState("proxy", button.dataset.proxy);
          };
        }
      });
    },

    drawDockerGuideLinks() {
      this._elements.guides.innerHTML = this._templates.dockerGuide({
        params: this._queryParameters({
          distribution: this._state.distribution,
          system: this._state.system,
          version: this._state.version
        })
      });
    },

    drawManualGuideLinks() {
      this._elements.guides.innerHTML = this._templates.manualGuide({
        params: this._queryParameters(this._state)
      });
    }
  };

  return DiasporaInstallSelector;
})();
