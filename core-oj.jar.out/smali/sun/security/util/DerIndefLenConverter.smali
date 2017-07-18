.class Lsun/security/util/DerIndefLenConverter;
.super Ljava/lang/Object;
.source "DerIndefLenConverter.java"


# static fields
.field private static final CLASS_MASK:I = 0xc0

.field private static final FORM_MASK:I = 0x20

.field private static final LEN_LONG:I = 0x80

.field private static final LEN_MASK:I = 0x7f

.field private static final SKIP_EOC_BYTES:I = 0x2

.field private static final TAG_MASK:I = 0x1f


# instance fields
.field private data:[B

.field private dataPos:I

.field private dataSize:I

.field private index:I

.field private ndefsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private newData:[B

.field private newDataPos:I

.field private numOfTotalLenBytes:I

.field private unresolved:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    iput v1, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    return-void
.end method

.method private getLengthBytes(I)[B
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x80

    if-ge p1, v3, :cond_0

    const/4 v3, 0x1

    new-array v2, v3, [B

    const/4 v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v2, v4

    :goto_0
    return-object v2

    :cond_0
    const/16 v3, 0x100

    if-ge p1, v3, :cond_1

    const/4 v3, 0x2

    new-array v2, v3, [B

    const/4 v0, 0x1

    const/16 v3, -0x7f

    aput-byte v3, v2, v4

    add-int/lit8 v1, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    move v0, v1

    goto :goto_0

    :cond_1
    const/high16 v3, 0x10000

    if-ge p1, v3, :cond_2

    const/4 v3, 0x3

    new-array v2, v3, [B

    const/4 v0, 0x1

    const/16 v3, -0x7e

    aput-byte v3, v2, v4

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v3, p1

    aput-byte v3, v2, v1

    goto :goto_0

    :cond_2
    const/high16 v3, 0x1000000

    if-ge p1, v3, :cond_3

    const/4 v3, 0x4

    new-array v2, v3, [B

    const/4 v0, 0x1

    const/16 v3, -0x7d

    aput-byte v3, v2, v4

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    new-array v2, v3, [B

    const/4 v0, 0x1

    const/16 v3, -0x7c

    aput-byte v3, v2, v4

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v3, p1

    aput-byte v3, v2, v1

    goto :goto_0
.end method

.method private getNumOfLenBytes(I)I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x100

    if-ge p1, v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/high16 v1, 0x1000000

    if-ge p1, v1, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private isEOC(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x1f

    if-nez v1, :cond_0

    and-int/lit8 v1, p1, 0x20

    if-nez v1, :cond_0

    and-int/lit16 v1, p1, 0xc0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static isIndefinite(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lsun/security/util/DerIndefLenConverter;->isLongForm(I)Z

    move-result v1

    if-eqz v1, :cond_0

    and-int/lit8 v1, p0, 0x7f

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static isLongForm(I)Z
    .locals 2

    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseLength()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v3, v4, :cond_0

    return v0

    :cond_0
    iget-object v3, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v3, v3, v4

    and-int/lit16 v2, v3, 0xff

    invoke-static {v2}, Lsun/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    return v0

    :cond_1
    invoke-static {v2}, Lsun/security/util/DerIndefLenConverter;->isLongForm(I)Z

    move-result v3

    if-eqz v3, :cond_5

    and-int/lit8 v2, v2, 0x7f

    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Too much data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    sub-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x1

    if-ge v3, v4, :cond_3

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Too little data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_4

    shl-int/lit8 v3, v0, 0x8

    iget-object v4, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int v0, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-gez v0, :cond_6

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Invalid length bytes"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    and-int/lit8 v0, v2, 0x7f

    :cond_6
    return v0
.end method

.method private parseTag()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v6, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v5, v6, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v5, v5, v6

    invoke-direct {p0, v5}, Lsun/security/util/DerIndefLenConverter;->isEOC(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    if-nez v5, :cond_4

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    :cond_1
    if-gez v1, :cond_3

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "EOC does not have matching indefinite-length tag"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    move-object v5, v0

    check-cast v5, [B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x3

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v5, v6

    add-int v3, v5, v2

    invoke-direct {p0, v3}, Lsun/security/util/DerIndefLenConverter;->getLengthBytes(I)[B

    move-result-object v4

    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    array-length v6, v4

    add-int/lit8 v6, v6, -0x3

    add-int/2addr v5, v6

    iput v5, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    :cond_4
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    return-void
.end method

.method private parseValue(I)V
    .locals 1

    iget v0, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    return-void
.end method

.method private writeLength(I)V
    .locals 3

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0

    :cond_2
    const/high16 v0, 0x1000000

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto/16 :goto_0
.end method

.method private writeLengthAndValue()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v4, v5, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v4, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    invoke-static {v2}, Lsun/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lsun/security/util/DerIndefLenConverter;->index:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    array-length v6, v3

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    array-length v5, v3

    add-int/2addr v4, v5

    iput v4, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    return-void

    :cond_1
    invoke-static {v2}, Lsun/security/util/DerIndefLenConverter;->isLongForm(I)Z

    move-result v4

    if-eqz v4, :cond_3

    and-int/lit8 v2, v2, 0x7f

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    shl-int/lit8 v4, v0, 0x8

    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    add-int v0, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-gez v0, :cond_4

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Invalid length bytes"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    and-int/lit8 v0, v2, 0x7f

    :cond_4
    invoke-direct {p0, v0}, Lsun/security/util/DerIndefLenConverter;->writeLength(I)V

    invoke-direct {p0, v0}, Lsun/security/util/DerIndefLenConverter;->writeValue(I)V

    return-void
.end method

.method private writeTag()V
    .locals 4

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v0, v1, v2

    invoke-direct {p0, v0}, Lsun/security/util/DerIndefLenConverter;->isEOC(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->writeTag()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    goto :goto_0
.end method

.method private writeValue(I)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    iget-object v3, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method convert([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iput-object p1, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iput v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iput v4, p0, Lsun/security/util/DerIndefLenConverter;->index:I

    iget-object v2, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    array-length v2, v2

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ge v2, v3, :cond_1

    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->parseTag()V

    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->parseLength()I

    move-result v0

    invoke-direct {p0, v0}, Lsun/security/util/DerIndefLenConverter;->parseValue(I)V

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    if-nez v2, :cond_0

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    sub-int v1, v2, v3

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    :cond_1
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "not all indef len BER resolved"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iput v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iput v4, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    iput v4, p0, Lsun/security/util/DerIndefLenConverter;->index:I

    :goto_0
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ge v2, v3, :cond_3

    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->writeTag()V

    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->writeLengthAndValue()V

    goto :goto_0

    :cond_3
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    iget-object v3, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    add-int/2addr v4, v5

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v2, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    return-object v2
.end method
