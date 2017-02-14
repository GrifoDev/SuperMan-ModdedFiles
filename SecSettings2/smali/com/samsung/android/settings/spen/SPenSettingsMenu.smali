.class public Lcom/samsung/android/settings/spen/SPenSettingsMenu;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SPenSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$1;,
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$2;,
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$3;,
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;,
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;
    }
.end annotation


# static fields
.field private static final PEN_NOTIFICATION_OFF:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private ContactUs_appId:Ljava/lang/String;

.field private ContactUs_appName:Ljava/lang/String;

.field private ContactUs_packageName:Ljava/lang/String;

.field private isMemoSupported:Z

.field private mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

.field private mAirCmdObserver:Landroid/database/ContentObserver;

.field private mAirCommandPref:Landroid/preference/Preference;

.field private mAirViewObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mDirectPenObserver:Landroid/database/ContentObserver;

.field private mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

.field private mInboxSPen:Z

.field private mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

.field private mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mPenDetachObserver:Landroid/database/ContentObserver;

.field private mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

.field private mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

.field private mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

.field private mPenScreenOnPref:Landroid/preference/SwitchPreference;

.field private mScreenoffNoteSwitchPref:Landroid/preference/SwitchPreference;

.field private mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;

.field private magnificationGesturesEnabled:Z

.field private magnifierWindowEnabled:Z

.field private sTalkbackEnabled:Z

