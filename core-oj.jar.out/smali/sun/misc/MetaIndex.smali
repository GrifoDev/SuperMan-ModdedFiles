.class public Lsun/misc/MetaIndex;
.super Ljava/lang/Object;
.source "MetaIndex.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static volatile jarMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Lsun/misc/MetaIndex;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contents:[Ljava/lang/String;

.field private isClassOnlyJar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lsun/misc/MetaIndex;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/misc/MetaIndex;->-assertionsDisabled:Z

    .line 130
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .param p2, "isClassOnlyJar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    if-nez p1, :cond_0

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 260
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lsun/misc/MetaIndex;->contents:[Ljava/lang/String;

    .line 261
    iput-boolean p2, p0, Lsun/misc/MetaIndex;->isClassOnlyJar:Z

    .line 255
    return-void
.end method

.method public static forJar(Ljava/io/File;)Lsun/misc/MetaIndex;
    .locals 1
    .param p0, "jar"    # Ljava/io/File;

    .prologue
    .line 148
    invoke-static {}, Lsun/misc/MetaIndex;->getJarMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/MetaIndex;

    return-object v0
.end method

.method private static getJarMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Lsun/misc/MetaIndex;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    sget-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 266
    const-class v1, Lsun/misc/MetaIndex;

    monitor-enter v1

    .line 267
    :try_start_0
    sget-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 272
    :cond_1
    sget-boolean v0, Lsun/misc/MetaIndex;->-assertionsDisabled:Z

    if-nez v0, :cond_3

    sget-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 272
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 273
    :cond_3
    sget-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized registerDirectory(Ljava/io/File;)V
    .locals 11
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const-class v9, Lsun/misc/MetaIndex;

    monitor-enter v9

    .line 163
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v8, "meta-index"

    invoke-direct {v3, p0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    .local v3, "indexFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 166
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 167
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 168
    .local v5, "line":Ljava/lang/String;
    const/4 v1, 0x0

    .line 169
    .local v1, "curJarName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 170
    .local v4, "isCurJarContainClassOnly":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lsun/misc/MetaIndex;->getJarMap()Ljava/util/Map;

    move-result-object v6

    .line 174
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lsun/misc/MetaIndex;>;"
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    .line 178
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 180
    const-string/jumbo v8, "% VERSION 2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 184
    .end local v1    # "curJarName":Ljava/lang/String;
    :cond_0
    :goto_0
    :sswitch_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 185
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 210
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    .end local v0    # "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "isCurJarContainClassOnly":Z
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lsun/misc/MetaIndex;>;"
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    :cond_1
    :goto_1
    monitor-exit v9

    .line 153
    return-void

    .line 181
    .restart local v0    # "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "curJarName":Ljava/lang/String;
    .restart local v4    # "isCurJarContainClassOnly":Z
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lsun/misc/MetaIndex;>;"
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v9

    .line 182
    return-void

    .line 190
    .end local v1    # "curJarName":Ljava/lang/String;
    :sswitch_1
    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 191
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    new-instance v10, Lsun/misc/MetaIndex;

    invoke-direct {v10, v0, v4}, Lsun/misc/MetaIndex;-><init>(Ljava/util/List;Z)V

    .line 191
    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    :cond_3
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "curJarName":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x21

    if-ne v8, v10, :cond_4

    .line 200
    const/4 v4, 0x1

    goto :goto_0

    .line 201
    :cond_4
    if-eqz v4, :cond_0

    .line 202
    const/4 v4, 0x0

    goto :goto_0

    .line 215
    .end local v1    # "curJarName":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 216
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    new-instance v10, Lsun/misc/MetaIndex;

    invoke-direct {v10, v0, v4}, Lsun/misc/MetaIndex;-><init>(Ljava/util/List;Z)V

    .line 216
    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v0    # "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "indexFile":Ljava/io/File;
    .end local v4    # "isCurJarContainClassOnly":Z
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lsun/misc/MetaIndex;>;"
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 185
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x23 -> :sswitch_1
        0x25 -> :sswitch_0
        0x40 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public mayContain(Ljava/lang/String;)Z
    .locals 4
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 237
    iget-boolean v2, p0, Lsun/misc/MetaIndex;->isClassOnlyJar:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, ".class"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    :cond_0
    iget-object v0, p0, Lsun/misc/MetaIndex;->contents:[Ljava/lang/String;

    .line 242
    .local v0, "conts":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 243
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    const/4 v2, 0x1

    return v2

    .line 238
    .end local v0    # "conts":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    return v3

    .line 242
    .restart local v0    # "conts":[Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :cond_3
    return v3
.end method
