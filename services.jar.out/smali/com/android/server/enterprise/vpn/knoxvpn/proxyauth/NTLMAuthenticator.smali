.class public Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;
.super Ljava/lang/Object;
.source "NTLMAuthenticator.java"

# interfaces
.implements Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_CLIENT_FLAGS:I = 0x88207

.field private static final PROXY_AUTHENTICATION_HEADER_PREFIX:Ljava/lang/String; = "Proxy-Authorization: NTLM "

.field private static final TAG:Ljava/lang/String; = "NTLMAuthenticator"

.field private static lmCompatibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput p1, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->lmCompatibility:I

    return-void
.end method

.method private buildRequestString([Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HEAD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    if-le v1, v2, :cond_0

    aget-object v1, p1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    if-le v1, v2, :cond_1

    aget-object v1, p1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Proxy-Connection: keep-alive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    goto :goto_0

    :cond_1
    aget-object v1, p1, v3

    goto :goto_1
.end method

.method private getCredentialKeyValue(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getNTLMType3String(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "Proxy-Authorization: NTLM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    return-object v2
.end method

.method private getLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_0

    const-string/jumbo v2, ""

    return-object v2

    :cond_0
    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    if-gez v1, :cond_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getNTLMType3String(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v11, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;

    invoke-direct {v11, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000

    invoke-virtual {v11, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->isFlagSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getTargetName()Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getTargetData()[B

    move-result-object v6

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getFlags()I

    move-result v1

    const v3, 0x88207

    and-int v2, v3, v1

    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getServerChallengeNonce()[B

    move-result-object v1

    const-string/jumbo v7, "localhost"

    sget v8, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->lmCompatibility:I

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;-><init>([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createMessageString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    :goto_0
    return-object v12

    :catch_0
    move-exception v9

    const-string/jumbo v1, "NTLMAuthenticator"

    const-string/jumbo v3, "Exception in getNTLMType3String"

    invoke-static {v1, v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v10

    const-string/jumbo v1, "NTLMAuthenticator"

    const-string/jumbo v3, "IOException in getNTLMType3String"

    invoke-static {v1, v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getNTLMType3String(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v3, 0x0

    return-object v3

    :cond_1
    const/4 v14, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    new-instance v17, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->buildRequestString([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v3, "Proxy-Authorization: NTLM "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->createMessageString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\r\n"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string/jumbo v3, " "

    invoke-virtual {v15, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    array-length v3, v13

    if-lez v3, :cond_2

    const/4 v3, 0x1

    aget-object v3, v13, v3

    const-string/jumbo v5, "407"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getNTLMTypeMessageFromResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v19

    :cond_2
    if-eqz v19, :cond_7

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    new-instance v18, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;

    invoke-direct/range {v18 .. v19}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->isFlagSet(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getTargetName()Ljava/lang/String;

    move-result-object v7

    :cond_3
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getTargetData()[B

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;->getFlags()I

    move-result v3

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getFlags()I

    move-result v5

    and-int v4, v3, v5

    new-instance v12, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v3, ":"

    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;->getServerChallengeNonce()[B

    move-result-object v3

    array-length v5, v11

    if-lez v5, :cond_5

    const/4 v5, 0x0

    aget-object v5, v11, v5

    :goto_0
    array-length v6, v11

    if-lez v6, :cond_6

    const/4 v6, 0x1

    aget-object v6, v11, v6

    :goto_1
    const-string/jumbo v9, "localhost"

    sget v10, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->lmCompatibility:I

    invoke-direct/range {v2 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;-><init>([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;I)V

    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "NTLMAuthenticator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getNTLMType3String Returning type 3 string = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createMessageString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createMessageString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_5
    const-string/jumbo v5, ""

    goto :goto_0

    :cond_6
    const-string/jumbo v6, ""

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    return-object v3
.end method

.method private getNTLMTypeMessageFromResponse(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string/jumbo v2, "Proxy-Authenticate:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->processResponseFromeServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0
.end method

.method private processResponseFromeServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x2

    const-string/jumbo v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string/jumbo v3, "Proxy-Authenticate:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const-string/jumbo v3, "NTLM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    array-length v2, v0

    if-le v2, v4, :cond_0

    aget-object v1, v0, v4

    :cond_0
    return-object v1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public getAuthHeaderKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Proxy-Authorization: NTLM "

    return-object v0
.end method

.method public getCredentialsAppendedHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public verifyProxyAuthCredentials(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v9, 0x1

    const-string/jumbo v6, "NTLMAuthenticator"

    const-string/jumbo v7, ": In verifyProxyAuthCredentials in NTLM"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-string/jumbo v6, "NTLMAuthenticator"

    const-string/jumbo v7, ": In verifyProxyAuthCredentials in NTLM: Invalid values"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getCredentialKeyValue(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "NTLMAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ": In verifyProxyAuthCredentials: processedHeaderCred = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->buildRequestString([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    if-eqz v6, :cond_4

    const-string/jumbo v6, "NTLMAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ": In verifyProxyAuthCredentials. Full header = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    if-eqz v6, :cond_5

    const-string/jumbo v6, "NTLMAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Line from server = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_8

    :cond_6
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    if-eqz v6, :cond_7

    const-string/jumbo v6, "NTLMAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ": In verifyProxyAuthCredentials retStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v4

    :cond_8
    const-string/jumbo v6, "HTTP/1."

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string/jumbo v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    const-string/jumbo v7, "407"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMAuthenticator;->DBG:Z

    if-eqz v6, :cond_9

    const-string/jumbo v6, "NTLMAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "In verifyProxyAuthCredentials: retStatus= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    goto/16 :goto_0
.end method
