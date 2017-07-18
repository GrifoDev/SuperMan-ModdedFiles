.class public Lcom/android/launcher2/QuickViewDragBar;
.super Landroid/widget/FrameLayout;
.source "QuickViewDragBar.java"

# interfaces
.implements Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;


# static fields
.field private static sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mDeleteBackground:Landroid/widget/ImageView;

.field private mDeleteClickListner:Landroid/view/View$OnClickListener;

.field private mDeleteDrawable:Landroid/graphics/drawable/Drawable;

.field private mDeleteIconView:Landroid/widget/ImageView;

.field private mDeleteLayout:Landroid/widget/LinearLayout;

.field private mDeleteTextView:Landroid/widget/TextView;

.field private mIsBulgeAnimating:Z

.field private mIsNeedHide:Z

.field private mIsNeedShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/QuickViewDragBar;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/QuickViewDragBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/QuickViewDragBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mIsBulgeAnimating:Z

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mIsNeedHide:Z

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mIsNeedShow:Z

    new-instance v0, Lcom/android/launcher2/QuickViewDragBar$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/QuickViewDragBar$1;-><init>(Lcom/android/launcher2/QuickViewDragBar;)V

    iput-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteClickListner:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private setStates(ZZZ)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewDragBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0, p2}, Lcom/android/launcher2/QuickViewDragBar;->setSelected(Z)V

    invoke-virtual {p0, p3}, Lcom/android/launcher2/QuickViewDragBar;->setActivated(Z)V

    return-void
.end method


# virtual methods
.method public changeColor(I)V
    .locals 8

    const/4 v7, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0063

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v3, v5

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0062

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v1, v5

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0001

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    new-instance v2, Landroid/graphics/LightingColorFilter;

    const/4 v5, 0x0

    invoke-direct {v2, v0, v5}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iget-object v5, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v1, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0061

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v3, v5

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0060

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v1, v5

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e002e

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e002f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public checkOver(II)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a00f6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget-object v1, Lcom/android/launcher2/QuickViewDragBar;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getLeft()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getRight()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getBottom()I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v1, Lcom/android/launcher2/QuickViewDragBar;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteIconView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTranslationY(F)V

    sget-object v1, Lcom/android/launcher2/QuickViewDragBar;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    if-ge p1, v1, :cond_1

    sget-object v1, Lcom/android/launcher2/QuickViewDragBar;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-le p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/android/launcher2/DeleteDrawable;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Lcom/android/launcher2/DeleteDrawable;->setAngleDirection(F)V

    :cond_0
    :goto_0
    invoke-direct {p0, v2, v2, v3}, Lcom/android/launcher2/QuickViewDragBar;->setStates(ZZZ)V

    move v1, v2

    :goto_1
    return v1

    :cond_1
    sget-object v1, Lcom/android/launcher2/QuickViewDragBar;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    if-le p1, v1, :cond_0

    sget-object v1, Lcom/android/launcher2/QuickViewDragBar;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/android/launcher2/DeleteDrawable;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v1, v4}, Lcom/android/launcher2/DeleteDrawable;->setAngleDirection(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->resetTrashCan()V

    move v1, v3

    goto :goto_1
.end method

.method public clearAccessibilityFocus()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public getDeleteBackground()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method public isBulgeAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mIsBulgeAnimating:Z

    return v0
.end method

.method public onBulgeAnimationEnded()V
    .locals 14

    const-wide/16 v12, 0x10a

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->resetTrashCan()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iput-boolean v9, p0, Lcom/android/launcher2/QuickViewDragBar;->mIsBulgeAnimating:Z

    iget-boolean v5, p0, Lcom/android/launcher2/QuickViewDragBar;->mIsNeedHide:Z

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->hideTitleBar()V

    :cond_0
    iget-boolean v5, p0, Lcom/android/launcher2/QuickViewDragBar;->mIsNeedShow:Z

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isCloseAnimating()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v1, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-eqz v5, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/QuickViewWorkspace;->showTitleBar()V

    :cond_2
    iput-boolean v9, p0, Lcom/android/launcher2/QuickViewDragBar;->mIsNeedHide:Z

    iput-boolean v9, p0, Lcom/android/launcher2/QuickViewDragBar;->mIsNeedShow:Z

    iget-object v5, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v7, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0xe9

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iget-object v5, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteIconView:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v10, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    iget-object v5, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteIconView:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v10, [F

    fill-array-data v7, :array_1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060036

    invoke-static {v5, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onBulgeAnimationStarted()V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xe9

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060035

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a026b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewDragBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0239

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a026a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method public onDrop()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0, v0}, Lcom/android/launcher2/QuickViewDragBar;->setStates(ZZZ)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 11

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f110030

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewDragBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f110032

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewDragBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    const v0, 0x7f110031

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewDragBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteIconView:Landroid/widget/ImageView;

    const v0, 0x7f11002f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewDragBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteBackground:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteClickListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a026b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v9}, Lcom/android/launcher2/QuickViewDragBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v0, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    sget-object v7, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;->DELETE:Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

    const/4 v8, 0x0

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;Z)V

    iput-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public resetTrashCan()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/android/launcher2/QuickViewDragBar;->setStates(ZZZ)V

    return-void
.end method

.method public setIsBulgeAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/QuickViewDragBar;->mIsBulgeAnimating:Z

    return-void
.end method

.method public setIsNeedHide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/QuickViewDragBar;->mIsNeedHide:Z

    return-void
.end method

.method public setIsNeedShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/QuickViewDragBar;->mIsNeedShow:Z

    return-void
.end method
