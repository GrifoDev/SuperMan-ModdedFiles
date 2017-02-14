.class final Lcom/google/zxing/aztec/encoder/SimpleToken;
.super Lcom/google/zxing/aztec/encoder/Token;
.source "SimpleToken.java"


# instance fields
.field private final bitCount:S

.field private final value:S


# direct methods
.method constructor <init>(Lcom/google/zxing/aztec/encoder/Token;II)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/encoder/Token;-><init>(Lcom/google/zxing/aztec/encoder/Token;)V

    int-to-short v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Lcom/google/zxing/aztec/encoder/SimpleToken;->value:S

    int-to-short v0, p3

    int-to-short v0, v0

    iput-short v0, p0, Lcom/google/zxing/aztec/encoder/SimpleToken;->bitCount:S

    return-void
.end method


# virtual methods
.method appendTo(Lcom/google/zxing/common/BitArray;[B)V
    .locals 2

    iget-short v0, p0, Lcom/google/zxing/aztec/encoder/SimpleToken;->value:S

    iget-short v1, p0, Lcom/google/zxing/aztec/encoder/SimpleToken;->bitCount:S

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    iget-short v1, p0, Lcom/google/zxing/aztec/encoder/SimpleToken;->value:S

    iget-short v2, p0, Lcom/google/zxing/aztec/encoder/SimpleToken;->bitCount:S

    shl-int v2, v3, v2

    add-int/lit8 v2, v2, -0x1

    and-int v0, v1, v2

    iget-short v1, p0, Lcom/google/zxing/aztec/encoder/SimpleToken;->bitCount:S

    shl-int v1, v3, v1

    or-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/google/zxing/aztec/encoder/SimpleToken;->bitCount:S

    shl-int v2, v3, v2

    or-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
