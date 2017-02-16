.class public Ljava/util/BitSet;
.super Ljava/lang/Object;
.source "BitSet.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/BitSet$-java_util_stream_IntStream_stream__LambdaImpl0;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ADDRESS_BITS_PER_WORD:I = 0x6

.field private static final BITS_PER_WORD:I = 0x40

.field private static final BIT_INDEX_MASK:I = 0x3f

.field private static final WORD_MASK:J = -0x1L

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x6efd887e3934ab21L


# instance fields
.field private transient sizeIsSticky:Z

.field private words:[J

.field private transient wordsInUse:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ljava/util/BitSet;->-assertionsDisabled:Z

    .line 85
    new-array v0, v2, [Ljava/io/ObjectStreamField;

    .line 86
    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "bits"

    const-class v4, [J

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    .line 85
    sput-object v0, Ljava/util/BitSet;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 65
    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 103
    iput-boolean v1, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 143
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Ljava/util/BitSet;->initWords(I)V

    .line 144
    iput-boolean v1, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 142
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "nbits"    # I

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 103
    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 158
    if-gez p1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nbits < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/BitSet;->initWords(I)V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 156
    return-void
.end method

.method private constructor <init>([J)V
    .locals 1
    .param p1, "words"    # [J

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 103
    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 174
    iput-object p1, p0, Ljava/util/BitSet;->words:[J

    .line 175
    array-length v0, p1

    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 176
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 173
    return-void
.end method

.method private checkInvariants()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    sget-boolean v2, Ljava/util/BitSet;->-assertionsDisabled:Z

    if-nez v2, :cond_2

    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    iget v3, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v2, v1

    goto :goto_0

    .line 120
    :cond_2
    sget-boolean v2, Ljava/util/BitSet;->-assertionsDisabled:Z

    if-nez v2, :cond_4

    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ltz v2, :cond_3

    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    array-length v3, v3

    if-gt v2, v3, :cond_3

    move v2, v0

    :goto_1
    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    move v2, v1

    goto :goto_1

    .line 121
    :cond_4
    sget-boolean v2, Ljava/util/BitSet;->-assertionsDisabled:Z

    if-nez v2, :cond_7

    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    array-length v3, v3

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    iget v3, p0, Ljava/util/BitSet;->wordsInUse:I

    aget-wide v2, v2, v3

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    move v0, v1

    goto :goto_2

    .line 118
    :cond_7
    return-void
.end method

.method private static checkRange(II)V
    .locals 3
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I

    .prologue
    .line 355
    if-gez p0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fromIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    if-gez p1, :cond_1

    .line 358
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_1
    if-le p0, p1, :cond_2

    .line 360
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fromIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 361
    const-string/jumbo v2, " > toIndex: "

    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_2
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2
    .param p1, "wordsRequired"    # I

    .prologue
    .line 328
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v1, v1

    if-ge v1, p1, :cond_0

    .line 330
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 331
    .local v0, "request":I
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Ljava/util/BitSet;->words:[J

    .line 332
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 327
    .end local v0    # "request":I
    :cond_0
    return-void
.end method

.method private expandTo(I)V
    .locals 2
    .param p1, "wordIndex"    # I

    .prologue
    .line 344
    add-int/lit8 v0, p1, 0x1

    .line 345
    .local v0, "wordsRequired":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v1, v0, :cond_0

    .line 346
    invoke-direct {p0, v0}, Ljava/util/BitSet;->ensureCapacity(I)V

    .line 347
    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 343
    :cond_0
    return-void
.end method

.method private initWords(I)V
    .locals 1
    .param p1, "nbits"    # I

    .prologue
    .line 166
    add-int/lit8 v0, p1, -0x1

    invoke-static {v0}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/util/BitSet;->words:[J

    .line 165
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1137
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1138
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v1, "bits"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, p0, Ljava/util/BitSet;->words:[J

    .line 1143
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v1, v1

    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 1144
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 1145
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v4, v1, v3

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    .line 1146
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1135
    return-void

    :cond_0
    move v1, v2

    .line 1145
    goto :goto_0
.end method

.method private recalculateWordsInUse()V
    .locals 6

    .prologue
    .line 132
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 133
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 136
    :cond_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 129
    return-void

    .line 132
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private trimToSize()V
    .locals 2

    .prologue
    .line 1107
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 1108
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Ljava/util/BitSet;->words:[J

    .line 1109
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1106
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;
    .locals 12
    .param p0, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v8, 0x8

    .line 263
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 265
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-lez v3, :cond_0

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 267
    :cond_0
    add-int/lit8 v6, v3, 0x7

    div-int/lit8 v6, v6, 0x8

    new-array v5, v6, [J

    .line 268
    .local v5, "words":[J
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-lt v6, v8, :cond_1

    .line 271
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    aput-wide v6, v5, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 272
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .local v4, "remaining":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v4, :cond_2

    .line 273
    aget-wide v6, v5, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    mul-int/lit8 v10, v2, 0x8

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    aput-wide v6, v5, v0

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 274
    :cond_2
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6, v5}, Ljava/util/BitSet;-><init>([J)V

    return-object v6
.end method

.method public static valueOf(Ljava/nio/LongBuffer;)Ljava/util/BitSet;
    .locals 6
    .param p0, "lb"    # Ljava/nio/LongBuffer;

    .prologue
    .line 218
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->slice()Ljava/nio/LongBuffer;

    move-result-object p0

    .line 220
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v0

    .local v0, "n":I
    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 222
    :cond_0
    new-array v1, v0, [J

    .line 223
    .local v1, "words":[J
    invoke-virtual {p0, v1}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 224
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>([J)V

    return-object v2
.end method

.method public static valueOf([B)Ljava/util/BitSet;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 243
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/BitSet;->valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf([J)Ljava/util/BitSet;
    .locals 6
    .param p0, "longs"    # [J

    .prologue
    .line 196
    array-length v0, p0

    .local v0, "n":I
    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 198
    :cond_0
    new-instance v1, Ljava/util/BitSet;

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>([J)V

    return-object v1
.end method

.method private static wordIndex(I)I
    .locals 1
    .param p0, "bitIndex"    # I

    .prologue
    .line 112
    shr-int/lit8 v0, p0, 0x6

    return v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1120
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1122
    iget-boolean v1, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    if-nez v1, :cond_0

    .line 1123
    invoke-direct {p0}, Ljava/util/BitSet;->trimToSize()V

    .line 1125
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1126
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "bits"

    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1127
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1118
    return-void
.end method


# virtual methods
.method synthetic -java_util_BitSet_lambda$1()Ljava/util/Spliterator$OfInt;
    .locals 4

    .prologue
    .line 1231
    new-instance v0, Ljava/util/BitSet$1BitSetIterator;

    invoke-direct {v0, p0}, Ljava/util/BitSet$1BitSetIterator;-><init>(Ljava/util/BitSet;)V

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    int-to-long v2, v1

    .line 1232
    const/16 v1, 0x15

    .line 1230
    invoke-static {v0, v2, v3, v1}, Ljava/util/Spliterators;->spliterator(Ljava/util/PrimitiveIterator$OfInt;JI)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public and(Ljava/util/BitSet;)V
    .locals 6
    .param p1, "set"    # Ljava/util/BitSet;

    .prologue
    .line 904
    if-ne p0, p1, :cond_0

    .line 905
    return-void

    .line 907
    :cond_0
    :goto_0
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    if-le v1, v2, :cond_1

    .line 908
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/BitSet;->wordsInUse:I

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v2

    goto :goto_0

    .line 911
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v0, v1, :cond_2

    .line 912
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 911
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 914
    :cond_2
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 915
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 903
    return-void
.end method

.method public andNot(Ljava/util/BitSet;)V
    .locals 6
    .param p1, "set"    # Ljava/util/BitSet;

    .prologue
    .line 998
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 999
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    not-long v4, v4

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 998
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1001
    :cond_0
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 1002
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 996
    return-void
.end method

.method public cardinality()I
    .locals 4

    .prologue
    .line 888
    const/4 v1, 0x0

    .line 889
    .local v1, "sum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v0, v2, :cond_0

    .line 890
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 889
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 891
    :cond_0
    return v1
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 601
    :goto_0
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lez v0, :cond_0

    .line 602
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    goto :goto_0

    .line 600
    :cond_0
    return-void
.end method

.method public clear(I)V
    .locals 6
    .param p1, "bitIndex"    # I

    .prologue
    .line 533
    if-gez p1, :cond_0

    .line 534
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bitIndex < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 536
    :cond_0
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 537
    .local v0, "wordIndex":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v1, :cond_1

    .line 538
    return-void

    .line 540
    :cond_1
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 542
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 543
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 532
    return-void
.end method

.method public clear(II)V
    .locals 12
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    const-wide/16 v8, -0x1

    .line 558
    invoke-static {p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 560
    if-ne p1, p2, :cond_0

    .line 561
    return-void

    .line 563
    :cond_0
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v6

    .line 564
    .local v6, "startWordIndex":I
    iget v7, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v6, v7, :cond_1

    .line 565
    return-void

    .line 567
    :cond_1
    add-int/lit8 v7, p2, -0x1

    invoke-static {v7}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 568
    .local v0, "endWordIndex":I
    iget v7, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v7, :cond_2

    .line 569
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result p2

    .line 570
    iget v7, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v0, v7, -0x1

    .line 573
    :cond_2
    shl-long v2, v8, p1

    .line 574
    .local v2, "firstWordMask":J
    neg-int v7, p2

    ushr-long v4, v8, v7

    .line 575
    .local v4, "lastWordMask":J
    if-ne v6, v0, :cond_3

    .line 577
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v6

    and-long v10, v2, v4

    not-long v10, v10

    and-long/2addr v8, v10

    aput-wide v8, v7, v6

    .line 591
    :goto_0
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 592
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 557
    return-void

    .line 581
    :cond_3
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v6

    not-long v10, v2

    and-long/2addr v8, v10

    aput-wide v8, v7, v6

    .line 584
    add-int/lit8 v1, v6, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 585
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    const-wide/16 v8, 0x0

    aput-wide v8, v7, v1

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 588
    :cond_4
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v0

    not-long v10, v4

    and-long/2addr v8, v10

    aput-wide v8, v7, v0

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1088
    iget-boolean v2, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    if-nez v2, :cond_0

    .line 1089
    invoke-direct {p0}, Ljava/util/BitSet;->trimToSize()V

    .line 1092
    :cond_0
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 1093
    .local v1, "result":Ljava/util/BitSet;
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, Ljava/util/BitSet;->words:[J

    .line 1094
    invoke-direct {v1}, Ljava/util/BitSet;->checkInvariants()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    return-object v1

    .line 1096
    .end local v1    # "result":Ljava/util/BitSet;
    :catch_0
    move-exception v0

    .line 1097
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1057
    instance-of v2, p1, Ljava/util/BitSet;

    if-nez v2, :cond_0

    .line 1058
    return v6

    .line 1059
    :cond_0
    if-ne p0, p1, :cond_1

    .line 1060
    return v7

    :cond_1
    move-object v1, p1

    .line 1062
    check-cast v1, Ljava/util/BitSet;

    .line 1064
    .local v1, "set":Ljava/util/BitSet;
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1065
    invoke-direct {v1}, Ljava/util/BitSet;->checkInvariants()V

    .line 1067
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v3, v1, Ljava/util/BitSet;->wordsInUse:I

    if-eq v2, v3, :cond_2

    .line 1068
    return v6

    .line 1071
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v0, v2, :cond_4

    .line 1072
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v2, v0

    iget-object v4, v1, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 1073
    return v6

    .line 1071
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1075
    :cond_4
    return v7
.end method

.method public flip(I)V
    .locals 6
    .param p1, "bitIndex"    # I

    .prologue
    .line 373
    if-gez p1, :cond_0

    .line 374
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bitIndex < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 376
    :cond_0
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 377
    .local v0, "wordIndex":I
    invoke-direct {p0, v0}, Ljava/util/BitSet;->expandTo(I)V

    .line 379
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 381
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 382
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 372
    return-void
.end method

.method public flip(II)V
    .locals 12
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    const-wide/16 v10, -0x1

    .line 398
    invoke-static {p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 400
    if-ne p1, p2, :cond_0

    .line 401
    return-void

    .line 403
    :cond_0
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v6

    .line 404
    .local v6, "startWordIndex":I
    add-int/lit8 v7, p2, -0x1

    invoke-static {v7}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 405
    .local v0, "endWordIndex":I
    invoke-direct {p0, v0}, Ljava/util/BitSet;->expandTo(I)V

    .line 407
    shl-long v2, v10, p1

    .line 408
    .local v2, "firstWordMask":J
    neg-int v7, p2

    ushr-long v4, v10, v7

    .line 409
    .local v4, "lastWordMask":J
    if-ne v6, v0, :cond_1

    .line 411
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v6

    and-long v10, v2, v4

    xor-long/2addr v8, v10

    aput-wide v8, v7, v6

    .line 425
    :goto_0
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 426
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 397
    return-void

    .line 415
    :cond_1
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v6

    xor-long/2addr v8, v2

    aput-wide v8, v7, v6

    .line 418
    add-int/lit8 v1, v6, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 419
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v1

    xor-long/2addr v8, v10

    aput-wide v8, v7, v1

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 422
    :cond_2
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v0

    xor-long/2addr v8, v4

    aput-wide v8, v7, v0

    goto :goto_0
.end method

.method public get(II)Ljava/util/BitSet;
    .locals 17
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 639
    invoke-static/range {p1 .. p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 641
    invoke-direct/range {p0 .. p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 643
    invoke-virtual/range {p0 .. p0}, Ljava/util/BitSet;->length()I

    move-result v3

    .line 646
    .local v3, "len":I
    move/from16 v0, p1

    if-le v3, v0, :cond_0

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    .line 647
    :cond_0
    new-instance v10, Ljava/util/BitSet;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/util/BitSet;-><init>(I)V

    return-object v10

    .line 650
    :cond_1
    move/from16 v0, p2

    if-le v0, v3, :cond_2

    .line 651
    move/from16 p2, v3

    .line 653
    :cond_2
    new-instance v6, Ljava/util/BitSet;

    sub-int v10, p2, p1

    invoke-direct {v6, v10}, Ljava/util/BitSet;-><init>(I)V

    .line 654
    .local v6, "result":Ljava/util/BitSet;
    sub-int v10, p2, p1

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v10

    add-int/lit8 v8, v10, 0x1

    .line 655
    .local v8, "targetWords":I
    invoke-static/range {p1 .. p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v7

    .line 656
    .local v7, "sourceIndex":I
    and-int/lit8 v10, p1, 0x3f

    if-nez v10, :cond_3

    const/4 v9, 0x1

    .line 659
    .local v9, "wordAligned":Z
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    add-int/lit8 v10, v8, -0x1

    if-ge v2, v10, :cond_5

    .line 660
    iget-object v12, v6, Ljava/util/BitSet;->words:[J

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/util/BitSet;->words:[J

    aget-wide v10, v10, v7

    :goto_2
    aput-wide v10, v12, v2

    .line 659
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 656
    .end local v2    # "i":I
    .end local v9    # "wordAligned":Z
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "wordAligned":Z
    goto :goto_0

    .line 661
    .restart local v2    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/util/BitSet;->words:[J

    aget-wide v10, v10, v7

    ushr-long v10, v10, p1

    .line 662
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v14, v7, 0x1

    aget-wide v14, v13, v14

    move/from16 v0, p1

    neg-int v13, v0

    shl-long/2addr v14, v13

    .line 661
    or-long/2addr v10, v14

    goto :goto_2

    .line 665
    :cond_5
    move/from16 v0, p2

    neg-int v10, v0

    const-wide/16 v12, -0x1

    ushr-long v4, v12, v10

    .line 666
    .local v4, "lastWordMask":J
    iget-object v12, v6, Ljava/util/BitSet;->words:[J

    add-int/lit8 v13, v8, -0x1

    .line 667
    add-int/lit8 v10, p2, -0x1

    and-int/lit8 v10, v10, 0x3f

    and-int/lit8 v11, p1, 0x3f

    if-ge v10, v11, :cond_6

    .line 669
    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/util/BitSet;->words:[J

    aget-wide v10, v10, v7

    ushr-long v10, v10, p1

    .line 670
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v15, v7, 0x1

    aget-wide v14, v14, v15

    and-long/2addr v14, v4

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v16, v0

    shl-long v14, v14, v16

    .line 669
    or-long/2addr v10, v14

    .line 666
    :goto_3
    aput-wide v10, v12, v13

    .line 675
    iput v8, v6, Ljava/util/BitSet;->wordsInUse:I

    .line 676
    invoke-direct {v6}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 677
    invoke-direct {v6}, Ljava/util/BitSet;->checkInvariants()V

    .line 679
    return-object v6

    .line 672
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/util/BitSet;->words:[J

    aget-wide v10, v10, v7

    and-long/2addr v10, v4

    ushr-long v10, v10, p1

    goto :goto_3
.end method

.method public get(I)Z
    .locals 6
    .param p1, "bitIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 616
    if-gez p1, :cond_0

    .line 617
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bitIndex < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 619
    :cond_0
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 621
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 622
    .local v0, "wordIndex":I
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v0, v2, :cond_1

    .line 623
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 622
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 1024
    const-wide/16 v0, 0x4d2

    .line 1025
    .local v0, "h":J
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 1026
    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v3, v2

    add-int/lit8 v3, v2, 0x1

    int-to-long v6, v3

    mul-long/2addr v4, v6

    xor-long/2addr v0, v4

    goto :goto_0

    .line 1028
    :cond_0
    const/16 v3, 0x20

    shr-long v4, v0, v3

    xor-long/2addr v4, v0

    long-to-int v3, v4

    return v3
.end method

.method public intersects(Ljava/util/BitSet;)Z
    .locals 7
    .param p1, "set"    # Ljava/util/BitSet;

    .prologue
    const/4 v6, 0x0

    .line 875
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 876
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    iget-object v1, p1, Ljava/util/BitSet;->words:[J

    aget-wide v4, v1, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 877
    const/4 v1, 0x1

    return v1

    .line 875
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 878
    :cond_1
    return v6
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 862
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public length()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 847
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    if-nez v0, :cond_0

    .line 848
    return v1

    .line 850
    :cond_0
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x40

    .line 851
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x40

    .line 850
    add-int/2addr v0, v1

    return v0
.end method

.method public nextClearBit(I)I
    .locals 8
    .param p1, "fromIndex"    # I

    .prologue
    .line 734
    if-gez p1, :cond_0

    .line 735
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fromIndex < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 737
    :cond_0
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 739
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 740
    .local v0, "u":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v1, :cond_1

    .line 741
    return p1

    .line 743
    :cond_1
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v1, v0

    not-long v4, v4

    const-wide/16 v6, -0x1

    shl-long/2addr v6, p1

    and-long v2, v4, v6

    .line 746
    .local v2, "word":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 747
    mul-int/lit8 v1, v0, 0x40

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    add-int/2addr v1, v4

    return v1

    .line 748
    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ne v0, v1, :cond_3

    .line 749
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    mul-int/lit8 v1, v1, 0x40

    return v1

    .line 750
    :cond_3
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v1, v0

    not-long v2, v4

    goto :goto_0
.end method

.method public nextSetBit(I)I
    .locals 9
    .param p1, "fromIndex"    # I

    .prologue
    const/4 v8, -0x1

    .line 702
    if-gez p1, :cond_0

    .line 703
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fromIndex < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 705
    :cond_0
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 707
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 708
    .local v0, "u":I
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v1, :cond_1

    .line 709
    return v8

    .line 711
    :cond_1
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v1, v0

    const-wide/16 v6, -0x1

    shl-long/2addr v6, p1

    and-long v2, v4, v6

    .line 714
    .local v2, "word":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 715
    mul-int/lit8 v1, v0, 0x40

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    add-int/2addr v1, v4

    return v1

    .line 716
    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ne v0, v1, :cond_3

    .line 717
    return v8

    .line 718
    :cond_3
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    goto :goto_0
.end method

.method public or(Ljava/util/BitSet;)V
    .locals 8
    .param p1, "set"    # Ljava/util/BitSet;

    .prologue
    .line 928
    if-ne p0, p1, :cond_0

    .line 929
    return-void

    .line 931
    :cond_0
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v3, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 933
    .local v1, "wordsInCommon":I
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v3, p1, Ljava/util/BitSet;->wordsInUse:I

    if-ge v2, v3, :cond_1

    .line 934
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-direct {p0, v2}, Ljava/util/BitSet;->ensureCapacity(I)V

    .line 935
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    iput v2, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 939
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 940
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v2, v0

    iget-object v3, p1, Ljava/util/BitSet;->words:[J

    aget-wide v6, v3, v0

    or-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 939
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 943
    :cond_2
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    if-ge v1, v2, :cond_3

    .line 944
    iget-object v2, p1, Ljava/util/BitSet;->words:[J

    .line 945
    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    .line 946
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    sub-int/2addr v4, v1

    .line 944
    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 949
    :cond_3
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 927
    return-void
.end method

.method public previousClearBit(I)I
    .locals 11
    .param p1, "fromIndex"    # I

    .prologue
    const/4 v10, -0x1

    .line 814
    if-gez p1, :cond_1

    .line 815
    if-ne p1, v10, :cond_0

    .line 816
    return v10

    .line 817
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    .line 818
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fromIndex < -1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 817
    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 821
    :cond_1
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 823
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 824
    .local v0, "u":I
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v4, :cond_2

    .line 825
    return p1

    .line 827
    :cond_2
    iget-object v4, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    not-long v4, v4

    add-int/lit8 v6, p1, 0x1

    neg-int v6, v6

    const-wide/16 v8, -0x1

    ushr-long v6, v8, v6

    and-long v2, v4, v6

    .local v2, "word":J
    move v1, v0

    .line 830
    .end local v0    # "u":I
    .local v1, "u":I
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    .line 831
    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v4, v4, 0x40

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v5

    sub-int/2addr v4, v5

    return v4

    .line 832
    :cond_3
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "u":I
    .restart local v0    # "u":I
    if-nez v1, :cond_4

    .line 833
    return v10

    .line 834
    :cond_4
    iget-object v4, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    not-long v2, v4

    move v1, v0

    .end local v0    # "u":I
    .restart local v1    # "u":I
    goto :goto_0
.end method

.method public previousSetBit(I)I
    .locals 11
    .param p1, "fromIndex"    # I

    .prologue
    const/4 v10, -0x1

    .line 776
    if-gez p1, :cond_1

    .line 777
    if-ne p1, v10, :cond_0

    .line 778
    return v10

    .line 779
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    .line 780
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fromIndex < -1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 779
    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 783
    :cond_1
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 785
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 786
    .local v0, "u":I
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v4, :cond_2

    .line 787
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    return v4

    .line 789
    :cond_2
    iget-object v4, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    add-int/lit8 v6, p1, 0x1

    neg-int v6, v6

    const-wide/16 v8, -0x1

    ushr-long v6, v8, v6

    and-long v2, v4, v6

    .local v2, "word":J
    move v1, v0

    .line 792
    .end local v0    # "u":I
    .local v1, "u":I
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    .line 793
    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v4, v4, 0x40

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v5

    sub-int/2addr v4, v5

    return v4

    .line 794
    :cond_3
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "u":I
    .restart local v0    # "u":I
    if-nez v1, :cond_4

    .line 795
    return v10

    .line 796
    :cond_4
    iget-object v4, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v4, v0

    move v1, v0

    .end local v0    # "u":I
    .restart local v1    # "u":I
    goto :goto_0
.end method

.method public set(I)V
    .locals 6
    .param p1, "bitIndex"    # I

    .prologue
    .line 437
    if-gez p1, :cond_0

    .line 438
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bitIndex < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 440
    :cond_0
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 441
    .local v0, "wordIndex":I
    invoke-direct {p0, v0}, Ljava/util/BitSet;->expandTo(I)V

    .line 443
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 445
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 436
    return-void
.end method

.method public set(II)V
    .locals 12
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    const-wide/16 v10, -0x1

    .line 475
    invoke-static {p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 477
    if-ne p1, p2, :cond_0

    .line 478
    return-void

    .line 481
    :cond_0
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v6

    .line 482
    .local v6, "startWordIndex":I
    add-int/lit8 v7, p2, -0x1

    invoke-static {v7}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    .line 483
    .local v0, "endWordIndex":I
    invoke-direct {p0, v0}, Ljava/util/BitSet;->expandTo(I)V

    .line 485
    shl-long v2, v10, p1

    .line 486
    .local v2, "firstWordMask":J
    neg-int v7, p2

    ushr-long v4, v10, v7

    .line 487
    .local v4, "lastWordMask":J
    if-ne v6, v0, :cond_1

    .line 489
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v6

    and-long v10, v2, v4

    or-long/2addr v8, v10

    aput-wide v8, v7, v6

    .line 503
    :goto_0
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 474
    return-void

    .line 493
    :cond_1
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v6

    or-long/2addr v8, v2

    aput-wide v8, v7, v6

    .line 496
    add-int/lit8 v1, v6, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 497
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aput-wide v10, v7, v1

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 500
    :cond_2
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v0

    or-long/2addr v8, v4

    aput-wide v8, v7, v0

    goto :goto_0
.end method

.method public set(IIZ)V
    .locals 0
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # Z

    .prologue
    .line 519
    if-eqz p3, :cond_0

    .line 520
    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->set(II)V

    .line 518
    :goto_0
    return-void

    .line 522
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->clear(II)V

    goto :goto_0
.end method

.method public set(IZ)V
    .locals 0
    .param p1, "bitIndex"    # I
    .param p2, "value"    # Z

    .prologue
    .line 457
    if-eqz p2, :cond_0

    .line 458
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    .line 456
    :goto_0
    return-void

    .line 460
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x40

    return v0
.end method

.method public stream()Ljava/util/stream/IntStream;
    .locals 3

    .prologue
    .line 1230
    new-instance v0, Ljava/util/BitSet$-java_util_stream_IntStream_stream__LambdaImpl0;

    invoke-direct {v0, p0}, Ljava/util/BitSet$-java_util_stream_IntStream_stream__LambdaImpl0;-><init>(Ljava/util/BitSet;)V

    .line 1233
    const/16 v1, 0x4055

    .line 1235
    const/4 v2, 0x0

    .line 1229
    invoke-static {v0, v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v5, 0x0

    const/16 v10, 0x8

    .line 291
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 292
    .local v4, "n":I
    if-nez v4, :cond_0

    .line 293
    new-array v5, v5, [B

    return-object v5

    .line 294
    :cond_0
    add-int/lit8 v5, v4, -0x1

    mul-int/lit8 v3, v5, 0x8

    .line 295
    .local v3, "len":I
    iget-object v5, p0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v8, v4, -0x1

    aget-wide v6, v5, v8

    .local v6, "x":J
    :goto_0
    cmp-long v5, v6, v12

    if-eqz v5, :cond_1

    .line 296
    add-int/lit8 v3, v3, 0x1

    .line 295
    ushr-long/2addr v6, v10

    goto :goto_0

    .line 297
    :cond_1
    new-array v1, v3, [B

    .line 298
    .local v1, "bytes":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 299
    .local v0, "bb":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    add-int/lit8 v5, v4, -0x1

    if-ge v2, v5, :cond_2

    .line 300
    iget-object v5, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v5, v2

    invoke-virtual {v0, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 301
    :cond_2
    iget-object v5, p0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v8, v4, -0x1

    aget-wide v6, v5, v8

    :goto_2
    cmp-long v5, v6, v12

    if-eqz v5, :cond_3

    .line 302
    const-wide/16 v8, 0xff

    and-long/2addr v8, v6

    long-to-int v5, v8

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 301
    ushr-long/2addr v6, v10

    goto :goto_2

    .line 303
    :cond_3
    return-object v1
.end method

.method public toLongArray()[J
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1173
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 1175
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    const/16 v5, 0x80

    if-le v4, v5, :cond_1

    .line 1176
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    .line 1177
    .local v3, "numBits":I
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v3, 0x6

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1178
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1180
    invoke-virtual {p0, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    .line 1181
    .local v2, "i":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 1182
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1183
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    :goto_1
    if-ltz v2, :cond_2

    .line 1184
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v1

    .line 1185
    .local v1, "endOfRun":I
    :cond_0
    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1186
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_0

    .line 1183
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    goto :goto_1

    .line 1176
    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v1    # "endOfRun":I
    .end local v2    # "i":I
    .end local v3    # "numBits":I
    :cond_1
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    mul-int/lit8 v3, v4, 0x40

    .restart local v3    # "numBits":I
    goto :goto_0

    .line 1190
    .restart local v0    # "b":Ljava/lang/StringBuilder;
    .restart local v2    # "i":I
    :cond_2
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public xor(Ljava/util/BitSet;)V
    .locals 8
    .param p1, "set"    # Ljava/util/BitSet;

    .prologue
    .line 967
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v3, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 969
    .local v1, "wordsInCommon":I
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v3, p1, Ljava/util/BitSet;->wordsInUse:I

    if-ge v2, v3, :cond_0

    .line 970
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-direct {p0, v2}, Ljava/util/BitSet;->ensureCapacity(I)V

    .line 971
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    iput v2, p0, Ljava/util/BitSet;->wordsInUse:I

    .line 975
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 976
    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v2, v0

    iget-object v3, p1, Ljava/util/BitSet;->words:[J

    aget-wide v6, v3, v0

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 975
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 979
    :cond_1
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    if-ge v1, v2, :cond_2

    .line 980
    iget-object v2, p1, Ljava/util/BitSet;->words:[J

    .line 981
    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    .line 982
    iget v4, p1, Ljava/util/BitSet;->wordsInUse:I

    sub-int/2addr v4, v1

    .line 980
    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 984
    :cond_2
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    .line 985
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    .line 966
    return-void
.end method
