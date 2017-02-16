.class public Lsun/misc/JarIndex;
.super Ljava/lang/Object;
.source "JarIndex.java"


# static fields
.field public static final INDEX_NAME:Ljava/lang/String; = "META-INF/INDEX.LIST"

.field private static final metaInfFilenames:Z


# instance fields
.field private indexMap:Ljava/util/HashMap;

.field private jarFiles:[Ljava/lang/String;

.field private jarMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "sun.misc.JarIndex.metaInfFilenames"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 74
    sput-boolean v0, Lsun/misc/JarIndex;->metaInfFilenames:Z

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/misc/JarIndex;->jarMap:Ljava/util/HashMap;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Lsun/misc/JarIndex;-><init>()V

    .line 92
    invoke-virtual {p0, p1}, Lsun/misc/JarIndex;->read(Ljava/io/InputStream;)V

    .line 90
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "files"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Lsun/misc/JarIndex;-><init>()V

    .line 102
    iput-object p1, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    .line 103
    invoke-direct {p0, p1}, Lsun/misc/JarIndex;->parseJars([Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method private addExplicit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "jarName"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v0, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lsun/misc/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 219
    iget-object v0, p0, Lsun/misc/JarIndex;->jarMap:Ljava/util/HashMap;

    invoke-direct {p0, p2, p1, v0}, Lsun/misc/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 214
    return-void
.end method

.method private addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/util/HashMap;

    .prologue
    .line 154
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 155
    .local v0, "list":Ljava/util/LinkedList;
    if-nez v0, :cond_1

    .line 156
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "list":Ljava/util/LinkedList;
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 157
    .restart local v0    # "list":Ljava/util/LinkedList;
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getJarIndex(Ljava/util/jar/JarFile;)Lsun/misc/JarIndex;
    .locals 1
    .param p0, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/misc/JarIndex;->getJarIndex(Ljava/util/jar/JarFile;Lsun/misc/MetaIndex;)Lsun/misc/JarIndex;

    move-result-object v0

    return-object v0
.end method

.method public static getJarIndex(Ljava/util/jar/JarFile;Lsun/misc/MetaIndex;)Lsun/misc/JarIndex;
    .locals 4
    .param p0, "jar"    # Ljava/util/jar/JarFile;
    .param p1, "metaIndex"    # Lsun/misc/MetaIndex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 126
    const/4 v1, 0x0

    .line 130
    .local v1, "index":Lsun/misc/JarIndex;
    if-eqz p1, :cond_0

    .line 131
    const-string/jumbo v2, "META-INF/INDEX.LIST"

    invoke-virtual {p1, v2}, Lsun/misc/MetaIndex;->mayContain(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    :cond_0
    const-string/jumbo v2, "META-INF/INDEX.LIST"

    invoke-virtual {p0, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 136
    .local v0, "e":Ljava/util/jar/JarEntry;
    if-eqz v0, :cond_1

    .line 137
    new-instance v1, Lsun/misc/JarIndex;

    .end local v1    # "index":Lsun/misc/JarIndex;
    invoke-virtual {p0, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/misc/JarIndex;-><init>(Ljava/io/InputStream;)V

    .line 139
    :cond_1
    return-object v1

    .line 132
    .end local v0    # "e":Ljava/util/jar/JarEntry;
    .restart local v1    # "index":Lsun/misc/JarIndex;
    :cond_2
    return-object v3
.end method

.method private parseJars([Ljava/lang/String;)V
    .locals 8
    .param p1, "files"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    .line 233
    .local v0, "currentJar":Ljava/lang/String;
    const/4 v4, 0x0

    .end local v0    # "currentJar":Ljava/lang/String;
    .local v4, "i":I
    :goto_0
    array-length v6, p1

    if-ge v4, v6, :cond_5

    .line 234
    aget-object v0, p1, v4

    .line 235
    .local v0, "currentJar":Ljava/lang/String;
    new-instance v5, Ljava/util/zip/ZipFile;

    .line 236
    sget-char v6, Ljava/io/File;->separatorChar:C

    const/16 v7, 0x2f

    .line 235
    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 238
    .local v5, "zrf":Ljava/util/zip/ZipFile;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 239
    .local v1, "entries":Ljava/util/Enumeration;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 240
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 241
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "fileName":Ljava/lang/String;
    const-string/jumbo v6, "META-INF/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 246
    const-string/jumbo v6, "META-INF/INDEX.LIST"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 245
    if-nez v6, :cond_1

    .line 247
    const-string/jumbo v6, "META-INF/MANIFEST.MF"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 245
    if-nez v6, :cond_1

    .line 250
    sget-boolean v6, Lsun/misc/JarIndex;->metaInfFilenames:Z

    if-nez v6, :cond_2

    .line 251
    invoke-virtual {p0, v3, v0}, Lsun/misc/JarIndex;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 253
    :cond_2
    const-string/jumbo v6, "META-INF/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 254
    invoke-virtual {p0, v3, v0}, Lsun/misc/JarIndex;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 255
    :cond_3
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    .line 260
    invoke-direct {p0, v3, v0}, Lsun/misc/JarIndex;->addExplicit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 265
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "fileName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 233
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "currentJar":Ljava/lang/String;
    .end local v1    # "entries":Ljava/util/Enumeration;
    .end local v5    # "zrf":Ljava/util/zip/ZipFile;
    :cond_5
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "jarName"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 198
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "packageName":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p2, v2}, Lsun/misc/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 207
    iget-object v2, p0, Lsun/misc/JarIndex;->jarMap:Ljava/util/HashMap;

    invoke-direct {p0, p2, v0, v2}, Lsun/misc/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 194
    return-void

    .line 200
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .restart local v0    # "packageName":Ljava/lang/String;
    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "jarFiles":Ljava/util/LinkedList;
    iget-object v2, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "jarFiles":Ljava/util/LinkedList;
    check-cast v0, Ljava/util/LinkedList;

    .local v0, "jarFiles":Ljava/util/LinkedList;
    if-nez v0, :cond_0

    .line 174
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 175
    iget-object v2, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "jarFiles":Ljava/util/LinkedList;
    check-cast v0, Ljava/util/LinkedList;

    .line 178
    .end local v1    # "pos":I
    .restart local v0    # "jarFiles":Ljava/util/LinkedList;
    :cond_0
    return-object v0
.end method

.method public getJarFiles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    return-object v0
.end method

.method public merge(Lsun/misc/JarIndex;Ljava/lang/String;)V
    .locals 7
    .param p1, "toIndex"    # Lsun/misc/JarIndex;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 345
    iget-object v6, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 346
    .local v2, "itr":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 347
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 348
    .local v0, "e":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 349
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 350
    .local v1, "from_list":Ljava/util/LinkedList;
    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 351
    .local v4, "listItr":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 352
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 353
    .local v3, "jarName":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 354
    invoke-virtual {p2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    :cond_1
    invoke-virtual {p1, v5, v3}, Lsun/misc/JarIndex;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    .end local v0    # "e":Ljava/util/Map$Entry;
    .end local v1    # "from_list":Ljava/util/LinkedList;
    .end local v3    # "jarName":Ljava/lang/String;
    .end local v4    # "listItr":Ljava/util/Iterator;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    new-instance v0, Ljava/io/BufferedReader;

    .line 307
    new-instance v5, Ljava/io/InputStreamReader;

    const-string/jumbo v6, "UTF8"

    invoke-direct {v5, p1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 306
    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 308
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 309
    .local v3, "line":Ljava/lang/String;
    const/4 v1, 0x0

    .line 312
    .local v1, "currentJar":Ljava/lang/String;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 315
    .end local v3    # "line":Ljava/lang/String;
    .local v2, "jars":Ljava/util/Vector;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string/jumbo v5, ".jar"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 317
    .end local v1    # "currentJar":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v3, :cond_4

    .line 318
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 317
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 321
    :cond_2
    const-string/jumbo v5, ".jar"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 322
    move-object v1, v3

    .line 323
    .local v1, "currentJar":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 325
    .end local v1    # "currentJar":Ljava/lang/String;
    :cond_3
    move-object v4, v3

    .line 326
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    invoke-direct {p0, v4, v1, v5}, Lsun/misc/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 327
    iget-object v5, p0, Lsun/misc/JarIndex;->jarMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v4, v5}, Lsun/misc/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    .line 331
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    .line 305
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Ljava/io/BufferedWriter;

    .line 277
    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string/jumbo v6, "UTF8"

    invoke-direct {v5, p1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 276
    invoke-direct {v0, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 278
    .local v0, "bw":Ljava/io/BufferedWriter;
    const-string/jumbo v5, "JarIndex-Version: 1.0\n\n"

    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 280
    iget-object v5, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 281
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 283
    iget-object v5, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    aget-object v2, v5, v1

    .line 284
    .local v2, "jar":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 285
    iget-object v5, p0, Lsun/misc/JarIndex;->jarMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 286
    .local v3, "jarlist":Ljava/util/LinkedList;
    if-eqz v3, :cond_0

    .line 287
    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 288
    .local v4, "listitr":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 289
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 292
    .end local v4    # "listitr":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v5, "\n"

    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    .end local v2    # "jar":Ljava/lang/String;
    .end local v3    # "jarlist":Ljava/util/LinkedList;
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 275
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
