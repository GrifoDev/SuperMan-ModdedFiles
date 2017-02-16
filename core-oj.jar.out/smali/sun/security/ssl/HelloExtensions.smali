.class final Lsun/security/ssl/HelloExtensions;
.super Ljava/lang/Object;
.source "HelloExtensions.java"


# instance fields
.field private encodedLength:I

.field private extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/ssl/HelloExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    .line 67
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 7
    .param p1, "s"    # Lsun/security/ssl/HandshakeInStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    move-result v3

    .line 73
    .local v3, "len":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    .line 74
    add-int/lit8 v5, v3, 0x2

    iput v5, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    .line 75
    :goto_0
    if-lez v3, :cond_5

    .line 76
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    move-result v4

    .line 77
    .local v4, "type":I
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    move-result v2

    .line 78
    .local v2, "extlen":I
    invoke-static {v4}, Lsun/security/ssl/ExtensionType;->get(I)Lsun/security/ssl/ExtensionType;

    move-result-object v0

    .line 80
    .local v0, "extType":Lsun/security/ssl/ExtensionType;
    sget-object v5, Lsun/security/ssl/ExtensionType;->EXT_SERVER_NAME:Lsun/security/ssl/ExtensionType;

    if-ne v0, v5, :cond_0

    .line 81
    new-instance v1, Lsun/security/ssl/ServerNameExtension;

    invoke-direct {v1, p1, v2}, Lsun/security/ssl/ServerNameExtension;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    .line 94
    .local v1, "extension":Lsun/security/ssl/HelloExtension;
    :goto_1
    iget-object v5, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v5, v2, 0x4

    sub-int/2addr v3, v5

    goto :goto_0

    .line 82
    .end local v1    # "extension":Lsun/security/ssl/HelloExtension;
    :cond_0
    sget-object v5, Lsun/security/ssl/ExtensionType;->EXT_SIGNATURE_ALGORITHMS:Lsun/security/ssl/ExtensionType;

    if-ne v0, v5, :cond_1

    .line 83
    new-instance v1, Lsun/security/ssl/SignatureAlgorithmsExtension;

    invoke-direct {v1, p1, v2}, Lsun/security/ssl/SignatureAlgorithmsExtension;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    .restart local v1    # "extension":Lsun/security/ssl/HelloExtension;
    goto :goto_1

    .line 84
    .end local v1    # "extension":Lsun/security/ssl/HelloExtension;
    :cond_1
    sget-object v5, Lsun/security/ssl/ExtensionType;->EXT_ELLIPTIC_CURVES:Lsun/security/ssl/ExtensionType;

    if-ne v0, v5, :cond_2

    .line 85
    new-instance v1, Lsun/security/ssl/SupportedEllipticCurvesExtension;

    invoke-direct {v1, p1, v2}, Lsun/security/ssl/SupportedEllipticCurvesExtension;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    .restart local v1    # "extension":Lsun/security/ssl/HelloExtension;
    goto :goto_1

    .line 86
    .end local v1    # "extension":Lsun/security/ssl/HelloExtension;
    :cond_2
    sget-object v5, Lsun/security/ssl/ExtensionType;->EXT_EC_POINT_FORMATS:Lsun/security/ssl/ExtensionType;

    if-ne v0, v5, :cond_3

    .line 88
    new-instance v1, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;

    invoke-direct {v1, p1, v2}, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    .line 87
    .restart local v1    # "extension":Lsun/security/ssl/HelloExtension;
    goto :goto_1

    .line 89
    .end local v1    # "extension":Lsun/security/ssl/HelloExtension;
    :cond_3
    sget-object v5, Lsun/security/ssl/ExtensionType;->EXT_RENEGOTIATION_INFO:Lsun/security/ssl/ExtensionType;

    if-ne v0, v5, :cond_4

    .line 90
    new-instance v1, Lsun/security/ssl/RenegotiationInfoExtension;

    invoke-direct {v1, p1, v2}, Lsun/security/ssl/RenegotiationInfoExtension;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    .restart local v1    # "extension":Lsun/security/ssl/HelloExtension;
    goto :goto_1

    .line 92
    .end local v1    # "extension":Lsun/security/ssl/HelloExtension;
    :cond_4
    new-instance v1, Lsun/security/ssl/UnknownExtension;

    invoke-direct {v1, p1, v2, v0}, Lsun/security/ssl/UnknownExtension;-><init>(Lsun/security/ssl/HandshakeInStream;ILsun/security/ssl/ExtensionType;)V

    .restart local v1    # "extension":Lsun/security/ssl/HelloExtension;
    goto :goto_1

    .line 97
    .end local v0    # "extType":Lsun/security/ssl/ExtensionType;
    .end local v1    # "extension":Lsun/security/ssl/HelloExtension;
    .end local v2    # "extlen":I
    .end local v4    # "type":I
    :cond_5
    if-eqz v3, :cond_6

    .line 98
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    .line 99
    const-string/jumbo v6, "Error parsing extensions: extra data"

    .line 98
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 71
    :cond_6
    return-void
.end method


# virtual methods
.method add(Lsun/security/ssl/HelloExtension;)V
    .locals 1
    .param p1, "ext"    # Lsun/security/ssl/HelloExtension;

    .prologue
    .line 109
    iget-object v0, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    .line 112
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    .line 108
    return-void
.end method

.method get(Lsun/security/ssl/ExtensionType;)Lsun/security/ssl/HelloExtension;
    .locals 3
    .param p1, "type"    # Lsun/security/ssl/ExtensionType;

    .prologue
    .line 117
    iget-object v2, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ext$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/HelloExtension;

    .line 118
    .local v0, "ext":Lsun/security/ssl/HelloExtension;
    iget-object v2, v0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    if-ne v2, p1, :cond_0

    .line 119
    return-object v0

    .line 122
    .end local v0    # "ext":Lsun/security/ssl/HelloExtension;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method length()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 126
    iget v2, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    if-ltz v2, :cond_0

    .line 127
    iget v2, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    return v2

    .line 129
    :cond_0
    iget-object v2, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    iput v3, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    .line 137
    :cond_1
    iget v2, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    return v2

    .line 132
    :cond_2
    const/4 v2, 0x2

    iput v2, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    .line 133
    iget-object v2, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ext$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/HelloExtension;

    .line 134
    .local v0, "ext":Lsun/security/ssl/HelloExtension;
    iget v2, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    invoke-virtual {v0}, Lsun/security/ssl/HelloExtension;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    goto :goto_0
.end method

.method list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/security/ssl/HelloExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    return-object v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v2, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ext$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/HelloExtension;

    .line 153
    .local v0, "ext":Lsun/security/ssl/HelloExtension;
    invoke-virtual {v0}, Lsun/security/ssl/HelloExtension;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    .end local v0    # "ext":Lsun/security/ssl/HelloExtension;
    :cond_0
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 4
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lsun/security/ssl/HelloExtensions;->length()I

    move-result v2

    .line 142
    .local v2, "length":I
    if-nez v2, :cond_0

    .line 143
    return-void

    .line 145
    :cond_0
    add-int/lit8 v3, v2, -0x2

    invoke-virtual {p1, v3}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 146
    iget-object v3, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ext$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/HelloExtension;

    .line 147
    .local v0, "ext":Lsun/security/ssl/HelloExtension;
    invoke-virtual {v0, p1}, Lsun/security/ssl/HelloExtension;->send(Lsun/security/ssl/HandshakeOutStream;)V

    goto :goto_0

    .line 140
    .end local v0    # "ext":Lsun/security/ssl/HelloExtension;
    :cond_1
    return-void
.end method
