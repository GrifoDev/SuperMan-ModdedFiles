.class public abstract Lcom/android/contacts/common/activity/TransactionSafeActivity;
.super Landroid/app/Activity;
.source "TransactionSafeActivity.java"


# instance fields
.field private mIsSafeToCommitTransactions:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public isSafeToCommitTransactions()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/contacts/common/activity/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/activity/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    .line 34
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/activity/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    .line 58
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/activity/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    .line 46
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/activity/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    .line 52
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/activity/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    .line 40
    return-void
.end method
