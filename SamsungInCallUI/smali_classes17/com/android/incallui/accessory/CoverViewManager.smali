.class public Lcom/android/incallui/accessory/CoverViewManager;
.super Ljava/lang/Object;
.source "CoverViewManager.java"


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
    .param p1, "activity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    .line 55
    return-void
.end method

.method private inflateCoverView()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 150
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    if-nez v5, :cond_0

    .line 181
    :goto_0
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    .line 152
    .local v0, "coverViewStub":Landroid/view/ViewStub;
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 153
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    const v6, 0x7f100298

    invoke-virtual {v5, v6}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "coverViewStub":Landroid/view/ViewStub;
    check-cast v0, Landroid/view/ViewStub;

    .line 157
    .restart local v0    # "coverViewStub":Landroid/view/ViewStub;
    :goto_1
    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 159
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    const v6, 0x7f10028f

    invoke-virtual {v5, v6}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/accessory/CoverScreen;

    iput-object v5, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    .line 160
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    if-eqz v5, :cond_2

    .line 161
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    const v6, 0x7f100290

    invoke-virtual {v5, v6}, Lcom/android/incallui/accessory/CoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 162
    .local v3, "innerCoverScreen":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 163
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 164
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverWidth()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 165
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverHeight()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lp.width : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lp.height : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 168
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 169
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 171
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v5, v6, :cond_4

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 173
    .local v2, "displayWidth":I
    :goto_2
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int v5, v2, v5

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 174
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v2    # "displayWidth":I
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    invoke-virtual {v5, v7}, Lcom/android/incallui/accessory/CoverScreen;->setVisibility(I)V

    .line 177
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    iget-object v6, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/accessory/CoverScreen;->setParentWindow(Landroid/view/Window;)V

    .line 180
    .end local v3    # "innerCoverScreen":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverViewManager;->updateCoverScreenTimeOut()V

    goto/16 :goto_0

    .line 155
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    const v6, 0x7f100297

    invoke-virtual {v5, v6}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "coverViewStub":Landroid/view/ViewStub;
    check-cast v0, Landroid/view/ViewStub;

    .restart local v0    # "coverViewStub":Landroid/view/ViewStub;
    goto/16 :goto_1

    .line 171
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v3    # "innerCoverScreen":Landroid/view/View;
    .restart local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_2
.end method

