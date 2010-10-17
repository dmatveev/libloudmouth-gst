BlockClosure extend [
    asResultFunction [
        <category: '*loudmouth'>
        ^CCallbackDescriptor for: self
                             returning: #void
                             withArgs: #(#cObject #boolean #cObject)
    ]

    asDisconnectFunction [
        <category: '*loudmouth'>
        ^CCallbackDescriptor for: self
                             returning: #void
                             withArgs: #(#cObject #uInt #cObject)
    ]

    asHandleMessageFunction [
        <category: '*loudmouth'>
        ^CCallbackDescriptor for: self
                             returning: #uInt
                             withArgs: #(#cObject #cObject #cObject #cObject)
    ]

    asSLLFunction [
        <category: '*loudmouth'>
        ^CCallbackDescriptor for: self
                             returning: #uInt
                             withArgs: #(#cObject #uInt #cObject)
    ]
]
