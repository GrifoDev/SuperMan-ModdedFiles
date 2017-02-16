.class public Lcom/android/incallui/fragment/VideoCallCardFragment;
.super Lcom/android/incallui/fragment/CallCardFragment;
.source "VideoCallCardFragment.java"

# interfaces
.implements Lcom/android/incallui/CallCardUi;
.implements Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallCardFragment"


# instance fields
.field protected mCdnipNumber:Landroid/widget/TextView;

.field protected mCdnipNumberLayout:Landroid/view/View;

.field protected mCityId:Landroid/widget/TextView;

.field protected mCnapName:Landroid/widget/TextView;

.field protected mCnapNameLayout:Landroid/view/View;

.field private mEndCallButtonStub:Landroid/view/ViewStub;

.field protected mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

.field protected mIncomingHideMeButton:Landroid/widget/ToggleButton;

.field protected mIncomingHideMeLayer:Landroid/view/View;

.field private mKTBusiness:Landroid/widget/ImageView;

.field private mKTPersonal:Landroid/widget/ImageView;

.field private mKTtwophoneStub:Landroid/view/ViewStub;

.field mPrimaryBannerColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryBannerColor:I

    return-void
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 882
    if-nez p2, :cond_1

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 884
    .local v0, "eventText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 885
    .local v1, "size":I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 887
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 888
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
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

    .line 772
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_2

    .line 773
    :cond_0
    const-string v4, "getCallStateLabelFromState getView() or context is empty: "

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 774
    const/4 v0, 0x0

    .line 858
    :cond_1
    :goto_0
    :pswitch_0
    return-object v0

    .line 777
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 778
    .local v1, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 780
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    if-eqz p5, :cond_3

    move v3, v4

    .line 781
    .local v3, "isSpecialCall":Z
    :goto_1
    if-eqz v3, :cond_4

    if-nez p6, :cond_4

    move v2, v4

    .line 783
    .local v2, "isAccount":Z
    :goto_2
    packed-switch p1, :pswitch_data_0

    .line 856
    :pswitch_1
    const-string v4, "VideoCallCardFragment"

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

    .line 780
    goto :goto_1

    .restart local v3    # "isSpecialCall":Z
    :cond_4
    move v2, v5

    .line 781
    goto :goto_2

    .line 804
    .restart local v2    # "isAccount":Z
    :pswitch_2
    if-eqz v3, :cond_5

    .line 805
    const v6, 0x7f090017

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 807
    :cond_5
    sget v4, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 808
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 809
    const v4, 0x7f0900f3

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 811
    :cond_6
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    .line 814
    goto :goto_0

    .line 816
    :pswitch_3
    const v4, 0x7f090022

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 817
    goto :goto_0

    .line 820
    :pswitch_4
    if-eqz v2, :cond_7

    .line 821
    const v6, 0x7f090038

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 825
    :cond_7
    sget v4, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 826
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 827
    const v4, 0x7f090136

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 829
    :cond_8
    const v4, 0x7f090137

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 831
    :cond_9
    const v4, 0x7f090138

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 834
    goto/16 :goto_0

    .line 845
    :pswitch_5
    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 846
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isCSVideoCall()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "NO_ANSWER"

    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 847
    const v4, 0x7f0901e7

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 848
    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 849
    const v4, 0x7f090018

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 853
    :pswitch_6
    const v4, 0x7f09001b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 854
    goto/16 :goto_0

    .line 783
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
    .line 755
    const-string v1, "VideoCallCardFragment"

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

    .line 756
    if-eqz p1, :cond_0

    const v0, 0x7f020128

    .line 757
    .local v0, "resId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 756
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x7f02012c

    goto :goto_0
.end method

