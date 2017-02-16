.class public Lcom/samsung/android/widget/SemLockPatternUtils;
.super Ljava/lang/Object;
.source "SemLockPatternUtils.java"


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 33
    return-void
.end method


# virtual methods
.method public getKeyguardStoredPasswordQuality(I)I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public isFmmLockEnabled(I)Z
    .locals 1
    .param p1, "userid"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isLockScreenDisabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    return v0
.end method

.method public isSecure(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/widget/SemLockPatternUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    return v0
.end method
