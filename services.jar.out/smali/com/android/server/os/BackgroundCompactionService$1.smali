.class final Lcom/android/server/os/BackgroundCompactionService$1;
.super Landroid/content/BroadcastReceiver;
.source "BackgroundCompactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/BackgroundCompactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/android/server/os/BackgroundCompactionService;->pending_job:I

    if-nez v0, :cond_0

    sput v2, Lcom/android/server/os/BackgroundCompactionService;->pending_job:I

    invoke-static {p1, v2}, Lcom/android/server/os/BackgroundCompactionService;->schedule(Landroid/content/Context;I)V

    :cond_0
    sput v3, Lcom/android/server/os/BackgroundCompactionService;->display_status:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sput v2, Lcom/android/server/os/BackgroundCompactionService;->display_status:I

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.sm.ACTION_RAM_BGCOMPACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/server/os/BackgroundCompactionService;->pending_job:I

    if-nez v0, :cond_1

    sput v2, Lcom/android/server/os/BackgroundCompactionService;->pending_job:I

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/server/os/BackgroundCompactionService;->schedule(Landroid/content/Context;I)V

    goto :goto_0
.end method
