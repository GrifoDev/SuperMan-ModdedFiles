.class public Lcom/android/incallui/fragment/VideoCallCardBaseFragment;
.super Lcom/android/incallui/fragment/CallCardFragment;
.source "VideoCallCardBaseFragment.java"

# interfaces
.implements Lcom/android/incallui/CallCardUi;
.implements Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallCardBaseFragment"


# instance fields
.field protected mCdnipNumber:Landroid/widget/TextView;

.field protected mCdnipNumberLayout:Landroid/view/View;

.field protected mCityId:Landroid/widget/TextView;

.field protected mCnapName:Landroid/widget/TextView;

.field protected mCnapNameLayout:Landroid/view/View;

.field protected mCurrentPrimaryCallName:Ljava/lang/String;

.field protected mCurrentPrimaryCallNumber:Ljava/lang/String;

.field protected mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

.field protected mCurrentSecondaryCallName:Ljava/lang/String;

.field private mEndCallButtonStub:Landroid/view/ViewStub;

.field protected mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

.field protected mIsMergeProcessing:Z

.field protected mIsSwapProcessing:Z

.field private mKTBusiness:Landroid/widget/ImageView;

.field private mKTPersonal:Landroid/widget/ImageView;

.field private mKTtwophoneStub:Landroid/view/ViewStub;

.field protected mManageStub:Landroid/view/ViewStub;

.field protected mMergeButton:Landroid/widget/Button;

.field mPrimaryBannerColor:I

.field protected mProfileIconUpper:Landroid/widget/ImageView;

.field protected mSecondaryCallInfoContainer:Landroid/view/View;

.field protected mSecondaryCallName:Landroid/widget/TextView;

.field protected mSecondaryDiver:Landroid/view/View;

.field protected mSecondaryIcon:Landroid/widget/ImageView;

.field protected mSecondaryPanel:Landroid/view/View;

.field protected mSwapButton:Landroid/widget/Button;

.field protected mTextColorDefault:I

.field protected mTextColorOnHold:I

.field protected mUserType:J

.field protected mVTManageButton:Landroid/widget/Button;

.field protected mVideoBannerContainer:Landroid/view/View;

.field protected mVideoBannerDivider:Landroid/view/View;

.field protected mVideoBannerView:Landroid/view/View;

.field protected mVideoBannerViewStub:Landroid/view/ViewStub;

.field protected mVideoTypeIconImage:Landroid/widget/ImageView;

.field protected mVideoTypeIconLayout:Landroid/view/View;

.field protected mVideoTypeIconStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;-><init>()V

    .line 122
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoBannerViewStub:Landroid/view/ViewStub;

    .line 123
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoBannerView:Landroid/view/View;

    .line 124
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoBannerContainer:Landroid/view/View;

    .line 125
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoBannerDivider:Landroid/view/View;

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mUserType:J

    .line 140
    iput v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryBannerColor:I

    .line 145
    iput-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mIsMergeProcessing:Z

    return-void
.end method

.method private animateForManager()V
    .locals 0

    .prologue
    .line 1724
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->showConferenceCallManager()V

    .line 1725
    return-void
.end method

.method private checkAndDisableMergeProcessing()V
    .locals 4

    .prologue
    .line 1869
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1870
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1871
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v2

    .line 1872
    .local v2, "isMultipartyCall":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v1

    .line 1873
    .local v1, "hasConferenceCall":Z
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    .line 1874
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1875
    iget-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mIsMergeProcessing:Z

    if-eqz v3, :cond_0

    .line 1876
    const-string v3, "checkForMergeState - merged"

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    .line 1877
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setMergeProgressing(Z)V

    .line 1878
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    .line 1883
    .end local v1    # "hasConferenceCall":Z
    .end local v2    # "isMultipartyCall":Z
    :cond_0
    return-void
.end method

