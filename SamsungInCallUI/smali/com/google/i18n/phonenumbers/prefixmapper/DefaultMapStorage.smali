.class Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;
.super Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;


# instance fields
.field private descriptions:[Ljava/lang/String;

.field private phoneNumberPrefixes:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPrefix(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    aget v0, v0, p1

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    array-length v0, v0

    iget v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    if-ge v0, v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    :cond_1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    array-length v0, v0

    iget v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    if-ge v0, v2, :cond_3

    :cond_2
    iget v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    :cond_3
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->clear()V

    :goto_1
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public readFromSortedMap(Ljava/util/SortedMap;)V
    .locals 6
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

    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v0

    iput v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    iget v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    iget v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    add-int/lit8 v0, v1, 0x1

    aput v3, v4, v1

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    double-to-int v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2

    iget v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_1

    :cond_1
    return-void
.end method
