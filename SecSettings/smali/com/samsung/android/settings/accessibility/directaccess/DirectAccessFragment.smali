.class public Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DirectAccessFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$DirectAccessCallback;


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

.field private mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mAccessibilitySwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mDirectAccessEnabler:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

.field private mDirectAccessGuide:Lcom/samsung/android/settings/UnclickablePreference;

.field private mDirectAccessObserver:Landroid/database/ContentObserver;

.field private mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mMagnifierSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mPageReaderObserver:Landroid/database/ContentObserver;

.field private mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTalkBackObserver:Landroid/database/ContentObserver;

.field private mTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->updateDirectAccessDB(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkBackObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$4;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private checkNoneItemIsSelected()Z
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_accessibility"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_talkback"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_negative"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_samsung_screen_reader"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.app.talkback"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_s_talkback"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_5

    const/4 v0, 0x1

    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_universal_switch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_6

    const/4 v0, 0x1

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->isSupportedColorAdjustment(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_color_adjustment"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_7

    const/4 v0, 0x1

    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_access"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    const/4 v1, 0x1

    :goto_4
    if-eqz v0, :cond_14

    :goto_5
    return v1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_accessibility"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_talkback"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_negative"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_access_control"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "access_control_use"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_e

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_samsung_screen_reader"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_d

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.app.talkback"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_s_talkback"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_f

    const/4 v0, 0x1

    :cond_a
    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->isSupportedColorAdjustment(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_color_adjustment"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_10

    const/4 v0, 0x1

    :cond_b
    :goto_8
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_universal_switch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_11

    const/4 v0, 0x1

    :cond_c
    :goto_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_access_magnifier"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_12

    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_f
    const/4 v0, 0x0

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    goto :goto_9

    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_14
    move v1, v2

    goto/16 :goto_5
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

.method private updateDirectAccessDB(Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "Accessibility"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "direct_accessibility"

    :cond_0
    :goto_0
    if-nez v0, :cond_9

    return-void

    :cond_1
    const-string/jumbo v1, "Talkback"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "direct_talkback"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "Voice Assistant"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "direct_s_talkback"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "Universal switch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "direct_universal_switch"

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "Magnifier window"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v0, "direct_access_magnifier"

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "Negative colors"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v0, "direct_negative"

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "Color adjustment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v0, "direct_color_adjustment"

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "Interaction control"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v0, "direct_access_control"

    goto :goto_0

    :cond_8
    const-string/jumbo v1, "Page Reader"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "direct_samsung_screen_reader"

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p2, :cond_a

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_a
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateItemsStatus()V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.app.color"

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

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_color_adjustment"

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

    if-ge v7, v8, :cond_5

    xor-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_6

    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_access_control"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    if-eqz v2, :cond_7

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_access_magnifier"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1518

    return v0
.end method

.method public init()V
    .locals 1

    const-string/jumbo v0, "direct_access_guide"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/UnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessGuide:Lcom/samsung/android/settings/UnclickablePreference;

    const-string/jumbo v0, "direct_access_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v0, "direct_accessibility"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "direct_talkback"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "direct_s_talkback"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "direct_universal_switch"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "direct_negative"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "direct_color_adjustment"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "direct_accesscontrol"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "direct_page_reader"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "direct_magnifier"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_access"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_6

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

    if-eqz v4, :cond_3

    :cond_0
    const/4 v1, 0x1

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

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->installSwitchBarToggleSwitch()V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_s_talkback"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "enabled_accessibility_samsung_screen_reader"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

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

    const-string/jumbo v5, "direct_color_adjustment"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_access_control"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "access_control_use"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_access_magnifier"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f150004

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f12082c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->init()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->updateItemsStatus()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->checkNoneItemIsSelected()Z

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

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v3, 0x0

    return-object v3

    :pswitch_0
    const v3, 0x7f12082c

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f1213cb

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    aput-object v2, v4, v7

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const v5, 0x7f120829

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$7;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)V

    const v5, 0x7f120932

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$8;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$9;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$9;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->removeSwitchBarToggleSwitch()V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DirectAccess"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->checkNoneItemIsSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120826

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

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkBackObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const v7, 0x7f0b019c

    const/16 v4, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

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

    const v6, 0x7f0b0193

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
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

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

    const v6, 0x7f0b019a

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
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

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

    const v6, 0x7f0b0199

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
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_color_adjustment"

    if-eqz v0, :cond_9

    move v1, v2

    :goto_5
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0194

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
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_access_control"

    if-eqz v0, :cond_c

    move v1, v2

    :goto_7
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0197

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
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_s_talkback"

    if-eqz v0, :cond_f

    move v1, v2

    :goto_9
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

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
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_universal_switch"

    if-eqz v0, :cond_12

    move v1, v2

    :goto_b
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b019b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

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
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_samsung_screen_reader"

    if-eqz v0, :cond_15

    move v1, v2

    :goto_d
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

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
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v5, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_access_magnifier"

    if-eqz v0, :cond_18

    move v1, v2

    :goto_f
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0198

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

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
    return v3
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$DirectAccessCallback;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessEnabler:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->updateDirectAccessMenu()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessEnabler:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->resume()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_accessibility"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_talkback"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

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

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "enabled_accessibility_samsung_screen_reader"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f120822

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_samsung_screen_reader"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_universal_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_negative"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_color_adjustment"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access_control"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access_magnifier"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "access_control_use"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_talkback"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkBackObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_s_talkback"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkBackObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "enabled_accessibility_samsung_screen_reader"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "DirectAccess"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_4

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_5

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_5

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_6

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_7

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_9
.end method

.method public showExclusivePopup()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->showDialog(I)V

    return-void
.end method

.method public updateDirectAccessMenu()V
    .locals 13

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->isAdded()Z

    move-result v10

    if-nez v10, :cond_0

    return-void

    :cond_0
    const-string/jumbo v10, "DirectAccessFragment"

    const-string/jumbo v11, "updateDirectAccessMenu"

    invoke-static {v10, v11}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

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

    if-ne v10, v11, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "blackgrey_powersaving_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.app.color"

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

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string/jumbo v11, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-static {}, Lcom/android/settings/Utils;->isNavigationBar()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessGuide:Lcom/samsung/android/settings/UnclickablePreference;

    const v11, 0x7f12082b

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(I)V

    :cond_1
    if-nez v9, :cond_11

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "access_control_use"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_10

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v11, 0x7f120819

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :goto_1
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v11, 0x7f120822

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_3
    :goto_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    const/16 v11, 0x64

    if-ge v10, v11, :cond_4

    xor-int/lit8 v10, v0, 0x1

    if-eqz v10, :cond_5

    :cond_4
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    if-nez v7, :cond_6

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_6
    if-nez v1, :cond_7

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_7
    if-nez v5, :cond_8

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_8
    if-nez v4, :cond_9

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_9
    if-nez v6, :cond_a

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_a
    if-nez v3, :cond_b

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_b
    if-eqz v2, :cond_c

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    if-eqz v10, :cond_d

    :cond_c
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_d
    return-void

    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_10
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_11
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "enabled_accessibility_samsung_screen_reader"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v11, 0x7f120822

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_12
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    if-eqz v8, :cond_14

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "access_control_use"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_15

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v11, 0x7f120819

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :goto_5
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "direct_talkback"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_16

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.app.talkback"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "direct_s_talkback"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_17

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_13
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_14
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_4

    :cond_15
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_16
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_6

    :cond_17
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2
.end method
