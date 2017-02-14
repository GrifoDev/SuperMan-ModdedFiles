.class final Lsun/security/ssl/SupportedEllipticCurvesExtension;
.super Lsun/security/ssl/HelloExtension;
.source "HelloExtensions.java"


# static fields
.field private static final ARBITRARY_CHAR2:I = 0xff02

.field private static final ARBITRARY_PRIME:I = 0xff01

.field static final DEFAULT:Lsun/security/ssl/SupportedEllipticCurvesExtension;

.field private static final NAMED_CURVE_OID_TABLE:[Ljava/lang/String;

.field private static final curveIndices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final fips:Z


# instance fields
.field private final curveIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x19

    const/16 v5, 0xf

    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    move-result v2

    sput-boolean v2, Lsun/security/ssl/SupportedEllipticCurvesExtension;->fips:Z

    sget-boolean v2, Lsun/security/ssl/SupportedEllipticCurvesExtension;->fips:Z

    if-nez v2, :cond_0

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    :goto_0
    new-instance v2, Lsun/security/ssl/SupportedEllipticCurvesExtension;

    invoke-direct {v2, v1}, Lsun/security/ssl/SupportedEllipticCurvesExtension;-><init>([I)V

    sput-object v2, Lsun/security/ssl/SupportedEllipticCurvesExtension;->DEFAULT:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    const/16 v2, 0x1a

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.1"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.2"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.15"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.24"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.25"

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.26"

    const/4 v4, 0x6

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.27"

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.3"

    const/16 v4, 0x8

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.16"

    const/16 v4, 0x9

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.17"

    const/16 v4, 0xa

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.36"

    const/16 v4, 0xb

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.37"

    const/16 v4, 0xc

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.38"

    const/16 v4, 0xd

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.39"

    const/16 v4, 0xe

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.9"

    aput-object v3, v2, v5

    const-string/jumbo v3, "1.3.132.0.8"

    const/16 v4, 0x10

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.30"

    const/16 v4, 0x11

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.31"

    const/16 v4, 0x12

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.2.840.10045.3.1.1"

    const/16 v4, 0x13

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.32"

    const/16 v4, 0x14

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.33"

    const/16 v4, 0x15

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.10"

    const/16 v4, 0x16

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.2.840.10045.3.1.7"

    const/16 v4, 0x17

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.34"

    const/16 v4, 0x18

    aput-object v3, v2, v4

    const-string/jumbo v3, "1.3.132.0.35"

    aput-object v3, v2, v6

    sput-object v2, Lsun/security/ssl/SupportedEllipticCurvesExtension;->NAMED_CURVE_OID_TABLE:[Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIndices:Ljava/util/Map;

    const/4 v0, 0x1

    :goto_1
    sget-object v2, Lsun/security/ssl/SupportedEllipticCurvesExtension;->NAMED_CURVE_OID_TABLE:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIndices:Ljava/util/Map;

    sget-object v3, Lsun/security/ssl/SupportedEllipticCurvesExtension;->NAMED_CURVE_OID_TABLE:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    new-array v1, v5, [I

    fill-array-data v1, :array_1

    goto/16 :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x17
        0x1
        0x3
        0x13
        0x15
        0x6
        0x7
        0x9
        0xa
        0x18
        0xb
        0xc
        0x19
        0xd
        0xe
        0xf
        0x10
        0x11
        0x2
        0x12
        0x4
        0x5
        0x14
        0x8
        0x16
    .end array-data

    :array_1
    .array-data 4
        0x17
        0x1
        0x3
        0x13
        0x15
        0x6
        0x7
        0x9
        0xa
        0x18
        0xb
        0xc
        0x19
        0xd
        0xe
    .end array-data
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v2, Lsun/security/ssl/ExtensionType;->EXT_ELLIPTIC_CURVES:Lsun/security/ssl/ExtensionType;

    invoke-direct {p0, v2}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    move-result v1

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_0

    add-int/lit8 v2, v1, 0x2

    if-eq v2, p2, :cond_1

    :cond_0
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " extension"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    shr-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds:[I

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private constructor <init>([I)V
    .locals 1

    sget-object v0, Lsun/security/ssl/ExtensionType;->EXT_ELLIPTIC_CURVES:Lsun/security/ssl/ExtensionType;

    invoke-direct {p0, v0}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    iput-object p1, p0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds:[I

    return-void
.end method

.method static getCurveIndex(Ljava/security/spec/ECParameterSpec;)I
    .locals 4

    const/4 v2, -0x1

    invoke-static {p0}, Lsun/security/ssl/JsseJce;->getNamedCurveOid(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    sget-object v3, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIndices:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method static getCurveOid(I)Ljava/lang/String;
    .locals 1

    if-lez p0, :cond_0

    sget-object v0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->NAMED_CURVE_OID_TABLE:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->NAMED_CURVE_OID_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static isSupported(I)Z
    .locals 2

    const/4 v1, 0x0

    if-lez p0, :cond_0

    sget-object v0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->NAMED_CURVE_OID_TABLE:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    return v1

    :cond_1
    sget-boolean v0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->fips:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    sget-object v0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->DEFAULT:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    invoke-virtual {v0, p0}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->contains(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method contains(I)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds:[I

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget v0, v3, v1

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method curveIds()[I
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds:[I

    return-object v0
.end method

.method length()I
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds:[I

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    iget v2, v2, Lsun/security/ssl/ExtensionType;->id:I

    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    iget-object v2, p0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds:[I

    array-length v2, v2

    shl-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    iget-object v3, p0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds:[I

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    const/4 v6, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Extension "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", curve names: {"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    iget-object v7, p0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds:[I

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_5

    aget v0, v7, v5

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-static {v0}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->getCurveOid(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lsun/security/ssl/JsseJce;->getECParameterSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v6

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v9, ", "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const v9, 0xff01

    if-ne v0, v9, :cond_3

    const-string/jumbo v9, "arbitrary_explicit_prime_curves"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const v9, 0xff02

    if-ne v0, v9, :cond_4

    const-string/jumbo v9, "arbitrary_explicit_char2_curves"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string/jumbo v9, "unknown curve "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string/jumbo v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
