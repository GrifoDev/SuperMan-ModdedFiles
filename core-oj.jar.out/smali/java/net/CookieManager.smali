.class public Ljava/net/CookieManager;
.super Ljava/net/CookieHandler;
.source "CookieManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/CookieManager$CookiePathComparator;
    }
.end annotation


# instance fields
.field private cookieJar:Ljava/net/CookieStore;

.field private policyCallback:Ljava/net/CookiePolicy;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Ljava/net/CookieManager;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, v0, v0}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V
    .locals 1
    .param p1, "store"    # Ljava/net/CookieStore;
    .param p2, "cookiePolicy"    # Ljava/net/CookiePolicy;

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-direct {p0}, Ljava/net/CookieHandler;-><init>()V

    .line 125
    iput-object v0, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    .line 157
    if-nez p2, :cond_0

    sget-object p2, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    .end local p2    # "cookiePolicy":Ljava/net/CookiePolicy;
    :cond_0
    iput-object p2, p0, Ljava/net/CookieManager;->policyCallback:Ljava/net/CookiePolicy;

    .line 161
    if-nez p1, :cond_1

    .line 162
    new-instance v0, Ljava/net/InMemoryCookieStore;

    invoke-direct {v0}, Ljava/net/InMemoryCookieStore;-><init>()V

    iput-object v0, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    .line 154
    :goto_0
    return-void

    .line 164
    :cond_1
    iput-object p1, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    goto :goto_0
.end method

