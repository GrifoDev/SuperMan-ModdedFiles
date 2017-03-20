.class public Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;
.super Lcom/android/incallui/fragment/VideoCallCardFragment;
.source "VideoCallCardQCIFFragment.java"

# interfaces
.implements Lcom/android/incallui/CallCardUi;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallCardQCIFFragment"


# instance fields
.field protected mRecInfoFarEnd:Landroid/view/ViewGroup;

.field protected mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    .line 54
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected inflateCdnipLayout()V
    .locals 3

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10033a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 355
    .local v0, "cdnipStub":Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 357
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10023e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCdnipNumber:Landroid/widget/TextView;

    .line 358
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100392

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCdnipNumberLayout:Landroid/view/View;

    .line 360
    :cond_0
    return-void
.end method

.method protected inflateCnapLayout()V
    .locals 3

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100339

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 346
    .local v0, "cnapStub":Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 348
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100394

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCnapName:Landroid/widget/TextView;

    .line 349
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100393

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCnapNameLayout:Landroid/view/View;

    .line 351
    :cond_0
    return-void
.end method

.method public isInMultiWindowMode()Z
    .locals 3

    .prologue
    .line 283
    const/4 v1, 0x0

    .line 284
    .local v1, "isInMultiWindowMode":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 285
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v1

    .line 288
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    const/4 v1, 0x0

    .line 291
    :cond_1
    return v1
.end method

.method public isPrimaryVisible()Z
    .locals 2

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "visible":Z
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecordingTimeVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 217
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 219
    const/4 v0, 0x1

    .line 224
    :cond_0
    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 60
    const v0, 0x7f04011d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->onDestroyView()V

    .line 117
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIncomingHideMeLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIncomingHideMeLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 65
    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 67
    const v1, 0x7f100246

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    .line 69
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->updateCallCardIndicatorArea()V

    .line 70
    const v1, 0x7f100198

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 71
    const v1, 0x7f1000e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryName:Landroid/widget/TextView;

    .line 72
    const v1, 0x7f100334

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    .line 73
    const v1, 0x7f10010e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mNumberLabel:Landroid/widget/TextView;

    .line 74
    const v1, 0x7f1001da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPhotoContainer:Landroid/view/View;

    .line 75
    const v1, 0x7f1000a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPhoto:Landroid/widget/ImageView;

    .line 76
    const v1, 0x7f100191

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallStateIcon:Landroid/widget/ImageView;

    .line 77
    const v1, 0x7f100193

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 78
    const v1, 0x7f100197

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallNumberAndLabel:Landroid/view/View;

    .line 80
    const v1, 0x7f100199

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mElapsedTime:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f1000a2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    .line 82
    const v1, 0x7f10018c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 83
    const v1, 0x7f1001d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallStateContainer:Landroid/view/View;

    .line 84
    const v1, 0x7f100248

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallInfoContainer:Landroid/view/View;

    .line 86
    const v1, 0x7f100333

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallBannerContainer:Landroid/view/View;

    .line 87
    const v1, 0x7f100337

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mMoreButtonContainer:Landroid/view/View;

    .line 89
    const v1, 0x7f100335

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    .line 90
    const v1, 0x7f100336

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f100391

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    .line 93
    const v1, 0x7f100390

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIncomingHideMeLayer:Landroid/view/View;

    .line 94
    const v1, 0x7f100338

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mNameContainer:Landroid/view/View;

    .line 96
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIncomingHideMeLayer:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 99
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 102
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 103
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 105
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 107
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isFarEndRecord()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    invoke-virtual {p0, v3, v6}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->showRecordingInfo(ZZ)V

    .line 111
    :cond_2
    return-void
.end method

