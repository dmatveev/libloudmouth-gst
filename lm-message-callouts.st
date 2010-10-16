LMMessage class extend [
    to: aString type: aMessageType [
        <category: 'ffi callouts'>
        <cCall: 'lm_message_new' returning: #cObject args: #(#string #uInt)>
    ]

    to: aString type: aMessageType subtype: aMessageSubtype [
        <category: 'ffi callouts'>
        <cCall: 'lm_message_new_with_sub_type' returning: #cObject
            args: #(#string #uInt #uInt)>
    ]

    lmType: msgPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_message_get_type' returning: #uInt args: #(#cObject)>
    ]

    lmSubtype: msgPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_message_get_sub_type' returning: #uInt args: #(#cObject)>
    ]

    lmNode: msgPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_message_get_node' returning: #cObject args: #(#cObject)>
    ]

    lmRef: msgPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_message_ref' returning: #cObject args: #(#cObject)>
    ]

    lmUnref: msgPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_message_unref' returning: #void args: #(#cObject)>
    ]
]
