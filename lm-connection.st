Object subclass: LMConnection [
    | connPtr |

    LMConnection class >> onServer: aServerString [
        <category: 'instance creation'>
        ^(self new)
            connPtr: (self lmCreateConnectionOn: aServerString); 
            yourself
    ]

    LMConnection class >> onServer: aServerString withContext: aContextPtr [
        <category: 'instance creation'>
        ^(self new)
            connPtr: (self lmCreateConnectionOn: aServerString withContext: aContextPtr); 
            yourself
    ]

    connPtr: anExternalConnectionPointer [
        <category: 'private'>
        connPtr := anExternalConnectionPointer
    ]

    open: aBlock userData: aData destroyNotify: aDestroyNotify error: anError [
        <category: 'opening'>
        ^LMConnection lm: connPtr
             open: aBlock asResultFunction
             userData: aData
             destroyNotify: aDestroyNotify
             error: anError
    ]

    openAndBlock: anError [
        <category: 'opening'>
        ^LMConnection lm: connPtr openAndBlock: anError
    ]

    close: anError [
        <category: 'closing'>
        ^LMConnection lm: connPtr close: anError
    ]
    
    authenticate: aUserString password: aPwdString resource: aResourceString 
    resultFunction: aBlock data: aData destroyNotify: aDestroyNotify
    error: anError [
        <category: 'authentification'>
        ^LMConnection lm: connPtr
              authenticate: aUserString
              password: aPwdString
              resource: aResourceString 
              resultFunction: aBlock asResultFunction
              data: aData
              destroyNotify: aDestroyNotify
              error: anError
    ]

    authenticateAndBlock: aUserString password: aPwdString resource: aResourceString 
    error: anError [
        <category: 'authentification'>
        ^LMConnection lm: connPtr
              authenticateAndBlock: aUserString
              password: aPwdString
              resource: aResourceString 
              error: anError
    ]

    getKeepAliveRate [
        <category: 'accessors'>
        ^LMConnection lmGetKeepAliveRate: connPtr
    ]

    setKeepAliveRate: anInteger [
        <category: 'accessors'>
        ^LMConnection lm: connPtr setKeepAliveRate: anInteger
    ]

    isOpen [
        <category: 'testing'>
        ^LMConnection lmIsOpen: connPtr
    ]

    isAuthenticated [
        <category: 'testing'>
        ^LMConnection lmIsAuthenticated: connPtr
    ]

    server [
        <category: 'accessors'>
        ^LMConnection lmServer: connPtr
    ]

    server: aString [
        <category: 'accessors'>
        ^LMConnection lm: connPtr server: aString
    ]

    jid [
        <category: 'accessors'>
        ^LMConnection lmJid: connPtr
    ]

    jid: aString [
        <category: 'accessors'>
        ^LMConnection lm: connPtr jid: aString
    ]

    port [
        <category: 'accessors'>
        ^LMConnection lmPort: connPtr
    ]

    port: anInteger [
        <category: 'accessors'>
        ^LMConnection lm: connPtr port: anInteger
    ]

    ssl [
        <category: 'accessors'>
        ^LMConnection lmSsl: connPtr
    ]

    ssl: anSSLPtr [
        <category: 'accessors'>
        ^LMConnection lm: connPtr ssl: anSSLPtr
    ]

    send: aMessage error: anError [
        <category: 'sending'>
        ^LMConnection lm: connPtr send: aMessage msgPtr error: anError
    ]

    sendWithReply: aMessage messageHandler: aHandlerPtr error: anError [
        <category: 'sending'>
        ^LMConnection lm: connPtr
                      sendWithReply: aMessage msgPtr
                      messageHandler: aHandlerPtr
                      error: anError
    ]

    sendWithReplyAndBlock: aMessage error: anError [
        <category: 'sending'>
        ^LMConnection lm: connPtr sendWithReplyAndBlock: aMessage msgPtr error: anError
    ]

    registerMessageHandler: aHandlerPtr type: aType priority: aPriority [
        <category: 'handlers'>
        ^LMConnection lm: connPtr
                      registerMessageHandler: aHandlerPtr
                      type: aType
                      priority: aPriority
    ]

    unregisterMessageHandler: aHandlerPtr type: aType [
        <category: 'handlers'>
        ^LMConnection lm: connPtr unregisterMessageHandler: aHandlerPtr type: aType
    ]

    setDisconnectFunction: aBlock data: aData destroyNotify: aDestroyNotify [
        <category: 'interface'>
        ^LMConnection lm: connPtr
              setDisconnectFunction: aBlock asDisconnectFunction
              data: aData
              destroyNotify: aDestroyNotify
    ]

    sendRaw: aString error: anError [
        <category: 'sending'>
        ^LMConnection lm: connPtr sendRaw: aString error: anError
    ]

    state [
        <category: 'accessors'>
        ^LMConnection lmState: connPtr
    ]

    ref [
        <category: 'reference counting'>
        ^LMConnection lmRef: connPtr
    ]

    unref [
        <category: 'reference counting'>
        ^LMConnection lmUnref: connPtr
    ]
]