.method private setCoverMode(Z)V
    .locals 3
    .param p1, "isClosed"    # Z

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getScoverManager()Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getScoverManager()Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    .line 192
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 191
    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->setCoverModeToWindow(Landroid/view/Window;I)V

    goto :goto_0

    .line 192
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setWindowAttributes(Z)V
    .locals 3
    .param p1, "isClosed"    # Z

    .prologue
    const/16 v2, 0x40

    .line 197
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    if-nez v1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 201
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_1

    .line 205
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 209
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->semClearPrivateFlags(I)V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized dismissView()V
    .locals 2

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "dismissView..."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/accessory/CoverViewManager;->setWindowAttributes(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverViewManager;->updateCoverScreenTimeOut()V

    .line 100
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/accessory/CoverScreen;->attemptFinish(Z)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    return-object v0
.end method

.method public declared-synchronized onCoverStateChanged(Z)V
    .locals 6
    .param p1, "isClosed"    # Z

    .prologue
    const/4 v2, 0x0

    .line 58
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    .line 59
    .local v1, "inCallState":Lcom/android/incallui/InCallPresenter$InCallState;
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v4, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverViewManager;->dismissView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 64
    const-string v4, "onCoverStateChanged: inflateCoverView"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 65
    invoke-direct {p0}, Lcom/android/incallui/accessory/CoverViewManager;->inflateCoverView()V

    .line 67
    :cond_2
    if-eqz p1, :cond_3

    .line 68
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v3

    .line 69
    .local v3, "proximitySensor":Lcom/android/incallui/ProximitySensor;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/ProximitySensor;->turnOffProximitySensor(Z)V

    .line 70
    const-string v4, "onCoverStateChanged: turnOffProximitySensor"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 72
    .end local v3    # "proximitySensor":Lcom/android/incallui/ProximitySensor;
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    if-eqz v4, :cond_4

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCoverStateChanged: setVisibility("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 74
    iget-object v5, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    if-eqz p1, :cond_5

    move v4, v2

    :goto_1
    invoke-virtual {v5, v4}, Lcom/android/incallui/accessory/CoverScreen;->setVisibility(I)V

    .line 75
    if-eqz p1, :cond_6

    .line 76
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    invoke-virtual {v4}, Lcom/android/incallui/accessory/CoverScreen;->setUp()V

    .line 77
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v4, v1, v1, v5}, Lcom/android/incallui/accessory/CoverScreen;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 82
    :cond_4
    :goto_2
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getScoverManager()Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    .line 83
    .local v0, "coverState":Lcom/samsung/android/sdk/cover/ScoverState;
    if-nez v0, :cond_7

    .line 84
    .local v2, "isAttached":Z
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/incallui/accessory/CoverViewManager;->setCoverMode(Z)V

    .line 85
    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/CoverViewManager;->setWindowAttributes(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/android/incallui/accessory/CoverViewManager;->updateCoverScreenTimeOut()V

    .line 88
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->hasInCallUiFocus()Z

    move-result v4

    if-nez v4, :cond_0

    .line 89
    const-string v4, "onCoverStateChanged: bringToForeground"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 90
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 58
    .end local v0    # "coverState":Lcom/samsung/android/sdk/cover/ScoverState;
    .end local v1    # "inCallState":Lcom/android/incallui/InCallPresenter$InCallState;
    .end local v2    # "isAttached":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 74
    .restart local v1    # "inCallState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_5
    const/4 v4, 0x4

    goto :goto_1

    .line 79
    :cond_6
    :try_start_2
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverViewManager;->mCoverScreen:Lcom/android/incallui/accessory/CoverScreen;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/incallui/accessory/CoverScreen;->attemptFinish(Z)V

    goto :goto_2

    .line 83
    .restart local v0    # "coverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_7
    iget-boolean v2, v0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public declared-synchronized updateCoverScreenTimeOut()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 147
    :goto_0
    monitor-exit p0

    return-void

    .line 111
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v4

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v4, v5, :cond_3

    .line 112
    .local v1, "isDialing":Z
    :goto_1
    const/4 v0, 0x0

    .line 114
    .local v0, "isClosed":Z
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 115
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v0

    .line 117
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCoverScreenTimeOut : isDialing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isClosed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 120
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 121
    const-string v4, "updateCoverScreenTimeOut : screen timeout 6000 ms"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    const-wide/16 v4, 0x1770

    invoke-virtual {v3, v4, v5}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    .line 123
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    .line 138
    :goto_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v2

    .line 139
    .local v2, "isVideoCall":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_6

    .line 140
    :cond_2
    const-string v4, "setCoverScreenTime: add FLAG_KEEP_SCREEN_ON"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 141
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 146
    :goto_3
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    .end local v0    # "isClosed":Z
    .end local v1    # "isDialing":Z
    .end local v2    # "isVideoCall":Z
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 111
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 125
    .restart local v0    # "isClosed":Z
    .restart local v1    # "isDialing":Z
    .restart local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    :try_start_2
    const-string v4, "samsung_screen_timeout_incall"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 126
    const-string v4, "updateCoverScreenTimeOut : screen timeout 30000 ms"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v4, v5}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    .line 128
    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v4, v5}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    goto :goto_2

    .line 130
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCoverScreenTimeOut : screen timeout "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    const/16 v7, 0x7530

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v4, p0, Lcom/android/incallui/accessory/CoverViewManager;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    const/16 v6, 0x7530

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    .line 134
    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    goto/16 :goto_2

    .line 143
    .restart local v2    # "isVideoCall":Z
    :cond_6
    const-string v4, "setCoverScreenTime: clear FLAG_KEEP_SCREEN_ON"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 144
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, -0x81

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method
