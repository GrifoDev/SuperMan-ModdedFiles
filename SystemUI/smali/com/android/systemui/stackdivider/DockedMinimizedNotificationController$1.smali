.class Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;
.super Landroid/content/BroadcastReceiver;
.source "DockedMinimizedNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.multiwindow.action.DISMISS_MINIMIZED_DOCKED_STACK"

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "DividerNotification"

    const-string/jumbo v1, "onReceive : SEM_ACTION_DISMISS_MINIMIZED_DOCKED_STACK"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->dismissDockedStack()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-get0(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "DOOF"

    const-string/jumbo v2, "MinimizedNotification"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.multiwindow.action.LAUNCH_DOCK_MODE"

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "DividerNotification"

    const-string/jumbo v1, "onReceive : SEM_ACTION_LAUNCH_DOCK_MODE"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-get1(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->showRecentApps()V

    goto :goto_0
.end method
