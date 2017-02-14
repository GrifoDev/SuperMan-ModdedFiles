.class public Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;
.super Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;
.source "FilePersistenceStrategy.java"


# instance fields
.field private final illegalChars:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    new-instance v0, Lcom/thoughtworks/xstream/XStream;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/DomDriver;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>()V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;-><init>(Ljava/io/File;Lcom/thoughtworks/xstream/XStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/thoughtworks/xstream/XStream;)V
    .locals 2

    const-string v0, "utf-8"

    const-string v1, "<>?:/\\\"|*%"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;-><init>(Ljava/io/File;Lcom/thoughtworks/xstream/XStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/thoughtworks/xstream/XStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;-><init>(Ljava/io/File;Lcom/thoughtworks/xstream/XStream;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;->illegalChars:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-char v2, v0, v3

    const/16 v4, 0x20

    if-lt v2, v4, :cond_0

    iget-object v4, p0, Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;->illegalChars:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected extractKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "null@null"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    const/16 v5, 0x40

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    new-instance v5, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not a valid key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v5

    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;->getConverterLookup()Lcom/thoughtworks/xstream/converters/ConverterLookup;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    instance-of v5, v0, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    if-eqz v5, :cond_2

    move-object v3, v0

    check-cast v3, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No SingleValueConverter for type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " available"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected getName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const-string v3, "null@null.xml"

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;->getConverterLookup()Lcom/thoughtworks/xstream/converters/ConverterLookup;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    instance-of v3, v0, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    if-eqz v3, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1, p1}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No SingleValueConverter for type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected isValid(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->isValid(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x25

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    :goto_0
    if-ltz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v2, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v2, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
