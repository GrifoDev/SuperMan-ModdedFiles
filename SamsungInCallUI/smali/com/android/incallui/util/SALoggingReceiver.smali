.class public Lcom/android/incallui/util/SALoggingReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final ACTION_BLOCK_NUMBER_LOGGING:Ljava/lang/String; = "com.samsung.android.incallui.ACTION_BLOCK_NUMBER_LOGGING"

.field private static final ACTION_MISSED_CALL_LOGGING:Ljava/lang/String; = "com.samsung.android.incallui.ACTION_MISSED_CALL_LOGGING"

.field private static final ACTION_REPORT_NUMBER_LOGGING:Ljava/lang/String; = "com.samsung.android.incallui.ACTION_REPORT_NUMBER_LOGGING"

.field private static final LOG_TAG:Ljava/lang/String; = "SALoggingReceiver"

.field private static final extraDetail:Ljava/lang/String; = "extraDetail"

.field private static final extraFeatureId:Ljava/lang/String; = "extraFeatureId"

.field private static final extraValue:Ljava/lang/String; = "extraValue"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private blockNumberLogging(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "extraFeatureId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0903ef

    invoke-static {v1}, Lcom/android/incallui/util/SALoggingReceiver;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/SALoggingReceiver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SALoggingReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private missedCallLogging(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "extraFeatureId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f090473

    invoke-static {v1}, Lcom/android/incallui/util/SALoggingReceiver;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reportNumberLogging(Landroid/os/Bundle;)V
    .locals 8

    const-wide/16 v6, -0x1

    const v0, 0x7f090497

    invoke-static {v0}, Lcom/android/incallui/util/SALoggingReceiver;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extraFeatureId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extraValue"

    invoke-virtual {p1, v2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "extraDetail"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const v5, 0x7f0904a1

    invoke-static {v5}, Lcom/android/incallui/util/SALoggingReceiver;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v4, 0x7f090495

    invoke-static {v4}, Lcom/android/incallui/util/SALoggingReceiver;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    cmp-long v4, v2, v6

    if-eqz v4, :cond_2

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

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

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

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

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/util/SALoggingReceiver;->reportNumberLogging(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/util/SALoggingReceiver;->blockNumberLogging(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/util/SALoggingReceiver;->missedCallLogging(Landroid/os/Bundle;)V

    goto :goto_1

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
