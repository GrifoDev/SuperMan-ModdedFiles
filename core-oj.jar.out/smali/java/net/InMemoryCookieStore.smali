.class public Ljava/net/InMemoryCookieStore;
.super Ljava/lang/Object;
.source "InMemoryCookieStore.java"

# interfaces
.implements Ljava/net/CookieStore;


# instance fields
.field private final applyMCompatibility:Z

.field private lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private uriIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/net/InMemoryCookieStore;-><init>(I)V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "targetSdkVersion"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    .line 51
    iput-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    .line 64
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 65
    const/16 v1, 0x17

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Ljava/net/InMemoryCookieStore;->applyMCompatibility:Z

    .line 62
    return-void
.end method

.method private addIndex(Ljava/util/Map;Ljava/lang/Object;Ljava/net/HttpCookie;)V
    .locals 1
    .param p3, "cookie"    # Ljava/net/HttpCookie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;>;TT;",
            "Ljava/net/HttpCookie;",
            ")V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "indexStore":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    .local p2, "index":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 341
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz v0, :cond_0

    .line 343
    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 345
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :goto_0
    return-void

    .line 347
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .restart local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;
    .locals 7
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    const/4 v1, 0x0

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "effectiveURI":Ljava/net/URI;
    if-nez p1, :cond_0

    .line 361
    return-object v1

    .line 364
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .end local v0    # "effectiveURI":Ljava/net/URI;
    const-string/jumbo v1, "http"

    .line 365
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 366
    const/4 v3, 0x0

    .line 367
    const/4 v4, 0x0

    .line 368
    const/4 v5, 0x0

    .line 364
    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .local v0, "effectiveURI":Ljava/net/URI;
    :goto_0
    return-object v0

    .line 370
    .end local v0    # "effectiveURI":Ljava/net/URI;
    :catch_0
    move-exception v6

    .line 371
    .local v6, "ignored":Ljava/net/URISyntaxException;
    move-object v0, p1

    .restart local v0    # "effectiveURI":Ljava/net/URI;
    goto :goto_0
.end method

.method private getInternal1(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 9
    .param p3, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .local p2, "cookieIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v6, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/HttpCookie;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 275
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/URI;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 276
    .local v5, "lst":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 277
    .local v0, "c":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "domain":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0, v2, p3}, Ljava/net/InMemoryCookieStore;->netscapeDomainMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 279
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-static {v2, p3}, Ljava/net/HttpCookie;->domainMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 278
    if-eqz v7, :cond_0

    .line 282
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v7

    if-nez v7, :cond_3

    .line 284
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 285
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 288
    :cond_3
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 293
    .end local v0    # "c":Ljava/net/HttpCookie;
    .end local v2    # "domain":Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 294
    .restart local v0    # "c":Ljava/net/HttpCookie;
    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 297
    .end local v0    # "c":Ljava/net/HttpCookie;
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 270
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/URI;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    .end local v5    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_6
    return-void
.end method

