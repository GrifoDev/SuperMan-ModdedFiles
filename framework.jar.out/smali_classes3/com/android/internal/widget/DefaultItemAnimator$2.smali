.class Lcom/android/internal/widget/DefaultItemAnimator$2;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/DefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/DefaultItemAnimator;

.field final synthetic val$changes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/DefaultItemAnimator$2;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/android/internal/widget/DefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator$2;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/DefaultItemAnimator;->animateChangeImpl(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator$2;->this$0:Lcom/android/internal/widget/DefaultItemAnimator;

    iget-object v2, v2, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/widget/DefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
