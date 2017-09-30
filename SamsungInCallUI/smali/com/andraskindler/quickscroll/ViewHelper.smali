.class public final Lcom/andraskindler/quickscroll/ViewHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlpha(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->getAlpha()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->getAlpha(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static getPivotX(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->getPivotX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->getPivotX(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static getPivotY(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->getPivotY()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->getPivotY(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static getRotation(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->getRotation()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->getRotation(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static getRotationX(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->getRotationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->getRotationX(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static getRotationY(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->getRotationY()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->getRotationY(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static getScaleX(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->getScaleX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->getScaleX(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static getScaleY(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->getScaleY()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->getScaleY(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static getScrollX(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->getScrollX(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static getScrollY(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->getScrollY(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static getTranslationX(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->getTranslationX(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static getTranslationY(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->getTranslationY()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->getTranslationY(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static getX(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->getX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->getX(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static getY(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->getY()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->getY(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->setAlpha(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static setPivotX(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->setPivotX(F)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->setPivotX(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static setPivotY(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->setPivotY(F)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->setPivotY(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static setRotation(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->setRotation(F)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->setRotation(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static setRotationX(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->setRotationX(F)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->setRotationX(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static setRotationY(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->setRotationY(F)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->setRotationY(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static setScaleX(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->setScaleX(F)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->setScaleX(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static setScaleY(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->setScaleY(F)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->setScaleY(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static setScrollX(Landroid/view/View;I)V
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->setScrollX(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->setScrollX(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static setScrollY(Landroid/view/View;I)V
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->setScrollY(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->setScrollY(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static setTranslationX(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->setTranslationX(F)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->setTranslationX(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static setTranslationY(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->setTranslationY(F)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->setTranslationY(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static setX(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->setX(F)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->setX(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public static setY(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->setY(F)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/andraskindler/quickscroll/ViewHelper$Honeycomb;->setY(Landroid/view/View;F)V

    goto :goto_0
.end method
