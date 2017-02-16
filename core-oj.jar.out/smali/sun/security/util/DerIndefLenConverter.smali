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

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v1, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    .line 57
    iput v1, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    .line 73
    return-void
.end method

.method private getLengthBytes(I)[B
    .locals 5
    .param p1, "curLen"    # I

    .prologue
    const/4 v4, 0x0

    .line 242
    const/16 v3, 0x80

    if-ge p1, v3, :cond_0

    .line 243
    const/4 v3, 0x1

    new-array v2, v3, [B

    .line 244
    .local v2, "lenBytes":[B
    const/4 v0, 0x1

    .local v0, "index":I
    int-to-byte v3, p1

    aput-byte v3, v2, v4

    .line 273
    :goto_0
    return-object v2

    .line 246
    .end local v0    # "index":I
    .end local v2    # "lenBytes":[B
    :cond_0
    const/16 v3, 0x100

    if-ge p1, v3, :cond_1

    .line 247
    const/4 v3, 0x2

    new-array v2, v3, [B

    .line 248
    .restart local v2    # "lenBytes":[B
    const/4 v0, 0x1

    .restart local v0    # "index":I
    const/16 v3, -0x7f

    aput-byte v3, v2, v4

    .line 249
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    int-to-byte v3, p1

    aput-byte v3, v2, v0

    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_0

    .line 251
    .end local v0    # "index":I
    .end local v2    # "lenBytes":[B
    :cond_1
    const/high16 v3, 0x10000

    if-ge p1, v3, :cond_2

    .line 252
    const/4 v3, 0x3

    new-array v2, v3, [B

    .line 253
    .restart local v2    # "lenBytes":[B
    const/4 v0, 0x1

    .restart local v0    # "index":I
    const/16 v3, -0x7e

    aput-byte v3, v2, v4

    .line 254
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 255
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    int-to-byte v3, p1

    aput-byte v3, v2, v1

    goto :goto_0

    .line 257
    .end local v0    # "index":I
    .end local v2    # "lenBytes":[B
    :cond_2
    const/high16 v3, 0x1000000

    if-ge p1, v3, :cond_3

    .line 258
    const/4 v3, 0x4

    new-array v2, v3, [B

    .line 259
    .restart local v2    # "lenBytes":[B
    const/4 v0, 0x1

    .restart local v0    # "index":I
    const/16 v3, -0x7d

    aput-byte v3, v2, v4

    .line 260
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 261
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 262
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    int-to-byte v3, p1

    aput-byte v3, v2, v0

    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_0

    .line 265
    .end local v0    # "index":I
    .end local v2    # "lenBytes":[B
    :cond_3
    const/4 v3, 0x5

    new-array v2, v3, [B

    .line 266
    .restart local v2    # "lenBytes":[B
    const/4 v0, 0x1

    .restart local v0    # "index":I
    const/16 v3, -0x7c

    aput-byte v3, v2, v4

    .line 267
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    shr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 268
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 269
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 270
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    int-to-byte v3, p1

    aput-byte v3, v2, v1

    goto :goto_0
.end method

.method private getNumOfLenBytes(I)I
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 281
    .local v0, "numOfLenBytes":I
    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    .line 282
    const/4 v0, 0x1

    .line 292
    :goto_0
    return v0

    .line 283
    :cond_0
    const/16 v1, 0x100

    if-ge p1, v1, :cond_1

    .line 284
    const/4 v0, 0x2

    goto :goto_0

    .line 285
    :cond_1
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_2

    .line 286
    const/4 v0, 0x3

    goto :goto_0

    .line 287
    :cond_2
    const/high16 v1, 0x1000000

    if-ge p1, v1, :cond_3

    .line 288
    const/4 v0, 0x4

    goto :goto_0

    .line 290
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private isEOC(I)Z
    .locals 2
    .param p1, "tag"    # I

    .prologue
    const/4 v0, 0x0

    .line 60
    and-int/lit8 v1, p1, 0x1f

    if-nez v1, :cond_0

    .line 61
    and-int/lit8 v1, p1, 0x20

    if-nez v1, :cond_0

    .line 62
    and-int/lit16 v1, p1, 0xc0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 60
    :cond_0
    return v0
.end method

.method static isIndefinite(I)Z
    .locals 2
    .param p0, "lengthByte"    # I

    .prologue
    const/4 v0, 0x0

    .line 85
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
    .param p0, "lengthByte"    # I

    .prologue
    .line 67
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

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "curLen":I
    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v3, v4, :cond_0

    .line 150
    return v0

    .line 151
    :cond_0
    iget-object v3, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v3, v3, v4

    and-int/lit16 v2, v3, 0xff

    .line 152
    .local v2, "lenByte":I
    invoke-static {v2}, Lsun/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    iget-object v3, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    .line 155
    return v0

    .line 157
    :cond_1
    invoke-static {v2}, Lsun/security/util/DerIndefLenConverter;->isLongForm(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 158
    and-int/lit8 v2, v2, 0x7f

    .line 159
    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    .line 160
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Too much data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    :cond_2
    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    sub-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x1

    if-ge v3, v4, :cond_3

    .line 163
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Too little data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 165
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 166
    shl-int/lit8 v3, v0, 0x8

    iget-object v4, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int v0, v3, v4

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_4
    if-gez v0, :cond_6

    .line 169
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Invalid length bytes"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 172
    .end local v1    # "i":I
    :cond_5
    and-int/lit8 v0, v2, 0x7f

    .line 174
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

    .prologue
    .line 93
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v6, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v5, v6, :cond_0

    .line 94
    return-void

    .line 95
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

    .line 96
    const/4 v2, 0x0

    .line 97
    .local v2, "numOfEncapsulatedLenBytes":I
    const/4 v0, 0x0

    .line 99
    .local v0, "elem":Ljava/lang/Object;
    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .end local v0    # "elem":Ljava/lang/Object;
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    .line 102
    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 103
    .restart local v0    # "elem":Ljava/lang/Object;
    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 109
    .end local v0    # "elem":Ljava/lang/Object;
    :cond_1
    if-gez v1, :cond_3

    .line 110
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "EOC does not have matching indefinite-length tag"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_2
    move-object v5, v0

    .line 106
    check-cast v5, [B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x3

    add-int/2addr v2, v5

    .line 99
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 113
    .end local v0    # "elem":Ljava/lang/Object;
    :cond_3
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v5, v6

    add-int v3, v5, v2

    .line 115
    .local v3, "sectionLen":I
    invoke-direct {p0, v3}, Lsun/security/util/DerIndefLenConverter;->getLengthBytes(I)[B

    move-result-object v4

    .line 116
    .local v4, "sectionLenBytes":[B
    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    .line 123
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    array-length v6, v4

    add-int/lit8 v6, v6, -0x3

    add-int/2addr v5, v6

    iput v5, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    .line 125
    .end local v1    # "index":I
    .end local v2    # "numOfEncapsulatedLenBytes":I
    .end local v3    # "sectionLen":I
    .end local v4    # "sectionLenBytes":[B
    :cond_4
    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    .line 92
    return-void
.end method

.method private parseValue(I)V
    .locals 1
    .param p1, "curLen"    # I

    .prologue
    .line 299
    iget v0, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    .line 298
    return-void
.end method

.method private writeLength(I)V
    .locals 3
    .param p1, "curLen"    # I

    .prologue
    .line 211
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 212
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 210
    :goto_0
    return-void

    .line 214
    :cond_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    .line 215
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    .line 216
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0

    .line 218
    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_2

    .line 219
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    .line 220
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 221
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0

    .line 223
    :cond_2
    const/high16 v0, 0x1000000

    if-ge p1, v0, :cond_3

    .line 224
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    .line 225
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 226
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 227
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0

    .line 230
    :cond_3
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    .line 231
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 232
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 233
    iget-object v0, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 234
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

    .prologue
    const/4 v7, 0x0

    .line 184
    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v4, v5, :cond_0

    .line 185
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x0

    .line 187
    .local v0, "curLen":I
    iget-object v4, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 188
    .local v2, "lenByte":I
    invoke-static {v2}, Lsun/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    iget-object v4, p0, Lsun/security/util/DerIndefLenConverter;->ndefsList:Ljava/util/ArrayList;

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lsun/security/util/DerIndefLenConverter;->index:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 190
    .local v3, "lenBytes":[B
    iget-object v4, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    .line 191
    array-length v6, v3

    .line 190
    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 192
    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    array-length v5, v3

    add-int/2addr v4, v5

    iput v4, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    .line 193
    return-void

    .line 195
    .end local v3    # "lenBytes":[B
    :cond_1
    invoke-static {v2}, Lsun/security/util/DerIndefLenConverter;->isLongForm(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 196
    and-int/lit8 v2, v2, 0x7f

    .line 197
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 198
    shl-int/lit8 v4, v0, 0x8

    iget-object v5, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v6, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    add-int v0, v4, v5

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_2
    if-gez v0, :cond_4

    .line 201
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Invalid length bytes"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 204
    .end local v1    # "i":I
    :cond_3
    and-int/lit8 v0, v2, 0x7f

    .line 206
    :cond_4
    invoke-direct {p0, v0}, Lsun/security/util/DerIndefLenConverter;->writeLength(I)V

    .line 207
    invoke-direct {p0, v0}, Lsun/security/util/DerIndefLenConverter;->writeValue(I)V

    .line 183
    return-void
.end method

.method private writeTag()V
    .locals 4

    .prologue
    .line 133
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ne v1, v2, :cond_0

    .line 134
    return-void

    .line 135
    :cond_0
    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v0, v1, v2

    .line 136
    .local v0, "tag":I
    invoke-direct {p0, v0}, Lsun/security/util/DerIndefLenConverter;->isEOC(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    aget-byte v1, v1, v2

    if-nez v1, :cond_1

    .line 137
    iget v1, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    .line 138
    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->writeTag()V

    .line 132
    :goto_0
    return-void

    .line 140
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
    .param p1, "curLen"    # I

    .prologue
    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 307
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

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    return-void
.end method


# virtual methods
.method convert([B)[B
    .locals 6
    .param p1, "indefData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 321
    iput-object p1, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    .line 322
    iput v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iput v4, p0, Lsun/security/util/DerIndefLenConverter;->index:I

    .line 323
    iget-object v2, p0, Lsun/security/util/DerIndefLenConverter;->data:[B

    array-length v2, v2

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "len":I
    const/4 v1, 0x0

    .line 328
    .local v1, "unused":I
    :cond_0
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ge v2, v3, :cond_1

    .line 329
    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->parseTag()V

    .line 330
    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->parseLength()I

    move-result v0

    .line 331
    invoke-direct {p0, v0}, Lsun/security/util/DerIndefLenConverter;->parseValue(I)V

    .line 332
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    if-nez v2, :cond_0

    .line 333
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    sub-int v1, v2, v3

    .line 334
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iput v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    .line 339
    :cond_1
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->unresolved:I

    if-eqz v2, :cond_2

    .line 340
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "not all indef len BER resolved"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 343
    :cond_2
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    .line 344
    iput v4, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iput v4, p0, Lsun/security/util/DerIndefLenConverter;->newDataPos:I

    iput v4, p0, Lsun/security/util/DerIndefLenConverter;->index:I

    .line 348
    :goto_0
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataPos:I

    iget v3, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    if-ge v2, v3, :cond_3

    .line 349
    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->writeTag()V

    .line 350
    invoke-direct {p0}, Lsun/security/util/DerIndefLenConverter;->writeLengthAndValue()V

    goto :goto_0

    .line 352
    :cond_3
    iget v2, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    .line 353
    iget-object v3, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    iget v4, p0, Lsun/security/util/DerIndefLenConverter;->dataSize:I

    iget v5, p0, Lsun/security/util/DerIndefLenConverter;->numOfTotalLenBytes:I

    add-int/2addr v4, v5

    .line 352
    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 355
    iget-object v2, p0, Lsun/security/util/DerIndefLenConverter;->newData:[B

    return-object v2
.end method
