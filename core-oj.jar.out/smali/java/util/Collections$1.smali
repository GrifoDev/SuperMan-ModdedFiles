.class final Ljava/util/Collections$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections;->singletonIterator(Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private hasNext:Z

.field final synthetic val$e:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 3867
    .local p1, "val$e":Ljava/lang/Object;, "TE;"
    iput-object p1, p0, Ljava/util/Collections$1;->val$e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3868
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Collections$1;->hasNext:Z

    .line 3867
    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 3884
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3885
    iget-boolean v0, p0, Ljava/util/Collections$1;->hasNext:Z

    if-eqz v0, :cond_0

    .line 3886
    iget-object v0, p0, Ljava/util/Collections$1;->val$e:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3887
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Collections$1;->hasNext:Z

    .line 3883
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 3870
    iget-boolean v0, p0, Ljava/util/Collections$1;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 3873
    iget-boolean v0, p0, Ljava/util/Collections$1;->hasNext:Z

    if-eqz v0, :cond_0

    .line 3874
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Collections$1;->hasNext:Z

    .line 3875
    iget-object v0, p0, Ljava/util/Collections$1;->val$e:Ljava/lang/Object;

    return-object v0

    .line 3877
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 3880
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
