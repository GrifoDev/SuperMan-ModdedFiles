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

    invoke-static {p0}, Ljava/net/CookieManager;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/net/CookieHandler;-><init>()V

    iput-object v0, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    if-nez p2, :cond_0

    sget-object p2, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    :cond_0
    iput-object p2, p0, Ljava/net/CookieManager;->policyCallback:Ljava/net/CookiePolicy;

    if-nez p1, :cond_1

    new-instance v0, Ljava/net/InMemoryCookieStore;

    invoke-direct {v0}, Ljava/net/InMemoryCookieStore;-><init>()V

    iput-object v0, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    goto :goto_0
.end method

.method private static isInPortList(Ljava/lang/String;I)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    :goto_0
    if-lez v0, :cond_1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, p1, :cond_0

    return v5

    :catch_0
    move-exception v1

    :cond_0
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-ne v2, p1, :cond_2

    return v5

    :catch_1
    move-exception v1

    :cond_2
    return v4
.end method

.method private static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    :cond_0
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static pathMatches(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .locals 2

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

    :try_start_0
    iget-object v1, p0, Ljava/net/CookieManager;->policyCallback:Ljava/net/CookiePolicy;

    invoke-interface {v1, p1, p2}, Ljava/net/CookiePolicy;->shouldAccept(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

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

    new-instance v6, Ljava/net/CookieManager$CookiePathComparator;

    invoke-direct {v6}, Ljava/net/CookieManager$CookiePathComparator;-><init>()V

    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v6

    if-ge v6, v4, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    const-string/jumbo v6, "$Version=\"1\"; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    if-eqz v3, :cond_3

    const-string/jumbo v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/HttpCookie;

    invoke-virtual {v6}, Ljava/net/HttpCookie;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    .locals 10
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

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Argument is null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v8, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    if-nez v8, :cond_2

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    return-object v8

    :cond_2
    const-string/jumbo v8, "https"

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    invoke-interface {v8, p1}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    invoke-static {p1, v0}, Ljava/net/CookieManager;->pathMatches(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-nez v7, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getSecure()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_4
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_7

    const-string/jumbo v8, "https"

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v5, 0x1bb

    :cond_7
    :goto_1
    invoke-static {v6, v5}, Ljava/net/CookieManager;->isInPortList(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    const/16 v5, 0x50

    goto :goto_1

    :cond_9
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    return-object v8

    :cond_a
    invoke-direct {p0, v4}, Ljava/net/CookieManager;->sortByPath(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v8, "Cookie"

    invoke-interface {v3, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    return-object v8
.end method

.method public getCookieStore()Ljava/net/CookieStore;
    .locals 1

    iget-object v0, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/util/Map;)V
    .locals 17
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

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "Argument is null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    if-nez v15, :cond_2

    return-void

    :cond_2
    const-string/jumbo v15, "java.net.CookieManager"

    invoke-static {v15}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_3

    const-string/jumbo v15, "Set-Cookie2"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string/jumbo v15, "Set-Cookie"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    :cond_4
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :try_start_0
    invoke-static {v8}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :cond_6
    :goto_1
    :try_start_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/HttpCookie;

    invoke-virtual {v2}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v15, "/"

    invoke-virtual {v12, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string/jumbo v15, "/"

    invoke-virtual {v12, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_c

    add-int/lit8 v15, v10, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :cond_8
    :goto_3
    invoke-virtual {v2, v12}, Ljava/net/HttpCookie;->setPath(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v2}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v2}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getPort()I

    move-result v13

    const/4 v15, -0x1

    if-ne v13, v15, :cond_b

    const-string/jumbo v15, "https"

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    const/16 v13, 0x1bb

    :cond_b
    :goto_4
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_f

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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;->shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    move-object/from16 v0, p1

    invoke-interface {v15, v0, v2}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    goto/16 :goto_2

    :catch_0
    move-exception v5

    goto/16 :goto_0

    :catch_1
    move-exception v5

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/16 v15, 0x3e8

    invoke-virtual {v11, v15}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v15

    if-eqz v15, :cond_6

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

    :cond_c
    const-string/jumbo v12, "/"

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Ljava/net/CookieManager;->pathMatches(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v15

    if-nez v15, :cond_9

    goto/16 :goto_2

    :cond_e
    const/16 v13, 0x50

    goto :goto_4

    :cond_f
    invoke-static {v14, v13}, Ljava/net/CookieManager;->isInPortList(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;->shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    move-object/from16 v0, p1

    invoke-interface {v15, v0, v2}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;->shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    move-object/from16 v0, p1

    invoke-interface {v15, v0, v2}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_11
    return-void
.end method

.method public setCookiePolicy(Ljava/net/CookiePolicy;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Ljava/net/CookieManager;->policyCallback:Ljava/net/CookiePolicy;

    :cond_0
    return-void
.end method
