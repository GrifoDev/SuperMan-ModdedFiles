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
    .locals 16
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

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "smartscreen_stay"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v12

    if-eqz v12, :cond_1

    const-string/jumbo v12, "direct_share"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v5

    const-string/jumbo v12, "com.samsung.android.game.gametools"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-nez v5, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap2(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_2
    const-string/jumbo v12, "game_home"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v12

    if-nez v12, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_5

    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string/jumbo v13, "CscFeature_Common_EnableAirMessage"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_6

    :cond_5
    const-string/jumbo v12, "display_airmessage"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v12

    if-eqz v12, :cond_7

    const-string/jumbo v12, "com.samsung.android.myeventcenter"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_7
    const-string/jumbo v12, "key_festival_effect"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string/jumbo v13, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "SMARTMANAGER"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    if-eqz v12, :cond_a

    :cond_9
    const-string/jumbo v12, "call_message_spam_filter"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string/jumbo v12, "com.samsung.android.app.scrollcapture"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string/jumbo v12, "com.samsung.android.app.smartcapture"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_b

    const-string/jumbo v12, "smart_capture"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const-string/jumbo v12, "com.sec.app.screenrecorder"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_d

    :cond_c
    const-string/jumbo v12, "screen_recorder"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMotionFeatures:[Ljava/lang/String;

    const/4 v12, 0x0

    array-length v14, v13

    :goto_0
    if-ge v12, v14, :cond_f

    aget-object v9, v13, v12

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_e

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_f
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string/jumbo v13, "CscFeature_Setting_ConfigMotionType"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_10

    const-string/jumbo v12, ","

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v8, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_10

    aget-object v12, v2, v4

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_10
    const/4 v7, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v7

    :cond_11
    and-int/lit8 v12, v7, 0x8

    if-eqz v12, :cond_12

    const-string/jumbo v12, "multi_window_setting"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v12

    if-nez v12, :cond_13

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_14

    :cond_13
    const-string/jumbo v12, "onehand_operation_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    const-string/jumbo v12, "com.samsung.android.app.galaxylabs"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_16

    :cond_15
    const-string/jumbo v12, "galaxy_labs"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "double_tab_launch_component"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-set0(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v12, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get0()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17

    const-string/jumbo v12, "quick_camera_launch"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    const-string/jumbo v12, "assist_and_voice_input_advanced"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap1(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_18

    const-string/jumbo v12, "hongbao_assistant"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_19

    invoke-static {}, Lcom/android/settings/Utils;->isPenAirViewSupported()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_19

    const-string/jumbo v12, "pen_settings_title"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v12

    if-nez v12, :cond_1a

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_2b

    :cond_1a
    const-string/jumbo v12, "galaxy_labs"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    const-string/jumbo v12, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_1c

    :cond_1b
    const-string/jumbo v12, "safetycare_help"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    invoke-static {}, Lcom/android/settings/Utils;->isPanicModeSupported()Z

    move-result v12

    if-eqz v12, :cond_2c

    const-string/jumbo v12, "key_safety_assistance"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string/jumbo v12, "key_safety_assistance"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_1e

    const-string/jumbo v12, "dock_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    const-string/jumbo v12, "applock"

    invoke-static {v12}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1f

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_1f

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_1f

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSSecure()Z

    move-result v12

    if-eqz v12, :cond_20

    const-string/jumbo v12, "com.samsung.android.app.sprotect"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_20

    :cond_1f
    const-string/jumbo v12, "key_applock"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKey()Z

    move-result v12

    if-nez v12, :cond_21

    const-string/jumbo v12, "active_key_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    const-string/jumbo v12, "increse_touch_sensetivity"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "com.samsung.android.quickassist"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_22

    const-string/jumbo v12, "quick_dial"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_23

    sget v12, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v13, 0x138e4

    if-ge v12, v13, :cond_24

    :cond_23
    const-string/jumbo v12, "swipe_to_call_or_send_messages"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v11

    if-eqz v11, :cond_25

    invoke-virtual {v11}, Lcom/samsung/android/app/SemDualAppManager;->isSupported()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_26

    :cond_25
    if-nez v11, :cond_27

    :cond_26
    const-string/jumbo v12, "dual_app"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap4(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_28

    const-string/jumbo v12, "finger_sensor_gesture"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1120096

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    const-string/jumbo v12, "quick_camera_launch"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isPanicModeSupported()Z

    move-result v12

    if-nez v12, :cond_29

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_2a

    :cond_29
    const-string/jumbo v12, "quick_camera_launch_power"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    return-object v10

    :cond_2b
    const-string/jumbo v12, "pen_settings_title"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "dock_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "smartscreen_stay"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "key_panic_mode"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "key_safety_assistance"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "safetycare_help"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_2c
    const-string/jumbo v12, "key_panic_mode"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_2d
    const-string/jumbo v12, "quick_camera_launch_power"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "assist_and_voice_input_advanced"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKey()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeyGridViewConcept()Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v1, 0x0

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v15, "active_key_settings"

    iput-object v15, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-class v15, Lcom/samsung/android/settings/activekey/ActiveKeySettings;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    const v15, 0x7f1221fb

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v15, 0x7f1221fb

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    const v15, 0x7f121d1d

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const/4 v15, 0x1

    iput v15, v1, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_2

    :cond_1
    const/4 v1, 0x0

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v15, "multi_window_setting"

    iput-object v15, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const/4 v15, 0x3

    iput v15, v1, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_4

    const-string/jumbo v15, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v2, 0x0

    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v15, "safetycare_help"

    iput-object v15, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const/4 v15, 0x3

    iput v15, v2, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v4, 0x0

    new-instance v4, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v15, "onehand_operation_settings"

    iput-object v15, v4, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const/4 v15, 0x3

    iput v15, v4, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1120096

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v5, 0x0

    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v15, "quick_camera_launch_power"

    iput-object v15, v5, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const/4 v15, 0x3

    iput v15, v5, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v6, 0x0

    new-instance v6, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v15, "palm_swipe_switch"

    iput-object v15, v6, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const/4 v15, 0x3

    iput v15, v6, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    new-instance v7, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v15, "pick_up_switch"

    iput-object v15, v7, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const/4 v15, 0x3

    iput v15, v7, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    new-instance v8, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v15, "smart_capture"

    iput-object v15, v8, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const/4 v15, 0x3

    iput v15, v8, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    new-instance v9, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v15, "smartscreen_stay"

    iput-object v15, v9, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const/4 v15, 0x3

    iput v15, v9, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    new-instance v10, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v15, "merged_mute_or_pause_switch"

    iput-object v15, v10, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const/4 v15, 0x3

    iput v15, v10, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    new-instance v11, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v15, "pick_up_to_call_out_switch"

    iput-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const/4 v15, 0x3

    iput v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v15, "increse_touch_sensetivity"

    iput-object v15, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const/4 v15, 0x3

    iput v15, v3, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string/jumbo v15, "applock"

    invoke-static {v15}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_5

    const/4 v1, 0x0

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v15, "key_applock"

    iput-object v15, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSSecure()Z

    move-result v15

    if-eqz v15, :cond_7

    const v15, 0x7f120226

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    :goto_1
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 v1, 0x0

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v15, "finger_sensor_gesture"

    iput-object v15, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const/4 v15, 0x3

    iput v15, v1, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v14

    :cond_6
    const/4 v5, 0x0

    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v15, "quick_camera_launch"

    iput-object v15, v5, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const/4 v15, 0x3

    iput v15, v5, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    const v15, 0x7f120220

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    goto :goto_1
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

    const v2, 0x7f15012a

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
