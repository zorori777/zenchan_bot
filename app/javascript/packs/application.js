import '../styles/application.scss';
import 'sanitize.css/sanitize.css';
import '../styles/object/component/logos/fontawesome';
import Rails from 'rails-ujs';
// # Use method: :delete in link_to
Rails.start();

// Support component names relative to this directory:
var componentRequireContext = require.context("components", true);
var ReactRailsUJS = require("react_ujs");
ReactRailsUJS.useContext(componentRequireContext);
