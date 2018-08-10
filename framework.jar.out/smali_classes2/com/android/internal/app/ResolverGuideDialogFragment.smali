.class public Lcom/android/internal/app/ResolverGuideDialogFragment;
.super Landroid/app/DialogFragment;
.source "ResolverGuideDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final GUIDE_DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "ResolverGuideDialogFragment"

.field private static final TAG:Ljava/lang/String; = "ResolverGuideDialogFragment"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mLabel:Ljava/lang/String;

.field private mTarget:Lcom/android/internal/app/ResolverActivity$TargetInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mLabel:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mTarget:Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mContext:Landroid/content/Context;

    const v6, 0x10302d2

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104089f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10401c5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mLabel:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v2, ""

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040918

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10401c8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mLabel:Ljava/lang/String;

    aput-object v7, v6, v8

    aput-object v2, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_0
    const v5, 0x104000a

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object v1

    :cond_1
    iget-object v5, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverGuideDialogFragment;->dismiss()V

    return-void
.end method

.method public setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public startAsUser(I)V
    .locals 5

    iget-object v1, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mTarget:Lcom/android/internal/app/ResolverActivity$TargetInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mTarget:Lcom/android/internal/app/ResolverActivity$TargetInfo;

    iget-object v2, p0, Lcom/android/internal/app/ResolverGuideDialogFragment;->mActivity:Landroid/app/Activity;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ResolverGuideDialogFragment"

    const-string/jumbo v2, "startActivity failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
