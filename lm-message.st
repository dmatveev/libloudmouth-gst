Object subclass: LMMessage [
    | msgPtr |

    LMMessage class >> to: aString type: aMessageType [
        <category: 'instance creation'>
        ^(self new)
            msgPtr: (self lmMessageTo: aString type: aMessageType);
            yourself
    ]

    LMMessage class >> to: aString type: aMessageType subtype: aMessageSubtype [
        <category: 'instance creation'>
        ^(self new)
            msgPtr: (self lmMessageTo: aString type: aMessageType subtype: aMessageSubtype);
            yourself
    ]

    msgPtr: aCObject [
        <category: 'private'>
        msgPtr := aCObject
    ]

    type [
        <category: 'accessors'>
        ^LMMessage lmType: msgPtr
    ]

    subtype [
        <category: 'accessors'>
        ^LMMessage lmSubtype: msgPtr
    ]

    node [
        <category: 'accessors'>
        ^LMMessage lmNode: msgPtr
    ]

    ref [
        <category: 'reference counting'>
        ^LMMessage lmRef: msgPtr
    ]

    unref [
        <category: 'reference counting'>
        ^LMMessage lmUnref: msgPtr
    ]
]
