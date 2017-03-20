.class public Lcom/android/incallui/fragment/ConferenceManagerFragment;
.super Lcom/android/incallui/BaseFragment;
.source "ConferenceManagerFragment.java"

# interfaces
.implements Lcom/android/incallui/ConferenceManagerUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/ConferenceManagerPresenter;",
        "Lcom/android/incallui/ConferenceManagerUi;",
        ">;",
        "Lcom/android/incallui/ConferenceManagerUi;"
    }
.end annotation


# static fields
.field protected static final CALL_TIME_UPDATE_INTERVAL_MS:J = 0x3e8L


# instance fields
.field protected mActionBarElevation:I

.field protected mBlinkAnimation:[Landroid/view/animation/Animation;

.field protected mCallTimerList:[Lcom/android/incallui/CallTimer;

.field protected mConferenceCallList:[Landroid/view/ViewGroup;

.field protected mConferenceCallState:[I

.field protected mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public createPresenter()Lcom/android/incallui/ConferenceManagerPresenter;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-direct {v0}, Lcom/android/incallui/ConferenceManagerPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->createPresenter()Lcom/android/incallui/ConferenceManagerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "rowId"    # I
    .param p2, "callerName"    # Ljava/lang/String;
    .param p3, "callerNumber"    # Ljava/lang/String;
    .param p4, "callerNumberType"    # Ljava/lang/String;
    .param p5, "lookupKey"    # Ljava/lang/String;
    .param p6, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 194
    return-void
.end method

.method public displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0
    .param p1, "rowId"    # I
    .param p2, "callerName"    # Ljava/lang/String;
    .param p3, "callerNumber"    # Ljava/lang/String;
    .param p4, "callerNumberType"    # Ljava/lang/String;
    .param p5, "lookupKey"    # Ljava/lang/String;
    .param p6, "photoUri"    # Landroid/net/Uri;
    .param p7, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p8, "isPersonalPhotoAvailable"    # Z
    .param p9, "isHDCall"    # Z

    .prologue
    .line 204
    return-void
.end method

.method public displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;ZZI)V
    .locals 0
    .param p1, "rowId"    # I
    .param p2, "callerName"    # Ljava/lang/String;
    .param p3, "callerNumber"    # Ljava/lang/String;
    .param p4, "callerNumberType"    # Ljava/lang/String;
    .param p5, "lookupKey"    # Ljava/lang/String;
    .param p6, "photoUri"    # Landroid/net/Uri;
    .param p7, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p8, "isPersonalPhotoAvailable"    # Z
    .param p9, "isHDCall"    # Z
    .param p10, "state"    # I

    .prologue
    .line 214
    return-void
.end method

.method public displayConferenceDisconnectingAnimation(I)V
    .locals 0
    .param p1, "endcallRowId"    # I

    .prologue
    .line 230
    return-void
.end method

.method protected getContainerHeight()I
    .locals 14

    .prologue
    const-wide v12, 0x3fdccccccccccccdL    # 0.45

    .line 151
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 152
    .local v3, "display":Landroid/view/Display;
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 153
    .local v9, "realDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v9}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v2, v10, Landroid/util/DisplayMetrics;->density:F

    .line 156
    .local v2, "density":F
    iget v8, v9, Landroid/util/DisplayMetrics;->density:F

    .line 158
    .local v8, "realDensity":F
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a01e8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v5, v10

    .line 159
    .local v5, "indicatorHeight":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0345

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v0, v10

    .line 160
    .local v0, "callStateHeight":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a03eb

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v1, v10

    .line 161
    .local v1, "captionHeight":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0514

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v6, v10

    .line 163
    .local v6, "minimumContainerHeight":I
    const/4 v7, 0x0

    .line 164
    .local v7, "realContainerHeight":I
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v10

    if-nez v10, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v10, v10

    mul-double/2addr v10, v12

    int-to-double v12, v5

    sub-double/2addr v10, v12

    int-to-double v12, v0

    sub-double/2addr v10, v12

    double-to-int v7, v10

    .line 172
    :goto_0
    const/4 v4, 0x0

    .line 173
    .local v4, "height":I
    if-ge v7, v6, :cond_2

    .line 174
    div-int/lit8 v4, v6, 0x2

    .line 178
    :goto_1
    return v4

    .line 166
    .end local v4    # "height":I
    :cond_0
    cmpl-float v10, v2, v8

    if-eqz v10, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v10, v10

    mul-double/2addr v10, v12

    int-to-double v12, v1

    sub-double/2addr v10, v12

    int-to-double v12, v0

    sub-double/2addr v10, v12

    double-to-int v7, v10

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v10, v12

    int-to-double v12, v0

    sub-double/2addr v10, v12

    double-to-int v7, v10

    goto :goto_0

    .line 176
    .restart local v4    # "height":I
    :cond_2
    div-int/lit8 v4, v7, 0x2

    goto :goto_1
.end method

.method protected getManagerTopMargin()I
    .locals 9

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 129
    .local v2, "display":Landroid/view/Display;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 130
    .local v5, "realDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->density:F

    .line 132
    .local v1, "density":F
    iget v4, v5, Landroid/util/DisplayMetrics;->density:F

    .line 134
    .local v4, "realDensity":F
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01e8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .line 135
    .local v3, "indicatorHeight":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0345

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v0, v7

    .line 137
    .local v0, "callStateHeight":I
    const/4 v6, 0x0

    .line 138
    .local v6, "topMargin":I
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v7

    if-nez v7, :cond_0

    .line 139
    add-int v7, v3, v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getContainerHeight()I

    move-result v8

    add-int v6, v7, v8

    .line 147
    :goto_0
    return v6

    .line 140
    :cond_0
    cmpl-float v7, v1, v4

    if-eqz v7, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getContainerHeight()I

    move-result v7

    add-int v6, v0, v7

    goto :goto_0

    .line 142
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 143
    add-int v7, v3, v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getContainerHeight()I

    move-result v8

    add-int v6, v7, v8

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getContainerHeight()I

    move-result v7

    add-int v6, v0, v7

    goto :goto_0
.end method

.method protected getPhotoMargin(I)I
    .locals 4
    .param p1, "containerHeight"    # I

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a035a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 183
    .local v0, "photoSize":I
    sub-int v2, p1, v0

    div-int/lit8 v1, v2, 0x2

    .line 184
    .local v1, "topMargin":I
    return v1
.end method

.method public getUi()Lcom/android/incallui/ConferenceManagerUi;
    .locals 0

    .prologue
    .line 68
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getUi()Lcom/android/incallui/ConferenceManagerUi;

    move-result-object v0

    return-object v0
.end method

.method public isFragmentVisible()Z
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    const-string v1, "onCreateView"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "parent":Landroid/view/View;
    return-object v0
.end method

.method public refreshCall(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 114
    return-void
.end method

.method public resetConferenceListAlpha()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public setConferenceListAlpha(IF)V
    .locals 0
    .param p1, "rowId"    # I
    .param p2, "alpha"    # F

    .prologue
    .line 238
    return-void
.end method

.method public setPrimaryCallElapsedTime(ILjava/lang/String;)V
    .locals 0
    .param p1, "rowId"    # I
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 226
    return-void
.end method

.method public setRowVisible(IZ)V
    .locals 2
    .param p1, "rowId"    # I
    .param p2, "on"    # Z

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 119
    if-eqz p2, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    if-eqz p1, :cond_1

    .line 95
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 96
    .local v0, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/ConferenceManagerPresenter;->init(Landroid/content/Context;Lcom/android/incallui/CallList;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 99
    .end local v0    # "calls":Lcom/android/incallui/CallList;
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupEndButtonForRow(IZ)V
    .locals 0
    .param p1, "rowId"    # I
    .param p2, "canDisconnect"    # Z

    .prologue
    .line 218
    return-void
.end method

.method public setupSeparateButtonForRow(IZ)V
    .locals 0
    .param p1, "rowId"    # I
    .param p2, "canSeparate"    # Z

    .prologue
    .line 222
    return-void
.end method

.method public update(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "parentCanSeparate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/Call;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/Call;>;"
    return-void
.end method
