.class public final enum Lcom/google/zxing/qrcode/decoder/Mode;
.super Ljava/lang/Enum;
.source "Mode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/qrcode/decoder/Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum ECI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;


# instance fields
.field private final bits:I

.field private final characterCountBitsForVersions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v8, [I

    aput v5, v1, v5

    aput v5, v1, v6

    aput v5, v1, v7

    const-string/jumbo v2, "TERMINATOR"

    invoke-direct {v0, v2, v5, v1, v5}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v8, [I

    const/16 v2, 0xa

    aput v2, v1, v5

    const/16 v2, 0xc

    aput v2, v1, v6

    const/16 v2, 0xe

    aput v2, v1, v7

    const-string/jumbo v2, "NUMERIC"

    invoke-direct {v0, v2, v6, v1, v6}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v8, [I

    const/16 v2, 0x9

    aput v2, v1, v5

    const/16 v2, 0xb

    aput v2, v1, v6

    const/16 v2, 0xd

    aput v2, v1, v7

    const-string/jumbo v2, "ALPHANUMERIC"

    invoke-direct {v0, v2, v7, v1, v7}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v8, [I

    aput v5, v1, v5

    aput v5, v1, v6

    aput v5, v1, v7

    const-string/jumbo v2, "STRUCTURED_APPEND"

    invoke-direct {v0, v2, v8, v1, v8}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v8, [I

    aput v9, v1, v5

    const/16 v2, 0x10

    aput v2, v1, v6

    const/16 v2, 0x10

    aput v2, v1, v7

    const-string/jumbo v2, "BYTE"

    const/4 v3, 0x4

    const/4 v4, 0x4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v8, [I

    aput v5, v1, v5

    aput v5, v1, v6

    aput v5, v1, v7

    const-string/jumbo v2, "ECI"

    const/4 v3, 0x5

    const/4 v4, 0x7

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v8, [I

    aput v9, v1, v5

    const/16 v2, 0xa

    aput v2, v1, v6

    const/16 v2, 0xc

    aput v2, v1, v7

    const-string/jumbo v2, "KANJI"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1, v9}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v8, [I

    aput v5, v1, v5

    aput v5, v1, v6

    aput v5, v1, v7

    const-string/jumbo v2, "FNC1_FIRST_POSITION"

    const/4 v3, 0x7

    const/4 v4, 0x5

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v8, [I

    aput v5, v1, v5

    aput v5, v1, v6

    aput v5, v1, v7

    const-string/jumbo v2, "FNC1_SECOND_POSITION"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v9, v1, v3}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v8, [I

    aput v9, v1, v5

    const/16 v2, 0xa

    aput v2, v1, v6

    const/16 v2, 0xc

    aput v2, v1, v7

    const-string/jumbo v2, "HANZI"

    const/16 v3, 0x9

    const/16 v4, 0xd

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Mode;

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->$VALUES:[Lcom/google/zxing/qrcode/decoder/Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/zxing/qrcode/decoder/Mode;->characterCountBitsForVersions:[I

    iput p4, p0, Lcom/google/zxing/qrcode/decoder/Mode;->bits:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1

    const-class v0, Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1

    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->$VALUES:[Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v0
.end method


# virtual methods
.method public getBits()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Mode;->bits:I

    return v0
.end method

.method public getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I
    .locals 3

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/16 v2, 0x9

    if-le v0, v2, :cond_0

    const/16 v2, 0x1a

    if-le v0, v2, :cond_1

    const/4 v1, 0x2

    :goto_0
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/Mode;->characterCountBitsForVersions:[I

    aget v2, v2, v1

    return v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
