.class public final enum Lcom/google/zxing/common/CharacterSetECI;
.super Ljava/lang/Enum;
.source "CharacterSetECI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/common/CharacterSetECI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ASCII:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Big5:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1250:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1251:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1252:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1256:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp437:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum GB18030:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

.field private static final NAME_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/zxing/common/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SJIS:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum UTF8:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

.field private static final VALUE_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/zxing/common/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final otherEncodingNames:[Ljava/lang/String;

.field private final values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "Cp437"

    const/4 v12, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x2

    aput v15, v13, v14

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->Cp437:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "ISO8859_1"

    const/4 v12, 0x1

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/4 v15, 0x1

    aput v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x3

    aput v15, v13, v14

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-1"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "ISO8859_2"

    const/4 v12, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-2"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "ISO8859_3"

    const/4 v12, 0x3

    const/4 v13, 0x5

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-3"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "ISO8859_4"

    const/4 v12, 0x4

    const/4 v13, 0x6

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-4"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "ISO8859_5"

    const/4 v12, 0x5

    const/4 v13, 0x7

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-5"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "ISO8859_6"

    const/4 v12, 0x6

    const/16 v13, 0x8

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-6"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "ISO8859_7"

    const/4 v12, 0x7

    const/16 v13, 0x9

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-7"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "ISO8859_8"

    const/16 v12, 0x8

    const/16 v13, 0xa

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-8"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "ISO8859_9"

    const/16 v12, 0x9

    const/16 v13, 0xb

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-9"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "ISO8859_10"

    const/16 v12, 0xa

    const/16 v13, 0xc

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-10"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "ISO8859_11"

    const/16 v12, 0xb

    const/16 v13, 0xd

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-11"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "ISO8859_13"

    const/16 v12, 0xc

    const/16 v13, 0xf

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-13"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "ISO8859_14"

    const/16 v12, 0xd

    const/16 v13, 0x10

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-14"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "ISO8859_15"

    const/16 v12, 0xe

    const/16 v13, 0x11

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-15"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "ISO8859_16"

    const/16 v12, 0xf

    const/16 v13, 0x12

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-16"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "SJIS"

    const/16 v12, 0x10

    const/16 v13, 0x14

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "Shift_JIS"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->SJIS:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "Cp1250"

    const/16 v12, 0x11

    const/16 v13, 0x15

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "windows-1250"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->Cp1250:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "Cp1251"

    const/16 v12, 0x12

    const/16 v13, 0x16

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "windows-1251"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->Cp1251:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "Cp1252"

    const/16 v12, 0x13

    const/16 v13, 0x17

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "windows-1252"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->Cp1252:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "Cp1256"

    const/16 v12, 0x14

    const/16 v13, 0x18

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "windows-1256"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->Cp1256:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "UnicodeBigUnmarked"

    const/16 v12, 0x15

    const/16 v13, 0x19

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "UTF-16BE"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "UnicodeBig"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "UTF8"

    const/16 v12, 0x16

    const/16 v13, 0x1a

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "UTF-8"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->UTF8:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "ASCII"

    const/16 v12, 0x17

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, 0x1b

    aput v15, v13, v14

    const/4 v14, 0x1

    const/16 v15, 0xaa

    aput v15, v13, v14

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "US-ASCII"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->ASCII:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "Big5"

    const/16 v12, 0x18

    const/16 v13, 0x1c

    invoke-direct {v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->Big5:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "GB18030"

    const/16 v12, 0x19

    const/16 v13, 0x1d

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "GB2312"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "EUC_CN"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "GBK"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->GB18030:Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    const-string/jumbo v11, "EUC_KR"

    const/16 v12, 0x1a

    const/16 v13, 0x1e

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "EUC-KR"

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

    const/16 v10, 0x1b

    new-array v10, v10, [Lcom/google/zxing/common/CharacterSetECI;

    const/4 v11, 0x0

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->Cp437:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/4 v11, 0x5

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/4 v11, 0x6

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/4 v11, 0x7

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/16 v11, 0x8

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/16 v11, 0x9

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/16 v11, 0xa

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/16 v11, 0xb

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/16 v11, 0xc

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/16 v11, 0xd

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/16 v11, 0xe

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/16 v11, 0xf

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/16 v11, 0x10

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->SJIS:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/16 v11, 0x11

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->Cp1250:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/16 v11, 0x12

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->Cp1251:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/16 v11, 0x13

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->Cp1252:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/16 v11, 0x14

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->Cp1256:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/16 v11, 0x15

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/16 v11, 0x16

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->UTF8:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/16 v11, 0x17

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->ASCII:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/16 v11, 0x18

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->Big5:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/16 v11, 0x19

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->GB18030:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    const/16 v11, 0x1a

    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v12, v10, v11

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-static {}, Lcom/google/zxing/common/CharacterSetECI;->values()[Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v1

    array-length v6, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v6, :cond_0

    return-void

    :cond_0
    aget-object v3, v1, v5

    iget-object v0, v3, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    array-length v7, v0

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v7, :cond_1

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v3, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    array-length v7, v2

    const/4 v4, 0x0

    :goto_2
    if-lt v4, v7, :cond_2

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_1
    aget v9, v0, v4

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    aget-object v8, v2, v4

    sget-object v10, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-interface {v10, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p3, v0, v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    iput-object v0, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method public static getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    const-class v0, Lcom/google/zxing/common/CharacterSetECI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
