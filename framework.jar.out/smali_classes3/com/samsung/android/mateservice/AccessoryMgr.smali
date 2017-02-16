.class public Lcom/samsung/android/mateservice/AccessoryMgr;
.super Ljava/lang/Object;
.source "AccessoryMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Accessory"


# instance fields
.field private final mAccessories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/UUID;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mateservice/AccessoryMgr;->mAccessories:Ljava/util/HashMap;

    .line 17
    return-void
.end method

.method private getHexString([BII)Ljava/lang/String;
    .locals 7
    .param p1, "srcData"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v6, 0x0

    .line 62
    add-int v1, p2, p3

    .line 63
    .local v1, "end":I
    if-eqz p1, :cond_0

    array-length v4, p1

    if-ge v4, v1, :cond_1

    .line 64
    :cond_0
    return-object v6

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, "builder":Ljava/lang/StringBuilder;
    move v3, p2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 69
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "hexStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 71
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "hexStr":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    mul-int/lit8 v5, p3, 0x2

    if-eq v4, v5, :cond_4

    .line 77
    return-object v6

    .line 80
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getAccessoryList()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/mateservice/AccessoryMgr;->mAccessories:Ljava/util/HashMap;

    monitor-enter v2

    .line 103
    :try_start_0
    const-string/jumbo v1, "accessoryList"

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/mateservice/AccessoryMgr;->mAccessories:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 106
    return-object v0

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getDump(Ljava/lang/StringBuilder;)V
    .locals 17
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 22
    const-string/jumbo v12, "\n---- active accessory info.\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/mateservice/AccessoryMgr;->mAccessories:Ljava/util/HashMap;

    monitor-enter v13

    .line 25
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/mateservice/AccessoryMgr;->mAccessories:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 26
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Landroid/os/Bundle;>;"
    if-eqz v4, :cond_0

    .line 30
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 31
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/UUID;

    .line 33
    .local v11, "uuid":Ljava/util/UUID;
    if-eqz v2, :cond_0

    if-eqz v11, :cond_0

    .line 37
    const-string/jumbo v12, "timeStamp"

    const-wide/16 v14, -0x1

    invoke-virtual {v2, v12, v14, v15}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 38
    .local v8, "timeStamp":J
    const-wide/16 v14, -0x1

    cmp-long v12, v8, v14

    if-eqz v12, :cond_2

    invoke-static {v8, v9}, Lcom/samsung/android/mateservice/MateLog;->getDateString(J)Ljava/lang/String;

    move-result-object v12

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string/jumbo v12, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/mateservice/MateLog;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const/4 v12, 0x2

    new-array v7, v12, [[B

    const-string/jumbo v12, "data"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v14, 0x0

    aput-object v12, v7, v14

    .line 43
    const-string/jumbo v12, "extraData"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v14, 0x1

    aput-object v12, v7, v14

    .line 44
    .local v7, "src":[[B
    const/4 v12, 0x2

    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v12, "\n\tdata: "

    const/4 v14, 0x0

    aput-object v12, v10, v14

    const-string/jumbo v12, "\n\textra: "

    const/4 v14, 0x1

    aput-object v12, v10, v14

    .line 46
    .local v10, "title":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 47
    .local v6, "index":I
    const/4 v12, 0x0

    array-length v14, v7

    :goto_2
    if-ge v12, v14, :cond_3

    aget-object v3, v7, v12

    .line 48
    .local v3, "cur":[B
    if-eqz v3, :cond_1

    array-length v15, v3

    if-lez v15, :cond_1

    .line 49
    aget-object v15, v10, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    array-length v15, v3

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1, v15}, Lcom/samsung/android/mateservice/AccessoryMgr;->getHexString([BII)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/mateservice/MateLog;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 47
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 38
    .end local v3    # "cur":[B
    .end local v6    # "index":I
    .end local v7    # "src":[[B
    .end local v10    # "title":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v12, "wrong time"

    goto :goto_1

    .line 55
    .restart local v6    # "index":I
    .restart local v7    # "src":[[B
    .restart local v10    # "title":[Ljava/lang/String;
    :cond_3
    const-string/jumbo v12, "\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 24
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Landroid/os/Bundle;>;"
    .end local v5    # "entry$iterator":Ljava/util/Iterator;
    .end local v6    # "index":I
    .end local v7    # "src":[[B
    .end local v8    # "timeStamp":J
    .end local v10    # "title":[Ljava/lang/String;
    .end local v11    # "uuid":Ljava/util/UUID;
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .restart local v5    # "entry$iterator":Ljava/util/Iterator;
    :cond_4
    monitor-exit v13

    .line 21
    return-void
.end method

.method public update(ZLjava/util/UUID;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "append"    # Z
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 85
    :cond_0
    return v1

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/mateservice/AccessoryMgr;->mAccessories:Ljava/util/HashMap;

    monitor-enter v2

    .line 89
    if-eqz p1, :cond_2

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mateservice/AccessoryMgr;->mAccessories:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 96
    return v0

    .line 92
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/mateservice/AccessoryMgr;->mAccessories:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_3

    :goto_0
    monitor-exit v2

    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
