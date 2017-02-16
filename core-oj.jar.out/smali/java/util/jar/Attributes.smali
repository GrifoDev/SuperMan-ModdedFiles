.class public Ljava/util/jar/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/Attributes$Name;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field protected map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/jar/Attributes;-><init>(I)V

    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/util/jar/Attributes;)V
    .locals 1
    .param p1, "attr"    # Ljava/util/jar/Attributes;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    .line 84
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 223
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 292
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0, p0}, Ljava/util/jar/Attributes;-><init>(Ljava/util/jar/Attributes;)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 202
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 192
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 272
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 98
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v0, Ljava/util/jar/Attributes$Name;

    invoke-direct {v0, p1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/jar/Attributes;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/util/jar/Attributes$Name;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Ljava/util/jar/Attributes;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 149
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    check-cast p1, Ljava/util/jar/Attributes$Name;

    .end local p1    # "name":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "attr":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-class v2, Ljava/util/jar/Attributes;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-direct {v2}, Ljava/lang/ClassCastException;-><init>()V

    throw v2

    .line 216
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "me$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 217
    .local v0, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 212
    .end local v0    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_1
    return-void
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v0, Ljava/util/jar/Attributes$Name;

    invoke-direct {v0, p1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method read(Ljava/util/jar/Manifest$FastInputStream;[B)V
    .locals 12
    .param p1, "is"    # Ljava/util/jar/Manifest$FastInputStream;
    .param p2, "lbuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    const/4 v7, 0x0

    .local v7, "name":Ljava/lang/String;
    const/4 v8, 0x0

    .line 374
    .local v8, "value":Ljava/lang/String;
    const/4 v4, 0x0

    .line 377
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/jar/Manifest$FastInputStream;->readLine([B)I

    move-result v5

    .local v5, "len":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_3

    .line 378
    const/4 v6, 0x0

    .line 379
    .local v6, "lineContinued":Z
    add-int/lit8 v5, v5, -0x1

    aget-byte v9, p2, v5

    const/16 v10, 0xa

    if-eq v9, v10, :cond_1

    .line 380
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "line too long"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 382
    :cond_1
    if-lez v5, :cond_2

    add-int/lit8 v9, v5, -0x1

    aget-byte v9, p2, v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_2

    .line 383
    add-int/lit8 v5, v5, -0x1

    .line 385
    :cond_2
    if-nez v5, :cond_4

    .line 372
    .end local v6    # "lineContinued":Z
    :cond_3
    return-void

    .line 388
    .restart local v6    # "lineContinued":Z
    :cond_4
    const/4 v2, 0x0

    .line 389
    .local v2, "i":I
    const/4 v9, 0x0

    aget-byte v9, p2, v9

    const/16 v10, 0x20

    if-ne v9, v10, :cond_8

    .line 391
    if-nez v7, :cond_5

    .line 392
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "misplaced continuation line"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 394
    :cond_5
    const/4 v6, 0x1

    .line 395
    array-length v9, v4

    add-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    new-array v0, v9, [B

    .line 396
    .local v0, "buf":[B
    array-length v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v4, v10, v0, v11, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 397
    array-length v9, v4

    add-int/lit8 v10, v5, -0x1

    const/4 v11, 0x1

    invoke-static {p2, v11, v0, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 398
    invoke-virtual {p1}, Ljava/util/jar/Manifest$FastInputStream;->peek()B

    move-result v9

    const/16 v10, 0x20

    if-ne v9, v10, :cond_6

    .line 399
    move-object v4, v0

    .line 400
    .local v4, "lastline":[B
    goto :goto_0

    .line 402
    .end local v4    # "lastline":[B
    :cond_6
    new-instance v8, Ljava/lang/String;

    array-length v9, v0

    const-string/jumbo v10, "UTF8"

    const/4 v11, 0x0

    invoke-direct {v8, v0, v11, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 403
    .local v8, "value":Ljava/lang/String;
    const/4 v4, 0x0

    .line 422
    .end local v0    # "buf":[B
    :goto_1
    :try_start_0
    invoke-virtual {p0, v7, v8}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    if-nez v6, :cond_0

    .line 423
    const-string/jumbo v9, "java.util.jar"

    invoke-static {v9}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v9

    .line 424
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Duplicate name in Manifest: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 425
    const-string/jumbo v11, ".\n"

    .line 424
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 426
    const-string/jumbo v11, "Ensure that the manifest does not "

    .line 424
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 427
    const-string/jumbo v11, "have duplicate entries, and\n"

    .line 424
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 428
    const-string/jumbo v11, "that blank lines separate "

    .line 424
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 429
    const-string/jumbo v11, "individual sections in both your\n"

    .line 424
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 430
    const-string/jumbo v11, "manifest and in the META-INF/MANIFEST.MF "

    .line 424
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 431
    const-string/jumbo v11, "entry in the jar file."

    .line 424
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 423
    invoke-virtual {v9, v10}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "invalid header field name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "i":I
    .end local v8    # "value":Ljava/lang/String;
    .local v3, "i":I
    :cond_7
    move v2, v3

    .line 405
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_8
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-byte v9, p2, v2

    const/16 v10, 0x3a

    if-eq v9, v10, :cond_9

    .line 406
    if-lt v3, v5, :cond_7

    .line 407
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "invalid header field"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 410
    :cond_9
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v9, p2, v3

    const/16 v10, 0x20

    if-eq v9, v10, :cond_a

    .line 411
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "invalid header field"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 413
    :cond_a
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v9, v2, -0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v7, p2, v10, v11, v9}, Ljava/lang/String;-><init>([BIII)V

    .line 414
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/jar/Manifest$FastInputStream;->peek()B

    move-result v9

    const/16 v10, 0x20

    if-ne v9, v10, :cond_b

    .line 415
    sub-int v9, v5, v2

    new-array v4, v9, [B

    .line 416
    .restart local v4    # "lastline":[B
    sub-int v9, v5, v2

    const/4 v10, 0x0

    invoke-static {p2, v2, v4, v10, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto/16 :goto_0

    .line 419
    .end local v4    # "lastline":[B
    :cond_b
    new-instance v8, Ljava/lang/String;

    sub-int v9, v5, v2

    const-string/jumbo v10, "UTF8"

    invoke-direct {v8, p2, v2, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .restart local v8    # "value":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 180
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 7
    .param p1, "os"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 300
    invoke-virtual {p0}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 301
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 302
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 303
    .local v1, "e":Ljava/util/Map$Entry;
    new-instance v0, Ljava/lang/StringBuffer;

    .line 304
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/jar/Attributes$Name;

    invoke-virtual {v5}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v5

    .line 303
    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 308
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 309
    const-string/jumbo v5, "UTF8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 310
    .local v4, "vb":[B
    new-instance v3, Ljava/lang/String;

    .end local v3    # "value":Ljava/lang/String;
    array-length v5, v4

    invoke-direct {v3, v4, v6, v6, v5}, Ljava/lang/String;-><init>([BIII)V

    .line 312
    .end local v4    # "vb":[B
    .restart local v3    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    const-string/jumbo v5, "\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    invoke-static {v0}, Ljava/util/jar/Manifest;->make72Safe(Ljava/lang/StringBuffer;)V

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "e":Ljava/util/Map$Entry;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "\r\n"

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method writeMain(Ljava/io/DataOutputStream;)V
    .locals 11
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 331
    sget-object v8, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v8}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v6

    .line 332
    .local v6, "vername":Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 333
    .local v7, "version":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 334
    sget-object v8, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v8}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v6

    .line 335
    invoke-virtual {p0, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 338
    :cond_0
    if-eqz v7, :cond_1

    .line 339
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 344
    :cond_1
    invoke-virtual {p0}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 345
    .local v2, "it":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 346
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 347
    .local v1, "e":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/jar/Attributes$Name;

    invoke-virtual {v8}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "name":Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 350
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v8, ": "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 354
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 355
    const-string/jumbo v8, "UTF8"

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 356
    .local v5, "vb":[B
    new-instance v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/String;
    array-length v8, v5

    invoke-direct {v4, v5, v10, v10, v8}, Ljava/lang/String;-><init>([BIII)V

    .line 358
    .end local v5    # "vb":[B
    .restart local v4    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    const-string/jumbo v8, "\r\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    invoke-static {v0}, Ljava/util/jar/Manifest;->make72Safe(Ljava/lang/StringBuffer;)V

    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0

    .line 365
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "e":Ljava/util/Map$Entry;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_4
    const-string/jumbo v8, "\r\n"

    invoke-virtual {p1, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 328
    return-void
.end method
