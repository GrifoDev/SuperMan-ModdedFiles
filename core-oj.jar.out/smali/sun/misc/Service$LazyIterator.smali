.class Lsun/misc/Service$LazyIterator;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyIterator"
.end annotation


# instance fields
.field configs:Ljava/util/Enumeration;

.field loader:Ljava/lang/ClassLoader;

.field nextName:Ljava/lang/String;

.field pending:Ljava/util/Iterator;

.field returned:Ljava/util/Set;

.field service:Ljava/lang/Class;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;

    iput-object v1, p0, Lsun/misc/Service$LazyIterator;->pending:Ljava/util/Iterator;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lsun/misc/Service$LazyIterator;->returned:Ljava/util/Set;

    iput-object v1, p0, Lsun/misc/Service$LazyIterator;->nextName:Ljava/lang/String;

    iput-object p1, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    iput-object p2, p0, Lsun/misc/Service$LazyIterator;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;Lsun/misc/Service$LazyIterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsun/misc/Service$LazyIterator;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    const/4 v5, 0x1

    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->nextName:Ljava/lang/String;

    if-eqz v2, :cond_0

    return v5

    :cond_0
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;

    if-nez v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "META-INF/services/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->loader:Ljava/lang/ClassLoader;

    if-nez v2, :cond_2

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    iput-object v2, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->pending:Ljava/util/Iterator;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->pending:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->pending:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lsun/misc/Service$LazyIterator;->nextName:Ljava/lang/String;

    return v5

    :cond_2
    :try_start_1
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    iput-object v2, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lsun/misc/Service;->-wrap1(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    return v2

    :cond_4
    iget-object v3, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    iget-object v4, p0, Lsun/misc/Service$LazyIterator;->returned:Ljava/util/Set;

    invoke-static {v3, v2, v4}, Lsun/misc/Service;->-wrap0(Ljava/lang/Class;Ljava/net/URL;Ljava/util/Set;)Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lsun/misc/Service$LazyIterator;->pending:Ljava/util/Iterator;

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p0}, Lsun/misc/Service$LazyIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/NoSuchElementException;

    invoke-direct {v4}, Ljava/util/NoSuchElementException;-><init>()V

    throw v4

    :cond_0
    iget-object v1, p0, Lsun/misc/Service$LazyIterator;->nextName:Ljava/lang/String;

    iput-object v7, p0, Lsun/misc/Service$LazyIterator;->nextName:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lsun/misc/Service$LazyIterator;->loader:Ljava/lang/ClassLoader;

    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v4, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " not a subtype"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lsun/misc/Service;->-wrap1(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    :try_start_1
    iget-object v4, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v2

    iget-object v4, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lsun/misc/Service;->-wrap1(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v3

    iget-object v4, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " could not be instantiated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lsun/misc/Service;->-wrap2(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v7
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
