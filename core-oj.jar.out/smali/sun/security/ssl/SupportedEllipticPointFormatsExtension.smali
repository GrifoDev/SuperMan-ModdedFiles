.class final Lsun/security/ssl/SupportedEllipticPointFormatsExtension;
.super Lsun/security/ssl/HelloExtension;
.source "HelloExtensions.java"


# static fields
.field static final DEFAULT:Lsun/security/ssl/HelloExtension;

.field static final FMT_ANSIX962_COMPRESSED_CHAR2:I = 0x2

.field static final FMT_ANSIX962_COMPRESSED_PRIME:I = 0x1

.field static final FMT_UNCOMPRESSED:I


# instance fields
.field private final formats:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v2, v1, v2

    invoke-direct {v0, v1}, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;-><init>([B)V

    sput-object v0, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->DEFAULT:Lsun/security/ssl/HelloExtension;

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v3, Lsun/security/ssl/ExtensionType;->EXT_EC_POINT_FORMATS:Lsun/security/ssl/ExtensionType;

    invoke-direct {p0, v3}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes8()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->formats:[B

    const/4 v1, 0x0

    iget-object v3, p0, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->formats:[B

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, v3, v2

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_2

    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v3, "Peer does not support uncompressed points"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private constructor <init>([B)V
    .locals 1

    sget-object v0, Lsun/security/ssl/ExtensionType;->EXT_EC_POINT_FORMATS:Lsun/security/ssl/ExtensionType;

    invoke-direct {p0, v0}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    iput-object p1, p0, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->formats:[B

    return-void
.end method

.method private static toString(B)Ljava/lang/String;
    .locals 3

    and-int/lit16 v0, p0, 0xff

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_0
    const-string/jumbo v1, "uncompressed"

    return-object v1

    :pswitch_1
    const-string/jumbo v1, "ansiX962_compressed_prime"

    return-object v1

    :pswitch_2
    const-string/jumbo v1, "ansiX962_compressed_char2"

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method length()I
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->formats:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    iget v0, v0, Lsun/security/ssl/ExtensionType;->id:I

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    iget-object v0, p0, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->formats:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    iget-object v0, p0, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->formats:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->formats:[B

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, v3, v2

    invoke-static {v0}, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->toString(B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Extension "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", formats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