.field private talkbackEnabled:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->setAirviewDB(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->updateEnableState()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->sTalkbackEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->talkbackEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnifierWindowEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnificationGesturesEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isMemoSupported:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mInboxSPen:Z

    const-string/jumbo v0, "com.sec.android.app.SmartClipService"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_packageName:Ljava/lang/String;

    const-string/jumbo v0, "Spen"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_appName:Ljava/lang/String;

    const-string/jumbo v0, "304612tl4e"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_appId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$1;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$2;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$3;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private isNotesEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.samsung.android.app.notes"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private sendLossPreventionAlert(Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings.LossPeventionAlertChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "LossPreventionAlertState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "SPenSettingsMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BroadCast Loss prevention alert : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setAirviewDB(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering_information_preview"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering_icon_label"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering_list_scroll"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering_link_preview"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAirViewTalkBackDisableDialog()V
    .locals 9

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->dismissAllDialog()V

    const-string/jumbo v5, ""

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "com.samsung.android.app.talkback"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2022 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0b0244

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "com.google.android.marvin.talkback"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2022 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0b0243

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2022 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0b14d6

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "com.sec.feature.overlaymagnifier"

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n\u2022 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0b022c

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x1030132

    invoke-direct {v0, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v0, v6}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v6, 0x7f04001b

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v6, 0x7f11010d

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x7f11010e

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0b090a

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/spen/SPenSettingsMenu$6;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$6;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    const v8, 0x7f0b0bf3

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/spen/SPenSettingsMenu$7;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$7;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    const/high16 v8, 0x1040000

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/samsung/android/settings/spen/SPenSettingsMenu$8;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$8;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showDirectPenInputTalkBackDisableDialog()V
    .locals 9

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->dismissAllDialog()V

    const-string/jumbo v5, ""

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "com.samsung.android.app.talkback"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2022 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0b0244

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "com.google.android.marvin.talkback"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2022 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0b0243

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2022 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0b14d6

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "com.sec.feature.overlaymagnifier"

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n\u2022 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0b022c

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x1030132

    invoke-direct {v0, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v0, v6}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v6, 0x7f04001b

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v6, 0x7f11010d

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x7f11010e

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0b0bd3

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/spen/SPenSettingsMenu$9;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$9;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    const v8, 0x7f0b0bf3

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/spen/SPenSettingsMenu$10;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$10;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    const/high16 v8, 0x1040000

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/samsung/android/settings/spen/SPenSettingsMenu$11;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$11;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private updateEnableState()V
    .locals 13

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "air_button_onoff"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v10, "SPenSettingsMenu"

    const-string/jumbo v11, "updateEnableState() "

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirCommandPref:Landroid/preference/Preference;

    if-eqz v5, :cond_3

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {v11, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x3

    new-array v1, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x3

    new-array v3, v10, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v10, 0x1

    if-ne v5, v10, :cond_4

    const v10, 0x7f0b0be9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v1, v11

    const-string/jumbo v10, "2"

    const/4 v11, 0x0

    aput-object v10, v3, v11

    const/4 v2, 0x1

    :cond_0
    :goto_1
    iget-boolean v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isMemoSupported:Z

    if-eqz v10, :cond_5

    const v10, 0x7f0b0be8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v1, v11

    const-string/jumbo v10, "3"

    const/4 v11, 0x1

    aput-object v10, v3, v11

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_2
    const v10, 0x7f0b0be6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v1, v11

    const-string/jumbo v10, "0"

    const/4 v11, 0x2

    aput-object v10, v3, v11

    add-int/lit8 v2, v2, 0x1

    new-array v6, v2, [Ljava/lang/CharSequence;

    new-array v7, v2, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_3
    array-length v10, v1

    if-ge v4, v10, :cond_7

    aget-object v10, v1, v4

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    aget-object v10, v1, v4

    aput-object v10, v6, v0

    aget-object v10, v3, v4

    aput-object v10, v7, v0

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_detachment_option"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_detachment_option"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_detachment_option"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_6

    const/4 v10, 0x3

    if-ne v8, v10, :cond_1

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_detachment_option"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v10, v6}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v10, v7}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method private updateState()V
    .locals 14

    const-string/jumbo v9, "SPenSettingsMenu"

    const-string/jumbo v10, "updateState() "

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "pen_detachment_alert"

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "spen_feedback_sound"

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "spen_feedback_haptic"

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_detached_time"

    const-wide/16 v12, 0x0

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v9

    if-eqz v9, :cond_4

    const v9, 0x7f0b0bf0

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    const-wide/16 v10, 0x0

    cmp-long v9, v0, v10

    if-lez v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " \u200e "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0b0bde

    invoke-virtual {v6, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "pen_hovering_pointer"

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "action_memo_on_off_screen"

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "screen_off_memo"

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_detachment_option"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v3, 0x0

    :goto_8
    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v9}, Lcom/android/settings/SecDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    array-length v9, v9

    if-ge v3, v9, :cond_9

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v9}, Lcom/android/settings/SecDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v9

    aget-object v9, v9, v3

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v5, v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v9, v3}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_4
    const v9, 0x7f0b0bef

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_5
    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v4}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_6
    const/4 v9, 0x0

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    goto :goto_6

    :cond_8
    const/4 v9, 0x0

    goto :goto_7

    :cond_9
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "pen_detect_mode_disabled"

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_b

    const/4 v9, 0x1

    :goto_9
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenScreenOnPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "spen_screen_on"

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, 0x1

    :goto_a
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_writing_buddy"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_d

    const/4 v8, 0x1

    :goto_b
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string/jumbo v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    :cond_a
    :goto_c
    return-void

    :cond_b
    const/4 v9, 0x0

    goto :goto_9

    :cond_c
    const/4 v9, 0x0

    goto :goto_a

    :cond_d
    const/4 v8, 0x0

    goto :goto_b

    :cond_e
    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    goto :goto_c
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v5, "SPenSettingsMenu"

    const-string/jumbo v6, "onCreate() "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800b5

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->addPreferencesFromResource(I)V

    const-string/jumbo v5, "key_air_button"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirCommandPref:Landroid/preference/Preference;

    const-string/jumbo v5, "pen_air_view"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    const-string/jumbo v5, "key_writing_buddy"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    const-string/jumbo v5, "key_spen_pointer_switch"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "loss_prevention_alert"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "action_memo_on_off_screen"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "screen_off_note"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/preference/SwitchPreference;

    const v6, 0x7f0b0bcc

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_2
    const-string/jumbo v5, "battery_saving"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "key_spen_screen_on"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenScreenOnPref:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenScreenOnPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenScreenOnPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "key_additional_feedback_pen_sound"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "pen_detachment_option_list"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SecDropDownPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v5, v8}, Lcom/android/settings/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.sec.android.app.SPenKeeper"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isNotesEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isMemoSupported:Z

    iget-boolean v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isMemoSupported:Z

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenScreenOnPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "spen_contact_us"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "spen_contact_us_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string/jumbo v5, "com.sec.feature.spen_usp"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    rem-int/lit8 v5, v0, 0xa

    const/4 v6, 0x5

    if-ne v5, v6, :cond_7

    const-string/jumbo v5, "pen_detachment_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "pen_detachment_option_list"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "loss_prevention_alert"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "battery_saving"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string/jumbo v6, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    const-string/jumbo v0, "SPenSettingsMenu"

    const-string/jumbo v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    const v9, 0x7f0b18af

    const v8, 0x7f0b18ae

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "key_writing_buddy"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "com.sec.feature.overlaymagnifier"

    invoke-static {v5, v10}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "accessibility_magnifier"

    invoke-static {v5, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "accessibility_display_magnification_enabled"

    invoke-static {v5, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->showDirectPenInputTalkBackDisableDialog()V

    return v6

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    if-nez v0, :cond_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_writing_buddy"

    if-eqz v4, :cond_5

    move v5, v6

    :goto_1
    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "pen_writing_buddy"

    invoke-static {v5, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    move v5, v8

    :goto_2
    invoke-virtual {v9, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v9, "pen_writing_buddy"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_4
    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "direct pen input : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_writing_buddy"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_5
    move v5, v7

    goto :goto_1

    :cond_6
    const v5, 0x7f0b0bd1

    goto :goto_2

    :cond_7
    move v5, v7

    goto :goto_3

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_writing_buddy"

    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_9

    :goto_5
    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_4

    :cond_9
    move v8, v9

    goto :goto_5

    :cond_a
    const-string/jumbo v5, "pen_air_view"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "com.sec.feature.overlaymagnifier"

    invoke-static {v5, v10}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "accessibility_magnifier"

    invoke-static {v5, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_d

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "finger_magnifier"

    invoke-static {v5, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_e

    const/4 v2, 0x1

    :cond_b
    :goto_7
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "accessibility_display_magnification_enabled"

    invoke-static {v5, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_f

    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->showAirViewTalkBackDisableDialog()V

    return v6

    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    :cond_e
    const/4 v2, 0x0

    goto :goto_7

    :cond_f
    if-nez v0, :cond_c

    if-nez v2, :cond_c

    :cond_10
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->setAirviewDB(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_hovering"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_11

    :goto_8
    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v9, "pen_hovering"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_12

    move v5, v6

    :goto_9
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_a
    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "air view : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_hovering"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_11
    const v8, 0x7f0b07bc

    goto :goto_8

    :cond_12
    move v5, v7

    goto :goto_9

    :cond_13
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_hovering"

    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_14

    :goto_b
    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_a

    :cond_14
    move v8, v9

    goto :goto_b

    :cond_15
    const-string/jumbo v5, "battery_saving"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_detect_mode_disabled"

    if-eqz v4, :cond_16

    move v5, v6

    :goto_c
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "battery saving : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_detect_mode_disabled"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_16
    move v5, v7

    goto :goto_c

    :cond_17
    const-string/jumbo v5, "key_spen_pointer_switch"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_hovering_pointer"

    if-eqz v4, :cond_18

    move v5, v6

    :goto_d
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Pointer : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_hovering_pointer"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_18
    move v5, v7

    goto :goto_d

    :cond_19
    const-string/jumbo v5, "loss_prevention_alert"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_detachment_alert"

    if-eqz v4, :cond_1a

    move v5, v6

    :goto_e
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->sendLossPreventionAlert(Z)V

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Loss prevention alert : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_detachment_alert"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1a
    move v5, v7

    goto :goto_e

    :cond_1b
    const-string/jumbo v5, "action_memo_on_off_screen"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "action_memo_on_off_screen"

    if-eqz v4, :cond_1c

    move v5, v6

    :goto_f
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Screen off memo : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "action_memo_on_off_screen"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1c
    move v5, v7

    goto :goto_f

    :cond_1d
    const-string/jumbo v5, "screen_off_note"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "screen_off_memo"

    if-eqz v4, :cond_1e

    move v5, v6

    :goto_10
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Screen off note : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "screen_off_memo"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1e
    move v5, v7

    goto :goto_10

    :cond_1f
    const-string/jumbo v5, "key_spen_screen_on"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "spen_screen_on"

    if-eqz v4, :cond_20

    move v5, v6

    :goto_11
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SPen screen on : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "spen_screen_on"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_20
    move v5, v7

    goto :goto_11

    :cond_21
    const-string/jumbo v5, "key_additional_feedback_pen_sound"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "spen_feedback_sound"

    if-eqz v4, :cond_22

    move v5, v6

    :goto_12
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_detachment_notification"

    if-eqz v4, :cond_23

    const-string/jumbo v5, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    :goto_13
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pen additional feedback sound : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "spen_feedback_sound"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_22
    move v5, v7

    goto :goto_12

    :cond_23
    sget-object v5, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->PEN_NOTIFICATION_OFF:Ljava/lang/String;

    goto :goto_13

    :cond_24
    const-string/jumbo v5, "key_additional_feedback_pen_haptic"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "spen_feedback_haptic"

    if-eqz v4, :cond_25

    move v5, v6

    :goto_14
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_attach_detach_vibration"

    if-eqz v4, :cond_26

    move v5, v6

    :goto_15
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pen additional feedback haptic : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "spen_feedback_haptic"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_25
    move v5, v7

    goto :goto_14

    :cond_26
    move v5, v7

    goto :goto_15

    :cond_27
    const-string/jumbo v5, "pen_detachment_option_list"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "pen_detachment_option"

    invoke-static {v5, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f10017f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return v6

    :cond_28
    return v6
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    const v7, 0x7f100180

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "key_air_button"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "SEAC"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    :cond_1
    const-string/jumbo v5, "battery_saving"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100182

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "key_spen_pointer_switch"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10017e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    const-string/jumbo v5, "loss_prevention_alert"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100181

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_3

    :cond_7
    const-string/jumbo v5, "action_memo_on_off_screen"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    move v3, v4

    goto :goto_4

    :cond_9
    const-string/jumbo v5, "screen_off_note"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_a

    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    move v3, v4

    goto :goto_5

    :cond_b
    const-string/jumbo v5, "key_additional_feedback_pen_sound"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100183

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_c

    :goto_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    move v3, v4

    goto :goto_6

    :cond_d
    const-string/jumbo v5, "key_additional_feedback_pen_haptic"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100184

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_e

    :goto_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    move v3, v4

    goto :goto_7

    :cond_f
    const-string/jumbo v3, "spen_contact_us"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_appName:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_appId:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->getContactUsIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 9

    const v6, 0x7f0b18af

    const v5, 0x7f0b18ae

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "SPenSettingsMenu"

    const-string/jumbo v7, "onResume() "

    invoke-static {v2, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v7, "air_button_onoff"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v7, "finger_magnifier"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnifierWindowEnabled:Z

    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->sTalkbackEnabled:Z

    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isGEDTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->talkbackEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v7, "accessibility_display_magnification_enabled"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnificationGesturesEnabled:Z

    const-string/jumbo v2, "SPenSettingsMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isEnable() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " magnifierWindowEnabled :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnifierWindowEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  magnificationGesturesEnabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnificationGesturesEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SPenSettingsMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sTalkbackEnabled "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->sTalkbackEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " talkbackEnabled :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->talkbackEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnifierWindowEnabled:Z

    if-eqz v2, :cond_3

    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->updateEnableState()V

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->updateState()V

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v8, "pen_hovering"

    invoke-static {v2, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {v7, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v8, "pen_hovering"

    invoke-static {v2, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v5

    :goto_4
    invoke-virtual {v7, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v8, "pen_hovering"

    invoke-static {v2, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {v7, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_6
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v2, v3, :cond_9

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    :goto_7
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_b

    :goto_8
    invoke-virtual {v2, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "air_button_onoff"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "pen_detached_time"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "pen_writing_buddy"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "pen_hovering"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_1
    move v2, v4

    goto/16 :goto_0

    :cond_2
    move v2, v4

    goto/16 :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->magnificationGesturesEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->sTalkbackEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->talkbackEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v7, "air_button_onoff"

    invoke-static {v2, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_4
    move v2, v4

    goto/16 :goto_3

    :cond_5
    const v2, 0x7f0b07bc

    goto/16 :goto_4

    :cond_6
    move v2, v4

    goto/16 :goto_5

    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v8, "pen_hovering"

    invoke-static {v2, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    :goto_a
    invoke-virtual {v7, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_6

    :cond_8
    move v2, v6

    goto :goto_a

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v7, "pen_writing_buddy"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v0, 0x1

    :goto_b
    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    goto/16 :goto_7

    :cond_a
    const/4 v0, 0x0

    goto :goto_b

    :cond_b
    const v5, 0x7f0b0bd1

    goto/16 :goto_8

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_d

    :goto_c
    invoke-virtual {v2, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_9

    :cond_d
    move v5, v6

    goto :goto_c
.end method
