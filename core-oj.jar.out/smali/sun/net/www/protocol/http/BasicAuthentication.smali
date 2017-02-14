.class Lsun/net/www/protocol/http/BasicAuthentication;
.super Lsun/net/www/protocol/http/AuthenticationInfo;
.source "BasicAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/http/BasicAuthentication$BasicBASE64Encoder;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x64L


# instance fields
.field auth:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/net/www/protocol/http/BasicAuthentication;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/net/www/protocol/http/BasicAuthentication;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    const/16 v1, 0x70

    :goto_0
    sget-object v2, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lsun/net/www/protocol/http/AuthenticationInfo;-><init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/http/BasicAuthentication;->auth:Ljava/lang/String;

    return-void

    :cond_0
    const/16 v1, 0x73

    goto :goto_0
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;Ljava/net/PasswordAuthentication;)V
    .locals 14

    if-eqz p1, :cond_1

    const/16 v2, 0x70

    :goto_0
    sget-object v3, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    move-object v1, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lsun/net/www/protocol/http/AuthenticationInfo;-><init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p5 .. p5}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v9, 0x0

    :try_start_0
    const-string/jumbo v1, "ISO-8859-1"

    invoke-virtual {v12, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v10

    array-length v1, v10

    new-array v11, v1, [B

    const/4 v8, 0x0

    :goto_1
    array-length v1, v10

    if-ge v8, v1, :cond_2

    aget-char v1, v10, v8

    int-to-byte v1, v1

    aput-byte v1, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x73

    goto :goto_0

    :catch_0
    move-exception v13

    sget-boolean v1, Lsun/net/www/protocol/http/BasicAuthentication;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    array-length v1, v9

    array-length v2, v11

    add-int/2addr v1, v2

    new-array v7, v1, [B

    array-length v1, v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v9, v2, v7, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v1, v9

    array-length v2, v11

    const/4 v3, 0x0

    invoke-static {v11, v3, v7, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lsun/net/www/protocol/http/BasicAuthentication$BasicBASE64Encoder;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lsun/net/www/protocol/http/BasicAuthentication$BasicBASE64Encoder;-><init>(Lsun/net/www/protocol/http/BasicAuthentication;Lsun/net/www/protocol/http/BasicAuthentication$BasicBASE64Encoder;)V

    invoke-virtual {v2, v7}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/http/BasicAuthentication;->auth:Ljava/lang/String;

    move-object/from16 v0, p5

    iput-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    return-void
.end method

.method public constructor <init>(ZLjava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x70

    :goto_0
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    invoke-direct {p0, v0, v1, p2, p3}, Lsun/net/www/protocol/http/AuthenticationInfo;-><init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/net/URL;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/http/BasicAuthentication;->auth:Ljava/lang/String;

    return-void

    :cond_0
    const/16 v0, 0x73

    goto :goto_0
.end method

.method public constructor <init>(ZLjava/net/URL;Ljava/lang/String;Ljava/net/PasswordAuthentication;)V
    .locals 10

    const/4 v9, 0x0

    if-eqz p1, :cond_1

    const/16 v7, 0x70

    :goto_0
    sget-object v8, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    invoke-direct {p0, v7, v8, p2, p3}, Lsun/net/www/protocol/http/AuthenticationInfo;-><init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/net/URL;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v7, "ISO-8859-1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    invoke-virtual {p4}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v3

    array-length v7, v3

    new-array v4, v7, [B

    const/4 v1, 0x0

    :goto_1
    array-length v7, v3

    if-ge v1, v7, :cond_2

    aget-char v7, v3, v1

    int-to-byte v7, v7

    aput-byte v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v7, 0x73

    goto :goto_0

    :catch_0
    move-exception v6

    sget-boolean v7, Lsun/net/www/protocol/http/BasicAuthentication;->-assertionsDisabled:Z

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_2
    array-length v7, v2

    array-length v8, v4

    add-int/2addr v7, v8

    new-array v0, v7, [B

    array-length v7, v2

    invoke-static {v2, v9, v0, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v7, v2

    array-length v8, v4

    invoke-static {v4, v9, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Basic "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Lsun/net/www/protocol/http/BasicAuthentication$BasicBASE64Encoder;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lsun/net/www/protocol/http/BasicAuthentication$BasicBASE64Encoder;-><init>(Lsun/net/www/protocol/http/BasicAuthentication;Lsun/net/www/protocol/http/BasicAuthentication$BasicBASE64Encoder;)V

    invoke-virtual {v8, v0}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lsun/net/www/protocol/http/BasicAuthentication;->auth:Ljava/lang/String;

    iput-object p4, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    return-void
.end method

.method static getRootPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/16 v3, 0x2f

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v5, p0, v5, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/http/BasicAuthentication;->auth:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthorizationStale(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1}, Lsun/net/www/protocol/http/BasicAuthentication;->getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lsun/net/www/protocol/http/HttpURLConnection;->setAuthenticationProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsPreemptiveAuthorization()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
