.class public Lcom/absolute/android/persistservice/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/absolute/android/sslutil/SslUtil;

.field private static b:Ljava/util/List;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/absolute/android/persistservice/r;->b:Ljava/util/List;

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistservice/v;Landroid/content/Context;)Lcom/absolute/android/persistence/AppInfoProperties;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 208
    new-instance v7, Lcom/absolute/android/persistence/AppInfoProperties;

    invoke-direct {v7}, Lcom/absolute/android/persistence/AppInfoProperties;-><init>()V

    .line 216
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 219
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {p5}, Lcom/absolute/android/persistservice/r;->a(Landroid/content/Context;)Lcom/absolute/android/sslutil/SslUtil;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p2, v3}, Lcom/absolute/android/sslutil/SslUtil;->trustOurHost(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    .line 224
    const/4 v3, 0x1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/absolute/android/persistservice/r;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 243
    :goto_0
    :try_start_2
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    const-string/jumbo v3, "UTF-8"

    .line 244
    invoke-virtual {p3, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FilterOutputStream;->write([B)V

    .line 245
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 248
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    .line 250
    if-eq v3, v4, :cond_0

    .line 279
    invoke-static {v1, p4}, Lcom/absolute/android/persistservice/r;->a(Ljava/net/HttpURLConnection;Lcom/absolute/android/persistservice/v;)Ljava/lang/String;

    move-result-object v4

    .line 280
    new-instance v5, Lorg/apache/http/client/HttpResponseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Server returned error in response to GetAppInfo HTTP request for URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, " response: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v3, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 304
    :catchall_0
    move-exception v0

    move-object v9, v2

    move-object v2, v6

    move-object v6, v9

    .line 287
    :goto_1
    if-nez v1, :cond_4

    .line 292
    :goto_2
    if-nez v6, :cond_5

    .line 298
    :goto_3
    if-nez v2, :cond_6

    .line 286
    :goto_4
    throw v0

    .line 240
    :catch_0
    move-exception v1

    .line 239
    const/4 v3, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    :try_start_4
    invoke-static/range {v0 .. v5}, Lcom/absolute/android/persistservice/r;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v1

    goto :goto_0

    .line 252
    :cond_0
    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 270
    :try_start_6
    invoke-virtual {v7, v3}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 287
    :goto_5
    if-nez v1, :cond_1

    .line 292
    :goto_6
    if-nez v2, :cond_2

    .line 298
    :goto_7
    if-nez v3, :cond_3

    .line 305
    :goto_8
    return-object v7

    .line 275
    :catch_1
    move-exception v0

    .line 274
    :try_start_7
    invoke-static {v3, v7}, Lcom/absolute/android/persistservice/r;->a(Ljava/io/Reader;Ljava/util/Properties;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    .line 304
    :catchall_1
    move-exception v0

    move-object v6, v2

    move-object v2, v3

    goto :goto_1

    .line 288
    :cond_1
    :try_start_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    .line 291
    :catch_2
    move-exception v0

    goto :goto_6

    .line 294
    :cond_2
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_7

    .line 296
    :catch_3
    move-exception v0

    goto :goto_7

    .line 300
    :cond_3
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_8

    .line 302
    :catch_4
    move-exception v0

    goto :goto_8

    .line 288
    :cond_4
    :try_start_b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_2

    .line 291
    :catch_5
    move-exception v1

    goto :goto_2

    .line 294
    :cond_5
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FilterOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_3

    .line 296
    :catch_6
    move-exception v1

    goto :goto_3

    .line 300
    :cond_6
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_4

    .line 302
    :catch_7
    move-exception v1

    goto :goto_4

    .line 304
    :catchall_2
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v2, v6

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;)Lcom/absolute/android/sslutil/SslUtil;
    .locals 2

    .prologue
    .line 807
    sget-object v0, Lcom/absolute/android/persistservice/r;->a:Lcom/absolute/android/sslutil/SslUtil;

    if-eqz v0, :cond_0

    .line 810
    :goto_0
    sget-object v0, Lcom/absolute/android/persistservice/r;->a:Lcom/absolute/android/sslutil/SslUtil;

    return-object v0

    .line 808
    :cond_0
    new-instance v0, Lcom/absolute/android/sslutil/SslUtil;

    const-string/jumbo v1, "APS"

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/sslutil/SslUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/absolute/android/persistservice/r;->a:Lcom/absolute/android/sslutil/SslUtil;

    goto :goto_0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/absolute/android/persistservice/r;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v0, "line.separator"

    .line 110
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "AccessKey="

    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "Package="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "PersistenceVersion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "Platform="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getPlatform()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "Make="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "Model="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "OSVersion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getOSVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "BuildFingerprint="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "Hardware="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getHardwareName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "Revision="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getHardwareRevision()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "DeviceId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "MacAddress="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-static {p4}, Lcom/absolute/android/utils/DeviceUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "IMEI="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-static {p4}, Lcom/absolute/android/utils/DeviceUtil;->getTelephonyId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "SerialNo="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "RilSerialNumber="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "ril.serialnumber"

    .line 141
    invoke-static {v0}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/absolute/android/persistservice/v;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 578
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 580
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ""

    const-string/jumbo v2, "line.separator"

    .line 582
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 583
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 587
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    if-nez v1, :cond_1

    :goto_1
    return-object v0

    .line 584
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 598
    :catchall_0
    move-exception v0

    .line 596
    :goto_2
    if-nez v1, :cond_2

    .line 590
    :goto_3
    throw v0

    .line 592
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 596
    :catch_0
    move-exception v1

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got exception closing error BufferedReader after executing HTTP request. Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 592
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 596
    :catch_1
    move-exception v1

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got exception closing error BufferedReader after executing HTTP request. Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 598
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    .locals 4

    .prologue
    const v3, 0xea60

    .line 502
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/absolute/android/persistservice/r;->c:Ljava/lang/String;

    .line 507
    if-nez p1, :cond_0

    .line 524
    :goto_0
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 528
    new-instance v1, Lcom/absolute/android/persistservice/s;

    invoke-direct {v1}, Lcom/absolute/android/persistservice/s;-><init>()V

    .line 539
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 543
    :goto_1
    if-nez p3, :cond_3

    :goto_2
    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "text/plain; charset=UTF-8"

    .line 547
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Accept-Encoding"

    const-string/jumbo v2, "identity"

    .line 551
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 555
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 558
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 559
    return-object v0

    .line 508
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 512
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\s"

    const-string/jumbo v2, ""

    .line 513
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 510
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 525
    :cond_2
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto/16 :goto_1

    .line 544
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    goto/16 :goto_2
.end method

.method private static a(Ljava/io/Reader;Ljava/util/Properties;)V
    .locals 12

    .prologue
    .line 634
    if-eqz p0, :cond_2

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x28

    .line 642
    new-array v3, v0, [C

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 646
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move v7, v6

    move v6, v5

    move v5, v4

    .line 649
    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v4

    const/4 v8, -0x1

    .line 650
    if-eq v4, v8, :cond_1b

    .line 653
    int-to-char v8, v4

    .line 655
    array-length v4, v3

    if-eq v2, v4, :cond_3

    move-object v4, v3

    :goto_1
    const/4 v3, 0x2

    .line 660
    if-eq v7, v3, :cond_4

    move v3, v7

    :goto_2
    const/4 v7, 0x1

    .line 676
    if-eq v3, v7, :cond_9

    .line 706
    sparse-switch v8, :sswitch_data_0

    .line 758
    :cond_0
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_13

    move v0, v3

    :goto_3
    const/4 v3, 0x5

    .line 771
    if-ne v0, v3, :cond_19

    :cond_1
    const/4 v0, 0x0

    move v3, v0

    :goto_4
    const/4 v0, 0x0

    const/4 v7, 0x4

    .line 776
    if-eq v3, v7, :cond_1a

    move v7, v3

    .line 780
    :goto_5
    add-int/lit8 v3, v2, 0x1

    int-to-char v8, v8

    aput-char v8, v4, v2

    move v2, v3

    move-object v3, v4

    goto :goto_0

    .line 635
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 656
    :cond_3
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [C

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 657
    invoke-static {v3, v10, v4, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_4
    const/16 v3, 0x10

    .line 661
    invoke-static {v8, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 662
    if-gez v3, :cond_5

    const/4 v3, 0x4

    .line 667
    if-le v5, v3, :cond_7

    :goto_6
    const/4 v7, 0x0

    .line 671
    add-int/lit8 v3, v2, 0x1

    int-to-char v10, v6

    int-to-char v10, v10

    aput-char v10, v4, v2

    const/16 v2, 0xa

    .line 672
    if-ne v8, v2, :cond_8

    move v2, v3

    move v3, v7

    goto :goto_2

    .line 663
    :cond_5
    shl-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v3

    .line 664
    add-int/lit8 v3, v5, 0x1

    const/4 v5, 0x4

    if-lt v3, v5, :cond_6

    move v5, v3

    goto :goto_6

    :cond_6
    move v5, v3

    move-object v3, v4

    .line 665
    goto :goto_0

    .line 668
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid Unicode sequence: illegal character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v2, v3

    move-object v3, v4

    .line 673
    goto :goto_0

    :cond_9
    const/4 v3, 0x0

    .line 678
    sparse-switch v8, :sswitch_data_1

    move v0, v8

    :goto_7
    move v8, v0

    .line 703
    goto :goto_4

    :sswitch_0
    const/4 v3, 0x3

    move v7, v3

    move-object v3, v4

    .line 681
    goto :goto_0

    :sswitch_1
    const/4 v3, 0x5

    move v7, v3

    move-object v3, v4

    .line 684
    goto :goto_0

    :sswitch_2
    const/16 v0, 0x8

    .line 686
    goto :goto_7

    :sswitch_3
    const/16 v0, 0xc

    .line 689
    goto :goto_7

    :sswitch_4
    const/16 v0, 0xa

    .line 692
    goto :goto_7

    :sswitch_5
    const/16 v0, 0xd

    .line 695
    goto :goto_7

    :sswitch_6
    const/16 v0, 0x9

    .line 698
    goto :goto_7

    :sswitch_7
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v7, v6

    move v6, v5

    move v5, v3

    move-object v3, v4

    .line 703
    goto/16 :goto_0

    .line 709
    :sswitch_8
    if-eqz v0, :cond_0

    .line 711
    :cond_a
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v7

    const/4 v8, -0x1

    .line 712
    if-eq v7, v8, :cond_b

    .line 715
    int-to-char v7, v7

    const/16 v8, 0xd

    .line 716
    if-ne v7, v8, :cond_c

    move v7, v3

    move-object v3, v4

    goto/16 :goto_0

    :cond_b
    move v7, v3

    move-object v3, v4

    .line 713
    goto/16 :goto_0

    :cond_c
    const/16 v8, 0xa

    .line 716
    if-ne v7, v8, :cond_a

    move v7, v3

    move-object v3, v4

    .line 717
    goto/16 :goto_0

    :sswitch_9
    const/4 v7, 0x3

    .line 724
    if-eq v3, v7, :cond_f

    :sswitch_a
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 732
    if-lez v2, :cond_10

    :cond_d
    const/4 v7, -0x1

    .line 733
    if-eq v1, v7, :cond_11

    .line 736
    :goto_8
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8, v2}, Ljava/lang/String;-><init>([CII)V

    const/4 v2, 0x0

    .line 737
    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_9
    const/4 v1, -0x1

    const/4 v2, 0x0

    move v7, v3

    move-object v3, v4

    .line 742
    goto/16 :goto_0

    :cond_f
    const/4 v3, 0x5

    move v7, v3

    move-object v3, v4

    .line 726
    goto/16 :goto_0

    .line 732
    :cond_10
    if-nez v2, :cond_e

    if-eqz v1, :cond_d

    goto :goto_9

    :cond_11
    move v1, v2

    .line 734
    goto :goto_8

    :sswitch_b
    const/4 v7, 0x4

    .line 744
    if-eq v3, v7, :cond_12

    :goto_a
    const/4 v3, 0x1

    move v7, v3

    move-object v3, v4

    .line 748
    goto/16 :goto_0

    :cond_12
    move v1, v2

    .line 745
    goto :goto_a

    :sswitch_c
    const/4 v7, -0x1

    .line 751
    if-ne v1, v7, :cond_0

    const/4 v1, 0x0

    move-object v3, v4

    move v7, v1

    move v1, v2

    .line 754
    goto/16 :goto_0

    :cond_13
    const/4 v7, 0x3

    .line 759
    if-eq v3, v7, :cond_15

    .line 763
    :goto_b
    if-nez v2, :cond_16

    :cond_14
    move v7, v3

    move-object v3, v4

    goto/16 :goto_0

    :cond_15
    const/4 v3, 0x5

    .line 760
    goto :goto_b

    .line 763
    :cond_16
    if-eq v2, v1, :cond_14

    const/4 v7, 0x5

    if-eq v3, v7, :cond_17

    const/4 v7, -0x1

    .line 766
    if-eq v1, v7, :cond_18

    move v0, v3

    goto/16 :goto_3

    :cond_17
    move v7, v3

    move-object v3, v4

    .line 764
    goto/16 :goto_0

    :cond_18
    const/4 v3, 0x4

    move v7, v3

    move-object v3, v4

    .line 768
    goto/16 :goto_0

    :cond_19
    const/4 v3, 0x3

    .line 771
    if-eq v0, v3, :cond_1

    move v3, v0

    goto/16 :goto_4

    :cond_1a
    const/4 v7, 0x0

    move v1, v2

    .line 778
    goto/16 :goto_5

    :cond_1b
    const/4 v0, 0x2

    .line 782
    if-eq v7, v0, :cond_1e

    :cond_1c
    const/4 v0, -0x1

    .line 785
    if-eq v1, v0, :cond_1f

    .line 788
    :cond_1d
    :goto_c
    if-gez v1, :cond_20

    .line 797
    :goto_d
    return-void

    :cond_1e
    const/4 v0, 0x4

    .line 782
    if-gt v5, v0, :cond_1c

    .line 783
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid Unicode sequence: expected format \\uxxxx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_1f
    if-lez v2, :cond_1d

    move v1, v2

    .line 786
    goto :goto_c

    .line 789
    :cond_20
    new-instance v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Ljava/lang/String;-><init>([CII)V

    const/4 v2, 0x0

    .line 790
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 791
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 792
    if-eq v7, v1, :cond_21

    .line 795
    :goto_e
    invoke-virtual {p1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 793
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 706
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_9
        0xd -> :sswitch_a
        0x21 -> :sswitch_8
        0x23 -> :sswitch_8
        0x3a -> :sswitch_c
        0x3d -> :sswitch_c
        0x5c -> :sswitch_b
    .end sparse-switch

    .line 678
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x62 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x75 -> :sswitch_7
    .end sparse-switch
.end method

.method protected static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;ILcom/absolute/android/persistservice/v;Landroid/content/Context;)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 360
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 363
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-static/range {p10 .. p10}, Lcom/absolute/android/persistservice/r;->a(Landroid/content/Context;)Lcom/absolute/android/sslutil/SslUtil;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, p4, v4}, Lcom/absolute/android/sslutil/SslUtil;->trustOurHost(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    .line 368
    const/4 v4, 0x0

    move-object v3, p4

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-static/range {v1 .. v6}, Lcom/absolute/android/persistservice/r;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v5

    .line 383
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    .line 385
    if-eq v2, v3, :cond_0

    .line 443
    move-object/from16 v0, p9

    invoke-static {v5, v0}, Lcom/absolute/android/persistservice/r;->a(Ljava/net/HttpURLConnection;Lcom/absolute/android/persistservice/v;)Ljava/lang/String;

    move-result-object v3

    .line 444
    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Server returned error in response to download APK HTTP request for URL: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " response: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 470
    :catchall_0
    move-exception v1

    move-object v2, v5

    move-object v3, v9

    .line 451
    :goto_1
    if-nez v2, :cond_8

    .line 457
    :goto_2
    if-nez v7, :cond_9

    .line 463
    :goto_3
    if-nez v3, :cond_a

    .line 466
    if-nez v8, :cond_b

    .line 450
    :goto_4
    throw v1

    .line 380
    :catch_0
    move-exception v2

    .line 378
    const/4 v4, 0x0

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    :try_start_3
    invoke-static/range {v1 .. v6}, Lcom/absolute/android/persistservice/r;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v5

    goto :goto_0

    .line 388
    :cond_0
    :try_start_4
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I

    move-result v10

    const-string/jumbo v1, "SHA256"

    .line 390
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 392
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 393
    :try_start_5
    new-instance v3, Ljava/security/DigestInputStream;

    invoke-direct {v3, v2, v1}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 395
    :try_start_6
    new-instance v1, Ljava/io/FileOutputStream;

    move-object/from16 v0, p6

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/16 v4, 0x2000

    .line 396
    :try_start_7
    new-array v7, v4, [B

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 401
    :cond_1
    :goto_5
    invoke-virtual {v3, v7}, Ljava/io/FilterInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 426
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 428
    invoke-static/range {p5 .. p5}, Lcom/absolute/android/crypt/HexUtilities;->GetBytesFromHexString(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 451
    if-nez v5, :cond_4

    .line 457
    :goto_6
    if-nez v1, :cond_5

    .line 463
    :goto_7
    if-nez v3, :cond_6

    .line 466
    if-nez v2, :cond_7

    .line 471
    :goto_8
    return-void

    :cond_2
    const/4 v9, 0x0

    .line 402
    invoke-virtual {v1, v7, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 403
    if-eqz p7, :cond_1

    .line 404
    add-int/2addr v6, v8

    .line 406
    sub-int v8, v6, v4

    move/from16 v0, p8

    mul-int/lit16 v9, v0, 0x400

    if-lt v8, v9, :cond_1

    .line 414
    :try_start_8
    move-object/from16 v0, p7

    invoke-interface {v0, p0, p1, v10, v6}, Lcom/absolute/android/persistence/IABTDownloadReceiver;->onDownloadProgress(Ljava/lang/String;III)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_9
    move v4, v6

    .line 420
    goto :goto_5

    :catch_1
    move-exception v4

    .line 417
    :try_start_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Got exception invoking IABTDownloadReceiver.onDownloadProgress() for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p9

    invoke-virtual {v0, v8, v4}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_9

    .line 440
    :catch_2
    move-exception v4

    .line 438
    :goto_a
    :try_start_a
    new-instance v4, Lcom/absolute/android/persistservice/DownloadApkException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Downloaded APK for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "failed - unsupported digest verification algorithm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "SHA256"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 470
    :catchall_1
    move-exception v4

    move-object v7, v1

    move-object v8, v2

    move-object v1, v4

    move-object v2, v5

    goto/16 :goto_1

    .line 431
    :cond_3
    :try_start_b
    new-instance v4, Lcom/absolute/android/persistservice/DownloadApkException;

    const-string/jumbo v6, "Downloaded APK failed digest verification for algorithm: SHA256"

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v4
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 452
    :cond_4
    :try_start_c
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_6

    .line 454
    :catch_3
    move-exception v4

    goto/16 :goto_6

    .line 458
    :cond_5
    :try_start_d
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 459
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_7

    .line 461
    :catch_4
    move-exception v1

    goto/16 :goto_7

    .line 464
    :cond_6
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V

    goto/16 :goto_8

    .line 469
    :catch_5
    move-exception v1

    goto/16 :goto_8

    .line 467
    :cond_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_8

    .line 452
    :cond_8
    :try_start_f
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_2

    .line 454
    :catch_6
    move-exception v2

    goto/16 :goto_2

    .line 458
    :cond_9
    :try_start_10
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 459
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_3

    .line 461
    :catch_7
    move-exception v2

    goto/16 :goto_3

    .line 464
    :cond_a
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V

    goto/16 :goto_4

    .line 469
    :catch_8
    move-exception v2

    goto/16 :goto_4

    .line 467
    :cond_b
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_4

    .line 470
    :catchall_2
    move-exception v1

    move-object v2, v10

    move-object v3, v9

    goto/16 :goto_1

    :catchall_3
    move-exception v1

    move-object v8, v2

    move-object v3, v9

    move-object v2, v5

    goto/16 :goto_1

    :catchall_4
    move-exception v1

    move-object v8, v2

    move-object v2, v5

    goto/16 :goto_1

    .line 440
    :catch_9
    move-exception v1

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    goto/16 :goto_a

    :catch_a
    move-exception v1

    move-object v1, v7

    move-object v3, v9

    goto/16 :goto_a

    :catch_b
    move-exception v1

    move-object v1, v7

    goto/16 :goto_a
.end method
