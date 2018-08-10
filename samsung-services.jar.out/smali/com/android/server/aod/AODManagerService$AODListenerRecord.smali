.class Lcom/android/server/aod/AODManagerService$AODListenerRecord;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AODListenerRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/aod/AODManagerService$AODListenerRecord$1;
    }
.end annotation


# static fields
.field private static final MSG_REQUEST_HIDE:I = 0x3

.field private static final MSG_UPDATE_CALENDAR_DATA:I = 0x2

.field private static final MSG_UPDATE_NOTIFICATION_KEYS:I = 0x1

.field private static final MSG_UPDATE_SMARTALERT_NOTIFICATIONS:I = 0x5

.field private static final MSG_UPDATE_STATUSBAR_NOTIFICATIONS:I = 0x4


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final pid:I

.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;

.field private final token:Landroid/os/IBinder;

.field private final uid:I


# direct methods
.method static synthetic -get0(Lcom/android/server/aod/AODManagerService$AODListenerRecord;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/aod/AODManagerService$AODListenerRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->_onScreenTurningOn()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/aod/AODManagerService$AODListenerRecord;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->_onUpdateCalendarData(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/aod/AODManagerService$AODListenerRecord;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->_onUpdateNotificationKeys(ILjava/util/List;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/aod/AODManagerService$AODListenerRecord;I[Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->_onUpdateStatusBarNotifications(I[Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;II)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/aod/AODManagerService$AODListenerRecord$1;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->-get19(Lcom/android/server/aod/AODManagerService;)Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/aod/AODManagerService$AODListenerRecord$1;-><init>(Lcom/android/server/aod/AODManagerService$AODListenerRecord;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->pid:I

    iput p4, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->uid:I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AODListenerRecord : linkToDeath error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private _onScreenTurningOn()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/aod/IAODCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/aod/IAODCallback;->onScreenTurningOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "_onScreenTurningOn : RemoteException : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private _onUpdateCalendarData(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/aod/IAODCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/aod/IAODCallback;->onUpdateCalendarData(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "_onUpdateCalendarData : RemoteException : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private _onUpdateNotificationKeys(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/aod/IAODCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/aod/IAODCallback;->onUpdateNotificationKeys(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "_onUpdateNotificationKeys : RemoteException : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private _onUpdateStatusBarNotifications(I[Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/aod/IAODCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/aod/IAODCallback;->onUpdateStatusBarNotifications(I[Landroid/service/notification/StatusBarNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "_onUpdateStatusBarNotifications : RemoteException : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public _onUpdateSmartAlertNotifications([Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/aod/IAODCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/aod/IAODCallback;->onUpdateSmartAlertNotifications([Landroid/service/notification/StatusBarNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "_onUpdateSmartAlertNotifications : RemoteException : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public binderDied()V
    .locals 2

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-get18(Lcom/android/server/aod/AODManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-get18(Lcom/android/server/aod/AODManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onScreenTurningOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onScreenTurningOn : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onUpdateCalendarData(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onUpdateCalendarData : token is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "timeInfo"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v2, "description"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUpdateNotificationKeys(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onUpdateNotificationKeys : token is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "notiCount"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "keys"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUpdateSmartAlertNotifications([Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onUpdateSmartAlertNotifications : token is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "statusBarNotifications"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUpdateStatusBarNotifications(I[Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onUpdateStatusBarNotifications : token is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "notiCount"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "statusBarNotifications"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  [Listener: pid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") uid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
