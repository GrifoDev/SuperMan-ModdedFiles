.class public abstract Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;,
        Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$ValidFilenameFilter;
    }
.end annotation


# instance fields
.field private final baseDirectory:Ljava/io/File;

.field private final encoding:Ljava/lang/String;

.field private final filter:Ljava/io/FilenameFilter;

.field private final transient xstream:Lcom/thoughtworks/xstream/XStream;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/thoughtworks/xstream/XStream;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->baseDirectory:Ljava/io/File;

    iput-object p2, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->xstream:Lcom/thoughtworks/xstream/XStream;

    iput-object p3, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->encoding:Ljava/lang/String;

    new-instance v0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$ValidFilenameFilter;

    invoke-direct {v0, p0}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$ValidFilenameFilter;-><init>(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->filter:Ljava/io/FilenameFilter;

    return-void
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;)Ljava/io/FilenameFilter;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->filter:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->baseDirectory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$500(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;Ljava/io/File;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->readFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->baseDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private readFile(Ljava/io/File;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->encoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->xstream:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private writeFile(Ljava/io/File;Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->encoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->xstream:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v1, p2, v0}, Lcom/thoughtworks/xstream/XStream;->toXML(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method protected abstract extractKey(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->readFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getConverterLookup()Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->xstream:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/XStream;->getConverterLookup()Lcom/thoughtworks/xstream/converters/ConverterLookup;

    move-result-object v0

    return-object v0
.end method

.method protected getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->xstream:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/XStream;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getName(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method protected isValid(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;

    invoke-direct {v0, p0}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;-><init>(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->baseDirectory:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2, p2}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->writeFile(Ljava/io/File;Ljava/lang/Object;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->readFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->baseDirectory:Ljava/io/File;

    iget-object v1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->filter:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
