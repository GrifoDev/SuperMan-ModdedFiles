.class Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;
.super Lcom/samsung/android/aod/IAODCallback$Stub;
.source "AODManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aod/AODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AODCallbackDelegate"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/samsung/android/aod/AODListener;

.field final synthetic this$0:Lcom/samsung/android/aod/AODManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;)Lcom/samsung/android/aod/AODListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->mListener:Lcom/samsung/android/aod/AODListener;

    return-object v0
.end method

.method public constructor <init>(Lcom/samsung/android/aod/AODManager;Lcom/samsung/android/aod/AODListener;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->this$0:Lcom/samsung/android/aod/AODManager;

    invoke-direct {p0}, Lcom/samsung/android/aod/IAODCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->mListener:Lcom/samsung/android/aod/AODListener;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p1, Lcom/samsung/android/aod/AODManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method getListener()Lcom/samsung/android/aod/AODListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->mListener:Lcom/samsung/android/aod/AODListener;

    return-object v0
.end method

.method public onScreenTurningOn()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$1;-><init>(Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpdateCalendarData(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$3;-><init>(Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpdateNotificationKeys(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$2;-><init>(Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpdateSmartAlertNotifications([Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$5;-><init>(Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;[Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpdateStatusBarNotifications(I[Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$4;-><init>(Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;I[Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
