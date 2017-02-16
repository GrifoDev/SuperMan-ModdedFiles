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

    .prologue
    const-class v0, Lsun/net/www/protocol/http/BasicAuthentication;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/net/www/protocol/http/BasicAuthentication;->-assertionsDisabled:Z

    .line 45
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "isProxy"    # Z
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "realm"    # Ljava/lang/String;
    .param p5, "auth"    # Ljava/lang/String;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    const/16 v1, 0x70

    .line 89
    :goto_0
    sget-object v2, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 88
    invoke-direct/range {v0 .. v5}, Lsun/net/www/protocol/http/AuthenticationInfo;-><init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/lang/String;ILjava/lang/String;)V

    .line 90
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

    .line 87
    return-void

    .line 88
    :cond_0
    const/16 v1, 0x73

    goto :goto_0
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;Ljava/net/PasswordAuthentication;)V
    .locals 14
    .param p1, "isProxy"    # Z
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "realm"    # Ljava/lang/String;
    .param p5, "pw"    # Ljava/net/PasswordAuthentication;

    .prologue
    .line 58
    if-eqz p1, :cond_1

    const/16 v2, 0x70

    .line 59
    :goto_0
    sget-object v3, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    move-object v1, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 58
    invoke-direct/range {v1 .. v6}, Lsun/net/www/protocol/http/AuthenticationInfo;-><init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/lang/String;ILjava/lang/String;)V

    .line 60
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

    .line 61
    .local v12, "plain":Ljava/lang/String;
    const/4 v9, 0x0

    .line 63
    .local v9, "nameBytes":[B
    :try_start_0
    const-string/jumbo v1, "ISO-8859-1"

    invoke-virtual {v12, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 69
    .end local v9    # "nameBytes":[B
    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v10

    .line 70
    .local v10, "passwd":[C
    array-length v1, v10

    new-array v11, v1, [B

    .line 71
    .local v11, "passwdBytes":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v1, v10

    if-ge v8, v1, :cond_2

    .line 72
    aget-char v1, v10, v8

    int-to-byte v1, v1

    aput-byte v1, v11, v8

    .line 71
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 58
    .end local v8    # "i":I
    .end local v10    # "passwd":[C
    .end local v11    # "passwdBytes":[B
    .end local v12    # "plain":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x73

    goto :goto_0

    .line 64
    .restart local v9    # "nameBytes":[B
    .restart local v12    # "plain":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 65
    .local v13, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v1, Lsun/net/www/protocol/http/BasicAuthentication;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 75
    .end local v9    # "nameBytes":[B
    .end local v13    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v8    # "i":I
    .restart local v10    # "passwd":[C
    .restart local v11    # "passwdBytes":[B
    :cond_2
    array-length v1, v9

    array-length v2, v11

    add-int/2addr v1, v2

    new-array v7, v1, [B

    .line 76
    .local v7, "concat":[B
    array-length v1, v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v9, v2, v7, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 77
    array-length v1, v9

    .line 78
    array-length v2, v11

    .line 77
    const/4 v3, 0x0

    invoke-static {v11, v3, v7, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 79
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

    .line 80
    move-object/from16 v0, p5

    iput-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    .line 57
    return-void
.end method

.method public constructor <init>(ZLjava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "isProxy"    # Z
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "auth"    # Ljava/lang/String;

    .prologue
    .line 128
    if-eqz p1, :cond_0

    const/16 v0, 0x70

    .line 129
    :goto_0
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    .line 128
    invoke-direct {p0, v0, v1, p2, p3}, Lsun/net/www/protocol/http/AuthenticationInfo;-><init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/net/URL;Ljava/lang/String;)V

    .line 130
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

    .line 127
    return-void

    .line 128
    :cond_0
    const/16 v0, 0x73

    goto :goto_0
.end method

.method public constructor <init>(ZLjava/net/URL;Ljava/lang/String;Ljava/net/PasswordAuthentication;)V
    .locals 10
    .param p1, "isProxy"    # Z
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "pw"    # Ljava/net/PasswordAuthentication;

    .prologue
    const/4 v9, 0x0

    .line 98
    if-eqz p1, :cond_1

    const/16 v7, 0x70

    .line 99
    :goto_0
    sget-object v8, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    .line 98
    invoke-direct {p0, v7, v8, p2, p3}, Lsun/net/www/protocol/http/AuthenticationInfo;-><init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/net/URL;Ljava/lang/String;)V

    .line 100
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

    .line 101
    .local v5, "plain":Ljava/lang/String;
    const/4 v2, 0x0

    .line 103
    .local v2, "nameBytes":[B
    :try_start_0
    const-string/jumbo v7, "ISO-8859-1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 109
    .end local v2    # "nameBytes":[B
    :cond_0
    invoke-virtual {p4}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v3

    .line 110
    .local v3, "passwd":[C
    array-length v7, v3

    new-array v4, v7, [B

    .line 111
    .local v4, "passwdBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v3

    if-ge v1, v7, :cond_2

    .line 112
    aget-char v7, v3, v1

    int-to-byte v7, v7

    aput-byte v7, v4, v1

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 98
    .end local v1    # "i":I
    .end local v3    # "passwd":[C
    .end local v4    # "passwdBytes":[B
    .end local v5    # "plain":Ljava/lang/String;
    :cond_1
    const/16 v7, 0x73

    goto :goto_0

    .line 104
    .restart local v2    # "nameBytes":[B
    .restart local v5    # "plain":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 105
    .local v6, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v7, Lsun/net/www/protocol/http/BasicAuthentication;->-assertionsDisabled:Z

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 115
    .end local v2    # "nameBytes":[B
    .end local v6    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "i":I
    .restart local v3    # "passwd":[C
    .restart local v4    # "passwdBytes":[B
    :cond_2
    array-length v7, v2

    array-length v8, v4

    add-int/2addr v7, v8

    new-array v0, v7, [B

    .line 116
    .local v0, "concat":[B
    array-length v7, v2

    invoke-static {v2, v9, v0, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 117
    array-length v7, v2

    .line 118
    array-length v8, v4

    .line 117
    invoke-static {v4, v9, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 119
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

    .line 120
    iput-object p4, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    .line 97
    return-void
.end method

.method static getRootPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "npath"    # Ljava/lang/String;
    .param p1, "opath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 183
    const/4 v1, 0x0

    .line 188
    .local v1, "index":I
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 189
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 194
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 195
    const/16 v3, 0x2f

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 196
    .local v2, "toindex":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v5, p0, v5, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    move v1, v2

    goto :goto_0

    .line 199
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 202
    .end local v2    # "toindex":I
    :cond_1
    return-object p0

    .line 190
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/URISyntaxException;
    goto :goto_0
.end method


# virtual methods
.method public getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lsun/net/www/protocol/http/BasicAuthentication;->auth:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthorizationStale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z
    .locals 2
    .param p1, "conn"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .param p2, "p"    # Lsun/net/www/HeaderParser;
    .param p3, "raw"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-virtual {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1}, Lsun/net/www/protocol/http/BasicAuthentication;->getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lsun/net/www/protocol/http/HttpURLConnection;->setAuthenticationProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public supportsPreemptiveAuthorization()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method
