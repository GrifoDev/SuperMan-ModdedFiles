.class final Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$UserSwitchObserver;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "DockedMinimizedNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserSwitchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$UserSwitchObserver;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$UserSwitchObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$UserSwitchObserver;-><init>(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onLockedBootComplete(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DividerNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitchComplete u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$UserSwitchObserver;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v0, p1}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-set0(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;I)I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$UserSwitchObserver;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$UserSwitchObserver;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    const-string/jumbo v2, "db_has_dock_minimized"

    invoke-static {v1, v2}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-wrap1(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-set1(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$UserSwitchObserver;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-get3(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$UserSwitchObserver;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$UserSwitchObserver;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-get1(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-wrap3(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
