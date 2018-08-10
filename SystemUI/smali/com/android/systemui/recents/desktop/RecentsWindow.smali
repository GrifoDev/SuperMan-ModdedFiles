.class public Lcom/android/systemui/recents/desktop/RecentsWindow;
.super Landroid/app/Dialog;
.source "RecentsWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Lcom/samsung/systemui/splugins/recents/desktop/PluginRecentsWindow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/desktop/RecentsWindow$1;,
        Lcom/android/systemui/recents/desktop/RecentsWindow$2;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private final mContext:Landroid/content/Context;

.field private mDownScrollButton:Landroid/view/View;

.field mEmptyView:Landroid/view/View;

.field mEmptyViewStub:Landroid/view/ViewStub;

.field private mFlipFont:I

.field private mFlipScale:F

.field private mLastDisplayDensity:I

.field private mLastScreenHeightDp:I

.field private mLastScreenWidthDp:I

.field private mLockEditCancelButton:Landroid/widget/Button;

.field private mLockEditDoneButton:Landroid/widget/Button;

.field private mLockMenuItem:Landroid/view/MenuItem;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentsButtonsContainer:Landroid/view/ViewGroup;

.field private mRecentsCloseAllButton:Landroid/widget/Button;

.field private final mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mRecentsMoreButton:Landroid/view/View;

.field private mRecentsMoreMenu:Landroid/widget/PopupMenu;

.field mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

.field mRootView:Landroid/widget/FrameLayout;

.field private mScrollButtonContainer:Landroid/widget/LinearLayout;

.field mStack:Lcom/android/systemui/recents/model/TaskStack;

