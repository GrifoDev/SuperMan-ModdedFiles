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

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ljava/util/BitSet;->-assertionsDisabled:Z

    new-array v0, v2, [Ljava/io/ObjectStreamField;

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "bits"

    const-class v4, [J

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/BitSet;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    iput-boolean v1, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Ljava/util/BitSet;->initWords(I)V

    iput-boolean v1, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    if-gez p1, :cond_0

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

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/BitSet;->initWords(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    return-void
.end method

.method private constructor <init>([J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    iput-boolean v0, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    iput-object p1, p0, Ljava/util/BitSet;->words:[J

    array-length v0, p1

    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    return-void
.end method

.method private checkInvariants()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

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

    :cond_7
    return-void
.end method

.method private static checkRange(II)V
    .locals 3

    if-gez p0, :cond_0

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

    :cond_0
    if-gez p1, :cond_1

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

    :cond_1
    if-le p0, p1, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fromIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > toIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v1, v1

    if-ge v1, p1, :cond_0

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Ljava/util/BitSet;->words:[J

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    :cond_0
    return-void
.end method

.method private expandTo(I)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v1, v0, :cond_0

    invoke-direct {p0, v0}, Ljava/util/BitSet;->ensureCapacity(I)V

    iput v0, p0, Ljava/util/BitSet;->wordsInUse:I

    :cond_0
    return-void
.end method

.method private initWords(I)V
    .locals 1

    add-int/lit8 v0, p1, -0x1

    invoke-static {v0}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/util/BitSet;->words:[J

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    const-string/jumbo v1, "bits"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, p0, Ljava/util/BitSet;->words:[J

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v1, v1

    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

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

    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private recalculateWordsInUse()V
    .locals 6

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private trimToSize()V
    .locals 2

    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Ljava/util/BitSet;->words:[J

    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;
    .locals 12

    const/16 v8, 0x8

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    :goto_0
    if-lez v3, :cond_0

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v3, 0x7

    div-int/lit8 v6, v6, 0x8

    new-array v5, v6, [J

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-lt v6, v8, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    aput-wide v6, v5, v0

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_2

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

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6, v5}, Ljava/util/BitSet;-><init>([J)V

    return-object v6
.end method

.method public static valueOf(Ljava/nio/LongBuffer;)Ljava/util/BitSet;
    .locals 6

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->slice()Ljava/nio/LongBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v0

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

    :cond_0
    new-array v1, v0, [J

    invoke-virtual {p0, v1}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>([J)V

    return-object v2
.end method

.method public static valueOf([B)Ljava/util/BitSet;
    .locals 1

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/BitSet;->valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf([J)Ljava/util/BitSet;
    .locals 6

    array-length v0, p0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/BitSet;

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>([J)V

    return-object v1
.end method

.method private static wordIndex(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x6

    return v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    iget-boolean v1, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Ljava/util/BitSet;->trimToSize()V

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    const-string/jumbo v1, "bits"

    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void
.end method


# virtual methods
.method synthetic -java_util_BitSet_lambda$1()Ljava/util/Spliterator$OfInt;
    .locals 4

    new-instance v0, Ljava/util/BitSet$1BitSetIterator;

    invoke-direct {v0, p0}, Ljava/util/BitSet$1BitSetIterator;-><init>(Ljava/util/BitSet;)V

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    int-to-long v2, v1

    const/16 v1, 0x15

    invoke-static {v0, v2, v3, v1}, Ljava/util/Spliterators;->spliterator(Ljava/util/PrimitiveIterator$OfInt;JI)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public and(Ljava/util/BitSet;)V
    .locals 6

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    :goto_0
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/BitSet;->wordsInUse:I

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    return-void
.end method

.method public andNot(Ljava/util/BitSet;)V
    .locals 6

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    not-long v4, v4

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    return-void
.end method

.method public cardinality()I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public clear()V
    .locals 4

    :goto_0
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lez v0, :cond_0

    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/BitSet;->wordsInUse:I

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clear(I)V
    .locals 6

    if-gez p1, :cond_0

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

    :cond_0
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    return-void
.end method

.method public clear(II)V
    .locals 12

    const-wide/16 v8, -0x1

    invoke-static {p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v6

    iget v7, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v6, v7, :cond_1

    return-void

    :cond_1
    add-int/lit8 v7, p2, -0x1

    invoke-static {v7}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    iget v7, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v7, :cond_2

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result p2

    iget v7, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v0, v7, -0x1

    :cond_2
    shl-long v2, v8, p1

    neg-int v7, p2

    ushr-long v4, v8, v7

    if-ne v6, v0, :cond_3

    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v6

    and-long v10, v2, v4

    not-long v10, v10

    and-long/2addr v8, v10

    aput-wide v8, v7, v6

    :goto_0
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    return-void

    :cond_3
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v6

    not-long v10, v2

    and-long/2addr v8, v10

    aput-wide v8, v7, v6

    add-int/lit8 v1, v6, 0x1

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    const-wide/16 v8, 0x0

    aput-wide v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

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

    iget-boolean v2, p0, Ljava/util/BitSet;->sizeIsSticky:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Ljava/util/BitSet;->trimToSize()V

    :cond_0
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, Ljava/util/BitSet;->words:[J

    invoke-direct {v1}, Ljava/util/BitSet;->checkInvariants()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    instance-of v2, p1, Ljava/util/BitSet;

    if-nez v2, :cond_0

    return v6

    :cond_0
    if-ne p0, p1, :cond_1

    return v7

    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/BitSet;

    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    invoke-direct {v1}, Ljava/util/BitSet;->checkInvariants()V

    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v3, v1, Ljava/util/BitSet;->wordsInUse:I

    if-eq v2, v3, :cond_2

    return v6

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v2, v0

    iget-object v4, v1, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v6

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v7
.end method

.method public flip(I)V
    .locals 6

    if-gez p1, :cond_0

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

    :cond_0
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/BitSet;->expandTo(I)V

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    return-void
.end method

.method public flip(II)V
    .locals 12

    const-wide/16 v10, -0x1

    invoke-static {p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v6

    add-int/lit8 v7, p2, -0x1

    invoke-static {v7}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/BitSet;->expandTo(I)V

    shl-long v2, v10, p1

    neg-int v7, p2

    ushr-long v4, v10, v7

    if-ne v6, v0, :cond_1

    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v6

    and-long v10, v2, v4

    xor-long/2addr v8, v10

    aput-wide v8, v7, v6

    :goto_0
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    return-void

    :cond_1
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v6

    xor-long/2addr v8, v2

    aput-wide v8, v7, v6

    add-int/lit8 v1, v6, 0x1

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v1

    xor-long/2addr v8, v10

    aput-wide v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v0

    xor-long/2addr v8, v4

    aput-wide v8, v7, v0

    goto :goto_0
.end method

.method public get(II)Ljava/util/BitSet;
    .locals 17

    invoke-static/range {p1 .. p2}, Ljava/util/BitSet;->checkRange(II)V

    invoke-direct/range {p0 .. p0}, Ljava/util/BitSet;->checkInvariants()V

    invoke-virtual/range {p0 .. p0}, Ljava/util/BitSet;->length()I

    move-result v3

    move/from16 v0, p1

    if-le v3, v0, :cond_0

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v10, Ljava/util/BitSet;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/util/BitSet;-><init>(I)V

    return-object v10

    :cond_1
    move/from16 v0, p2

    if-le v0, v3, :cond_2

    move/from16 p2, v3

    :cond_2
    new-instance v6, Ljava/util/BitSet;

    sub-int v10, p2, p1

    invoke-direct {v6, v10}, Ljava/util/BitSet;-><init>(I)V

    sub-int v10, p2, p1

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v10

    add-int/lit8 v8, v10, 0x1

    invoke-static/range {p1 .. p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v7

    and-int/lit8 v10, p1, 0x3f

    if-nez v10, :cond_3

    const/4 v9, 0x1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v10, v8, -0x1

    if-ge v2, v10, :cond_5

    iget-object v12, v6, Ljava/util/BitSet;->words:[J

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/util/BitSet;->words:[J

    aget-wide v10, v10, v7

    :goto_2
    aput-wide v10, v12, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/util/BitSet;->words:[J

    aget-wide v10, v10, v7

    ushr-long v10, v10, p1

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v14, v7, 0x1

    aget-wide v14, v13, v14

    move/from16 v0, p1

    neg-int v13, v0

    shl-long/2addr v14, v13

    or-long/2addr v10, v14

    goto :goto_2

    :cond_5
    move/from16 v0, p2

    neg-int v10, v0

    const-wide/16 v12, -0x1

    ushr-long v4, v12, v10

    iget-object v12, v6, Ljava/util/BitSet;->words:[J

    add-int/lit8 v13, v8, -0x1

    add-int/lit8 v10, p2, -0x1

    and-int/lit8 v10, v10, 0x3f

    and-int/lit8 v11, p1, 0x3f

    if-ge v10, v11, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/util/BitSet;->words:[J

    aget-wide v10, v10, v7

    ushr-long v10, v10, p1

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v15, v7, 0x1

    aget-wide v14, v14, v15

    and-long/2addr v14, v4

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v16, v0

    shl-long v14, v14, v16

    or-long/2addr v10, v14

    :goto_3
    aput-wide v10, v12, v13

    iput v8, v6, Ljava/util/BitSet;->wordsInUse:I

    invoke-direct {v6}, Ljava/util/BitSet;->recalculateWordsInUse()V

    invoke-direct {v6}, Ljava/util/BitSet;->checkInvariants()V

    return-object v6

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

    const/4 v1, 0x0

    if-gez p1, :cond_0

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

    :cond_0
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 8

    const-wide/16 v0, 0x4d2

    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v3, v2

    add-int/lit8 v3, v2, 0x1

    int-to-long v6, v3

    mul-long/2addr v4, v6

    xor-long/2addr v0, v4

    goto :goto_0

    :cond_0
    const/16 v3, 0x20

    shr-long v4, v0, v3

    xor-long/2addr v4, v0

    long-to-int v3, v4

    return v3
.end method

.method public intersects(Ljava/util/BitSet;)Z
    .locals 7

    const/4 v6, 0x0

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    iget-object v1, p1, Ljava/util/BitSet;->words:[J

    aget-wide v4, v1, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v6
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public length()I
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x40

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x40

    add-int/2addr v0, v1

    return v0
.end method

.method public nextClearBit(I)I
    .locals 8

    if-gez p1, :cond_0

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

    :cond_0
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v1, :cond_1

    return p1

    :cond_1
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v1, v0

    not-long v4, v4

    const-wide/16 v6, -0x1

    shl-long/2addr v6, p1

    and-long v2, v4, v6

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    mul-int/lit8 v1, v0, 0x40

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    add-int/2addr v1, v4

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ne v0, v1, :cond_3

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    mul-int/lit8 v1, v1, 0x40

    return v1

    :cond_3
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v1, v0

    not-long v2, v4

    goto :goto_0
.end method

.method public nextSetBit(I)I
    .locals 9

    const/4 v8, -0x1

    if-gez p1, :cond_0

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

    :cond_0
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v1, :cond_1

    return v8

    :cond_1
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v1, v0

    const-wide/16 v6, -0x1

    shl-long/2addr v6, p1

    and-long v2, v4, v6

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    mul-int/lit8 v1, v0, 0x40

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    add-int/2addr v1, v4

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    if-ne v0, v1, :cond_3

    return v8

    :cond_3
    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    goto :goto_0
.end method

.method public or(Ljava/util/BitSet;)V
    .locals 8

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v3, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v3, p1, Ljava/util/BitSet;->wordsInUse:I

    if-ge v2, v3, :cond_1

    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-direct {p0, v2}, Ljava/util/BitSet;->ensureCapacity(I)V

    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    iput v2, p0, Ljava/util/BitSet;->wordsInUse:I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v2, v0

    iget-object v3, p1, Ljava/util/BitSet;->words:[J

    aget-wide v6, v3, v0

    or-long/2addr v4, v6

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    if-ge v1, v2, :cond_3

    iget-object v2, p1, Ljava/util/BitSet;->words:[J

    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    sub-int/2addr v4, v1

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    :cond_3
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    return-void
.end method

.method public previousClearBit(I)I
    .locals 11

    const/4 v10, -0x1

    if-gez p1, :cond_1

    if-ne p1, v10, :cond_0

    return v10

    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fromIndex < -1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v4, :cond_2

    return p1

    :cond_2
    iget-object v4, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    not-long v4, v4

    add-int/lit8 v6, p1, 0x1

    neg-int v6, v6

    const-wide/16 v8, -0x1

    ushr-long v6, v8, v6

    and-long v2, v4, v6

    move v1, v0

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v4, v4, 0x40

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v5

    sub-int/2addr v4, v5

    return v4

    :cond_3
    add-int/lit8 v0, v1, -0x1

    if-nez v1, :cond_4

    return v10

    :cond_4
    iget-object v4, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    not-long v2, v4

    move v1, v0

    goto :goto_0
.end method

.method public previousSetBit(I)I
    .locals 11

    const/4 v10, -0x1

    if-gez p1, :cond_1

    if-ne p1, v10, :cond_0

    return v10

    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fromIndex < -1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    if-lt v0, v4, :cond_2

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    return v4

    :cond_2
    iget-object v4, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v4, v0

    add-int/lit8 v6, p1, 0x1

    neg-int v6, v6

    const-wide/16 v8, -0x1

    ushr-long v6, v8, v6

    and-long v2, v4, v6

    move v1, v0

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v4, v4, 0x40

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v5

    sub-int/2addr v4, v5

    return v4

    :cond_3
    add-int/lit8 v0, v1, -0x1

    if-nez v1, :cond_4

    return v10

    :cond_4
    iget-object v4, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v4, v0

    move v1, v0

    goto :goto_0
.end method

.method public set(I)V
    .locals 6

    if-gez p1, :cond_0

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

    :cond_0
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/BitSet;->expandTo(I)V

    iget-object v1, p0, Ljava/util/BitSet;->words:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    return-void
.end method

.method public set(II)V
    .locals 12

    const-wide/16 v10, -0x1

    invoke-static {p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v6

    add-int/lit8 v7, p2, -0x1

    invoke-static {v7}, Ljava/util/BitSet;->wordIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/BitSet;->expandTo(I)V

    shl-long v2, v10, p1

    neg-int v7, p2

    ushr-long v4, v10, v7

    if-ne v6, v0, :cond_1

    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v6

    and-long v10, v2, v4

    or-long/2addr v8, v10

    aput-wide v8, v7, v6

    :goto_0
    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    return-void

    :cond_1
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v6

    or-long/2addr v8, v2

    aput-wide v8, v7, v6

    add-int/lit8 v1, v6, 0x1

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aput-wide v10, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v7, v0

    or-long/2addr v8, v4

    aput-wide v8, v7, v0

    goto :goto_0
.end method

.method public set(IIZ)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->set(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->clear(II)V

    goto :goto_0
.end method

.method public set(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x40

    return v0
.end method

.method public stream()Ljava/util/stream/IntStream;
    .locals 3

    new-instance v0, Ljava/util/BitSet$-java_util_stream_IntStream_stream__LambdaImpl0;

    invoke-direct {v0, p0}, Ljava/util/BitSet$-java_util_stream_IntStream_stream__LambdaImpl0;-><init>(Ljava/util/BitSet;)V

    const/16 v1, 0x4055

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v5, 0x0

    const/16 v10, 0x8

    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    if-nez v4, :cond_0

    new-array v5, v5, [B

    return-object v5

    :cond_0
    add-int/lit8 v5, v4, -0x1

    mul-int/lit8 v3, v5, 0x8

    iget-object v5, p0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v8, v4, -0x1

    aget-wide v6, v5, v8

    :goto_0
    cmp-long v5, v6, v12

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    ushr-long/2addr v6, v10

    goto :goto_0

    :cond_1
    new-array v1, v3, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v5, v4, -0x1

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Ljava/util/BitSet;->words:[J

    aget-wide v8, v5, v2

    invoke-virtual {v0, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Ljava/util/BitSet;->words:[J

    add-int/lit8 v8, v4, -0x1

    aget-wide v6, v5, v8

    :goto_2
    cmp-long v5, v6, v12

    if-eqz v5, :cond_3

    const-wide/16 v8, 0xff

    and-long/2addr v8, v6

    long-to-int v5, v8

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-long/2addr v6, v10

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method public toLongArray()[J
    .locals 2

    iget-object v0, p0, Ljava/util/BitSet;->words:[J

    iget v1, p0, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    const/16 v5, 0x80

    if-le v4, v5, :cond_1

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v3, 0x6

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v1

    :cond_0
    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    goto :goto_1

    :cond_1
    iget v4, p0, Ljava/util/BitSet;->wordsInUse:I

    mul-int/lit8 v3, v4, 0x40

    goto :goto_0

    :cond_2
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public xor(Ljava/util/BitSet;)V
    .locals 8

    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v3, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Ljava/util/BitSet;->wordsInUse:I

    iget v3, p1, Ljava/util/BitSet;->wordsInUse:I

    if-ge v2, v3, :cond_0

    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    invoke-direct {p0, v2}, Ljava/util/BitSet;->ensureCapacity(I)V

    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    iput v2, p0, Ljava/util/BitSet;->wordsInUse:I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Ljava/util/BitSet;->words:[J

    aget-wide v4, v2, v0

    iget-object v3, p1, Ljava/util/BitSet;->words:[J

    aget-wide v6, v3, v0

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v2, p1, Ljava/util/BitSet;->wordsInUse:I

    if-ge v1, v2, :cond_2

    iget-object v2, p1, Ljava/util/BitSet;->words:[J

    iget-object v3, p0, Ljava/util/BitSet;->words:[J

    iget v4, p1, Ljava/util/BitSet;->wordsInUse:I

    sub-int/2addr v4, v1

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    :cond_2
    invoke-direct {p0}, Ljava/util/BitSet;->recalculateWordsInUse()V

    invoke-direct {p0}, Ljava/util/BitSet;->checkInvariants()V

    return-void
.end method
