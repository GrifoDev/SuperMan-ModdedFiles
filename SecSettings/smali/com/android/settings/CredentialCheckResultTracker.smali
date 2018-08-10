.class public Lcom/android/settings/CredentialCheckResultTracker;
.super Landroid/app/Fragment;
.source "CredentialCheckResultTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CredentialCheckResultTracker$Listener;
    }
.end annotation


# instance fields
.field private mHasResult:Z

.field private mListener:Lcom/android/settings/CredentialCheckResultTracker$Listener;

.field private mResultData:Landroid/content/Intent;

.field private mResultEffectiveUserId:I

.field private mResultMatched:Z

.field private mResultTimeoutMs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CredentialCheckResultTracker;->mHasResult:Z

    return-void
.end method


# virtual methods
.method public clearResult()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/CredentialCheckResultTracker;->mHasResult:Z

    iput-boolean v1, p0, Lcom/android/settings/CredentialCheckResultTracker;->mResultMatched:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    iput v1, p0, Lcom/android/settings/CredentialCheckResultTracker;->mResultTimeoutMs:I

    iput v1, p0, Lcom/android/settings/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/CredentialCheckResultTracker;->setRetainInstance(Z)V

    return-void
.end method

.method public setListener(Lcom/android/settings/CredentialCheckResultTracker$Listener;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/CredentialCheckResultTracker;->mListener:Lcom/android/settings/CredentialCheckResultTracker$Listener;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/settings/CredentialCheckResultTracker;->mListener:Lcom/android/settings/CredentialCheckResultTracker$Listener;

    iget-object v0, p0, Lcom/android/settings/CredentialCheckResultTracker;->mListener:Lcom/android/settings/CredentialCheckResultTracker$Listener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/CredentialCheckResultTracker;->mHasResult:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/CredentialCheckResultTracker;->mListener:Lcom/android/settings/CredentialCheckResultTracker$Listener;

    iget-boolean v1, p0, Lcom/android/settings/CredentialCheckResultTracker;->mResultMatched:Z

    iget-object v2, p0, Lcom/android/settings/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/CredentialCheckResultTracker;->mResultTimeoutMs:I

    iget v4, p0, Lcom/android/settings/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/settings/CredentialCheckResultTracker$Listener;->onCredentialChecked(ZLandroid/content/Intent;IIZ)V

    :cond_1
    return-void
.end method

.method public setResult(ZLandroid/content/Intent;II)V
    .locals 6

    const/4 v5, 0x1

    iput-boolean p1, p0, Lcom/android/settings/CredentialCheckResultTracker;->mResultMatched:Z

    iput-object p2, p0, Lcom/android/settings/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    iput p3, p0, Lcom/android/settings/CredentialCheckResultTracker;->mResultTimeoutMs:I

    iput p4, p0, Lcom/android/settings/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    iput-boolean v5, p0, Lcom/android/settings/CredentialCheckResultTracker;->mHasResult:Z

    iget-object v0, p0, Lcom/android/settings/CredentialCheckResultTracker;->mListener:Lcom/android/settings/CredentialCheckResultTracker$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CredentialCheckResultTracker;->mListener:Lcom/android/settings/CredentialCheckResultTracker$Listener;

    iget-boolean v1, p0, Lcom/android/settings/CredentialCheckResultTracker;->mResultMatched:Z

    iget-object v2, p0, Lcom/android/settings/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/CredentialCheckResultTracker;->mResultTimeoutMs:I

    iget v4, p0, Lcom/android/settings/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    invoke-interface/range {v0 .. v5}, Lcom/android/settings/CredentialCheckResultTracker$Listener;->onCredentialChecked(ZLandroid/content/Intent;IIZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CredentialCheckResultTracker;->mHasResult:Z

    :cond_0
    return-void
.end method
