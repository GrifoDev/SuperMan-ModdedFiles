.class public Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "RemoteCallStatusBarNotifier"

.field public static final REMOTE_CALL_NOTIFICATION:I = 0x66


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsShowingNotification:Z

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private cancelRemoteCall()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;->mIsShowingNotification:Z

    if-eqz v0, :cond_0

    const-string v0, "RemoteCallStatusBarNotifier"

    const-string v1, "cancelRemoteCall()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;->mIsShowingNotification:Z

    return-void
.end method

.method static clearRemoteCallNotification(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Something terrible happened. Clear all RemoteCall notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private createLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/remotecall/RemoteCallActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    return-object v0
.end method


# virtual methods
.method public addNotification(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;->getNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;->createLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const-string v1, "Remote Call"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v1, 0x7f02032a

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    new-instance v1, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;

    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->update(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getActiveCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getHoldCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_0
    const-string v1, "RemoteCallStatusBarNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying REMOTE_CALL_NOTIFICATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x66

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;->mIsShowingNotification:Z

    return-void
.end method

.method public onRemoteCallAdded()V
    .locals 0

    return-void
.end method

.method public onRemoteCallEnded()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;->cancelRemoteCall()V

    return-void
.end method

.method public onRemoteCallRemoved()V
    .locals 0

    return-void
.end method

.method public onRemoteCallStateChanged(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->hasLiveCallToDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;->cancelRemoteCall()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/remotecall/RemoteCallStatusBarNotifier;->addNotification(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V

    goto :goto_0
.end method
