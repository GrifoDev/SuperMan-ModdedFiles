.class Ljava/util/AbstractMap$1$1;
.super Ljava/lang/Object;
.source "AbstractMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/AbstractMap$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljava/util/AbstractMap$1;


# direct methods
.method constructor <init>(Ljava/util/AbstractMap$1;)V
    .locals 1
    .param p1, "this$1"    # Ljava/util/AbstractMap$1;

    .prologue
    .line 321
    iput-object p1, p0, Ljava/util/AbstractMap$1$1;->this$1:Ljava/util/AbstractMap$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iget-object v0, p0, Ljava/util/AbstractMap$1$1;->this$1:Ljava/util/AbstractMap$1;

    iget-object v0, v0, Ljava/util/AbstractMap$1;->this$0:Ljava/util/AbstractMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/AbstractMap$1$1;->i:Ljava/util/Iterator;

    .line 321
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Ljava/util/AbstractMap$1$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Ljava/util/AbstractMap$1$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Ljava/util/AbstractMap$1$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 332
    return-void
.end method
