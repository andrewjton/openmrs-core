<% ui.decorateWith("appui", "standardEmrPage") %>

Hello, world.

<% if (context.authenticated) { %>
    And a special hello to you, $context.authenticatedUser.personName.fullName.
    Your roles are:
    <% context.authenticatedUser.roles.findAll { !it.retired }.each { %>
        $it.role ($it.description)
    <% } %>
<% } else { %>
    You are not logged in.
<% } %>

${ ui.includeFragment("basicexample", "users") }

<div>Hello world! This is my first <b>OpenMRS</b> module!</div>
