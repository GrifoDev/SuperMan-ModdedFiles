.class public Lcom/samsung/android/settings/NewOneHandOperationSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/NewOneHandOperationSettings$1;,
        Lcom/samsung/android/settings/NewOneHandOperationSettings$2;,
        Lcom/samsung/android/settings/NewOneHandOperationSettings$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static SETTINGS_ADVANCEDFEATURE_ONEHANDOPERATION:I

.field private static SETTINGS_ADVANCEDFEATURE_ONEHANDOPERATION_SCREEN:I


# instance fields
.field private mButtonType:Lcom/samsung/android/settings/SecRadioButtonPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mGestureType:Lcom/samsung/android/settings/SecRadioButtonPreference;

.field private mOneHandOperationObserver:Landroid/database/ContentObserver;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mPrefShowHardKeysOnScreen:Landroid/preference/SwitchPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;

.field private mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

.field private mViewPagerAdapter:Lcom/samsung/android/settings/OneHandViewPagerAdapter;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/SecRadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/SecRadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mPrefShowHardKeysOnScreen:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/samsung/android/settings/WrapContentHeightViewPager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/NewOneHandOperationSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->changeColor(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/NewOneHandOperationSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/NewOneHandOperationSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/NewOneHandOperationSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/NewOneHandOperationSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings$1;-><init>(Lcom/samsung/android/settings/NewOneHandOperationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mOneHandOperationObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings$3;-><init>(Lcom/samsung/android/settings/NewOneHandOperationSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private changeColor(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200c8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200c9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private isReadyOneHandedOperationStatusEnable()Z
    .locals 15

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isGEDTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isSwitchAccessEnabled(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "com.sec.feature.overlaymagnifier"

    invoke-static {v12, v13}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_magnifier"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    const/4 v4, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_display_magnification_enabled"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "finger_magnifier"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v11

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "access_control_use"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "assistant_menu"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "direct_access"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_autoclick_enabled"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    const/4 v2, 0x1

    :goto_7
    if-nez v8, :cond_1

    if-nez v9, :cond_1

    if-nez v10, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    if-nez v11, :cond_1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const/4 v7, 0x0

    :cond_2
    return v7

    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    goto :goto_7
.end method

.method private reduceSizeBroadcast(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "is_enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private reduceSizeDisablePopup()V
    .locals 11

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b0b68

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "com.sec.feature.overlaymagnifier"

    invoke-static {v8, v9}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0b022d

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.app.talkback"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "\u200f "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0b0245

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.google.android.marvin.talkback"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "\u200f "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0b0244

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0b0229

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.universalswitch"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0b0246

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.app.accesscontrol"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0b02b5

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.app.assistantmenu"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0b01ec

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0b0242

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b1600

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b1612

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1030132

    invoke-direct {v0, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v8, 0x7f04001b

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v8, 0x7f11010d

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f11010e

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b0b69

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/NewOneHandOperationSettings$7;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings$7;-><init>(Lcom/samsung/android/settings/NewOneHandOperationSettings;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/NewOneHandOperationSettings$8;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings$8;-><init>(Lcom/samsung/android/settings/NewOneHandOperationSettings;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/NewOneHandOperationSettings$9;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings$9;-><init>(Lcom/samsung/android/settings/NewOneHandOperationSettings;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private updateRadioButtons(Lcom/samsung/android/settings/SecRadioButtonPreference;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/SecRadioButtonPreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "one_handed_op_wakeup_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/SecRadioButtonPreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "one_handed_op_wakeup_type"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->SETTINGS_ADVANCEDFEATURE_ONEHANDOPERATION:I

    sget v0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->SETTINGS_ADVANCEDFEATURE_ONEHANDOPERATION:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v8, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v8, 0x7f040114

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v8, 0x7f110152

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iput-object v8, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    new-instance v8, Lcom/samsung/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/android/settings/OneHandViewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/OneHandViewPagerAdapter;

    iget-object v8, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v9, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v8, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v9, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {v9}, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    new-instance v9, Lcom/samsung/android/settings/NewOneHandOperationSettings$5;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings$5;-><init>(Lcom/samsung/android/settings/NewOneHandOperationSettings;)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v8, 0x7f1103c5

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {v8}, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->getCount()I

    move-result v7

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_0

    move v1, v4

    const v8, 0x7f04006e

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v8, 0x7f0b0917

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    add-int/lit8 v10, v4, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v8, Lcom/samsung/android/settings/NewOneHandOperationSettings$6;

    invoke-direct {v8, p0, v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings$6;-><init>(Lcom/samsung/android/settings/NewOneHandOperationSettings;I)V

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-lez v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f0200c9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_3

    const v8, 0x7f110143

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v8, v7}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v3, v9, v10}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->getCurrentItem()I

    move-result v0

    const-string/jumbo v1, "OneHandOperationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfigurationChanged() : position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0800a8

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "gesture_type"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/SecRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/SecRadioButtonPreference;

    const-string/jumbo v1, "button_type"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/SecRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/SecRadioButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;)V

    const-string/jumbo v1, "switch_show_hard_keys"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mPrefShowHardKeysOnScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "switch_show_hard_keys"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->removePreference(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->setHasOptionsMenu(Z)V

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mPrefShowHardKeysOnScreen:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/samsung/android/settings/NewOneHandOperationSettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings$4;-><init>(Lcom/samsung/android/settings/NewOneHandOperationSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/SecRadioButtonPreference;

    const v2, 0x7f0b0b65

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const v2, 0x7f0b0430

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.helphub.HELP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "helphub:section"

    const-string/jumbo v4, "one_handed_operation"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mOneHandOperationObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mOneHandOperationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "OneHandedOperation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/OneHandViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/SecRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->updateRadioButtons(Lcom/samsung/android/settings/SecRadioButtonPreference;)V

    return-void
.end method

.method public onResume()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mOneHandOperationObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "any_screen_enabled"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mOneHandOperationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "any_screen_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x112006a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mPrefShowHardKeysOnScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "one_handed_op_wakeup_type"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mGestureType:Lcom/samsung/android/settings/SecRadioButtonPreference;

    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->updateRadioButtons(Lcom/samsung/android/settings/SecRadioButtonPreference;)V

    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "one_handed_op_wakeup_type"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mPrefShowHardKeysOnScreen:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mPrefShowHardKeysOnScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "one_handed_op_show_hard_keys"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v5, "OneHandedOperation"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_4
    move v2, v4

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mButtonType:Lcom/samsung/android/settings/SecRadioButtonPreference;

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_2
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "any_screen_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0b6a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->isReadyOneHandedOperationStatusEnable()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->reduceSizeDisablePopup()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100188

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/NewOneHandOperationSettings;->SETTINGS_ADVANCEDFEATURE_ONEHANDOPERATION_SCREEN:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/samsung/android/settings/NewOneHandOperationSettings;->SETTINGS_ADVANCEDFEATURE_ONEHANDOPERATION_SCREEN:I

    if-eqz p2, :cond_2

    const/16 v1, 0x3e8

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "any_screen_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "any_screen_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V

    goto :goto_0
.end method
