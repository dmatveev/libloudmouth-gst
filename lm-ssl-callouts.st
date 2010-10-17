LMSSL class extend [
    lmExpectedFingerprint: aString sslFunction: aCallback data: aData
    detroyNotify: aDestroyNotify [
        <category: 'ffi callouts'>
        <cCall: 'lm_ssl_new' returning: #cObject args: #(#string #cObject #cObject #cObject)>
    ]

    lmIsSupported: sslPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_ssl_is_supported' returning: #boolean args: #()>
    ]

    fingerprint: sslPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_ssl_get_fingerprint' returning: #string args: #(#cObject)>
    ]

    lm: sslPtr useStartTLS: aUseBoolean require: aReqBoolean [
        <category: 'ffi callouts'>
        <cCall: 'lm_ssl_use_starttls' returning: #boolean args: #(#cObject #boolean #boolean)>
    ]

    lmStartTLS: sslPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_ssl_get_use_starttls' returning: #boolean args: #(#cObject)>
    ]

    lmRequireStartTLS: sslPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_ssl_get_require_starttls' returning: #boolean args: #(#cObject)>
    ]

    lmRef: sslPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_ssl_ref' returning: #cObject args: #(#cObject)>
    ]

    lmUnref: sslPtr [
        <category: 'ffi callouts'>
        <cCall: 'lm_ssl_unref' returning: #void args: #(#cObject)>
    ]
]
