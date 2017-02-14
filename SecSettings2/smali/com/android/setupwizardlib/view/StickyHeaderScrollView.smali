.class public Lcom/android/setupwizardlib/view/StickyHeaderScrollView;
.super Lcom/android/setupwizardlib/view/BottomScrollView;
.source "StickyHeaderScrollView.java"


# instance fields
.field private mStatusBarInset:I

.field private mSticky:Landroid/view/View;

.field private mStickyContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/view/BottomScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mStatusBarInset:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/view/BottomScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mStatusBarInset:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/view/BottomScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mStatusBarInset:I

    return-void
.end method

.method private updateStickyHeaderPosition()V
    .locals 5

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mSticky:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mStickyContainer:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mStickyContainer:Landroid/view/View;

    :goto_0
    iget-object v3, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mStickyContainer:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mSticky:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->getScrollY()I

    move-result v4

    sub-int v2, v3, v4

    add-int v3, v2, v0

    iget v4, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mStatusBarInset:I

    if-lt v3, v4, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mSticky:Landroid/view/View;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mStatusBarInset:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/android/setupwizardlib/view/BottomScrollView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mSticky:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->updateStickyView()V

    :cond_0
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->updateStickyHeaderPosition()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/setupwizardlib/view/BottomScrollView;->onScrollChanged(IIII)V

    invoke-direct {p0}, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->updateStickyHeaderPosition()V

    return-void
.end method

.method public updateStickyView()V
    .locals 1

    const-string/jumbo v0, "sticky"

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mSticky:Landroid/view/View;

    const-string/jumbo v0, "stickyContainer"

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mStickyContainer:Landroid/view/View;

    return-void
.end method
