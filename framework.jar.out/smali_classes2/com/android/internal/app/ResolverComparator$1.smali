.class Lcom/android/internal/app/ResolverComparator$1;
.super Landroid/os/Handler;
.source "ResolverComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverComparator;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverComparator;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v3, "ResolverComparator"

    const-string/jumbo v4, "RESOLVER_RANKER_SERVICE_RESULT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v3}, Lcom/android/internal/app/ResolverComparator;->-get1(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v3}, Lcom/android/internal/app/ResolverComparator;->-get3(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v4}, Lcom/android/internal/app/ResolverComparator;->-get3(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v3}, Lcom/android/internal/app/ResolverComparator;->-get3(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v3}, Lcom/android/internal/app/ResolverComparator;->-get3(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/resolver/ResolverTarget;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v4}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/service/resolver/ResolverTarget;->setSelectProbability(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "ResolverComparator"

    const-string/jumbo v4, "Sizes of sent and received ResolverTargets diff."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v3}, Lcom/android/internal/app/ResolverComparator;->-get1(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v3}, Lcom/android/internal/app/ResolverComparator;->-get0(Lcom/android/internal/app/ResolverComparator;)Lcom/android/internal/app/ResolverComparator$AfterCompute;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v3}, Lcom/android/internal/app/ResolverComparator;->-get0(Lcom/android/internal/app/ResolverComparator;)Lcom/android/internal/app/ResolverComparator$AfterCompute;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/ResolverComparator$AfterCompute;->afterCompute()V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v3, "ResolverComparator"

    const-string/jumbo v4, "Receiving null prediction results."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_1
    const-string/jumbo v3, "ResolverComparator"

    const-string/jumbo v4, "RESOLVER_RANKER_RESULT_TIMEOUT; unbinding services"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v3}, Lcom/android/internal/app/ResolverComparator;->-get1(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v3}, Lcom/android/internal/app/ResolverComparator;->-get0(Lcom/android/internal/app/ResolverComparator;)Lcom/android/internal/app/ResolverComparator$AfterCompute;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v3}, Lcom/android/internal/app/ResolverComparator;->-get0(Lcom/android/internal/app/ResolverComparator;)Lcom/android/internal/app/ResolverComparator$AfterCompute;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/ResolverComparator$AfterCompute;->afterCompute()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
