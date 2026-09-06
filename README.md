# ConvoKit for Swift

The public binary Swift package for ConvoKit's native iOS SDK and SwiftUI components. Implementation source remains private; this repository contains only the package manifest and public metadata.

## Install

In Xcode, choose **File → Add Package Dependencies** and enter:

```text
https://github.com/ConvoKitApp/ConvoKit-Swift-Package
```

Select version `0.2.0` or newer. Add `ConvoKit` for the core client, or add `ConvoKitUI` to use both the core client and SwiftUI components. Requires iOS 15+.

```swift
import ConvoKit

let client = try ConvoKitClient(
    clientId: "your-public-client-id"
) { appUserId in
    try await yourBackend.issueConvoKitToken(appUserId: appUserId)
}

try await client.connectUser(currentUser.id)
```

The token provider calls your authenticated backend. Never put a ConvoKit client secret in an iOS app.

The SDK uses the managed `https://api.convokit.app` endpoint automatically.
It securely discovers the Supabase URL and publishable key during `connectUser()` and authenticates private Realtime channels; customers do not configure Supabase credentials.
Pass `backendURL` only for local testing or a self-hosted deployment.

```swift
import ConvoKitUI

ConvoKitConversationList(client: client) { conversation in
    selectedConversationId = conversation.id
}

if let chat = try? ConvoKitConversation(
    client: client,
    conversationId: selectedConversationId
) {
    chat
}
```

Read the [native Swift documentation](https://convokit.app/docs/swift-sdk), [SwiftUI documentation](https://convokit.app/docs/swift-ui), and [public example app](https://github.com/ConvoKitApp/ConvoKit-Swift-UI-Examples).

Binary releases are served from [convokit.app](https://convokit.app/artifacts/swift/), not GitHub Pages or R2.
