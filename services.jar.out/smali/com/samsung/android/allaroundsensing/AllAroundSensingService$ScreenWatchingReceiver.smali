.class final Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AllAroundSensingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allaroundsensing/AllAroundSensingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScreenWatchingReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    invoke-static {v2}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->-wrap0(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V

    return-void

    :cond_1
    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    iget-object v2, v2, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    invoke-static {v2}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->-get0(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "AllAroundSensingService"

    const-string/jumbo v3, "failed to onForegroundActivitiesChanged"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-void
.end method
