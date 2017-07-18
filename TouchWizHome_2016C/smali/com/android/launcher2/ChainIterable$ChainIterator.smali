.class Lcom/android/launcher2/ChainIterable$ChainIterator;
.super Ljava/lang/Object;
.source "ChainIterable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ChainIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChainIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mCurrent:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Iterable",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher2/ChainIterable;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ChainIterable;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->this$0:Lcom/android/launcher2/ChainIterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/launcher2/ChainIterable;->access$000(Lcom/android/launcher2/ChainIterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mIterator:Ljava/util/Iterator;

    iget-object v0, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mCurrent:Ljava/util/Iterator;

    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mCurrent:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mCurrent:Ljava/util/Iterator;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mCurrent:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mCurrent:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mCurrent:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mCurrent:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mCurrent:Ljava/util/Iterator;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