.method private enableSwapButton(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1005
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_PANNEL:Z

    if-eqz v0, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 1010
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1011
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 1012
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1011
    :cond_2
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_1
.end method

.method private getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "state"    # I
    .param p2, "videoState"    # I
    .param p3, "sessionModificationState"    # I
    .param p4, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "isGatewayCall"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1291
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1292
    :cond_0
    const-string v4, "getCallStateLabelFromState getView() or context is empty: "

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1293
    const/4 v0, 0x0

    .line 1377
    :cond_1
    :goto_0
    :pswitch_0
    return-object v0

    .line 1296
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1297
    .local v1, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 1299
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    if-eqz p5, :cond_3

    move v3, v4

    .line 1300
    .local v3, "isSpecialCall":Z
    :goto_1
    if-eqz v3, :cond_4

    if-nez p6, :cond_4

    move v2, v4

    .line 1302
    .local v2, "isAccount":Z
    :goto_2
    packed-switch p1, :pswitch_data_0

    .line 1375
    :pswitch_1
    const-string v4, "VideoCallCardBaseFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCallStateWidgets: unexpected call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "isAccount":Z
    .end local v3    # "isSpecialCall":Z
    :cond_3
    move v3, v5

    .line 1299
    goto :goto_1

    .restart local v3    # "isSpecialCall":Z
    :cond_4
    move v2, v5

    .line 1300
    goto :goto_2

    .line 1323
    .restart local v2    # "isAccount":Z
    :pswitch_2
    if-eqz v3, :cond_5

    .line 1324
    const v6, 0x7f090017

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1326
    :cond_5
    sget v4, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1327
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1328
    const v4, 0x7f0900f5

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1330
    :cond_6
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    .line 1333
    goto :goto_0

    .line 1335
    :pswitch_3
    const v4, 0x7f090022

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1336
    goto :goto_0

    .line 1339
    :pswitch_4
    if-eqz v2, :cond_7

    .line 1340
    const v6, 0x7f090038

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1344
    :cond_7
    sget v4, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1345
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1346
    const v4, 0x7f09013b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1348
    :cond_8
    const v4, 0x7f09013c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1350
    :cond_9
    const v4, 0x7f09013d

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1353
    goto/16 :goto_0

    .line 1364
    :pswitch_5
    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1365
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isCSVideoCall()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "NO_ANSWER"

    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1366
    const v4, 0x7f0901ec

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1367
    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1368
    const v4, 0x7f090018

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1372
    :pswitch_6
    const v4, 0x7f09001b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1373
    goto/16 :goto_0

    .line 1302
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "canManageConference"    # Z

    .prologue
    .line 1704
    const-string v1, "VideoCallCardBaseFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canManageConferencePhoto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    if-eqz p1, :cond_0

    const v0, 0x7f020128

    .line 1706
    .local v0, "resId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1705
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x7f02012c

    goto :goto_0
.end method

.method private getConferenceString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1699
    const v0, 0x7f09001b

    .line 1700
    .local v0, "resId":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getStringForElapsedTime(III)Ljava/lang/String;
    .locals 11
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1838
    new-array v0, v9, [Ljava/lang/String;

    const-string v9, "%d"

    aput-object v9, v0, v10

    .line 1839
    .local v0, "SRC_TAGS":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1842
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v9, 0x1

    :try_start_0
    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 1843
    .local v7, "strMinutes":[Ljava/lang/String;
    const v9, 0x7f0902e4

    .line 1844
    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1843
    invoke-static {v9, v0, v7}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1846
    .local v2, "charMinutes":Ljava/lang/CharSequence;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1847
    .local v8, "strSeconds":[Ljava/lang/String;
    const v9, 0x7f0902e6

    .line 1848
    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1847
    invoke-static {v9, v0, v8}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1850
    .local v3, "charSeconds":Ljava/lang/CharSequence;
    if-lez p1, :cond_0

    .line 1851
    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    .line 1852
    .local v6, "strHours":[Ljava/lang/String;
    const v9, 0x7f0902e3

    .line 1853
    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1852
    invoke-static {v9, v0, v6}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1854
    .local v1, "charHours":Ljava/lang/CharSequence;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1857
    .end local v1    # "charHours":Ljava/lang/CharSequence;
    .end local v6    # "strHours":[Ljava/lang/String;
    :cond_0
    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1858
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1859
    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1860
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1865
    .end local v2    # "charMinutes":Ljava/lang/CharSequence;
    .end local v3    # "charSeconds":Ljava/lang/CharSequence;
    .end local v7    # "strMinutes":[Ljava/lang/String;
    .end local v8    # "strSeconds":[Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1861
    :catch_0
    move-exception v4

    .line 1862
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "VideoCallCardBaseFragment"

    const-string v10, " getStringForElapsedTime IndexOutOfBoundsException "

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private isEnabledEndCallContactButton()Z
    .locals 2

    .prologue
    .line 510
    const/4 v0, 0x1

    .line 511
    .local v0, "enabled":Z
    const-string v1, "support_twophone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 512
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isTwoPhoneUser(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isTwoPhoneUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 514
    :cond_1
    const/4 v0, 0x0

    .line 517
    :cond_2
    return v0
.end method

.method private isVideoState()Z
    .locals 5

    .prologue
    .line 1820
    const/4 v1, 0x0

    .line 1821
    .local v1, "hasVideoState":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1822
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1823
    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    .line 1825
    :cond_0
    return v1
.end method

.method private menuButtonClicked()V
    .locals 3

    .prologue
    .line 1235
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-nez v1, :cond_0

    .line 1248
    :goto_0
    return-void

    .line 1236
    :cond_0
    const-string v1, "VideoCallCardBaseFragment"

    const-string v2, "menuButtonClicked"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 1238
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v1, :cond_2

    .line 1239
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v1}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1240
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    goto :goto_0

    .line 1242
    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->showInCallMenu()V

    .line 1243
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_more()V

    goto :goto_0

    .line 1246
    :cond_2
    const-string v1, "VideoCallCardBaseFragment"

    const-string v2, "activity or mInCallMenu is null"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1275
    if-nez p1, :cond_0

    .line 1279
    :goto_0
    return-void

    .line 1278
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setPrimaryImageForVideo(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    .line 1282
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 1283
    return-void
.end method

.method private showVideoBanner(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1433
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoBannerDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1434
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoBannerDivider:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1436
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoBannerContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1437
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoBannerContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1439
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1434
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1437
    goto :goto_1
.end method

.method private updateCallCardVTConference(Z)V
    .locals 3
    .param p1, "isShowManager"    # Z

    .prologue
    .line 1728
    const-string v0, "VideoCallCardBaseFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallCardVTConference : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1738
    :cond_0
    :goto_0
    return-void

    .line 1730
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVTManageButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1731
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mManageStub:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1732
    if-eqz p1, :cond_2

    .line 1733
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVTManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090260

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1735
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVTManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090262

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateCallStateLabelForCallState(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "callStateLabel"    # Ljava/lang/CharSequence;
    .param p3, "connectionIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xa

    const/16 v5, 0x9

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1763
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mOldCallState:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 1764
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1817
    :goto_0
    return-void

    .line 1768
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->isVideoState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1769
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1770
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallElapsedTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mLastestCallTime:Ljava/lang/String;

    .line 1771
    const-string v0, "VideoCallCardBaseFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastestCallTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mLastestCallTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    :cond_1
    iput-object p2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    .line 1776
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->manageCallEndTimeBlink(I)V

    .line 1777
    if-eq p1, v6, :cond_2

    .line 1778
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->removeMessageForBlinkTime()V

    .line 1780
    :cond_2
    if-ne p1, v5, :cond_3

    .line 1781
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mOldCallState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 1782
    iput-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mLastestCallTime:Ljava/lang/String;

    .line 1787
    :cond_3
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1788
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1789
    const-string v0, "VideoCallCardBaseFragment"

    const-string v1, "not update stateLabel for blink call time"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    :goto_2
    if-eqz p3, :cond_4

    const-string v0, "feature_multisim"

    .line 1796
    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1797
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1784
    :cond_5
    iget-object p2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mLastestCallTime:Ljava/lang/String;

    goto :goto_1

    .line 1791
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1792
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1793
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1799
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1802
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1803
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1806
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eq p1, v5, :cond_9

    if-ne p1, v6, :cond_a

    .line 1807
    :cond_9
    const-string v0, "VideoCallCardBaseFragment"

    const-string v1, "not update stateLabel for blink call time"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    :goto_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1815
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1809
    :cond_a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1810
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private updatePhotoViewForCallState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/16 v3, 0x8

    .line 1553
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mOldCallState:I

    if-eq v2, v3, :cond_0

    if-eq p1, v3, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/16 v2, 0x9

    if-eq p1, v2, :cond_0

    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    .line 1555
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1556
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 1557
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 1558
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_1

    .line 1559
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 1563
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_1
    return-void
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 0

    .prologue
    .line 950
    return-void
.end method

.method public animateForHideManager(Z)V
    .locals 1
    .param p1, "showPhoto"    # Z

    .prologue
    .line 964
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateCallCardVTConference(Z)V

    .line 965
    return-void
.end method

.method public animateForMoveDialpad(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    .prologue
    .line 970
    return-void
.end method

.method public animateForNewOutgoingCall()V
    .locals 0

    .prologue
    .line 563
    return-void
.end method

.method public animateForNewOutgoingCall(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 924
    return-void
.end method

.method public canUpdateUI(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 1886
    if-eqz p1, :cond_1

    .line 1887
    invoke-virtual {p1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1888
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 1889
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    .line 1890
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1891
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1893
    :cond_0
    const/4 v0, 0x1

    .line 1901
    :cond_1
    :goto_0
    return v0

    .line 1895
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1896
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1898
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->showSecondaryContainer(Z)V

    goto :goto_0
.end method

.method public changeCallCardForAM(I)V
    .locals 0
    .param p1, "callState"    # I

    .prologue
    .line 1035
    return-void
.end method

.method public changeViewForMoveDialpad(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    .prologue
    .line 975
    return-void
.end method

.method public clearAMView()V
    .locals 0

    .prologue
    .line 1045
    return-void
.end method

.method public createPresenter()Lcom/android/incallui/CallCardPresenter;
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/android/incallui/CallCardPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallCardPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->createPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected dismissInCallMenu()V
    .locals 1

    .prologue
    .line 1251
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->dismissInCallMenu()V

    .line 1253
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1254
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->dismissDialogs()V

    .line 1255
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 939
    const/4 v0, 0x0

    return v0
.end method

.method public enableMenu(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 792
    return-void
.end method

.method protected getConferenceCallManagerShowingState()Z
    .locals 1

    .prologue
    .line 1720
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v0

    return v0
.end method

.method public getCurrentSecondaryCallName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    return-object v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 797
    new-instance v0, Lcom/android/incallui/InVideoCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InVideoCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 804
    new-instance v0, Lcom/android/incallui/InVideoCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InVideoCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    .prologue
    .line 811
    const/high16 v0, 0x7f120000

    return v0
.end method

.method public getPrimaryPhotoView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSpaceBesideCallCard()F
    .locals 1

    .prologue
    .line 903
    const/4 v0, 0x0

    return v0
.end method

.method public getUi()Lcom/android/incallui/CallCardUi;
    .locals 0

    .prologue
    .line 207
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    return-object v0
.end method

.method protected hideConferenceCallManager()V
    .locals 2

    .prologue
    .line 1715
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1716
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager(Z)V

    .line 1717
    :cond_0
    return-void
.end method

.method protected inflateCdnipLayout()V
    .locals 0

    .prologue
    .line 1384
    return-void
.end method

.method protected inflateCnapLayout()V
    .locals 0

    .prologue
    .line 1381
    return-void
.end method

.method protected inflateDowngradeButtonLayout()V
    .locals 0

    .prologue
    .line 1390
    return-void
.end method

.method protected inflateManageLayout()V
    .locals 0

    .prologue
    .line 1387
    return-void
.end method

.method protected inflateVideoTypeIconLayout()V
    .locals 2

    .prologue
    .line 1393
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10033c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconLayout:Landroid/view/View;

    .line 1395
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 1396
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10033d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconStub:Landroid/view/ViewStub;

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 1400
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1401
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1003e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconImage:Landroid/widget/ImageView;

    .line 1403
    :cond_1
    return-void
.end method

.method public isActivityCreated()Z
    .locals 1

    .prologue
    .line 908
    const/4 v0, 0x0

    return v0
.end method

.method public isCallSubjectVisible()Z
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public isInExceptionArea(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1024
    const/4 v0, 0x0

    return v0
.end method

.method public isManageConferenceVisible()Z
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public isMenuShowing()Z
    .locals 1

    .prologue
    .line 1029
    const/4 v0, 0x0

    return v0
.end method

.method public isPrimaryVisible()Z
    .locals 1

    .prologue
    .line 873
    const/4 v0, 0x0

    return v0
.end method

.method public isSwapProcessing()Z
    .locals 1

    .prologue
    .line 1019
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mIsSwapProcessing:Z

    return v0
.end method

.method public manageAnswerMemoRecord(Z)V
    .locals 0
    .param p1, "isActiveCall"    # Z

    .prologue
    .line 1055
    return-void
.end method

.method public manageMultiTouchStub(Z)V
    .locals 0
    .param p1, "isIncoming"    # Z

    .prologue
    .line 1070
    return-void
.end method

.method public manageRecordInfo(ZZ)V
    .locals 0
    .param p1, "showRecordInfo"    # Z
    .param p2, "isPaused"    # Z

    .prologue
    .line 914
    return-void
.end method

.method protected needToPhoneNumberLocator()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1259
    const/4 v1, 0x0

    .line 1260
    .local v1, "isNeedToPNL":Z
    const-string v7, "phone_number_locator"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1261
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1262
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 1263
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    .line 1264
    .local v4, "state":I
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isPhoneNumberLocatorOn()Z

    move-result v2

    .line 1265
    .local v2, "isPnlOn":Z
    const/4 v7, 0x4

    if-eq v7, v4, :cond_0

    const/4 v7, 0x5

    if-eq v7, v4, :cond_0

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v3, v5

    .line 1266
    .local v3, "needToShow":Z
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneNumberLocator()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneNumberLocator()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    move v3, v5

    .line 1267
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "needToPhoneNumberLocator, needToShow="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isPnlOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1268
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    move v1, v5

    .line 1271
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v2    # "isPnlOn":Z
    .end local v3    # "needToShow":Z
    .end local v4    # "state":I
    :cond_1
    :goto_2
    return v1

    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v2    # "isPnlOn":Z
    .restart local v4    # "state":I
    :cond_2
    move v3, v6

    .line 1265
    goto :goto_0

    .restart local v3    # "needToShow":Z
    :cond_3
    move v3, v6

    .line 1266
    goto :goto_1

    :cond_4
    move v1, v6

    .line 1268
    goto :goto_2
.end method

.method public needToShowMenu()Z
    .locals 1

    .prologue
    .line 816
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->needToShowMenu(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public needToShowVolumeButton()Z
    .locals 1

    .prologue
    .line 821
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f090094

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1124
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 1125
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1126
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 1127
    .local v2, "id":I
    const-string v3, "VideoCallCardBaseFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick(View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    sparse-switch v2, :sswitch_data_0

    .line 1213
    const-string v3, "VideoCallCardBaseFragment"

    const-string v4, "onClick: call super onClick"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onClick(Landroid/view/View;)V

    .line 1217
    :cond_0
    :goto_0
    return-void

    .line 1130
    :sswitch_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->menuButtonClicked()V

    goto :goto_0

    .line 1133
    :sswitch_1
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09029d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1134
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->endCall_contactAddTo()V

    .line 1136
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1137
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-static {v3, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1139
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->viewContactClicked()V

    goto :goto_0

    .line 1142
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->endCall_contactView()V

    .line 1144
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1145
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-static {v3, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1147
    :cond_3
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->addToContactClicked()V

    goto :goto_0

    .line 1152
    :sswitch_2
    if-eqz v0, :cond_0

    .line 1153
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "att_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1154
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v3

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    goto :goto_0

    .line 1156
    :cond_4
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/incallui/UiAdapter;->updateModifyRequestButtons(Lcom/android/incallui/Call;)V

    .line 1157
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    goto :goto_0

    .line 1163
    :sswitch_3
    const-string v3, "SWAP Clicked"

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    .line 1164
    if-eqz v0, :cond_0

    .line 1165
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setSwapProgressing()V

    .line 1166
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    .line 1167
    invoke-direct {p0, v9}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->enableSwapButton(Z)V

    goto/16 :goto_0

    .line 1171
    :sswitch_4
    const-string v3, "Merge Clicked"

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    .line 1172
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1173
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->hideConferenceCallManager()V

    .line 1176
    :cond_5
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1177
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoOneway()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1178
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->showMergeNotAllowDialog()V

    goto/16 :goto_0

    .line 1182
    :cond_6
    if-eqz v0, :cond_7

    .line 1183
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setMergeProgressing(Z)V

    .line 1186
    :cond_7
    const-string v3, "canada_bmc_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1187
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    const v4, 0x7f0900db

    invoke-static {v3, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1190
    :cond_8
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1191
    invoke-virtual {p0, v8}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->showSecondaryContainer(Z)V

    .line 1192
    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setMergeProgressing(Z)V

    goto/16 :goto_0

    .line 1195
    :sswitch_5
    const-string v3, "Manage Clicked"

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getConferenceCallManagerShowingState()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1197
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->hideConferenceCallManager()V

    .line 1198
    invoke-direct {p0, v8}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateCallCardVTConference(Z)V

    .line 1199
    invoke-static {v9}, Lcom/android/incallui/util/VideoCallAppLogging;->multipartyCall_manageConference(Z)V

    goto/16 :goto_0

    .line 1202
    :cond_9
    invoke-static {v8}, Lcom/android/incallui/util/VideoCallAppLogging;->multipartyCall_manageConference(Z)V

    .line 1203
    invoke-direct {p0, v9}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateCallCardVTConference(Z)V

    .line 1204
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->animateForManager()V

    goto/16 :goto_0

    .line 1208
    :sswitch_6
    const-string v3, "Downgrade Clicked"

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 1209
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCall_voiceCallDowngrade()V

    .line 1210
    invoke-static {v8}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto/16 :goto_0

    .line 1128
    :sswitch_data_0
    .sparse-switch
        0x7f100099 -> :sswitch_3
        0x7f10009f -> :sswitch_4
        0x7f100278 -> :sswitch_6
        0x7f10028e -> :sswitch_0
        0x7f1002b1 -> :sswitch_5
        0x7f1002f2 -> :sswitch_3
        0x7f100325 -> :sswitch_1
        0x7f10041a -> :sswitch_2
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 185
    const-string v0, "onDestroy..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroy()V

    .line 187
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroyView()V

    .line 192
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoSessionEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;)V

    .line 193
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoCallUiEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;)V

    .line 194
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->dismissInCallMenu()V

    .line 198
    return-void
.end method

.method public onDialpadVisiblityChange()V
    .locals 0

    .prologue
    .line 935
    return-void
.end method

.method public onDialpadVisiblityChange(Z)V
    .locals 1
    .param p1, "isShown"    # Z

    .prologue
    .line 928
    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mIsDialpadShowing:Z

    .line 929
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mIsDialpadShowing:Z

    if-eq v0, p1, :cond_0

    .line 930
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onDialpadVisiblityChange()V

    .line 932
    :cond_0
    return-void
.end method

.method public onVideoCallUiEvent(I)V
    .locals 4
    .param p1, "event"    # I

    .prologue
    .line 1911
    packed-switch p1, :pswitch_data_0

    .line 1924
    :cond_0
    :goto_0
    return-void

    .line 1914
    :pswitch_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1915
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1916
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1917
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateBgColorForCallState(I)V

    goto :goto_0

    .line 1911
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1906
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/CallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 154
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoSessionEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;)V

    .line 155
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoCallUiEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mTextColorDefault:I

    .line 158
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mTextColorOnHold:I

    .line 160
    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const v0, 0x7f10024a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTtwophoneStub:Landroid/view/ViewStub;

    .line 162
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTtwophoneStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTtwophoneStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 164
    const v0, 0x7f100130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTBusiness:Landroid/widget/ImageView;

    .line 165
    const v0, 0x7f100131

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTPersonal:Landroid/widget/ImageView;

    .line 169
    :cond_0
    const v0, 0x7f10019b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIcon:Landroid/widget/ImageView;

    .line 170
    const v0, 0x7f10033f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIconUpper:Landroid/widget/ImageView;

    .line 172
    const v0, 0x7f10033b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallButtonStub:Landroid/view/ViewStub;

    .line 173
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 175
    const v0, 0x7f100325

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    .line 176
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    .line 181
    :cond_1
    return-void
.end method

.method public onVolumeKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1114
    const/4 v0, 0x0

    return v0
.end method

.method public resetAnswerCallAnimator()V
    .locals 0

    .prologue
    .line 945
    return-void
.end method

.method public resetRevealAnimator()V
    .locals 0

    .prologue
    .line 919
    return-void
.end method

.method public sendAccessibilityAnnouncement()V
    .locals 0

    .prologue
    .line 568
    return-void
.end method

.method public setAMView(Z)V
    .locals 0
    .param p1, "isRecording"    # Z

    .prologue
    .line 1040
    return-void
.end method

.method public setCallCardVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setVisible(Z)V

    .line 241
    return-void
.end method

.method public setCallCharge(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 842
    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 14
    .param p1, "state"    # I
    .param p2, "videoState"    # I
    .param p3, "sessionModificationState"    # I
    .param p4, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p5, "connectionLabel"    # Ljava/lang/String;
    .param p6, "connectionIcon"    # Landroid/graphics/drawable/Drawable;
    .param p7, "gatewayNumber"    # Ljava/lang/String;
    .param p8, "isWifi"    # Z
    .param p9, "isConference"    # Z
    .param p10, "isWorkCall"    # Z

    .prologue
    .line 276
    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p10

    invoke-direct/range {v2 .. v8}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v10

    .line 278
    .local v10, "callStateLabel":Ljava/lang/CharSequence;
    const-string v2, "VideoCallCardBaseFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] DisconnectCause["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Landroid/telecom/DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] gateway["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 280
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateLayoutForCallState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mOldCallState:I

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    const-string v2, " Nothing to do if the labels are the same"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 363
    :cond_0
    :goto_1
    return-void

    .line 281
    :catch_0
    move-exception v11

    .line 282
    .local v11, "e":Ljava/lang/IllegalStateException;
    const-string v2, "VideoCallCardBaseFragment"

    invoke-virtual {v11}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    .end local v11    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 292
    const-string v2, "skip setCallState : not update in idle state"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 293
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 301
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v13

    .line 302
    .local v13, "incomingCall":Lcom/android/incallui/Call;
    if-eqz v13, :cond_3

    invoke-static {v13}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 303
    const-string v2, "skip setCallState : not update in incoming voice call"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 304
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setVisible(Z)V

    goto :goto_1

    .line 308
    :cond_3
    const-string v2, "ims_call_message"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 309
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v9

    .line 310
    .local v9, "call":Lcom/android/incallui/Call;
    if-eqz v9, :cond_5

    .line 311
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v12

    .line 312
    .local v12, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v12, :cond_5

    iget-object v2, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 313
    invoke-virtual {v9}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_e

    .line 314
    :cond_4
    iget-object v2, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setCnapName(Ljava/lang/String;)V

    .line 322
    .end local v9    # "call":Lcom/android/incallui/Call;
    .end local v12    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_5
    :goto_2
    const-string v2, "cnap_supplementary_service"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateCnapVisibleForCallState(I)V

    .line 326
    :cond_6
    const-string v2, "cdnip_supplementary_service"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateCdnipVisibleForCallState(I)V

    .line 330
    :cond_7
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mOldCallState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    const/16 v2, 0xa

    if-ne p1, v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    .line 331
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    .line 332
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    :cond_8
    iget-wide v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mUserType:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    .line 336
    const/4 v2, 0x3

    if-eq p1, v2, :cond_9

    const/16 v2, 0x8

    if-ne p1, v2, :cond_f

    .line 337
    :cond_9
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 338
    :cond_a
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIconUpper:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIconUpper:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    :cond_b
    :goto_3
    move-object/from16 v0, p6

    invoke-direct {p0, p1, v10, v0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateCallStateLabelForCallState(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 346
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateBgColorForCallState(I)V

    .line 347
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updatePhotoViewForCallState(I)V

    .line 348
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updatePrimaryVisibleForCallState(I)V

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateTextColor(I)V

    .line 352
    const-string v2, "support_twophone"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateKTTwoPhoneLayout(I)V

    .line 356
    :cond_c
    const/16 v2, 0x9

    if-eq p1, v2, :cond_d

    const/16 v2, 0xa

    if-ne p1, v2, :cond_11

    .line 357
    :cond_d
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->dismissInCallMenu()V

    .line 358
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->showEndcallContactBtn(Z)V

    .line 362
    :goto_4
    iput p1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mOldCallState:I

    goto/16 :goto_1

    .line 315
    .restart local v9    # "call":Lcom/android/incallui/Call;
    .restart local v12    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_e
    iget-object v2, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 316
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setCnapName(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 340
    .end local v9    # "call":Lcom/android/incallui/Call;
    .end local v12    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_f
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIconUpper:Landroid/widget/ImageView;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIconUpper:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    :cond_10
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 360
    :cond_11
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->showEndcallContactBtn(Z)V

    goto :goto_4
.end method

.method public setCallSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "callSubject"    # Ljava/lang/String;

    .prologue
    .line 528
    return-void
.end method

.method public setCallbackNumber(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isEmergencyCalls"    # Z

    .prologue
    .line 523
    return-void
.end method

.method protected setCdnipNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "numer"    # Ljava/lang/String;

    .prologue
    .line 1454
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1455
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->inflateCdnipLayout()V

    .line 1456
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1464
    :cond_0
    :goto_0
    return-void

    .line 1460
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCdnipNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setCnapName(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1420
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1421
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->inflateCnapLayout()V

    .line 1422
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCnapName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1430
    :cond_0
    :goto_0
    return-void

    .line 1426
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1427
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCnapName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setContactContextContent(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "listAdapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 231
    return-void
.end method

.method public setContactContextTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "listHeaderView"    # Landroid/view/View;

    .prologue
    .line 226
    return-void
.end method

.method public setEndCallButtonEnabled(ZZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 460
    return-void
.end method

.method public setMergeProgressing(Z)V
    .locals 1
    .param p1, "isProgressing"    # Z

    .prologue
    .line 1406
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mIsMergeProcessing:Z

    if-eq p1, v0, :cond_0

    .line 1407
    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mIsMergeProcessing:Z

    .line 1408
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->resetFullScreenMode()V

    .line 1410
    :cond_0
    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p6, "isSipCall"    # Z
    .param p7, "isContactPhotoShown"    # Z
    .param p8, "isWorkCall"    # Z

    .prologue
    .line 246
    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 12
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "isConference"    # Z
    .param p5, "canManageConference"    # Z
    .param p6, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p7, "isWorkCall"    # Z

    .prologue
    .line 578
    const-string v10, "VideoCallCardBaseFragment"

    const-string v11, "Setting primary call"

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const/4 v4, 0x0

    .line 581
    .local v4, "label":Ljava/lang/String;
    const/4 v5, 0x0

    .line 582
    .local v5, "photo":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 583
    .local v3, "isPersonalPhotoAvailable":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v10

    check-cast v10, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v10}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v6

    .line 584
    .local v6, "primaryCall":Lcom/android/incallui/Call;
    const-wide/16 v8, 0x0

    .line 586
    .local v8, "userType":J
    if-eqz p6, :cond_0

    .line 587
    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 588
    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 589
    move-object/from16 v0, p6

    iget-boolean v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    .line 590
    move-object/from16 v0, p6

    iget-wide v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    .line 592
    :cond_0
    iput-wide v8, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mUserType:J

    .line 593
    if-eqz p4, :cond_5

    .line 594
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getConferenceString()Ljava/lang/String;

    move-result-object p2

    .line 595
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 596
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 597
    const/4 p3, 0x0

    .line 615
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 616
    const/4 p3, 0x0

    .line 619
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 620
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v10, :cond_3

    .line 621
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 622
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->needToPhoneNumberLocator()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 623
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 641
    :cond_3
    :goto_1
    iput-object p2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    .line 643
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 644
    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    .line 647
    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 648
    iput-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    .line 650
    invoke-virtual {p0, v5, v3}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 651
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIconUpper:Landroid/widget/ImageView;

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setProfileIcon(JLandroid/widget/ImageView;)V

    .line 652
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setProfileIcon(JLandroid/widget/ImageView;)V

    .line 654
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->checkAndDisableMergeProcessing()V

    .line 656
    iget-boolean v10, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mIsMergeProcessing:Z

    if-eqz v10, :cond_b

    .line 657
    const-string v10, "setPrimary : do not update - merge is progressing"

    invoke-static {v10}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    .line 677
    :cond_4
    :goto_2
    return-void

    .line 598
    :cond_5
    if-eqz p6, :cond_1

    move-object/from16 v0, p6

    iget-boolean v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v10, :cond_1

    .line 600
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v2

    .line 602
    .local v2, "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    if-eqz v2, :cond_1

    .line 603
    iget-object v10, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 604
    move-object/from16 v0, p6

    iget-object p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 605
    iget-object p2, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    .line 606
    const/4 p3, 0x0

    .line 608
    :cond_6
    iget-object v10, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_1

    .line 609
    iget-object v5, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    .line 610
    const/4 v3, 0x1

    goto :goto_0

    .line 625
    .end local v2    # "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    :cond_7
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 628
    :cond_8
    const/4 v7, 0x1

    .line 629
    .local v7, "show":Z
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 630
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 631
    const/4 v7, 0x0

    .line 634
    :cond_9
    if-eqz v7, :cond_a

    .line 635
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 637
    :cond_a
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 661
    .end local v7    # "show":Z
    :cond_b
    iget-boolean v10, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mIsMergeProcessing:Z

    if-nez v10, :cond_c

    .line 662
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMergeAfterAnswer()Z

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setMergeProgressing(Z)V

    .line 665
    :cond_c
    const-string v10, "cnap_supplementary_service"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 666
    if-eqz p6, :cond_d

    .line 667
    move-object/from16 v0, p6

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setCnapName(Ljava/lang/String;)V

    .line 670
    :cond_d
    const-string v10, "cdnip_supplementary_service"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 671
    if-eqz p6, :cond_e

    .line 672
    move-object/from16 v0, p6

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setCdnipNumber(Ljava/lang/String;)V

    .line 674
    :cond_e
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_4

    .line 675
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updatePrimaryCallElapsedTimeArea(ZLjava/lang/String;)V

    goto/16 :goto_2
.end method

.method public setPrimaryCallElapsedTime(ZJ)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "duration"    # J

    .prologue
    .line 367
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    .line 368
    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 989
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updatePrimaryCallElapsedTimeArea(ZLjava/lang/String;)V

    .line 990
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    .line 991
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    .line 992
    return-void
.end method

.method public setPrimaryCityId(Ljava/lang/String;)V
    .locals 2
    .param p1, "cityId"    # Ljava/lang/String;

    .prologue
    .line 846
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SVL_VUX Caller Name ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCityId:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 850
    const-string v0, "mCityId is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 854
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCityId:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 857
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCityId:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCityId:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 861
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 862
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 10
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    const/4 v9, 0x4

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 698
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v4, v7, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 699
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 701
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setPrimaryImageForVideo(Landroid/graphics/drawable/Drawable;Z)V

    .line 703
    move v3, p2

    .line 704
    .local v3, "showPhotoContainer":Z
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 705
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0203a4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 706
    const/4 v3, 0x1

    .line 709
    :cond_2
    if-eqz p1, :cond_4

    .line 710
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v6, :cond_9

    .line 711
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0201af

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 724
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v4, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 727
    :cond_4
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-eq v4, v9, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v7, 0x6

    if-eq v4, v7, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v7, 0xd

    if-eq v4, v7, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v7, 0x9

    if-eq v4, v7, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v7, 0xa

    if-ne v4, v7, :cond_b

    :cond_5
    const/4 v4, 0x1

    :goto_2
    and-int/2addr v3, v4

    .line 729
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 730
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 731
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-eq v4, v9, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 732
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    .line 733
    .local v2, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v2, :cond_7

    iget-boolean v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    if-eqz v4, :cond_7

    .line 734
    const/4 v3, 0x0

    .line 740
    .end local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_7
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 741
    invoke-static {v0}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 742
    const/4 v3, 0x0

    .line 745
    :cond_8
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_c

    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 713
    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0a0346

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 714
    .local v1, "diameter":I
    invoke-static {p1, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 715
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 716
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020246

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 718
    :cond_a
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020244

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 719
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 720
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020245

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .end local v1    # "diameter":I
    :cond_b
    move v4, v5

    .line 727
    goto/16 :goto_2

    :cond_c
    move v5, v6

    .line 745
    goto :goto_3
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 448
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    const/4 v2, 0x0

    .line 372
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    :cond_1
    :goto_0
    return-void

    .line 376
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    :cond_4
    const/4 v0, 0x0

    .line 381
    .local v0, "nameDirection":I
    if-eqz p2, :cond_8

    .line 382
    const/4 v0, 0x3

    .line 383
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 384
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 385
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 386
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 387
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 394
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    .line 390
    :cond_8
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 391
    :cond_9
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 401
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 443
    :goto_0
    return-void

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->needToPhoneNumberLocator()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 403
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-static {v1, v2, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 404
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 405
    if-eqz v0, :cond_1

    .line 406
    const-string v1, "VideoCallCardBaseFragment"

    const-string v2, "PNL with empty number"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneNumberLocator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 414
    :cond_2
    if-eqz v0, :cond_3

    .line 415
    const-string v1, "VideoCallCardBaseFragment"

    const-string v2, "PNL with number"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneNumberLocator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    :goto_1
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 421
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 425
    :goto_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    goto/16 :goto_0

    .line 418
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 423
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 429
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 430
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 433
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 435
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 439
    :goto_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    goto/16 :goto_0

    .line 437
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumberLocator"    # Ljava/lang/String;

    .prologue
    .line 761
    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 889
    return-void
.end method

.method public setPrimaryVisibleByDialpad(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 894
    return-void
.end method

.method public setProfileContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 955
    return-void
.end method

.method public setProfileForwardingContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 960
    return-void
.end method

.method protected setProfileIcon(JLandroid/widget/ImageView;)V
    .locals 3
    .param p1, "userType"    # J
    .param p3, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 764
    if-nez p3, :cond_1

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    const-string v0, "VideoCallCardBaseFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProfileIcon : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_4

    .line 767
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 768
    const v0, 0x7f020368

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 769
    :cond_2
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 770
    const v0, 0x7f020362

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 771
    :cond_3
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 772
    const v0, 0x7f020366

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 775
    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setProgressSpinnerVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 533
    return-void
.end method

.method public setRecordTimeUpdate(J)V
    .locals 0
    .param p1, "recDuration"    # J

    .prologue
    .line 899
    return-void
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "providerLabel"    # Ljava/lang/String;
    .param p5, "providerIcon"    # Landroid/graphics/drawable/Drawable;
    .param p6, "isConference"    # Z
    .param p7, "canManageConference"    # Z
    .param p8, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 681
    const-string v1, "VideoCallCardBaseFragment"

    const-string v2, "Setting secondary call"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    if-eqz p8, :cond_0

    iget-boolean v1, p8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v1, :cond_0

    .line 684
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v1

    iget-object v2, p8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v0

    .line 685
    .local v0, "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    if-eqz v0, :cond_0

    .line 686
    iget-object v1, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 687
    iget-object p2, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    .line 692
    .end local v0    # "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setSecondaryName(Ljava/lang/String;Z)V

    .line 693
    iput-object p2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    .line 694
    return-void
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "providerLabel"    # Ljava/lang/String;
    .param p6, "isConference"    # Z
    .param p7, "isVideoCall"    # Z
    .param p8, "isFullscreen"    # Z

    .prologue
    .line 251
    return-void
.end method

.method public setSecondaryCallElapsedTime(ZJ)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "duration"    # J

    .prologue
    .line 996
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setSecondaryCallElapsedTime(ZLjava/lang/String;)V

    .line 997
    return-void
.end method

.method public setSecondaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 1002
    return-void
.end method

.method public setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    .line 751
    return-void
.end method

.method public setSecondaryInfoVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 272
    return-void
.end method

.method public setSecondaryName(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mSecondaryCallName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mSecondaryCallName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "nameDirection":I
    if-eqz p2, :cond_2

    .line 262
    const/4 v0, 0x3

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setSwapProgressing()V
    .locals 1

    .prologue
    .line 1413
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->multipartyCall_swapCall()V

    .line 1414
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->enableSwapButton(Z)V

    .line 1415
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->hideVideoBanner()V

    .line 1416
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->startSwapProgressing()V

    .line 1417
    return-void
.end method

.method public setTTS(JLandroid/view/View;)V
    .locals 11
    .param p1, "time"    # J
    .param p3, "elapsedTimeView"    # Landroid/view/View;

    .prologue
    const-wide/32 v8, 0x36ee80

    const-wide/32 v6, 0xea60

    .line 1829
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gtz v3, :cond_0

    .line 1835
    :goto_0
    return-void

    .line 1830
    :cond_0
    div-long v4, p1, v8

    long-to-int v0, v4

    .line 1831
    .local v0, "hours":I
    rem-long v4, p1, v8

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 1832
    .local v1, "minutes":I
    rem-long v4, p1, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 1834
    .local v2, "seconds":I
    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getStringForElapsedTime(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setViewStatePostSplit()V
    .locals 0

    .prologue
    .line 980
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 219
    :cond_1
    const-string v0, "VideoCallCardBaseFragment - setVisible : getView() == null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showCallCardIndicatorArea(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 985
    return-void
.end method

.method protected showConferenceCallManager()V
    .locals 1

    .prologue
    .line 1711
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->showConferenceCallManager()V

    .line 1712
    return-void
.end method

.method public showConferenceStateInfoBanner(ZLjava/lang/String;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 884
    return-void
.end method

.method public showContactContext(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 236
    return-void
.end method

.method public showEndcallContactBtn(Z)V
    .locals 9
    .param p1, "isShow"    # Z

    .prologue
    const v8, 0x7f090251

    const/4 v3, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 463
    const-string v4, "VideoCallCardBaseFragment"

    const-string v5, "showEndcallContactBtn"

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 464
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-nez v4, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    if-nez p1, :cond_2

    .line 466
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 471
    :cond_2
    const/16 v4, 0x40

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 472
    const-string v3, "VideoCallCardBaseFragment"

    const-string v4, "showEndcallContactBtn - mEndCallContactBtn.setVisibility(View.GONE) for knox"

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 473
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 478
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 480
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_4

    .line 481
    const-string v3, "VideoCallCardBaseFragment"

    const-string v4, "showEndcallContactBtn : call = null"

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 485
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 486
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    const/4 v2, 0x1

    .line 488
    .local v2, "isNumberExists":Z
    if-eqz v1, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/incallui/util/InCallUtils;->isShowContactMenu(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 490
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 493
    :cond_5
    iget-boolean v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v4, :cond_6

    .line 494
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 497
    :cond_6
    iget v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    iget v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    .line 499
    :cond_7
    const/4 v2, 0x0

    .line 503
    :cond_8
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v4, :cond_9

    .line 504
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v2, :cond_c

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 505
    :cond_9
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->isEnabledEndCallContactButton()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 500
    :cond_a
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v4, :cond_b

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    .line 501
    :cond_b
    const/4 v2, 0x0

    goto :goto_1

    .line 504
    :cond_c
    const/4 v3, 0x4

    goto :goto_2
.end method

.method public showForwardIndicator(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 543
    return-void
.end method

.method public showHdAudioIndicator(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 538
    return-void
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 548
    return-void
.end method

.method public showMenu(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 781
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->showMenu(Z)V

    .line 782
    return-void
.end method

.method protected showMergeNotAllowDialog()V
    .locals 3

    .prologue
    .line 1223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1224
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0905a9

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1225
    const v1, 0x7f090046

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/fragment/VideoCallCardBaseFragment$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment$1;-><init>(Lcom/android/incallui/fragment/VideoCallCardBaseFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1230
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1231
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1232
    return-void
.end method

.method public showModifyStateInfoBanner(ZLjava/lang/String;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 879
    return-void
.end method

.method public showModifySwitchButtonAM()V
    .locals 0

    .prologue
    .line 1050
    return-void
.end method

.method public showNoteSentToast()V
    .locals 0

    .prologue
    .line 573
    return-void
.end method

.method public showRecordingInfo(ZZ)V
    .locals 0
    .param p1, "near"    # Z
    .param p2, "show"    # Z

    .prologue
    .line 756
    return-void
.end method

.method protected showSecondaryContainer(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 1220
    return-void
.end method

.method public showVideoStateMessageUi(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1105
    return-void
.end method

.method public showVolumeButton(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 787
    return-void
.end method

.method protected updateBgColorForCallState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const v4, 0x7f0200d3

    const/4 v3, 0x2

    .line 1479
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 1480
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-ne v3, p1, :cond_1

    .line 1527
    :cond_0
    :goto_0
    return-void

    .line 1485
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_3

    const/16 v2, 0xa

    if-eq p1, v2, :cond_2

    const/16 v2, 0x9

    if-ne p1, v2, :cond_3

    .line 1487
    :cond_2
    const-string v2, "VideoCallCardBaseFragment"

    const-string v3, "not update callend in hold status"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1491
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 1518
    :pswitch_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1522
    :cond_4
    :goto_1
    if-eqz v0, :cond_0

    .line 1523
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    .line 1524
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    .line 1525
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    goto :goto_0

    .line 1494
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f019d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryBannerColor:I

    .line 1495
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryBannerColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 1499
    :pswitch_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1502
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_5

    .line 1503
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0187

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryBannerColor:I

    .line 1507
    :goto_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryBannerColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 1505
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0186

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryBannerColor:I

    goto :goto_2

    .line 1511
    :pswitch_4
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const/4 v1, 0x1

    .line 1512
    .local v1, "mEmergencyMode":Z
    :goto_3
    if-nez v1, :cond_4

    .line 1513
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryBannerColor:I

    .line 1514
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryBannerColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 1511
    .end local v1    # "mEmergencyMode":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 1491
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateCallCard(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1095
    return-void
.end method

.method public updateCallerInfoOrgView(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1110
    return-void
.end method

.method protected updateCdnipVisibleForCallState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCdnipNumberLayout:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1476
    :cond_0
    :goto_0
    return-void

    .line 1469
    :cond_1
    const/4 v0, 0x4

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCdnipNumber:Landroid/widget/TextView;

    .line 1470
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1471
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCdnipNumber:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1472
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCdnipNumberLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1474
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCdnipNumberLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateCnapVisibleForCallState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCnapNameLayout:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1451
    :cond_0
    :goto_0
    return-void

    .line 1444
    :cond_1
    const/4 v0, 0x4

    if-eq v0, p1, :cond_2

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCnapName:Landroid/widget/TextView;

    .line 1445
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1446
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCnapName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1447
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCnapNameLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1449
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCnapNameLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateDisplayChildCallChanged()V
    .locals 0

    .prologue
    .line 837
    return-void
.end method

.method public updateEri()V
    .locals 0

    .prologue
    .line 1065
    return-void
.end method

.method public updateFullscreenMode(Z)V
    .locals 0
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 1100
    return-void
.end method

.method public updateJanskyInfo()V
    .locals 0

    .prologue
    .line 1120
    return-void
.end method

.method protected updateKTTwoPhoneLayout(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1591
    const-string v1, "VideoCallCardBaseFragment"

    const-string v2, "updateKTTwoPhoneLayout"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1593
    .local v0, "nameMarginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1594
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTPersonal:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTBusiness:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 1618
    :cond_0
    :goto_0
    return-void

    .line 1598
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateTwoPhoneColor(I)V

    .line 1599
    const/16 v1, 0x9

    if-eq p1, v1, :cond_5

    const/16 v1, 0xa

    if-eq p1, v1, :cond_5

    .line 1600
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1601
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1602
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1617
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1603
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 1604
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1605
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1606
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1608
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1609
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1613
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1614
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1615
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method protected updateLayoutForCallState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1286
    return-void
.end method

.method public updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V
    .locals 0
    .param p1, "stae"    # Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;
    .param p2, "block"    # I

    .prologue
    .line 832
    return-void
.end method

.method protected updatePrimaryCallElapsedTimeArea(ZLjava/lang/String;)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 1742
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1743
    .local v0, "primary":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1744
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1745
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1746
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1747
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1760
    :cond_0
    :goto_0
    return-void

    .line 1751
    :cond_1
    if-eqz p1, :cond_2

    .line 1752
    iput-object p2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mLastestCallTime:Ljava/lang/String;

    .line 1753
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1754
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1755
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getCallTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setTTS(JLandroid/view/View;)V

    goto :goto_0

    .line 1757
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updatePrimaryVisibleForCallState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/16 v5, 0xa

    const/16 v4, 0x6b

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1530
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mOldCallState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mOldCallState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mOldCallState:I

    if-ne v0, v5, :cond_2

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1532
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1550
    :cond_1
    :goto_0
    return-void

    .line 1533
    :cond_2
    const/16 v0, 0x9

    if-eq v0, p1, :cond_3

    if-ne v5, p1, :cond_1

    .line 1534
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1535
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1537
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1538
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1539
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1541
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallBannerContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1542
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1543
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1545
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1546
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1547
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateRecordTime(Z)V
    .locals 0
    .param p1, "isPaused"    # Z

    .prologue
    .line 827
    return-void
.end method

.method public updateSmartCallImageInfo()V
    .locals 0

    .prologue
    .line 1080
    return-void
.end method

.method public updateSmartCallInfo(Lcom/android/incallui/Call;Z)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isTimeout"    # Z

    .prologue
    .line 1075
    return-void
.end method

.method public updateSmartCallProviderImageInfo()V
    .locals 0

    .prologue
    .line 1085
    return-void
.end method

.method protected updateTextColor(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const v4, 0x7f0f011c

    const v3, 0x7f0f0136

    const v2, 0x7f0f0133

    .line 1566
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mNumberLabel:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1588
    :cond_0
    :goto_0
    return-void

    .line 1570
    :cond_1
    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 1571
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1572
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1573
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1574
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1575
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1576
    :cond_3
    const/16 v0, 0x8

    if-ne p1, v0, :cond_4

    .line 1577
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mTextColorOnHold:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1578
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mTextColorOnHold:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1579
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mTextColorOnHold:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1580
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mTextColorOnHold:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1582
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1583
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1584
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1585
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1586
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method protected updateTwoPhoneColor(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const v3, 0x7f0f0136

    const v2, 0x7f0f0133

    .line 1621
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTPersonal:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTBusiness:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 1631
    :cond_0
    :goto_0
    return-void

    .line 1624
    :cond_1
    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 1625
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1626
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 1628
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1629
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0
.end method

.method protected updateVideoTypeIcon(Lcom/android/incallui/Call;)V
    .locals 11
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const v10, 0x7f020076

    const/4 v4, 0x0

    const/16 v9, 0xa

    const/16 v8, 0x9

    const/16 v5, 0x8

    .line 1634
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 1636
    .local v1, "state":I
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconImage:Landroid/widget/ImageView;

    if-nez v3, :cond_1

    .line 1696
    :cond_0
    :goto_0
    return-void

    .line 1639
    :cond_1
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 1643
    const/4 v0, 0x1

    .line 1645
    .local v0, "isShowVideoTypeIcon":Z
    if-eq v1, v9, :cond_2

    if-ne v1, v8, :cond_3

    .line 1646
    :cond_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1647
    const/4 v0, 0x0

    .line 1651
    :cond_3
    if-ne v1, v5, :cond_6

    .line 1652
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconImage:Landroid/widget/ImageView;

    const v6, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1657
    :goto_1
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1658
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1662
    :goto_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1663
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1664
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v2

    .line 1665
    .local v2, "videoState":I
    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->isNoVideo(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1666
    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1667
    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1668
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0203c8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1694
    .end local v2    # "videoState":I
    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconLayout:Landroid/view/View;

    if-eqz v0, :cond_11

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1695
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_12

    :goto_5
    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 1654
    :cond_6
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconImage:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 1660
    :cond_7
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0202e2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1670
    .restart local v2    # "videoState":I
    :cond_8
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020078

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 1673
    .end local v2    # "videoState":I
    :cond_9
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_TMO()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1674
    :cond_a
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1675
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 1677
    :cond_b
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1678
    const-string v3, "WideBandAMR value : "

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1679
    invoke-static {p1}, Lcom/android/incallui/util/InCallUtils;->isHasEVSSWB(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1680
    if-eq v1, v9, :cond_c

    if-ne v1, v8, :cond_d

    .line 1681
    :cond_c
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02034d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 1683
    :cond_d
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020346

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 1686
    :cond_e
    if-eq v1, v9, :cond_f

    if-ne v1, v8, :cond_10

    .line 1687
    :cond_f
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02034e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 1689
    :cond_10
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoTypeIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020345

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_11
    move v3, v5

    .line 1694
    goto/16 :goto_4

    :cond_12
    move v4, v5

    .line 1695
    goto/16 :goto_5
.end method

.method public updateVolteView(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1090
    return-void
.end method
