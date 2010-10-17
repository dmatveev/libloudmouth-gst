Object subclass: LMSSL [
    | sslPtr |

    LMSSL class >> expectedFingerprint: aString sslFunction: aBlock data: aData
    detroyNotify: aDestroyNotify [
        <category: 'instance creation'>
        ^(self new)
            sslPtr: (self lmExpectedFingerprint: aString
                          sslFunction: aBlock asSSLFunction
                          data: aData
                          detroyNotify: aDestroyNotify);
            yourself
    ]

    sslPtr: aPtr [
        <category: 'private'>
        sslPtr := aPtr
    ]

    isSupported [
        <category: 'testing'>
        ^LMSSL lmIsSupported: sslPtr
    ]

    fingerprint [
        <category: 'accessors'>
        ^LMMSSL fingerprint: sslPtr
    ]

    useStartTLS: aUseBoolean require: aReqBoolean [
        <category: 'interface'>
        ^LMSSL lm: sslPtr useStartTLS: aUseBoolean require: aReqBoolean
    ]

    useStartTLS [
        <category: 'accessors'>
        ^LMSSL lmStartTLS: sslPtr
    ]

    requireStartTLS [
        <category: 'accessors'>
        ^LMSSL lmRequireStartTLS: sslPtr
    ]

    ref [
        <category: 'reference counting'>
        ^LMSSL lmRef: sslPtr
    ]

    unref [
        <category: 'reference counting'>
        ^LMSSL lmUnref: sslPtr
    ]
]
