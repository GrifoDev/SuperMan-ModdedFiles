.class public final Lcom/google/zxing/oned/Code39Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code39Reader.java"


# static fields
.field private static final ALPHABET:[C

.field private static final ASTERISK_ENCODING:I

.field static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;

.field private final extendedMode:Z

.field private final usingCheckDigit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x19

    const/16 v6, 0x16

    const/16 v5, 0x13

    const/16 v4, 0xd

    const/4 v3, 0x7

    const-string/jumbo v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C

    const/16 v0, 0x2c

    new-array v0, v0, [I

    const/16 v1, 0x34

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x121

    const/4 v2, 0x1

    aput v1, v0, v2

    const/16 v1, 0x61

    const/4 v2, 0x2

    aput v1, v0, v2

    const/16 v1, 0x160

    const/4 v2, 0x3

    aput v1, v0, v2

    const/16 v1, 0x31

    const/4 v2, 0x4

    aput v1, v0, v2

    const/16 v1, 0x130

    const/4 v2, 0x5

    aput v1, v0, v2

    const/16 v1, 0x70

    const/4 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0x25

    aput v1, v0, v3

    const/16 v1, 0x124

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x64

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0x109

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0x49

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0x148

    const/16 v2, 0xc

    aput v1, v0, v2

    aput v7, v0, v4

    const/16 v1, 0x118

    const/16 v2, 0xe

    aput v1, v0, v2

    const/16 v1, 0x58

    const/16 v2, 0xf

    aput v1, v0, v2

    const/16 v1, 0x10

    aput v4, v0, v1

    const/16 v1, 0x10c

    const/16 v2, 0x11

    aput v1, v0, v2

    const/16 v1, 0x4c

    const/16 v2, 0x12

    aput v1, v0, v2

    const/16 v1, 0x1c

    aput v1, v0, v5

    const/16 v1, 0x103

    const/16 v2, 0x14

    aput v1, v0, v2

    const/16 v1, 0x43

    const/16 v2, 0x15

    aput v1, v0, v2

    const/16 v1, 0x142

    aput v1, v0, v6

    const/16 v1, 0x17

    aput v5, v0, v1

    const/16 v1, 0x112

    const/16 v2, 0x18

    aput v1, v0, v2

    const/16 v1, 0x52

    aput v1, v0, v7

    const/16 v1, 0x1a

    aput v3, v0, v1

    const/16 v1, 0x106

    const/16 v2, 0x1b

    aput v1, v0, v2

    const/16 v1, 0x46

    const/16 v2, 0x1c

    aput v1, v0, v2

    const/16 v1, 0x1d

    aput v6, v0, v1

    const/16 v1, 0x181

    const/16 v2, 0x1e

    aput v1, v0, v2

    const/16 v1, 0xc1

    const/16 v2, 0x1f

    aput v1, v0, v2

    const/16 v1, 0x1c0

    const/16 v2, 0x20

    aput v1, v0, v2

    const/16 v1, 0x91

    const/16 v2, 0x21

    aput v1, v0, v2

    const/16 v1, 0x190

    const/16 v2, 0x22

    aput v1, v0, v2

    const/16 v1, 0xd0

    const/16 v2, 0x23

    aput v1, v0, v2

    const/16 v1, 0x85

    const/16 v2, 0x24

    aput v1, v0, v2

    const/16 v1, 0x184

    const/16 v2, 0x25

    aput v1, v0, v2

    const/16 v1, 0xc4

    const/16 v2, 0x26

    aput v1, v0, v2

    const/16 v1, 0x94

    const/16 v2, 0x27

    aput v1, v0, v2

    const/16 v1, 0xa8

    const/16 v2, 0x28

    aput v1, v0, v2

    const/16 v1, 0xa2

    const/16 v2, 0x29

    aput v1, v0, v2

    const/16 v1, 0x8a

    const/16 v2, 0x2a

    aput v1, v0, v2

    const/16 v1, 0x2a

    const/16 v2, 0x2b

    aput v1, v0, v2

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    sget-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x27

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/Code39Reader;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/zxing/oned/Code39Reader;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    iput-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/16 v0, 0x9

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/Code39Reader;->counters:[I

    return-void
.end method
