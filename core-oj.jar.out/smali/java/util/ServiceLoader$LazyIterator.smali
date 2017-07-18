.class Ljava/util/ServiceLoader$LazyIterator;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ServiceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TS;>;"
    }
.end annotation


# instance fields
.field configs:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field loader:Ljava/lang/ClassLoader;

.field nextName:Ljava/lang/String;

.field pending:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field service:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TS;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/ServiceLoader;


# direct methods
.method private constructor <init>(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object p1, p0, Ljava/util/ServiceLoader$LazyIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;

    iput-object v0, p0, Ljava/util/ServiceLoader$LazyIterator;->pending:Ljava/util/Iterator;

    iput-object v0, p0, Ljava/util/ServiceLoader$LazyIterator;->nextName:Ljava/lang/String;

    iput-object p2, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    iput-object p3, p0, Ljava/util/ServiceLoader$LazyIterator;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/util/ServiceLoader$LazyIterator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/util/ServiceLoader$LazyIterator;-><init>(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->nextName:Ljava/lang/String;

    if-eqz v2, :cond_0

    return v5

    :cond_0
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;

    if-nez v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "META-INF/services/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->loader:Ljava/lang/ClassLoader;

    if-nez v2, :cond_2

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    iput-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->pending:Ljava/util/Iterator;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->pending:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->pending:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->nextName:Ljava/lang/String;

    return v5

    :cond_2
    :try_start_1
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    iput-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    const-string/jumbo v3, "Error locating configuration files"

    invoke-static {v2, v3, v1}, Ljava/util/ServiceLoader;->-wrap1(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    return v2

    :cond_4
    iget-object v3, p0, Ljava/util/ServiceLoader$LazyIterator;->this$0:Ljava/util/ServiceLoader;

    iget-object v4, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    invoke-static {v3, v4, v2}, Ljava/util/ServiceLoader;->-wrap0(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/net/URL;)Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->pending:Ljava/util/Iterator;

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ServiceLoader$LazyIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/NoSuchElementException;

    invoke-direct {v6}, Ljava/util/NoSuchElementException;-><init>()V

    throw v6

    :cond_0
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->nextName:Ljava/lang/String;

    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->nextName:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->loader:Ljava/lang/ClassLoader;

    const/4 v7, 0x0

    invoke-static {v2, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not assignable from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not a subtype"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Ljava/util/ServiceLoader;->-wrap1(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :try_start_1
    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v6}, Ljava/util/ServiceLoader;->-get1(Ljava/util/ServiceLoader;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :catch_0
    move-exception v4

    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Ljava/util/ServiceLoader;->-wrap1(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v5

    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " could not be instantiated: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Ljava/util/ServiceLoader;->-wrap1(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v6, Ljava/lang/Error;

    invoke-direct {v6}, Ljava/lang/Error;-><init>()V

    throw v6
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
