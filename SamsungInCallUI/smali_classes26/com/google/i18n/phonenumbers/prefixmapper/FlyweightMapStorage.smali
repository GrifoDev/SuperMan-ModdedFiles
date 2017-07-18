.class final Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;
.super Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
.source "FlyweightMapStorage.java"


# static fields
.field private static final INT_NUM_BYTES:I = 0x4

.field private static final SHORT_NUM_BYTES:I = 0x2


# instance fields
.field private descIndexSizeInBytes:I

.field private descriptionIndexes:Ljava/nio/ByteBuffer;

.field private descriptionPool:[Ljava/lang/String;

.field private phoneNumberPrefixes:Ljava/nio/ByteBuffer;

.field private prefixSizeInBytes:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;-><init>()V

    return-void
.end method

.method private createDescriptionPool(Ljava/util/SortedSet;Ljava/util/SortedMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->getOptimalNumberOfBytesForValue(I)I

    move-result v5

    iput v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    iget v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    iget v6, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    mul-int/2addr v5, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    iget-object v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-static {v5, v6, v1}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readWordFromBuffer(Ljava/nio/ByteBuffer;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    invoke-static {v5, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    iget-object v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    invoke-static {v5, v6, v2, v3}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->storeWordInBuffer(Ljava/nio/ByteBuffer;III)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getOptimalNumberOfBytesForValue(I)I
    .locals 1

    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private readEntries(Ljava/io/ObjectInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    if-ge v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    iget v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    if-ge v1, v2, :cond_3

    :cond_2
    iget v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    iget v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    if-ge v0, v1, :cond_4

    iget v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1, v2, v0}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V

    iget v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1, v2, v0}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int v0, p3, p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-interface {p0}, Ljava/io/ObjectInput;->readShort()S

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private static readWordFromBuffer(Ljava/nio/ByteBuffer;II)I
    .locals 2

    mul-int v0, p2, p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_0
.end method

.method private static storeWordInBuffer(Ljava/nio/ByteBuffer;III)V
    .locals 2

    mul-int v0, p2, p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    int-to-short v1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private static writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int v0, p3, p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-interface {p0, v1}, Ljava/io/ObjectOutput;->writeShort(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    invoke-interface {p0, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    invoke-static {v1, v2, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readWordFromBuffer(Ljava/nio/ByteBuffer;II)I

    move-result v0

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getPrefix(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-static {v0, v1, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readWordFromBuffer(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    iput v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    iput v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    array-length v4, v4

    if-ge v4, v1, :cond_2

    :cond_1
    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    aput-object v0, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readEntries(Ljava/io/ObjectInput;)V

    return-void
.end method

.method public readFromSortedMap(Ljava/util/SortedMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v4

    iput v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    invoke-interface {p1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->getOptimalNumberOfBytesForValue(I)I

    move-result v4

    iput v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    iget v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    iget v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    mul-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-static {v4, v6, v2, v3}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->storeWordInBuffer(Ljava/nio/ByteBuffer;III)V

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->createDescriptionPool(Ljava/util/SortedSet;Ljava/util/SortedMap;)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v3

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    array-length v4, v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget-object v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    :goto_2
    iget v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    if-ge v1, v4, :cond_2

    iget v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    iget-object v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v4, v5, v1}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V

    iget v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    iget-object v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v4, v5, v1}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
