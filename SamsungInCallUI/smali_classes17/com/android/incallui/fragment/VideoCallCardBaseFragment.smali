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


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;-><init>()V

    .line 116
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoBannerViewStub:Landroid/view/ViewStub;

    .line 117
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoBannerView:Landroid/view/View;

    .line 118
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoBannerContainer:Landroid/view/View;

    .line 119
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoBannerDivider:Landroid/view/View;

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mUserType:J

    .line 134
    iput v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryBannerColor:I

    .line 139
    iput-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mIsMergeProcessing:Z

    return-void
.end method

.method private animateForManager()V
    .locals 0

    .prologue
    .line 1640
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->showConferenceCallManager()V

    .line 1641
    return-void
.end method

.method private checkAndDisableMergeProcessing()V
    .locals 4

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1786
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1787
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v2

    .line 1788
    .local v2, "isMultipartyCall":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v1

    .line 1789
    .local v1, "hasConferenceCall":Z
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    .line 1790
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1791
    iget-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mIsMergeProcessing:Z

    if-eqz v3, :cond_0

    .line 1792
    const-string v3, "checkForMergeState - merged"

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    .line 1793
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setMergeProgressing(Z)V

    .line 1794
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    .line 1799
    .end local v1    # "hasConferenceCall":Z
    .end local v2    # "isMultipartyCall":Z
    :cond_0
    return-void
.end method

