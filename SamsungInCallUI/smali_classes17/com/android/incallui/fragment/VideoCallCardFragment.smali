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

    invoke-direct {p0}, Lcom/android/incallui/fragment/CallCardFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryBannerColor:I

    return-void
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_0
    const-string v4, "getCallStateLabelFromState getView() or context is empty: "

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    :goto_0
    :pswitch_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p5, :cond_3

    move v3, v4

    :goto_1
    if-eqz v3, :cond_4

    if-nez p6, :cond_4

    move v2, v4

    :goto_2
    packed-switch p1, :pswitch_data_0

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

    :cond_3
    move v3, v5

    goto :goto_1

    :cond_4
    move v2, v5

    goto :goto_2

    :pswitch_2
    if-eqz v3, :cond_5

    const v6, 0x7f090017

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget v4, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0900f5

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v4, 0x7f090022

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    if-eqz v2, :cond_7

    const v6, 0x7f090038

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    sget v4, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x7f09013c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const v4, 0x7f09013d

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const v4, 0x7f09013e

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isCSVideoCall()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "NO_ANSWER"

    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    const v4, 0x7f0901ed

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f090018

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    const v4, 0x7f09001b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

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

    if-eqz p1, :cond_0

    const v0, 0x7f020132

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_0
    const v0, 0x7f020136

    goto :goto_0
.end method

.method private getConferenceString()Ljava/lang/String;
    .locals 3

    const v0, 0x7f09001b

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

    const/4 v0, 0x1

    const-string v1, "support_twophone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isTwoPhoneUser(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isTwoPhoneUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method private menuButtonClicked()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "VideoCallCardFragment"

    const-string v2, "menuButtonClicked"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v1}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->showInCallMenu()V

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_more()V

    goto :goto_0

    :cond_2
    const-string v1, "VideoCallCardFragment"

    const-string v2, "activity or mInCallMenu is null"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private needToPhoneNumberLocator()Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v7, "phone_number_locator"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isPhoneNumberLocatorOn()Z

    move-result v2

    const/4 v7, 0x4

    if-eq v7, v4, :cond_0

    const/4 v7, 0x5

    if-eq v7, v4, :cond_0

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v3, v5

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

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    move v1, v5

    :cond_1
    :goto_2
    return v1

    :cond_2
    move v3, v6

    goto :goto_0

    :cond_3
    move v3, v6

    goto :goto_1

    :cond_4
    move v1, v6

    goto :goto_2
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setPrimaryCallMoreMenu()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->needToShowMenu()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->setPrimaryCallMenuForDialpad(Z)V

    :cond_0
    return-void
.end method

