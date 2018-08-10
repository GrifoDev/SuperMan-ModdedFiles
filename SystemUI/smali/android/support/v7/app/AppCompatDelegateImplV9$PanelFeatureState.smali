.class public final Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field background:I

.field createdPanelView:Landroid/view/View;

.field decorView:Landroid/view/ViewGroup;

.field featureId:I

.field frozenActionViewState:Landroid/os/Bundle;

.field gravity:I

.field isHandled:Z

.field isOpen:Z

.field isPrepared:Z

.field listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

.field listPresenterContext:Landroid/content/Context;

.field menu:Landroid/support/v7/view/menu/MenuBuilder;

.field public qwertyMode:Z

.field refreshDecorView:Z

.field refreshMenuContent:Z

.field shownPanelView:Landroid/view/View;

.field windowAnimations:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    return-void
.end method


# virtual methods
.method getListMenuView(Landroid/support/v7/view/menu/MenuPresenter$Callback;)Landroid/support/v7/view/menu/MenuView;
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    if-nez v1, :cond_1

    new-instance v1, Landroid/support/v7/view/menu/ListMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    sget v3, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v1, v2, v3}, Landroid/support/v7/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v1, p1}, Landroid/support/v7/view/menu/ListMenuPresenter;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v0

    return-object v0
.end method

.method public hasPanelItems()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method setMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    :cond_1
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    :cond_2
    return-void
.end method

.method setStyle(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarPopupTheme:I

    invoke-virtual {v3, v4, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_0

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_0
    sget v4, Landroid/support/v7/appcompat/R$attr;->panelMenuListTheme:I

    invoke-virtual {v3, v4, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_1

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_0
    new-instance v1, Landroid/support/v7/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v5}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    sget-object v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v1, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_panelBackground:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->background:I

    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->windowAnimations:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    sget v4, Landroid/support/v7/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method
