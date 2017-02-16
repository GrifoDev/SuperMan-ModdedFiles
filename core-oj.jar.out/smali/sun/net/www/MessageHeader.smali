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

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V

    .line 55
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
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lsun/net/www/MessageHeader;->parseHeader(Ljava/io/InputStream;)V

    .line 59
    return-void
.end method

.method public static canonicalID(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x20

    .line 412
    if-nez p0, :cond_0

    .line 413
    const-string/jumbo v4, ""

    return-object v4

    .line 414
    :cond_0
    const/4 v2, 0x0

    .line 415
    .local v2, "st":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 416
    .local v1, "len":I
    const/4 v3, 0x0

    .line 418
    .local v3, "substr":Z
    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":I
    const/16 v4, 0x3c

    if-eq v0, v4, :cond_1

    .line 419
    if-gt v0, v5, :cond_2

    .line 420
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 421
    const/4 v3, 0x1

    goto :goto_0

    .line 423
    .end local v0    # "c":I
    :cond_2
    :goto_1
    if-ge v2, v1, :cond_4

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0    # "c":I
    const/16 v4, 0x3e

    if-eq v0, v4, :cond_3

    .line 424
    if-gt v0, v5, :cond_4

    .line 425
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 426
    const/4 v3, 0x1

    goto :goto_1

    .line 428
    .end local v0    # "c":I
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "id":Ljava/lang/String;
    :cond_5
    return-object p0
.end method

.method private grow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 343
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_3

    .line 344
    :cond_0
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v2, v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    .line 345
    .local v0, "nk":[Ljava/lang/String;
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v2, v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    .line 346
    .local v1, "nv":[Ljava/lang/String;
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 347
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget v3, p0, Lsun/net/www/MessageHeader;->nkeys:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    :cond_1
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 349
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget v3, p0, Lsun/net/www/MessageHeader;->nkeys:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    :cond_2
    iput-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    .line 351
    iput-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    .line 342
    .end local v0    # "nk":[Ljava/lang/String;
    .end local v1    # "nv":[Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 303
    :try_start_0
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V

    .line 304
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    aput-object p1, v0, v1

    .line 305
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    aput-object p2, v0, v1

    .line 306
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 302
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized filterAndAddHeaders([Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 12
    .param p1, "excludeList"    # [Ljava/lang/String;
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

    .prologue
    .local p2, "include":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    monitor-enter p0

    .line 240
    const/4 v9, 0x0

    .line 241
    .local v9, "skipIt":Z
    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v8, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    .line 243
    if-eqz p1, :cond_0

    .line 246
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v10, p1

    if-ge v3, v10, :cond_0

    .line 247
    aget-object v10, p1, v3

    if-eqz v10, :cond_2

    .line 248
    aget-object v10, p1, v3

    iget-object v11, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v11, v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 247
    if-eqz v10, :cond_2

    .line 249
    const/4 v9, 0x1

    .line 254
    .end local v3    # "j":I
    :cond_0
    if-nez v9, :cond_3

    .line 255
    iget-object v10, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 256
    .local v7, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v7, :cond_1

    .line 257
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .restart local v7    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-interface {v8, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_1
    iget-object v10, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v2    # "i":I
    .end local v7    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 246
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v8    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 263
    .end local v3    # "j":I
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 267
    :cond_4
    if-eqz p2, :cond_6

    .line 268
    :try_start_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 269
    .local v0, "entries":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 270
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 271
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 272
    .local v6, "l":Ljava/util/List;
    if-nez v6, :cond_5

    .line 273
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "l":Ljava/util/List;
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .restart local v6    # "l":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v8, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 280
    .end local v0    # "entries":Ljava/util/Iterator;
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v6    # "l":Ljava/util/List;
    :cond_6
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "key$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 281
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 284
    .end local v4    # "key":Ljava/lang/String;
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
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    const/4 v6, 0x0

    .line 148
    .local v6, "found":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v7, v0, :cond_0

    .line 149
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v0, v0, v7

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 151
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v0, v0, v7

    const-string/jumbo v3, "NTLM "

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    .line 149
    if-eqz v0, :cond_2

    .line 152
    const/4 v6, 0x1

    .line 156
    :cond_0
    if-eqz v6, :cond_6

    .line 157
    const/4 v8, 0x0

    .line 158
    .local v8, "j":I
    const/4 v7, 0x0

    :goto_1
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v7, v0, :cond_5

    .line 159
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    const-string/jumbo v0, "Negotiate"

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    const-string/jumbo v0, "Kerberos"

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 159
    if-eqz v0, :cond_3

    .line 158
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 148
    .end local v8    # "j":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 164
    .restart local v8    # "j":I
    :cond_3
    if-eq v7, v8, :cond_4

    .line 165
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v3, v3, v7

    aput-object v3, v0, v8

    .line 166
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v3, v3, v7

    aput-object v3, v0, v8

    .line 168
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 170
    :cond_5
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-eq v8, v0, :cond_6

    .line 171
    iput v8, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .line 172
    return v1

    .line 175
    .end local v8    # "j":I
    :cond_6
    return v2
.end method

.method public declared-synchronized findNextValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "foundV":Z
    if-nez p1, :cond_2

    .line 125
    :try_start_0
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .local v1, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_5

    .line 126
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 127
    if-eqz v0, :cond_1

    .line 128
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v2, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 129
    :cond_1
    :try_start_1
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-ne v2, p2, :cond_0

    .line 130
    const/4 v0, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "i":I
    :cond_2
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .restart local v1    # "i":I
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_5

    .line 133
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    if-eqz v0, :cond_4

    .line 135
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v2, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 136
    :cond_4
    :try_start_2
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v2, v2, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v2, p2, :cond_3

    .line 137
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    monitor-exit p0

    .line 138
    return-object v3

    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized findValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 80
    if-nez p1, :cond_1

    .line 81
    :try_start_0
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 82
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 83
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 85
    .end local v0    # "i":I
    :cond_1
    :try_start_1
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 86
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_3
    monitor-exit p0

    .line 89
    return-object v2

    .end local v0    # "i":I
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

    .prologue
    monitor-enter p0

    .line 232
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
    .param p1, "excludeList"    # [Ljava/lang/String;
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

    .prologue
    monitor-enter p0

    .line 236
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
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 94
    :try_start_0
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 95
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 96
    if-eqz p1, :cond_0

    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 95
    if-eqz v1, :cond_0

    :cond_1
    monitor-exit p0

    .line 97
    return v0

    .line 98
    :cond_2
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    .prologue
    monitor-enter p0

    .line 102
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

    .line 103
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
    .param p1, "n"    # I

    .prologue
    monitor-enter p0

    .line 107
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

    .line 108
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
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    if-nez p1, :cond_0

    .line 442
    return-void

    .line 443
    :cond_0
    const/16 v10, 0xa

    new-array v8, v10, [C

    .line 444
    .local v8, "s":[C
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 445
    .local v1, "firstc":I
    :goto_0
    const/16 v10, 0xa

    if-eq v1, v10, :cond_d

    const/16 v10, 0xd

    if-eq v1, v10, :cond_d

    if-ltz v1, :cond_d

    .line 447
    const/4 v4, -0x1

    .line 449
    .local v4, "keyend":I
    const/16 v10, 0x20

    if-le v1, v10, :cond_2

    const/4 v2, 0x1

    .line 446
    .local v2, "inKey":Z
    :goto_1
    const/4 v10, 0x0

    .line 450
    const/4 v5, 0x1

    .local v5, "len":I
    int-to-char v11, v1

    aput-char v11, v8, v10

    .line 452
    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "c":I
    if-ltz v0, :cond_7

    .line 453
    sparse-switch v0, :sswitch_data_0

    .line 478
    :goto_3
    array-length v10, v8

    if-lt v5, v10, :cond_1

    .line 479
    array-length v10, v8

    mul-int/lit8 v10, v10, 0x2

    new-array v7, v10, [C

    .line 480
    .local v7, "ns":[C
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v10, v7, v11, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 481
    move-object v8, v7

    .line 483
    .end local v7    # "ns":[C
    :cond_1
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "len":I
    .local v6, "len":I
    int-to-char v10, v0

    aput-char v10, v8, v5

    move v5, v6

    .end local v6    # "len":I
    .restart local v5    # "len":I
    goto :goto_2

    .line 449
    .end local v0    # "c":I
    .end local v2    # "inKey":Z
    .end local v5    # "len":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "inKey":Z
    goto :goto_1

    .line 455
    .restart local v0    # "c":I
    .restart local v5    # "len":I
    :sswitch_0
    if-eqz v2, :cond_3

    if-lez v5, :cond_3

    .line 456
    move v4, v5

    .line 457
    :cond_3
    const/4 v2, 0x0

    .line 458
    goto :goto_3

    .line 460
    :sswitch_1
    const/16 v0, 0x20

    .line 462
    :sswitch_2
    const/4 v2, 0x0

    .line 463
    goto :goto_3

    .line 466
    :sswitch_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 467
    const/16 v10, 0xd

    if-ne v0, v10, :cond_4

    const/16 v10, 0xa

    if-ne v1, v10, :cond_4

    .line 468
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 469
    const/16 v10, 0xd

    if-ne v1, v10, :cond_4

    .line 470
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 472
    :cond_4
    const/16 v10, 0xa

    if-eq v1, v10, :cond_5

    const/16 v10, 0xd

    if-ne v1, v10, :cond_6

    .line 487
    :cond_5
    :goto_4
    if-lez v5, :cond_8

    add-int/lit8 v10, v5, -0x1

    aget-char v10, v8, v10

    const/16 v11, 0x20

    if-gt v10, v11, :cond_8

    .line 488
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 472
    :cond_6
    const/16 v10, 0x20

    if-gt v1, v10, :cond_5

    .line 475
    const/16 v0, 0x20

    .line 476
    goto :goto_3

    .line 485
    :cond_7
    const/4 v1, -0x1

    goto :goto_4

    .line 490
    :cond_8
    if-gtz v4, :cond_a

    .line 491
    const/4 v3, 0x0

    .line 492
    .local v3, "k":Ljava/lang/String;
    const/4 v4, 0x0

    .line 501
    .end local v3    # "k":Ljava/lang/String;
    :cond_9
    if-lt v4, v5, :cond_c

    .line 502
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    .line 505
    .local v9, "v":Ljava/lang/String;
    :goto_5
    invoke-virtual {p0, v3, v9}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 494
    .end local v9    # "v":Ljava/lang/String;
    :cond_a
    const/4 v10, 0x0

    invoke-static {v8, v10, v4}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, "k":Ljava/lang/String;
    if-ge v4, v5, :cond_b

    aget-char v10, v8, v4

    const/16 v11, 0x3a

    if-ne v10, v11, :cond_b

    .line 496
    add-int/lit8 v4, v4, 0x1

    .line 497
    :cond_b
    :goto_6
    if-ge v4, v5, :cond_9

    aget-char v10, v8, v4

    const/16 v11, 0x20

    if-gt v10, v11, :cond_9

    .line 498
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 504
    .end local v3    # "k":Ljava/lang/String;
    :cond_c
    sub-int v10, v5, v4

    invoke-static {v8, v4, v10}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "v":Ljava/lang/String;
    goto :goto_5

    .line 440
    .end local v0    # "c":I
    .end local v2    # "inKey":Z
    .end local v4    # "keyend":I
    .end local v5    # "len":I
    .end local v9    # "v":Ljava/lang/String;
    :cond_d
    return-void

    .line 453
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
    .param p1, "k"    # Ljava/lang/String;
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

    .prologue
    .line 228
    new-instance v0, Lsun/net/www/MessageHeader$HeaderIterator;

    invoke-direct {v0, p0, p1, p0}, Lsun/net/www/MessageHeader$HeaderIterator;-><init>(Lsun/net/www/MessageHeader;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public parseHeader(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    monitor-enter p0

    .line 434
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 436
    invoke-virtual {p0, p1}, Lsun/net/www/MessageHeader;->mergeHeader(Ljava/io/InputStream;)V

    .line 432
    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 312
    :try_start_0
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V

    .line 313
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 314
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 315
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 313
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 317
    :cond_0
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 318
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 319
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 311
    return-void

    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized print(Ljava/io/PrintStream;)V
    .locals 4
    .param p1, "p"    # Ljava/io/PrintStream;

    .prologue
    monitor-enter p0

    .line 291
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v1, :cond_2

    .line 292
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 294
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

    .line 293
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 294
    const-string/jumbo v2, "\r\n"

    .line 293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 291
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_1

    .line 296
    :cond_2
    const-string/jumbo v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 290
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 5
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 363
    if-nez p1, :cond_2

    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v2, :cond_5

    .line 365
    :goto_1
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v2, :cond_1

    .line 366
    move v1, v0

    .local v1, "j":I
    :goto_2
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 367
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 368
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 370
    :cond_0
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v1    # "j":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 364
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    :try_start_1
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v2, :cond_5

    .line 375
    :goto_4
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v2, :cond_4

    .line 376
    move v1, v0

    .restart local v1    # "j":I
    :goto_5
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    .line 377
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 378
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 380
    :cond_3
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 374
    .end local v1    # "j":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    monitor-exit p0

    .line 362
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 67
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .line 70
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 66
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "k"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 328
    :try_start_0
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    if-gez p1, :cond_0

    monitor-exit p0

    .line 330
    return-void

    .line 331
    :cond_0
    :try_start_1
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-lt p1, v0, :cond_1

    .line 332
    invoke-virtual {p0, p2, p3}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 327
    return-void

    .line 334
    :cond_1
    :try_start_2
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 335
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
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 391
    :try_start_0
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 392
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aput-object p2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 394
    return-void

    .line 396
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 390
    return-void

    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 404
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 405
    invoke-virtual {p0, p1, p2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 403
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    .prologue
    monitor-enter p0

    .line 510
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

    .line 511
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v2, :cond_0

    .line 512
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

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    .line 514
    return-object v1

    .end local v0    # "i":I
    .end local v1    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
