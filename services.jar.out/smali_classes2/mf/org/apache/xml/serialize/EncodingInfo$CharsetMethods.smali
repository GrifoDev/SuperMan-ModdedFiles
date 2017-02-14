.class Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;
.super Ljava/lang/Object;
.source "EncodingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xml/serialize/EncodingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetMethods"
.end annotation


# static fields
.field private static fgCharsetCanEncodeMethod:Ljava/lang/reflect/Method;

.field private static fgCharsetEncoderCanEncodeMethod:Ljava/lang/reflect/Method;

.field private static fgCharsetForNameMethod:Ljava/lang/reflect/Method;

.field private static fgCharsetNewEncoderMethod:Ljava/lang/reflect/Method;

.field private static fgNIOCharsetAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    sput-object v6, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetForNameMethod:Ljava/lang/reflect/Method;

    sput-object v6, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetCanEncodeMethod:Ljava/lang/reflect/Method;

    sput-object v6, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetNewEncoderMethod:Ljava/lang/reflect/Method;

    sput-object v6, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetEncoderCanEncodeMethod:Ljava/lang/reflect/Method;

    sput-boolean v7, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgNIOCharsetAvailable:Z

    :try_start_0
    const-string/jumbo v0, "java.nio.charset.Charset"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "java.nio.charset.CharsetEncoder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "forName"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetForNameMethod:Ljava/lang/reflect/Method;

    const-string/jumbo v2, "canEncode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetCanEncodeMethod:Ljava/lang/reflect/Method;

    const-string/jumbo v2, "newEncoder"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetNewEncoderMethod:Ljava/lang/reflect/Method;

    const-string/jumbo v0, "canEncode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetEncoderCanEncodeMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    sput-boolean v0, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgNIOCharsetAvailable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-object v6, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetForNameMethod:Ljava/lang/reflect/Method;

    sput-object v6, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetCanEncodeMethod:Ljava/lang/reflect/Method;

    sput-object v6, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetEncoderCanEncodeMethod:Ljava/lang/reflect/Method;

    sput-object v6, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetNewEncoderMethod:Ljava/lang/reflect/Method;

    sput-boolean v7, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgNIOCharsetAvailable:Z

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    sget-boolean v0, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgNIOCharsetAvailable:Z

    return v0
.end method

.method static synthetic access$1()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetForNameMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetCanEncodeMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetNewEncoderMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetEncoderCanEncodeMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method
