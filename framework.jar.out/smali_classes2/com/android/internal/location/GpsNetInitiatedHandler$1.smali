.class Lcom/android/internal/location/GpsNetInitiatedHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsNetInitiatedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/location/GpsNetInitiatedHandler;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    const-string/jumbo v2, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "phoneNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setInEmergency(Z)V

    .line 161
    const-string/jumbo v2, "GpsNetInitiatedHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ACTION_NEW_OUTGOING_CALL - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const-string/jumbo v2, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->updateLocationMode()V

    .line 164
    const-string/jumbo v2, "GpsNetInitiatedHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "location enabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getLocationEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
