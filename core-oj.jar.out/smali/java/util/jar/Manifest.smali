.class public Ljava/util/jar/Manifest;
.super Ljava/lang/Object;
.source "Manifest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/Manifest$FastInputStream;
    }
.end annotation


# instance fields
.field private attr:Ljava/util/jar/Attributes;

.field private entries:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-virtual {p0, p1}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/jar/Manifest;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    iget-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/Attributes;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static make72Safe(Ljava/lang/StringBuffer;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x48

    if-le v1, v2, :cond_0

    const/16 v0, 0x46

    :goto_0
    add-int/lit8 v2, v1, -0x2

    if-ge v0, v2, :cond_0

    const-string/jumbo v2, "\r\n "

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x48

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private parseName([BI)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Ljava/util/jar/Manifest;->toLower(I)I

    move-result v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Ljava/util/jar/Manifest;->toLower(I)I

    move-result v1

    const/16 v2, 0x61

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Ljava/util/jar/Manifest;->toLower(I)I

    move-result v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Ljava/util/jar/Manifest;->toLower(I)I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    aget-byte v1, p1, v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_0

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, p2, -0x6

    const-string/jumbo v3, "UTF8"

    const/4 v4, 0x6

    invoke-direct {v1, p1, v4, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private toLower(I)I
    .locals 1

    const/16 v0, 0x41

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x41

    add-int/lit8 p1, v0, 0x61

    :cond_0
    return p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clear()V

    iget-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0, p0}, Ljava/util/jar/Manifest;-><init>(Ljava/util/jar/Manifest;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/util/jar/Manifest;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/jar/Manifest;

    iget-object v2, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/jar/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;
    .locals 1

    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    return-object v0
.end method

.method public getEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    return-object v0
.end method

.method public getMainAttributes()Ljava/util/jar/Attributes;
    .locals 1

    iget-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v5, Ljava/util/jar/Manifest$FastInputStream;

    invoke-direct {v5, p1}, Ljava/util/jar/Manifest$FastInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v11, 0x200

    new-array v7, v11, [B

    iget-object v11, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    invoke-virtual {v11, v5, v7}, Ljava/util/jar/Attributes;->read(Ljava/util/jar/Manifest$FastInputStream;[B)V

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v5, v7}, Ljava/util/jar/Manifest$FastInputStream;->readLine([B)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_9

    add-int/lit8 v8, v8, -0x1

    aget-byte v11, v7, v8

    const/16 v12, 0xa

    if-eq v11, v12, :cond_1

    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "manifest line too long"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_1
    if-lez v8, :cond_2

    add-int/lit8 v11, v8, -0x1

    aget-byte v11, v7, v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_2

    add-int/lit8 v8, v8, -0x1

    :cond_2
    if-nez v8, :cond_3

    if-nez v10, :cond_0

    :cond_3
    const/4 v10, 0x0

    if-nez v9, :cond_5

    invoke-direct {p0, v7, v8}, Ljava/util/jar/Manifest;->parseName([BI)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "invalid manifest format"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_4
    invoke-virtual {v5}, Ljava/util/jar/Manifest$FastInputStream;->peek()B

    move-result v11

    const/16 v12, 0x20

    if-ne v11, v12, :cond_7

    add-int/lit8 v11, v8, -0x6

    new-array v6, v11, [B

    add-int/lit8 v11, v8, -0x6

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static {v7, v12, v6, v13, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    :cond_5
    array-length v11, v6

    add-int/2addr v11, v8

    add-int/lit8 v11, v11, -0x1

    new-array v3, v11, [B

    array-length v11, v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v6, v12, v3, v13, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v11, v6

    add-int/lit8 v12, v8, -0x1

    const/4 v13, 0x1

    invoke-static {v7, v13, v3, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {v5}, Ljava/util/jar/Manifest$FastInputStream;->peek()B

    move-result v11

    const/16 v12, 0x20

    if-ne v11, v12, :cond_6

    move-object v6, v3

    goto :goto_0

    :cond_6
    new-instance v9, Ljava/lang/String;

    array-length v11, v3

    const-string/jumbo v12, "UTF8"

    const/4 v13, 0x0

    invoke-direct {v9, v3, v13, v11, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v6, 0x0

    :cond_7
    invoke-virtual {p0, v9}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v2

    if-nez v2, :cond_8

    new-instance v2, Ljava/util/jar/Attributes;

    invoke-direct {v2, v1}, Ljava/util/jar/Attributes;-><init>(I)V

    iget-object v11, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-interface {v11, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v2, v5, v7}, Ljava/util/jar/Attributes;->read(Ljava/util/jar/Manifest$FastInputStream;[B)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Ljava/util/jar/Attributes;->size()I

    move-result v11

    add-int/2addr v0, v11

    div-int v11, v0, v4

    const/4 v12, 0x2

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v6, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    invoke-virtual {v6, v1}, Ljava/util/jar/Attributes;->writeMain(Ljava/io/DataOutputStream;)V

    iget-object v6, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v6, "Name: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string/jumbo v6, "UTF8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    new-instance v4, Ljava/lang/String;

    array-length v6, v5

    invoke-direct {v4, v5, v7, v7, v6}, Ljava/lang/String;-><init>([BIII)V

    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/util/jar/Manifest;->make72Safe(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes;

    invoke-virtual {v6, v1}, Ljava/util/jar/Attributes;->write(Ljava/io/DataOutputStream;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method
