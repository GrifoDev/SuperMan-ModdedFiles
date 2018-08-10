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

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    iput v1, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    iput v1, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    iput p1, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    iput p2, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    invoke-direct {p0}, Landroid/filterfw/core/FrameFormat;->initDefaults()V

    return-void
.end method

.method public static baseTypeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "unknown"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "unspecified"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "bit"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "byte"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "int"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "int"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "float"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "double"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "pointer"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "object"

    return-object v0

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

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    const/16 v0, 0x8

    return v0

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

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_1

    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, p0, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, "[]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private initDefaults()V
    .locals 1

    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    invoke-static {v0}, Landroid/filterfw/core/FrameFormat;->bytesPerSampleOf(I)I

    move-result v0

    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    return-void
.end method

.method public static metaDataToString(Landroid/filterfw/core/KeyValueMap;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string/jumbo v3, ""

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "{ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/filterfw/core/KeyValueMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

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

    :cond_1
    const-string/jumbo v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static readTargetString(Ljava/lang/String;)I
    .locals 3

    const-string/jumbo v0, "CPU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "NATIVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    const-string/jumbo v0, "GPU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const-string/jumbo v0, "SIMPLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    const-string/jumbo v0, "VERTEXBUFFER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    return v0

    :cond_4
    const-string/jumbo v0, "UNSPECIFIED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    return v0

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

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "unknown"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "unspecified"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "simple"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "native"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "gpu"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "vbo"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "renderscript"

    return-object v0

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

    const/4 v1, 0x0

    new-instance v0, Landroid/filterfw/core/FrameFormat;

    invoke-direct {v0, v1, v1}, Landroid/filterfw/core/FrameFormat;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method calcSize([I)I
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    array-length v3, p1

    if-lez v3, :cond_1

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v1

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p1, v2

    mul-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Landroid/filterfw/core/FrameFormat;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/filterfw/core/FrameFormat;

    iget v2, v0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    iget v3, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    iget v3, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    iget v3, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    iget-object v3, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    iget-object v2, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v1, v2}, Landroid/filterfw/core/KeyValueMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public getBaseType()I
    .locals 1

    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    return v0
.end method

.method public getBytesPerSample()I
    .locals 1

    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    return v0
.end method

.method public getDepth()I
    .locals 2

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

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDimensionCount()I
    .locals 1

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

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    return-object v0
.end method

.method public getHeight()I
    .locals 2

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

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNumberOfDimensions()I
    .locals 1

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

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mObjectClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getSize()I
    .locals 2

    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameFormat;->calcSize([I)I

    move-result v0

    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    :cond_0
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    return v0
.end method

.method public getTarget()I
    .locals 1

    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    return v0
.end method

.method public getValuesPerSample()I
    .locals 2

    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    iget v1, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    invoke-static {v1}, Landroid/filterfw/core/FrameFormat;->bytesPerSampleOf(I)I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 1

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getLength()I

    move-result v0

    return v0
.end method

.method public hasMetaKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMetaKey(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 3

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

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

    iget-object v2, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but expected to be of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

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

    const/4 v0, 0x1

    const/4 v1, 0x0

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

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v4

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v5

    if-eq v4, v5, :cond_0

    return v6

    :cond_0
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v5

    if-eq v4, v5, :cond_1

    return v6

    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v4

    if-eq v4, v7, :cond_2

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v4

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v5

    if-eq v4, v5, :cond_2

    return v6

    :cond_2
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v4

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v5

    if-eq v4, v5, :cond_3

    return v6

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v4

    if-ge v0, v4, :cond_5

    invoke-virtual {p1, v0}, Landroid/filterfw/core/FrameFormat;->getDimension(I)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameFormat;->getDimension(I)I

    move-result v4

    if-eq v4, v1, :cond_4

    return v6

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    :cond_6
    return v6

    :cond_7
    iget-object v4, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v4, :cond_a

    iget-object v4, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v4}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v4, v2}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_9

    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v4, v2}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v5, v2}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8

    :cond_9
    return v6

    :cond_a
    return v7
.end method

.method isReplaceableBy(Landroid/filterfw/core/FrameFormat;)Z
    .locals 2

    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    iget v1, p1, Landroid/filterfw/core/FrameFormat;->mTarget:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    iget-object v1, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mayBeCompatibleWith(Landroid/filterfw/core/FrameFormat;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v4

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v5

    if-eq v4, v5, :cond_0

    return v6

    :cond_0
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v5

    if-eq v4, v5, :cond_1

    return v6

    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v4

    if-eq v4, v7, :cond_2

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v4

    if-eq v4, v7, :cond_2

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v4

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v5

    if-eq v4, v5, :cond_2

    return v6

    :cond_2
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v4

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v5

    if-eq v4, v5, :cond_3

    return v6

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v4

    if-ge v0, v4, :cond_5

    invoke-virtual {p1, v0}, Landroid/filterfw/core/FrameFormat;->getDimension(I)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameFormat;->getDimension(I)I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameFormat;->getDimension(I)I

    move-result v4

    if-eq v4, v1, :cond_4

    return v6

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_6

    return v6

    :cond_6
    iget-object v4, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v4, :cond_8

    iget-object v4, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v4}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v4, v2}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v4, v2}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v5, v2}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    return v6

    :cond_8
    return v7
.end method

.method public mutableCopy()Landroid/filterfw/core/MutableFrameFormat;
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    invoke-direct {v0}, Landroid/filterfw/core/MutableFrameFormat;-><init>()V

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/filterfw/core/MutableFrameFormat;->setBaseType(I)V

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/filterfw/core/MutableFrameFormat;->setTarget(I)V

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getDimensions()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions([I)V

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/filterfw/core/MutableFrameFormat;->setObjectClass(Ljava/lang/Class;)V

    iget-object v2, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-nez v2, :cond_0

    :goto_0
    iput-object v1, v0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v1}, Landroid/filterfw/core/KeyValueMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/KeyValueMap;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getValuesPerSample()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    iget v4, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    if-nez v4, :cond_1

    const-string/jumbo v2, ""

    :goto_1
    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mObjectClass:Ljava/lang/Class;

    if-nez v4, :cond_2

    const-string/jumbo v0, ""

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    invoke-static {v5}, Landroid/filterfw/core/FrameFormat;->baseTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    invoke-static {v5}, Landroid/filterfw/core/FrameFormat;->dimensionsToString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-static {v5}, Landroid/filterfw/core/FrameFormat;->metaDataToString(Landroid/filterfw/core/KeyValueMap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

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

    goto :goto_1

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

    goto :goto_2
.end method
