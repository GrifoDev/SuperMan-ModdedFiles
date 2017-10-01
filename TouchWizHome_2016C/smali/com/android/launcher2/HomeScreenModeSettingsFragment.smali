.class public Lcom/android/launcher2/HomeScreenModeSettingsFragment;
.super Landroid/app/Fragment;
.source "HomeScreenModeSettingsFragment.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mApplyButton:Landroid/widget/Button;

.field private mAppsModeClickListener:Landroid/view/View$OnClickListener;

.field private mAppsRadio:Landroid/widget/RadioButton;

.field private mHomeOnlyModeClickListener:Landroid/view/View$OnClickListener;

.field private mHomeOnlyRadio:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HomeScreenModeSettingsFragment"

    sput-object v0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenModeSettingsFragment$2;-><init>(Lcom/android/launcher2/HomeScreenModeSettingsFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->mAppsModeClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenModeSettingsFragment$3;-><init>(Lcom/android/launcher2/HomeScreenModeSettingsFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->mHomeOnlyModeClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/HomeScreenModeSettingsFragment;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->mAppsRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/HomeScreenModeSettingsFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->showModeChangeDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/HomeScreenModeSettingsFragment;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/HomeScreenModeSettingsFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->setApplyButtonEnabled(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/HomeScreenModeSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->changeHomeScreenMode()V

    return-void
.end method

.method private changeHomeScreenMode()V
    .locals 10

    const/4 v1, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherProvider;->getCurrentDBHomeOnlyMode()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/android/launcher2/LauncherApplication;->writeHomeOnlyModeEnabled(Z)V

    const/4 v0, 0x2

    new-array v2, v0, [I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-nez v5, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v9, v2, v0}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[IZ)V

    if-nez v5, :cond_3

    :goto_2
    invoke-virtual {v7, v1}, Lcom/android/launcher2/LauncherProvider;->modeSwitch(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherProvider;->getMaxCellIndexInApps()J

    move-result-wide v0

    long-to-int v3, v0

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$6;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeScreenModeSettingsFragment$6;-><init>(Lcom/android/launcher2/HomeScreenModeSettingsFragment;[IILcom/android/launcher2/LauncherApplication;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    move v0, v8

    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_1

    :cond_3
    move v1, v8

    goto :goto_2
.end method

.method private setApplyButtonEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->mApplyButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->mApplyButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x3ee66666    # 0.45f

    goto :goto_0
.end method

.method private showModeChangeDialog(I)V
    .locals 5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090091

    new-instance v4, Lcom/android/launcher2/HomeScreenModeSettingsFragment$5;

    invoke-direct {v4, p0}, Lcom/android/launcher2/HomeScreenModeSettingsFragment$5;-><init>(Lcom/android/launcher2/HomeScreenModeSettingsFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090031

    new-instance v4, Lcom/android/launcher2/HomeScreenModeSettingsFragment$4;

    invoke-direct {v4, p0}, Lcom/android/launcher2/HomeScreenModeSettingsFragment$4;-><init>(Lcom/android/launcher2/HomeScreenModeSettingsFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    sget-object v3, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->TAG:Ljava/lang/String;

    const-string v4, "onCreateView()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f04001f

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f11006e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v3, 0x7f11006c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v3, 0x7f11006f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->mAppsRadio:Landroid/widget/RadioButton;

    const v3, 0x7f11006d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    const v3, 0x7f110070

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->setCheckedSelectModeButton()V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->mAppsModeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->mHomeOnlyModeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->mApplyButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/launcher2/HomeScreenModeSettingsFragment$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/HomeScreenModeSettingsFragment$1;-><init>(Lcom/android/launcher2/HomeScreenModeSettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->mAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->setApplyButtonEnabled(Z)V

    :goto_0
    sget-object v0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->setApplyButtonEnabled(Z)V

    goto :goto_0
.end method

.method public setCheckedSelectModeButton()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->mAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-direct {p0, v1}, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->setApplyButtonEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->mAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-direct {p0, v1}, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->setApplyButtonEnabled(Z)V

    goto :goto_0
.end method
