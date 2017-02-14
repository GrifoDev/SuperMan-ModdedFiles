.class public abstract Lsun/util/resources/OpenListResourceBundle;
.super Ljava/util/ResourceBundle;
.source "OpenListResourceBundle.java"


# instance fields
.field private lookup:Ljava/util/Map;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/util/resources/OpenListResourceBundle;->lookup:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized loadLookup()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lsun/util/resources/OpenListResourceBundle;->lookup:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/util/resources/OpenListResourceBundle;->getContents()[[Ljava/lang/Object;

    move-result-object v0

    array-length v5, v0

    invoke-virtual {p0, v5}, Lsun/util/resources/OpenListResourceBundle;->createMap(I)Ljava/util/Map;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_3

    aget-object v5, v0, v1

    const/4 v6, 0x0

    aget-object v2, v5, v6

    check-cast v2, Ljava/lang/String;

    aget-object v5, v0, v1

    const/4 v6, 0x1

    aget-object v4, v5, v6

    if-eqz v2, :cond_1

    if-nez v4, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_2
    :try_start_2
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iput-object v3, p0, Lsun/util/resources/OpenListResourceBundle;->lookup:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void
.end method


# virtual methods
.method protected createMap(I)Ljava/util/Map;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method protected abstract getContents()[[Ljava/lang/Object;
.end method

.method public getKeys()Ljava/util/Enumeration;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    new-instance v2, Lsun/util/ResourceBundleEnumeration;

    invoke-virtual {p0}, Lsun/util/resources/OpenListResourceBundle;->handleGetKeys()Ljava/util/Set;

    move-result-object v3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-direct {v2, v3, v1}, Lsun/util/ResourceBundleEnumeration;-><init>(Ljava/util/Set;Ljava/util/Enumeration;)V

    return-object v2
.end method

.method public getParent()Lsun/util/resources/OpenListResourceBundle;
    .locals 1

    iget-object v0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    check-cast v0, Lsun/util/resources/OpenListResourceBundle;

    return-object v0
.end method

.method public handleGetKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lsun/util/resources/OpenListResourceBundle;->loadLookupTablesIfNecessary()V

    iget-object v0, p0, Lsun/util/resources/OpenListResourceBundle;->lookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lsun/util/resources/OpenListResourceBundle;->loadLookupTablesIfNecessary()V

    iget-object v0, p0, Lsun/util/resources/OpenListResourceBundle;->lookup:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method loadLookupTablesIfNecessary()V
    .locals 1

    iget-object v0, p0, Lsun/util/resources/OpenListResourceBundle;->lookup:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lsun/util/resources/OpenListResourceBundle;->loadLookup()V

    :cond_0
    return-void
.end method
