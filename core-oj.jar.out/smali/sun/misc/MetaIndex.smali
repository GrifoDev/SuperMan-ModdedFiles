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

    const-class v0, Lsun/misc/MetaIndex;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/misc/MetaIndex;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/List;Z)V
    .locals 1
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lsun/misc/MetaIndex;->contents:[Ljava/lang/String;

    iput-boolean p2, p0, Lsun/misc/MetaIndex;->isClassOnlyJar:Z

    return-void
.end method

.method public static forJar(Ljava/io/File;)Lsun/misc/MetaIndex;
    .locals 1

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

    sget-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    if-nez v0, :cond_1

    const-class v1, Lsun/misc/MetaIndex;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

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

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sget-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized registerDirectory(Ljava/io/File;)V
    .locals 11

    const-class v9, Lsun/misc/MetaIndex;

    monitor-enter v9

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v8, "meta-index"

    invoke-direct {v3, p0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lsun/misc/MetaIndex;->getJarMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string/jumbo v8, "% VERSION 2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    :goto_0
    :sswitch_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sparse-switch v8, :sswitch_data_0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_1
    :goto_1
    monitor-exit v9

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v9

    return-void

    :sswitch_1
    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Lsun/misc/MetaIndex;

    invoke-direct {v10, v0, v4}, Lsun/misc/MetaIndex;-><init>(Ljava/util/List;Z)V

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x21

    if-ne v8, v10, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Lsun/misc/MetaIndex;

    invoke-direct {v10, v0, v4}, Lsun/misc/MetaIndex;-><init>(Ljava/util/List;Z)V

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

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

    const/4 v3, 0x0

    iget-boolean v2, p0, Lsun/misc/MetaIndex;->isClassOnlyJar:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, ".class"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v0, p0, Lsun/misc/MetaIndex;->contents:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_1
    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method
