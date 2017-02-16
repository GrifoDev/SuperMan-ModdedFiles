.class public Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;
.super Lcom/android/incallui/fragment/ConferenceManagerFragment;
.source "ConferenceManagerVideoFragment.java"

# interfaces
.implements Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;


# instance fields
.field private mConferencePanel:Landroid/widget/FrameLayout;

.field private mPhotoViewForAnim:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;-><init>()V

    return-void
.end method

.method private animateForManager()V
    .locals 2

    .prologue
    .line 203
    const-string v0, "animateForManager..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    :cond_0
    return-void
.end method

.method private updateConferencePanelLocation()V
    .locals 6

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v1

    .line 212
    .local v1, "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    iget-object v4, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v4, v4, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->indicator_area:I

    iget-object v5, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v5, v5, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->call_state_area:I

    add-int v3, v4, v5

    .line 213
    .local v3, "topMargin":I
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 214
    iget-object v4, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v4, v4, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->indicator_area:I

    iget-object v5, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v5, v5, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->call_state_area:I

    add-int/2addr v4, v5

    iget-object v5, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v5, v5, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->call_state_area:I

    add-int v3, v4, v5

    .line 217
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-static {v4, v3}, Lcom/android/incallui/util/VideoAnimator;->moveVertical(Landroid/view/View;I)V

    .line 218
    iget-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 219
    iget-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 220
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    sub-int/2addr v4, v3

    iget-object v5, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v5, v5, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 221
    iget-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v4, v3, :cond_0

    .line 223
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int v0, v4, v3

    .line 224
    .local v0, "distance":I
    iget-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    neg-int v5, v0

    invoke-static {v4, v5}, Lcom/android/incallui/util/VideoAnimator;->moveVertical(Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public animateForHide()V
    .locals 3

    .prologue
    .line 190
    const-string v1, "animateForHide..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 196
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/incallui/CallCardUi;->animateForHideManager(Z)V

    .line 200
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_1
    return-void
.end method

.method public final displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "rowId"    # I
    .param p2, "callerName"    # Ljava/lang/String;
    .param p3, "callerNumber"    # Ljava/lang/String;
    .param p4, "callerNumberType"    # Ljava/lang/String;
    .param p5, "lookupKey"    # Ljava/lang/String;
    .param p6, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 90
    return-void
.end method

.method public final displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 7
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
    .line 101
    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v5, v5, p1

    const v6, 0x7f1000b7

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 103
    .local v4, "photoView":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v5, v5, p1

    const v6, 0x7f1000b8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 105
    .local v1, "nameTextView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v5, v5, p1

    const v6, 0x7f1000b9

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 107
    .local v2, "numberTextView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v5, v5, p1

    const v6, 0x7f1000ba

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 110
    .local v3, "numberTypeTextView":Landroid/widget/TextView;
    if-eqz v4, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02cd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 112
    .local v0, "diameter":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201e6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 113
    if-eqz p7, :cond_1

    if-eqz p8, :cond_1

    .line 114
    invoke-static {p7, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    .line 115
    invoke-virtual {v4, p7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    .end local v0    # "diameter":I
    :cond_0
    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 126
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :goto_1
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    return-void

    .line 117
    .restart local v0    # "diameter":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200b4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    .line 118
    invoke-static {p7, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    .line 119
    invoke-virtual {v4, p7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 128
    .end local v0    # "diameter":I
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public isFragmentVisible()Z
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onCoverStateChanged(Z)V
    .locals 2
    .param p1, "isClosed"    # Z

    .prologue
    .line 233
    const-string v0, "onCoverStateChanged() Hide ManageConferencePanel"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->animateForHide()V

    .line 235
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    const v3, 0x7f04002f

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, "parent":Landroid/view/View;
    const v3, 0x7f1000c0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    .line 58
    const v3, 0x7f1000c8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v3

    new-array v3, v3, [Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    .line 62
    const/4 v3, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 64
    .local v2, "viewGroupIdList":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v3

    if-ge v0, v3, :cond_0

    if-eqz v1, :cond_0

    .line 65
    iget-object v4, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget v3, v2, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 70
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->mActionBarElevation:I

    .line 72
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    .line 74
    return-object v1

    .line 62
    :array_0
    .array-data 4
        0x7f1000c3
        0x7f1000c4
        0x7f1000c5
        0x7f1000c6
        0x7f1000c7
    .end array-data
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    .line 80
    invoke-super {p0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->onDestroyView()V

    .line 81
    return-void
.end method

.method public onHmtStateChanged(Z)V
    .locals 0
    .param p1, "isDocked"    # Z

    .prologue
    .line 246
    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0
    .param p1, "isStarted"    # Z

    .prologue
    .line 242
    return-void
.end method

.method public setVisible(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    const/16 v4, 0x8

    .line 161
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 162
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    if-eqz p1, :cond_3

    .line 164
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/incallui/ConferenceManagerPresenter;->init(Landroid/content/Context;Lcom/android/incallui/CallList;)V

    .line 165
    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->updateConferencePanelLocation()V

    .line 166
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    invoke-direct {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->animateForManager()V

    .line 169
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 173
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 174
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 175
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_4

    .line 176
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 178
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->animateForHide()V

    goto :goto_0
.end method

.method public final setupEndButtonForRow(IZ)V
    .locals 3
    .param p1, "rowId"    # I
    .param p2, "canDisconnect"    # Z

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    const v2, 0x7f1000bc

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, "endButton":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 140
    new-instance v1, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment$1;-><init>(Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setupSeparateButtonForRow(IZ)V
    .locals 0
    .param p1, "rowId"    # I
    .param p2, "canSeparate"    # Z

    .prologue
    .line 157
    return-void
.end method
