.class public abstract Lcom/android/contacts/common/activity/TransactionSafeActivity;
.super Landroid/app/Activity;


# instance fields
.field private mIsSafeToCommitTransactions:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public isSafeToCommitTransactions()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/activity/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/activity/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/activity/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/activity/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/activity/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/activity/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/activity/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    return-void
.end method
