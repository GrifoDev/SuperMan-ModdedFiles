.class public Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DirectAccessFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;,
        Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$2;,
        Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$3;,
        Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$4;,
        Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;
    }
.end annotation


# instance fields
.field private mAccessControlObserver:Landroid/database/ContentObserver;

.field private mAccessControlSwitch:Landroid/preference/SwitchPreference;

.field private mAccessibilitySwitch:Landroid/preference/SwitchPreference;

.field private mColorAdjustmentObserver:Landroid/database/ContentObserver;

.field private mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

.field private mDirectAccessCategory:Landroid/preference/PreferenceCategory;

.field private mDirectAccessEnabler:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

.field private mDirectAccessObserver:Landroid/database/ContentObserver;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mGreyscaleSwitch:Landroid/preference/SwitchPreference;

.field private mMagnifierSwitch:Landroid/preference/SwitchPreference;

.field private mNegativeColorSwitch:Landroid/preference/SwitchPreference;

.field private mPageReaderObserver:Landroid/database/ContentObserver;

.field private mPageReaderSwitch:Landroid/preference/SwitchPreference;

.field private mSTalkbackSwitch:Landroid/preference/SwitchPreference;

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTalkbackSwitch:Landroid/preference/SwitchPreference;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mUniversalInputSwitch:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$4;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private checkNoneItemisSelected()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_accessibility"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_talkback"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_negative"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_greyscale"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_color_adjustment"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "color_blind_test"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_samsung_screen_reader"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.app.talkback"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_s_talkback"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_6

    const/4 v0, 0x1

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_universal_switch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_7

    const/4 v0, 0x1

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.sec.feature.overlaymagnifier"

    invoke-static {v2, v3}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_access_magnifier"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x1

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_access"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_13

    const/4 v1, 0x1

    :goto_4
    if-eqz v0, :cond_14

    if-eqz v1, :cond_14

    return v5

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_accessibility"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_talkback"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_negative"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_greyscale"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_color_adjustment"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "color_blind_test"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_f

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_access_control"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "access_control_use"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_f

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_samsung_screen_reader"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_e

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.app.talkback"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_s_talkback"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_10

    const/4 v0, 0x1

    :cond_c
    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_universal_switch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_11

    const/4 v0, 0x1

    :cond_d
    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.sec.feature.overlaymagnifier"

    invoke-static {v2, v3}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_access_magnifier"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_12

    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_e
    const/4 v0, 0x0

    goto :goto_5

    :cond_f
    const/4 v0, 0x0

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    goto :goto_7

    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_14
    return v4
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$6;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method private updateItemsStatus()V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.app.colorblind"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.google.android.marvin.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.app.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.universalswitch"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.app.screenreader"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.app.accesscontrol"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.sec.feature.overlaymagnifier"

    invoke-static {v7, v8}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_color_adjustment"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_greyscale"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_talkback"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_s_talkback"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_universal_switch"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_samsung_screen_reader"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    const/16 v8, 0x64

    if-ge v7, v8, :cond_7

    if-eqz v0, :cond_7

    :goto_0
    if-eqz v2, :cond_5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_access_magnifier"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    return-void

    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_access_control"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x132

    return v0
.end method

