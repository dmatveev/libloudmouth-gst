Object subclass: LMMessageNode [
    | nodePtr |

    value [
        <category: 'accessors'>
        ^LMMessageNode lmValue: nodePtr
    ]

    value: aString [
        <category: 'accessors'>
        ^LMMessageNode lm: nodePtr value: aString
    ]

    addChild: aNameString value: aValueString [
        <category: 'accessors'>
        ^LMMessageNode lm: nodePtr addChild: aNameString value: aValueString
    ]

    attributeAt: aString [
        <category: 'accessors'>
        ^LMMessageNode lm: nodePtr attributeAt: aString
    ]

    attributeAt: aNameString put: aValueString [
        <category: 'accessors'>
        ^LMMessageNode lm: nodePtr attributeAt: aNameString put: aValueString
    ]

    childAt: aString [
        <category: 'accessors'>
        ^LMMessageNode lm: nodePtr childAt: aString
    ]

    findChild: aString [
        <category: 'accessors'>
        ^LMMessageNode lm: nodePtr findChild: aString
    ]

    rawMode [
        <category: 'accessors'>
        ^LMMessageNode lmGetRawMode: nodePtr
    ]

    rawMode: aBoolean [
        <category: 'accessors'>
        ^LMMessageNode lm: nodePtr setRawMode: aBoolean
    ]

    ref [
        <category: 'reference counting'>
        ^LMMessageNode lmRef: nodePtr
    ]

    unref [
        <category: 'reference counting'>
        ^LMMessageNode lmUnref: nodePtr
    ]

    asString [
        <category: 'conversions'>
        ^LMMessageNode lmAsString: nodePtr
    ]
]