.method private getConferenceString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 750
    const v0, 0x7f09001b

    .line 751
    .local v0, "resId":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isEnabledEndCallContactButton()Z
    .locals 2

    .prologue
    .line 720
    const/4 v0, 0x1

    .line 721
    .local v0, "enabled":Z
    const-string v1, "support_twophone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 722
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isTwoPhoneUser(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 723
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isTwoPhoneUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 724
    :cond_1
    const/4 v0, 0x0

    .line 727
    :cond_2
    return v0
.end method

.method private menuButtonClicked()V
    .locals 3

    .prologue
    .line 1009
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-nez v1, :cond_0

    .line 1022
    :goto_0
    return-void

    .line 1010
    :cond_0
    const-string v1, "VideoCallCardFragment"

    const-string v2, "menuButtonClicked"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 1012
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v1, :cond_2

    .line 1013
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v1}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1014
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    goto :goto_0

    .line 1016
    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->showInCallMenu()V

    .line 1017
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_more()V

    goto :goto_0

    .line 1020
    :cond_2
    const-string v1, "VideoCallCardFragment"

    const-string v2, "activity or mInCallMenu is null"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private needToPhoneNumberLocator()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1104
    const/4 v1, 0x0

    .line 1105
    .local v1, "isNeedToPNL":Z
    const-string v7, "phone_number_locator"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1106
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1107
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 1108
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    .line 1109
    .local v4, "state":I
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isPhoneNumberLocatorOn()Z

    move-result v2

    .line 1110
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

    .line 1111
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

    .line 1112
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

    .line 1113
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    move v1, v5

    .line 1116
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

    .line 1110
    goto :goto_0

    .restart local v3    # "needToShow":Z
    :cond_3
    move v3, v6

    .line 1111
    goto :goto_1

    :cond_4
    move v1, v6

    .line 1113
    goto :goto_2
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 621
    if-nez p1, :cond_0

    .line 625
    :goto_0
    return-void

    .line 624
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setPrimaryCallMoreMenu()V
    .locals 2

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 596
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->needToShowMenu()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->setPrimaryCallMenuForDialpad(Z)V

    .line 599
    :cond_0
    return-void
.end method

