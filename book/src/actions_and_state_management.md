# Actions and State Management

Zid provides macros for handling actions and managing state.

## Registering Actions

```crystal
register env, state, :action_name do
#  state.count += 1
#  "<div> State: #{state.count} </div>"
end
```

## Triggering Actions

Use the `action` macro to create action URLs:

```crystal
a href: action(:action_name) { "Trigger Action" }
```

## State Management (wip)

Zid's state management is handled through the actions system. Update your application state within action handlers, and reflect those changes in your UI.
