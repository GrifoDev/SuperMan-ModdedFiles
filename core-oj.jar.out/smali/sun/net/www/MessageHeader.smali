.class public Lsun/net/www/MessageHeader;
.super Ljava/lang/Object;
.source "MessageHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/MessageHeader$HeaderIterator;
    }
.end annotation


# instance fields
.field private keys:[Ljava/lang/String;

.field private nkeys:I

.field private values:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lsun/net/www/MessageHeader;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lsun/net/www/MessageHeader;)I
    .locals 1

    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    return v0
.end method

.method static synthetic -get2(Lsun/net/www/MessageHeader;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lsun/net/www/MessageHeader;->parseHeader(Ljava/io/InputStream;)V

    return-void
.end method

.method public static canonicalID(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x20

    if-nez p0, :cond_0

    const-string/jumbo v4, ""

    return-object v4

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3c

    if-eq v0, v4, :cond_1

    if-gt v0, v5, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v2, v1, :cond_4

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3e

    if-eq v0, v4, :cond_3

    if-gt v0, v5, :cond_4

    :cond_3
    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_5
    return-object p0
.end method

.method private grow()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_3

    :cond_0
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v2, v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v2, v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget v3, p0, Lsun/net/www/MessageHeader;->nkeys:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget v3, p0, Lsun/net/www/MessageHeader;->nkeys:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iput-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V

    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    aput-object p1, v0, v1

    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    aput-object p2, v0, v1

    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized filterAndAddHeaders([Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    const/4 v9, 0x0

    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    :goto_1
    array-length v10, p1

    if-ge v3, v10, :cond_0

    aget-object v10, p1, v3

    if-eqz v10, :cond_2

    aget-object v10, p1, v3

    iget-object v11, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v11, v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v9, 0x1

    :cond_0
    if-nez v9, :cond_3

    iget-object v10, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-interface {v8, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v10, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_6

    :try_start_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v8, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    monitor-exit p0

    return-object v10
.end method

.method public filterNTLMResponses(Ljava/lang/String;)Z
    .locals 9

    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v7, v0, :cond_0

    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v0, v0, v7

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_2

    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v0, v0, v7

    const-string/jumbo v3, "NTLM "

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    :cond_0
    if-eqz v6, :cond_6

    const/4 v8, 0x0

    const/4 v7, 0x0

    :goto_1
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v7, v0, :cond_5

    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Negotiate"

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Kerberos"

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    if-eq v7, v8, :cond_4

    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v3, v3, v7

    aput-object v3, v0, v8

    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v3, v3, v7

    aput-object v3, v0, v8

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-eq v8, v0, :cond_6

    iput v8, p0, Lsun/net/www/MessageHeader;->nkeys:I

    return v1

    :cond_6
    return v2
.end method

.method public declared-synchronized findNextValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_2

    :try_start_0
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_5

    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v2, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_1
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-ne v2, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_5

    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_4

    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v2, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_4
    :try_start_2
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v2, v2, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v2, p2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized findValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    monitor-enter p0

    if-nez p1, :cond_1

    :try_start_0
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_3
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lsun/net/www/MessageHeader;->getHeaders([Ljava/lang/String;)Ljava/util/Map;
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

.method public declared-synchronized getHeaders([Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lsun/net/www/MessageHeader;->filterAndAddHeaders([Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
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

.method public declared-synchronized getKey(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    monitor-exit p0

    return v0

    :cond_2
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getKey(I)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValue(I)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mergeHeader(Ljava/io/InputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v10, 0xa

    new-array v8, v10, [C

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    :goto_0
    const/16 v10, 0xa

    if-eq v1, v10, :cond_d

    const/16 v10, 0xd

    if-eq v1, v10, :cond_d

    if-ltz v1, :cond_d

    const/4 v4, -0x1

    const/16 v10, 0x20

    if-le v1, v10, :cond_2

    const/4 v2, 0x1

    :goto_1
    const/4 v10, 0x0

    const/4 v5, 0x1

    int-to-char v11, v1

    aput-char v11, v8, v10

    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_7

    sparse-switch v0, :sswitch_data_0

    :goto_3
    array-length v10, v8

    if-lt v5, v10, :cond_1

    array-length v10, v8

    mul-int/lit8 v10, v10, 0x2

    new-array v7, v10, [C

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v10, v7, v11, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    move-object v8, v7

    :cond_1
    add-int/lit8 v6, v5, 0x1

    int-to-char v10, v0

    aput-char v10, v8, v5

    move v5, v6

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_0
    if-eqz v2, :cond_3

    if-lez v5, :cond_3

    move v4, v5

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :sswitch_1
    const/16 v0, 0x20

    :sswitch_2
    const/4 v2, 0x0

    goto :goto_3

    :sswitch_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v10, 0xd

    if-ne v0, v10, :cond_4

    const/16 v10, 0xa

    if-ne v1, v10, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v10, 0xd

    if-ne v1, v10, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    :cond_4
    const/16 v10, 0xa

    if-eq v1, v10, :cond_5

    const/16 v10, 0xd

    if-ne v1, v10, :cond_6

    :cond_5
    :goto_4
    if-lez v5, :cond_8

    add-int/lit8 v10, v5, -0x1

    aget-char v10, v8, v10

    const/16 v11, 0x20

    if-gt v10, v11, :cond_8

    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_6
    const/16 v10, 0x20

    if-gt v1, v10, :cond_5

    const/16 v0, 0x20

    goto :goto_3

    :cond_7
    const/4 v1, -0x1

    goto :goto_4

    :cond_8
    if-gtz v4, :cond_a

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_9
    if-lt v4, v5, :cond_c

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    :goto_5
    invoke-virtual {p0, v3, v9}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const/4 v10, 0x0

    invoke-static {v8, v10, v4}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v3

    if-ge v4, v5, :cond_b

    aget-char v10, v8, v4

    const/16 v11, 0x3a

    if-ne v10, v11, :cond_b

    add-int/lit8 v4, v4, 0x1

    :cond_b
    :goto_6
    if-ge v4, v5, :cond_9

    aget-char v10, v8, v4

    const/16 v11, 0x20

    if-gt v10, v11, :cond_9

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_c
    sub-int v10, v5, v4

    invoke-static {v8, v4, v10}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
        0xd -> :sswitch_3
        0x20 -> :sswitch_2
        0x3a -> :sswitch_0
    .end sparse-switch
.end method

.method public multiValueIterator(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lsun/net/www/MessageHeader$HeaderIterator;

    invoke-direct {v0, p0, p1, p0}, Lsun/net/www/MessageHeader$HeaderIterator;-><init>(Lsun/net/www/MessageHeader;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public parseHeader(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {p0, p1}, Lsun/net/www/MessageHeader;->mergeHeader(Ljava/io/InputStream;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V

    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized print(Ljava/io/PrintStream;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, ""

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v2, :cond_5

    :goto_1
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v2, :cond_1

    move v1, v0

    :goto_2
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_3
    :try_start_1
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v2, :cond_5

    :goto_4
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v2, :cond_4

    move v1, v0

    :goto_5
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aput-object p2, v0, p1

    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aput-object p3, v0, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aput-object p2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lsun/net/www/MessageHeader;->nkeys:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pairs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
