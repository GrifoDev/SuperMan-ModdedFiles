.class final Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "Usefulfeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v9, "smartscreen_stay"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "direct_share"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string/jumbo v9, "com.samsung.android.game.gametools"

    invoke-static {p1, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    const-string/jumbo v9, "game_home"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_10

    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_Common_EnableAirMessage"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string/jumbo v9, "com.samsung.android.myeventcenter"

    invoke-static {p1, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    const-string/jumbo v9, "key_festival_effect"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap3()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-nez v9, :cond_8

    :cond_7
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "SMARTMANAGER"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    const-string/jumbo v9, "identify_unsaved_numbers"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eqz v9, :cond_b

    :cond_a
    const-string/jumbo v9, "identify_unsaved_numbers"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "SMARTMANAGER"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eqz v9, :cond_d

    :cond_c
    const-string/jumbo v9, "call_message_spam_filter"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const-string/jumbo v9, "com.samsung.android.app.scrollcapture"

    invoke-static {p1, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string/jumbo v9, "smart_capture"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const-string/jumbo v9, "com.sec.app.screenrecorder"

    invoke-static {p1, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_11

    :goto_1
    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMotionFeatures:[Ljava/lang/String;

    array-length v10, v9

    :goto_2
    if-ge v8, v10, :cond_12

    aget-object v6, v9, v8

    invoke-static {p1, v6}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_f

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_10
    const-string/jumbo v9, "display_airmessage"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v9, "screen_recorder"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_12
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_Setting_ConfigMotionType"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string/jumbo v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_13

    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v8

    if-nez v8, :cond_23

    :goto_4
    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v4

    :cond_14
    and-int/lit8 v8, v4, 0x8

    if-eqz v8, :cond_15

    const-string/jumbo v8, "multi_window_setting"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-nez v8, :cond_16

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_17

    :cond_16
    const-string/jumbo v8, "onehand_operation_settings"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    const-string/jumbo v8, "com.samsung.android.app.galaxylabs"

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_19

    :cond_18
    const-string/jumbo v8, "galaxy_labs"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "double_tab_launch_component"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-set0(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v8, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    const-string/jumbo v8, "quick_camera_launch"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get10()Z

    move-result v8

    if-nez v8, :cond_1b

    const-string/jumbo v8, "accelerate_hongbao_receiving"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get9()Z

    move-result v8

    if-nez v8, :cond_1c

    const-string/jumbo v8, "hongbao_assistant"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    invoke-static {p1}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1d

    invoke-static {}, Lcom/android/settings/Utils;->isPenAirViewSupported()Z

    move-result v8

    if-eqz v8, :cond_24

    :cond_1d
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v8

    if-nez v8, :cond_1e

    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_25

    :cond_1e
    const-string/jumbo v8, "galaxy_labs"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isPanicModeSupported()Z

    move-result v8

    if-eqz v8, :cond_26

    const-string/jumbo v8, "key_safety_assistance"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    invoke-static {p1}, Lcom/android/settings/Utils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1f

    const-string/jumbo v8, "key_safety_assistance"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    invoke-static {p1}, Lcom/android/settings/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_20

    const-string/jumbo v8, "dock_settings"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    const-string/jumbo v8, "applock"

    invoke-static {v8}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v8

    if-eqz v8, :cond_27

    :goto_8
    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKey()Z

    move-result v8

    if-nez v8, :cond_21

    const-string/jumbo v8, "active_key_settings"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v8

    if-eqz v8, :cond_28

    :goto_9
    const-string/jumbo v8, "com.samsung.android.quickassist"

    invoke-static {p1, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_22

    const-string/jumbo v8, "quick_dial"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    return-object v7

    :cond_23
    const-string/jumbo v8, "multi_window_setting"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_24
    const-string/jumbo v8, "pen_settings_title"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_25
    const-string/jumbo v8, "pen_settings_title"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "dock_settings"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "smartscreen_stay"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "key_panic_mode"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "key_safety_assistance"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_26
    const-string/jumbo v8, "key_panic_mode"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_27
    const-string/jumbo v8, "key_applock"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_28
    const-string/jumbo v8, "increse_touch_sensetivity"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v2, 0x7f080136

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
