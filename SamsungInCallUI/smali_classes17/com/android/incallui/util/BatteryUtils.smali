.class public Lcom/android/incallui/util/BatteryUtils;
.super Ljava/lang/Object;
.source "BatteryUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BatteryUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCriticalLowBatt()Z
    .locals 15

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 62
    const/4 v3, 0x0

    .line 64
    .local v3, "criticalLowBatt":Z
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_TMO()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_MPCS()Z

    move-result v10

    if-nez v10, :cond_0

    .line 86
    :goto_0
    return v9

    .line 68
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 70
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "config_criticalBatteryWarningLevel"

    const-string v13, "integer"

    const-string v14, "android"

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 72
    .local v1, "citicalLowBatteryWarningLevel":I
    new-instance v4, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 73
    .local v4, "filter":Landroid/content/IntentFilter;
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, "batteryStatus":Landroid/content/Intent;
    const-string v10, "status"

    invoke-virtual {v0, v10, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 76
    .local v8, "status":I
    const/4 v10, 0x2

    if-ne v8, v10, :cond_2

    .line 78
    .local v5, "isCharging":Z
    :goto_1
    const-string v9, "scale"

    const/16 v10, 0x64

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 79
    .local v7, "scale":I
    const-string v9, "level"

    invoke-virtual {v0, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 81
    .local v6, "level":I
    if-gt v6, v1, :cond_1

    if-nez v5, :cond_1

    .line 82
    const/4 v3, 0x1

    .line 85
    :cond_1
    const-string v9, "BatteryUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isCriticalLowBatt-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v3

    .line 86
    goto :goto_0

    .end local v5    # "isCharging":Z
    .end local v6    # "level":I
    .end local v7    # "scale":I
    :cond_2
    move v5, v9

    .line 76
    goto :goto_1
.end method

.method public static isLowBatt()Z
    .locals 15

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 34
    const/4 v5, 0x0

    .line 36
    .local v5, "lowBatt":Z
    sget-boolean v10, Lcom/android/incallui/service/vt/VideoCallConfig;->ALLOW_VIDEO_CALL_LOW_BATT:Z

    if-eqz v10, :cond_0

    .line 58
    :goto_0
    return v9

    .line 40
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 42
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "config_lowBatteryWarningLevel"

    const-string v13, "integer"

    const-string v14, "android"

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 44
    .local v6, "lowBatteryWarningLevel":I
    new-instance v2, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 45
    .local v2, "filter":Landroid/content/IntentFilter;
    const/4 v10, 0x0

    invoke-virtual {v1, v10, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 47
    .local v0, "batteryStatus":Landroid/content/Intent;
    const-string v10, "status"

    invoke-virtual {v0, v10, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 48
    .local v8, "status":I
    const/4 v10, 0x2

    if-ne v8, v10, :cond_2

    .line 50
    .local v3, "isCharging":Z
    :goto_1
    const-string v9, "scale"

    const/16 v10, 0x64

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 51
    .local v7, "scale":I
    const-string v9, "level"

    invoke-virtual {v0, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 53
    .local v4, "level":I
    if-gt v4, v6, :cond_1

    if-nez v3, :cond_1

    .line 54
    const/4 v5, 0x1

    .line 57
    :cond_1
    const-string v9, "BatteryUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isLowBatt-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v5

    .line 58
    goto :goto_0

    .end local v3    # "isCharging":Z
    .end local v4    # "level":I
    .end local v7    # "scale":I
    :cond_2
    move v3, v9

    .line 48
    goto :goto_1
.end method

.method public static showLowBattToast(Z)V
    .locals 1
    .param p0, "criticalLow"    # Z

    .prologue
    .line 90
    if-eqz p0, :cond_0

    .line 91
    const v0, 0x7f090471

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    const v0, 0x7f0901ca

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0
.end method