.field private mUpScrollButton:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/desktop/RecentsWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/desktop/RecentsWindow;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mScrollButtonContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f130107

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/android/systemui/recents/desktop/RecentsWindow$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/desktop/RecentsWindow$1;-><init>(Lcom/android/systemui/recents/desktop/RecentsWindow;)V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance v0, Lcom/android/systemui/recents/desktop/RecentsWindow$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/desktop/RecentsWindow$2;-><init>(Lcom/android/systemui/recents/desktop/RecentsWindow;)V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->updateConfigurationValues(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f080594

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->requestWindowFeature(I)Z

    return-void
.end method

.method private checkConfigChange(Landroid/content/res/Configuration;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLastScreenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLastScreenHeightDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v3, v4, :cond_1

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLastDisplayDensity:I

    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v3, v4, :cond_2

    move v3, v1

    :goto_1
    or-int/2addr v0, v3

    iget v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mFlipScale:F

    iget v4, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    move v3, v1

    :goto_2
    or-int/2addr v0, v3

    iget v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mFlipFont:I

    iget v4, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-eq v3, v4, :cond_4

    :goto_3
    or-int/2addr v0, v1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->updateConfigurationValues(Landroid/content/res/Configuration;)V

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method private getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    const/4 v1, -0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d8

    const/16 v4, 0x200

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string/jumbo v1, "RecentsWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v1, 0x7f130108

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_recents_desktop_RecentsWindow_11580(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onClick :: btnDone"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iput v3, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_recents_desktop_RecentsWindow_11992(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onClick :: btnCancel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iput v2, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;

    invoke-direct {v1, v2, v2}, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method private rebuildMenuItem(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    xor-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    const v1, 0x7f120978

    invoke-interface {v0, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockMenuItem:Landroid/view/MenuItem;

    :goto_0
    const-string/jumbo v1, "com.samsung.android.voc"

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->isInstalledPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120976

    invoke-interface {v0, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    :cond_0
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockMenuItem:Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateBtnContainerLayout()V
    .locals 13

    const/4 v12, 0x4

    invoke-static {}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->getAttr()Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    move-result-object v0

    iget-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v10, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mNaviBarHeight:I

    sub-int v2, v9, v10

    iget-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v7

    iget v9, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewWidth:I

    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    mul-int/2addr v9, v10

    iget v10, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewGap:I

    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    sub-int v9, v8, v9

    div-int/lit8 v4, v9, 0x2

    if-gt v7, v12, :cond_1

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_2

    iget v9, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mRecentsLayoutHeightRow1:I

    sub-int v9, v2, v9

    div-int/lit8 v9, v9, 0x2

    iget v10, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mButtonContainterHeight:I

    sub-int v5, v9, v10

    :goto_1
    if-ge v7, v12, :cond_0

    iget v9, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewFocusPadding:I

    sub-int/2addr v4, v9

    :cond_0
    iget-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget v9, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mRecentsLayoutHeightRow2:I

    sub-int v9, v2, v9

    div-int/lit8 v9, v9, 0x2

    iget v10, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mButtonContainterHeight:I

    sub-int v5, v9, v10

    goto :goto_1
.end method

.method private updateCloseAllButtonVisibility(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->hasOnlyLockedTasks()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getLockedTaskCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateConfigurationValues(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mFlipScale:F

    iget v0, p1, Landroid/content/res/Configuration;->FlipFont:I

    iput v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mFlipFont:I

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLastScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLastScreenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLastDisplayDensity:I

    return-void
.end method


# virtual methods
.method varargs clearButtonContainerFocus([Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x0

    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/recents/desktop/RecentsWindow;->setFocus(Landroid/view/View;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iput v3, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v2}, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public getCloseAllButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getLockEditCancelButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockEditCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getLockEditDoneButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockEditDoneButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getRecentsWindowView()Lcom/android/systemui/recents/desktop/views/RecentsWindowView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    return-object v0
.end method

.method public bridge synthetic getRecentsWindowView()Lcom/samsung/systemui/splugins/recents/desktop/views/PluginRecentsWindowView;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->getRecentsWindowView()Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    move-result-object v0

    return-object v0
.end method

.method public handleButtonContainerFocus(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    if-ne v3, v6, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockEditCancelButton:Landroid/widget/Button;

    :goto_1
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockEditDoneButton:Landroid/widget/Button;

    :goto_2
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_3
    return v5

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreButton:Landroid/view/View;

    goto :goto_2

    :sswitch_0
    new-array v3, v6, [Landroid/view/View;

    aput-object v1, v3, v5

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/desktop/RecentsWindow;->hasButtonContainerFocus([Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/recents/desktop/RecentsWindow;->setFocus(Landroid/view/View;Z)V

    :cond_4
    return v4

    :sswitch_1
    new-array v3, v6, [Landroid/view/View;

    aput-object v1, v3, v5

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/desktop/RecentsWindow;->hasButtonContainerFocus([Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/recents/desktop/RecentsWindow;->setFocus(Landroid/view/View;Z)V

    :cond_5
    return v4

    :sswitch_2
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->isFirstRow()Z

    move-result v3

    if-eqz v3, :cond_0

    new-array v3, v6, [Landroid/view/View;

    aput-object v1, v3, v5

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/desktop/RecentsWindow;->hasButtonContainerFocus([Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/recents/desktop/RecentsWindow;->setFocus(Landroid/view/View;Z)V

    :goto_4
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->clearFocusedTask()V

    return v4

    :cond_6
    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/recents/desktop/RecentsWindow;->setFocus(Landroid/view/View;Z)V

    goto :goto_4

    :sswitch_3
    new-array v3, v6, [Landroid/view/View;

    aput-object v1, v3, v5

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/desktop/RecentsWindow;->clearButtonContainerFocus([Landroid/view/View;)V

    goto :goto_3

    :sswitch_4
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    return v4

    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method public handleMoveButtonsEnabled(ZZ)V
    .locals 7

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v3, "handleArrowButtonsEnabled(%b, %b)\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    if-eqz p2, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setFocusable(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method varargs hasButtonContainerFocus([Landroid/view/View;)Z
    .locals 5

    const/4 v2, 0x0

    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public hide()V
    .locals 2

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    return-void
.end method

.method public isInstalledPackage(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method synthetic lambda$-com_android_systemui_recents_desktop_RecentsWindow_9481(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "Recents_Window"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMenuItemClick :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    const v3, 0x7f120978

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    const/4 v2, 0x2

    iput v2, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;

    invoke-direct {v2, v4, v4}, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;-><init>(ZZ)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;

    const-string/jumbo v3, "503"

    invoke-direct {v2, v4, v3}, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v5

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    const v3, 0x7f120976

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "voc://view/contactUs"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v1, "packageName"

    const-string/jumbo v2, "com.android.systemui.recents"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "appId"

    const-string/jumbo v2, "53e5c21oy8"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "appName"

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "feedbackType"

    const-string/jumbo v2, "ask"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;

    const-string/jumbo v3, "503"

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3}, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v5

    :cond_1
    return v4
.end method

.method public onAttachedToWindow()V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "Recents_Window"

    const-string/jumbo v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mAttached:Z

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0, v3}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DesktopModeChangedEvent;)V
    .locals 2

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onBusEvent(DesktopModeChangedEvent)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/HideRecentsEvent;)V
    .locals 2

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onBusEvent(HideRecentsEvent)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromAltTab:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->launchFocusedTask()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "overview_task_launch_failed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "overview_task_launch_index"

    iget v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;->taskIndexFromStackFront:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;)V
    .locals 10

    const/high16 v9, 0x3f800000    # 1.0f

    const v8, 0x3ea8f5c3    # 0.33f

    const v7, 0x3dcccccd    # 0.1f

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    const v5, 0x7f0a0411

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    const v5, 0x7f0a041e

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0100b8

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v8, v6, v7, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0100b0

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v8, v6, v7, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-direct {v5, v3}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    const v5, 0x7f0a041e

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    const v5, 0x7f0a0411

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;)V
    .locals 2

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onBusEvent(UpdateLayoutEvent)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->updateBtnContainerLayout()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/LockNotifyEvent;)V
    .locals 2

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onBusEvent(LockNotifyEvent)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "overview_task_all_dismissed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x165

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string/jumbo v2, "package"

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x1080c000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "overview_app_info"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v4, v2}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x121

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;->show:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->updateCloseAllButtonVisibility(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string/jumbo v3, "Recents_Window"

    const-string/jumbo v4, "OnClickRemoveAllButton"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task;

    iget-boolean v3, v3, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v5, v3}, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->scrollUpVisibleLine()V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->scrollDownVisibleLine()V

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreMenu:Landroid/widget/PopupMenu;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockMenuItem:Landroid/view/MenuItem;

    if-nez v3, :cond_5

    const-string/jumbo v1, "none"

    :goto_3
    const-string/jumbo v3, "Recents_Window"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onClick(MoreButton) :: mLockMenuItem="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mAttached:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v1, "visible"

    goto :goto_3

    :cond_6
    const-string/jumbo v1, "invisible"

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0415
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRootView:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->checkConfigChange(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->getAttr()Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->reinitialize(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->requestLayout()V

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockEditDoneButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->requestLayout()V

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockEditCancelButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->requestLayout()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "Recents_Window"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0d0181

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->setContentView(I)V

    const v1, 0x7f0a0439

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRootView:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/systemui/recents/desktop/RecentsWindow$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/desktop/RecentsWindow$3;-><init>(Lcom/android/systemui/recents/desktop/RecentsWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0a0421

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setCallback(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->bindViews(Landroid/view/ViewGroup;)V

    const v1, 0x7f0a040f

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0417

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0415

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreButton:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->semSetHoverPopupType(I)V

    new-instance v1, Landroid/widget/PopupMenu;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    const v4, 0x103012b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreButton:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreMenu:Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreMenu:Landroid/widget/PopupMenu;

    const v2, 0x7f0e0001

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreMenu:Landroid/widget/PopupMenu;

    const/16 v2, 0x35

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setGravity(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreMenu:Landroid/widget/PopupMenu;

    new-instance v2, Lcom/android/systemui/recents/desktop/-$Lambda$HlCRr-kXl_EmkjzJQsF-KrY8kIA$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/desktop/-$Lambda$HlCRr-kXl_EmkjzJQsF-KrY8kIA$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0a00b6

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockEditDoneButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockEditDoneButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/recents/desktop/-$Lambda$HlCRr-kXl_EmkjzJQsF-KrY8kIA;

    invoke-direct {v2}, Lcom/android/systemui/recents/desktop/-$Lambda$HlCRr-kXl_EmkjzJQsF-KrY8kIA;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0a00b5

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockEditCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockEditCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/recents/desktop/-$Lambda$HlCRr-kXl_EmkjzJQsF-KrY8kIA$1;

    invoke-direct {v2}, Lcom/android/systemui/recents/desktop/-$Lambda$HlCRr-kXl_EmkjzJQsF-KrY8kIA$1;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0418

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mScrollButtonContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0a041a

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->semSetHoverPopupType(I)V

    const v1, 0x7f0a0419

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->semSetHoverPopupType(I)V

    const v1, 0x7f0a01a5

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyViewStub:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyView:Landroid/view/View;

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/desktop/RecentsWindow;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onDetachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mAttached:Z

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getHighResThumbnailLoader()Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->setVisible(Z)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->forceMouseScroll(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onKeyDown(%s)\n"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/desktop/RecentsWindow;->handleButtonContainerFocus(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v5

    :cond_0
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->LEFT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v5

    :sswitch_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v5

    :sswitch_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->UP:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v5

    :sswitch_3
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->DOWN:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v5

    :sswitch_4
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->launchFocusedTask()V

    return v5

    :sswitch_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->LEFT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :goto_0
    return v5

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_2
    return v5

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_5
        0x42 -> :sswitch_4
        0x43 -> :sswitch_6
        0x70 -> :sswitch_6
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->setFocus(Landroid/view/View;Z)V

    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->updateRecentsTasks()V

    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->updateBtnContainerLayout()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isButtonShapeEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->setButtonsBackground(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 4

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public onTaskCountChanged(I)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->updateCloseAllButtonVisibility(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method setButtonsBackground(Z)V
    .locals 3

    const v2, 0x7f080596

    const v1, 0x7f080595

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockEditDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockEditCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockEditDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mLockEditCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreButton:Landroid/view/View;

    const v1, 0x7f08059a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method setFocus(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p1}, Landroid/view/View;->requestAccessibilityFocus()Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public updateEmptyViewVisibility(I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsMoreButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateRecentsTasks()V
    .locals 12

    const/4 v9, 0x0

    const-string/jumbo v10, "Recents_Window"

    const-string/jumbo v11, "updateRecentsTasks is getting called"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v10

    if-nez v10, :cond_1

    iget-boolean v10, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    xor-int/lit8 v10, v10, 0x1

    const/4 v11, -0x1

    invoke-virtual {v3, v4, v11, v10}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    :cond_1
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v10, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v10}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v7

    new-instance v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    iget v10, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iput v10, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    iget-object v10, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v10}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    const/16 v10, 0x8

    if-lt v6, v10, :cond_3

    const/16 v8, 0x8

    :goto_0
    iput v8, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    iput v8, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    iget-object v10, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v10, v4, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    iget-object v10, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget-object v11, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->reload(Lcom/android/systemui/recents/model/TaskStack;)V

    if-nez v6, :cond_2

    const/4 v9, 0x1

    :cond_2
    invoke-direct {p0, v9}, Lcom/android/systemui/recents/desktop/RecentsWindow;->rebuildMenuItem(Z)V

    iget-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/desktop/RecentsWindow;->onTaskCountChanged(I)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/desktop/RecentsWindow;->updateEmptyViewVisibility(I)V

    return-void

    :cond_3
    move v8, v6

    goto :goto_0
.end method
