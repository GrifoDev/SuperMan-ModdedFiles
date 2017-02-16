.class public Lsun/net/www/protocol/gopher/GopherClient;
.super Lsun/net/NetworkClient;
.source "GopherClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static gopherProxyHost:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static gopherProxyPort:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static useGopherProxy:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field connection:Lsun/net/www/URLConnection;

.field gkey:Ljava/lang/String;

.field gtype:I

.field os:Ljava/io/PipedOutputStream;

.field u:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lsun/security/action/GetBooleanAction;

    const-string/jumbo v1, "gopherProxySet"

    invoke-direct {v0, v1}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lsun/net/www/protocol/gopher/GopherClient;->useGopherProxy:Z

    .line 75
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v1, "gopherProxyHost"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lsun/net/www/protocol/gopher/GopherClient;->gopherProxyHost:Ljava/lang/String;

    .line 78
    new-instance v0, Lsun/security/action/GetIntegerAction;

    const-string/jumbo v1, "gopherProxyPort"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    .line 77
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lsun/net/www/protocol/gopher/GopherClient;->gopherProxyPort:I

    .line 38
    return-void
.end method

.method constructor <init>(Lsun/net/www/URLConnection;)V
    .locals 0
    .param p1, "connection"    # Lsun/net/www/URLConnection;

    .prologue
    .line 88
    invoke-direct {p0}, Lsun/net/NetworkClient;-><init>()V

    .line 89
    iput-object p1, p0, Lsun/net/www/protocol/gopher/GopherClient;->connection:Lsun/net/www/URLConnection;

    .line 88
    return-void
.end method

