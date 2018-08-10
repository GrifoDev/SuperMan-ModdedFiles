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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/absolute/android/persistservice/r;->b:Ljava/util/List;

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistservice/v;Landroid/content/Context;)Lcom/absolute/android/persistence/AppInfoProperties;
    .locals 19

    const/4 v13, 0x0

    const/4 v15, 0x0

    new-instance v17, Lcom/absolute/android/persistence/AppInfoProperties;

    invoke-direct/range {v17 .. v17}, Lcom/absolute/android/persistence/AppInfoProperties;-><init>()V

    const/16 v18, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p5 .. p5}, Lcom/absolute/android/persistservice/r;->a(Landroid/content/Context;)Lcom/absolute/android/sslutil/SslUtil;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v9, v0, v4}, Lcom/absolute/android/sslutil/SslUtil;->trustOurHost(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/absolute/android/persistservice/r;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v18

    :goto_0
    :try_start_2
    new-instance v16, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string/jumbo v3, "UTF-8"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v3

    :try_start_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v3, 0xc8

    if-eq v8, v3, :cond_1

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/absolute/android/persistservice/r;->a(Ljava/net/HttpURLConnection;Lcom/absolute/android/persistservice/v;)Ljava/lang/String;

    move-result-object v10

    new-instance v3, Lorg/apache/http/client/HttpResponseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Server returned error in response to GetAppInfo HTTP request for URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v8, v4}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v11

    move-object/from16 v15, v16

    :goto_1
    const/4 v12, 0x0

    if-nez v18, :cond_5

    :goto_2
    if-nez v15, :cond_6

    :goto_3
    if-nez v13, :cond_7

    :goto_4
    throw v11

    :catch_0
    move-exception v9

    const/4 v3, 0x0

    if-nez v3, :cond_0

    :goto_5
    const/4 v5, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    :try_start_5
    invoke-static/range {v2 .. v7}, Lcom/absolute/android/persistservice/r;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v18

    goto :goto_0

    :cond_0
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catch_1
    move-exception v3

    goto :goto_5

    :cond_1
    :try_start_7
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v14, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/absolute/android/persistence/AppInfoProperties;->load(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_6
    const/4 v12, 0x0

    if-nez v18, :cond_2

    :goto_7
    if-nez v16, :cond_3

    :goto_8
    if-nez v14, :cond_4

    :goto_9
    return-object v17

    :catch_2
    move-exception v10

    :try_start_9
    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/absolute/android/persistservice/r;->a(Ljava/io/Reader;Ljava/util/Properties;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v11

    move-object/from16 v15, v16

    move-object v13, v14

    goto :goto_1

    :cond_2
    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_7

    :catch_3
    move-exception v3

    goto :goto_7

    :cond_3
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_8

    :catch_4
    move-exception v3

    goto :goto_8

    :cond_4
    :try_start_c
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_9

    :catch_5
    move-exception v3

    goto :goto_9

    :cond_5
    :try_start_d
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_2

    :catch_6
    move-exception v3

    goto :goto_2

    :cond_6
    :try_start_e
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_3

    :catch_7
    move-exception v3

    goto :goto_3

    :cond_7
    :try_start_f
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_4

    :catch_8
    move-exception v3

    goto :goto_4

    :catchall_2
    move-exception v11

    goto :goto_1

    :catchall_3
    move-exception v11

    move-object/from16 v15, v16

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;)Lcom/absolute/android/sslutil/SslUtil;
    .locals 2

    sget-object v0, Lcom/absolute/android/persistservice/r;->a:Lcom/absolute/android/sslutil/SslUtil;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/absolute/android/persistservice/r;->a:Lcom/absolute/android/sslutil/SslUtil;

    return-object v0

    :cond_0
    new-instance v0, Lcom/absolute/android/sslutil/SslUtil;

    const-string/jumbo v1, "APS"

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/sslutil/SslUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/absolute/android/persistservice/r;->a:Lcom/absolute/android/sslutil/SslUtil;

    goto :goto_0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/absolute/android/persistservice/r;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "AccessKey="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "PersistenceVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Platform="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getPlatform()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Make="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Model="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "OSVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getOSVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "BuildFingerprint="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Hardware="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getHardwareName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Revision="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getHardwareRevision()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "DeviceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "MacAddress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p4}, Lcom/absolute/android/utils/DeviceUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "IMEI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p4}, Lcom/absolute/android/utils/DeviceUtil;->getTelephonyId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "SerialNo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "RilSerialNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, "ril.serialnumber"

    invoke-static {v3}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/absolute/android/persistservice/v;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v9, ""

    invoke-direct {v3, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ""

    const-string/jumbo v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    if-nez v2, :cond_1

    :goto_1
    return-object v0

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    move-object v1, v2

    :goto_2
    const/4 v7, 0x0

    if-nez v1, :cond_2

    :goto_3
    throw v6

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Got exception closing error BufferedReader after executing HTTP request. Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Got exception closing error BufferedReader after executing HTTP request. Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception v6

    goto :goto_2
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    .locals 6

    const v5, 0xea60

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/absolute/android/persistservice/r;->c:Ljava/lang/String;

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v2, Lcom/absolute/android/persistservice/s;

    invoke-direct {v2}, Lcom/absolute/android/persistservice/s;-><init>()V

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    move-object v0, v1

    :goto_1
    if-nez p3, :cond_3

    :goto_2
    const-string/jumbo v3, "Content-Type"

    const-string/jumbo v4, "text/plain; charset=UTF-8"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Accept-Encoding"

    const-string/jumbo v4, "identity"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "\\s"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto/16 :goto_2
.end method

.method private static a(Ljava/io/Reader;Ljava/util/Properties;)V
    .locals 26

    if-eqz p0, :cond_5

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x3

    const/16 v20, 0x4

    const/16 v21, 0x5

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v3, 0x0

    const/16 v24, 0x28

    move/from16 v0, v24

    new-array v5, v0, [C

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v10, 0x1

    new-instance v11, Ljava/io/BufferedReader;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v11}, Ljava/io/BufferedReader;->read()I

    move-result v9

    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v9, v0, :cond_1b

    int-to-char v4, v9

    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v6, v0, :cond_6

    :goto_1
    const/16 v24, 0x2

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    move v7, v6

    :cond_1
    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_a

    sparse-switch v4, :sswitch_data_0

    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v24

    if-nez v24, :cond_14

    :cond_3
    const/16 v24, 0x5

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    :cond_4
    const/16 v22, 0x0

    :goto_2
    const/4 v10, 0x0

    const/16 v24, 0x4

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_1a

    :goto_3
    add-int/lit8 v6, v7, 0x1

    int-to-char v0, v4

    move/from16 v24, v0

    aput-char v24, v5, v7

    goto :goto_0

    :cond_5
    new-instance v24, Ljava/lang/NullPointerException;

    invoke-direct/range {v24 .. v24}, Ljava/lang/NullPointerException;-><init>()V

    throw v24

    :cond_6
    array-length v0, v5

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    new-array v13, v0, [C

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v5, v0, v13, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v13

    goto :goto_1

    :cond_7
    const/16 v24, 0x10

    move/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v12

    if-gez v12, :cond_8

    const/16 v24, 0x4

    move/from16 v0, v24

    if-le v3, v0, :cond_9

    :goto_4
    const/16 v22, 0x0

    add-int/lit8 v7, v6, 0x1

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v5, v6

    const/16 v24, 0xa

    move/from16 v0, v24

    if-eq v4, v0, :cond_1

    move v6, v7

    goto/16 :goto_0

    :cond_8
    shl-int/lit8 v24, v23, 0x4

    add-int v23, v24, v12

    add-int/lit8 v3, v3, 0x1

    const/16 v24, 0x4

    move/from16 v0, v24

    if-lt v3, v0, :cond_0

    goto :goto_4

    :cond_9
    new-instance v24, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v25, "Invalid Unicode sequence: illegal character"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_a
    const/16 v22, 0x0

    sparse-switch v4, :sswitch_data_1

    goto :goto_2

    :sswitch_0
    const/16 v22, 0x5

    move v6, v7

    goto/16 :goto_0

    :sswitch_1
    const/16 v22, 0x3

    move v6, v7

    goto/16 :goto_0

    :sswitch_2
    const/16 v4, 0x8

    goto :goto_2

    :sswitch_3
    const/16 v4, 0xc

    goto/16 :goto_2

    :sswitch_4
    const/16 v4, 0xa

    goto/16 :goto_2

    :sswitch_5
    const/16 v4, 0xd

    goto/16 :goto_2

    :sswitch_6
    const/16 v4, 0x9

    goto/16 :goto_2

    :sswitch_7
    const/16 v22, 0x2

    const/4 v3, 0x0

    const/16 v23, 0x0

    move v6, v7

    goto/16 :goto_0

    :sswitch_8
    if-eqz v10, :cond_2

    :cond_b
    invoke-virtual {v11}, Ljava/io/BufferedReader;->read()I

    move-result v9

    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v9, v0, :cond_c

    int-to-char v4, v9

    const/16 v24, 0xd

    move/from16 v0, v24

    if-ne v4, v0, :cond_d

    move v6, v7

    goto/16 :goto_0

    :cond_c
    move v6, v7

    goto/16 :goto_0

    :cond_d
    const/16 v24, 0xa

    move/from16 v0, v24

    if-ne v4, v0, :cond_b

    move v6, v7

    goto/16 :goto_0

    :sswitch_9
    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    :sswitch_a
    const/16 v22, 0x0

    const/4 v10, 0x1

    if-lez v7, :cond_11

    :cond_e
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v8, v0, :cond_12

    :goto_5
    new-instance v13, Ljava/lang/String;

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-direct {v13, v5, v0, v7}, Ljava/lang/String;-><init>([CII)V

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v13, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_6
    const/4 v8, -0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_10
    const/16 v22, 0x5

    move v6, v7

    goto/16 :goto_0

    :cond_11
    if-nez v7, :cond_f

    if-eqz v8, :cond_e

    goto :goto_6

    :cond_12
    move v8, v7

    goto :goto_5

    :sswitch_b
    const/16 v24, 0x4

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_13

    :goto_7
    const/16 v22, 0x1

    move v6, v7

    goto/16 :goto_0

    :cond_13
    move v8, v7

    goto :goto_7

    :sswitch_c
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v8, v0, :cond_2

    const/16 v22, 0x0

    move v8, v7

    move v6, v7

    goto/16 :goto_0

    :cond_14
    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_16

    :goto_8
    if-nez v7, :cond_17

    :cond_15
    move v6, v7

    goto/16 :goto_0

    :cond_16
    const/16 v22, 0x5

    goto :goto_8

    :cond_17
    if-eq v7, v8, :cond_15

    const/16 v24, 0x5

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_18

    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v8, v0, :cond_3

    const/16 v22, 0x4

    move v6, v7

    goto/16 :goto_0

    :cond_18
    move v6, v7

    goto/16 :goto_0

    :cond_19
    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    goto/16 :goto_2

    :cond_1a
    move v8, v7

    const/16 v22, 0x0

    goto/16 :goto_3

    :cond_1b
    const/16 v24, 0x2

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_1e

    :cond_1c
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v8, v0, :cond_1f

    :cond_1d
    :goto_9
    if-gez v8, :cond_20

    :goto_a
    return-void

    :cond_1e
    const/16 v24, 0x4

    move/from16 v0, v24

    if-gt v3, v0, :cond_1c

    new-instance v24, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v25, "Invalid Unicode sequence: expected format \\uxxxx"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_1f
    if-lez v6, :cond_1d

    move v8, v6

    goto :goto_9

    :cond_20
    new-instance v13, Ljava/lang/String;

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-direct {v13, v5, v0, v6}, Ljava/lang/String;-><init>([CII)V

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_21

    :goto_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_21
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\u0000"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_b

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

    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x62 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x75 -> :sswitch_7
    .end sparse-switch
.end method

.method protected static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;ILcom/absolute/android/persistservice/v;Landroid/content/Context;)V
    .locals 30

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :try_start_0
    new-instance v5, Ljava/net/URL;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {p10 .. p10}, Lcom/absolute/android/persistservice/r;->a(Landroid/content/Context;)Lcom/absolute/android/sslutil/SslUtil;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v6, v0, v1, v7}, Lcom/absolute/android/sslutil/SslUtil;->trustOurHost(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, p4

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-static/range {v5 .. v10}, Lcom/absolute/android/persistservice/r;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v17

    :goto_0
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    const/16 v6, 0xc8

    move/from16 v0, v18

    if-eq v0, v6, :cond_0

    move-object/from16 v0, v17

    move-object/from16 v1, p9

    invoke-static {v0, v1}, Lcom/absolute/android/persistservice/r;->a(Ljava/net/HttpURLConnection;Lcom/absolute/android/persistservice/v;)Ljava/lang/String;

    move-result-object v21

    new-instance v6, Lorg/apache/http/client/HttpResponseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Server returned error in response to download APK HTTP request for URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move/from16 v0, v18

    invoke-direct {v6, v0, v7}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v28

    :goto_1
    const/16 v29, 0x0

    if-nez v17, :cond_8

    :goto_2
    if-nez v15, :cond_9

    :goto_3
    if-nez v11, :cond_a

    if-nez v13, :cond_b

    :goto_4
    throw v28

    :catch_0
    move-exception v19

    const/4 v8, 0x0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    :try_start_3
    invoke-static/range {v5 .. v10}, Lcom/absolute/android/persistservice/r;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v17

    goto :goto_0

    :cond_0
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v20

    const-string/jumbo v6, "SHA256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v22

    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v14, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v12, Ljava/security/DigestInputStream;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    move-object/from16 v0, v22

    invoke-direct {v12, v14, v0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/16 v6, 0x2000

    :try_start_8
    new-array v0, v6, [B

    move-object/from16 v23, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :cond_1
    :goto_5
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/security/DigestInputStream;->read([B)I

    move-result v24

    const/4 v6, -0x1

    move/from16 v0, v24

    if-ne v0, v6, :cond_2

    invoke-virtual {v12}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v27

    invoke-static/range {p5 .. p5}, Lcom/absolute/android/crypt/HexUtilities;->GetBytesFromHexString(Ljava/lang/String;)[B

    move-result-object v6

    move-object/from16 v0, v27

    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-result v6

    if-eqz v6, :cond_3

    const/16 v29, 0x0

    if-nez v17, :cond_4

    :goto_6
    if-nez v16, :cond_5

    :goto_7
    if-nez v12, :cond_6

    if-nez v14, :cond_7

    :goto_8
    return-void

    :cond_2
    const/4 v6, 0x0

    :try_start_9
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v6, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz p7, :cond_1

    add-int v25, v25, v24

    sub-int v6, v25, v26

    move/from16 v0, p8

    mul-int/lit16 v7, v0, 0x400

    if-lt v6, v7, :cond_1

    move/from16 v26, v25

    :try_start_a
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, v20

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/absolute/android/persistence/IABTDownloadReceiver;->onDownloadProgress(Ljava/lang/String;III)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_5

    :catch_1
    move-exception v27

    :try_start_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Got exception invoking IABTDownloadReceiver.onDownloadProgress() for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p9

    move-object/from16 v1, v27

    invoke-virtual {v0, v6, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto/16 :goto_5

    :catch_2
    move-exception v21

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v11, v12

    :goto_9
    :try_start_c
    new-instance v6, Lcom/absolute/android/persistservice/DownloadApkException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Downloaded APK for package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "failed - unsupported digest verification algorithm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "SHA256"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_3
    :try_start_d
    new-instance v6, Lcom/absolute/android/persistservice/DownloadApkException;

    const-string/jumbo v7, "Downloaded APK failed digest verification for algorithm: SHA256"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v6
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catch_3
    move-exception v21

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v11, v12

    goto :goto_9

    :cond_4
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_6

    :catch_4
    move-exception v6

    goto/16 :goto_6

    :cond_5
    :try_start_f
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_7

    :catch_5
    move-exception v6

    goto/16 :goto_7

    :cond_6
    :try_start_10
    invoke-virtual {v12}, Ljava/security/DigestInputStream;->close()V

    goto/16 :goto_8

    :catch_6
    move-exception v6

    goto/16 :goto_8

    :cond_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_8

    :cond_8
    :try_start_11
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_2

    :catch_7
    move-exception v6

    goto/16 :goto_2

    :cond_9
    :try_start_12
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    goto/16 :goto_3

    :catch_8
    move-exception v6

    goto/16 :goto_3

    :cond_a
    :try_start_13
    invoke-virtual {v11}, Ljava/security/DigestInputStream;->close()V

    goto/16 :goto_4

    :catch_9
    move-exception v6

    goto/16 :goto_4

    :cond_b
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    goto/16 :goto_4

    :catchall_1
    move-exception v28

    move-object v13, v14

    goto/16 :goto_1

    :catchall_2
    move-exception v28

    move-object v13, v14

    goto/16 :goto_1

    :catchall_3
    move-exception v28

    move-object v13, v14

    move-object v11, v12

    goto/16 :goto_1

    :catchall_4
    move-exception v28

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v11, v12

    goto/16 :goto_1

    :catchall_5
    move-exception v28

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v11, v12

    goto/16 :goto_1

    :catch_a
    move-exception v21

    goto/16 :goto_9

    :catch_b
    move-exception v21

    move-object v13, v14

    goto/16 :goto_9

    :catch_c
    move-exception v21

    move-object v13, v14

    goto/16 :goto_9

    :catch_d
    move-exception v21

    move-object v13, v14

    move-object v11, v12

    goto/16 :goto_9
.end method