.method private setPrimaryImageForVideo(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 212
    return-void
.end method

.method private toggleIncomingHideShow(I)V
    .locals 1
    .param p1, "callState"    # I

    .prologue
    .line 911
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 912
    const v0, 0x7f0900c4

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    .line 913
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateIncomingHideButton()V

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 918
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 919
    invoke-static {p1}, Lcom/android/incallui/util/VideoCallAppLogging;->hideMe(I)V

    .line 920
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage()V

    .line 925
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateIncomingHideButton()V

    goto :goto_0

    .line 922
    :cond_2
    invoke-static {p1}, Lcom/android/incallui/util/VideoCallAppLogging;->showMe(I)V

    .line 923
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendLiveVideo()V

    goto :goto_1
.end method

.method private updateCallStateLabelForCallState(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "callStateLabel"    # Ljava/lang/CharSequence;
    .param p3, "connectionIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 145
    iput-object p2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->manageCallEndTimeBlink(I)V

    .line 147
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->removeMessageForBlinkTime()V

    .line 150
    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 151
    iget-object p2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    .line 154
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    const-string v0, "VideoCallCardFragment"

    const-string v1, "not update stateLabel for blink call time"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_0
    if-eqz p3, :cond_2

    const-string v0, "feature_multisim"

    .line 162
    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    :goto_1
    return-void

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 169
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 172
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 173
    const-string v0, "VideoCallCardFragment"

    const-string v1, "not update stateLabel for blink call time"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 181
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 175
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updatePhotoViewForCallState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/16 v3, 0x8

    .line 674
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mOldCallState:I

    if-eq v2, v3, :cond_0

    if-eq p1, v3, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 676
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 677
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 679
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_1

    .line 680
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 684
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_1
    return-void
.end method


# virtual methods
.method protected dismissInCallMenu()V
    .locals 1

    .prologue
    .line 1120
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->dismissInCallMenu()V

    .line 1122
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->dismissDialogs()V

    .line 1124
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v4, 0x1

    .line 862
    const-string v2, "VideoCallCardFragment"

    const-string v3, "dispatchPopulateAccessibilityEvent"

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 863
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    .line 864
    .local v1, "inCallState":Lcom/android/incallui/InCallPresenter$InCallState;
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getCallCardPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    .line 865
    .local v0, "cardPresenter":Lcom/android/incallui/CallCardPresenter;
    if-eqz v0, :cond_0

    .line 866
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/incallui/CallCardPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 868
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 869
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VideoCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 870
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VideoCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 871
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VideoCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 878
    :goto_0
    return v4

    .line 874
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VideoCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 875
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VideoCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 876
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VideoCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1035
    new-instance v0, Lcom/android/incallui/InVideoCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InVideoCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;
    .locals 2

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1042
    new-instance v0, Lcom/android/incallui/InVideoCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InVideoCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    .prologue
    .line 1049
    const/high16 v0, 0x7f120000

    return v0
.end method

.method protected getSecUiAdapter()Lcom/android/incallui/UiAdapter;
    .locals 1

    .prologue
    .line 1029
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected inflateCdnipLayout()V
    .locals 0

    .prologue
    .line 1180
    return-void
.end method

.method protected inflateCnapLayout()V
    .locals 0

    .prologue
    .line 1152
    return-void
.end method

.method protected isCdnipExist()Z
    .locals 1

    .prologue
    .line 1191
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    .line 1192
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1193
    const/4 v0, 0x1

    .line 1195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCnapExist()Z
    .locals 1

    .prologue
    .line 1183
    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    .line 1184
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1185
    const/4 v0, 0x1

    .line 1187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInExceptionArea(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1199
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1200
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 1201
    .local v0, "pos":[I
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v0}, Landroid/widget/ToggleButton;->getLocationOnScreen([I)V

    .line 1202
    aget v3, v0, v2

    if-lt p1, v3, :cond_0

    aget v3, v0, v2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    .line 1203
    invoke-virtual {v4}, Landroid/widget/ToggleButton;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p1, v3, :cond_0

    aget v3, v0, v1

    if-lt p2, v3, :cond_0

    aget v3, v0, v1

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    .line 1205
    invoke-virtual {v4}, Landroid/widget/ToggleButton;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p2, v3, :cond_0

    .line 1210
    .end local v0    # "pos":[I
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public isPrimaryVisible()Z
    .locals 2

    .prologue
    .line 610
    const/4 v0, 0x0

    .line 611
    .local v0, "visible":Z
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 612
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 614
    :cond_0
    :goto_0
    return v0

    .line 612
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needToShowMenu()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1059
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 1060
    .local v1, "call":Lcom/android/incallui/Call;
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->needToShowMenu()Z

    move-result v0

    .line 1062
    .local v0, "bShowMenuForVT":Z
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1063
    if-eqz v1, :cond_4

    .line 1064
    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1065
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_4

    .line 1066
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4

    move v0, v2

    .line 1087
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1088
    const/4 v0, 0x0

    .line 1090
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1091
    const/4 v0, 0x0

    .line 1094
    :cond_1
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1095
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isOutgoingVideoCall()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    .line 1098
    :cond_3
    const-string v2, "VideoCallCardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needToShowMenu - bShowMenuForVT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    return v0

    :cond_4
    move v0, v3

    .line 1066
    goto :goto_0

    .line 1068
    :cond_5
    if-eqz v1, :cond_7

    .line 1069
    invoke-virtual {v1}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1070
    invoke-virtual {v1}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1071
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_7

    :cond_6
    move v0, v2

    :goto_1
    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v8, 0x7f090092

    const/4 v7, 0x0

    .line 962
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    .line 963
    .local v2, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 964
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 965
    .local v3, "id":I
    const-string v4, "VideoCallCardFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick(View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    sparse-switch v3, :sswitch_data_0

    .line 1002
    const-string v4, "VideoCallCardFragment"

    const-string v5, "onClick: call super onClick"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onClick(Landroid/view/View;)V

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 968
    :sswitch_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->menuButtonClicked()V

    goto :goto_0

    .line 971
    :sswitch_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090292

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 972
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->endCall_contactAddTo()V

    .line 974
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 975
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-static {v4, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 977
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->viewContactClicked()V

    goto :goto_0

    .line 980
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->endCall_contactView()V

    .line 982
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 983
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-static {v4, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 985
    :cond_3
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->addToContactClicked()V

    goto :goto_0

    .line 991
    :sswitch_2
    if-eqz v0, :cond_0

    .line 992
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 993
    .local v1, "callState":I
    const/4 v4, 0x4

    if-eq v1, v4, :cond_4

    const/4 v4, 0x6

    if-ne v1, v4, :cond_5

    .line 994
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->toggleIncomingHideShow(I)V

    .line 996
    :cond_5
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 997
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateBgColorForCallState(I)V

    goto :goto_0

    .line 966
    :sswitch_data_0
    .sparse-switch
        0x7f10028e -> :sswitch_0
        0x7f100324 -> :sswitch_1
        0x7f10038f -> :sswitch_2
        0x7f100390 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/CallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 113
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoSessionEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;)V

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "parent":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 187
    const-string v0, "onDestroy..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroy()V

    .line 189
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroyView()V

    .line 194
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoSessionEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;)V

    .line 195
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->dismissInCallMenu()V

    .line 199
    return-void
.end method

.method public onVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1026
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/CallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 122
    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const v0, 0x7f10024a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTtwophoneStub:Landroid/view/ViewStub;

    .line 124
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTtwophoneStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTtwophoneStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 126
    const v0, 0x7f100130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTBusiness:Landroid/widget/ImageView;

    .line 127
    const v0, 0x7f100131

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTPersonal:Landroid/widget/ImageView;

    .line 131
    :cond_0
    const v0, 0x7f10033a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallButtonStub:Landroid/view/ViewStub;

    .line 132
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 134
    const v0, 0x7f100324

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    .line 140
    :cond_1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    .line 141
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    .line 142
    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 13
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
    .line 494
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v7, 0x1

    .local v7, "isGatewayCall":Z
    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 495
    invoke-direct/range {v1 .. v7}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v9

    .line 497
    .local v9, "callStateLabel":Ljava/lang/CharSequence;
    const-string v1, "VideoCallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] DisconnectCause["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Landroid/telecom/DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] gateway["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateLayoutForCallState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mOldCallState:I

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 564
    :cond_0
    :goto_2
    return-void

    .line 494
    .end local v7    # "isGatewayCall":Z
    .end local v9    # "callStateLabel":Ljava/lang/CharSequence;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 500
    .restart local v7    # "isGatewayCall":Z
    .restart local v9    # "callStateLabel":Ljava/lang/CharSequence;
    :catch_0
    move-exception v10

    .line 501
    .local v10, "e":Ljava/lang/IllegalStateException;
    const-string v1, "VideoCallCardFragment"

    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 509
    .end local v10    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 510
    const-string v1, "skip setCallState : not update in idle state"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 519
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v12

    .line 520
    .local v12, "incomingCall":Lcom/android/incallui/Call;
    if-eqz v12, :cond_4

    invoke-static {v12}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 521
    const-string v1, "skip setCallState : not update in incoming voice call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setVisible(Z)V

    goto :goto_2

    .line 526
    :cond_4
    const-string v1, "ims_call_message"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 527
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v8

    .line 528
    .local v8, "call":Lcom/android/incallui/Call;
    if-eqz v8, :cond_6

    .line 529
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v11

    .line 530
    .local v11, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v11, :cond_6

    iget-object v1, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 531
    invoke-virtual {v8}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_b

    .line 532
    :cond_5
    iget-object v1, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setCnapName(Ljava/lang/String;)V

    .line 540
    .end local v8    # "call":Lcom/android/incallui/Call;
    .end local v11    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_6
    :goto_3
    const-string v1, "cnap_supplementary_service"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 541
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateCnapVisibleForCallState(I)V

    .line 544
    :cond_7
    const-string v1, "cdnip_supplementary_service"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 545
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateCdnipVisibleForCallState(I)V

    .line 548
    :cond_8
    move-object/from16 v0, p6

    invoke-direct {p0, p1, v9, v0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateCallStateLabelForCallState(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 549
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateBgColorForCallState(I)V

    .line 550
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updatePhotoViewForCallState(I)V

    .line 551
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updatePrimaryVisibleForCallState(I)V

    .line 552
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateIncomingHideShowButtonForCallState(I)V

    .line 553
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateHideMeLayout(I)V

    .line 554
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateTextColor(I)V

    .line 556
    const-string v1, "support_twophone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 557
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateKTTwoPhoneLayout(I)V

    .line 559
    :cond_9
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mOldCallState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    if-ne p1, v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    .line 560
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    .line 561
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    :cond_a
    iput p1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mOldCallState:I

    goto/16 :goto_2

    .line 533
    .restart local v8    # "call":Lcom/android/incallui/Call;
    .restart local v11    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_b
    iget-object v1, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 534
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setCnapName(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected setCdnipNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "numer"    # Ljava/lang/String;

    .prologue
    .line 1155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1156
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->inflateCdnipLayout()V

    .line 1157
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setCnapName(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1128
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->inflateCnapLayout()V

    .line 1129
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 9
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "isConference"    # Z
    .param p5, "canManageConference"    # Z
    .param p6, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p7, "isWorkCall"    # Z

    .prologue
    .line 399
    const-string v7, "VideoCallCardFragment"

    const-string v8, "Setting primary call"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/4 v3, 0x0

    .line 402
    .local v3, "label":Ljava/lang/String;
    const/4 v4, 0x0

    .line 403
    .local v4, "photo":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 404
    .local v2, "isSipCall":Z
    const/4 v1, 0x0

    .line 405
    .local v1, "isPersonalPhotoAvailable":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v7}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v5

    .line 407
    .local v5, "primaryCall":Lcom/android/incallui/Call;
    if-eqz p6, :cond_0

    .line 408
    iget-object v3, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 409
    iget-object v4, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 410
    iget-boolean v2, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    .line 411
    iget-boolean v1, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    .line 413
    :cond_0
    if-eqz p4, :cond_7

    .line 414
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getConferenceString()Ljava/lang/String;

    move-result-object p2

    .line 415
    invoke-direct {p0, p5}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 416
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 417
    const/4 p3, 0x0

    .line 435
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 436
    const/4 p3, 0x0

    .line 440
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 441
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 442
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 443
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->needToPhoneNumberLocator()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 444
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 462
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0, v4, v1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 466
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setPrimaryCallMoreMenu()V

    .line 468
    const-string v7, "cnap_supplementary_service"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 469
    if-eqz p6, :cond_4

    .line 470
    iget-object v7, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setCnapName(Ljava/lang/String;)V

    .line 473
    :cond_4
    const-string v7, "cdnip_supplementary_service"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 474
    if-eqz p6, :cond_5

    .line 475
    iget-object v7, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setCdnipNumber(Ljava/lang/String;)V

    .line 477
    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6

    .line 478
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updatePrimaryCallElapsedTimeArea(ZLjava/lang/String;)V

    .line 480
    :cond_6
    return-void

    .line 418
    :cond_7
    if-eqz p6, :cond_1

    iget-boolean v7, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v7, :cond_1

    .line 420
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v0

    .line 422
    .local v0, "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    if-eqz v0, :cond_1

    .line 423
    iget-object v7, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 424
    iget-object p1, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 425
    iget-object p2, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    .line 426
    const/4 p3, 0x0

    .line 428
    :cond_8
    iget-object v7, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    .line 429
    iget-object v4, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    .line 430
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 446
    .end local v0    # "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    :cond_9
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 449
    :cond_a
    const/4 v6, 0x1

    .line 450
    .local v6, "show":Z
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 451
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 452
    const/4 v6, 0x0

    .line 455
    :cond_b
    if-eqz v6, :cond_c

    .line 456
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 458
    :cond_c
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 568
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updatePrimaryCallElapsedTimeArea(ZLjava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    .line 571
    return-void
.end method

.method public setPrimaryCityId(Ljava/lang/String;)V
    .locals 2
    .param p1, "cityId"    # Ljava/lang/String;

    .prologue
    .line 305
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
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

    .line 308
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCityId:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 309
    const-string v0, "mCityId is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCityId:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCityId:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCityId:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 321
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 8
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 256
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 257
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setPrimaryImageForVideo(Landroid/graphics/drawable/Drawable;Z)V

    .line 261
    move v2, p2

    .line 262
    .local v2, "showPhotoContainer":Z
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0203a5

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 264
    const/4 v2, 0x1

    .line 267
    :cond_2
    if-eqz p1, :cond_4

    .line 268
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v5, :cond_8

    .line 269
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0201b0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 282
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v3, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 285
    :cond_4
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v6, 0x4

    if-eq v3, v6, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v6, 0x6

    if-eq v3, v6, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v6, 0xd

    if-ne v3, v6, :cond_a

    :cond_5
    const/4 v3, 0x1

    :goto_2
    and-int/2addr v2, v3

    .line 287
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 288
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 289
    const/4 v2, 0x0

    .line 293
    :cond_6
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 294
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableIMSConferenceInfo()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 295
    const/4 v2, 0x0

    .line 299
    :cond_7
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v2, :cond_b

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 271
    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a034a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 272
    .local v1, "diameter":I
    invoke-static {p1, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 273
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 274
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020247

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 276
    :cond_9
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020245

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 277
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 278
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020246

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .end local v1    # "diameter":I
    :cond_a
    move v3, v4

    .line 285
    goto :goto_2

    :cond_b
    move v4, v5

    .line 299
    goto :goto_3
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    const/4 v3, 0x0

    const v4, 0x7f0a00be

    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_1
    :goto_0
    return-void

    .line 220
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_4
    const/4 v0, 0x0

    .line 225
    .local v0, "nameDirection":I
    if-eqz p2, :cond_b

    .line 226
    const/4 v0, 0x3

    .line 227
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 228
    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 229
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 230
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    .line 231
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 238
    :cond_8
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 241
    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 242
    .local v1, "nameTextSize":I
    if-eqz p2, :cond_a

    const-string v2, "geo_description_disable"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 243
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->needToPhoneNumberLocator()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 244
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 249
    :cond_a
    :goto_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 250
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v3, 0x0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    .line 234
    .end local v1    # "nameTextSize":I
    :cond_b
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 235
    :cond_c
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 246
    .restart local v1    # "nameTextSize":I
    :cond_d
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    goto :goto_2
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 336
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 382
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->needToPhoneNumberLocator()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 338
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-static {v1, v2, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 339
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    if-eqz v0, :cond_1

    .line 341
    const-string v1, "VideoCallCardFragment"

    const-string v2, "PNL with empty number"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneNumberLocator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 349
    :cond_2
    if-eqz v0, :cond_3

    .line 350
    const-string v1, "VideoCallCardFragment"

    const-string v2, "PNL with number"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

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

    .line 355
    :goto_1
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 356
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    :goto_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    goto/16 :goto_0

    .line 353
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 359
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 366
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 367
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 370
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 372
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :goto_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    goto/16 :goto_0

    .line 375
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public setPrimaryVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 603
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 203
    if-eqz p1, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showEndcallContactBtn(Z)V
    .locals 7
    .param p1, "isShow"    # Z

    .prologue
    const v6, 0x7f090246

    const/4 v3, 0x0

    .line 687
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-nez v4, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    if-nez p1, :cond_2

    .line 689
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 692
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 694
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_3

    .line 695
    const-string v3, "VideoCallCardFragment"

    const-string v4, "showEndcallContactBtn : call = null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 699
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 700
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    const/4 v2, 0x1

    .line 702
    .local v2, "isNumberExists":Z
    if-eqz v1, :cond_0

    .line 703
    iget-boolean v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v4, :cond_4

    .line 704
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 707
    :cond_4
    iget v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    iget v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    .line 709
    :cond_5
    const/4 v2, 0x0

    .line 713
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v4, :cond_7

    .line 714
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v2, :cond_a

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 715
    :cond_7
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->isEnabledEndCallContactButton()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 710
    :cond_8
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    .line 711
    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    .line 714
    :cond_a
    const/4 v3, 0x4

    goto :goto_2
.end method

.method public showIncomingHideMeButton(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 895
    if-eqz p1, :cond_1

    .line 896
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 900
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateIncomingHideButton()V

    .line 902
    :cond_0
    return-void

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showMenu(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 1054
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->showMenu(Z)V

    .line 1055
    return-void
.end method

.method public showRecordingInfo(ZZ)V
    .locals 0
    .param p1, "near"    # Z
    .param p2, "show"    # Z

    .prologue
    .line 607
    return-void
.end method

.method protected updateBgColorForCallState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const v3, 0x7f0200d3

    .line 635
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 636
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-ne p1, v1, :cond_3

    .line 643
    :cond_2
    const-string v1, "VideoCallCardFragment"

    const-string v2, "not update callend in hold status"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 647
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 662
    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 666
    :goto_1
    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    .line 668
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    .line 669
    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    goto :goto_0

    .line 650
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f019d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryBannerColor:I

    .line 651
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryBannerColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 655
    :pswitch_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 658
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0186

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryBannerColor:I

    .line 659
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryBannerColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateCallCard(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 629
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateBgColorForCallState(I)V

    .line 632
    :cond_0
    return-void
.end method

.method protected updateCdnipVisibleForCallState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumberLayout:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1170
    :cond_1
    const/4 v0, 0x4

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    .line 1171
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1172
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1173
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumberLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1175
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumberLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateCnapVisibleForCallState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapNameLayout:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    const/4 v0, 0x4

    if-eq v0, p1, :cond_2

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    .line 1143
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1144
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1145
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapNameLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1147
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapNameLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateHideMeLayout(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 618
    return-void
.end method

.method public updateIncomingHideButton()V
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 906
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 908
    :cond_0
    return-void

    .line 906
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateIncomingHideShowButtonForCallState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 957
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->showIncomingHideMeButton(Z)V

    .line 958
    return-void

    .line 957
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateKTTwoPhoneLayout(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1214
    const-string v1, "VideoCallCardFragment"

    const-string v2, "updateKTTwoPhoneLayout"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1216
    .local v0, "nameMarginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1217
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTPersonal:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTBusiness:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateTwoPhoneColor(I)V

    .line 1222
    const/16 v1, 0x9

    if-eq p1, v1, :cond_5

    const/16 v1, 0xa

    if-eq p1, v1, :cond_5

    .line 1223
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1224
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1225
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1240
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1226
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 1227
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1228
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1229
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1231
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1232
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1236
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1237
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1238
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method protected updateLayoutForCallState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 930
    return-void
.end method

.method protected updatePrimaryCallElapsedTimeArea(ZLjava/lang/String;)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 574
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 575
    .local v0, "primary":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 576
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    if-eqz p1, :cond_2

    .line 584
    iput-object p2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    .line 585
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getCallTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setTTS(JLandroid/view/View;)V

    goto :goto_0

    .line 589
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

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

    .line 934
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mOldCallState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mOldCallState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mOldCallState:I

    if-ne v0, v5, :cond_2

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 936
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 954
    :cond_1
    :goto_0
    return-void

    .line 937
    :cond_2
    const/16 v0, 0x9

    if-eq v0, p1, :cond_3

    if-ne v5, p1, :cond_1

    .line 938
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 939
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 941
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 942
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 943
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 945
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallBannerContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 946
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 947
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 949
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 950
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 951
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateTextColor(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const v2, 0x7f0f0133

    const v3, 0x7f0f0136

    .line 731
    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f011c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 733
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 734
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 735
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 747
    :goto_0
    return-void

    .line 736
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 737
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 738
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 739
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 740
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 742
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 743
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 744
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 745
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected updateTwoPhoneColor(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const v3, 0x7f0f0136

    const v2, 0x7f0f0133

    .line 1244
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTPersonal:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTBusiness:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 1254
    :cond_0
    :goto_0
    return-void

    .line 1247
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 1248
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1249
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 1251
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1252
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0
.end method
