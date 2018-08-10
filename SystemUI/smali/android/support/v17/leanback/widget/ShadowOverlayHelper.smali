.class public final Landroid/support/v17/leanback/widget/ShadowOverlayHelper;
.super Ljava/lang/Object;
.source "ShadowOverlayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;,
        Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;
    }
.end annotation


# instance fields
.field mFocusedZ:F

.field mNeedsOverlay:Z

.field mNeedsRoundedCorner:Z

.field mNeedsShadow:Z

.field mNeedsWrapper:Z

.field mRoundedCornerRadius:I

.field mShadowType:I

.field mUnfocusedZ:F


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mShadowType:I

    return-void
.end method

.method static getNoneWrapperDynamicShadowImpl(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    sget v0, Landroid/support/v17/leanback/R$id;->lb_shadow_impl:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static setNoneWrapperOverlayColor(Landroid/view/View;I)V
    .locals 3

    invoke-static {}, Landroid/support/v17/leanback/widget/ForegroundHelper;->getInstance()Landroid/support/v17/leanback/widget/ForegroundHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v17/leanback/widget/ForegroundHelper;->getForeground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/support/v17/leanback/widget/ForegroundHelper;->getInstance()Landroid/support/v17/leanback/widget/ForegroundHelper;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, p0, v2}, Landroid/support/v17/leanback/widget/ForegroundHelper;->setForeground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setNoneWrapperShadowFocusLevel(Landroid/view/View;F)V
    .locals 2

    invoke-static {p0}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->getNoneWrapperDynamicShadowImpl(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->setShadowFocusLevel(Ljava/lang/Object;IF)V

    return-void
.end method

.method static setShadowFocusLevel(Ljava/lang/Object;IF)V
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    const/4 p2, 0x0

    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_0
    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowHelper;->getInstance()Landroid/support/v17/leanback/widget/ShadowHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Landroid/support/v17/leanback/widget/ShadowHelper;->setShadowFocusLevel(Ljava/lang/Object;F)V

    goto :goto_1

    :pswitch_1
    invoke-static {}, Landroid/support/v17/leanback/widget/StaticShadowHelper;->getInstance()Landroid/support/v17/leanback/widget/StaticShadowHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Landroid/support/v17/leanback/widget/StaticShadowHelper;->setShadowFocusLevel(Ljava/lang/Object;F)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static supportsDynamicShadow()Z
    .locals 1

    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowHelper;->getInstance()Landroid/support/v17/leanback/widget/ShadowHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ShadowHelper;->supportsDynamicShadow()Z

    move-result v0

    return v0
.end method

.method public static supportsForeground()Z
    .locals 1

    invoke-static {}, Landroid/support/v17/leanback/widget/ForegroundHelper;->supportsForeground()Z

    move-result v0

    return v0
.end method

.method public static supportsRoundedCorner()Z
    .locals 1

    invoke-static {}, Landroid/support/v17/leanback/widget/RoundedRectHelper;->supportsRoundedCorner()Z

    move-result v0

    return v0
.end method

.method public static supportsShadow()Z
    .locals 1

    invoke-static {}, Landroid/support/v17/leanback/widget/StaticShadowHelper;->getInstance()Landroid/support/v17/leanback/widget/StaticShadowHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/StaticShadowHelper;->supportsShadow()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createShadowOverlayContainer(Landroid/content/Context;)Landroid/support/v17/leanback/widget/ShadowOverlayContainer;
    .locals 7

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->needsWrapper()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    iget v2, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mShadowType:I

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsOverlay:Z

    iget v4, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mUnfocusedZ:F

    iget v5, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mFocusedZ:F

    iget v6, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mRoundedCornerRadius:I

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;-><init>(Landroid/content/Context;IZFFI)V

    return-object v0
.end method

.method public getShadowType()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mShadowType:I

    return v0
.end method

.method public needsOverlay()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsOverlay:Z

    return v0
.end method

.method public needsWrapper()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsWrapper:Z

    return v0
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->needsWrapper()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsShadow:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsRoundedCorner:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/support/v17/leanback/widget/RoundedRectHelper;->getInstance()Landroid/support/v17/leanback/widget/RoundedRectHelper;

    move-result-object v1

    iget v2, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mRoundedCornerRadius:I

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3, v2}, Landroid/support/v17/leanback/widget/RoundedRectHelper;->setClipToRoundedOutline(Landroid/view/View;ZI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mShadowType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowHelper;->getInstance()Landroid/support/v17/leanback/widget/ShadowHelper;

    move-result-object v1

    iget v2, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mUnfocusedZ:F

    iget v3, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mFocusedZ:F

    iget v4, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mRoundedCornerRadius:I

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/support/v17/leanback/widget/ShadowHelper;->addDynamicShadow(Landroid/view/View;FFI)Ljava/lang/Object;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->lb_shadow_impl:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public prepareParentForShadow(Landroid/view/ViewGroup;)V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mShadowType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/support/v17/leanback/widget/StaticShadowHelper;->getInstance()Landroid/support/v17/leanback/widget/StaticShadowHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/StaticShadowHelper;->prepareParent(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public setOverlayColor(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->needsWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->setOverlayColor(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->setNoneWrapperOverlayColor(Landroid/view/View;I)V

    goto :goto_0
.end method

.method setupDynamicShadowZ(Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->getDynamicShadowUnfocusedZ()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_material_shadow_focused_z:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mFocusedZ:F

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_material_shadow_normal_z:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mUnfocusedZ:F

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->getDynamicShadowFocusedZ()F

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mFocusedZ:F

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->getDynamicShadowUnfocusedZ()F

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mUnfocusedZ:F

    goto :goto_0
.end method

.method setupRoundedCornerRadius(Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->getRoundedCornerRadius()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_rounded_rect_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mRoundedCornerRadius:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->getRoundedCornerRadius()I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mRoundedCornerRadius:I

    goto :goto_0
.end method
