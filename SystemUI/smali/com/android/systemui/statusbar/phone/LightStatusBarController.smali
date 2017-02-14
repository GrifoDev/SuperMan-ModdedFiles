.class public Lcom/android/systemui/statusbar/phone/LightStatusBarController;
.super Ljava/lang/Object;
.source "LightStatusBarController.java"


# instance fields
.field private mAppCoverState:Z

.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mCoverClosed:Z

.field private mDockedLight:Z

.field private mDockedStackVisibility:I

.field private mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field private mFullscreenLight:Z

.field private mFullscreenStackVisibility:I

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private final mLastDockedBounds:Landroid/graphics/Rect;

.field private final mLastFullscreenBounds:Landroid/graphics/Rect;

.field private mStatusBarMode:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-void
.end method

.method private animateChange()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    if-nez v3, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isLight(II)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq p2, v4, :cond_0

    const/4 v4, 0x6

    if-ne p2, v4, :cond_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mCoverClosed:Z

    if-eqz v4, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mAppCoverState:Z

    :goto_1
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    :goto_2
    if-eqz v0, :cond_5

    :goto_3
    return v2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3
.end method

.method private refreshIconsDarkState()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenStackVisibility:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mStatusBarMode:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->isLight(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenLight:Z

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mDockedStackVisibility:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mStatusBarMode:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->isLight(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mDockedLight:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->update(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method private update(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v1, 0x0

    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mCoverClosed:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mAppCoverState:Z

    if-eqz v4, :cond_6

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    if-nez v4, :cond_7

    move v2, v6

    :goto_2
    if-eqz v2, :cond_8

    move v4, v5

    :goto_3
    and-int/2addr v1, v4

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenLight:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mDockedLight:Z

    if-nez v4, :cond_9

    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenLight:Z

    if-eqz v4, :cond_2

    if-eqz v1, :cond_9

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenLight:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mDockedLight:Z

    if-eqz v4, :cond_b

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenLight:Z

    if-nez v4, :cond_4

    if-eqz v1, :cond_b

    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenLight:Z

    if-eqz v4, :cond_d

    move-object v0, p1

    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDarkArea(Landroid/graphics/Rect;)V

    :goto_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz v3, :cond_f

    :goto_6
    invoke-virtual {v4, v6, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDark(ZZ)V

    :goto_7
    return-void

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    move v2, v5

    goto :goto_2

    :cond_8
    move v4, v6

    goto :goto_3

    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDarkArea(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz v3, :cond_a

    :goto_8
    invoke-virtual {v4, v6, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDark(ZZ)V

    goto :goto_7

    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->animateChange()Z

    move-result v5

    goto :goto_8

    :cond_b
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz v3, :cond_c

    move v4, v5

    :goto_9
    invoke-virtual {v6, v5, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDark(ZZ)V

    goto :goto_7

    :cond_c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->animateChange()Z

    move-result v4

    goto :goto_9

    :cond_d
    move-object v0, p2

    goto :goto_4

    :cond_e
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDarkArea(Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->animateChange()Z

    move-result v5

    goto :goto_6
.end method


# virtual methods
.method public onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZI)V
    .locals 8

    iget v5, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenStackVisibility:I

    not-int v6, p3

    and-int/2addr v6, v5

    and-int v7, p1, p3

    or-int v3, v6, v7

    xor-int v1, v3, v5

    iget v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mDockedStackVisibility:I

    not-int v6, p3

    and-int/2addr v6, v4

    and-int v7, p2, p3

    or-int v2, v6, v7

    xor-int v0, v2, v4

    and-int/lit16 v6, v1, 0x2000

    if-nez v6, :cond_0

    and-int/lit16 v6, v0, 0x2000

    if-eqz v6, :cond_1

    :cond_0
    iput p7, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mStatusBarMode:I

    invoke-direct {p0, v3, p7}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->isLight(II)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenLight:Z

    invoke-direct {p0, v2, p7}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->isLight(II)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mDockedLight:Z

    invoke-direct {p0, p4, p5}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->update(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    iput v3, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenStackVisibility:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mDockedStackVisibility:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    if-nez p6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0
.end method

.method public setFingerprintUnlockController(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    return-void
.end method

.method public updateCoverState(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mCoverClosed:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mAppCoverState:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->refreshIconsDarkState()V

    return-void
.end method
