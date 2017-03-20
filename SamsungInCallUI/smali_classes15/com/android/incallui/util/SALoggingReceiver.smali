.class public Lcom/android/incallui/util/SALoggingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SALoggingReceiver.java"


# static fields
.field private static final ACTION_BLOCK_NUMBER_LOGGING:Ljava/lang/String; = "com.samsung.android.incallui.ACTION_BLOCK_NUMBER_LOGGING"

.field private static final ACTION_MISSED_CALL_LOGGING:Ljava/lang/String; = "com.samsung.android.incallui.ACTION_MISSED_CALL_LOGGING"

.field private static final ACTION_REPORT_NUMBER_LOGGING:Ljava/lang/String; = "com.samsung.android.incallui.ACTION_REPORT_NUMBER_LOGGING"

.field private static final LOG_TAG:Ljava/lang/String; = "SALoggingReceiver"

.field private static final extraDetail:Ljava/lang/String; = "extraDetail"

.field private static final extraFeatureId:Ljava/lang/String; = "extraFeatureId"

.field private static final extraValue:Ljava/lang/String; = "extraValue"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private blockNumberLogging(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 85
    const-string v1, "extraFeatureId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "featureId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    const v1, 0x7f09034f

    invoke-static {v1}, Lcom/android/incallui/util/SALoggingReceiver;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 107
    invoke-static {}, Lcom/android/incallui/util/SALoggingReceiver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v0, "SALoggingReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method private missedCallLogging(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 92
    const-string v1, "extraFeatureId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "featureId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    const v1, 0x7f0903c2

    invoke-static {v1}, Lcom/android/incallui/util/SALoggingReceiver;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reportNumberLogging(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, -0x1

    .line 69
    const v5, 0x7f0903e0

    invoke-static {v5}, Lcom/android/incallui/util/SALoggingReceiver;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "screenId":Ljava/lang/String;
    const-string v5, "extraFeatureId"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "featureId":Ljava/lang/String;
    const-string v5, "extraValue"

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 72
    .local v0, "commentValue":J
    const-string v5, "extraDetail"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "spamType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    :goto_0
    return-void

    .line 75
    :cond_0
    const v5, 0x7f0903e7

    invoke-static {v5}, Lcom/android/incallui/util/SALoggingReceiver;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 76
    invoke-static {v3, v2, v4}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_1
    const v5, 0x7f0903df

    invoke-static {v5}, Lcom/android/incallui/util/SALoggingReceiver;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    cmp-long v5, v0, v6

    if-eqz v5, :cond_2

    .line 78
    invoke-static {v3, v2, v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {v3, v2}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SALoggingReceiver#onReceive(). Intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SALoggingReceiver;->log(Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/android/incallui/util/SALoggingReceiver;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 66
    :goto_1
    return-void

    .line 52
    :sswitch_0
    const-string v2, "com.samsung.android.incallui.ACTION_REPORT_NUMBER_LOGGING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "com.samsung.android.incallui.ACTION_BLOCK_NUMBER_LOGGING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "com.samsung.android.incallui.ACTION_MISSED_CALL_LOGGING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 54
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/util/SALoggingReceiver;->reportNumberLogging(Landroid/os/Bundle;)V

    goto :goto_1

    .line 57
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/util/SALoggingReceiver;->blockNumberLogging(Landroid/os/Bundle;)V

    goto :goto_1

    .line 60
    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/util/SALoggingReceiver;->missedCallLogging(Landroid/os/Bundle;)V

    goto :goto_1

    .line 52
    :sswitch_data_0
    .sparse-switch
        -0x7ae76ebe -> :sswitch_0
        0x56adfe0d -> :sswitch_1
        0x7372eb90 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
