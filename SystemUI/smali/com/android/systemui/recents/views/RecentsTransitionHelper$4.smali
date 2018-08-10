.class Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;
.super Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;
.source "RecentsTransitionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsTransitionHelper;->getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

.field final synthetic val$composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->val$composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;

    invoke-direct {p0}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public get()[Landroid/view/AppTransitionAnimationSpec;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    const-string/jumbo v2, "RecentsTransitionHelper"

    const-string/jumbo v3, "IAppTransitionAnimationSpecsFuture.get(): post composing and wait"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get4(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v3}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get4(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v3}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get4(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$4;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->val$composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    monitor-enter v3

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get2(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get1()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-ne v2, v4, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get2(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    monitor-exit v3

    return-object v6

    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get2(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Landroid/view/AppTransitionAnimationSpec;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get2(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get1()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-set0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Ljava/util/List;)Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method synthetic lambda$-com_android_systemui_recents_views_RecentsTransitionHelper$4_18014(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)V
    .locals 3

    const-string/jumbo v0, "RecentsTransitionHelper"

    const-string/jumbo v1, "IAppTransitionAnimationSpecsFuture.get(): run composeSpecs"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get4(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-interface {p1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;->composeSpecs()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-set0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
