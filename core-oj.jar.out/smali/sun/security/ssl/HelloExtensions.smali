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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    move-result v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    add-int/lit8 v5, v3, 0x2

    iput v5, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    :goto_0
    if-lez v3, :cond_5

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    move-result v4

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    move-result v2

    invoke-static {v4}, Lsun/security/ssl/ExtensionType;->get(I)Lsun/security/ssl/ExtensionType;

    move-result-object v0

    sget-object v5, Lsun/security/ssl/ExtensionType;->EXT_SERVER_NAME:Lsun/security/ssl/ExtensionType;

    if-ne v0, v5, :cond_0

    new-instance v1, Lsun/security/ssl/ServerNameExtension;

    invoke-direct {v1, p1, v2}, Lsun/security/ssl/ServerNameExtension;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    :goto_1
    iget-object v5, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v2, 0x4

    sub-int/2addr v3, v5

    goto :goto_0

    :cond_0
    sget-object v5, Lsun/security/ssl/ExtensionType;->EXT_SIGNATURE_ALGORITHMS:Lsun/security/ssl/ExtensionType;

    if-ne v0, v5, :cond_1

    new-instance v1, Lsun/security/ssl/SignatureAlgorithmsExtension;

    invoke-direct {v1, p1, v2}, Lsun/security/ssl/SignatureAlgorithmsExtension;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    goto :goto_1

    :cond_1
    sget-object v5, Lsun/security/ssl/ExtensionType;->EXT_ELLIPTIC_CURVES:Lsun/security/ssl/ExtensionType;

    if-ne v0, v5, :cond_2

    new-instance v1, Lsun/security/ssl/SupportedEllipticCurvesExtension;

    invoke-direct {v1, p1, v2}, Lsun/security/ssl/SupportedEllipticCurvesExtension;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    goto :goto_1

    :cond_2
    sget-object v5, Lsun/security/ssl/ExtensionType;->EXT_EC_POINT_FORMATS:Lsun/security/ssl/ExtensionType;

    if-ne v0, v5, :cond_3

    new-instance v1, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;

    invoke-direct {v1, p1, v2}, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    goto :goto_1

    :cond_3
    sget-object v5, Lsun/security/ssl/ExtensionType;->EXT_RENEGOTIATION_INFO:Lsun/security/ssl/ExtensionType;

    if-ne v0, v5, :cond_4

    new-instance v1, Lsun/security/ssl/RenegotiationInfoExtension;

    invoke-direct {v1, p1, v2}, Lsun/security/ssl/RenegotiationInfoExtension;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    goto :goto_1

    :cond_4
    new-instance v1, Lsun/security/ssl/UnknownExtension;

    invoke-direct {v1, p1, v2, v0}, Lsun/security/ssl/UnknownExtension;-><init>(Lsun/security/ssl/HandshakeInStream;ILsun/security/ssl/ExtensionType;)V

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v6, "Error parsing extensions: extra data"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    return-void
.end method


# virtual methods
.method add(Lsun/security/ssl/HelloExtension;)V
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x1

    iput v0, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    return-void
.end method

.method get(Lsun/security/ssl/ExtensionType;)Lsun/security/ssl/HelloExtension;
    .locals 3

    iget-object v2, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/HelloExtension;

    iget-object v2, v0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method length()I
    .locals 4

    const/4 v3, 0x0

    iget v2, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    if-ltz v2, :cond_0

    iget v2, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    return v2

    :cond_0
    iget-object v2, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iput v3, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    :cond_1
    iget v2, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    return v2

    :cond_2
    const/4 v2, 0x2

    iput v2, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    iget-object v2, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/HelloExtension;

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

    iget-object v0, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    return-object v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/HelloExtension;

    invoke-virtual {v0}, Lsun/security/ssl/HelloExtension;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/ssl/HelloExtensions;->length()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v3, v2, -0x2

    invoke-virtual {p1, v3}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    iget-object v3, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/HelloExtension;

    invoke-virtual {v0, p1}, Lsun/security/ssl/HelloExtension;->send(Lsun/security/ssl/HandshakeOutStream;)V

    goto :goto_0

    :cond_1
    return-void
.end method
