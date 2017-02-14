.class Lcom/android/server/location/GnssLocationProvider$4;
.super Landroid/content/BroadcastReceiver;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "receive broadcast intent, action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, v5}, Lcom/android/server/location/GnssLocationProvider;->-wrap32(Lcom/android/server/location/GnssLocationProvider;Z)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v3

    invoke-virtual {v2, p2, v3}, Lcom/android/server/location/GnssLocationProvider;->extension_mBroadcastReciever(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "result_mask"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->-wrap30(Lcom/android/server/location/GnssLocationProvider;I)V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const-string/jumbo v3, "packet_data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const-string/jumbo v4, "packet_length"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/server/location/GnssLocationProvider;->-wrap24(Lcom/android/server/location/GnssLocationProvider;[BI)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v2, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap23(Lcom/android/server/location/GnssLocationProvider;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->extension_checkWapPushMsg(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, p2}, Lcom/android/server/location/GnssLocationProvider;->-wrap12(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->extension_checkWapPushMsg(Z)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, p2}, Lcom/android/server/location/GnssLocationProvider;->-wrap13(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap34(Lcom/android/server/location/GnssLocationProvider;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, p1}, Lcom/android/server/location/GnssLocationProvider;->-wrap33(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V

    goto/16 :goto_0
.end method
