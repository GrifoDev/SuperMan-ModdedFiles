.class public Landroid/util/SparseBooleanArray;
.super Ljava/lang/Object;
.source "SparseBooleanArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[I

.field private mSize:I

.field private mValues:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-nez p1, :cond_0

    .line 63
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    .line 64
    sget-object v0, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    .line 69
    :goto_0
    iput v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    .line 61
    return-void

    .line 66
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    .line 67
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    goto :goto_0
.end method


# virtual methods
.method public append(IZ)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # Z

    .prologue
    .line 230
    iget v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_0

    .line 231
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 232
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    .line 236
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([ZIZ)[Z

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    .line 237
    iget v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    .line 229
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    .line 221
    return-void
.end method

.method public clone()Landroid/util/SparseBooleanArray;
    .locals 4

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 76
    .local v1, "clone":Landroid/util/SparseBooleanArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/util/SparseBooleanArray;

    move-object v1, v0

    .line 77
    .local v1, "clone":Landroid/util/SparseBooleanArray;
    iget-object v3, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iput-object v3, v1, Landroid/util/SparseBooleanArray;->mKeys:[I

    .line 78
    iget-object v3, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Z

    iput-object v3, v1, Landroid/util/SparseBooleanArray;->mValues:[Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "clone":Landroid/util/SparseBooleanArray;
    :goto_0
    return-object v1

    .line 79
    :catch_0
    move-exception v2

    .local v2, "cnse":Ljava/lang/CloneNotSupportedException;
    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .locals 6
    .param p1, "key"    # I

    .prologue
    .line 111
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 113
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 114
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 115
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    iget v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 116
    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    .line 110
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 251
    if-ne p0, p1, :cond_0

    .line 252
    return v5

    .line 255
    :cond_0
    instance-of v2, p1, Landroid/util/SparseBooleanArray;

    if-nez v2, :cond_1

    .line 256
    return v4

    :cond_1
    move-object v1, p1

    .line 259
    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 260
    .local v1, "other":Landroid/util/SparseBooleanArray;
    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    iget v3, v1, Landroid/util/SparseBooleanArray;->mSize:I

    if-eq v2, v3, :cond_2

    .line 261
    return v4

    .line 264
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    if-ge v0, v2, :cond_5

    .line 265
    iget-object v2, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    aget v2, v2, v0

    iget-object v3, v1, Landroid/util/SparseBooleanArray;->mKeys:[I

    aget v3, v3, v0

    if-eq v2, v3, :cond_3

    .line 266
    return v4

    .line 268
    :cond_3
    iget-object v2, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    aget-boolean v2, v2, v0

    iget-object v3, v1, Landroid/util/SparseBooleanArray;->mValues:[Z

    aget-boolean v3, v3, v0

    if-eq v2, v3, :cond_4

    .line 269
    return v4

    .line 264
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_5
    return v5
.end method

.method public get(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public get(IZ)Z
    .locals 3
    .param p1, "key"    # I
    .param p2, "valueIfKeyNotFound"    # Z

    .prologue
    .line 98
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 100
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 101
    return p2

    .line 103
    :cond_0
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    aget-boolean v1, v1, v0

    return v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 242
    iget v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    .line 243
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    if-ge v1, v2, :cond_1

    .line 244
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    aget v3, v3, v1

    add-int/2addr v3, v2

    iget-object v2, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    or-int v0, v3, v2

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 246
    :cond_1
    return v0
.end method

.method public indexOfKey(I)I
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 199
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Z)I
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 212
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    aget-boolean v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 213
    return v0

    .line 211
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 165
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(IZ)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # Z

    .prologue
    .line 133
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 135
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 136
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    aput-boolean p2, v1, v0

    .line 132
    :goto_0
    return-void

    .line 138
    :cond_0
    not-int v0, v0

    .line 140
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    .line 141
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    invoke-static {v1, v2, v0, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([ZIIZ)[Z

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    .line 142
    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    goto :goto_0
.end method

.method public removeAt(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 122
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v3, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 123
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    iget v3, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 124
    iget v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    .line 121
    return-void
.end method

.method public setKeyAt(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "key"    # I

    .prologue
    .line 190
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    aput p2, v0, p1

    .line 189
    return-void
.end method

.method public setValueAt(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    aput-boolean p2, v0, p1

    .line 184
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 283
    const-string/jumbo v4, "{}"

    return-object v4

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 287
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    if-ge v1, v4, :cond_2

    .line 289
    if-lez v1, :cond_1

    .line 290
    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 293
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    .line 296
    .local v3, "value":Z
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v2    # "key":I
    .end local v3    # "value":Z
    :cond_2
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public valueAt(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 180
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    aget-boolean v0, v0, p1

    return v0
.end method