.method private static isInPortList(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "lst"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 365
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 366
    .local v0, "i":I
    const/4 v2, -0x1

    .line 367
    .local v2, "val":I
    :goto_0
    if-lez v0, :cond_1

    .line 369
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 370
    if-ne v2, p1, :cond_0

    .line 371
    return v5

    .line 373
    :catch_0
    move-exception v1

    .line 375
    :cond_0
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 376
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 378
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 380
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 381
    if-ne v2, p1, :cond_2

    .line 382
    return v5

    .line 384
    :catch_1
    move-exception v1

    .line 387
    :cond_2
    return v4
.end method

.method private static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 398
    if-nez p0, :cond_0

    .line 399
    const-string/jumbo p0, ""

    .line 402
    :cond_0
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 406
    :cond_1
    return-object p0
.end method

.method private static pathMatches(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .locals 2
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    .line 394
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/CookieManager;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/CookieManager;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    .line 357
    :try_start_0
    iget-object v1, p0, Ljava/net/CookieManager;->policyCallback:Ljava/net/CookiePolicy;

    invoke-interface {v1, p1, p2}, Ljava/net/CookiePolicy;->shouldAccept(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "ignored":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private sortByPath(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    new-instance v6, Ljava/net/CookieManager$CookiePathComparator;

    invoke-direct {v6}, Ljava/net/CookieManager$CookiePathComparator;-><init>()V

    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 417
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .local v5, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    .line 424
    .local v4, "minVersion":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cookie$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 425
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v6

    if-ge v6, v4, :cond_0

    .line 426
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v4

    goto :goto_0

    .line 430
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    :cond_1
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 431
    const-string/jumbo v6, "$Version=\"1\"; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 435
    if-eqz v3, :cond_3

    .line 436
    const-string/jumbo v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/HttpCookie;

    invoke-virtual {v6}, Ljava/net/HttpCookie;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 442
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v2, "cookieHeader":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    return-object v2
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    .locals 10
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    .local p2, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 202
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Argument is null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 206
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 208
    .local v3, "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v8, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    if-nez v8, :cond_2

    .line 209
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    return-object v8

    .line 212
    :cond_2
    const-string/jumbo v8, "https"

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 213
    .local v7, "secureLink":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v8, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    invoke-interface {v8, p1}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cookie$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 218
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-static {p1, v0}, Ljava/net/CookieManager;->pathMatches(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 219
    if-nez v7, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getSecure()Z

    move-result v8

    if-nez v8, :cond_3

    .line 222
    :cond_4
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v6

    .line 223
    .local v6, "ports":Ljava/lang/String;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 232
    :cond_5
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_6
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v5

    .line 225
    .local v5, "port":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_7

    .line 226
    const-string/jumbo v8, "https"

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v5, 0x1bb

    .line 228
    :cond_7
    :goto_1
    invoke-static {v6, v5}, Ljava/net/CookieManager;->isInPortList(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 229
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_8
    const/16 v5, 0x50

    goto :goto_1

    .line 236
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v5    # "port":I
    .end local v6    # "ports":Ljava/lang/String;
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 237
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    return-object v8

    .line 241
    :cond_a
    invoke-direct {p0, v4}, Ljava/net/CookieManager;->sortByPath(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 243
    .local v2, "cookieHeader":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v8, "Cookie"

    invoke-interface {v3, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    return-object v8
.end method

.method public getCookieStore()Ljava/net/CookieStore;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/util/Map;)V
    .locals 17
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    .local p2, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 254
    :cond_0
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "Argument is null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 259
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    if-nez v15, :cond_2

    .line 260
    return-void

    .line 262
    :cond_2
    const-string/jumbo v15, "java.net.CookieManager"

    invoke-static {v15}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v11

    .line 263
    .local v11, "logger":Lsun/util/logging/PlatformLogger;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "headerKey$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 266
    .local v6, "headerKey":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 267
    const-string/jumbo v15, "Set-Cookie2"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 268
    const-string/jumbo v15, "Set-Cookie"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    .line 267
    if-eqz v15, :cond_3

    .line 275
    :cond_4
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "headerValue$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 279
    .local v8, "headerValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 287
    .local v4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_6
    :goto_1
    :try_start_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "cookie$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/HttpCookie;

    .line 288
    .local v2, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v2}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_d

    .line 291
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 292
    .local v12, "path":Ljava/lang/String;
    const-string/jumbo v15, "/"

    invoke-virtual {v12, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 293
    const-string/jumbo v15, "/"

    invoke-virtual {v12, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 294
    .local v10, "i":I
    if-lez v10, :cond_c

    .line 295
    add-int/lit8 v15, v10, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 300
    .end local v10    # "i":I
    :cond_8
    :goto_3
    invoke-virtual {v2, v12}, Ljava/net/HttpCookie;->setPath(Ljava/lang/String;)V

    .line 312
    .end local v12    # "path":Ljava/lang/String;
    :cond_9
    invoke-virtual {v2}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_a

    .line 313
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    .line 315
    :cond_a
    invoke-virtual {v2}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v14

    .line 316
    .local v14, "ports":Ljava/lang/String;
    if-eqz v14, :cond_10

    .line 317
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getPort()I

    move-result v13

    .line 318
    .local v13, "port":I
    const/4 v15, -0x1

    if-ne v13, v15, :cond_b

    .line 319
    const-string/jumbo v15, "https"

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    const/16 v13, 0x1bb

    .line 321
    :cond_b
    :goto_4
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 324
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/net/HttpCookie;->setPortlist(Ljava/lang/String;)V

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;->shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 326
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    move-object/from16 v0, p1

    invoke-interface {v15, v0, v2}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    goto/16 :goto_2

    .line 343
    .end local v2    # "cookie":Ljava/net/HttpCookie;
    .end local v3    # "cookie$iterator":Ljava/util/Iterator;
    .end local v4    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v13    # "port":I
    .end local v14    # "ports":Ljava/lang/String;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_0

    .line 280
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v5

    .line 282
    .restart local v5    # "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 283
    .restart local v4    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    const/16 v15, 0x3e8

    invoke-virtual {v11, v15}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 284
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Invalid cookie for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 297
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "cookie":Ljava/net/HttpCookie;
    .restart local v3    # "cookie$iterator":Ljava/util/Iterator;
    .restart local v10    # "i":I
    .restart local v12    # "path":Ljava/lang/String;
    :cond_c
    const-string/jumbo v12, "/"

    goto/16 :goto_3

    .line 303
    .end local v10    # "i":I
    .end local v12    # "path":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Ljava/net/CookieManager;->pathMatches(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v15

    if-nez v15, :cond_9

    goto/16 :goto_2

    .line 319
    .restart local v13    # "port":I
    .restart local v14    # "ports":Ljava/lang/String;
    :cond_e
    const/16 v13, 0x50

    goto :goto_4

    .line 332
    :cond_f
    invoke-static {v14, v13}, Ljava/net/CookieManager;->isInPortList(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 333
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;->shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v15

    .line 332
    if-eqz v15, :cond_7

    .line 334
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    move-object/from16 v0, p1

    invoke-interface {v15, v0, v2}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    goto/16 :goto_2

    .line 338
    .end local v13    # "port":I
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;->shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 339
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    move-object/from16 v0, p1

    invoke-interface {v15, v0, v2}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 250
    .end local v2    # "cookie":Ljava/net/HttpCookie;
    .end local v3    # "cookie$iterator":Ljava/util/Iterator;
    .end local v4    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v6    # "headerKey":Ljava/lang/String;
    .end local v8    # "headerValue":Ljava/lang/String;
    .end local v9    # "headerValue$iterator":Ljava/util/Iterator;
    .end local v14    # "ports":Ljava/lang/String;
    :cond_11
    return-void
.end method

.method public setCookiePolicy(Ljava/net/CookiePolicy;)V
    .locals 0
    .param p1, "cookiePolicy"    # Ljava/net/CookiePolicy;

    .prologue
    .line 182
    if-eqz p1, :cond_0

    iput-object p1, p0, Ljava/net/CookieManager;->policyCallback:Ljava/net/CookiePolicy;

    .line 181
    :cond_0
    return-void
.end method
