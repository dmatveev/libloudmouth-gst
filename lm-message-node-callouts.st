LMMessageNode class extend [
    lmValue: nodePtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_message_node_get_value' returning: #string args: #(#cObject)>
    ]

    lm: nodePtr value: aString [
        <category: 'ffi callouts'>
        <cCall: 'lm_message_node_set_value' returning: #void args: #(#cObject #string)>
    ]

    lm: nodePtr addChild: aNameString value: aValueString [
        <category: 'ffi callouts'>
        <cCall: 'lm_message_node_add_child' returning: #cObject
            args: #(#cObject #string #string)>
    ]

    lm: nodePtr attributeAt: aString [
        <category: 'ffi callouts'>
        <cCall: 'lm_message_node_get_attribute' returning: #string args: #(#cObject #string)>
    ]

    lm: nodePtr attributeAt: aNameString put: aValueString [
        <category: 'ffi callouts'>
        <cCall: 'lm_message_node_set_attribute' returning: #void
            args: #(#cObject #string #string)>
    ]

    lm: nodePtr childAt: aString [
        <category: 'ffi callouts'>
        <cCall: 'lm_message_node_get_child' returning: #cObject args: #(#cObject #string)>
    ]

    lm: nodePtr findChild: aString [
        <category: 'ffi callouts'>
        <cCall: 'lm_message_node_find_child' returning: #cObject args: #(#cObject #string)>
    ]

    lmGetRawMode: nodePtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_message_node_get_raw_mode' returning: #boolean args: #(#cObject)>
    ]

    lm: nodePtr setRawMode: aBoolean [
        <category: 'ffi callouts'>
        <cCall: 'lm_message_node_set_raw_mode' returning: #void args: #(#cObject #boolean)>
    ]

    lmRef: nodePtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_message_node_ref' returning: #cObject args: #(#cObject)>
    ]

    lmUnref: nodePtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_message_node_unref' returning: #void args: #(#cObject)>
    ]

    lmAsString: nodePtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_message_node_to_string' returning: #string args: #(#cObject)>
    ]
]
