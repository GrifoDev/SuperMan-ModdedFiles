.class Lcom/android/settings/TrustedCredentialsDialogBuilder;
.super Landroid/app/AlertDialog$Builder;
.source "TrustedCredentialsDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;,
        Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;
    }
.end annotation


# instance fields
.field private final mDialogEventHandler:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;-><init>(Landroid/app/Activity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder;->mDialogEventHandler:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->initDefaultBuilderParams()V

    return-void
.end method

.method private initDefaultBuilderParams()V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x10404e6

    invoke-virtual {p0, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder;->mDialogEventHandler:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->-get3(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0b1825

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 2

    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder;->mDialogEventHandler:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder;->mDialogEventHandler:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-virtual {v1, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->setDialog(Landroid/app/AlertDialog;)V

    return-object v0
.end method

.method public setCertHolder(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsDialogBuilder;
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array v0, v1, [Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setCertHolders([Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsDialogBuilder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    aput-object p1, v0, v1

    goto :goto_0
.end method

.method public setCertHolders([Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsDialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder;->mDialogEventHandler:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->setCertHolders([Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    return-object p0
.end method
