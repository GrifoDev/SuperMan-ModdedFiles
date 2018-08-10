.class public Lcom/android/systemui/recents/desktop/views/RecentsWindowView;
.super Landroid/support/v7/widget/RecyclerView;
.source "RecentsWindowView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/samsung/systemui/splugins/recents/desktop/views/PluginRecentsWindowView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;,
        Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;,
        Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-systemui-recents-desktop-views-RecentsWindowView$FocusDirectionSwitchesValues:[I


# instance fields
.field mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

.field mAppContext:Landroid/content/Context;

.field mCb:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;

.field mCustomOnScrollListener:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;

.field mFocusedIndex:I

.field mItemAnimator:Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;

.field mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

.field mRootView:Landroid/view/ViewGroup;

.field private mStack:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method private static synthetic -getcom-android-systemui-recents-desktop-views-RecentsWindowView$FocusDirectionSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->-com-android-systemui-recents-desktop-views-RecentsWindowView$FocusDirectionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->-com-android-systemui-recents-desktop-views-RecentsWindowView$FocusDirectionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->values()[Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->DOWN:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->LEFT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->NONE:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->UP:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->-com-android-systemui-recents-desktop-views-RecentsWindowView$FocusDirectionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/desktop/views/RecentsWindowView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->handleMoveButtonEnabled()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private handleMoveButtonEnabled()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mCb:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mCb:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;

    if-lez v0, :cond_1

    move v2, v3

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_2

    :goto_1
    invoke-interface {v5, v2, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;->handleMoveButtonsEnabled(ZZ)V

    :cond_0
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAppContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setHasFixedSize(Z)V

    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/desktop/views/RecentsWindowView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mCustomOnScrollListener:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mCustomOnScrollListener:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mItemAnimator:Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mItemAnimator:Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$1;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private removeFocusedTask()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public adjustFocusedIndex()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateFocusedTask(Z)V

    return-void
.end method

.method public bindViews(Landroid/view/ViewGroup;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->bindViews(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public clearFocusedTask()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateFocusedTask(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAppContext:Landroid/content/Context;

    const v2, 0x7f120951

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    return v1
.end method

.method ensureFocusedIndex(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v5}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->getSpanCount()I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    div-int v8, v4, v3

    rem-int v5, v4, v3

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    add-int v1, v8, v5

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->LEFT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    if-ne p1, v5, :cond_2

    sget-object p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->-getcom-android-systemui-recents-desktop-views-RecentsWindowView$FocusDirectionSwitchesValues()[I

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_0

    :goto_2
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v7, v6}, Lcom/android/systemui/recents/misc/Utilities;->clamp(III)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    return-void

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    if-ne p1, v5, :cond_0

    sget-object p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->LEFT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    goto :goto_1

    :pswitch_0
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_3

    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v5, v5, -0x1

    :goto_3
    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v4, -0x1

    goto :goto_3

    :pswitch_1
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v4, :cond_4

    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v5, v5, 0x1

    :goto_4
    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto :goto_2

    :cond_4
    move v5, v7

    goto :goto_4

    :pswitch_2
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    sub-int/2addr v5, v3

    if-ltz v5, :cond_5

    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    sub-int/2addr v5, v3

    :goto_5
    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto :goto_2

    :cond_5
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    rem-int/2addr v5, v3

    add-int/lit8 v6, v1, -0x1

    mul-int/2addr v6, v3

    add-int/2addr v5, v6

    add-int/lit8 v6, v4, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_5

    :pswitch_3
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v5, v5, 0x1

    div-int/2addr v5, v3

    iget v8, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v8, v8, 0x1

    rem-int/2addr v8, v3

    if-eqz v8, :cond_6

    :goto_6
    add-int v0, v5, v6

    add-int/lit8 v5, v1, -0x1

    if-ne v0, v5, :cond_7

    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/2addr v5, v3

    add-int/lit8 v6, v4, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto :goto_2

    :cond_6
    move v6, v7

    goto :goto_6

    :cond_7
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/2addr v5, v3

    if-ge v5, v4, :cond_8

    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/2addr v5, v3

    :goto_7
    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto :goto_2

    :cond_8
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    rem-int/2addr v5, v3

    goto :goto_7

    :pswitch_4
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-ge v5, v4, :cond_9

    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    :goto_8
    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto/16 :goto_2

    :cond_9
    move v5, v7

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method focusNewTask(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateFocusedTask(Z)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->ensureFocusedIndex(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateFocusedTask(Z)V

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->NONE:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {p1, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-lt v2, v0, :cond_0

    iget v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-le v2, v1, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->smoothScrollToPosition(I)V

    :cond_1
    return-void
.end method

.method public forceMouseScroll(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public getFocusedIndex()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    return v0
.end method

.method getNextScrollIndex(Z)I
    .locals 6

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v4}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Lcom/android/systemui/recents/misc/Utilities;->clamp(III)I

    move-result v1

    return v1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v4}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method public getStack()Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public bridge synthetic getStack()Lcom/samsung/systemui/splugins/recents/model/PluginTaskStack;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method public getViewHolderOfFocusedIndex()Lcom/samsung/systemui/splugins/recents/desktop/views/PluginRecentsWindowViewAdapter$PluginRecentsWindowViewHolder;
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/recents/desktop/views/PluginRecentsWindowViewAdapter$PluginRecentsWindowViewHolder;

    return-object v0
.end method

.method public init(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/TaskStack;->setCallbacks(Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;)V

    :cond_0
    return-void
.end method

.method public isFirstRow()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    div-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public launchFocusedTask()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->startTask(Lcom/android/systemui/recents/model/Task;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mItemAnimator:Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;)V
    .locals 6

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget-boolean v4, p1, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;->isDone:Z

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateTaskLockState(Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v4}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v4}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    move v2, v3

    :goto_0
    if-gt v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->updateViewLockState()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/UnlockTaskEvent;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget v3, p1, Lcom/android/systemui/recents/events/activity/UnlockTaskEvent;->id:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLockPreference()Lcom/android/systemui/recents/model/TaskLockPreference;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/model/TaskLockPreference;->isTaskLocked(Lcom/android/systemui/recents/model/Task$TaskKey;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAppContext:Landroid/content/Context;

    const v4, 0x103012b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAppContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    aput-object v5, v4, v6

    const v5, 0x7f120992

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLockPreference()Lcom/android/systemui/recents/model/TaskLockPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/model/TaskLockPreference;->removeLockedTask(Lcom/android/systemui/recents/model/Task;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateFocusedTask(Z)V

    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->removeFocusedTask()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;)V
    .locals 2

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;->direction:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->NONE:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;->direction:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->focusNewTask(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mItemAnimator:Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onFinishInflate()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onGlobalLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->handleMoveButtonEnabled()V

    return-void
.end method

.method public onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->addTaskAt(Lcom/android/systemui/recents/model/Task;I)V

    return-void
.end method

.method public onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;ZZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mCb:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;->onTaskCountChanged(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    if-eqz p5, :cond_1

    const v0, 0x7f120961

    :goto_0
    invoke-direct {v2, v0, p5}, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;-><init>(IZ)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f120962

    goto :goto_0
.end method

.method public onStackTasksRemoved(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public onStackTasksUpdated(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 0

    return-void
.end method

.method public reload(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 6

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->reverseStackTasks()V

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {v5, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->setNewStackTasks(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->init(Lcom/android/systemui/recents/model/TaskStack;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->scrollToInitialState()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    iget-boolean v5, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-le v5, v4, :cond_1

    :goto_0
    iput v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateLayout()V

    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto :goto_1
.end method

.method public scrollDownVisibleLine()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getNextScrollIndex(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->smoothScrollToPosition(I)V

    return-void
.end method

.method scrollToInitialState()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public scrollUpVisibleLine()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getNextScrollIndex(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mCb:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;

    return-void
.end method

.method public setFocusedIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    return-void
.end method

.method public updateFocusedTask(Z)V
    .locals 6

    iget v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "RecentsWindowView"

    const-string/jumbo v2, "updateFocusedTask(%b) - focused index=%d\n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->setFocus(Z)V

    :cond_1
    return-void
.end method

.method updateLayout()V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v2

    const/4 v0, 0x1

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x4

    const/4 v0, 0x1

    :goto_0
    const/16 v3, 0x8

    if-gt v2, v3, :cond_0

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setOverScrollMode(I)V

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->setOrientation(I)V

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->setSpanCount(I)V

    return-void

    :pswitch_0
    const/4 v1, 0x1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setOverScrollMode(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateTaskLockState(Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLockPreference()Lcom/android/systemui/recents/model/TaskLockPreference;

    move-result-object v1

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    iget-object v5, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-nez v5, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/recents/events/ui/TaskLockSettingDoneEvent;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskLockPreference;->getLockedTasksCount()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/android/systemui/recents/events/ui/TaskLockSettingDoneEvent;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_1
    return-void

    :cond_2
    iget-boolean v5, v2, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v5, :cond_4

    iget-object v5, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/model/TaskLockPreference;->isTaskLocked(Lcom/android/systemui/recents/model/Task$TaskKey;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskLockPreference;->saveLockedTask(Lcom/android/systemui/recents/model/Task;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/recents/events/ui/TaskLockedEvent;

    iget-object v7, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v7, v7, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/systemui/recents/events/ui/TaskLockedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskLockPreference;->removeLockedTask(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    iget-object v5, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/model/TaskLockPreference;->isTaskLocked(Lcom/android/systemui/recents/model/Task$TaskKey;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    goto :goto_3
.end method
