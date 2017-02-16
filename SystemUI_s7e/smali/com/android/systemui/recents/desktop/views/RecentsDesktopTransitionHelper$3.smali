.class Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper$3;
.super Landroid/os/IRemoteCallback$Stub;
.source "RecentsDesktopTransitionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper;->startTaskActivity(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/tv/views/TaskCardView;Landroid/app/ActivityOptions;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper;

.field final synthetic val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper$3;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper;

    iput-object p2, p0, Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper$3;->val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper$3;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper;

    invoke-static {v0}, Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper;->-get0(Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper$3$1;

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper$3;->val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper$3$1;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper$3;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
