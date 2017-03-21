.class public Lcom/android/settings/notification/ZenModeVoiceActivity;
.super Lcom/android/settings/utils/VoiceSettingsActivity;
.source "ZenModeVoiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;-><init>()V

    return-void
.end method

.method private getChangeSummary(II)Ljava/lang/CharSequence;
    .locals 18

    const/4 v7, -0x1

    const/4 v3, -0x1

    const/4 v2, -0x1

    const/4 v4, -0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-ltz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/notification/ZenModeVoiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    return-object v11

    :pswitch_1
    const v7, 0x7f0b18a0

    const v3, 0x7f130019

    const v2, 0x7f13001a

    const v4, 0x7f0b18a1

    goto :goto_0

    :pswitch_2
    const v7, 0x7f0b18a2

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const v11, 0xea60

    mul-int v11, v11, p2

    int-to-long v0, v11

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string/jumbo v10, "Hm"

    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-static {v11, v10}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ZenModeVoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/16 v11, 0x3c

    move/from16 v0, p2

    if-ge v0, v11, :cond_3

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v11, v15

    const/4 v14, 0x1

    aput-object v5, v11, v14

    move/from16 v0, p2

    invoke-virtual {v9, v3, v0, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    return-object v11

    :cond_2
    const-string/jumbo v10, "hma"

    goto :goto_1

    :cond_3
    rem-int/lit8 v11, p2, 0x3c

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v11, v14

    invoke-virtual {v9, v4, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    return-object v11

    :cond_4
    div-int/lit8 v6, p2, 0x3c

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v11, v15

    const/4 v14, 0x1

    aput-object v5, v11, v14

    invoke-virtual {v9, v2, v6, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    return-object v11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setZenModeConfig(ILandroid/service/notification/Condition;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p2, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    const-string/jumbo v2, "ZenModeVoiceActivity"

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "ZenModeVoiceActivity"

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onVoiceSettingInteraction(Landroid/content/Intent;)Z
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v4, "android.settings.extra.do_not_disturb_mode_enabled"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "android.settings.extra.do_not_disturb_mode_minutes"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "android.settings.extra.do_not_disturb_mode_enabled"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    if-lez v2, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {p0, v2, v4}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v1

    :cond_0
    const/4 v3, 0x3

    :cond_1
    invoke-direct {p0, v3, v1}, Lcom/android/settings/notification/ZenModeVoiceActivity;->setZenModeConfig(ILandroid/service/notification/Condition;)V

    const-string/jumbo v4, "audio"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ZenModeVoiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v6, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_2
    invoke-direct {p0, v3, v2}, Lcom/android/settings/notification/ZenModeVoiceActivity;->getChangeSummary(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ZenModeVoiceActivity;->notifySuccess(Ljava/lang/CharSequence;)V

    :goto_0
    return v6

    :cond_3
    const-string/jumbo v4, "ZenModeVoiceActivity"

    const-string/jumbo v5, "Missing extra android.provider.Settings.EXTRA_DO_NOT_DISTURB_MODE_ENABLED"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeVoiceActivity;->finish()V

    goto :goto_0
.end method
