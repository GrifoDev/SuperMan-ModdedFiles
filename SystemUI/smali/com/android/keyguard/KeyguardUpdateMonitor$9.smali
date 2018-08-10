.class Lcom/android/keyguard/KeyguardUpdateMonitor$9;
.super Landroid/os/IRemoteCallback$Stub;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v4, 0x167

    const-string/jumbo v2, "isClearLock"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get18()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap62(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get18()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricsOptionState(I)V

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.keyguard.CLEAR_LOCK"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get3(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    sget-boolean v2, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method
