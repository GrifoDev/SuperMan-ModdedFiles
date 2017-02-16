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

    .prologue
    const/4 v2, 0x0

    .line 622
    new-instance v0, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;

    .line 623
    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v2, v1, v2

    .line 622
    invoke-direct {v0, v1}, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;-><init>([B)V

    .line 621
    sput-object v0, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->DEFAULT:Lsun/security/ssl/HelloExtension;

    .line 615
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;I)V
    .locals 5
    .param p1, "s"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 634
    sget-object v3, Lsun/security/ssl/ExtensionType;->EXT_EC_POINT_FORMATS:Lsun/security/ssl/ExtensionType;

    invoke-direct {p0, v3}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    .line 635
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes8()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->formats:[B

    .line 638
    const/4 v1, 0x0

    .line 639
    .local v1, "uncompressed":Z
    iget-object v3, p0, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->formats:[B

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, v3, v2

    .line 640
    .local v0, "format":I
    if-nez v0, :cond_1

    .line 641
    const/4 v1, 0x1

    .line 645
    .end local v0    # "format":I
    :cond_0
    if-nez v1, :cond_2

    .line 646
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    .line 647
    const-string/jumbo v3, "Peer does not support uncompressed points"

    .line 646
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 639
    .restart local v0    # "format":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    .end local v0    # "format":I
    :cond_2
    return-void
.end method

.method private constructor <init>([B)V
    .locals 1
    .param p1, "formats"    # [B

    .prologue
    .line 628
    sget-object v0, Lsun/security/ssl/ExtensionType;->EXT_EC_POINT_FORMATS:Lsun/security/ssl/ExtensionType;

    invoke-direct {p0, v0}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    .line 629
    iput-object p1, p0, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->formats:[B

    .line 627
    return-void
.end method

.method private static toString(B)Ljava/lang/String;
    .locals 3
    .param p0, "format"    # B

    .prologue
    .line 662
    and-int/lit16 v0, p0, 0xff

    .line 663
    .local v0, "f":I
    packed-switch v0, :pswitch_data_0

    .line 671
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

    .line 665
    :pswitch_0
    const-string/jumbo v1, "uncompressed"

    return-object v1

    .line 667
    :pswitch_1
    const-string/jumbo v1, "ansiX962_compressed_prime"

    return-object v1

    .line 669
    :pswitch_2
    const-string/jumbo v1, "ansiX962_compressed_char2"

    return-object v1

    .line 663
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

    .prologue
    .line 652
    iget-object v0, p0, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->formats:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 656
    iget-object v0, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    iget v0, v0, Lsun/security/ssl/ExtensionType;->id:I

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 657
    iget-object v0, p0, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->formats:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 658
    iget-object v0, p0, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->formats:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 655
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 676
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->formats:[B

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, v3, v2

    .line 678
    .local v0, "format":B
    invoke-static {v0}, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->toString(B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 680
    .end local v0    # "format":B
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
