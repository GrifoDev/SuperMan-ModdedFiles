.class Ljava/util/ServiceLoader$1;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TS;>;"
    }
.end annotation


# instance fields
.field knownProviders:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TS;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/ServiceLoader;


# direct methods
.method constructor <init>(Ljava/util/ServiceLoader;)V
    .locals 1

    iput-object p1, p0, Ljava/util/ServiceLoader$1;->this$0:Ljava/util/ServiceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Ljava/util/ServiceLoader$1;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v0}, Ljava/util/ServiceLoader;->-get1(Ljava/util/ServiceLoader;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ServiceLoader$1;->knownProviders:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Ljava/util/ServiceLoader$1;->knownProviders:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Ljava/util/ServiceLoader$1;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v0}, Ljava/util/ServiceLoader;->-get0(Ljava/util/ServiceLoader;)Ljava/util/ServiceLoader$LazyIterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader$LazyIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/ServiceLoader$1;->knownProviders:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/ServiceLoader$1;->knownProviders:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/ServiceLoader$1;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v0}, Ljava/util/ServiceLoader;->-get0(Ljava/util/ServiceLoader;)Ljava/util/ServiceLoader$LazyIterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader$LazyIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
