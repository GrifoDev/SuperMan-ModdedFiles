.class final Lsun/security/ssl/Alerts;
.super Ljava/lang/Object;
.source "Alerts.java"


# static fields
.field static final alert_access_denied:B = 0x31t

.field static final alert_bad_certificate:B = 0x2at

.field static final alert_bad_certificate_hash_value:B = 0x72t

.field static final alert_bad_certificate_status_response:B = 0x71t

.field static final alert_bad_record_mac:B = 0x14t

.field static final alert_certificate_expired:B = 0x2dt

.field static final alert_certificate_revoked:B = 0x2ct

.field static final alert_certificate_unknown:B = 0x2et

.field static final alert_certificate_unobtainable:B = 0x6ft

.field static final alert_close_notify:B = 0x0t

.field static final alert_decode_error:B = 0x32t

.field static final alert_decompression_failure:B = 0x1et

.field static final alert_decrypt_error:B = 0x33t

.field static final alert_decryption_failed:B = 0x15t

.field static final alert_export_restriction:B = 0x3ct

.field static final alert_fatal:B = 0x2t

.field static final alert_handshake_failure:B = 0x28t

.field static final alert_illegal_parameter:B = 0x2ft

.field static final alert_insufficient_security:B = 0x47t

.field static final alert_internal_error:B = 0x50t

.field static final alert_no_certificate:B = 0x29t

.field static final alert_no_renegotiation:B = 0x64t

.field static final alert_protocol_version:B = 0x46t

.field static final alert_record_overflow:B = 0x16t

.field static final alert_unexpected_message:B = 0xat

.field static final alert_unknown_ca:B = 0x30t

.field static final alert_unrecognized_name:B = 0x70t

.field static final alert_unsupported_certificate:B = 0x2bt

.field static final alert_unsupported_extension:B = 0x6et

.field static final alert_user_canceled:B = 0x5at

.field static final alert_warning:B = 0x1t


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static alertDescription(B)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<UNKNOWN ALERT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "close_notify"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "unexpected_message"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "bad_record_mac"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "decryption_failed"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "record_overflow"

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "decompression_failure"

    return-object v0

    :sswitch_6
    const-string/jumbo v0, "handshake_failure"

    return-object v0

    :sswitch_7
    const-string/jumbo v0, "no_certificate"

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "bad_certificate"

    return-object v0

    :sswitch_9
    const-string/jumbo v0, "unsupported_certificate"

    return-object v0

    :sswitch_a
    const-string/jumbo v0, "certificate_revoked"

    return-object v0

    :sswitch_b
    const-string/jumbo v0, "certificate_expired"

    return-object v0

    :sswitch_c
    const-string/jumbo v0, "certificate_unknown"

    return-object v0

    :sswitch_d
    const-string/jumbo v0, "illegal_parameter"

    return-object v0

    :sswitch_e
    const-string/jumbo v0, "unknown_ca"

    return-object v0

    :sswitch_f
    const-string/jumbo v0, "access_denied"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "decode_error"

    return-object v0

    :sswitch_11
    const-string/jumbo v0, "decrypt_error"

    return-object v0

    :sswitch_12
    const-string/jumbo v0, "export_restriction"

    return-object v0

    :sswitch_13
    const-string/jumbo v0, "protocol_version"

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "insufficient_security"

    return-object v0

    :sswitch_15
    const-string/jumbo v0, "internal_error"

    return-object v0

    :sswitch_16
    const-string/jumbo v0, "user_canceled"

    return-object v0

    :sswitch_17
    const-string/jumbo v0, "no_renegotiation"

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "unsupported_extension"

    return-object v0

    :sswitch_19
    const-string/jumbo v0, "certificate_unobtainable"

    return-object v0

    :sswitch_1a
    const-string/jumbo v0, "unrecognized_name"

    return-object v0

    :sswitch_1b
    const-string/jumbo v0, "bad_certificate_status_response"

    return-object v0

    :sswitch_1c
    const-string/jumbo v0, "bad_certificate_hash_value"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x1e -> :sswitch_5
        0x28 -> :sswitch_6
        0x29 -> :sswitch_7
        0x2a -> :sswitch_8
        0x2b -> :sswitch_9
        0x2c -> :sswitch_a
        0x2d -> :sswitch_b
        0x2e -> :sswitch_c
        0x2f -> :sswitch_d
        0x30 -> :sswitch_e
        0x31 -> :sswitch_f
        0x32 -> :sswitch_10
        0x33 -> :sswitch_11
        0x3c -> :sswitch_12
        0x46 -> :sswitch_13
        0x47 -> :sswitch_14
        0x50 -> :sswitch_15
        0x5a -> :sswitch_16
        0x64 -> :sswitch_17
        0x6e -> :sswitch_18
        0x6f -> :sswitch_19
        0x70 -> :sswitch_1a
        0x71 -> :sswitch_1b
        0x72 -> :sswitch_1c
    .end sparse-switch
.end method

.method static getSSLException(BLjava/lang/String;)Ljavax/net/ssl/SSLException;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lsun/security/ssl/Alerts;->getSSLException(BLjava/lang/Throwable;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    return-object v0
.end method

.method static getSSLException(BLjava/lang/Throwable;Ljava/lang/String;)Ljavax/net/ssl/SSLException;
    .locals 1

    if-nez p2, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    :goto_0
    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1
    return-object v0

    :cond_2
    const-string/jumbo p2, ""

    goto :goto_0

    :sswitch_0
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v0, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x33 -> :sswitch_0
        0x3c -> :sswitch_0
        0x47 -> :sswitch_0
        0x6e -> :sswitch_0
        0x6f -> :sswitch_0
        0x70 -> :sswitch_0
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
    .end sparse-switch
.end method
