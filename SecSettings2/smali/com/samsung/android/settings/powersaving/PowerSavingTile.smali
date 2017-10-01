.class public Lcom/samsung/android/settings/powersaving/PowerSavingTile;
.super Landroid/service/quicksettings/TileService;
.source "PowerSavingTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/powersaving/PowerSavingTile$1;,
        Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBatteryExtendedTime:J

.field private mContext:Landroid/content/Context;

.field private mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;

.field private mPsmObserver:Landroid/database/ContentObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/powersaving/PowerSavingTile;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mBatteryExtendedTime:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/powersaving/PowerSavingTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/powersaving/PowerSavingTile;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mBatteryExtendedTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/powersaving/PowerSavingTile;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->setPowerSavingMode(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/powersaving/PowerSavingTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mBatteryExtendedTime:J

    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile$1;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingTile;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getRemoteViews()Landroid/widget/RemoteViews;
    .locals 6

    const v5, 0x7f1105a0

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04022c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f0b01b4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0b0a36

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1105a2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0b0a38

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1105a5

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0b0a37

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1105a8

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "qs_detail_content_secondary_text_color"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/high16 v4, -0x1000000

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->updateRemainingTime(Landroid/widget/RemoteViews;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->setupPendingIntent(Landroid/widget/RemoteViews;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->updateButtonStatus(Landroid/widget/RemoteViews;I)V

    return-object v0
.end method

.method private setPowerSavingMode(I)V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->updateState()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "battery_mode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/powersaving/PowerSavingTile$4;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile$4;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingTile;Landroid/content/Intent;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setupPendingIntent(Landroid/widget/RemoteViews;)V
    .locals 5

    const/high16 v4, 0x8000000

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x1e14

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f1105a1

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "mode"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x1e15

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f1105a4

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "mode"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x1e16

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f1105a7

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private updateButtonDescription(I)V
    .locals 0

    return-void
.end method

.method private updateButtonStatus(Landroid/widget/RemoteViews;I)V
    .locals 8

    const v7, 0x7f0d0198

    const v6, 0x7f0d00b5

    const v5, 0x7f0d00b4

    const v1, 0x7f0203a6

    const v2, 0x7f0203a3

    packed-switch p2, :pswitch_data_0

    :goto_0
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->updateButtonDescription(I)V

    return-void

    :pswitch_0
    const-string/jumbo v3, "setBackgroundResource"

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0203a4

    :goto_1
    const v4, 0x7f1105a1

    invoke-virtual {p1, v4, v3, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v0, 0x7f0d0199

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105a2

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105a3

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string/jumbo v0, "setBackgroundResource"

    const v3, 0x7f1105a4

    const v4, 0x7f0203a1

    invoke-virtual {p1, v3, v0, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105a5

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105a6

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string/jumbo v3, "setBackgroundResource"

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_2
    const v1, 0x7f1105a7

    invoke-virtual {p1, v1, v3, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105a8

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105a9

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0203a7

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :pswitch_1
    const-string/jumbo v3, "setBackgroundResource"

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_3
    const v4, 0x7f1105a1

    invoke-virtual {p1, v4, v3, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v0, 0x7f0d019c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105a2

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v0, 0x7f0d019b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105a3

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string/jumbo v0, "setBackgroundResource"

    const v3, 0x7f1105a4

    const v4, 0x7f0203a2

    invoke-virtual {p1, v3, v0, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v0, 0x7f0d0199

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105a5

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105a6

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string/jumbo v0, "setBackgroundResource"

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_4
    const v2, 0x7f1105a7

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105a8

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105a9

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    move v1, v2

    goto :goto_4

    :pswitch_2
    const-string/jumbo v0, "setBackgroundResource"

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_5
    const v1, 0x7f1105a1

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v0, 0x7f0d019c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105a2

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v0, 0x7f0d019b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105a3

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string/jumbo v0, "setBackgroundResource"

    const v1, 0x7f1105a4

    const v2, 0x7f0203a1

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105a5

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105a6

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string/jumbo v1, "setBackgroundResource"

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const v0, 0x7f0203a8

    :goto_6
    const v2, 0x7f1105a7

    invoke-virtual {p1, v2, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v0, 0x7f0d0199

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105a8

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105a9

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_0

    :cond_4
    move v2, v1

    goto :goto_5

    :cond_5
    const v0, 0x7f0203a5

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateRemainingTime(Landroid/widget/RemoteViews;)V
    .locals 16

    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "CustomFrequencyManagerService"

    invoke-virtual {v5, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/os/CustomFrequencyManager;

    move-object v2, v0

    if-nez v2, :cond_0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    return-void

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/CustomFrequencyManager;->getBatteryRemainingUsageTime(I)I

    move-result v5

    int-to-long v10, v5

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/os/CustomFrequencyManager;->getBatteryRemainingUsageTime(I)I

    move-result v5

    int-to-long v8, v5

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/os/CustomFrequencyManager;->getBatteryRemainingUsageTime(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-long v6, v5

    sget-object v5, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateRemainingTime - Off : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " MID : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " MAX : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " Extended : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mBatteryExtendedTime:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-lez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mBatteryExtendedTime:J

    add-long/2addr v12, v10

    long-to-int v12, v12

    invoke-static {v5, v12}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const v12, 0x7f1105a3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v5, v8, v12

    if-lez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mBatteryExtendedTime:J

    add-long/2addr v12, v8

    long-to-int v12, v12

    invoke-static {v5, v12}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const v12, 0x7f1105a6

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v5, v6, v12

    if-lez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mBatteryExtendedTime:J

    add-long/2addr v12, v6

    long-to-int v12, v12

    invoke-static {v5, v12}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f1105a9

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const v13, 0x7f0b01b4

    invoke-virtual {v5, v13, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v12, 0x7f1105a0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_2
    return-void

    :catch_0
    move-exception v3

    sget-object v5, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const v5, 0x7f1105a3

    const/16 v12, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    :cond_2
    const v5, 0x7f1105a6

    const/16 v12, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    :cond_3
    const v5, 0x7f1105a9

    const/16 v12, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    const v12, 0x7f0b01b5

    invoke-virtual {v5, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v12, 0x7f1105a0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateState()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0203aa

    invoke-static {p0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    const v1, 0x7f0b01b1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getQsTile() is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public checkScreenState(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isPowerSavingModeAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PSM onClick : isPowerSavingModeAllowed returns FALSE"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile$3;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingTile;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->unlockAndRun(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->setPowerSavingMode(I)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBind"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->registerObserver(Landroid/os/Handler;)V

    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onClick()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick/currentMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->checkScreenState(I)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getLastPSMmode(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onStartListening()V
    .locals 4

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStartListening"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->updateState()V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingTile;Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStopListening()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStopListening"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/powersaving/PowerSavingTile$PowerSavingBatteryTimeTask;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->unregisterObserver()V

    sget-object v0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public registerObserver(Landroid/os/Handler;)V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/powersaving/PowerSavingTile$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/powersaving/PowerSavingTile$2;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingTile;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "error"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public semGetDetailView()Landroid/widget/RemoteViews;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public semGetDetailViewTitle()Ljava/lang/CharSequence;
    .locals 1

    const v0, 0x7f0b0a25

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public semIsToggleButtonChecked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public semIsToggleButtonExists()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public semSetToggleButtonChecked(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->semUpdateDetailView()V

    return-void
.end method

.method public unregisterObserver()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method
