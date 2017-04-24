.class public Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ToggleMagnifierPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;,
        Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$2;,
        Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;,
        Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;,
        Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;,
        Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

.field mCursorX:F

.field mCursorY:F

.field mDeviceWidth:F

.field mDeviceheight:F

.field mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mHoverPadSizeObserver:Landroid/database/ContentObserver;

.field private final mIcObserver:Landroid/database/ContentObserver;

.field private mMagnifierSize:Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

.field private mMagnifierWindowDialog:Landroid/app/AlertDialog;

.field mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

.field private mMagnifier_settings:Landroid/preference/PreferenceCategory;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;I)Landroid/content/res/ColorStateList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->showFingerMagnifierDisablePopup(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->toggleEnableStateIC(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->updatedEnableState(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierWindowDialog:Landroid/app/AlertDialog;

    const-string/jumbo v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    iput v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mDeviceheight:F

    iput v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mDeviceWidth:F

    iput v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mCursorX:F

    iput v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mCursorY:F

    new-instance v0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mIcObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mHoverPadSizeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;-><init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method private showFingerMagnifierDisablePopup(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0b022d

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1030132

    invoke-direct {v1, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v1, v7}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v7, 0x7f04001b

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v7, 0x7f11010d

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v7, 0x7f11010e

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v10

    const v9, 0x7f0b0294

    invoke-virtual {v7, v9, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x104000a

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$6;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$6;-><init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$7;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$7;-><init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V

    const/high16 v9, 0x1040000

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$8;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$8;-><init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierWindowDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierWindowDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierWindowDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private toggleEnableStateIC(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ToggleSwitch;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setEnabledZoomButton(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private updatedEnableState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setEnabledZoomButton(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x131

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "finger_magnifier"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->installSwitchBarToggleSwitch()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    const v5, 0x7f0800bf

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->addPreferencesFromResource(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "finger_magnifier"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    new-instance v5, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-ne v1, v3, :cond_2

    :goto_0
    invoke-direct {v5, p0, v6, v3}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;-><init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/content/Context;Z)V

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v3, v7}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setOrder(I)V

    const-string/jumbo v3, "magnifier_settings"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    new-instance v0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->setOrder(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    const-string/jumbo v3, "magnifier_size"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "hover_zoom_magnifier_size"

    const/4 v6, 0x2

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "hover_zoom_magnifier_size"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "hover_zoom_magnifier_size"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    invoke-virtual {v3, p0}, Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    invoke-virtual {v3, p0}, Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    new-instance v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_2
    move v3, v4

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->removeSwitchBarToggleSwitch()V

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$5;-><init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mHoverPadSizeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mIcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierWindowDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierWindowDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierWindowDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MagnifierWindow"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const-string/jumbo v2, "magnifier_size"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hover_zoom_magnifier_size"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;->setSummary(Ljava/lang/CharSequence;)V

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v0, "small"

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "MGWS"

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10024a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_0
    const/4 v2, 0x1

    return v2

    :pswitch_0
    const-string/jumbo v0, "small"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "middle"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "large"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    const-string/jumbo v0, "magnifier_size"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10024a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v5, "MagnifierWindow"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "access_control_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mIcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "access_control_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->toggleEnableStateIC(Z)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "finger_magnifier"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->updatedEnableState(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "finger_magnifier"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "hover_zoom_magnifier_size"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mHoverPadSizeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->toggleEnableStateIC(Z)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
