.class Lcom/android/server/policy/PhoneWindowManager$19;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$screenshotType:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$19;->val$screenshotType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v5, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v5, p0, :cond_0

    monitor-exit v6

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager$19;->val$screenshotType:I

    const/4 v7, 0x0

    invoke-static {v7, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    move-object v4, p0

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$19$1;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, p0, v5, p0}, Lcom/android/server/policy/PhoneWindowManager$19$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$19;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    new-instance v5, Landroid/os/Messenger;

    invoke-direct {v5, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v5, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v5, 0x0

    iput v5, v3, Landroid/os/Message;->arg2:I

    const/4 v5, 0x0

    iput v5, v3, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->arg1:I

    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->arg2:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v6

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap12(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method
