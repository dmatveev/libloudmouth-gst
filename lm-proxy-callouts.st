LMProxy class extend [
    lmCreateProxyPtr: aType [
        <category: 'ffi callouts'>
        <cCall: 'lm_proxy_new' returning: #cObject args: #(#uInt)>
    ]

    lnNew: aType withServer: aString onPort: anInteger [
        <category: 'ffi callouts'>
        <cCall: 'lm_proxy_new_with_server' returning: #cObject args: #(#uInt #string #uInt)>
    ]

    lmType: proxyPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_proxy_get_type' returning: #uInt args: #(#cObject)>
    ]

    lm: proxyPtr type: anInteger [
        <category: 'ffi callouts'>
        <cCall: 'lm_proxy_set_type' returning: #void args: #(#cObject #uInt)>
    ]

    lmServer: proxyPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_proxy_get_server' returning: #string args: #(#cObject)>
    ]

    lm: proxyPtr server: aString [
        <category: 'ffi callouts'>
        <cCall: 'lm_proxy_set_server' returning: #string args: #(#cObject #string)>
    ]

    lmPort: proxyPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_proxy_get_port' returning: #uInt args: #(#cObject)>
    ]
    
    lm: proxyPtr port: anInteger [
        <category: 'ffi callouts'>
        <cCall: 'lm_proxy_set_port' returning: #void args: #(#cObject #uInt)>
    ]

    lmUsername: proxyPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_proxy_get_username' returning: #string args: #(#cObject)>
    ]

    lm: proxyPtr username: aString [
        <category: 'ffi callouts'>
        <cCall: 'lm_proxy_set_username' returning: #void args: #(#cObject #string)>
    ]

    lmPassword: proxyPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_proxy_get_password' returning: #void args: #(#cObject)>
    ]

    lm: proxyPtr password: aString [
        <category: 'ffi callouts'>
        <cCall: 'lm_proxy_set_password' returning: #void args: #(#cObject #string)>
    ]

    lmRef: proxyPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_proxy_ref' returning: #cObject args: #(#cObject)>
    ]

    lmUnref: proxyPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_proxy_unref' returning: #void args: #(#cObject)>
    ]
]
