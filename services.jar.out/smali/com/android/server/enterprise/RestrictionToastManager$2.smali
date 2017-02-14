.class final Lcom/android/server/enterprise/RestrictionToastManager$2;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionToastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/RestrictionToastManager;
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
    .locals 3

    const-string/jumbo v2, "message"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/RestrictionToastManager;->-get0()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/enterprise/RestrictionToastManager;->-get0()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/server/enterprise/RestrictionToastManager$2$1;

    invoke-direct {v2, p0, v1}, Lcom/android/server/enterprise/RestrictionToastManager$2$1;-><init>(Lcom/android/server/enterprise/RestrictionToastManager$2;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