.method public init()V
    .locals 1

    const-string/jumbo v0, "direct_access_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v0, "direct_accessibility"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    const-string/jumbo v0, "direct_talkback"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    const-string/jumbo v0, "direct_s_talkback"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    const-string/jumbo v0, "direct_universal_switch"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    const-string/jumbo v0, "direct_negative"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    const-string/jumbo v0, "direct_greyscale"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    const-string/jumbo v0, "direct_color_adjustment"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const-string/jumbo v0, "direct_accesscontrol"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const-string/jumbo v0, "direct_page_reader"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    const-string/jumbo v0, "direct_magnifier"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_access"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_accessibility"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_talkback"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_access"

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->installSwitchBarToggleSwitch()V

    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_s_talkback"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_samsung_screen_reader"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_universal_switch"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_negative"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_greyscale"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_color_adjustment"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "color_blind_test"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_access_control"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "access_control_use"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_access_magnifier"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0241

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->init()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->updateItemsStatus()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->checkNoneItemisSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->removeSwitchBarToggleSwitch()V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DirectAccess"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->checkNoneItemisSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b02d2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessEnabler:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->pause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const v7, 0x7f100293

    const/16 v4, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_accessibility"

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100292

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_talkback"

    if-eqz v0, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100294

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_4

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_negative"

    if-eqz v0, :cond_6

    move v1, v2

    :goto_3
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100297

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_7

    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_6
    move v1, v3

    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_greyscale"

    if-eqz v0, :cond_9

    move v1, v2

    :goto_5
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100298

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_a

    :goto_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_9
    move v1, v3

    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_color_adjustment"

    if-eqz v0, :cond_c

    move v1, v2

    :goto_7
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100299

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_d

    :goto_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_c
    move v1, v3

    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_access_control"

    if-eqz v0, :cond_f

    move v1, v2

    :goto_9
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10029a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_10

    :goto_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_f
    move v1, v3

    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_s_talkback"

    if-eqz v0, :cond_12

    move v1, v2

    :goto_b
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_13

    :goto_c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_12
    move v1, v3

    goto :goto_b

    :cond_13
    move v4, v3

    goto :goto_c

    :cond_14
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_universal_switch"

    if-eqz v0, :cond_15

    move v1, v2

    :goto_d
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100295

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_16

    :goto_e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_15
    move v1, v3

    goto :goto_d

    :cond_16
    move v4, v3

    goto :goto_e

    :cond_17
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_samsung_screen_reader"

    if-eqz v0, :cond_18

    move v1, v2

    :goto_f
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_19

    :goto_10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_18
    move v1, v3

    goto :goto_f

    :cond_19
    move v4, v3

    goto :goto_10

    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v5, "com.sec.feature.overlaymagnifier"

    invoke-static {v1, v5}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_access_magnifier"

    if-eqz v0, :cond_1b

    move v1, v2

    :goto_11
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100296

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_1c

    :goto_12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_1b
    move v1, v3

    goto :goto_11

    :cond_1c
    move v4, v3

    goto :goto_12

    :cond_1d
    return v3
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "DirectAccess"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100290

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessEnabler:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->updateDirectAccessMenu()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessEnabler:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->resume()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_accessibility"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_talkback"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.app.talkback"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_s_talkback"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_samsung_screen_reader"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_universal_switch"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_negative"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_greyscale"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_color_adjustment"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access_control"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access_magnifier"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "color_blind_test"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "access_control_use"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_4

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_5

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_6

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_7

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_9
.end method

.method public updateDirectAccessMenu()V
    .locals 13

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->isAdded()Z

    move-result v10

    if-nez v10, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "direct_access"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "powersaving_switch"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "blackgrey_powersaving_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.app.colorblind"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.google.android.marvin.talkback"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.app.talkback"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.universalswitch"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.app.screenreader"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.app.accesscontrol"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.sec.feature.overlaymagnifier"

    invoke-static {v10, v11}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v9, :cond_e

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "color_blind_test"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b02cc

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_1
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "access_control_use"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b02cf

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_2
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b02cd

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    const/16 v11, 0x64

    if-ge v10, v11, :cond_13

    if-eqz v0, :cond_13

    :goto_4
    if-nez v7, :cond_2

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    if-nez v1, :cond_3

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    if-nez v5, :cond_4

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    if-nez v4, :cond_5

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    if-nez v6, :cond_6

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    if-nez v3, :cond_7

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    if-eqz v2, :cond_8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    if-eqz v10, :cond_9

    :cond_8
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    return-void

    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_c
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_d
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_e
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_f
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    if-eqz v8, :cond_10

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "color_blind_test"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_11

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b02cc

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "access_control_use"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b02cf

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_7
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_10
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_5

    :cond_11
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_12
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_13
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4
.end method
