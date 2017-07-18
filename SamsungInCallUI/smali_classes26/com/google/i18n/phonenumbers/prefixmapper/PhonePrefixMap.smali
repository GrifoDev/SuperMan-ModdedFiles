.class public Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
.super Ljava/lang/Object;
.source "PhonePrefixMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

.field private final phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    return-void
.end method

.method private binarySearch(IIJ)I
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-gt p1, p2, :cond_2

    add-int v3, p1, p2

    ushr-int/lit8 v0, v3, 0x1

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v3, v0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getPrefix(I)I

    move-result v2

    int-to-long v4, v2

    cmp-long v3, v4, p3

    if-nez v3, :cond_0

    move v1, v0

    :goto_1
    return v1

    :cond_0
    int-to-long v4, v2

    cmp-long v3, v4, p3

    if-lez v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    move p2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method private createDefaultMapStorage()Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .locals 1

    new-instance v0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;-><init>()V

    return-object v0
.end method

.method private createFlyweightMapStorage()Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .locals 1

    new-instance v0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;-><init>()V

    return-object v0
.end method

.method private static getSizeOfPhonePrefixMapStorage(Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;Ljava/util/SortedMap;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->readFromSortedMap(Ljava/util/SortedMap;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->writeExternal(Ljava/io/ObjectOutput;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    return v2
.end method


# virtual methods
.method getPhonePrefixMapStorage()Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    return-object v0
.end method

.method getSmallerMapStorage(Ljava/util/SortedMap;)Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->createFlyweightMapStorage()Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->getSizeOfPhonePrefixMapStorage(Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;Ljava/util/SortedMap;)I

    move-result v4

    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->createDefaultMapStorage()Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->getSizeOfPhonePrefixMapStorage(Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;Ljava/util/SortedMap;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ge v4, v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v5, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->createFlyweightMapStorage()Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    move-result-object v2

    goto :goto_0
.end method

.method lookup(J)Ljava/lang/String;
    .locals 13

    const/4 v12, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v9}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getNumOfEntries()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    move-wide v4, p1

    add-int/lit8 v0, v3, -0x1

    iget-object v9, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v9}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getPossibleLengths()Ljava/util/TreeSet;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/SortedSet;->size()I

    move-result v9

    if-lez v9, :cond_0

    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v9, v10, :cond_2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_2
    invoke-direct {p0, v12, v0, v4, v5}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->binarySearch(IIJ)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v9, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v9, v0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getPrefix(I)I

    move-result v1

    int-to-long v10, v1

    cmp-long v9, v4, v10

    if-nez v9, :cond_3

    iget-object v8, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v8, v0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getDescription(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_3
    invoke-interface {v2, v7}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    goto :goto_1
.end method

.method public lookup(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->lookup(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;

    invoke-direct {v1}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    :goto_0
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->readExternal(Ljava/io/ObjectInput;)V

    return-void

    :cond_0
    new-instance v1, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;

    invoke-direct {v1}, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    goto :goto_0
.end method

.method public readPhonePrefixMap(Ljava/util/SortedMap;)V
    .locals 1
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

    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->getSmallerMapStorage(Ljava/util/SortedMap;)Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    instance-of v0, v0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->writeExternal(Ljava/io/ObjectOutput;)V

    return-void
.end method
