LMMessageHandler class extend [
    lmHandler: aHandlerFunction data: aData destroyNotify: aDestroyNotify [
        <category: 'ffi'>
        <cCall: 'lm_message_handler_new' returning: #cObject
            args: #(#cObject #cObject #cObject)>
    ]

    lmInvalidate: hdrPtr [
        <category: 'ffi'>
        <cCall: 'lm_message_handler_invalidate' returning: #void args: #(#cObject)>
    ]

    lmIsValid: hdrPtr [
        <category: 'ffi'>
        <cCall: 'lm_message_handler_is_valid' returning: #boolean args: #(#cObject)>
    ]

    lmRef: hdrPtr [
        <category: 'ffi'>
        <cCall: 'lm_message_handler_ref' returning: #cObject args: #(#cObject)>
    ]

    lmUnref: hdrPtr [
        <category: 'ffi'>
        <cCall: 'lm_message_handler_unref' returning: #void args: #(#cObject)>
    ]
]
