# PoliSee



## Oauth - Twitter
### 3-legged authorization
### Overview
The 3-legged OAuth flow allows your application to obtain an access token by redirecting a user to Twitter and having them authorize your application. This flow is almost identical to the flow described in Implementing Sign in with Twitter, with two exceptions:

The GET oauth/authorize endpoint is used instead of GET oauth/authenticate
The user will always be prompted to authorize access to your application, even if access was previously granted.
The possible states for the 3-legged sign in interaction are illustrated in the following flowchart:
