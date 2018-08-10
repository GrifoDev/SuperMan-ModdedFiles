.class Lcom/samsung/android/widget/SemTipPopup$TipWindow;
.super Landroid/widget/PopupWindow;
.source "SemTipPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemTipPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TipWindow"
.end annotation


# instance fields
.field private mIsDismissing:Z

.field private mIsUsingDismissAnimation:Z

.field private mPivotX:F

.field private mPivotY:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/widget/SemTipPopup$TipWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsDismissing:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/widget/SemTipPopup$TipWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsDismissing:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemTipPopup$TipWindow;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setPivot(FF)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/widget/SemTipPopup$TipWindow;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setUseDismissAnimation(Z)V

    return-void
.end method

.method private constructor <init>(Landroid/view/View;IIZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsUsingDismissAnimation:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsDismissing:Z

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotX:F

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotY:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;IIZLcom/samsung/android/widget/SemTipPopup$TipWindow;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method private animateViewOut()V
    .locals 14

    const-wide/16 v12, 0xa6

    const/4 v5, 0x0

    const v2, 0x3f4f5c29    # 0.81f

    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v10, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v6, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotX:F

    iget v8, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotY:F

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-get0()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-get1()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/samsung/android/widget/SemTipPopup$TipWindow$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow$1;-><init>(Lcom/samsung/android/widget/SemTipPopup$TipWindow;)V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private setPivot(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotX:F

    iput p2, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotY:F

    return-void
.end method

.method private setUseDismissAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsUsingDismissAnimation:Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsUsingDismissAnimation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsDismissing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->animateViewOut()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method
