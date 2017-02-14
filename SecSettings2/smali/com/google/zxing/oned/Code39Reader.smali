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

    const/4 v1, 0x0

    const/16 v2, 0x34

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x121

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x61

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x160

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x31

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x130

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x70

    aput v2, v0, v1

    const/16 v1, 0x25

    aput v1, v0, v3

    const/16 v1, 0x8

    const/16 v2, 0x124

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x64

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x109

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x49

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x148

    aput v2, v0, v1

    aput v7, v0, v4

    const/16 v1, 0xe

    const/16 v2, 0x118

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x58

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v4, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x10c

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x4c

    aput v2, v0, v1

    const/16 v1, 0x1c

    aput v1, v0, v5

    const/16 v1, 0x14

    const/16 v2, 0x103

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x43

    aput v2, v0, v1

    const/16 v1, 0x142

    aput v1, v0, v6

    const/16 v1, 0x17

    aput v5, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x112

    aput v2, v0, v1

    const/16 v1, 0x52

    aput v1, v0, v7

    const/16 v1, 0x1a

    aput v3, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x106

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x46

    aput v2, v0, v1

    const/16 v1, 0x1d

    aput v6, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x181

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0xc1

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x1c0

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x91

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x190

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0xd0

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x85

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x184

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0xc4

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x94

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0xa8

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0xa2

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x8a

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x2a

    aput v2, v0, v1

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
