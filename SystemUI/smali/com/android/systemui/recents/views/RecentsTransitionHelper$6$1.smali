.class Lcom/android/systemui/recents/views/RecentsTransitionHelper$6$1;
.super Ljava/lang/Object;
.source "RecentsTransitionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;->get()[Landroid/view/AppTransitionAnimationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;

.field final synthetic val$composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6$1;->this$1:Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6$1;->val$composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6$1;->this$1:Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;

    iget-object v1, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6$1;->this$1:Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6$1;->val$composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;

    invoke-interface {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;->composeSpecs()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-set0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6$1;->this$1:Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

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