.method private getInternal2(Ljava/util/List;Ljava/util/Map;Ljava/lang/Comparable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/util/Map",
            "<TT;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .local p2, "cookieIndex":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    .local p3, "comparator":Ljava/lang/Comparable;, "TT;"
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "index$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 311
    .local v1, "index":Ljava/lang/Comparable;, "TT;"
    if-eq v1, p3, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {p3, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_0

    .line 312
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 314
    .local v3, "indexedCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz v3, :cond_0

    .line 315
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 316
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 317
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 319
    .local v0, "ck":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v5

    if-nez v5, :cond_3

    .line 321
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 322
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 324
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 307
    .end local v0    # "ck":Ljava/net/HttpCookie;
    .end local v1    # "index":Ljava/lang/Comparable;, "TT;"
    .end local v3    # "indexedCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_4
    return-void
.end method

.method private netscapeDomainMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/16 v8, 0x2e

    const/4 v6, 0x0

    .line 223
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 224
    :cond_0
    return v6

    .line 228
    :cond_1
    const-string/jumbo v7, ".local"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 229
    .local v4, "isLocalDomain":Z
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 230
    .local v2, "embeddedDotInDomain":I
    if-nez v2, :cond_2

    .line 231
    invoke-virtual {p1, v8, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 233
    :cond_2
    if-nez v4, :cond_4

    if-eq v2, v9, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_4

    .line 234
    :cond_3
    return v6

    .line 238
    :cond_4
    invoke-virtual {p2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 239
    .local v3, "firstDotInHost":I
    if-ne v3, v9, :cond_5

    if-eqz v4, :cond_5

    .line 240
    return v10

    .line 243
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 244
    .local v1, "domainLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v5, v7, v1

    .line 245
    .local v5, "lengthDiff":I
    if-nez v5, :cond_6

    .line 247
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    return v6

    .line 248
    :cond_6
    if-lez v5, :cond_9

    .line 250
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "D":Ljava/lang/String;
    iget-boolean v7, p0, Ljava/net/InMemoryCookieStore;->applyMCompatibility:Z

    if-eqz v7, :cond_7

    const-string/jumbo v7, "."

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 259
    :cond_7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    return v6

    .line 256
    :cond_8
    return v6

    .line 260
    .end local v0    # "D":Ljava/lang/String;
    :cond_9
    if-ne v5, v9, :cond_b

    .line 262
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_a

    .line 263
    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 262
    :cond_a
    return v6

    .line 266
    :cond_b
    return v6
.end method


# virtual methods
.method public add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .locals 4
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    .line 73
    if-nez p2, :cond_0

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "cookie is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iget-object v0, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 79
    :try_start_0
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getMaxAge()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-direct {p0, p1}, Ljava/net/InMemoryCookieStore;->getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Ljava/net/InMemoryCookieStore;->addIndex(Ljava/util/Map;Ljava/lang/Object;Ljava/net/HttpCookie;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    iget-object v0, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 71
    return-void

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 82
    throw v0
.end method

.method public get(Ljava/net/URI;)Ljava/util/List;
    .locals 3
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "uri is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 105
    :try_start_0
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ljava/net/InMemoryCookieStore;->getInternal1(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-direct {p0, p1}, Ljava/net/InMemoryCookieStore;->getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ljava/net/InMemoryCookieStore;->getInternal2(Ljava/util/List;Ljava/util/Map;Ljava/lang/Comparable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 112
    return-object v0

    .line 108
    :catchall_0
    move-exception v1

    .line 109
    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 108
    throw v1
.end method

.method public getCookies()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v4, "rt":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v5, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 123
    :try_start_0
    iget-object v5, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "list$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 124
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 125
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 127
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 134
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v3    # "list$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    .line 135
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 136
    iget-object v6, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 134
    throw v5

    .line 129
    .restart local v0    # "cookie":Ljava/net/HttpCookie;
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .restart local v3    # "list$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 130
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_3
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 136
    iget-object v5, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 139
    return-object v4
.end method

.method public getURIs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v1, "uris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 151
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 152
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 155
    iget-object v3, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    iget-object v3, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 153
    return-object v2

    .line 154
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :catchall_0
    move-exception v2

    .line 155
    iget-object v3, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    iget-object v3, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 154
    throw v2
.end method

.method public remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .locals 3
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "ck"    # Ljava/net/HttpCookie;

    .prologue
    const/4 v2, 0x0

    .line 166
    if-nez p2, :cond_0

    .line 167
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "cookie is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_0
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 172
    :try_start_0
    invoke-direct {p0, p1}, Ljava/net/InMemoryCookieStore;->getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 173
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    .line 184
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 174
    return v2

    .line 176
    :cond_1
    :try_start_1
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 177
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz v0, :cond_2

    .line 178
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 184
    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 178
    return v1

    .line 184
    :cond_2
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    return v2

    .line 183
    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :catchall_0
    move-exception v1

    .line 184
    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 183
    throw v1
.end method

.method public removeAll()Z
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 194
    const/4 v0, 0x0

    .line 197
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 198
    :goto_0
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 203
    return v0

    .line 197
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v1

    .line 200
    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 199
    throw v1
.end method