.method private setPrimaryImageForVideo(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private toggleIncomingHideShow(I)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0900c6

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateIncomingHideButton()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/incallui/util/VideoCallAppLogging;->hideMe(I)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateIncomingHideButton()V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/incallui/util/VideoCallAppLogging;->showMe(I)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendLiveVideo()V

    goto :goto_1
.end method

.method private updateCallStateLabelForCallState(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    iput-object p2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->manageCallEndTimeBlink(I)V

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->removeMessageForBlinkTime()V

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    iget-object p2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "VideoCallCardFragment"

    const-string v1, "not update stateLabel for blink call time"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p3, :cond_2

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->isBlinkForEndCall(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "VideoCallCardFragment"

    const-string v1, "not update stateLabel for blink call time"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updatePhotoViewForCallState(I)V
    .locals 5

    const/16 v3, 0x8

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mOldCallState:I

    if-eq v2, v3, :cond_0

    if-eq p1, v3, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

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

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected dismissInCallMenu()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->dismissInCallMenu()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->dismissDialogs()V

    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const-string v2, "VideoCallCardFragment"

    const-string v3, "dispatchPopulateAccessibilityEvent"

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getCallCardPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/incallui/CallCardPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VideoCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VideoCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VideoCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    :goto_0
    return v4

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VideoCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VideoCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/fragment/VideoCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/incallui/InVideoCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InVideoCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/incallui/InVideoCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InVideoCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    const/high16 v0, 0x7f120000

    return v0
.end method

.method protected getSecUiAdapter()Lcom/android/incallui/UiAdapter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected inflateCdnipLayout()V
    .locals 0

    return-void
.end method

.method protected inflateCnapLayout()V
    .locals 0

    return-void
.end method

.method protected isCdnipExist()Z
    .locals 1

    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCnapExist()Z
    .locals 1

    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInExceptionArea(II)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    new-array v0, v3, [I

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v0}, Landroid/widget/ToggleButton;->getLocationOnScreen([I)V

    aget v3, v0, v2

    if-lt p1, v3, :cond_0

    aget v3, v0, v2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p1, v3, :cond_0

    aget v3, v0, v1

    if-lt p2, v3, :cond_0

    aget v3, v0, v1

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public isPrimaryVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needToShowMenu()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->needToShowMenu()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4

    move v0, v2

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isOutgoingVideoCall()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

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

    return v0

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v4

    if-nez v4, :cond_7

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

    const v8, 0x7f090094

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

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

    sparse-switch v3, :sswitch_data_0

    const-string v4, "VideoCallCardFragment"

    const-string v5, "onClick: call super onClick"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->onClick(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->menuButtonClicked()V

    goto :goto_0

    :sswitch_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09029e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->endCall_contactAddTo()V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-static {v4, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->viewContactClicked()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->endCall_contactView()V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-static {v4, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->addToContactClicked()V

    goto :goto_0

    :sswitch_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_4

    const/4 v4, 0x6

    if-ne v1, v4, :cond_5

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->toggleIncomingHideShow(I)V

    :cond_5
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateBgColorForCallState(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f10029c -> :sswitch_0
        0x7f10032f -> :sswitch_1
        0x7f10039a -> :sswitch_2
        0x7f10039b -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/CallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoSessionEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "onDestroy..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/fragment/CallCardFragment;->onDestroyView()V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoSessionEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->dismissInCallMenu()V

    return-void
.end method

.method public onVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/CallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f100258

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTtwophoneStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTtwophoneStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTtwophoneStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTBusiness:Landroid/widget/ImageView;

    const v0, 0x7f100131

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTPersonal:Landroid/widget/ImageView;

    :cond_0
    const v0, 0x7f100345

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallButtonStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableIMSConferenceInfo()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f10032f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    :cond_1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 13

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v7, 0x1

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v9

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

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateLayoutForCallState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mOldCallState:I

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    move-exception v10

    const-string v1, "VideoCallCardFragment"

    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    const-string v1, "skip setCallState : not update in idle state"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-static {v12}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "skip setCallState : not update in incoming voice call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setVisible(Z)V

    goto :goto_2

    :cond_4
    const-string v1, "ims_call_message"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v8

    if-eqz v8, :cond_6

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

    if-eqz v11, :cond_6

    iget-object v1, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_b

    :cond_5
    iget-object v1, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setCnapName(Ljava/lang/String;)V

    :cond_6
    :goto_3
    const-string v1, "cnap_supplementary_service"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateCnapVisibleForCallState(I)V

    :cond_7
    const-string v1, "cdnip_supplementary_service"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateCdnipVisibleForCallState(I)V

    :cond_8
    move-object/from16 v0, p6

    invoke-direct {p0, p1, v9, v0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateCallStateLabelForCallState(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateBgColorForCallState(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updatePhotoViewForCallState(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updatePrimaryVisibleForCallState(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateIncomingHideShowButtonForCallState(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateHideMeLayout(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateTextColor(I)V

    const-string v1, "support_twophone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateKTTwoPhoneLayout(I)V

    :cond_9
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mOldCallState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    if-ne p1, v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    iput p1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mOldCallState:I

    goto/16 :goto_2

    :cond_b
    iget-object v1, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setCnapName(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected setCdnipNumber(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->inflateCdnipLayout()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setCnapName(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->inflateCnapLayout()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 9

    const-string v7, "VideoCallCardFragment"

    const-string v8, "Setting primary call"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v7}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz p6, :cond_0

    iget-object v3, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v4, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    iget-boolean v1, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    :cond_0
    if-eqz p4, :cond_7

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getConferenceString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p5}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    const/4 p3, 0x0

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v7, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->needToPhoneNumberLocator()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setPrimaryCallMoreMenu()V

    const-string v7, "cnap_supplementary_service"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz p6, :cond_4

    iget-object v7, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setCnapName(Ljava/lang/String;)V

    :cond_4
    const-string v7, "cdnip_supplementary_service"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz p6, :cond_5

    iget-object v7, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setCdnipNumber(Ljava/lang/String;)V

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updatePrimaryCallElapsedTimeArea(ZLjava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    if-eqz p6, :cond_1

    iget-boolean v7, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v7, :cond_1

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v7, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object p1, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iget-object p2, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    const/4 p3, 0x0

    :cond_8
    iget-object v7, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    iget-object v4, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_a
    const/4 v6, 0x1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v6, 0x0

    :cond_b
    if-eqz v6, :cond_c

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_c
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updatePrimaryCallElapsedTimeArea(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    return-void
.end method

.method public setPrimaryCityId(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

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

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCityId:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, "mCityId is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCityId:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCityId:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCityId:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 8

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setPrimaryImageForVideo(Landroid/graphics/drawable/Drawable;Z)V

    move v2, p2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0203b8

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v2, 0x1

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v5, :cond_8

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0201b9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v3, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

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

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x0

    :cond_6
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableIMSConferenceInfo()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x0

    :cond_7
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v2, :cond_b

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a0346

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    invoke-static {p1, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020250

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02024e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02024f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_a
    move v3, v4

    goto :goto_2

    :cond_b
    move v4, v5

    goto :goto_3
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 5

    const/4 v3, 0x0

    const v4, 0x7f0a00bd

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const/4 v0, 0x0

    if-eqz p2, :cond_b

    const/4 v0, 0x3

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

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_8
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    if-eqz p2, :cond_a

    const-string v2, "geo_description_disable"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->needToPhoneNumberLocator()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    :cond_a
    :goto_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v3, 0x0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    goto :goto_2
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 6

    const/16 v3, 0x8

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->needToPhoneNumberLocator()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-static {v1, v2, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const-string v1, "VideoCallCardFragment"

    const-string v2, "PNL with empty number"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneNumberLocator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "VideoCallCardFragment"

    const-string v2, "PNL with number"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    :goto_1
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public setPrimaryVisible(Z)V
    .locals 0

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

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

    const v6, 0x7f090252

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v3, "VideoCallCardFragment"

    const-string v4, "showEndcallContactBtn : call = null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

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

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iget v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    iget v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v2, :cond_a

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->isEnabledEndCallContactButton()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_8
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    :cond_a
    const/4 v3, 0x4

    goto :goto_2
.end method

.method public showIncomingHideMeButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateIncomingHideButton()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showMenu(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallCardFragment;->showMenu(Z)V

    return-void
.end method

.method public showRecordingInfo(ZZ)V
    .locals 0

    return-void
.end method

.method protected updateBgColorForCallState(I)V
    .locals 4

    const v3, 0x7f0200dd

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

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

    :cond_2
    const-string v1, "VideoCallCardFragment"

    const-string v2, "not update callend in hold status"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateStatusBarColor(I)V

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f019d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryBannerColor:I

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryBannerColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0186

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryBannerColor:I

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryBannerColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

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

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateBgColorForCallState(I)V

    :cond_0
    return-void
.end method

.method protected updateCdnipVisibleForCallState(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumberLayout:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumberLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCdnipNumberLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateCnapVisibleForCallState(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapNameLayout:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-eq v0, p1, :cond_2

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapNameLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCnapNameLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateHideMeLayout(I)V
    .locals 0

    return-void
.end method

.method public updateIncomingHideButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateIncomingHideShowButtonForCallState(I)V
    .locals 1

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

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateKTTwoPhoneLayout(I)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const-string v1, "VideoCallCardFragment"

    const-string v2, "updateKTTwoPhoneLayout"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTPersonal:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTBusiness:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->updateTwoPhoneColor(I)V

    const/16 v1, 0x9

    if-eq p1, v1, :cond_5

    const/16 v1, 0xa

    if-eq p1, v1, :cond_5

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

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method protected updateLayoutForCallState(I)V
    .locals 0

    return-void
.end method

.method protected updatePrimaryCallElapsedTimeArea(ZLjava/lang/String;)V
    .locals 5

    const/16 v2, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iput-object p2, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getCallTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/incallui/fragment/VideoCallCardFragment;->setTTS(JLandroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updatePrimaryVisibleForCallState(I)V
    .locals 6

    const/16 v5, 0xa

    const/16 v4, 0x6b

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

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

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x9

    if-eq v0, p1, :cond_3

    if-ne v5, p1, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallBannerContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateTextColor(I)V
    .locals 4

    const v2, 0x7f0f0133

    const v3, 0x7f0f0136

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f011c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

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

    const v3, 0x7f0f0136

    const v2, 0x7f0f0133

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTPersonal:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTBusiness:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardFragment;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0
.end method
