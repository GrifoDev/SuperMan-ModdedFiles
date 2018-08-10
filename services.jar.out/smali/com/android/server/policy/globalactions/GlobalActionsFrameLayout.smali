.class public Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;
.super Landroid/widget/LinearLayout;
.source "GlobalActionsFrameLayout.java"


# instance fields
.field private mBgLayout:Landroid/widget/LinearLayout;

.field private mBgLayoutLand:Landroid/widget/LinearLayout;

.field private mBottomlayout:Landroid/widget/LinearLayout;

.field private mForceRestartlayout:Landroid/widget/LinearLayout;

.field private mHSView:Landroid/widget/HorizontalScrollView;

.field private mIsGraceR:Z

.field private mNotifyConfigChangeCallback:Ljava/lang/Runnable;

.field private mSView:Landroid/widget/ScrollView;

.field private mShowNavigationBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mSView:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mHSView:Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBgLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBgLayoutLand:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBottomlayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mShowNavigationBar:Z

    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gracer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mIsGraceR:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;ZZ)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mSView:Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mHSView:Landroid/widget/HorizontalScrollView;

    iput-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBgLayout:Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBgLayoutLand:Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBottomlayout:Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mShowNavigationBar:Z

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "gracer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mIsGraceR:Z

    iput-object p2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mNotifyConfigChangeCallback:Ljava/lang/Runnable;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-eqz p3, :cond_0

    const v2, 0x109006a

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    const v2, 0x10202da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mSView:Landroid/widget/ScrollView;

    const v2, 0x10202cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mIsGraceR:Z

    if-eqz v2, :cond_1

    if-eqz p4, :cond_1

    const v2, 0x1090069

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_1
    const v2, 0x10202d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mHSView:Landroid/widget/HorizontalScrollView;

    const v2, 0x10202ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBgLayoutLand:Landroid/widget/LinearLayout;

    const v2, 0x10202d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mShowNavigationBar:Z

    const v2, 0x10202cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBottomlayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_1
    const v2, 0x1090068

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method private relayoutByOrientation(Z)V
    .locals 14

    const/4 v9, 0x4

    const/4 v13, -0x1

    const/4 v12, 0x0

    iget-object v8, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mSView:Landroid/widget/ScrollView;

    if-eqz v8, :cond_0

    if-eqz p1, :cond_4

    iget-object v8, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mSView:Landroid/widget/ScrollView;

    invoke-virtual {v8, v12}, Landroid/widget/ScrollView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mHSView:Landroid/widget/HorizontalScrollView;

    if-eqz v8, :cond_1

    if-eqz p1, :cond_5

    iget-object v8, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mHSView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v8, v9}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105034c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v13, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v8, 0x105034d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4, v12, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-boolean v8, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mShowNavigationBar:Z

    if-eqz v8, :cond_2

    const v8, 0x1050158

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v8, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBottomlayout:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBottomlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_7

    const v8, 0x1050364

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-double v8, v1

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v8, v10

    double-to-int v0, v8

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v13, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_6

    invoke-virtual {v5, v12, v12, v12, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_2
    iget-object v8, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBottomlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v12, v12, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_2
    :goto_3
    iget-object v8, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void

    :cond_4
    iget-object v8, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mSView:Landroid/widget/ScrollView;

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mHSView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v8, v12}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v5, v12, v12, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    :cond_7
    iget-object v8, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_2

    if-eqz p1, :cond_8

    iget-object v8, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v12, v12, v12, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    add-int v8, v6, v3

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_3

    :cond_8
    iget-object v8, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mForceRestartlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v12, v12, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_3
.end method


# virtual methods
.method public hideAllView(Landroid/view/View;Z)V
    .locals 11

    const/4 v10, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBgLayout:Landroid/widget/LinearLayout;

    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mBgLayoutLand:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_1
    move-object v5, v1

    const v6, 0x10202d6

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout$1;

    invoke-direct {v7, p0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout$1;-><init>(Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->relayoutByOrientation(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->relayoutByOrientation(Z)V

    iget-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->mNotifyConfigChangeCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
