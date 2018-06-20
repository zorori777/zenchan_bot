import '../styles/application.scss';
import 'sanitize.css/sanitize.css';
import '../styles/object/component/logos/fontawesome';

// Support component names relative to this directory:
var componentRequireContext = require.context("components", true);
var ReactRailsUJS = require("react_ujs");
ReactRailsUJS.useContext(componentRequireContext);
