Object subclass: LMMessageHandler [
    | hdrPtr |

    LMMessageHandler class >> function: aBlock data: aData
    destroyNotify: aDestroyNotify [
        <category: 'instance creation'>
        ^(self new)
            hdrPtr: (self lmHandler: aBlock asHandleMessageFunction
                          data: aData
                          destroyNotify: aDestroyNotify);
            yourself
    ]

    hdrPtr: aCObject [
        <category: 'private'>
        hdrPtr := aCObject
    ]

    invalidate [
        <category: 'interface'>
        ^LMMessageHandler lmInvalidate: hdrPtr
    ]

    isValid [
        <category: 'testing'>
        ^LMMessageHandler lmIsValid: hdrPtr
    ]

    ref [
        <category: 'reference counting'>
        ^LMMessageHandler lmRef: hdrPtr
    ]

    unref [
        <category: 'reference counting'>
        ^LMMessageHandler lmUnref: hdrPtr
    ]
]