.method private decodePercent(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x41

    const/16 v12, 0x39

    const/16 v11, 0x30

    const/16 v10, 0x25

    const/4 v9, 0x0

    .line 181
    if-eqz p1, :cond_0

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_1

    .line 182
    :cond_0
    return-object p1

    .line 183
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 184
    .local v4, "limit":I
    new-array v1, v4, [C

    .line 185
    .local v1, "d":[C
    const/4 v2, 0x0

    .line 186
    .local v2, "dp":I
    const/4 v7, 0x0

    .local v7, "sp":I
    move v3, v2

    .end local v2    # "dp":I
    .local v3, "dp":I
    :goto_0
    if-ge v7, v4, :cond_9

    .line 187
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 188
    .local v0, "c":I
    if-ne v0, v10, :cond_2

    add-int/lit8 v8, v7, 0x2

    if-ge v8, v4, :cond_2

    .line 189
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 190
    .local v5, "s1":I
    add-int/lit8 v8, v7, 0x2

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 191
    .local v6, "s2":I
    if-gt v11, v5, :cond_3

    if-gt v5, v12, :cond_3

    .line 192
    add-int/lit8 v5, v5, -0x30

    .line 199
    :goto_1
    if-gt v11, v6, :cond_6

    if-gt v6, v12, :cond_6

    .line 200
    add-int/lit8 v6, v6, -0x30

    .line 207
    :goto_2
    if-ltz v5, :cond_2

    if-ltz v6, :cond_2

    .line 208
    shl-int/lit8 v8, v5, 0x4

    or-int v0, v8, v6

    .line 209
    add-int/lit8 v7, v7, 0x2

    .line 212
    .end local v5    # "s1":I
    .end local v6    # "s2":I
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "dp":I
    .restart local v2    # "dp":I
    int-to-char v8, v0

    aput-char v8, v1, v3

    .line 186
    add-int/lit8 v7, v7, 0x1

    move v3, v2

    .end local v2    # "dp":I
    .restart local v3    # "dp":I
    goto :goto_0

    .line 193
    .restart local v5    # "s1":I
    .restart local v6    # "s2":I
    :cond_3
    const/16 v8, 0x61

    if-gt v8, v5, :cond_4

    const/16 v8, 0x66

    if-gt v5, v8, :cond_4

    .line 194
    add-int/lit8 v8, v5, -0x61

    add-int/lit8 v5, v8, 0xa

    goto :goto_1

    .line 195
    :cond_4
    if-gt v13, v5, :cond_5

    const/16 v8, 0x46

    if-gt v5, v8, :cond_5

    .line 196
    add-int/lit8 v8, v5, -0x41

    add-int/lit8 v5, v8, 0xa

    goto :goto_1

    .line 198
    :cond_5
    const/4 v5, -0x1

    goto :goto_1

    .line 201
    :cond_6
    const/16 v8, 0x61

    if-gt v8, v6, :cond_7

    const/16 v8, 0x66

    if-gt v6, v8, :cond_7

    .line 202
    add-int/lit8 v8, v6, -0x61

    add-int/lit8 v6, v8, 0xa

    goto :goto_2

    .line 203
    :cond_7
    if-gt v13, v6, :cond_8

    const/16 v8, 0x46

    if-gt v6, v8, :cond_8

    .line 204
    add-int/lit8 v8, v6, -0x41

    add-int/lit8 v6, v8, 0xa

    goto :goto_2

    .line 206
    :cond_8
    const/4 v6, -0x1

    goto :goto_2

    .line 214
    .end local v0    # "c":I
    .end local v5    # "s1":I
    .end local v6    # "s2":I
    :cond_9
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1, v9, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v8
.end method

.method private encodePercent(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x25

    const/16 v10, 0xa

    const/4 v9, 0x0

    .line 219
    if-nez p1, :cond_0

    .line 220
    return-object p1

    .line 221
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 222
    .local v4, "limit":I
    const/4 v1, 0x0

    .line 223
    .local v1, "d":[C
    const/4 v3, 0x0

    .line 224
    .local v3, "dp":I
    const/4 v6, 0x0

    .end local v1    # "d":[C
    .local v6, "sp":I
    :goto_0
    if-ge v6, v4, :cond_9

    .line 225
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 226
    .local v0, "c":I
    const/16 v7, 0x20

    if-le v0, v7, :cond_1

    const/16 v7, 0x22

    if-ne v0, v7, :cond_4

    .line 227
    :cond_1
    if-nez v1, :cond_2

    .line 228
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 229
    :cond_2
    add-int/lit8 v7, v3, 0x3

    array-length v8, v1

    if-lt v7, v8, :cond_3

    .line 230
    add-int/lit8 v7, v3, 0xa

    new-array v5, v7, [C

    .line 231
    .local v5, "nd":[C
    invoke-static {v1, v9, v5, v9, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 232
    move-object v1, v5

    .line 234
    .end local v5    # "nd":[C
    :cond_3
    aput-char v11, v1, v3

    .line 235
    shr-int/lit8 v7, v0, 0x4

    and-int/lit8 v2, v7, 0xf

    .line 236
    .local v2, "dig":I
    add-int/lit8 v8, v3, 0x1

    if-ge v2, v10, :cond_7

    add-int/lit8 v7, v2, 0x30

    :goto_1
    int-to-char v7, v7

    aput-char v7, v1, v8

    .line 237
    and-int/lit8 v2, v0, 0xf

    .line 238
    add-int/lit8 v8, v3, 0x2

    if-ge v2, v10, :cond_8

    add-int/lit8 v7, v2, 0x30

    :goto_2
    int-to-char v7, v7

    aput-char v7, v1, v8

    .line 239
    add-int/lit8 v3, v3, 0x3

    .line 224
    .end local v2    # "dig":I
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 226
    :cond_4
    if-eq v0, v11, :cond_1

    .line 241
    if-eqz v1, :cond_6

    .line 242
    array-length v7, v1

    if-lt v3, v7, :cond_5

    .line 243
    add-int/lit8 v7, v3, 0xa

    new-array v5, v7, [C

    .line 244
    .restart local v5    # "nd":[C
    invoke-static {v1, v9, v5, v9, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 245
    move-object v1, v5

    .line 247
    .end local v5    # "nd":[C
    :cond_5
    int-to-char v7, v0

    aput-char v7, v1, v3

    .line 249
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 236
    .restart local v2    # "dig":I
    :cond_7
    add-int/lit8 v7, v2, 0x37

    goto :goto_1

    .line 238
    :cond_8
    add-int/lit8 v7, v2, 0x37

    goto :goto_2

    .line 252
    .end local v0    # "c":I
    .end local v2    # "dig":I
    :cond_9
    if-nez v1, :cond_a

    .end local p1    # "s":Ljava/lang/String;
    :goto_4
    return-object p1

    .restart local p1    # "s":Ljava/lang/String;
    :cond_a
    new-instance p1, Ljava/lang/String;

    .end local p1    # "s":Ljava/lang/String;
    invoke-direct {p1, v1, v9, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_4
.end method

.method public static getGopherProxyHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "gopherProxyHost"

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    .local v0, "host":Ljava/lang/String;
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 110
    .end local v0    # "host":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getGopherProxyPort()I
    .locals 3

    .prologue
    .line 118
    new-instance v0, Lsun/security/action/GetIntegerAction;

    const-string/jumbo v1, "gopherProxyPort"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    .line 117
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getUseGopherProxy()Z
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lsun/security/action/GetBooleanAction;

    const-string/jumbo v1, "gopherProxySet"

    invoke-direct {v0, v1}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method openStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 10
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2f

    const/4 v9, 0x0

    .line 124
    iput-object p1, p0, Lsun/net/www/protocol/gopher/GopherClient;->u:Ljava/net/URL;

    .line 125
    iget-object v6, p0, Lsun/net/www/protocol/gopher/GopherClient;->os:Ljava/io/PipedOutputStream;

    iput-object v6, p0, Lsun/net/www/protocol/gopher/GopherClient;->os:Ljava/io/PipedOutputStream;

    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 129
    .local v2, "limit":I
    const/16 v0, 0x31

    .line 130
    .local v0, "c":I
    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_0

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_0
    if-ne v0, v7, :cond_1

    const/16 v0, 0x31

    .end local v0    # "c":I
    :cond_1
    iput v0, p0, Lsun/net/www/protocol/gopher/GopherClient;->gtype:I

    .line 133
    if-ge v1, v2, :cond_2

    .line 134
    add-int/lit8 v1, v1, 0x1

    .line 135
    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lsun/net/www/protocol/gopher/GopherClient;->gkey:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v6

    if-gtz v6, :cond_3

    const/16 v6, 0x46

    :goto_1
    invoke-virtual {p0, v7, v6}, Lsun/net/NetworkClient;->openServer(Ljava/lang/String;I)V

    .line 139
    new-instance v3, Lsun/net/www/MessageHeader;

    invoke-direct {v3}, Lsun/net/www/MessageHeader;-><init>()V

    .line 141
    .local v3, "msgh":Lsun/net/www/MessageHeader;
    iget v6, p0, Lsun/net/www/protocol/gopher/GopherClient;->gtype:I

    sparse-switch v6, :sswitch_data_0

    .line 154
    const-string/jumbo v6, "content-type"

    const-string/jumbo v7, "content/unknown"

    invoke-virtual {v3, v6, v7}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_2
    iget v6, p0, Lsun/net/www/protocol/gopher/GopherClient;->gtype:I

    const/16 v7, 0x37

    if-eq v6, v7, :cond_4

    .line 158
    iget-object v6, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lsun/net/www/protocol/gopher/GopherClient;->gkey:Ljava/lang/String;

    invoke-direct {p0, v8}, Lsun/net/www/protocol/gopher/GopherClient;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 159
    iget-object v6, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    invoke-virtual {v6}, Ljava/io/PrintStream;->flush()V

    .line 168
    :goto_3
    iget-object v6, p0, Lsun/net/www/protocol/gopher/GopherClient;->connection:Lsun/net/www/URLConnection;

    invoke-virtual {v6, v3}, Lsun/net/www/URLConnection;->setProperties(Lsun/net/www/MessageHeader;)V

    .line 169
    const-string/jumbo v6, "content-type"

    invoke-virtual {v3, v6}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "text/html"

    if-ne v6, v7, :cond_6

    .line 170
    new-instance v6, Ljava/io/PipedOutputStream;

    invoke-direct {v6}, Ljava/io/PipedOutputStream;-><init>()V

    iput-object v6, p0, Lsun/net/www/protocol/gopher/GopherClient;->os:Ljava/io/PipedOutputStream;

    .line 171
    new-instance v4, Ljava/io/PipedInputStream;

    invoke-direct {v4}, Ljava/io/PipedInputStream;-><init>()V

    .line 172
    .local v4, "ret":Ljava/io/PipedInputStream;
    iget-object v6, p0, Lsun/net/www/protocol/gopher/GopherClient;->os:Ljava/io/PipedOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    .line 173
    new-instance v6, Ljava/lang/Thread;

    invoke-direct {v6, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 174
    return-object v4

    .line 137
    .end local v3    # "msgh":Lsun/net/www/MessageHeader;
    .end local v4    # "ret":Ljava/io/PipedInputStream;
    :cond_3
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v6

    goto :goto_1

    .line 144
    .restart local v3    # "msgh":Lsun/net/www/MessageHeader;
    :sswitch_0
    const-string/jumbo v6, "content-type"

    const-string/jumbo v7, "text/plain"

    invoke-virtual {v3, v6, v7}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 147
    :sswitch_1
    const-string/jumbo v6, "content-type"

    const-string/jumbo v7, "text/html"

    invoke-virtual {v3, v6, v7}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 151
    :sswitch_2
    const-string/jumbo v6, "content-type"

    const-string/jumbo v7, "image/gif"

    invoke-virtual {v3, v6, v7}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 160
    :cond_4
    iget-object v6, p0, Lsun/net/www/protocol/gopher/GopherClient;->gkey:Ljava/lang/String;

    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_5

    .line 161
    iget-object v6, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lsun/net/www/protocol/gopher/GopherClient;->gkey:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 162
    iget-object v8, p0, Lsun/net/www/protocol/gopher/GopherClient;->gkey:Ljava/lang/String;

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 161
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 162
    const-string/jumbo v8, "\r\n"

    .line 161
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lsun/net/www/protocol/gopher/GopherClient;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 163
    iget-object v6, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    invoke-virtual {v6}, Ljava/io/PrintStream;->flush()V

    .line 164
    const-string/jumbo v6, "content-type"

    const-string/jumbo v7, "text/html"

    invoke-virtual {v3, v6, v7}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 166
    :cond_5
    const-string/jumbo v6, "content-type"

    const-string/jumbo v7, "text/html"

    invoke-virtual {v3, v6, v7}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 176
    :cond_6
    new-instance v6, Lsun/net/www/protocol/gopher/GopherInputStream;

    iget-object v7, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    invoke-direct {v6, p0, v7}, Lsun/net/www/protocol/gopher/GopherInputStream;-><init>(Lsun/net/NetworkClient;Ljava/io/InputStream;)V

    return-object v6

    .line 141
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x37 -> :sswitch_0
        0x49 -> :sswitch_2
        0x67 -> :sswitch_2
    .end sparse-switch
.end method

.method public run()V
    .locals 24

    .prologue
    .line 258
    const/4 v15, -0x1

    .line 260
    .local v15, "qpos":I
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->gtype:I

    move/from16 v21, v0

    const/16 v22, 0x37

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->gkey:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x3f

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-gez v15, :cond_1

    .line 261
    new-instance v14, Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->os:Ljava/io/PipedOutputStream;

    move-object/from16 v21, v0

    sget-object v22, Lsun/net/www/protocol/gopher/GopherClient;->encoding:Ljava/lang/String;

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v14, v0, v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 262
    .local v14, "ps":Ljava/io/PrintStream;
    const-string/jumbo v21, "<html><head><title>Searchable Gopher Index</title></head>\n<body><h1>Searchable Gopher Index</h1><isindex>\n</body></html>\n"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    .end local v14    # "ps":Ljava/io/PrintStream;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lsun/net/NetworkClient;->closeServer()V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->os:Ljava/io/PipedOutputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/PipedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 257
    :goto_1
    return-void

    .line 263
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->gtype:I

    move/from16 v21, v0

    const/16 v22, 0x31

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->gtype:I

    move/from16 v21, v0

    const/16 v22, 0x37

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 264
    const/16 v21, 0x800

    move/from16 v0, v21

    new-array v3, v0, [B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    .local v3, "buf":[B
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .local v12, "n":I
    if-ltz v12, :cond_0

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->os:Ljava/io/PipedOutputStream;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1, v12}, Ljava/io/PipedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 269
    .end local v12    # "n":I
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 272
    .end local v3    # "buf":[B
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_4
    new-instance v14, Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->os:Ljava/io/PipedOutputStream;

    move-object/from16 v21, v0

    sget-object v22, Lsun/net/www/protocol/gopher/GopherClient;->encoding:Ljava/lang/String;

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v14, v0, v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 273
    .restart local v14    # "ps":Ljava/io/PrintStream;
    const/16 v20, 0x0

    .line 274
    .local v20, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->gtype:I

    move/from16 v21, v0

    const/16 v22, 0x37

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 275
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Results of searching for \""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->gkey:Ljava/lang/String;

    move-object/from16 v22, v0

    add-int/lit8 v23, v15, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 276
    const-string/jumbo v22, "\" on "

    .line 275
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->u:Ljava/net/URL;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v22

    .line 275
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 279
    .local v20, "title":Ljava/lang/String;
    :goto_3
    const-string/jumbo v21, "<html><head><title>"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 281
    const-string/jumbo v21, "</title></head>\n<body>\n<H1>"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 283
    const-string/jumbo v21, "</h1><dl compact>\n"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 284
    new-instance v4, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 286
    .local v4, "ds":Ljava/io/DataInputStream;
    :cond_3
    :goto_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, "s":Ljava/lang/String;
    if-eqz v16, :cond_a

    .line 287
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v11

    .line 288
    .local v11, "len":I
    :goto_5
    if-lez v11, :cond_5

    add-int/lit8 v21, v11, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x20

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_5

    .line 289
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 278
    .end local v4    # "ds":Ljava/io/DataInputStream;
    .end local v11    # "len":I
    .end local v16    # "s":Ljava/lang/String;
    .local v20, "title":Ljava/lang/String;
    :cond_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Gopher directory "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->gkey:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " from "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->u:Ljava/net/URL;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .local v20, "title":Ljava/lang/String;
    goto :goto_3

    .line 290
    .restart local v4    # "ds":Ljava/io/DataInputStream;
    .restart local v11    # "len":I
    .restart local v16    # "s":Ljava/lang/String;
    :cond_5
    if-lez v11, :cond_3

    .line 292
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 293
    .local v10, "key":I
    const/16 v21, 0x9

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 294
    .local v17, "t1":I
    if-lez v17, :cond_6

    const/16 v21, 0x9

    add-int/lit8 v22, v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v18

    .line 295
    .local v18, "t2":I
    :goto_6
    if-lez v18, :cond_7

    const/16 v21, 0x9

    add-int/lit8 v22, v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v19

    .line 296
    .local v19, "t3":I
    :goto_7
    if-ltz v19, :cond_3

    .line 300
    add-int/lit8 v21, v19, 0x1

    move/from16 v0, v21

    if-ge v0, v11, :cond_8

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 301
    .local v13, "port":Ljava/lang/String;
    :goto_8
    add-int/lit8 v21, v18, 0x1

    move/from16 v0, v21

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    add-int/lit8 v21, v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 302
    .local v9, "host":Ljava/lang/String;
    :goto_9
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "<dt><a href=\"gopher://"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 303
    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 302
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 303
    add-int/lit8 v22, v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lsun/net/www/protocol/gopher/GopherClient;->encodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 302
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 303
    const-string/jumbo v22, "\">\n"

    .line 302
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 304
    const-string/jumbo v21, "<img align=middle border=0 width=25 height=32 src="

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 305
    sparse-switch v10, :sswitch_data_0

    .line 307
    const-string/jumbo v21, "java.net.ftp.imagepath.file"

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 319
    :goto_a
    const-string/jumbo v21, ".gif align=middle><dd>\n"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 320
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "</a>\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    .line 326
    .end local v4    # "ds":Ljava/io/DataInputStream;
    .end local v9    # "host":Ljava/lang/String;
    .end local v10    # "key":I
    .end local v11    # "len":I
    .end local v13    # "port":Ljava/lang/String;
    .end local v14    # "ps":Ljava/io/PrintStream;
    .end local v16    # "s":Ljava/lang/String;
    .end local v17    # "t1":I
    .end local v18    # "t2":I
    .end local v19    # "t3":I
    .end local v20    # "title":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 327
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_5
    new-instance v21, Ljava/lang/InternalError;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lsun/net/www/protocol/gopher/GopherClient;->encoding:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " encoding not found"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 329
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v21

    .line 331
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lsun/net/NetworkClient;->closeServer()V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->os:Ljava/io/PipedOutputStream;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/PipedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 329
    :goto_b
    throw v21

    .line 294
    .restart local v4    # "ds":Ljava/io/DataInputStream;
    .restart local v10    # "key":I
    .restart local v11    # "len":I
    .restart local v14    # "ps":Ljava/io/PrintStream;
    .restart local v16    # "s":Ljava/lang/String;
    .restart local v17    # "t1":I
    .restart local v20    # "title":Ljava/lang/String;
    :cond_6
    const/16 v18, -0x1

    goto/16 :goto_6

    .line 295
    .restart local v18    # "t2":I
    :cond_7
    const/16 v19, -0x1

    goto/16 :goto_7

    .line 300
    .restart local v19    # "t3":I
    :cond_8
    :try_start_7
    const-string/jumbo v13, ""

    .restart local v13    # "port":Ljava/lang/String;
    goto/16 :goto_8

    .line 301
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->u:Ljava/net/URL;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "host":Ljava/lang/String;
    goto/16 :goto_9

    .line 310
    :sswitch_0
    const-string/jumbo v21, "java.net.ftp.imagepath.text"

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_a

    .line 328
    .end local v4    # "ds":Ljava/io/DataInputStream;
    .end local v9    # "host":Ljava/lang/String;
    .end local v10    # "key":I
    .end local v11    # "len":I
    .end local v13    # "port":Ljava/lang/String;
    .end local v14    # "ps":Ljava/io/PrintStream;
    .end local v16    # "s":Ljava/lang/String;
    .end local v17    # "t1":I
    .end local v18    # "t2":I
    .end local v19    # "t3":I
    .end local v20    # "title":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 331
    .local v5, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lsun/net/NetworkClient;->closeServer()V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->os:Ljava/io/PipedOutputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/PipedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    .line 333
    :catch_3
    move-exception v8

    .local v8, "e2":Ljava/io/IOException;
    goto/16 :goto_1

    .line 313
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "e2":Ljava/io/IOException;
    .restart local v4    # "ds":Ljava/io/DataInputStream;
    .restart local v9    # "host":Ljava/lang/String;
    .restart local v10    # "key":I
    .restart local v11    # "len":I
    .restart local v13    # "port":Ljava/lang/String;
    .restart local v14    # "ps":Ljava/io/PrintStream;
    .restart local v16    # "s":Ljava/lang/String;
    .restart local v17    # "t1":I
    .restart local v18    # "t2":I
    .restart local v19    # "t3":I
    .restart local v20    # "title":Ljava/lang/String;
    :sswitch_1
    :try_start_9
    const-string/jumbo v21, "java.net.ftp.imagepath.directory"

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 316
    :sswitch_2
    const-string/jumbo v21, "java.net.ftp.imagepath.gif"

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 322
    .end local v9    # "host":Ljava/lang/String;
    .end local v10    # "key":I
    .end local v11    # "len":I
    .end local v13    # "port":Ljava/lang/String;
    .end local v17    # "t1":I
    .end local v18    # "t2":I
    .end local v19    # "t3":I
    :cond_a
    const-string/jumbo v21, "</dl></body>\n"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v14}, Ljava/io/PrintStream;->close()V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 333
    .end local v4    # "ds":Ljava/io/DataInputStream;
    .end local v14    # "ps":Ljava/io/PrintStream;
    .end local v16    # "s":Ljava/lang/String;
    .end local v20    # "title":Ljava/lang/String;
    :catch_4
    move-exception v8

    .restart local v8    # "e2":Ljava/io/IOException;
    goto :goto_b

    .end local v8    # "e2":Ljava/io/IOException;
    :catch_5
    move-exception v8

    .restart local v8    # "e2":Ljava/io/IOException;
    goto/16 :goto_1

    .line 305
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x67 -> :sswitch_2
    .end sparse-switch
.end method
