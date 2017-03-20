.class public abstract Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;
.super Ljava/lang/Object;
.source "AbstractFilePersistenceStrategy.java"

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
    .param p1, "baseDirectory"    # Ljava/io/File;
    .param p2, "xstream"    # Lcom/thoughtworks/xstream/XStream;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->baseDirectory:Ljava/io/File;

    .line 50
    iput-object p2, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->xstream:Lcom/thoughtworks/xstream/XStream;

    .line 51
    iput-object p3, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->encoding:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$ValidFilenameFilter;

    invoke-direct {v0, p0}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$ValidFilenameFilter;-><init>(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->filter:Ljava/io/FilenameFilter;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;)Ljava/io/FilenameFilter;
    .locals 1
    .param p0, "x0"    # Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->filter:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->baseDirectory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$500(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->readFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->baseDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private readFile(Ljava/io/File;)Ljava/lang/Object;
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 163
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 164
    .local v1, "in":Ljava/io/FileInputStream;
    iget-object v3, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->encoding:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->encoding:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    .local v2, "reader":Ljava/io/Reader;
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->xstream:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v3, v2}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 170
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 174
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v2    # "reader":Ljava/io/Reader;
    :goto_1
    return-object v3

    .line 164
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :cond_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 172
    .end local v1    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    goto :goto_1

    .line 170
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 175
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v2    # "reader":Ljava/io/Reader;
    :catch_1
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private writeFile(Ljava/io/File;Ljava/lang/Object;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 143
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 144
    .local v1, "out":Ljava/io/FileOutputStream;
    iget-object v3, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->encoding:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->encoding:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .local v2, "writer":Ljava/io/Writer;
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->xstream:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v3, p2, v2}, Lcom/thoughtworks/xstream/XStream;->toXML(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 155
    return-void

    .line 144
    .end local v2    # "writer":Ljava/io/Writer;
    :cond_0
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 152
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 150
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 198
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    return v1
.end method

.method protected abstract extractKey(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 202
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

    .prologue
    .line 56
    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->xstream:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/XStream;->getConverterLookup()Lcom/thoughtworks/xstream/converters/ConverterLookup;

    move-result-object v0

    return-object v0
.end method

.method protected getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->xstream:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/XStream;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getName(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method protected isValid(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;

    invoke-direct {v0, p0}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;-><init>(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    .local v1, "oldValue":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "filename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->baseDirectory:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2, p2}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->writeFile(Ljava/io/File;Ljava/lang/Object;)V

    .line 184
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 208
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 209
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->readFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v1

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 213
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method public size()I
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->baseDirectory:Ljava/io/File;

    iget-object v1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->filter:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
