Object subclass: LMProxy [
    | proxyPtr |
    
    LMProxy class >> new: aType [
        <category: 'instance creation'>
        ^(self new)
            proxyPtr: (self lmCreateProxyPtr: aType);
            yourself
    ]

    LMProxy class >> new: aType withServer: aString onPort: anInteger [
        <category: 'instance creation'>
        ^(self new)
            proxyPtr: (self lnNew: aType withServer: aString onPort: anInteger);
            yourself
    ]

    proxyPtr: aPtr [
        <category: 'private'>
        proxyPtr := aPtr
    ]

    proxyPtr [
        <category: 'private'>
        ^proxyPtr
    ]

    type [
        <category: 'accessors'>
        ^LMProxy lmType: proxyPtr
    ]

    type: anInteger [
        <category: 'accessors'>
        ^LMProxy lm: proxyPtr type: anInteger
    ]

    server [
        <category: 'accessors'>
        ^LMProxy lmServer: proxyPtr
    ]

    server: aString [
        <category: 'accessors'>
        ^LMProxy lm: proxyPtr server: aString
    ]

    port [
        <category: 'accessors'>
        ^LMProxy lmPort: proxyPtr
    ]

    port: anInteger [
        <category: 'accessors'>
        ^LMProxy lm: proxyPtr port: anInteger
    ]

    username [
        <category: 'accessors'>
        ^LMProxy lmUsername: proxyPtr
    ]

    username: aString [
        <category: 'accessors'>
        ^LMProxy lm: proxyPtr username: aString
    ]

    password [
        <category: 'accessors'>
        ^LMProxy lmPassword: proxyPtr
    ]

    password: aString [
        <category: 'accessors'>
        ^LMProxy lm: proxyPtr password: aString
    ]

    ref [
        <category: 'reference counting'>
        ^LMProxy lmRef: proxyPtr
    ]

    unref [
        <category: 'reference counting'>
        ^LMProxy lmUnref: proxyPtr
    ]
]
