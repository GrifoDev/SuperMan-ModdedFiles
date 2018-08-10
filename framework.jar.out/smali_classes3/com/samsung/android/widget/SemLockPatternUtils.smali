.class public Lcom/samsung/android/widget/SemLockPatternUtils;
.super Ljava/lang/Object;
.source "SemLockPatternUtils.java"


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public getKeyguardStoredPasswordQuality(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public isCarrierLockEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierPasswordSaved(I)Z

    move-result v0

    return v0
.end method

.method public isFmmLockEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isLockScreenDisabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    return v0
.end method

.method public isRemoteMobileManagerLockEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isRMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSecure(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method public setLockScreenDisabled(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    return-void
.end method
