.class public Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;
.super Landroid/widget/TabHost;
.source "SeslFragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$SavedState;,
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

.field private mLastTab:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mRealTabContent:Landroid/widget/FrameLayout;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->getTabInfoForTag(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mLastTab:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

    if-ne v1, v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    if-eqz p2, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mLastTab:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

    if-nez v1, :cond_3

    :cond_1
    :goto_2
    if-nez v0, :cond_4

    :goto_3
    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mLastTab:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->beginTransaction()Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    move-result-object p2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mLastTab:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mLastTab:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->detach(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->attach(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mContainerId:I

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->add(ILcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    goto :goto_3
.end method

.method private ensureContent()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mContainerId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No tab content FrameLayout found for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureHierarchy(Landroid/content/Context;)V
    .locals 8

    const v4, 0x1020013

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TabWidget;

    invoke-direct {v2, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/widget/TabWidget;->setId(I)V

    invoke-virtual {v2, v6}, Landroid/widget/TabWidget;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v3, 0x1020011

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    iget v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mContainerId:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private getTabInfoForTag(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

    iget-object v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100f3

    aput v2, v1, v3

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mContainerId:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lt v3, v0, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mAttached:Z

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->doTabChanged(Ljava/lang/String;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    move-result-object v2

    if-nez v2, :cond_5

    :goto_1
    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    iget-object v6, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->findFragmentByTag(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v5, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isDetached()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v2, :cond_4

    :goto_3
    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v2, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->detach(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    goto :goto_2

    :cond_3
    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mLastTab:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->beginTransaction()Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    move-result-object v2

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->commit()I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->executePendingTransactions()Z

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mAttached:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$SavedState;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$SavedState;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$SavedState;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mAttached:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-nez v1, :cond_2

    :goto_1
    return-void

    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->doTabChanged(Ljava/lang/String;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->commit()I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v1, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setup(Landroid/content/Context;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->ensureContent()V

    return-void
.end method

.method public setup(Landroid/content/Context;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    iput p3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mContainerId:I

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->ensureContent()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->setId(I)V

    goto :goto_0
.end method