.method public setCallCardVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 131
    const-string v0, "VideoCallCardQCIFFragment"

    const-string v1, "Nothing to do for QCIF video call"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 8
    .param p1, "visible"    # Z

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 136
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 137
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOldCallState:I

    if-eq v3, v6, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 139
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallStateContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mMoreButtonContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, "callStateContainerheight":I
    const/4 v2, 0x0

    .line 144
    .local v2, "moreButtonContainerheight":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 145
    if-eqz p1, :cond_6

    .line 146
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->isRecordingTimeVisible()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v3, :cond_4

    .line 148
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 150
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0581

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 151
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a039c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 164
    :cond_5
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 165
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallStateContainer:Landroid/view/View;

    invoke-static {v3, v1, p1}, Lcom/android/incallui/util/SecAnimationUtils$Change;->changeHeight(Landroid/view/View;IZ)V

    .line 169
    :goto_2
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mMoreButtonContainer:Landroid/view/View;

    invoke-static {v3, v2, p1}, Lcom/android/incallui/util/SecAnimationUtils$Change;->changeHeight(Landroid/view/View;IZ)V

    goto :goto_0

    .line 153
    :cond_6
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v3, :cond_7

    .line 154
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 156
    :cond_7
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 158
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a050d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    goto :goto_1

    .line 160
    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0580

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    goto :goto_1

    .line 167
    :cond_9
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallStateContainer:Landroid/view/View;

    const/16 v4, 0xfa

    invoke-static {v3, v1, v4}, Lcom/android/incallui/util/SecAnimationUtils$Change;->changeOnlyHeight(Landroid/view/View;II)V

    goto :goto_2
.end method

.method public setPrimaryVisibleByDialpad(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 229
    return-void
.end method

.method public setRecordTimeUpdate(J)V
    .locals 5
    .param p1, "recDuration"    # J

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_0
    return-void
.end method

.method public showRecordingInfo(ZZ)V
    .locals 5
    .param p1, "near"    # Z
    .param p2, "show"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 174
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 175
    .local v0, "call":Lcom/android/incallui/Call;
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 176
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 177
    if-eqz p2, :cond_3

    .line 178
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearComposingText()V

    .line 193
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_1
    return-void

    .line 176
    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    .line 181
    :cond_3
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 183
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 185
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected updateBgColorForCallState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const v3, 0x7f0f0182

    const v2, 0x7f0f0183

    .line 242
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateBgColorForCallState(I)V

    .line 243
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    .line 244
    .local v0, "isShowMe":Z
    sparse-switch p1, :sswitch_data_0

    .line 264
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryBannerColor:I

    .line 267
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryBannerColor:I

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryBannerColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 272
    :cond_1
    return-void

    .line 246
    :sswitch_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryBannerColor:I

    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryBannerColor:I

    goto :goto_0

    .line 253
    :sswitch_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryBannerColor:I

    goto :goto_0

    .line 256
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryBannerColor:I

    goto :goto_0

    .line 261
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryBannerColor:I

    goto :goto_0

    .line 244
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x6 -> :sswitch_2
        0xd -> :sswitch_2
    .end sparse-switch
.end method

.method protected updateHideMeLayout(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIncomingHideMeLayer:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIncomingHideMeLayer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 299
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 300
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 303
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mIncomingHideMeLayer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected updateLayoutForCallState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const v2, 0x7f0a0398

    const/4 v3, 0x3

    .line 308
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateLayoutForCallState(I)V

    .line 310
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallInfoContainer:Landroid/view/View;

    if-nez v1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 314
    .local v0, "changeHeight":I
    packed-switch p1, :pswitch_data_0

    .line 328
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 332
    :goto_1
    if-eq p1, v3, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    :cond_2
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOldCallState:I

    if-eq v1, p1, :cond_0

    .line 336
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOldCallState:I

    if-eq v1, v3, :cond_6

    if-ne p1, v3, :cond_6

    .line 337
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallInfoContainer:Landroid/view/View;

    const/16 v2, 0x1f4

    invoke-static {v1, v0, v2}, Lcom/android/incallui/util/SecAnimationUtils$Change;->changeOnlyHeight(Landroid/view/View;II)V

    goto :goto_0

    .line 316
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->isCnapExist()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->isCdnipExist()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 317
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_1

    .line 318
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->isCnapExist()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->isCdnipExist()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 319
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_1

    .line 321
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 323
    goto :goto_1

    .line 325
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0577

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 326
    goto :goto_1

    .line 339
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallInfoContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/incallui/util/SecAnimationUtils$Change;->changeOnlyHeight(Landroid/view/View;II)V

    goto :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected updatePrimaryVisibleForCallState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 207
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOldCallState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mOldCallState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 211
    :cond_1
    const/16 v0, 0x9

    if-eq v0, p1, :cond_2

    const/16 v0, 0xa

    if-ne v0, p1, :cond_3

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 214
    :cond_3
    return-void
.end method

.method protected updateTextColor(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const v3, 0x7f0f018c

    const v2, 0x7f0f012d

    .line 276
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    return-void
.end method
