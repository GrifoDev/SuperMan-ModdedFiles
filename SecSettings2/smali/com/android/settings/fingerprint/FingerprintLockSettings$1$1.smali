.class Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;
.super Ljava/lang/Object;
.source "FingerprintLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintLockSettings$1;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x0

    if-eqz p0, :cond_7

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v1, :cond_7

    const-string/jumbo v1, "FpstFingerprintLockSettings"

    const-string/jumbo v2, "Fingerprint Recognition Success! Enable Fingerprint lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get3(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get6(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get5(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get4(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get6(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v2, v2, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get11(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    :cond_3
    :goto_1
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get7(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get9(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAppActivityState(ILandroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap6(Lcom/android/settings/fingerprint/FingerprintLockSettings;Z)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap6(Lcom/android/settings/fingerprint/FingerprintLockSettings;Z)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap5(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v2, v2, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get11(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_9

    const-string/jumbo v1, "FpstFingerprintLockSettings"

    const-string/jumbo v2, "Sensor Error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    const v2, 0x7f0b0673

    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap8(Lcom/android/settings/fingerprint/FingerprintLockSettings;I)V

    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v2, v2, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get11(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x79

    if-ne v1, v2, :cond_a

    const-string/jumbo v1, "FpstFingerprintLockSettings"

    const-string/jumbo v2, "Service Failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    const v2, 0x7f0b0676

    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap8(Lcom/android/settings/fingerprint/FingerprintLockSettings;I)V

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_8

    const/4 v0, 0x1

    const-string/jumbo v1, "FpstFingerprintLockSettings"

    const-string/jumbo v2, "Database Failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get1(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1$1;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
