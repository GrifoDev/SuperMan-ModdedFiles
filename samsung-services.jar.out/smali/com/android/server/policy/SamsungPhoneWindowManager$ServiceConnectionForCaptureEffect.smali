.class Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceConnectionForCaptureEffect"
.end annotation


# instance fields
.field private mShotEvent:I

.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->mShotEvent:I

    iput p2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->mShotEvent:I

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 12

    const/16 v11, 0x64

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v8, v7, Lcom/android/server/policy/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v7, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    monitor-exit v8

    return-void

    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->mShotEvent:I

    if-ne v7, v11, :cond_2

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v7, v6}, Lcom/android/server/wm/IWindowManagerServiceBridge;->getFocusedWindowInfoForScreenShot(Ljava/util/ArrayList;)V

    sget-boolean v7, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "SamsungPhoneWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "print arraylist outWindowInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " mFocusedWindow = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "SamsungPhoneWindowManager"

    const-string/jumbo v9, "change shotevent to fullscreen"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    iput v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->mShotEvent:I

    :cond_2
    iget v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->mShotEvent:I

    const/4 v9, 0x0

    invoke-static {v9, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    move-object v5, p0

    new-instance v2, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect$1;

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v2, p0, v7, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect$1;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    new-instance v7, Landroid/os/Messenger;

    invoke-direct {v7, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v7, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v7, 0x0

    iput v7, v4, Landroid/os/Message;->arg2:I

    const/4 v7, 0x0

    iput v7, v4, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isStatusBarVisible()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    iput v7, v4, Landroid/os/Message;->arg1:I

    :cond_3
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isNavigationBarVisible()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    iput v7, v4, Landroid/os/Message;->arg2:I

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "statusBarHeight"

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v9, v9, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    invoke-virtual {v0, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "navigationBarHeight"

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get10(Lcom/android/server/policy/SamsungPhoneWindowManager;)I

    move-result v9

    invoke-virtual {v0, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v7}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get5(Lcom/android/server/policy/SamsungPhoneWindowManager;)I

    move-result v7

    const/4 v9, 0x2

    if-eq v7, v9, :cond_5

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v7}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get5(Lcom/android/server/policy/SamsungPhoneWindowManager;)I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_8

    :cond_5
    :goto_0
    const-string/jumbo v7, "sweepDirection"

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get13(Lcom/android/server/policy/SamsungPhoneWindowManager;)I

    move-result v9

    invoke-virtual {v0, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "capturedDisplay"

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get4(Lcom/android/server/policy/SamsungPhoneWindowManager;)I

    move-result v9

    invoke-virtual {v0, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "capturedOrigin"

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get5(Lcom/android/server/policy/SamsungPhoneWindowManager;)I

    move-result v9

    invoke-virtual {v0, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    iget v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->mShotEvent:I

    if-ne v7, v11, :cond_7

    const-string/jumbo v7, "windowCapture"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_7
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set13(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set4(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set5(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v8

    return-void

    :cond_8
    :try_start_3
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v7}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get5(Lcom/android/server/policy/SamsungPhoneWindowManager;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    const/4 v9, 0x4

    if-ne v7, v9, :cond_6

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
