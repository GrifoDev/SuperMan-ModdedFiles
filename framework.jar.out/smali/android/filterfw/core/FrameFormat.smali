.class public Landroid/filterfw/core/FrameFormat;
.super Ljava/lang/Object;
.source "FrameFormat.java"


# static fields
.field public static final BYTES_PER_SAMPLE_UNSPECIFIED:I = 0x1

.field protected static final SIZE_UNKNOWN:I = -0x1

.field public static final SIZE_UNSPECIFIED:I = 0x0

.field public static final TARGET_GPU:I = 0x3

.field public static final TARGET_NATIVE:I = 0x2

.field public static final TARGET_RS:I = 0x5

.field public static final TARGET_SIMPLE:I = 0x1

.field public static final TARGET_UNSPECIFIED:I = 0x0

.field public static final TARGET_VERTEXBUFFER:I = 0x4

.field public static final TYPE_BIT:I = 0x1

.field public static final TYPE_BYTE:I = 0x2

.field public static final TYPE_DOUBLE:I = 0x6

.field public static final TYPE_FLOAT:I = 0x5

.field public static final TYPE_INT16:I = 0x3

.field public static final TYPE_INT32:I = 0x4

.field public static final TYPE_OBJECT:I = 0x8

.field public static final TYPE_POINTER:I = 0x7

.field public static final TYPE_UNSPECIFIED:I


# instance fields
.field protected mBaseType:I

.field protected mBytesPerSample:I

