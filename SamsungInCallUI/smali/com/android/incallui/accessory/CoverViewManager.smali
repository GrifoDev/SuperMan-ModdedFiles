.class public Lcom/android/incallui/accessory/CoverViewManager;
.super Ljava/lang/Object;


# static fields
.field public static final COVER_CALL_SCREEN_DIM_DELAY:I = 0x0

.field public static final COVER_CALL_SCREEN_DIM_DELAY_DEFAULT:I = -0x1

.field public static final COVER_CALL_SCREEN_TIMEOUT:I = 0x1770

.field public static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530


# instance fields
.field private mActivity:Lcom/android/incallui/InCallActivity;

.field private mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    return-void
.end method

.method private inflateCoverView()V
    .locals 6

    const/16 v5, 0x8

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v0

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    const v1, 0x7f100323

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    const v1, 0x7f100319

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/accessory/CoverScreen;

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    const v1, 0x7f10031a

    invoke-virtual {v0, v1}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lp.width : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", lp.height : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v4, :cond_4

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_2
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    invoke-virtual {v0, v5}, Lcom/android/incallui/accessory/CoverScreen;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/accessory/CoverScreen;->setParentWindow(Landroid/view/Window;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverViewManager;->updateCoverScreenTimeOut()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    const v1, 0x7f100322

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    goto/16 :goto_1

    :cond_4
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_2
.end method

.method private setCoverMode(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getScoverManager()Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getScoverManager()Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->setCoverModeToWindow(Landroid/view/Window;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setWindowAttributes(Z)V
    .locals 4

    const/16 v3, 0x40

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string v1, "inputFeatures"

    sget v2, Lcom/android/incallui/wrapper/WindowManagerWrapper$LayoutParams;->INPUT_FEATURE_DISABLE_USER_ACTIVITY:I

    invoke-static {v0, v1, v2}, Lcom/android/incallui/wrapper/WindowManagerWrapper$LayoutParams;->addFlag(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_1
    const-string v1, "inputFeatures"

    sget v2, Lcom/android/incallui/wrapper/WindowManagerWrapper$LayoutParams;->INPUT_FEATURE_DISABLE_USER_ACTIVITY:I

    invoke-static {v0, v1, v2}, Lcom/android/incallui/wrapper/WindowManagerWrapper$LayoutParams;->removeFlag(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->semClearPrivateFlags(I)V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized dismissView()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    if-eqz v0, :cond_0

    const-string v0, "dismissView..."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverViewManager;->setWindowAttributes(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverViewManager;->updateCoverScreenTimeOut()V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/accessory/CoverScreen;->attemptFinish(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    return-object v0
.end method

.method public declared-synchronized onCoverStateChanged(Z)V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverViewManager;->dismissView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "onCoverStateChanged: inflateCoverView"

    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverViewManager;->inflateCoverView()V

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/incallui/ProximitySensor;->turnOffProximitySensor(Z)V

    const-string v1, "onCoverStateChanged: turnOffProximitySensor"

    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCoverStateChanged: setVisibility("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    if-eqz p1, :cond_5

    move v1, v0

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/incallui/accessory/CoverScreen;->setVisibility(I)V

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    invoke-virtual {v1}, Lcom/android/incallui/accessory/CoverScreen;->setUp()V

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v1, v2, v2, v3}, Lcom/android/incallui/accessory/CoverScreen;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    :cond_4
    :goto_2
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getScoverManager()Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    if-nez v1, :cond_7

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverViewManager;->setCoverMode(Z)V

    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverViewManager;->setWindowAttributes(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverViewManager;->updateCoverScreenTimeOut()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->hasInCallUiFocus()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onCoverStateChanged: bringToForeground"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    const/4 v1, 0x4

    goto :goto_1

    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/accessory/CoverScreen;->attemptFinish(Z)V

    goto :goto_2

    :cond_7
    iget-boolean v0, v1, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public declared-synchronized updateCoverScreenTimeOut()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_3

    :goto_1
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCoverScreenTimeOut : isDialing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isClosed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    const-string v0, "updateCoverScreenTimeOut : screen timeout 6000 ms"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1770

    invoke-virtual {v3, v0, v1}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    const-wide/16 v0, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    :goto_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_6

    :cond_2
    const-string v0, "setCoverScreenTime: add FLAG_KEEP_SCREEN_ON"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_3
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    :try_start_2
    const-string v0, "samsung_screen_timeout_incall"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v2, :cond_5

    const-string v0, "updateCoverScreenTimeOut : screen timeout 30000 ms"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x7530

    invoke-virtual {v3, v0, v1}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    const-wide/16 v0, 0x4e20

    invoke-virtual {v3, v0, v1}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCoverScreenTimeOut : screen timeout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const/16 v4, 0x7530

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/16 v2, 0x7530

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    const-wide/16 v0, -0x1

    invoke-virtual {v3, v0, v1}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    goto/16 :goto_2

    :cond_6
    const-string v0, "setCoverScreenTime: clear FLAG_KEEP_SCREEN_ON"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method
