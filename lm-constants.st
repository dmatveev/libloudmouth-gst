Array extend [
    asEnumeration: aClassName startingFrom: anInteger [
        <category: '*loudmouth'>
        "Some Smalltalk magik here"

        | class counter |
        counter := anInteger.
        class := (Object subclass: aClassName) class.
        self do:
            [:each |
            class compile: each asString, ' [ ^', counter asString, ']'.
            counter := counter + 1]
    ]

    asEnumeration: aClassName [
        self asEnumeration: aClassName startingFrom: 0
    ]
]

Eval [
    #(#removeMessage
      #allowMoreHandlers)
        asEnumeration: #LMHandlerResult.

    #(#last
      #normal
      #first)
        asEnumeration: #LMHandlerPriority startingFrom: 1.

    #(#ok
      #pingTimeOut
      #hup
      #error
      #resourceConflict
      #invalidXml
      #unknown)
        asEnumeration: #LMDisconnectReason.

    #(#closed
      #opening
      #open
      #authenticating
      #authenticated)
        asEnumeration: #LMConnectionState.

    #(#message
      #presence
      #iq
      #stream
      #streamError
      #streamFeatures
      #auth
      #challenge
      #response
      #success
      #failure
      #proceed
      #startTLS
      #unknown)
        asEnumeration: #LMMessageType.

    #(#notSet
      #available
      #normal
      #chat
      #groupchat
      #headline
      #unavailable
      #probe
      #subscribe
      #unsubscribe
      #subscribed
      #unsubscribed
      #get
      #set
      #result
      #error)
        asEnumeration: #LMMessageSubType.

    #(#continue
      #stop)
        asEnumeration: #LMSSLResponse.

    #(#noCertFound
      #untrustedCert
      #certExpired
      #certNotActivated
      #certHostnameMismatch
      #certFingerprintMismatch
      #genericError)
        asEnumeration: #LMSSLStatus.

    #(#none
      #http)
        asEnumeration: #LMProxyType
]
