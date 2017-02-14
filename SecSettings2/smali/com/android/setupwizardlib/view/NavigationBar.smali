.class public Lcom/android/setupwizardlib/view/NavigationBar;
.super Landroid/widget/LinearLayout;
.source "NavigationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;
    }
.end annotation


# instance fields
.field private mBackButton:Landroid/widget/Button;

.field private mListener:Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;

.field private mMoreButton:Landroid/widget/Button;

.field private mNextButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/android/setupwizardlib/view/NavigationBar;->getThemedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-static {p1}, Lcom/android/setupwizardlib/view/NavigationBar;->getThemedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {p1}, Lcom/android/setupwizardlib/view/NavigationBar;->getThemedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->init()V

    return-void
.end method

.method private static getNavbarTheme(Landroid/content/Context;)I
    .locals 10

    const/4 v9, 0x3

    const/4 v3, 0x1

    const/4 v8, 0x2

    const/4 v5, 0x0

    new-array v6, v9, [I

    sget v7, Lcom/android/setupwizardlib/R$attr;->suwNavBarTheme:I

    aput v7, v6, v5

    const v7, 0x1010030

    aput v7, v6, v3

    const v7, 0x1010031

    aput v7, v6, v8

    invoke-virtual {p0, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-nez v4, :cond_0

    new-array v2, v9, [F

    new-array v1, v9, [F

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v6, v2, v8

    aget v7, v1, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    :goto_0
    if-eqz v3, :cond_2

    sget v4, Lcom/android/setupwizardlib/R$style;->SuwNavBarThemeDark:I

    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v4

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    sget v4, Lcom/android/setupwizardlib/R$style;->SuwNavBarThemeLight:I

    goto :goto_1
.end method

.method private static getThemedContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    invoke-static {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNavbarTheme(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/setupwizardlib/R$layout;->suw_navbar_view:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/android/setupwizardlib/R$id;->suw_navbar_next:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/NavigationBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mNextButton:Landroid/widget/Button;

    sget v0, Lcom/android/setupwizardlib/R$id;->suw_navbar_back:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/NavigationBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mBackButton:Landroid/widget/Button;

    sget v0, Lcom/android/setupwizardlib/R$id;->suw_navbar_more:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/NavigationBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mMoreButton:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public getBackButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mBackButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mListener:Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->getBackButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mListener:Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;

    invoke-interface {v0}, Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;->onNavigateBack()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mListener:Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;

    invoke-interface {v0}, Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;->onNavigateNext()V

    goto :goto_0
.end method

.method public setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V
    .locals 1

    iput-object p1, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mListener:Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;

    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->mListener:Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->getBackButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
