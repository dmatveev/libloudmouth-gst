LMConnection class extend [
    lmCreateConnectionOn: aServerString [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_new' returning: #cObject args: #(#string)>
    ]

    lmCreateConnectionOn: aServerString withContext: aContextPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_new' returning: #cObject args: #(#string #cObject)>
    ]

    lm: anObject open: aResultFunction userData: aData destroyNotify: aDestroyNotify
    error: anError [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_open' returning: #boolean
            args: #(#cObject #cObject #cObject #cObject)>
    ]

    lm: anObject openAndBlock: anError [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_open_and_block' returning: #boolean args: #(#cObject #cObject)>
    ]

    lm: connPtr close: anError [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_close' returning: #boolean args: #(#cObject #cObject)>
    ]

    lm: connPtr authenticate: aUserString password: aPwdString resource: aResourceString 
    resultFunction: aResultFunctionPtr data: aData destroyNotify: aDestroyNotify
    error: anError [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_authenticate' returning: #boolean
            args: #(#cObject #string #string #string #cObject #cObject #cObject #cObject)>
    ]

    lm: anObject authenticateAndBlock: aUserString password: aPwdString
    resource: aResourceString error: anError [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_authenticate_and_block' returning: #boolean
            args: #(#cObject #string #string #string #cObject)>
    ]

    lmGetKeepAliveRate: connPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_get_keep_alive_rate' returning: #uInt args: #(#cObject)>
    ]

    lm: connPtr setKeepAliveRate: anInteger [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_set_keep_alive_rate' returning: #void args: #(#cObject #uInt)>
    ]

    lmIsOpen: connPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_is_open' returning: #boolean args: #(#cObject)>
    ]

    lmIsAuthenticated: connPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_is_authenticated' returning: #boolean args: #(#cObject)>
    ]

    lmServer: connPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_get_server' returning: #string args: #(#cObject)>
    ]

    lm: connPtr server: aString [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_set_server' returning: #void args: #(#cObject #string)>
    ]

    lmJid: connPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_get_jid' returning: #string args: #(#cObject)>
    ]

    lm: connPtr jid: aString [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_set_jid' returning: #void args: #(#cObject #string)>
    ]

    lmPort: connPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_get_port' returning: #uint args: #(#cObject)>
    ]

    lm: connPtr port: anInteger [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_set_port' returning: #void args: #(#cObject #uInt)>
    ]

    lmSsl: connPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_get_ssl' returning: #cObject args: #(#cObject)>
    ]

    lm: connPtr ssl: anSSLPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_set_ssl' returning: #void args: #(#cObject #cObject)>
    ]

    lm: connPtr send: aMsgPtr error: anError [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_send' returning: #boolean args: #(#cObject #cObject #cObject)>
    ]

    lm: connPtr sendWithReply: aMsgPtr messageHandler: aHandlerPtr error: anError [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_send_with_reply' returning: #boolean
            args: #(#cObject #cObject #cObject #cObject)>
    ]

    lm: connPtr sendWithReplyAndBlock: aMsgPtr error: anError [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_send_with_reply_and_block' returning: #boolean
            args: #(#cObject #cObject #cObject)>
    ]

    lm: connPtr registerMessageHandler: aHandlerPtr type: aType priority: aPriority [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_register_message_handler' returning: #void
            args: #(#cObject #cObject #uInt #uInt)>
    ]

    lm: connPtr unregisterMessageHandler: aHandlerPtr type: aType [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_unregister_message_handler' returning: #void
            args: #(#cObject #cObject #uInt)>
    ]

    lm: connPtr setDisconnectFunction: aDisconnectFunction data: aData
    destroyNotify: aDestroyNotify [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_set_disconnect_function' returning: #void
            args: #(#cObject #cObject #cObject #cObject)>
    ]

    lm: connPtr sendRaw: aString error: anError [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_send_raw' returning: #boolean
            args: #(#cObject #string #cObject)>
    ]

    lmState: connPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_get_state' returning: #uint args: #(#cObject)>
    ]

    lmRef: connPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_ref' returning: #cObject args: #(#cObject)>
    ]

    lmUnref: connPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_connection_unref' returning: #void args: #(#cObject)>
    ]
]