.field protected mDimensions:[I

.field protected mMetaData:Landroid/filterfw/core/KeyValueMap;

.field protected mObjectClass:Ljava/lang/Class;

.field protected mSize:I

.field protected mTarget:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v1, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    .line 59
    iput v1, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    .line 64
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "baseType"    # I
    .param p2, "target"    # I

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v1, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    .line 59
    iput v1, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    .line 68
    iput p1, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    .line 69
    iput p2, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    .line 70
    invoke-direct {p0}, Landroid/filterfw/core/FrameFormat;->initDefaults()V

    .line 67
    return-void
.end method

.method public static baseTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "baseType"    # I

    .prologue
    .line 344
    packed-switch p0, :pswitch_data_0

    .line 354
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 345
    :pswitch_0
    const-string/jumbo v0, "unspecified"

    return-object v0

    .line 346
    :pswitch_1
    const-string/jumbo v0, "bit"

    return-object v0

    .line 347
    :pswitch_2
    const-string/jumbo v0, "byte"

    return-object v0

    .line 348
    :pswitch_3
    const-string/jumbo v0, "int"

    return-object v0

    .line 349
    :pswitch_4
    const-string/jumbo v0, "int"

    return-object v0

    .line 350
    :pswitch_5
    const-string/jumbo v0, "float"

    return-object v0

    .line 351
    :pswitch_6
    const-string/jumbo v0, "double"

    return-object v0

    .line 352
    :pswitch_7
    const-string/jumbo v0, "pointer"

    return-object v0

    .line 353
    :pswitch_8
    const-string/jumbo v0, "object"

    return-object v0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static bytesPerSampleOf(I)I
    .locals 1
    .param p0, "baseType"    # I

    .prologue
    const/4 v0, 0x1

    .line 311
    packed-switch p0, :pswitch_data_0

    .line 324
    return v0

    .line 314
    :pswitch_0
    return v0

    .line 316
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 320
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 322
    :pswitch_3
    const/16 v0, 0x8

    return v0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static dimensionsToString([I)Ljava/lang/String;
    .locals 5
    .param p0, "dimensions"    # [I

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 330
    .local v0, "buffer":Ljava/lang/StringBuffer;
    if-eqz p0, :cond_1

    .line 331
    array-length v2, p0

    .line 332
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 333
    aget v3, p0, v1

    if-nez v3, :cond_0

    .line 334
    const-string/jumbo v3, "[]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p0, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 340
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private initDefaults()V
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    invoke-static {v0}, Landroid/filterfw/core/FrameFormat;->bytesPerSampleOf(I)I

    move-result v0

    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    .line 418
    return-void
.end method

.method public static metaDataToString(Landroid/filterfw/core/KeyValueMap;)Ljava/lang/String;
    .locals 5
    .param p0, "metaData"    # Landroid/filterfw/core/KeyValueMap;

    .prologue
    .line 371
    if-nez p0, :cond_0

    .line 372
    const-string/jumbo v3, ""

    return-object v3

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 375
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "{ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 377
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 379
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const-string/jumbo v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static readTargetString(Ljava/lang/String;)I
    .locals 3
    .param p0, "targetString"    # Ljava/lang/String;

    .prologue
    .line 385
    const-string/jumbo v0, "CPU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "NATIVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 387
    :cond_1
    const-string/jumbo v0, "GPU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    const/4 v0, 0x3

    return v0

    .line 389
    :cond_2
    const-string/jumbo v0, "SIMPLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 390
    const/4 v0, 0x1

    return v0

    .line 391
    :cond_3
    const-string/jumbo v0, "VERTEXBUFFER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 392
    const/4 v0, 0x4

    return v0

    .line 393
    :cond_4
    const-string/jumbo v0, "UNSPECIFIED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 394
    const/4 v0, 0x0

    return v0

    .line 396
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown target type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static targetToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "target"    # I

    .prologue
    .line 359
    packed-switch p0, :pswitch_data_0

    .line 366
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 360
    :pswitch_0
    const-string/jumbo v0, "unspecified"

    return-object v0

    .line 361
    :pswitch_1
    const-string/jumbo v0, "simple"

    return-object v0

    .line 362
    :pswitch_2
    const-string/jumbo v0, "native"

    return-object v0

    .line 363
    :pswitch_3
    const-string/jumbo v0, "gpu"

    return-object v0

    .line 364
    :pswitch_4
    const-string/jumbo v0, "vbo"

    return-object v0

    .line 365
    :pswitch_5
    const-string/jumbo v0, "renderscript"

    return-object v0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static unspecified()Landroid/filterfw/core/FrameFormat;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    new-instance v0, Landroid/filterfw/core/FrameFormat;

    invoke-direct {v0, v1, v1}, Landroid/filterfw/core/FrameFormat;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method calcSize([I)I
    .locals 4
    .param p1, "dimensions"    # [I

    .prologue
    const/4 v2, 0x0

    .line 424
    if-eqz p1, :cond_1

    array-length v3, p1

    if-lez v3, :cond_1

    .line 425
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v1

    .line 426
    .local v1, "size":I
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p1, v2

    .line 427
    .local v0, "dim":I
    mul-int/2addr v1, v0

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 429
    .end local v0    # "dim":I
    :cond_0
    return v1

    .line 431
    .end local v1    # "size":I
    :cond_1
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 172
    if-ne p0, p1, :cond_0

    .line 173
    const/4 v1, 0x1

    return v1

    .line 176
    :cond_0
    instance-of v2, p1, Landroid/filterfw/core/FrameFormat;

    if-nez v2, :cond_1

    .line 177
    return v1

    :cond_1
    move-object v0, p1

    .line 180
    nop

    nop

    .line 181
    .local v0, "format":Landroid/filterfw/core/FrameFormat;
    iget v2, v0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    iget v3, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    if-ne v2, v3, :cond_2

    .line 182
    iget v2, v0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    iget v3, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    if-ne v2, v3, :cond_2

    .line 183
    iget v2, v0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    iget v3, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    if-ne v2, v3, :cond_2

    .line 184
    iget-object v2, v0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    iget-object v3, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    .line 181
    if-eqz v2, :cond_2

    .line 185
    iget-object v1, v0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    iget-object v2, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 181
    :cond_2
    return v1
.end method

.method public getBaseType()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    return v0
.end method

.method public getBytesPerSample()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    return v0
.end method

.method public getDepth()I
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDimension(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 102
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDimensionCount()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public getDimensions()[I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLength()I
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMetaValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNumberOfDimensions()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObjectClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mObjectClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameFormat;->calcSize([I)I

    move-result v0

    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    .line 152
    :cond_0
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    return v0
.end method

.method public getTarget()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    return v0
.end method

.method public getValuesPerSample()I
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    iget v1, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    invoke-static {v1}, Landroid/filterfw/core/FrameFormat;->bytesPerSampleOf(I)I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getLength()I

    move-result v0

    return v0
.end method

.method public hasMetaKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMetaKey(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedClass"    # Ljava/lang/Class;

    .prologue
    .line 114
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FrameFormat meta-key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' is of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 118
    iget-object v2, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 118
    const-string/jumbo v2, " but expected to be of type "

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    const-string/jumbo v2, "!"

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 123
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    xor-int/lit16 v0, v0, 0x1073

    iget v1, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isBinaryDataType()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    iget v2, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    if-lt v2, v0, :cond_0

    iget v2, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    const/4 v3, 0x6

    if-gt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isCompatibleWith(Landroid/filterfw/core/FrameFormat;)Z
    .locals 8
    .param p1, "specification"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 195
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v4

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 197
    return v6

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 203
    return v6

    .line 207
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v4

    if-eq v4, v7, :cond_2

    .line 208
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v4

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 209
    return v6

    .line 213
    :cond_2
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 214
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v4

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 215
    return v6

    .line 219
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 220
    invoke-virtual {p1, v0}, Landroid/filterfw/core/FrameFormat;->getDimension(I)I

    move-result v1

    .line 221
    .local v1, "specDim":I
    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameFormat;->getDimension(I)I

    move-result v4

    if-eq v4, v1, :cond_4

    .line 222
    return v6

    .line 219
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    .end local v1    # "specDim":I
    :cond_5
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 228
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 229
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 235
    :cond_6
    iget-object v4, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v4, :cond_a

    .line 236
    iget-object v4, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "specKey$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 237
    .local v2, "specKey":Ljava/lang/String;
    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v4, :cond_8

    .line 238
    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 239
    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 240
    :cond_8
    return v6

    .line 230
    .end local v2    # "specKey":Ljava/lang/String;
    .end local v3    # "specKey$iterator":Ljava/util/Iterator;
    :cond_9
    return v6

    .line 246
    :cond_a
    return v7
.end method

.method isReplaceableBy(Landroid/filterfw/core/FrameFormat;)Z
    .locals 2
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 435
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    iget v1, p1, Landroid/filterfw/core/FrameFormat;->mTarget:I

    if-ne v0, v1, :cond_0

    .line 436
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 437
    iget-object v0, p1, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    iget-object v1, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    .line 435
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mayBeCompatibleWith(Landroid/filterfw/core/FrameFormat;)Z
    .locals 8
    .param p1, "specification"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 251
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v4

    if-eqz v4, :cond_0

    .line 253
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v4

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 254
    return v6

    .line 258
    :cond_0
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    if-eqz v4, :cond_1

    .line 259
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 261
    return v6

    .line 265
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v4

    if-eq v4, v7, :cond_2

    .line 266
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v4

    if-eq v4, v7, :cond_2

    .line 267
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v4

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 268
    return v6

    .line 272
    :cond_2
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 273
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 274
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v4

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 275
    return v6

    .line 279
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 280
    invoke-virtual {p1, v0}, Landroid/filterfw/core/FrameFormat;->getDimension(I)I

    move-result v1

    .line 281
    .local v1, "specDim":I
    if-eqz v1, :cond_4

    .line 282
    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameFormat;->getDimension(I)I

    move-result v4

    if-eqz v4, :cond_4

    .line 283
    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameFormat;->getDimension(I)I

    move-result v4

    if-eq v4, v1, :cond_4

    .line 284
    return v6

    .line 279
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    .end local v1    # "specDim":I
    :cond_5
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 290
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 291
    return v6

    .line 296
    :cond_6
    iget-object v4, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v4, :cond_8

    .line 297
    iget-object v4, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "specKey$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 298
    .local v2, "specKey":Ljava/lang/String;
    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 299
    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 300
    return v6

    .line 306
    .end local v2    # "specKey":Ljava/lang/String;
    .end local v3    # "specKey$iterator":Ljava/util/Iterator;
    :cond_8
    return v7
.end method

.method public mutableCopy()Landroid/filterfw/core/MutableFrameFormat;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 160
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    invoke-direct {v0}, Landroid/filterfw/core/MutableFrameFormat;-><init>()V

    .line 161
    .local v0, "result":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/filterfw/core/MutableFrameFormat;->setBaseType(I)V

    .line 162
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/filterfw/core/MutableFrameFormat;->setTarget(I)V

    .line 163
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 164
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getDimensions()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions([I)V

    .line 165
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/filterfw/core/MutableFrameFormat;->setObjectClass(Ljava/lang/Class;)V

    .line 166
    iget-object v2, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-nez v2, :cond_0

    :goto_0
    iput-object v1, v0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    .line 167
    return-object v0

    .line 166
    :cond_0
    iget-object v1, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/KeyValueMap;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 403
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getValuesPerSample()I

    move-result v3

    .line 404
    .local v3, "valuesPerSample":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string/jumbo v1, ""

    .line 405
    .local v1, "sampleCountString":Ljava/lang/String;
    :goto_0
    iget v4, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    if-nez v4, :cond_1

    const-string/jumbo v2, ""

    .line 406
    .local v2, "targetString":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mObjectClass:Ljava/lang/Class;

    if-nez v4, :cond_2

    .line 407
    const-string/jumbo v0, ""

    .line 410
    .local v0, "classString":Ljava/lang/String;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 411
    iget v5, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    invoke-static {v5}, Landroid/filterfw/core/FrameFormat;->baseTypeToString(I)Ljava/lang/String;

    move-result-object v5

    .line 410
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 413
    iget-object v5, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    invoke-static {v5}, Landroid/filterfw/core/FrameFormat;->dimensionsToString([I)Ljava/lang/String;

    move-result-object v5

    .line 410
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 415
    iget-object v5, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-static {v5}, Landroid/filterfw/core/FrameFormat;->metaDataToString(Landroid/filterfw/core/KeyValueMap;)Ljava/lang/String;

    move-result-object v5

    .line 410
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 404
    .end local v0    # "classString":Ljava/lang/String;
    .end local v1    # "sampleCountString":Ljava/lang/String;
    .end local v2    # "targetString":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "sampleCountString":Ljava/lang/String;
    goto :goto_0

    .line 405
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    invoke-static {v5}, Landroid/filterfw/core/FrameFormat;->targetToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "targetString":Ljava/lang/String;
    goto :goto_1

    .line 408
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " class("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/filterfw/core/FrameFormat;->mObjectClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "classString":Ljava/lang/String;
    goto :goto_2
.end method
