.class public Lcom/android/systemui/qs/QSContainerImpl;
.super Landroid/widget/FrameLayout;
.source "QSContainerImpl.java"


# instance fields
.field private mBarController:Lcom/android/systemui/qs/bar/QSBarController;

.field private final mContext:Landroid/content/Context;

.field protected mHeader:Landroid/view/View;

.field private mHeightOverride:I

.field private mKeyguardShowing:Z

.field private mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

.field private mQSDetail:Landroid/view/View;

.field protected mQSPanel:Landroid/view/View;

.field protected mQsExpansion:F

.field private final mSizePoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected calculateContainerHeight()I
    .locals 5

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    :goto_0
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBarController:Lcom/android/systemui/qs/bar/QSBarController;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mKeyguardShowing:Z

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int v1, v3, v0

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    sub-int v4, v2, v1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v3, v1

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getMeasuredHeight()I

    move-result v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBarController:Lcom/android/systemui/qs/bar/QSBarController;

    invoke-virtual {v3}, Lcom/android/systemui/qs/bar/QSBarController;->getOnTopBarsHeight()F

    move-result v3

    float-to-int v0, v3

    goto :goto_1
.end method

.method public isCustomCloing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomClosing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCustomOpening()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomOpening()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCustomizing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 6

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v2, 0x7f0a040b

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f070507

    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v2, 0x7f0a03f7

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    const v2, 0x7f0a01fd

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Landroid/view/View;

    const v2, 0x7f0a0408

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iput-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "qs_detail_content_primary_text_color"

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f06015c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "qs_detail_content_secondary_text_color"

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f060154

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-class v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->setBackgroundColor(I)V

    :cond_0
    sget v0, Lcom/android/mwilky/Renovate;->mQsBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->setBackgroundColor(I)V

    return-void

    :cond_1
    const v2, 0x7f070506

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateBottom()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    iget-object v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Landroid/view/View;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, p1, v7}, Landroid/view/View;->measure(II)V

    iget-object v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v6, v7

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-super {p0, v6, v7}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplay()Landroid/view/Display;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-object v7, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v3

    const/high16 v8, -0x80000000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, p1, v7}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->measure(II)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    sget-boolean v6, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070416

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1
.end method

.method public setBarController(Lcom/android/systemui/qs/bar/QSBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBarController:Lcom/android/systemui/qs/bar/QSBarController;

    return-void
.end method

.method public setExpansion(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateBottom()V

    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateBottom()V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mKeyguardShowing:Z

    return-void
.end method

.method public updateBottom()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->calculateContainerHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSContainerImpl;->setBottom(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBottom(I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method
