.class public Landroid/support/v7/app/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/ActionBarDrawerToggle$1;,
        Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;,
        Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;,
        Landroid/support/v7/app/ActionBarDrawerToggle$DummyDelegate;,
        Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;,
        Landroid/support/v7/app/ActionBarDrawerToggle$IcsDelegate;,
        Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;,
        Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;
    }
.end annotation


# instance fields
.field private final mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

.field private final mCloseDrawerContentDescRes:I

.field mDrawerIndicatorEnabled:Z

.field private final mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerSlideAnimationEnabled:Z

.field private final mOpenDrawerContentDescRes:I

.field private mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

.field mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method private setPosition(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setVerticalMirror(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    return-void

    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setVerticalMirror(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setPosition(F)V

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setPosition(F)V

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setPosition(F)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->setPosition(F)V

    goto :goto_0
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    return-void
.end method

.method setActionBarDescription(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    return-void
.end method

.method toggle()V
    .locals 3

    const v2, 0x800003

    iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0
.end method
