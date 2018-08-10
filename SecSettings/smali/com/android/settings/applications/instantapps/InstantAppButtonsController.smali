.class public Lcom/android/settings/applications/instantapps/InstantAppButtonsController;
.super Ljava/lang/Object;
.source "InstantAppButtonsController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/instantapps/InstantAppButtonsController$ShowDialogDelegate;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFragment:Landroid/app/Fragment;

.field private final mPackageManagerWrapper:Lcom/android/settings/applications/PackageManagerWrapper;

.field private mPackageName:Ljava/lang/String;

.field private final mShowDialogDelegate:Lcom/android/settings/applications/instantapps/InstantAppButtonsController$ShowDialogDelegate;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Landroid/view/View;Lcom/android/settings/applications/instantapps/InstantAppButtonsController$ShowDialogDelegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mFragment:Landroid/app/Fragment;

    iput-object p3, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mShowDialogDelegate:Lcom/android/settings/applications/instantapps/InstantAppButtonsController$ShowDialogDelegate;

    new-instance v0, Lcom/android/settings/applications/PackageManagerWrapperImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/PackageManagerWrapperImpl;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mPackageManagerWrapper:Lcom/android/settings/applications/PackageManagerWrapper;

    return-void
.end method


# virtual methods
.method public bindButtons()V
    .locals 5

    iget-object v3, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mView:Landroid/view/View;

    const v4, 0x7f0a0433

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mView:Landroid/view/View;

    const v4, 0x7f0a0189

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/applications/AppStoreUtil;->getAppStoreLink(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v3, Lcom/android/settings/applications/instantapps/-$Lambda$Sf20iP_kqPq-CP-ZWqiYNm3TLhY$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/applications/instantapps/-$Lambda$Sf20iP_kqPq-CP-ZWqiYNm3TLhY$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance v3, Lcom/android/settings/applications/instantapps/-$Lambda$Sf20iP_kqPq-CP-ZWqiYNm3TLhY;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/instantapps/-$Lambda$Sf20iP_kqPq-CP-ZWqiYNm3TLhY;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public createDialog(I)Landroid/app/AlertDialog;
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f1205ba

    const/16 v1, 0x5033

    if-ne p1, v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120552

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mContext:Landroid/content/Context;

    const v3, 0x7f1205b9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v4
.end method

.method synthetic lambda$-com_android_settings_applications_instantapps_InstantAppButtonsController_2956(Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$-com_android_settings_applications_instantapps_InstantAppButtonsController_3057(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mShowDialogDelegate:Lcom/android/settings/applications/instantapps/InstantAppButtonsController$ShowDialogDelegate;

    const/16 v1, 0x5033

    invoke-interface {v0, v1}, Lcom/android/settings/applications/instantapps/InstantAppButtonsController$ShowDialogDelegate;->showDialog(I)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mPackageName:Ljava/lang/String;

    new-array v3, v5, [Landroid/util/Pair;

    const/16 v4, 0x39b

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    iget-object v0, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mPackageManagerWrapper:Lcom/android/settings/applications/PackageManagerWrapper;

    iget-object v1, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v5, v2}, Lcom/android/settings/applications/PackageManagerWrapper;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    :cond_0
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/settings/applications/instantapps/InstantAppButtonsController;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public show()Lcom/android/settings/applications/instantapps/InstantAppButtonsController;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->bindButtons()V

    iget-object v0, p0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method
