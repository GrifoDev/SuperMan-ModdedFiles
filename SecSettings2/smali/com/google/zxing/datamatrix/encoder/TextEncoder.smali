.class final Lcom/google/zxing/datamatrix/encoder/TextEncoder;
.super Lcom/google/zxing/datamatrix/encoder/C40Encoder;
.source "TextEncoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    return-void
.end method


# virtual methods
.method encodeChar(CLjava/lang/StringBuilder;)I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x2

    const/16 v1, 0x20

    if-eq p1, v1, :cond_8

    const/16 v1, 0x30

    if-ge p1, v1, :cond_9

    :cond_0
    const/16 v1, 0x61

    if-ge p1, v1, :cond_a

    :cond_1
    if-gez p1, :cond_b

    :cond_2
    const/16 v1, 0x21

    if-ge p1, v1, :cond_c

    :cond_3
    const/16 v1, 0x3a

    if-ge p1, v1, :cond_d

    :cond_4
    const/16 v1, 0x5b

    if-ge p1, v1, :cond_e

    :cond_5
    const/16 v1, 0x60

    if-eq p1, v1, :cond_f

    const/16 v1, 0x41

    if-ge p1, v1, :cond_10

    :cond_6
    const/16 v1, 0x7b

    if-ge p1, v1, :cond_11

    :cond_7
    const/16 v1, 0x80

    if-ge p1, v1, :cond_12

    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->illegalCharacter(C)V

    const/4 v1, -0x1

    return v1

    :cond_8
    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v3

    :cond_9
    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v3

    :cond_a
    const/16 v1, 0x7a

    if-gt p1, v1, :cond_1

    add-int/lit8 v1, p1, -0x61

    add-int/lit8 v1, v1, 0xe

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v3

    :cond_b
    const/16 v1, 0x1f

    if-gt p1, v1, :cond_2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_c
    const/16 v1, 0x2f

    if-gt p1, v1, :cond_3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, -0x21

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_d
    const/16 v1, 0x40

    if-gt p1, v1, :cond_4

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, -0x3a

    add-int/lit8 v1, v1, 0xf

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_e
    const/16 v1, 0x5f

    if-gt p1, v1, :cond_5

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, -0x5b

    add-int/lit8 v1, v1, 0x16

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_f
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, -0x60

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_10
    const/16 v1, 0x5a

    if-gt p1, v1, :cond_6

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, -0x41

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_11
    const/16 v1, 0x7f

    if-gt p1, v1, :cond_7

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, -0x7b

    add-int/lit8 v1, v1, 0x1b

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_12
    const-string/jumbo v1, "\u0001\u001e"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, -0x80

    int-to-char v1, v1

    invoke-virtual {p0, v1, p2}, Lcom/google/zxing/datamatrix/encoder/TextEncoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result v1

    add-int/lit8 v0, v1, 0x2

    return v0
.end method

.method public getEncodingMode()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
