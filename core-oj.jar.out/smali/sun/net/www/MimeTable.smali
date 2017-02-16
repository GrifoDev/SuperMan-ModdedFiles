.class public Lsun/net/www/MimeTable;
.super Ljava/lang/Object;
.source "MimeTable.java"

# interfaces
.implements Ljava/net/FileNameMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/MimeTable$1;,
        Lsun/net/www/MimeTable$DefaultInstanceHolder;
    }
.end annotation


# static fields
.field private static final fileMagic:Ljava/lang/String; = "#sun.net.www MIME content-types table"

.field private static final filePreamble:Ljava/lang/String; = "sun.net.www MIME content-types table"

.field protected static mailcapLocations:[Ljava/lang/String;

.field private static tempFileTemplate:Ljava/lang/String;


# instance fields
.field private entries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lsun/net/www/MimeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private extensionMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lsun/net/www/MimeEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lsun/net/www/MimeTable;->tempFileTemplate:Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lsun/net/www/MimeTable$1;

    invoke-direct {v0}, Lsun/net/www/MimeTable$1;-><init>()V

    .line 51
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 40
    iput-object v0, p0, Lsun/net/www/MimeTable;->entries:Ljava/util/Hashtable;

    .line 45
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 44
    iput-object v0, p0, Lsun/net/www/MimeTable;->extensionMap:Ljava/util/Hashtable;

    .line 78
    invoke-virtual {p0}, Lsun/net/www/MimeTable;->load()V

    .line 77
    return-void
.end method

.method public static getDefaultTable()Lsun/net/www/MimeTable;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lsun/net/www/MimeTable$DefaultInstanceHolder;->defaultInstance:Lsun/net/www/MimeTable;

    return-object v0
.end method

.method public static loadTable()Ljava/net/FileNameMap;
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lsun/net/www/MimeTable;->getDefaultTable()Lsun/net/www/MimeTable;

    move-result-object v0

    .line 109
    .local v0, "mt":Lsun/net/www/MimeTable;
    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Lsun/net/www/MimeEntry;)V
    .locals 4
    .param p1, "m"    # Lsun/net/www/MimeEntry;

    .prologue
    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v2, p0, Lsun/net/www/MimeTable;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lsun/net/www/MimeEntry;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {p1}, Lsun/net/www/MimeEntry;->getExtensions()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 129
    .local v0, "exts":[Ljava/lang/String;
    if-nez v0, :cond_0

    monitor-exit p0

    .line 130
    return-void

    .line 133
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 134
    iget-object v2, p0, Lsun/net/www/MimeTable;->extensionMap:Ljava/util/Hashtable;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    .line 125
    return-void

    .end local v0    # "exts":[Ljava/lang/String;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lsun/net/www/MimeEntry;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lsun/net/www/MimeTable;->entries:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method fill(Lsun/net/www/MimeEntry;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "entry"    # Lsun/net/www/MimeEntry;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 347
    const-string/jumbo v0, "description"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {p1, p3}, Lsun/net/www/MimeEntry;->setDescription(Ljava/lang/String;)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    const-string/jumbo v0, "action"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    invoke-virtual {p0, p3}, Lsun/net/www/MimeTable;->getActionCode(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lsun/net/www/MimeEntry;->setAction(I)V

    goto :goto_0

    .line 353
    :cond_2
    const-string/jumbo v0, "application"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 354
    invoke-virtual {p1, p3}, Lsun/net/www/MimeEntry;->setCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_3
    const-string/jumbo v0, "icon"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 357
    invoke-virtual {p1, p3}, Lsun/net/www/MimeEntry;->setImageFileName(Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_4
    const-string/jumbo v0, "file_extensions"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p1, p3}, Lsun/net/www/MimeEntry;->setExtensions(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized find(Ljava/lang/String;)Lsun/net/www/MimeEntry;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v3, p0, Lsun/net/www/MimeTable;->entries:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/net/www/MimeEntry;

    .line 156
    .local v1, "entry":Lsun/net/www/MimeEntry;
    if-nez v1, :cond_1

    .line 158
    iget-object v3, p0, Lsun/net/www/MimeTable;->entries:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 159
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/net/www/MimeEntry;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/net/www/MimeEntry;

    .line 161
    .local v2, "wild":Lsun/net/www/MimeEntry;
    invoke-virtual {v2, p1}, Lsun/net/www/MimeEntry;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit p0

    .line 162
    return-object v2

    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/net/www/MimeEntry;>;"
    .end local v2    # "wild":Lsun/net/www/MimeEntry;
    :cond_1
    monitor-exit p0

    .line 167
    return-object v1

    .end local v1    # "entry":Lsun/net/www/MimeEntry;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized findByDescription(Ljava/lang/String;)Lsun/net/www/MimeEntry;
    .locals 3
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 204
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/MimeTable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 205
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/net/www/MimeEntry;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/net/www/MimeEntry;

    .line 207
    .local v1, "entry":Lsun/net/www/MimeEntry;
    invoke-virtual {v1}, Lsun/net/www/MimeEntry;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 208
    return-object v1

    .line 213
    .end local v1    # "entry":Lsun/net/www/MimeEntry;
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lsun/net/www/MimeTable;->find(Ljava/lang/String;)Lsun/net/www/MimeEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/net/www/MimeEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized findByExt(Ljava/lang/String;)Lsun/net/www/MimeEntry;
    .locals 1
    .param p1, "fileExtension"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, Lsun/net/www/MimeTable;->extensionMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/net/www/MimeEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findByFileName(Ljava/lang/String;)Lsun/net/www/MimeEntry;
    .locals 5
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2e

    const/4 v3, 0x0

    .line 175
    const-string/jumbo v0, ""

    .line 177
    .local v0, "ext":Ljava/lang/String;
    const/16 v2, 0x23

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 179
    .local v1, "i":I
    if-lez v1, :cond_0

    .line 180
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 183
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 185
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 186
    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 188
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    .line 189
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_1
    invoke-virtual {p0, v0}, Lsun/net/www/MimeTable;->findByExt(Ljava/lang/String;)Lsun/net/www/MimeEntry;

    move-result-object v2

    return-object v2
.end method

.method getActionCode(Ljava/lang/String;)I
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lsun/net/www/MimeEntry;->actionKeywords:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 379
    sget-object v1, Lsun/net/www/MimeEntry;->actionKeywords:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    return v0

    .line 378
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getAsProperties()Ljava/util/Properties;
    .locals 5

    .prologue
    .line 400
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 401
    .local v2, "properties":Ljava/util/Properties;
    invoke-virtual {p0}, Lsun/net/www/MimeTable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 402
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/net/www/MimeEntry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 403
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/net/www/MimeEntry;

    .line 404
    .local v1, "entry":Lsun/net/www/MimeEntry;
    invoke-virtual {v1}, Lsun/net/www/MimeEntry;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lsun/net/www/MimeEntry;->toProperty()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 407
    .end local v1    # "entry":Lsun/net/www/MimeEntry;
    :cond_0
    return-object v2
.end method

.method public declared-synchronized getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 117
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/net/www/MimeTable;->findByFileName(Ljava/lang/String;)Lsun/net/www/MimeEntry;

    move-result-object v0

    .line 118
    .local v0, "entry":Lsun/net/www/MimeEntry;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lsun/net/www/MimeEntry;->getType()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :cond_0
    monitor-exit p0

    .line 121
    return-object v1

    .end local v0    # "entry":Lsun/net/www/MimeEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getExtensions(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "list"    # Ljava/lang/String;

    .prologue
    .line 367
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v4, ","

    invoke-direct {v3, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 369
    .local v2, "n":I
    new-array v0, v2, [Ljava/lang/String;

    .line 370
    .local v0, "extensions":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 371
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    :cond_0
    return-object v0
.end method

.method public declared-synchronized getSize()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lsun/net/www/MimeTable;->entries:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getTempFileTemplate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lsun/net/www/MimeTable;->tempFileTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized load()V
    .locals 9

    .prologue
    monitor-enter p0

    .line 230
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    .local v1, "entries":Ljava/util/Properties;
    const/4 v2, 0x0

    .line 236
    .local v2, "file":Ljava/io/File;
    :try_start_1
    const-string/jumbo v6, "content.types.user.table"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "userTablePath":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 238
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    .local v3, "file":Ljava/io/File;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .end local v2    # "file":Ljava/io/File;
    move-result v6

    if-nez v6, :cond_1

    .line 241
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "java.home"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 242
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 243
    const-string/jumbo v7, "lib"

    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 244
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 245
    const-string/jumbo v7, "content-types.properties"

    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    .end local v3    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :goto_0
    :try_start_3
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 258
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v1, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 259
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    :try_start_4
    invoke-virtual {p0, v1}, Lsun/net/www/MimeTable;->parse(Ljava/util/Properties;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 229
    return-void

    .line 250
    .end local v4    # "is":Ljava/io/InputStream;
    .local v2, "file":Ljava/io/File;
    :cond_0
    :try_start_5
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "java.home"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 251
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    .line 250
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 252
    const-string/jumbo v7, "lib"

    .line 250
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 253
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    .line 250
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 254
    const-string/jumbo v7, "content-types.properties"

    .line 250
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local v3    # "file":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    goto :goto_0

    .line 261
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "userTablePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_6
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Warning: default mime table not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 263
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 262
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    .line 264
    return-void

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "entries":Ljava/util/Properties;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 261
    .restart local v1    # "entries":Ljava/util/Properties;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "userTablePath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :cond_1
    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_0
.end method

.method parse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "attrs"    # Ljava/lang/String;

    .prologue
    .line 314
    new-instance v0, Lsun/net/www/MimeEntry;

    invoke-direct {v0, p1}, Lsun/net/www/MimeEntry;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "newEntry":Lsun/net/www/MimeEntry;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v3, ";"

    invoke-direct {v2, p2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "pair":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lsun/net/www/MimeTable;->parse(Ljava/lang/String;Lsun/net/www/MimeEntry;)V

    goto :goto_0

    .line 323
    .end local v1    # "pair":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lsun/net/www/MimeTable;->add(Lsun/net/www/MimeEntry;)V

    .line 313
    return-void
.end method

.method parse(Ljava/lang/String;Lsun/net/www/MimeEntry;)V
    .locals 5
    .param p1, "pair"    # Ljava/lang/String;
    .param p2, "entry"    # Lsun/net/www/MimeEntry;

    .prologue
    .line 328
    const/4 v1, 0x0

    .line 329
    .local v1, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 331
    .local v3, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .line 332
    .local v0, "gotName":Z
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v4, "="

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 334
    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .local v3, "value":Ljava/lang/String;
    goto :goto_0

    .line 338
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "name":Ljava/lang/String;
    const/4 v0, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p2, v1, v3}, Lsun/net/www/MimeTable;->fill(Lsun/net/www/MimeEntry;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method parse(Ljava/util/Properties;)V
    .locals 5
    .param p1, "entries"    # Ljava/util/Properties;

    .prologue
    .line 271
    const-string/jumbo v4, "temp.file.template"

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    .local v1, "tempFileTemplate":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 273
    const-string/jumbo v4, "temp.file.template"

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sput-object v1, Lsun/net/www/MimeTable;->tempFileTemplate:Ljava/lang/String;

    .line 278
    :cond_0
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v3

    .line 279
    .local v3, "types":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 280
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 281
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "attrs":Ljava/lang/String;
    invoke-virtual {p0, v2, v0}, Lsun/net/www/MimeTable;->parse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    .end local v0    # "attrs":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lsun/net/www/MimeEntry;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v1, p0, Lsun/net/www/MimeTable;->entries:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/net/www/MimeEntry;

    .line 140
    .local v0, "entry":Lsun/net/www/MimeEntry;
    invoke-virtual {p0, v0}, Lsun/net/www/MimeTable;->remove(Lsun/net/www/MimeEntry;)Lsun/net/www/MimeEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .end local v0    # "entry":Lsun/net/www/MimeEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Lsun/net/www/MimeEntry;)Lsun/net/www/MimeEntry;
    .locals 4
    .param p1, "entry"    # Lsun/net/www/MimeEntry;

    .prologue
    monitor-enter p0

    .line 144
    :try_start_0
    invoke-virtual {p1}, Lsun/net/www/MimeEntry;->getExtensions()[Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "extensionKeys":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 146
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 147
    iget-object v2, p0, Lsun/net/www/MimeTable;->extensionMap:Ljava/util/Hashtable;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lsun/net/www/MimeTable;->entries:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lsun/net/www/MimeEntry;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/net/www/MimeEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .end local v0    # "extensionKeys":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized save(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 388
    if-nez p1, :cond_0

    .line 389
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user.home"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 390
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 391
    const-string/jumbo v1, "lib"

    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 392
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 393
    const-string/jumbo v1, "content-types.properties"

    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 396
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lsun/net/www/MimeTable;->saveAsProperties(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected saveAsProperties(Ljava/io/File;)Z
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 411
    const/4 v1, 0x0

    .line 413
    .local v1, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0}, Lsun/net/www/MimeTable;->getAsProperties()Ljava/util/Properties;

    move-result-object v3

    .line 415
    .local v3, "properties":Ljava/util/Properties;
    const-string/jumbo v6, "temp.file.template"

    sget-object v7, Lsun/net/www/MimeTable;->tempFileTemplate:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string/jumbo v6, "user.name"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 418
    .local v5, "user":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 419
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "; customized for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 420
    .local v4, "tag":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sun.net.www MIME content-types table"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Ljava/util/Properties;->save(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 431
    .end local v4    # "tag":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 432
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 436
    :cond_0
    :goto_1
    const/4 v6, 0x1

    return v6

    .line 423
    :cond_1
    :try_start_3
    const-string/jumbo v6, "sun.net.www MIME content-types table"

    invoke-virtual {v3, v2, v6}, Ljava/util/Properties;->save(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 426
    .end local v3    # "properties":Ljava/util/Properties;
    .end local v5    # "user":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 427
    .end local v2    # "os":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 428
    const/4 v6, 0x0

    .line 431
    if-eqz v1, :cond_2

    .line 432
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 428
    :cond_2
    :goto_3
    return v6

    .line 432
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "properties":Ljava/util/Properties;
    .restart local v5    # "user":Ljava/lang/String;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .end local v3    # "properties":Ljava/util/Properties;
    .end local v5    # "user":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_3

    .line 430
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 431
    :goto_4
    if-eqz v1, :cond_3

    .line 432
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 430
    :cond_3
    :goto_5
    throw v6

    .line 432
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 430
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .local v1, "os":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 426
    .local v1, "os":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2
.end method