.method private enableSwapButton(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 999
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_PANNEL:Z

    if-eqz v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 1004
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 1006
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1005
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

    .line 1285
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1286
    :cond_0
    const-string v4, "getCallStateLabelFromState getView() or context is empty: "

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1287
    const/4 v0, 0x0

    .line 1371
    :cond_1
    :goto_0
    :pswitch_0
    return-object v0

    .line 1290
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1291
    .local v1, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 1293
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    if-eqz p5, :cond_3

    move v3, v4

    .line 1294
    .local v3, "isSpecialCall":Z
    :goto_1
    if-eqz v3, :cond_4

    if-nez p6, :cond_4

    move v2, v4

    .line 1296
    .local v2, "isAccount":Z
    :goto_2
    packed-switch p1, :pswitch_data_0

    .line 1369
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

    .line 1293
    goto :goto_1

    .restart local v3    # "isSpecialCall":Z
    :cond_4
    move v2, v5

    .line 1294
    goto :goto_2

    .line 1317
    .restart local v2    # "isAccount":Z
    :pswitch_2
    if-eqz v3, :cond_5

    .line 1318
    const v6, 0x7f090017

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1320
    :cond_5
    sget v4, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1321
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1322
    const v4, 0x7f0900f3

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1324
    :cond_6
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    .line 1327
    goto :goto_0

    .line 1329
    :pswitch_3
    const v4, 0x7f090022

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1330
    goto :goto_0

    .line 1333
    :pswitch_4
    if-eqz v2, :cond_7

    .line 1334
    const v6, 0x7f090038

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1338
    :cond_7
    sget v4, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1339
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1340
    const v4, 0x7f090136

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1342
    :cond_8
    const v4, 0x7f090137

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1344
    :cond_9
    const v4, 0x7f090138

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1347
    goto/16 :goto_0

    .line 1358
    :pswitch_5
    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1359
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isCSVideoCall()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "NO_ANSWER"

    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1360
    const v4, 0x7f0901e7

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1361
    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1362
    const v4, 0x7f090018

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1366
    :pswitch_6
    const v4, 0x7f09001b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1367
    goto/16 :goto_0

    .line 1296
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
    .line 1620
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

    .line 1621
    if-eqz p1, :cond_0

    const v0, 0x7f020128

    .line 1622
    .local v0, "resId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1621
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x7f02012c

    goto :goto_0
.end method

.method private getConferenceString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1615
    const v0, 0x7f09001b

    .line 1616
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

    .line 1754
    new-array v0, v9, [Ljava/lang/String;

    const-string v9, "%d"

    aput-object v9, v0, v10

    .line 1755
    .local v0, "SRC_TAGS":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1758
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v9, 0x1

    :try_start_0
    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 1759
    .local v7, "strMinutes":[Ljava/lang/String;
    const v9, 0x7f0902d8

    .line 1760
    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1759
    invoke-static {v9, v0, v7}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1762
    .local v2, "charMinutes":Ljava/lang/CharSequence;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1763
    .local v8, "strSeconds":[Ljava/lang/String;
    const v9, 0x7f0902da

    .line 1764
    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1763
    invoke-static {v9, v0, v8}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1766
    .local v3, "charSeconds":Ljava/lang/CharSequence;
    if-lez p1, :cond_0

    .line 1767
    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    .line 1768
    .local v6, "strHours":[Ljava/lang/String;
    const v9, 0x7f0902d7

    .line 1769
    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1768
    invoke-static {v9, v0, v6}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1770
    .local v1, "charHours":Ljava/lang/CharSequence;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1773
    .end local v1    # "charHours":Ljava/lang/CharSequence;
    .end local v6    # "strHours":[Ljava/lang/String;
    :cond_0
    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1774
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1775
    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1776
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1781
    .end local v2    # "charMinutes":Ljava/lang/CharSequence;
    .end local v3    # "charSeconds":Ljava/lang/CharSequence;
    .end local v7    # "strMinutes":[Ljava/lang/String;
    .end local v8    # "strSeconds":[Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1777
    :catch_0
    move-exception v4

    .line 1778
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "VideoCallCardBaseFragment"

    const-string v10, " getStringForElapsedTime IndexOutOfBoundsException "

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private isEnabledEndCallContactButton()Z
    .locals 2

    .prologue
    .line 504
    const/4 v0, 0x1

    .line 505
    .local v0, "enabled":Z
    const-string v1, "support_twophone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 506
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isTwoPhoneUser(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isTwoPhoneUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 508
    :cond_1
    const/4 v0, 0x0

    .line 511
    :cond_2
    return v0
.end method

.method private isVideoState()Z
    .locals 5

    .prologue
    .line 1736
    const/4 v1, 0x0

    .line 1737
    .local v1, "hasVideoState":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1738
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1739
    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    .line 1741
    :cond_0
    return v1
.end method

.method private menuButtonClicked()V
    .locals 3

    .prologue
    .line 1229
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-nez v1, :cond_0

    .line 1242
    :goto_0
    return-void

    .line 1230
    :cond_0
    const-string v1, "VideoCallCardBaseFragment"

    const-string v2, "menuButtonClicked"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 1232
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v1, :cond_2

    .line 1233
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v1}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1234
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    goto :goto_0

    .line 1236
    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->showInCallMenu()V

    .line 1237
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_more()V

    goto :goto_0

    .line 1240
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
    .line 1269
    if-nez p1, :cond_0

    .line 1273
    :goto_0
    return-void

    .line 1272
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setPrimaryImageForVideo(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    .line 1276
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 1277
    return-void
.end method

.method private showVideoBanner(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1414
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoBannerDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1415
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoBannerDivider:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoBannerContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1418
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVideoBannerContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1420
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1415
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1418
    goto :goto_1
.end method

.method private updateCallCardVTConference(Z)V
    .locals 3
    .param p1, "isShowManager"    # Z

    .prologue
    .line 1644
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

    .line 1645
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1654
    :cond_0
    :goto_0
    return-void

    .line 1646
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVTManageButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mManageStub:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1648
    if-eqz p1, :cond_2

    .line 1649
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVTManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090255

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1651
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mVTManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090257

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

    .line 1679
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mOldCallState:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 1680
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1733
    :goto_0
    return-void

    .line 1684
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->isVideoState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1685
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1686
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallElapsedTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mLastestCallTime:Ljava/lang/String;

    .line 1687
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

    .line 1691
    :cond_1
    iput-object p2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    .line 1692
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->manageCallEndTimeBlink(I)V

    .line 1693
    if-eq p1, v6, :cond_2

    .line 1694
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->removeMessageForBlinkTime()V

    .line 1696
    :cond_2
    if-ne p1, v5, :cond_3

    .line 1697
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mOldCallState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 1698
    iput-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mLastestCallTime:Ljava/lang/String;

    .line 1703
    :cond_3
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1704
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1705
    const-string v0, "VideoCallCardBaseFragment"

    const-string v1, "not update stateLabel for blink call time"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    :goto_2
    if-eqz p3, :cond_4

    const-string v0, "feature_multisim"

    .line 1712
    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1713
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1700
    :cond_5
    iget-object p2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mLastestCallTime:Ljava/lang/String;

    goto :goto_1

    .line 1707
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1708
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1709
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1715
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1718
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1719
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1722
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eq p1, v5, :cond_9

    if-ne p1, v6, :cond_a

    .line 1723
    :cond_9
    const-string v0, "VideoCallCardBaseFragment"

    const-string v1, "not update stateLabel for blink call time"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    :goto_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1731
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1725
    :cond_a
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1726
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private updatePhotoViewForCallState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/16 v3, 0x8

    .line 1534
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mOldCallState:I

    if-eq v2, v3, :cond_0

    if-eq p1, v3, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/16 v2, 0x9

    if-eq p1, v2, :cond_0

    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    .line 1536
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1537
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 1538
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

    .line 1539
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_1

    .line 1540
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 1544
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_1
    return-void
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 0

    .prologue
    .line 944
    return-void
.end method

.method public animateForHideManager(Z)V
    .locals 1
    .param p1, "showPhoto"    # Z

    .prologue
    .line 958
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateCallCardVTConference(Z)V

    .line 959
    return-void
.end method

.method public animateForMoveDialpad(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    .prologue
    .line 964
    return-void
.end method

.method public animateForNewOutgoingCall()V
    .locals 0

    .prologue
    .line 557
    return-void
.end method

.method public animateForNewOutgoingCall(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 918
    return-void
.end method

.method public canUpdateUI(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 1802
    if-eqz p1, :cond_1

    .line 1803
    invoke-virtual {p1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1804
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 1805
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    .line 1806
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1807
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1809
    :cond_0
    const/4 v0, 0x1

    .line 1817
    :cond_1
    :goto_0
    return v0

    .line 1811
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1812
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1814
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->showSecondaryContainer(Z)V

    goto :goto_0
.end method

.method public changeCallCardForAM(I)V
    .locals 0
    .param p1, "callState"    # I

    .prologue
    .line 1029
    return-void
.end method

.method public changeViewForMoveDialpad(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    .prologue
    .line 969
    return-void
.end method

.method public clearAMView()V
    .locals 0

    .prologue
    .line 1039
    return-void
.end method

.method public createPresenter()Lcom/android/incallui/CallCardPresenter;
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/android/incallui/CallCardPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallCardPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->createPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected dismissInCallMenu()V
    .locals 1

    .prologue
    .line 1245
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->dismissInCallMenu()V

    .line 1247
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1248
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->dismissDialogs()V

    .line 1249
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 933
    const/4 v0, 0x0

    return v0
.end method

.method public enableMenu(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 786
    return-void
.end method

.method protected getConferenceCallManagerShowingState()Z
    .locals 1

    .prologue
    .line 1636
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v0

    return v0
.end method

.method public getCurrentSecondaryCallName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    return-object v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 791
    new-instance v0, Lcom/android/incallui/InVideoCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InVideoCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 798
    new-instance v0, Lcom/android/incallui/InVideoCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InVideoCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    .prologue
    .line 805
    const/high16 v0, 0x7f120000

    return v0
.end method

.method public getPrimaryPhotoView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSpaceBesideCallCard()F
    .locals 1

    .prologue
    .line 897
    const/4 v0, 0x0

    return v0
.end method

.method public getUi()Lcom/android/incallui/CallCardUi;
    .locals 0

    .prologue
    .line 201
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    return-object v0
.end method

.method protected hideConferenceCallManager()V
    .locals 2

    .prologue
    .line 1631
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1632
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager(Z)V

    .line 1633
    :cond_0
    return-void
.end method

.method protected inflateCdnipLayout()V
    .locals 0

    .prologue
    .line 1378
    return-void
.end method

.method protected inflateCnapLayout()V
    .locals 0

    .prologue
    .line 1375
    return-void
.end method

.method protected inflateDowngradeButtonLayout()V
    .locals 0

    .prologue
    .line 1384
    return-void
.end method

.method protected inflateManageLayout()V
    .locals 0

    .prologue
    .line 1381
    return-void
.end method

.method public isActivityCreated()Z
    .locals 1

    .prologue
    .line 902
    const/4 v0, 0x0

    return v0
.end method

.method public isCallSubjectVisible()Z
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method public isInExceptionArea(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1018
    const/4 v0, 0x0

    return v0
.end method

.method public isManageConferenceVisible()Z
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public isMenuShowing()Z
    .locals 1

    .prologue
    .line 1023
    const/4 v0, 0x0

    return v0
.end method

.method public isPrimaryVisible()Z
    .locals 1

    .prologue
    .line 867
    const/4 v0, 0x0

    return v0
.end method

.method public isSwapProcessing()Z
    .locals 1

    .prologue
    .line 1013
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mIsSwapProcessing:Z

    return v0
.end method

.method public manageAnswerMemoRecord(Z)V
    .locals 0
    .param p1, "isActiveCall"    # Z

    .prologue
    .line 1049
    return-void
.end method

.method public manageMultiTouchStub(Z)V
    .locals 0
    .param p1, "isIncoming"    # Z

    .prologue
    .line 1064
    return-void
.end method

.method public manageRecordInfo(ZZ)V
    .locals 0
    .param p1, "showRecordInfo"    # Z
    .param p2, "isPaused"    # Z

    .prologue
    .line 908
    return-void
.end method

.method protected needToPhoneNumberLocator()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1253
    const/4 v1, 0x0

    .line 1254
    .local v1, "isNeedToPNL":Z
    const-string v7, "phone_number_locator"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1255
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1256
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 1257
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    .line 1258
    .local v4, "state":I
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isPhoneNumberLocatorOn()Z

    move-result v2

    .line 1259
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

    .line 1260
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

    .line 1261
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

    .line 1262
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    move v1, v5

    .line 1265
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

    .line 1259
    goto :goto_0

    .restart local v3    # "needToShow":Z
    :cond_3
    move v3, v6

    .line 1260
    goto :goto_1

    :cond_4
    move v1, v6

    .line 1262
    goto :goto_2
.end method

.method public needToShowMenu()Z
    .locals 1

    .prologue
    .line 810
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
    .line 815
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f090092

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1118
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 1119
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1120
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 1121
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

    .line 1122
    sparse-switch v2, :sswitch_data_0

    .line 1207
    const-string v3, "VideoCallCardBaseFragment"

    const-string v4, "onClick: call super onClick"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onClick(Landroid/view/View;)V

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1124
    :sswitch_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->menuButtonClicked()V

    goto :goto_0

    .line 1127
    :sswitch_1
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090292

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1128
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->endCall_contactAddTo()V

    .line 1130
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1131
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-static {v3, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1133
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->viewContactClicked()V

    goto :goto_0

    .line 1136
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->endCall_contactView()V

    .line 1138
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1139
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-static {v3, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1141
    :cond_3
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->addToContactClicked()V

    goto :goto_0

    .line 1146
    :sswitch_2
    if-eqz v0, :cond_0

    .line 1147
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "att_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1148
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v3

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    goto :goto_0

    .line 1150
    :cond_4
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/incallui/UiAdapter;->updateModifyRequestButtons(Lcom/android/incallui/Call;)V

    .line 1151
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    goto :goto_0

    .line 1157
    :sswitch_3
    const-string v3, "SWAP Clicked"

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    .line 1158
    if-eqz v0, :cond_0

    .line 1159
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setSwapProgressing()V

    .line 1160
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    .line 1161
    invoke-direct {p0, v9}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->enableSwapButton(Z)V

    goto/16 :goto_0

    .line 1165
    :sswitch_4
    const-string v3, "Merge Clicked"

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    .line 1166
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1167
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->hideConferenceCallManager()V

    .line 1170
    :cond_5
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1171
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoOneway()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1172
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->showMergeNotAllowDialog()V

    goto/16 :goto_0

    .line 1176
    :cond_6
    if-eqz v0, :cond_7

    .line 1177
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setMergeProgressing(Z)V

    .line 1180
    :cond_7
    const-string v3, "canada_bmc_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1181
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    const v4, 0x7f0900d9

    invoke-static {v3, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1184
    :cond_8
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1185
    invoke-virtual {p0, v8}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->showSecondaryContainer(Z)V

    .line 1186
    invoke-virtual {p0, v9}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setMergeProgressing(Z)V

    goto/16 :goto_0

    .line 1189
    :sswitch_5
    const-string v3, "Manage Clicked"

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getConferenceCallManagerShowingState()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1191
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->hideConferenceCallManager()V

    .line 1192
    invoke-direct {p0, v8}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateCallCardVTConference(Z)V

    .line 1193
    invoke-static {v9}, Lcom/android/incallui/util/VideoCallAppLogging;->multipartyCall_manageConference(Z)V

    goto/16 :goto_0

    .line 1196
    :cond_9
    invoke-static {v8}, Lcom/android/incallui/util/VideoCallAppLogging;->multipartyCall_manageConference(Z)V

    .line 1197
    invoke-direct {p0, v9}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateCallCardVTConference(Z)V

    .line 1198
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->animateForManager()V

    goto/16 :goto_0

    .line 1202
    :sswitch_6
    const-string v3, "Downgrade Clicked"

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 1203
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCall_voiceCallDowngrade()V

    .line 1204
    invoke-static {v8}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    goto/16 :goto_0

    .line 1122
    :sswitch_data_0
    .sparse-switch
        0x7f100099 -> :sswitch_3
        0x7f10009f -> :sswitch_4
        0x7f100278 -> :sswitch_6
        0x7f10028e -> :sswitch_0
        0x7f1002b1 -> :sswitch_5
        0x7f1002f2 -> :sswitch_3
        0x7f100324 -> :sswitch_1
        0x7f100418 -> :sswitch_2
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 179
    const-string v0, "onDestroy..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroy()V

    .line 181
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroyView()V

    .line 186
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoSessionEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;)V

    .line 187
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoCallUiEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;)V

    .line 188
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->dismissInCallMenu()V

    .line 192
    return-void
.end method

.method public onDialpadVisiblityChange()V
    .locals 0

    .prologue
    .line 929
    return-void
.end method

.method public onDialpadVisiblityChange(Z)V
    .locals 1
    .param p1, "isShown"    # Z

    .prologue
    .line 922
    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mIsDialpadShowing:Z

    .line 923
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mIsDialpadShowing:Z

    if-eq v0, p1, :cond_0

    .line 924
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onDialpadVisiblityChange()V

    .line 926
    :cond_0
    return-void
.end method

.method public onVideoCallUiEvent(I)V
    .locals 4
    .param p1, "event"    # I

    .prologue
    .line 1827
    packed-switch p1, :pswitch_data_0

    .line 1840
    :cond_0
    :goto_0
    return-void

    .line 1830
    :pswitch_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1831
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1832
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1833
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateBgColorForCallState(I)V

    goto :goto_0

    .line 1827
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
    .line 1822
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/CallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 148
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoSessionEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;)V

    .line 149
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoCallUiEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mTextColorDefault:I

    .line 152
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mTextColorOnHold:I

    .line 154
    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const v0, 0x7f10024a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTtwophoneStub:Landroid/view/ViewStub;

    .line 156
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTtwophoneStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTtwophoneStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 158
    const v0, 0x7f100130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTBusiness:Landroid/widget/ImageView;

    .line 159
    const v0, 0x7f100131

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTPersonal:Landroid/widget/ImageView;

    .line 163
    :cond_0
    const v0, 0x7f10019b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIcon:Landroid/widget/ImageView;

    .line 164
    const v0, 0x7f10033e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIconUpper:Landroid/widget/ImageView;

    .line 166
    const v0, 0x7f10033a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallButtonStub:Landroid/view/ViewStub;

    .line 167
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 169
    const v0, 0x7f100324

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    .line 170
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    .line 175
    :cond_1
    return-void
.end method

.method public onVolumeKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1108
    const/4 v0, 0x0

    return v0
.end method

.method public resetAnswerCallAnimator()V
    .locals 0

    .prologue
    .line 939
    return-void
.end method

.method public resetRevealAnimator()V
    .locals 0

    .prologue
    .line 913
    return-void
.end method

.method public sendAccessibilityAnnouncement()V
    .locals 0

    .prologue
    .line 562
    return-void
.end method

.method public setAMView(Z)V
    .locals 0
    .param p1, "isRecording"    # Z

    .prologue
    .line 1034
    return-void
.end method

.method public setCallCardVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setVisible(Z)V

    .line 235
    return-void
.end method

.method public setCallCharge(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 836
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
    .line 270
    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p10

    invoke-direct/range {v2 .. v8}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v10

    .line 272
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

    .line 274
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateLayoutForCallState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mOldCallState:I

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    const-string v2, " Nothing to do if the labels are the same"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 357
    :cond_0
    :goto_1
    return-void

    .line 275
    :catch_0
    move-exception v11

    .line 276
    .local v11, "e":Ljava/lang/IllegalStateException;
    const-string v2, "VideoCallCardBaseFragment"

    invoke-virtual {v11}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    .end local v11    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 286
    const-string v2, "skip setCallState : not update in idle state"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 287
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 295
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v13

    .line 296
    .local v13, "incomingCall":Lcom/android/incallui/Call;
    if-eqz v13, :cond_3

    invoke-static {v13}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 297
    const-string v2, "skip setCallState : not update in incoming voice call"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 298
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setVisible(Z)V

    goto :goto_1

    .line 302
    :cond_3
    const-string v2, "ims_call_message"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 303
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v9

    .line 304
    .local v9, "call":Lcom/android/incallui/Call;
    if-eqz v9, :cond_5

    .line 305
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

    .line 306
    .local v12, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v12, :cond_5

    iget-object v2, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 307
    invoke-virtual {v9}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_e

    .line 308
    :cond_4
    iget-object v2, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setCnapName(Ljava/lang/String;)V

    .line 316
    .end local v9    # "call":Lcom/android/incallui/Call;
    .end local v12    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_5
    :goto_2
    const-string v2, "cnap_supplementary_service"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 317
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateCnapVisibleForCallState(I)V

    .line 320
    :cond_6
    const-string v2, "cdnip_supplementary_service"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 321
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateCdnipVisibleForCallState(I)V

    .line 324
    :cond_7
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mOldCallState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    const/16 v2, 0xa

    if-ne p1, v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    .line 325
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    .line 326
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    :cond_8
    iget-wide v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mUserType:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    .line 330
    const/4 v2, 0x3

    if-eq p1, v2, :cond_9

    const/16 v2, 0x8

    if-ne p1, v2, :cond_f

    .line 331
    :cond_9
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    :cond_a
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIconUpper:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIconUpper:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    :cond_b
    :goto_3
    move-object/from16 v0, p6

    invoke-direct {p0, p1, v10, v0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateCallStateLabelForCallState(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 340
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateBgColorForCallState(I)V

    .line 341
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updatePhotoViewForCallState(I)V

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updatePrimaryVisibleForCallState(I)V

    .line 343
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateTextColor(I)V

    .line 346
    const-string v2, "support_twophone"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateKTTwoPhoneLayout(I)V

    .line 350
    :cond_c
    const/16 v2, 0x9

    if-eq p1, v2, :cond_d

    const/16 v2, 0xa

    if-ne p1, v2, :cond_11

    .line 351
    :cond_d
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->dismissInCallMenu()V

    .line 352
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->showEndcallContactBtn(Z)V

    .line 356
    :goto_4
    iput p1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mOldCallState:I

    goto/16 :goto_1

    .line 309
    .restart local v9    # "call":Lcom/android/incallui/Call;
    .restart local v12    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_e
    iget-object v2, v12, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 310
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setCnapName(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 334
    .end local v9    # "call":Lcom/android/incallui/Call;
    .end local v12    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_f
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIconUpper:Landroid/widget/ImageView;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIconUpper:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    :cond_10
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 354
    :cond_11
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->showEndcallContactBtn(Z)V

    goto :goto_4
.end method

.method public setCallSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "callSubject"    # Ljava/lang/String;

    .prologue
    .line 522
    return-void
.end method

.method public setCallbackNumber(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isEmergencyCalls"    # Z

    .prologue
    .line 517
    return-void
.end method

.method protected setCdnipNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "numer"    # Ljava/lang/String;

    .prologue
    .line 1435
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1436
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->inflateCdnipLayout()V

    .line 1437
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1441
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCdnipNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setCnapName(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1401
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1402
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->inflateCnapLayout()V

    .line 1403
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCnapName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1411
    :cond_0
    :goto_0
    return-void

    .line 1407
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCnapName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setContactContextContent(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "listAdapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 225
    return-void
.end method

.method public setContactContextTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "listHeaderView"    # Landroid/view/View;

    .prologue
    .line 220
    return-void
.end method

.method public setEndCallButtonEnabled(ZZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 454
    return-void
.end method

.method public setMergeProgressing(Z)V
    .locals 1
    .param p1, "isProgressing"    # Z

    .prologue
    .line 1387
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mIsMergeProcessing:Z

    if-eq p1, v0, :cond_0

    .line 1388
    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mIsMergeProcessing:Z

    .line 1389
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->resetFullScreenMode()V

    .line 1391
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
    .line 240
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
    .line 572
    const-string v10, "VideoCallCardBaseFragment"

    const-string v11, "Setting primary call"

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const/4 v4, 0x0

    .line 575
    .local v4, "label":Ljava/lang/String;
    const/4 v5, 0x0

    .line 576
    .local v5, "photo":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 577
    .local v3, "isPersonalPhotoAvailable":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v10

    check-cast v10, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v10}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v6

    .line 578
    .local v6, "primaryCall":Lcom/android/incallui/Call;
    const-wide/16 v8, 0x0

    .line 580
    .local v8, "userType":J
    if-eqz p6, :cond_0

    .line 581
    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 582
    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 583
    move-object/from16 v0, p6

    iget-boolean v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    .line 584
    move-object/from16 v0, p6

    iget-wide v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    .line 586
    :cond_0
    iput-wide v8, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mUserType:J

    .line 587
    if-eqz p4, :cond_5

    .line 588
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getConferenceString()Ljava/lang/String;

    move-result-object p2

    .line 589
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 590
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 591
    const/4 p3, 0x0

    .line 609
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 610
    const/4 p3, 0x0

    .line 613
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 614
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v10, :cond_3

    .line 615
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 616
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->needToPhoneNumberLocator()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 617
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 635
    :cond_3
    :goto_1
    iput-object p2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    .line 637
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 638
    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    .line 641
    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 642
    iput-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    .line 644
    invoke-virtual {p0, v5, v3}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 645
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIconUpper:Landroid/widget/ImageView;

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setProfileIcon(JLandroid/widget/ImageView;)V

    .line 646
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setProfileIcon(JLandroid/widget/ImageView;)V

    .line 648
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->checkAndDisableMergeProcessing()V

    .line 650
    iget-boolean v10, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mIsMergeProcessing:Z

    if-eqz v10, :cond_b

    .line 651
    const-string v10, "setPrimary : do not update - merge is progressing"

    invoke-static {v10}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    .line 671
    :cond_4
    :goto_2
    return-void

    .line 592
    :cond_5
    if-eqz p6, :cond_1

    move-object/from16 v0, p6

    iget-boolean v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v10, :cond_1

    .line 594
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v2

    .line 596
    .local v2, "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    if-eqz v2, :cond_1

    .line 597
    iget-object v10, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 598
    move-object/from16 v0, p6

    iget-object p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 599
    iget-object p2, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    .line 600
    const/4 p3, 0x0

    .line 602
    :cond_6
    iget-object v10, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_1

    .line 603
    iget-object v5, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    .line 604
    const/4 v3, 0x1

    goto :goto_0

    .line 619
    .end local v2    # "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    :cond_7
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 622
    :cond_8
    const/4 v7, 0x1

    .line 623
    .local v7, "show":Z
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 624
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 625
    const/4 v7, 0x0

    .line 628
    :cond_9
    if-eqz v7, :cond_a

    .line 629
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 631
    :cond_a
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 655
    .end local v7    # "show":Z
    :cond_b
    iget-boolean v10, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mIsMergeProcessing:Z

    if-nez v10, :cond_c

    .line 656
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMergeAfterAnswer()Z

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setMergeProgressing(Z)V

    .line 659
    :cond_c
    const-string v10, "cnap_supplementary_service"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 660
    if-eqz p6, :cond_d

    .line 661
    move-object/from16 v0, p6

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setCnapName(Ljava/lang/String;)V

    .line 664
    :cond_d
    const-string v10, "cdnip_supplementary_service"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 665
    if-eqz p6, :cond_e

    .line 666
    move-object/from16 v0, p6

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setCdnipNumber(Ljava/lang/String;)V

    .line 668
    :cond_e
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_4

    .line 669
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
    .line 361
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    .line 362
    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 983
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updatePrimaryCallElapsedTimeArea(ZLjava/lang/String;)V

    .line 984
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    .line 985
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    .line 986
    return-void
.end method

.method public setPrimaryCityId(Ljava/lang/String;)V
    .locals 2
    .param p1, "cityId"    # Ljava/lang/String;

    .prologue
    .line 840
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 841
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

    .line 843
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCityId:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 844
    const-string v0, "mCityId is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 848
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCityId:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 851
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCityId:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCityId:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 855
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
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

    .line 692
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v4, v7, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 693
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 695
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setPrimaryImageForVideo(Landroid/graphics/drawable/Drawable;Z)V

    .line 697
    move v3, p2

    .line 698
    .local v3, "showPhotoContainer":Z
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 699
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0203a5

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 700
    const/4 v3, 0x1

    .line 703
    :cond_2
    if-eqz p1, :cond_4

    .line 704
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v6, :cond_9

    .line 705
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0201b0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 718
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v4, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 721
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

    .line 723
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 724
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 725
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

    .line 726
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

    .line 727
    .local v2, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v2, :cond_7

    iget-boolean v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    if-eqz v4, :cond_7

    .line 728
    const/4 v3, 0x0

    .line 734
    .end local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_7
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 735
    invoke-static {v0}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 736
    const/4 v3, 0x0

    .line 739
    :cond_8
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_c

    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 707
    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0a034a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 708
    .local v1, "diameter":I
    invoke-static {p1, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 709
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 710
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020247

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 712
    :cond_a
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020245

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 713
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 714
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020246

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .end local v1    # "diameter":I
    :cond_b
    move v4, v5

    .line 721
    goto/16 :goto_2

    :cond_c
    move v5, v6

    .line 739
    goto :goto_3
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 442
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 446
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

    .line 366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    :cond_1
    :goto_0
    return-void

    .line 370
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    :cond_4
    const/4 v0, 0x0

    .line 375
    .local v0, "nameDirection":I
    if-eqz p2, :cond_8

    .line 376
    const/4 v0, 0x3

    .line 377
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 378
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 379
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 380
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 381
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 388
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    .line 384
    :cond_8
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 385
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

    .line 395
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 437
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->needToPhoneNumberLocator()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 397
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-static {v1, v2, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 398
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    if-eqz v0, :cond_1

    .line 400
    const-string v1, "VideoCallCardBaseFragment"

    const-string v2, "PNL with empty number"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneNumberLocator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 408
    :cond_2
    if-eqz v0, :cond_3

    .line 409
    const-string v1, "VideoCallCardBaseFragment"

    const-string v2, "PNL with number"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
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

    .line 414
    :goto_1
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 415
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 419
    :goto_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    goto/16 :goto_0

    .line 412
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 417
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 423
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 424
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 427
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 429
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 433
    :goto_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    goto/16 :goto_0

    .line 431
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumberLocator"    # Ljava/lang/String;

    .prologue
    .line 755
    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 883
    return-void
.end method

.method public setPrimaryVisibleByDialpad(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 888
    return-void
.end method

.method public setProfileContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 949
    return-void
.end method

.method public setProfileForwardingContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 954
    return-void
.end method

.method protected setProfileIcon(JLandroid/widget/ImageView;)V
    .locals 3
    .param p1, "userType"    # J
    .param p3, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 758
    if-nez p3, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 759
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

    .line 760
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_4

    .line 761
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 762
    const v0, 0x7f020369

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 763
    :cond_2
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 764
    const v0, 0x7f020363

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 765
    :cond_3
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 766
    const v0, 0x7f020367

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 769
    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setProgressSpinnerVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 527
    return-void
.end method

.method public setRecordTimeUpdate(J)V
    .locals 0
    .param p1, "recDuration"    # J

    .prologue
    .line 893
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
    .line 675
    const-string v1, "VideoCallCardBaseFragment"

    const-string v2, "Setting secondary call"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    if-eqz p8, :cond_0

    iget-boolean v1, p8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v1, :cond_0

    .line 678
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v1

    iget-object v2, p8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v0

    .line 679
    .local v0, "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    if-eqz v0, :cond_0

    .line 680
    iget-object v1, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 681
    iget-object p2, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    .line 686
    .end local v0    # "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setSecondaryName(Ljava/lang/String;Z)V

    .line 687
    iput-object p2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    .line 688
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
    .line 245
    return-void
.end method

.method public setSecondaryCallElapsedTime(ZJ)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "duration"    # J

    .prologue
    .line 990
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setSecondaryCallElapsedTime(ZLjava/lang/String;)V

    .line 991
    return-void
.end method

.method public setSecondaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 996
    return-void
.end method

.method public setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    .line 745
    return-void
.end method

.method public setSecondaryInfoVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 266
    return-void
.end method

.method public setSecondaryName(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mSecondaryCallName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mSecondaryCallName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "nameDirection":I
    if-eqz p2, :cond_2

    .line 256
    const/4 v0, 0x3

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setSwapProgressing()V
    .locals 1

    .prologue
    .line 1394
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->multipartyCall_swapCall()V

    .line 1395
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->enableSwapButton(Z)V

    .line 1396
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->hideVideoBanner()V

    .line 1397
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->startSwapProgressing()V

    .line 1398
    return-void
.end method

.method public setTTS(JLandroid/view/View;)V
    .locals 11
    .param p1, "time"    # J
    .param p3, "elapsedTimeView"    # Landroid/view/View;

    .prologue
    const-wide/32 v8, 0x36ee80

    const-wide/32 v6, 0xea60

    .line 1745
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gtz v3, :cond_0

    .line 1751
    :goto_0
    return-void

    .line 1746
    :cond_0
    div-long v4, p1, v8

    long-to-int v0, v4

    .line 1747
    .local v0, "hours":I
    rem-long v4, p1, v8

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 1748
    .local v1, "minutes":I
    rem-long v4, p1, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 1750
    .local v2, "seconds":I
    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getStringForElapsedTime(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setViewStatePostSplit()V
    .locals 0

    .prologue
    .line 974
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 207
    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 213
    :cond_1
    const-string v0, "VideoCallCardBaseFragment - setVisible : getView() == null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showCallCardIndicatorArea(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 979
    return-void
.end method

.method protected showConferenceCallManager()V
    .locals 1

    .prologue
    .line 1627
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->showConferenceCallManager()V

    .line 1628
    return-void
.end method

.method public showConferenceStateInfoBanner(ZLjava/lang/String;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 878
    return-void
.end method

.method public showContactContext(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 230
    return-void
.end method

.method public showEndcallContactBtn(Z)V
    .locals 9
    .param p1, "isShow"    # Z

    .prologue
    const v8, 0x7f090246

    const/4 v3, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 457
    const-string v4, "VideoCallCardBaseFragment"

    const-string v5, "showEndcallContactBtn"

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 458
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-nez v4, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    if-nez p1, :cond_2

    .line 460
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 465
    :cond_2
    const/16 v4, 0x40

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 466
    const-string v3, "VideoCallCardBaseFragment"

    const-string v4, "showEndcallContactBtn - mEndCallContactBtn.setVisibility(View.GONE) for knox"

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 467
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 472
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 474
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_4

    .line 475
    const-string v3, "VideoCallCardBaseFragment"

    const-string v4, "showEndcallContactBtn : call = null"

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 479
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

    .line 480
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    const/4 v2, 0x1

    .line 482
    .local v2, "isNumberExists":Z
    if-eqz v1, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/incallui/util/InCallUtils;->isShowContactMenu(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 484
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 487
    :cond_5
    iget-boolean v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v4, :cond_6

    .line 488
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 491
    :cond_6
    iget v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    iget v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    .line 493
    :cond_7
    const/4 v2, 0x0

    .line 497
    :cond_8
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v4, :cond_9

    .line 498
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v2, :cond_c

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 499
    :cond_9
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->isEnabledEndCallContactButton()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 494
    :cond_a
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v4, :cond_b

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    .line 495
    :cond_b
    const/4 v2, 0x0

    goto :goto_1

    .line 498
    :cond_c
    const/4 v3, 0x4

    goto :goto_2
.end method

.method public showForwardIndicator(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 537
    return-void
.end method

.method public showHdAudioIndicator(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 532
    return-void
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 542
    return-void
.end method

.method public showMenu(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 775
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->showMenu(Z)V

    .line 776
    return-void
.end method

.method protected showMergeNotAllowDialog()V
    .locals 3

    .prologue
    .line 1217
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1218
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0905aa

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1219
    const v1, 0x7f090046

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/fragment/VideoCallCardBaseFragment$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment$1;-><init>(Lcom/android/incallui/fragment/VideoCallCardBaseFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1224
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1225
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1226
    return-void
.end method

.method public showModifyStateInfoBanner(ZLjava/lang/String;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 873
    return-void
.end method

.method public showModifySwitchButtonAM()V
    .locals 0

    .prologue
    .line 1044
    return-void
.end method

.method public showNoteSentToast()V
    .locals 0

    .prologue
    .line 567
    return-void
.end method

.method public showRecordingInfo(ZZ)V
    .locals 0
    .param p1, "near"    # Z
    .param p2, "show"    # Z

    .prologue
    .line 750
    return-void
.end method

.method protected showSecondaryContainer(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 1214
    return-void
.end method

.method public showVideoStateMessageUi(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1099
    return-void
.end method

.method public showVolumeButton(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 781
    return-void
.end method

.method protected updateBgColorForCallState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const v4, 0x7f0200d3

    const/4 v3, 0x2

    .line 1460
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 1461
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-ne v3, p1, :cond_1

    .line 1508
    :cond_0
    :goto_0
    return-void

    .line 1466
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

    .line 1468
    :cond_2
    const-string v2, "VideoCallCardBaseFragment"

    const-string v3, "not update callend in hold status"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1472
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 1499
    :pswitch_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1503
    :cond_4
    :goto_1
    if-eqz v0, :cond_0

    .line 1504
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    .line 1505
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    .line 1506
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    goto :goto_0

    .line 1475
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f019d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryBannerColor:I

    .line 1476
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryBannerColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 1480
    :pswitch_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1483
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_5

    .line 1484
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0187

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryBannerColor:I

    .line 1488
    :goto_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryBannerColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 1486
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0186

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryBannerColor:I

    goto :goto_2

    .line 1492
    :pswitch_4
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const/4 v1, 0x1

    .line 1493
    .local v1, "mEmergencyMode":Z
    :goto_3
    if-nez v1, :cond_4

    .line 1494
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryBannerColor:I

    .line 1495
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryBannerColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 1492
    .end local v1    # "mEmergencyMode":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 1472
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
    .line 1089
    return-void
.end method

.method public updateCallerInfoOrgView(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1104
    return-void
.end method

.method protected updateCdnipVisibleForCallState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCdnipNumberLayout:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1450
    :cond_1
    const/4 v0, 0x4

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCdnipNumber:Landroid/widget/TextView;

    .line 1451
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1452
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCdnipNumber:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1453
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCdnipNumberLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1455
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
    .line 1423
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCnapNameLayout:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1432
    :cond_0
    :goto_0
    return-void

    .line 1425
    :cond_1
    const/4 v0, 0x4

    if-eq v0, p1, :cond_2

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCnapName:Landroid/widget/TextView;

    .line 1426
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1427
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCnapName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1428
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCnapNameLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1430
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCnapNameLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateDisplayChildCallChanged()V
    .locals 0

    .prologue
    .line 831
    return-void
.end method

.method public updateEri()V
    .locals 0

    .prologue
    .line 1059
    return-void
.end method

.method public updateFullscreenMode(Z)V
    .locals 0
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 1094
    return-void
.end method

.method public updateJanskyInfo()V
    .locals 0

    .prologue
    .line 1114
    return-void
.end method

.method protected updateKTTwoPhoneLayout(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1572
    const-string v1, "VideoCallCardBaseFragment"

    const-string v2, "updateKTTwoPhoneLayout"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1574
    .local v0, "nameMarginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1575
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTPersonal:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTBusiness:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 1599
    :cond_0
    :goto_0
    return-void

    .line 1579
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateTwoPhoneColor(I)V

    .line 1580
    const/16 v1, 0x9

    if-eq p1, v1, :cond_5

    const/16 v1, 0xa

    if-eq p1, v1, :cond_5

    .line 1581
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

    .line 1582
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1583
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1598
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1584
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 1585
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1586
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1587
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1589
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1590
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1594
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1595
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1596
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method protected updateLayoutForCallState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1280
    return-void
.end method

.method public updatePhotoringState(Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V
    .locals 0
    .param p1, "stae"    # Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;
    .param p2, "block"    # I

    .prologue
    .line 826
    return-void
.end method

.method protected updatePrimaryCallElapsedTimeArea(ZLjava/lang/String;)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 1658
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1659
    .local v0, "primary":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1660
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1661
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1662
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1663
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1676
    :cond_0
    :goto_0
    return-void

    .line 1667
    :cond_1
    if-eqz p1, :cond_2

    .line 1668
    iput-object p2, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mLastestCallTime:Ljava/lang/String;

    .line 1669
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1670
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1671
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getCallTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setTTS(JLandroid/view/View;)V

    goto :goto_0

    .line 1673
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

    .line 1511
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

    .line 1513
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1531
    :cond_1
    :goto_0
    return-void

    .line 1514
    :cond_2
    const/16 v0, 0x9

    if-eq v0, p1, :cond_3

    if-ne v5, p1, :cond_1

    .line 1515
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1516
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1518
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1519
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1520
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1522
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallBannerContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1523
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1524
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1526
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1527
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1528
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateRecordTime(Z)V
    .locals 0
    .param p1, "isPaused"    # Z

    .prologue
    .line 821
    return-void
.end method

.method public updateSmartCallImageInfo()V
    .locals 0

    .prologue
    .line 1074
    return-void
.end method

.method public updateSmartCallInfo(Lcom/android/incallui/Call;Z)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isTimeout"    # Z

    .prologue
    .line 1069
    return-void
.end method

.method public updateSmartCallProviderImageInfo()V
    .locals 0

    .prologue
    .line 1079
    return-void
.end method

.method protected updateTextColor(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const v4, 0x7f0f011c

    const v3, 0x7f0f0136

    const v2, 0x7f0f0133

    .line 1547
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

    .line 1569
    :cond_0
    :goto_0
    return-void

    .line 1551
    :cond_1
    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 1552
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1553
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1554
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1555
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1556
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1557
    :cond_3
    const/16 v0, 0x8

    if-ne p1, v0, :cond_4

    .line 1558
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mTextColorOnHold:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1559
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mTextColorOnHold:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1560
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mTextColorOnHold:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1561
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mTextColorOnHold:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1563
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1564
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1565
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1566
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1567
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

    .line 1602
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTPersonal:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTBusiness:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 1612
    :cond_0
    :goto_0
    return-void

    .line 1605
    :cond_1
    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 1606
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1607
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 1609
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1610
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0
.end method

.method public updateVolteView(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1084
    return-void
.end method
