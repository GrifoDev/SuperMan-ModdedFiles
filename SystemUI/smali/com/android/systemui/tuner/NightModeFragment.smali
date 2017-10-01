.class public Lcom/android/systemui/tuner/NightModeFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "NightModeFragment.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/policy/NightModeController$Listener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_ADJUST_BRIGHTNESS:Ljava/lang/CharSequence;

.field private static final KEY_ADJUST_TINT:Ljava/lang/CharSequence;

.field private static final KEY_AUTO:Ljava/lang/CharSequence;


# instance fields
.field private mAdjustBrightness:Landroid/support/v14/preference/SwitchPreference;

.field private mAdjustTint:Landroid/support/v14/preference/SwitchPreference;

.field private mAutoSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

.field private mSwitch:Landroid/widget/Switch;

.field private mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/tuner/NightModeFragment;)Lcom/android/systemui/statusbar/policy/NightModeController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/NightModeFragment;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/tuner/NightModeFragment;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/NightModeFragment;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/tuner/NightModeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tuner/NightModeFragment;->calculateDisabled()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "auto"

    sput-object v0, Lcom/android/systemui/tuner/NightModeFragment;->KEY_AUTO:Ljava/lang/CharSequence;

    const-string/jumbo v0, "adjust_tint"

    sput-object v0, Lcom/android/systemui/tuner/NightModeFragment;->KEY_ADJUST_TINT:Ljava/lang/CharSequence;

    const-string/jumbo v0, "adjust_brightness"

    sput-object v0, Lcom/android/systemui/tuner/NightModeFragment;->KEY_ADJUST_BRIGHTNESS:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private calculateDisabled()V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment;->mAdjustTint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/tuner/NightModeFragment;->mAdjustBrightness:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    :goto_1
    add-int v0, v1, v4

    if-ne v0, v2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment;->mAdjustTint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment;->mAdjustTint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :goto_2
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment;->mAdjustBrightness:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment;->mAdjustTint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment;->mAdjustBrightness:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private postCalculateDisabled()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NightModeFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/tuner/NightModeFragment$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/tuner/NightModeFragment$2;-><init>(Lcom/android/systemui/tuner/NightModeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NightModeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NightModeController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/NightModeFragment;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NightModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/android/systemui/tuner/NightModeFragment;->mUiModeManager:Landroid/app/UiModeManager;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NightModeFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/NightModeFragment;->addPreferencesFromResource(I)V

    sget-object v1, Lcom/android/systemui/tuner/NightModeFragment;->KEY_AUTO:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/NightModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment;->mAutoSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment;->mAutoSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    sget-object v1, Lcom/android/systemui/tuner/NightModeFragment;->KEY_ADJUST_TINT:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/NightModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment;->mAdjustTint:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment;->mAdjustTint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    sget-object v1, Lcom/android/systemui/tuner/NightModeFragment;->KEY_ADJUST_BRIGHTNESS:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/NightModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment;->mAdjustBrightness:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment;->mAdjustBrightness:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NightModeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400c0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-super {p0, p1, p2, p3}, Landroid/support/v14/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public onNightModeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tuner/NightModeFragment;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NightModeController;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NightModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x134

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/android/systemui/tuner/NightModeFragment;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NightModeController;->removeListener(Lcom/android/systemui/statusbar/policy/NightModeController$Listener;)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NightModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/android/systemui/tuner/NightModeFragment;->mAutoSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-ne v3, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NightModeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/16 v4, 0x136

    invoke-static {v1, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/policy/NightModeController;->setAuto(Z)V

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/tuner/NightModeFragment;->mAdjustTint:Landroid/support/v14/preference/SwitchPreference;

    if-ne v3, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NightModeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/16 v4, 0x138

    invoke-static {v1, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NightModeController;->setAdjustTint(Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/android/systemui/tuner/NightModeFragment;->postCalculateDisabled()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/tuner/NightModeFragment;->mAdjustBrightness:Landroid/support/v14/preference/SwitchPreference;

    if-ne v3, p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NightModeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/16 v5, 0x139

    invoke-static {v3, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NightModeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v3

    const-string/jumbo v4, "brightness_use_twilight"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/systemui/tuner/NightModeFragment;->postCalculateDisabled()V

    goto :goto_0

    :cond_3
    return v1
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NightModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x134

    invoke-static {v0, v1, v4}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/android/systemui/tuner/NightModeFragment;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NightModeController;->addListener(Lcom/android/systemui/statusbar/policy/NightModeController$Listener;)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NightModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "brightness_use_twilight"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "tuner_night_mode_adjust_tint"

    aput-object v2, v1, v4

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/tuner/NightModeFragment;->calculateDisabled()V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "brightness_use_twilight"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/tuner/NightModeFragment;->mAdjustBrightness:Landroid/support/v14/preference/SwitchPreference;

    if-eqz p2, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "tuner_night_mode_adjust_tint"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/tuner/NightModeFragment;->mAdjustTint:Landroid/support/v14/preference/SwitchPreference;

    if-eqz p2, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    :goto_2
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v14/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v1, 0x7f1303ed

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/systemui/tuner/NightModeFragment;->mNightModeController:Lcom/android/systemui/statusbar/policy/NightModeController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NightModeController;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v1, Lcom/android/systemui/tuner/NightModeFragment$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/tuner/NightModeFragment$1;-><init>(Lcom/android/systemui/tuner/NightModeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
