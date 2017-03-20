.class public Lcom/android/incallui/wearable/MuteBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MuteBroadcastReceiver.java"


# static fields
.field public static final ACTION_CALL_MUTE_EXPORTED:Ljava/lang/String; = "com.android.incallui.ACTION_CALL_MUTE_EXPORTED"

.field public static final ACTION_CALL_MUTE_EXPORTED_TEMP:Ljava/lang/String; = "com.samsung.incallui.ACTION_CALL_MUTE_EXPORTED"

.field public static final EXTRA_CALL_MUTE:Ljava/lang/String; = "EXTRA_CALL_MUTE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "action":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast from MuteBroadcastReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    const-string v2, "com.android.incallui.ACTION_CALL_MUTE_EXPORTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.samsung.incallui.ACTION_CALL_MUTE_EXPORTED"

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    :cond_0
    const-string v2, "EXTRA_CALL_MUTE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 27
    .local v1, "nExtraValue":I
    if-nez v1, :cond_2

    .line 28
    const-string v2, "Broadcast from MuteBroadcastReceiver: 0"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .end local v1    # "nExtraValue":I
    :cond_1
    :goto_0
    return-void

    .line 31
    .restart local v1    # "nExtraValue":I
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 32
    const-string v2, "turning on mute : false"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    goto :goto_0

    .line 35
    :cond_3
    if-ne v1, v5, :cond_1

    .line 36
    const-string v2, "turning on mute : true"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    goto :goto_0
.end method
