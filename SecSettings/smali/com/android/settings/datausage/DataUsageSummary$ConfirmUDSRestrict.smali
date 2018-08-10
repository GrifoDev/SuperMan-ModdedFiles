.class public Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmUDSRestrict"
.end annotation


# static fields
.field static final dialog:Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->dialog:Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static close(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 2

    sget-object v0, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->dialog:Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->dialog:Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->dialog:Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->setTargetFragment(Landroid/app/Fragment;I)V

    sget-object v0, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->dialog:Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->dismiss()V

    :cond_1
    return-void
.end method

.method public static show(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/app/DialogFragment;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->dialog:Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->dialog:Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->isAdded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->dialog:Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->setTargetFragment(Landroid/app/Fragment;I)V

    sget-object v0, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->dialog:Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "confirmUDSRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->dialog:Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;

    return-object v0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121c31

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict$1;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict$1;-><init>(Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;)V

    const v3, 0x7f121c33

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
