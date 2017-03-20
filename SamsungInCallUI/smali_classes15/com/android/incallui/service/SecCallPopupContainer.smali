.class public Lcom/android/incallui/service/SecCallPopupContainer;
.super Landroid/widget/RelativeLayout;
.source "SecCallPopupContainer.java"

# interfaces
.implements Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;
.implements Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/service/SecCallPopupContainer$KnoxCustomAutoAnswerTimer;
    }
.end annotation


# static fields
.field protected static final CALL_END_TIME_BLINK:I = 0xdac

.field protected static final CALL_END_TIME_BLINK_COUNT_MAX:I = 0x2

.field protected static final CALL_END_TIME_BLINK_COUNT_MAX_DCM:I = 0x3

.field private static final ECID_UNKNOWN_NAME:Ljava/lang/String; = "UNKNOWN NAME"

.field protected static final LOG_TAG:Ljava/lang/String; = "SecCallPopupContainer"


# instance fields
.field private mAcceptBtn:Landroid/widget/Button;

.field private mAcceptRejectBtnContainer:Landroid/view/View;

.field private mAcceptRejectBtnContainerStub:Landroid/view/ViewStub;

.field private mAmRecordText:Landroid/widget/TextView;

.field private mAmRecordTime:Landroid/widget/Chronometer;

.field private mAmRecordingInfoStub:Landroid/view/ViewStub;

.field private mAmStatusImage:Landroid/widget/ImageView;

.field private mAmStatusStub:Landroid/view/ViewStub;

.field private mAmStatusText:Landroid/widget/TextView;

.field mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAttemptingTextSPR:Landroid/widget/TextView;

.field private mCallMessage:Landroid/widget/TextView;

.field private mCallMessageStub:Landroid/view/ViewStub;

.field private mCallNumberAndLabel:Landroid/view/View;

.field private mCallPlusPopupUI:Lcom/android/incallui/service/ui/CallPlusPopupUI;

.field private mCallPopupInfo:Landroid/widget/RelativeLayout;

.field private mCallStateLabel:Landroid/widget/TextView;

.field public mCallerNameForTalkBack:Landroid/widget/TextView;

.field public mCallerNumberForTalkBack:Landroid/widget/TextView;

.field private mCardSubscriber:Landroid/widget/TextView;

.field private mCardSubscriberStub:Landroid/view/ViewStub;

.field private mCityId:Landroid/widget/TextView;

.field private mCityInformation:Ljava/lang/String;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mEriInfoText:Landroid/widget/TextView;

.field private mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

.field private mHdWifiIcon:Landroid/widget/ImageView;

.field private mIsAnswerProcessing:Z

.field private mIsRejectMsgContentShowing:Z

.field private mJanskyPopupUI:Lcom/android/incallui/service/ui/JanskyPopupUI;

.field private mKnoxCustomAutoAnswerTimer:Lcom/android/incallui/service/SecCallPopupContainer$KnoxCustomAutoAnswerTimer;

.field private mName:Landroid/widget/TextView;

.field private mNameLayout:Landroid/widget/LinearLayout;

.field private mNumberLabel:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoneNumberLocator:Landroid/widget/TextView;

.field private mPhoneNumberLocatorName:Landroid/widget/TextView;

.field private mPhoneNumberLocatorStub:Landroid/view/ViewStub;

.field private mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoContainer:Landroid/view/View;

.field private mPrimaryPhotoText:Landroid/widget/TextView;

.field private mProfileIcon:Landroid/widget/ImageView;

.field private mProfileStub:Landroid/view/ViewStub;

.field private mRejectBtn:Landroid/widget/Button;

.field private mRejectMsgAnimatorSet:Landroid/animation/AnimatorSet;

.field private mRejectMsgBtn:Landroid/widget/Button;

.field private mRejectMsgBtnContainer:Landroid/view/View;

.field mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

.field private mRingingCallPopupButtons:Landroid/view/View;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

.field private mSimIconLabel:Landroid/widget/ImageView;

.field private mSimIconLabelLarge:Landroid/widget/ImageView;

.field private mSimIconLabelLargeStub:Landroid/view/ViewStub;

.field private mSimIconLabelStub:Landroid/view/ViewStub;

.field private mSmartCallPopupUI:Lcom/android/incallui/service/ui/SmartCallPopupUI;

.field private mTwoPhonePopupUI:Lcom/android/incallui/service/ui/TwoPhonePopupUI;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 223
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCityInformation:Ljava/lang/String;

    .line 205
    iput-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mIsAnswerProcessing:Z

    .line 206
    iput-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mIsRejectMsgContentShowing:Z

    .line 1612
    new-instance v0, Lcom/android/incallui/service/SecCallPopupContainer$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/SecCallPopupContainer$3;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mClickListener:Landroid/view/View$OnClickListener;

    .line 224
    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mContext:Landroid/content/Context;

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCityInformation:Ljava/lang/String;

    .line 205
    iput-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mIsAnswerProcessing:Z

    .line 206
    iput-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mIsRejectMsgContentShowing:Z

    .line 1612
    new-instance v0, Lcom/android/incallui/service/SecCallPopupContainer$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/SecCallPopupContainer$3;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mClickListener:Landroid/view/View$OnClickListener;

    .line 229
    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mContext:Landroid/content/Context;

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCityInformation:Ljava/lang/String;

    .line 205
    iput-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mIsAnswerProcessing:Z

    .line 206
    iput-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mIsRejectMsgContentShowing:Z

    .line 1612
    new-instance v0, Lcom/android/incallui/service/SecCallPopupContainer$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/SecCallPopupContainer$3;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mClickListener:Landroid/view/View$OnClickListener;

    .line 234
    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mContext:Landroid/content/Context;

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCityInformation:Ljava/lang/String;

    .line 205
    iput-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mIsAnswerProcessing:Z

    .line 206
    iput-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mIsRejectMsgContentShowing:Z

    .line 1612
    new-instance v0, Lcom/android/incallui/service/SecCallPopupContainer$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/SecCallPopupContainer$3;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mClickListener:Landroid/view/View$OnClickListener;

    .line 240
    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mContext:Landroid/content/Context;

    .line 241
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/SecCallPopupContainer;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/service/SecCallPopupContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/SecCallPopupContainer;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mIsRejectMsgContentShowing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/service/SecCallPopupContainer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/SecCallPopupContainer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/incallui/service/SecCallPopupContainer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/service/SecCallPopupContainer;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/SecCallPopupContainer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/service/SecCallPopupContainer;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/service/SecCallPopupContainer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/SecCallPopupContainer;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/incallui/service/SecCallPopupContainer;->animateForToggleRejectMsg(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/SecCallPopupContainer;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtn:Landroid/widget/Button;

    return-object v0
.end method

.method private animateForToggleRejectMsg(Z)V
    .locals 12
    .param p1, "show"    # Z

    .prologue
    const/4 v11, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 1093
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1094
    const-string v4, "animateForToggleRejectMsg isRunning"

    invoke-direct {p0, v4}, Lcom/android/incallui/service/SecCallPopupContainer;->log(Ljava/lang/String;)V

    .line 1123
    :cond_0
    :goto_0
    return-void

    .line 1098
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v4, :cond_0

    .line 1099
    const-string v4, "animateForToggleRejectMsg"

    invoke-direct {p0, v4}, Lcom/android/incallui/service/SecCallPopupContainer;->log(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0d0050

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1101
    .local v1, "duration":I
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v4}, Lcom/android/incallui/RejectMsgContentPopup;->getHeight()I

    move-result v4

    int-to-float v2, v4

    .line 1102
    .local v2, "height":F
    iget-object v7, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz p1, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Lcom/android/incallui/RejectMsgContentPopup;->setAlpha(F)V

    .line 1103
    iget-object v7, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz p1, :cond_3

    neg-float v4, v2

    :goto_2
    invoke-virtual {v7, v4}, Lcom/android/incallui/RejectMsgContentPopup;->setTranslationY(F)V

    .line 1104
    iget-object v7, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v11, [F

    if-eqz p1, :cond_4

    move v4, v5

    :goto_3
    aput v4, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1105
    .local v3, "moveAnimator":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v11, [F

    if-eqz p1, :cond_5

    :goto_4
    aput v6, v8, v10

    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1106
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1107
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1110
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v4

    new-instance v5, Lcom/android/incallui/service/SecCallPopupContainer$2;

    invoke-direct {v5, p0}, Lcom/android/incallui/service/SecCallPopupContainer$2;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1120
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v4, v10}, Lcom/android/incallui/RejectMsgContentPopup;->setVisibility(I)V

    .line 1121
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .end local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    .end local v3    # "moveAnimator":Landroid/animation/ObjectAnimator;
    :cond_2
    move v4, v6

    .line 1102
    goto :goto_1

    :cond_3
    move v4, v5

    .line 1103
    goto :goto_2

    .line 1104
    :cond_4
    neg-float v4, v2

    goto :goto_3

    .restart local v3    # "moveAnimator":Landroid/animation/ObjectAnimator;
    :cond_5
    move v6, v5

    .line 1105
    goto :goto_4
.end method

.method private getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 3
    .param p1, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    const/4 v0, 0x0

    .line 1942
    if-nez p1, :cond_1

    .line 1960
    :cond_0
    :goto_0
    return-object v0

    .line 1943
    :cond_1
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nameAlternative:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPreferredDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 1947
    .local v0, "preferredName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1948
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    .line 1953
    :cond_2
    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    const-string v2, "UNKNOWN NAME"

    .line 1955
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1957
    :cond_3
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto :goto_0
.end method

.method private getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 3
    .param p1, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 1966
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1967
    const-string v1, "geo_description_disable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1968
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    .line 1987
    :cond_0
    :goto_0
    return-object v0

    .line 1971
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/incallui/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1972
    .local v0, "geoDescription":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1975
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    goto :goto_0

    .line 1980
    .end local v0    # "geoDescription":Ljava/lang/String;
    :cond_2
    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v1, v1, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "UNKNOWN NAME"

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v2, v2, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 1982
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v1, v1, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v2, v2, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 1983
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1984
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v1, v1, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    goto :goto_0

    .line 1987
    :cond_4
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method private getServicePopupHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2363
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private inflateCallPopupSimIconLabel()V
    .locals 3

    .prologue
    .line 595
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabelStub:Landroid/view/ViewStub;

    if-nez v1, :cond_0

    .line 596
    const v1, 0x7f100210

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabelStub:Landroid/view/ViewStub;

    .line 598
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    if-nez v1, :cond_1

    .line 599
    const v1, 0x7f10020d

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    .line 602
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabelStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_2

    .line 603
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabelStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 605
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_3

    .line 606
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 608
    :cond_3
    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "feature_hktw"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 609
    :cond_4
    const v1, 0x7f10042b

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabel:Landroid/widget/ImageView;

    .line 613
    :goto_0
    const v1, 0x7f10042c

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabelLarge:Landroid/widget/ImageView;

    .line 617
    :goto_1
    return-void

    .line 611
    :cond_5
    const v1, 0x7f100203

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabel:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sim icon IllegalStateException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isCheckAddReminder()Z
    .locals 4

    .prologue
    .line 1779
    const/4 v0, 0x1

    .line 1780
    .local v0, "isCheck":Z
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v1}, Lcom/android/incallui/RejectMsgContentPopup;->getReminderCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1781
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v1}, Lcom/android/incallui/RejectMsgContentPopup;->getReminderCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1782
    const/4 v0, 0x0

    .line 1785
    :cond_0
    const-string v1, "SecCallPopupContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCheckAddReminder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    return v0
.end method

.method private isDuringCallAvailable()Z
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x0

    return v0
.end method

.method private knoxCustomStartAutoAnswerTimer(II)V
    .locals 7
    .param p1, "time"    # I
    .param p2, "audioMode"    # I

    .prologue
    .line 1257
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->knoxCustomStopAutoAnswerTimer()V

    .line 1258
    new-instance v0, Lcom/android/incallui/service/SecCallPopupContainer$KnoxCustomAutoAnswerTimer;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/service/SecCallPopupContainer$KnoxCustomAutoAnswerTimer;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;JJI)V

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mKnoxCustomAutoAnswerTimer:Lcom/android/incallui/service/SecCallPopupContainer$KnoxCustomAutoAnswerTimer;

    .line 1259
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mKnoxCustomAutoAnswerTimer:Lcom/android/incallui/service/SecCallPopupContainer$KnoxCustomAutoAnswerTimer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer$KnoxCustomAutoAnswerTimer;->start()Landroid/os/CountDownTimer;

    .line 1260
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2355
    const-string v0, "SecCallPopupContainer"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "always"    # Z

    .prologue
    .line 2359
    const-string v0, "SecCallPopupContainer"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2360
    return-void
.end method

.method private setCardName()V
    .locals 6

    .prologue
    .line 556
    const-string v1, ""

    .line 557
    .local v1, "cardName":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 558
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 559
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v2

    .line 560
    .local v2, "simSlot":I
    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    .line 562
    .end local v2    # "simSlot":I
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCardSubscriber:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCardSubscriber:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :cond_1
    return-void
.end method

.method private setCityInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "cityId"    # Ljava/lang/String;

    .prologue
    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller Name ID city Information "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 540
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "feature_vzw"

    .line 541
    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_spr"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCityId:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 551
    :cond_1
    :goto_0
    return-void

    .line 546
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCityId:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2168
    if-nez p1, :cond_0

    .line 2172
    :goto_0
    return-void

    .line 2171
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setPrimaryLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mNumberLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 2078
    :goto_0
    return-void

    .line 2072
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2073
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2074
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2076
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPrimaryName(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    .line 1991
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mName:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1992
    const-string v1, "setPrimaryName: mName == null"

    invoke-direct {p0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->log(Ljava/lang/String;)V

    .line 2026
    :cond_0
    :goto_0
    return-void

    .line 1996
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1997
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1998
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallerNameForTalkBack:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1999
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallerNameForTalkBack:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2002
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2005
    const/4 v0, 0x0

    .line 2006
    .local v0, "nameDirection":I
    if-eqz p2, :cond_4

    .line 2007
    const/4 v0, 0x3

    .line 2008
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2009
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mName:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2010
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallerNameForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2012
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mName:Landroid/widget/TextView;

    new-instance v2, Lcom/android/incallui/service/SecCallPopupContainer$5;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/SecCallPopupContainer$5;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2024
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    .line 2021
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2022
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallerNameForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2036
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumber:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 2037
    const-string v0, "setPrimaryPhoneNumber: mPhoneNumber == null"

    invoke-direct {p0, v0}, Lcom/android/incallui/service/SecCallPopupContainer;->log(Ljava/lang/String;)V

    .line 2067
    :cond_0
    :goto_0
    return-void

    .line 2041
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2042
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2043
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2044
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallerNumberForTalkBack:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2045
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallerNumberForTalkBack:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2048
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2049
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2050
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 2051
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2052
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumber:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2053
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallerNumberForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2055
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumber:Landroid/widget/TextView;

    new-instance v1, Lcom/android/incallui/service/SecCallPopupContainer$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/service/SecCallPopupContainer$6;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0

    .line 2063
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2064
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallerNumberForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPrimarylabelAndNumber(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Ljava/lang/String;)V
    .locals 5
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2260
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallNumberAndLabel:Landroid/view/View;

    if-nez v1, :cond_1

    .line 2277
    :cond_0
    :goto_0
    return-void

    .line 2263
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2264
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 2266
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2267
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2272
    :goto_1
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2273
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2274
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2269
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setProfileIcon(J)V
    .locals 5
    .param p1, "userType"    # J

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2404
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mProfileStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 2405
    const v0, 0x7f100209

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mProfileStub:Landroid/view/ViewStub;

    .line 2406
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mProfileStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 2407
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 2408
    const v0, 0x7f10019b

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mProfileIcon:Landroid/widget/ImageView;

    .line 2411
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mProfileStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mProfileIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 2412
    const-string v0, "SecCallPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProfileIcon: userType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_5

    .line 2414
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 2415
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020368

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2421
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2422
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2428
    :cond_2
    :goto_1
    return-void

    .line 2416
    :cond_3
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 2417
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020362

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2418
    :cond_4
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2419
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020366

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2424
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mProfileStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2425
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mProfileIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setTTS(JLandroid/widget/Chronometer;)V
    .locals 19
    .param p1, "time"    # J
    .param p3, "timeView"    # Landroid/widget/Chronometer;

    .prologue
    .line 1572
    const-wide/16 v14, 0x0

    cmp-long v14, p1, v14

    if-gtz v14, :cond_0

    .line 1602
    :goto_0
    return-void

    .line 1574
    :cond_0
    const-wide/32 v14, 0x36ee80

    div-long v14, p1, v14

    long-to-int v6, v14

    .line 1575
    .local v6, "hours":I
    const-wide/32 v14, 0x36ee80

    rem-long v14, p1, v14

    const-wide/32 v16, 0xea60

    div-long v14, v14, v16

    long-to-int v7, v14

    .line 1576
    .local v7, "minutes":I
    const-wide/32 v14, 0xea60

    rem-long v14, p1, v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v9, v14

    .line 1577
    .local v9, "seconds":I
    if-eqz v6, :cond_2

    const/4 v13, 0x1

    .line 1579
    .local v13, "usingHour":Z
    :goto_1
    const/4 v14, 0x1

    new-array v2, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "%d"

    aput-object v15, v2, v14

    .line 1581
    .local v2, "SRC_TAGS":[Ljava/lang/String;
    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v14

    .line 1582
    .local v11, "strMinutes":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mContext:Landroid/content/Context;

    const v15, 0x7f0902e4

    .line 1583
    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 1582
    invoke-static {v14, v2, v11}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1585
    .local v4, "charMinutes":Ljava/lang/CharSequence;
    const/4 v14, 0x1

    new-array v12, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    .line 1586
    .local v12, "strSeconds":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mContext:Landroid/content/Context;

    const v15, 0x7f0902e6

    .line 1587
    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 1586
    invoke-static {v14, v2, v12}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1589
    .local v5, "charSeconds":Ljava/lang/CharSequence;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 1590
    .local v8, "sb":Ljava/lang/StringBuffer;
    if-eqz v13, :cond_1

    .line 1591
    const/4 v14, 0x1

    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    .line 1592
    .local v10, "strHours":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mContext:Landroid/content/Context;

    const v15, 0x7f0902e3

    .line 1593
    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 1592
    invoke-static {v14, v2, v10}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1594
    .local v3, "charHours":Ljava/lang/CharSequence;
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1597
    .end local v3    # "charHours":Ljava/lang/CharSequence;
    .end local v10    # "strHours":[Ljava/lang/String;
    :cond_1
    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1598
    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1599
    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1600
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1601
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/widget/Chronometer;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1577
    .end local v2    # "SRC_TAGS":[Ljava/lang/String;
    .end local v4    # "charMinutes":Ljava/lang/CharSequence;
    .end local v5    # "charSeconds":Ljava/lang/CharSequence;
    .end local v8    # "sb":Ljava/lang/StringBuffer;
    .end local v11    # "strMinutes":[Ljava/lang/String;
    .end local v12    # "strSeconds":[Ljava/lang/String;
    .end local v13    # "usingHour":Z
    :cond_2
    const/4 v13, 0x0

    goto :goto_1
.end method

.method private updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "inCallState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 645
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    const/4 v0, 0x0

    .line 656
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 658
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateEriInfoText(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/16 v1, 0x8

    .line 578
    const-string v0, "eri_info_label_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mEriInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 584
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isShowCallDetailsEpdgIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mEriInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 586
    :cond_2
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isShowERI4Vowifi()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 587
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mEriInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mEriInfoText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 590
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mEriInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateIcon(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x0

    .line 1477
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1478
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 1479
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->getIconType(Lcom/android/incallui/Call;)I

    move-result v2

    .line 1480
    .local v2, "iconType":I
    const/4 v1, -0x1

    .line 1482
    .local v1, "iconName":I
    invoke-direct {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->updateIconColor()V

    .line 1483
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mHdWifiIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 1484
    const-string v3, ""

    invoke-static {v3, v2}, Lcom/android/incallui/util/InCallUtils;->getIconName(Ljava/lang/String;I)I

    move-result v1

    .line 1485
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mHdWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1486
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mHdWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1491
    :cond_0
    :goto_0
    const-string v3, "spr_display_hd_icon"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAttemptingTextSPR:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 1492
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAttemptingTextSPR:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->updateHDVoiceCallText(Landroid/content/Context;Landroid/view/View;I)V

    .line 1495
    .end local v1    # "iconName":I
    .end local v2    # "iconType":I
    :cond_1
    return-void

    .line 1488
    .restart local v1    # "iconName":I
    .restart local v2    # "iconType":I
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mHdWifiIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mHdWifiIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateIconColor()V
    .locals 3

    .prologue
    .line 1498
    const-string v0, "support_chn_cu_hd_voice_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isChnCuSIM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1499
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mHdWifiIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mHdWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1504
    :cond_0
    :goto_0
    return-void

    .line 1501
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mHdWifiIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mHdWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0120

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1502
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAttemptingTextSPR:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAttemptingTextSPR:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0121

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateRingingCallButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1360
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRingingCallPopupButtons:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1361
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAcceptRejectBtnContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1362
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1363
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtnContainer:Landroid/view/View;

    const v1, 0x7f020192

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1364
    return-void
.end method


# virtual methods
.method public answeringMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1797
    const-string v0, "answeringMode - popup!"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1798
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1821
    :cond_0
    :goto_0
    return-void

    .line 1800
    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1802
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->knoxCustomStopAutoAnswerTimer()V

    .line 1804
    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    .line 1805
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->onAnswerWithWaitingCheck()V

    .line 1806
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtnContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtnContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method clearAmViews()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1605
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1606
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1607
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 1608
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordingInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordingInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1609
    :cond_3
    return-void
.end method

.method clearViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2301
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v0, :cond_0

    .line 2302
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v0, v2}, Lcom/android/incallui/RejectMsgContentPopup;->setOnItemClickListener(Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;)V

    .line 2303
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/incallui/RejectMsgContentPopup;->setVisibility(I)V

    .line 2304
    iput-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    .line 2307
    :cond_0
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2308
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2309
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2311
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabelLarge:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 2312
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2316
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_3

    .line 2317
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->tearDown()V

    .line 2318
    iput-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    .line 2320
    :cond_3
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1227
    const-string v0, "com.android.incallui.InCallActivity"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1228
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getCallNumberAndLabel()Landroid/view/View;
    .locals 1

    .prologue
    .line 2339
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallNumberAndLabel:Landroid/view/View;

    return-object v0
.end method

.method public getCallPlusPopupUI()Lcom/android/incallui/service/ui/CallPlusPopupUI;
    .locals 1

    .prologue
    .line 2347
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallPlusPopupUI:Lcom/android/incallui/service/ui/CallPlusPopupUI;

    return-object v0
.end method

.method public getJanskyPopupUI()Lcom/android/incallui/service/ui/JanskyPopupUI;
    .locals 1

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mJanskyPopupUI:Lcom/android/incallui/service/ui/JanskyPopupUI;

    return-object v0
.end method

.method public getName()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhoneNumber()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 2331
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhoto()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 2323
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPhotoContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 2335
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhotoContainer:Landroid/view/View;

    return-object v0
.end method

.method public getSmartCallPopupUI()Lcom/android/incallui/service/ui/SmartCallPopupUI;
    .locals 1

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSmartCallPopupUI:Lcom/android/incallui/service/ui/SmartCallPopupUI;

    return-object v0
.end method

.method init()V
    .locals 11

    .prologue
    const v10, 0x7f100173

    const/16 v9, 0x8

    const/4 v7, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 251
    .local v3, "observer":Landroid/view/ViewTreeObserver;
    new-instance v6, Lcom/android/incallui/service/SecCallPopupContainer$1;

    invoke-direct {v6, p0}, Lcom/android/incallui/service/SecCallPopupContainer$1;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    invoke-virtual {v3, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 264
    const v6, 0x7f1001d6

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRootView:Landroid/widget/RelativeLayout;

    .line 265
    const v6, 0x7f100177

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    .line 266
    const v6, 0x7f1001d4

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/widget/GradientAnimationView;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    .line 267
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v6}, Lcom/android/incallui/widget/GradientAnimationView;->setUp()V

    .line 268
    const v6, 0x7f1001fb

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRingingCallPopupButtons:Landroid/view/View;

    .line 271
    new-instance v6, Lcom/android/incallui/service/ui/CallPlusPopupUI;

    invoke-direct {v6, p0}, Lcom/android/incallui/service/ui/CallPlusPopupUI;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallPlusPopupUI:Lcom/android/incallui/service/ui/CallPlusPopupUI;

    .line 272
    new-instance v6, Lcom/android/incallui/service/ui/SmartCallPopupUI;

    invoke-direct {v6, p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSmartCallPopupUI:Lcom/android/incallui/service/ui/SmartCallPopupUI;

    .line 273
    new-instance v6, Lcom/android/incallui/service/ui/TwoPhonePopupUI;

    invoke-direct {v6, p0}, Lcom/android/incallui/service/ui/TwoPhonePopupUI;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mTwoPhonePopupUI:Lcom/android/incallui/service/ui/TwoPhonePopupUI;

    .line 274
    new-instance v6, Lcom/android/incallui/service/ui/JanskyPopupUI;

    invoke-direct {v6, p0}, Lcom/android/incallui/service/ui/JanskyPopupUI;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mJanskyPopupUI:Lcom/android/incallui/service/ui/JanskyPopupUI;

    .line 275
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mJanskyPopupUI:Lcom/android/incallui/service/ui/JanskyPopupUI;

    invoke-virtual {v6}, Lcom/android/incallui/service/ui/JanskyPopupUI;->updateJanskyinfo()V

    .line 301
    const v6, 0x7f1001da

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhotoContainer:Landroid/view/View;

    .line 302
    const v6, 0x7f1000a5

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoto:Landroid/widget/ImageView;

    .line 303
    const v6, 0x7f1001db

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPrimaryPhotoText:Landroid/widget/TextView;

    .line 304
    const v6, 0x7f100193

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallStateLabel:Landroid/widget/TextView;

    .line 306
    const v6, 0x7f1001dc

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mNameLayout:Landroid/widget/LinearLayout;

    .line 307
    const v6, 0x7f1000e9

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mName:Landroid/widget/TextView;

    .line 308
    const v6, 0x7f100197

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallNumberAndLabel:Landroid/view/View;

    .line 309
    const v6, 0x7f10010e

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mNumberLabel:Landroid/widget/TextView;

    .line 311
    const-string v6, "phone_number_locator"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isPhoneNumberLocatorOn()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0a0217

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 313
    .local v2, "maxWidth":I
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 315
    .end local v2    # "maxWidth":I
    :cond_0
    const v6, 0x7f100198

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumber:Landroid/widget/TextView;

    .line 316
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallerNameForTalkBack:Landroid/widget/TextView;

    .line 317
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallerNumberForTalkBack:Landroid/widget/TextView;

    .line 325
    const v6, 0x7f100208

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mEriInfoText:Landroid/widget/TextView;

    .line 327
    const v6, 0x7f1001fc

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAcceptRejectBtnContainer:Landroid/view/View;

    .line 328
    const-string v6, "popup_call_service_has_icon"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 329
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAcceptRejectBtnContainer:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 330
    const v6, 0x7f1001fd

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAcceptRejectBtnContainerStub:Landroid/view/ViewStub;

    .line 331
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAcceptRejectBtnContainerStub:Landroid/view/ViewStub;

    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 332
    invoke-virtual {p0, v10}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAcceptRejectBtnContainer:Landroid/view/View;

    .line 334
    :cond_1
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAcceptRejectBtnContainer:Landroid/view/View;

    iget-object v8, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAcceptRejectBtnContainer:Landroid/view/View;

    const v8, 0x7f100174

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAcceptBtn:Landroid/widget/Button;

    .line 336
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAcceptBtn:Landroid/widget/Button;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAcceptBtn:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    :cond_2
    const v6, 0x7f1001fe

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtnContainer:Landroid/view/View;

    .line 339
    const-string v6, "popup_call_service_has_icon"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 340
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtnContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 341
    .local v4, "rejectMsgButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x3

    invoke-virtual {v4, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 342
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtnContainer:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    .end local v4    # "rejectMsgButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtnContainer:Landroid/view/View;

    iget-object v8, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    const v6, 0x7f1001ff

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtn:Landroid/widget/Button;

    .line 346
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtn:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAcceptRejectBtnContainer:Landroid/view/View;

    const v8, 0x7f100175

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectBtn:Landroid/widget/Button;

    .line 349
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectBtn:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtn:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    .line 353
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAcceptRejectBtnContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 354
    .local v5, "ringingCallButtonsLp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0a037d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 355
    .local v1, "height":I
    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 356
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAcceptRejectBtnContainer:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    const v6, 0x7f1001b3

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/RejectMsgContentPopup;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    .line 418
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v6, :cond_4

    .line 419
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v6, p0}, Lcom/android/incallui/RejectMsgContentPopup;->setOnItemClickListener(Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;)V

    .line 420
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v6, v9}, Lcom/android/incallui/RejectMsgContentPopup;->setVisibility(I)V

    .line 422
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v6, p0}, Lcom/android/incallui/RejectMsgContentPopup;->setOnAnswerMemoClickListener(Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;)V

    .line 434
    :cond_4
    const-string v6, "ecid_enable"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "feature_vzw"

    .line 435
    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "feature_spr"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    const-string v6, "geo_description_disable"

    .line 436
    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "feature_spr"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 437
    :cond_6
    const v6, 0x7f100213

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCityId:Landroid/widget/TextView;

    .line 438
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCityInformation:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->setCityInfo(Ljava/lang/String;)V

    .line 442
    :cond_7
    const-string v6, "phone_number_locator"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isPhoneNumberLocatorOn()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 443
    const v6, 0x7f10014d

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    .line 444
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    if-eqz v6, :cond_8

    .line 445
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 446
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v6, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 447
    const v6, 0x7f10014e

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocator:Landroid/widget/TextView;

    .line 449
    :cond_8
    const v6, 0x7f10020e

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    .line 450
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    if-eqz v6, :cond_9

    .line 451
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 452
    const v6, 0x7f100185

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    .line 456
    :cond_9
    const-string v6, "ims_support_multimedia_caller_id"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 457
    const v6, 0x7f100215

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallMessageStub:Landroid/view/ViewStub;

    .line 458
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallMessageStub:Landroid/view/ViewStub;

    if-eqz v6, :cond_a

    .line 459
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallMessageStub:Landroid/view/ViewStub;

    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 460
    const v6, 0x7f1000cb

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallMessage:Landroid/widget/TextView;

    .line 464
    :cond_a
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->displayCtcSubscriberName()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 465
    const v6, 0x7f100207

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCardSubscriberStub:Landroid/view/ViewStub;

    .line 466
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCardSubscriberStub:Landroid/view/ViewStub;

    if-eqz v6, :cond_b

    .line 467
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCardSubscriberStub:Landroid/view/ViewStub;

    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 468
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCardSubscriberStub:Landroid/view/ViewStub;

    invoke-virtual {v6, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 469
    const v6, 0x7f10023a

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCardSubscriber:Landroid/widget/TextView;

    .line 473
    :cond_b
    const-string v6, "feature_multisim"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 474
    invoke-direct {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->inflateCallPopupSimIconLabel()V

    .line 477
    :cond_c
    const-string v6, "display_hd_icon"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 478
    const v6, 0x7f100202

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mHdWifiIcon:Landroid/widget/ImageView;

    .line 481
    :cond_d
    const-string v6, "spr_display_hd_icon"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 482
    const v6, 0x7f100201

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAttemptingTextSPR:Landroid/widget/TextView;

    .line 486
    :cond_e
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 487
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_f

    .line 488
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v6, v0}, Lcom/android/incallui/service/SecCallPopupService;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    .line 489
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;)V

    .line 490
    invoke-virtual {p0, v0}, Lcom/android/incallui/service/SecCallPopupContainer;->updateRejectMsgContent(Lcom/android/incallui/Call;)V

    .line 493
    :cond_f
    const-string v6, "show_vowifi_voicecall_button"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 494
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableVoWFi()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 495
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAcceptBtn:Landroid/widget/Button;

    if-eqz v6, :cond_10

    .line 496
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAcceptBtn:Landroid/widget/Button;

    const v8, 0x7f0200c3

    invoke-virtual {v6, v8, v7, v7, v7}, Landroid/widget/Button;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 501
    :cond_10
    const-string v6, "automatic_answering_machine"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 502
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 503
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v6

    if-nez v6, :cond_12

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->setAMView(Z)V

    .line 506
    :cond_11
    return-void

    :cond_12
    move v6, v7

    .line 503
    goto :goto_0
.end method

.method isShowingRejectMsgContent()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1085
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v1, :cond_0

    .line 1086
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v1}, Lcom/android/incallui/RejectMsgContentPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1088
    :cond_0
    return v0
.end method

.method public knoxCustomStopAutoAnswerTimer()V
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mKnoxCustomAutoAnswerTimer:Lcom/android/incallui/service/SecCallPopupContainer$KnoxCustomAutoAnswerTimer;

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mKnoxCustomAutoAnswerTimer:Lcom/android/incallui/service/SecCallPopupContainer$KnoxCustomAutoAnswerTimer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer$KnoxCustomAutoAnswerTimer;->cancel()V

    .line 1265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mKnoxCustomAutoAnswerTimer:Lcom/android/incallui/service/SecCallPopupContainer$KnoxCustomAutoAnswerTimer;

    .line 1267
    :cond_0
    return-void
.end method

.method manageCardName(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCardSubscriber:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 568
    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    const/4 v0, 0x5

    if-eq v0, p1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->setCardName()V

    .line 570
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCardSubscriber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    :cond_1
    :goto_0
    return-void

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCardSubscriber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method managePhoneNumberLocator(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 2204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "managePhoneNumberLocator, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2205
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 2206
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 2207
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2209
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    .line 2210
    if-eq v4, p1, :cond_1

    if-eq v5, p1, :cond_1

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2211
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2228
    :cond_2
    :goto_0
    return-void

    .line 2213
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 2217
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_5

    .line 2218
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2220
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    .line 2221
    if-eq v4, p1, :cond_6

    if-eq v5, p1, :cond_6

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2222
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 2224
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x0

    .line 2283
    iput-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    .line 2284
    iput-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    .line 2285
    iput-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabelStub:Landroid/view/ViewStub;

    .line 2286
    iput-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    .line 2287
    iput-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCardSubscriberStub:Landroid/view/ViewStub;

    .line 2288
    iput-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallMessageStub:Landroid/view/ViewStub;

    .line 2290
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2291
    iput-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusStub:Landroid/view/ViewStub;

    .line 2292
    iput-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordingInfoStub:Landroid/view/ViewStub;

    .line 2294
    :cond_0
    return-void
.end method

.method onEcidUpdate(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1008
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_2

    .line 1009
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_usc"

    .line 1010
    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {p1, v0}, Lcom/android/incallui/service/EcidClient;->updateContactInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 1012
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/service/SecCallPopupContainer;->updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 1020
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    .line 1022
    :cond_2
    return-void

    .line 1013
    :cond_3
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "feature_spr"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1014
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {p1, v0}, Lcom/android/incallui/service/EcidClient;->updateContactInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 1017
    invoke-static {p1}, Lcom/android/incallui/service/EcidClient;->getCityId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCityInformation:Ljava/lang/String;

    .line 1018
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCityInformation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/service/SecCallPopupContainer;->setCityInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 1743
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 1744
    return-void
.end method

.method onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)V
    .locals 20
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;
    .param p4, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1127
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/service/SecCallPopupContainer;->updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    .line 1129
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->updateRejectMsgContent(Lcom/android/incallui/Call;)V

    .line 1132
    invoke-virtual/range {p4 .. p4}, Lcom/android/incallui/Call;->getState()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/incallui/service/SecCallPopupContainer;->updateEriInfoText(I)V

    .line 1134
    invoke-virtual/range {p4 .. p4}, Lcom/android/incallui/Call;->getState()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/incallui/service/SecCallPopupContainer;->updateIcon(I)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mJanskyPopupUI:Lcom/android/incallui/service/ui/JanskyPopupUI;

    invoke-virtual {v15}, Lcom/android/incallui/service/ui/JanskyPopupUI;->updateJanskyIcon()V

    .line 1139
    invoke-virtual/range {p4 .. p4}, Lcom/android/incallui/Call;->getState()I

    move-result v15

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1140
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getServicePopupHandler()Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x65

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1141
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Lcom/android/incallui/CallList;->getDelayForDisconnect(Lcom/android/incallui/Call;)I

    move-result v8

    .line 1142
    .local v8, "delay":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onStateChange - delay : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->log(Ljava/lang/String;Z)V

    .line 1143
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getServicePopupHandler()Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x65

    int-to-long v0, v8

    move-wide/from16 v18, v0

    move/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1146
    .end local v8    # "delay":I
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/android/incallui/Call;->getState()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 1147
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getServicePopupHandler()Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x65

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1148
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v15}, Lcom/android/incallui/service/SecCallPopupService;->animateForHide()V

    .line 1153
    :cond_1
    const-string v15, "phone_number_locator"

    invoke-static {v15}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isPhoneNumberLocatorOn()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1154
    invoke-virtual/range {p4 .. p4}, Lcom/android/incallui/Call;->getPhoneNumberLocator()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryPhoneNumberLocator(Ljava/lang/String;)V

    .line 1155
    invoke-virtual/range {p4 .. p4}, Lcom/android/incallui/Call;->getState()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/service/SecCallPopupContainer;->managePhoneNumberLocator(I)V

    .line 1158
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->displayCtcSubscriberName()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1159
    invoke-virtual/range {p4 .. p4}, Lcom/android/incallui/Call;->getState()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/service/SecCallPopupContainer;->manageCardName(I)V

    .line 1162
    :cond_3
    const-string v15, "feature_multisim"

    invoke-static {v15}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1163
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v14

    .line 1164
    .local v14, "showingCall":Lcom/android/incallui/Call;
    invoke-static {v14}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/service/SecCallPopupContainer;->setCallPopupSimIconLabel(I)V

    .line 1167
    .end local v14    # "showingCall":Lcom/android/incallui/Call;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mTwoPhonePopupUI:Lcom/android/incallui/service/ui/TwoPhonePopupUI;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/incallui/service/ui/TwoPhonePopupUI;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)V

    .line 1169
    const-string v15, "tablet_device"

    invoke-static {v15}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1170
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 1171
    .local v13, "sb":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mName:Landroid/widget/TextView;

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mName:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 1172
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mName:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1173
    .local v9, "mNameText":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/incallui/util/NameNumberUtils;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-static {v9}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .end local v9    # "mNameText":Ljava/lang/String;
    :cond_5
    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1175
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 1176
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1177
    .local v10, "mNumberText":Ljava/lang/String;
    const-string v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1178
    const-string v15, "-"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-static {v10}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .end local v10    # "mNumberText":Ljava/lang/String;
    :cond_7
    invoke-virtual {v13, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1180
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    if-eqz v15, :cond_9

    .line 1181
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 1182
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1188
    .end local v13    # "sb":Ljava/lang/StringBuffer;
    :cond_9
    invoke-virtual/range {p4 .. p4}, Lcom/android/incallui/Call;->getState()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 1189
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/incallui/wrapper/KnoxCustomManagerWrapper;->getAutoCallPickupState(Landroid/content/Context;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 1190
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "KnoxCustom: incoming call number: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p4 .. p4}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/incallui/service/SecCallPopupContainer;->log(Ljava/lang/String;)V

    .line 1192
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/incallui/wrapper/KnoxCustomManagerWrapper;->getAutoCallNumberList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    .line 1193
    .local v12, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_b

    .line 1194
    invoke-virtual/range {p4 .. p4}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1195
    .local v7, "callNumber":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1196
    .local v11, "number":Ljava/lang/String;
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1197
    .local v6, "autoNumber":Ljava/lang/String;
    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 1198
    const-string v15, "KnoxCustom: matched in auto call number list"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/incallui/service/SecCallPopupContainer;->log(Ljava/lang/String;)V

    .line 1199
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v11}, Lcom/android/incallui/wrapper/KnoxCustomManagerWrapper;->getAutoCallNumberDelay(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 1200
    .restart local v8    # "delay":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v11}, Lcom/android/incallui/wrapper/KnoxCustomManagerWrapper;->getAutoCallNumberAnswerMode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 1201
    .local v4, "answerMode":I
    const/4 v15, -0x1

    if-eq v8, v15, :cond_f

    const/4 v15, -0x1

    if-eq v4, v15, :cond_f

    .line 1202
    const/4 v15, 0x1

    if-ne v4, v15, :cond_c

    const/16 v5, 0x8

    .line 1204
    .local v5, "audioMode":I
    :goto_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "KnoxCustom: auto answering with speaker "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v15, 0x8

    if-ne v5, v15, :cond_d

    const-string v15, "on"

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/incallui/service/SecCallPopupContainer;->log(Ljava/lang/String;)V

    .line 1206
    if-lez v8, :cond_e

    .line 1207
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "KnoxCustom: auto answering call in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " sec"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/incallui/service/SecCallPopupContainer;->log(Ljava/lang/String;)V

    .line 1208
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Lcom/android/incallui/service/SecCallPopupContainer;->knoxCustomStartAutoAnswerTimer(II)V

    .line 1223
    .end local v4    # "answerMode":I
    .end local v5    # "audioMode":I
    .end local v6    # "autoNumber":Ljava/lang/String;
    .end local v7    # "callNumber":Ljava/lang/String;
    .end local v8    # "delay":I
    .end local v11    # "number":Ljava/lang/String;
    .end local v12    # "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    :goto_2
    return-void

    .line 1202
    .restart local v4    # "answerMode":I
    .restart local v6    # "autoNumber":Ljava/lang/String;
    .restart local v7    # "callNumber":Ljava/lang/String;
    .restart local v8    # "delay":I
    .restart local v11    # "number":Ljava/lang/String;
    .restart local v12    # "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    const/4 v5, 0x5

    goto :goto_0

    .line 1204
    .restart local v5    # "audioMode":I
    :cond_d
    const-string v15, "off"

    goto :goto_1

    .line 1210
    :cond_e
    const-string v15, "KnoxCustom: auto answering call immediately"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/incallui/service/SecCallPopupContainer;->log(Ljava/lang/String;)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v15}, Lcom/android/incallui/service/SecCallPopupService;->onAnswerWithWaitingCheck()V

    .line 1212
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    goto :goto_2

    .line 1215
    .end local v5    # "audioMode":I
    :cond_f
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "KnoxCustom: can\'t auto answer, delay = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " answerMode = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/incallui/service/SecCallPopupContainer;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1748
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1749
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1750
    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1751
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 1752
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1757
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupService;->animateForHide()V

    .line 1759
    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "feature_att"

    .line 1760
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1761
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1762
    invoke-static {}, Lcom/android/incallui/service/EcidClient;->clearAllCalls()V

    .line 1767
    :cond_1
    if-nez p1, :cond_4

    .line 1768
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupIncomingCall_sendCustomMessage()V

    .line 1773
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->isCheckAddReminder()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1774
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "rejected"

    invoke-static {v1, v2}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastReminder(Landroid/content/Context;Ljava/lang/String;)V

    .line 1776
    :cond_2
    return-void

    .line 1754
    :cond_3
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 1770
    :cond_4
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupIncomingCall_sendMessage()V

    goto :goto_1
.end method

.method public rejectWithAnswerMemo()V
    .locals 2

    .prologue
    .line 1791
    const-string v0, "rejectWithAnswerMemo - popup!"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1792
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->answeringMode()V

    .line 1793
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->toggleRejectMsgContent()V

    .line 1794
    return-void
.end method

.method public setAMView(Z)V
    .locals 6
    .param p1, "isRecording"    # Z

    .prologue
    const v5, 0x7f1001ec

    const v2, 0x7f1001eb

    const/high16 v4, 0x41600000    # 14.0f

    const v3, 0x3f4ccccd    # 0.8f

    .line 1507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAMView isRecording "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1508
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1509
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    .line 1510
    const v0, 0x7f100212

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusStub:Landroid/view/ViewStub;

    .line 1511
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1513
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusImage:Landroid/widget/ImageView;

    .line 1514
    invoke-virtual {p0, v5}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusText:Landroid/widget/TextView;

    .line 1516
    invoke-virtual {p0, v2}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusImage:Landroid/widget/ImageView;

    .line 1517
    invoke-virtual {p0, v5}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusText:Landroid/widget/TextView;

    .line 1519
    if-eqz p1, :cond_8

    .line 1520
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1521
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1522
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1523
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mContext:Landroid/content/Context;

    const v2, 0x7f090092

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1524
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1526
    :cond_3
    const v0, 0x7f100206

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordingInfoStub:Landroid/view/ViewStub;

    .line 1527
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordingInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordingInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1528
    :cond_4
    const v0, 0x7f100254

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordText:Landroid/widget/TextView;

    .line 1529
    const v0, 0x7f100255

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordTime:Landroid/widget/Chronometer;

    .line 1530
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordText:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1531
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, v4}, Landroid/widget/Chronometer;->setTextSize(F)V

    .line 1532
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->updateAnswerMemoRecordTime()V

    .line 1541
    :cond_7
    :goto_0
    return-void

    .line 1534
    :cond_8
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 1535
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f020052

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1536
    :cond_9
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 1537
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mContext:Landroid/content/Context;

    const v2, 0x7f090091

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1538
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setCallPopupSimIconLabel(I)V
    .locals 4
    .param p1, "simId"    # I

    .prologue
    const/4 v1, 0x2

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 620
    if-gez p1, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabelLarge:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 623
    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "feature_hktw"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 624
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 625
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 626
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 628
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 630
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 632
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 635
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 636
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_6

    .line 637
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 638
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2175
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 2176
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0385

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 2177
    .local v0, "diameter":I
    invoke-static {p1, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2178
    .local v1, "image":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2180
    .end local v0    # "diameter":I
    .end local v1    # "image":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 9
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 2081
    if-nez p1, :cond_1

    .line 2165
    :cond_0
    :goto_0
    return-void

    .line 2082
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPrimaryPhotoText:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 2083
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-static {v4, v8, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 2084
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 2087
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v1

    .line 2090
    .local v1, "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    const-string v4, "ecid_enable"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "feature_vzw"

    .line 2091
    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2092
    invoke-static {v0, p1}, Lcom/android/incallui/service/EcidClient;->updateContactInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 2096
    :cond_2
    iget-object v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 2097
    .local v3, "image":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2098
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2099
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPrimaryPhotoText:Landroid/widget/TextView;

    new-instance v5, Lcom/android/incallui/service/SecCallPopupContainer$7;

    invoke-direct {v5, p0}, Lcom/android/incallui/service/SecCallPopupContainer$7;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2110
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0385

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 2112
    .local v2, "diameter":I
    const-string v4, "feature_dcm"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v4, v4, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v4, v4, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    if-eqz v4, :cond_3

    .line 2113
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 2114
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020399

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2115
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-static {v4, v3, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2116
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v3}, Lcom/android/incallui/service/SecCallPopupContainer;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2117
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhotoContainer:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/SecOpenThemeUtils;->setPopupBackgroundResource(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2122
    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2123
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0203a8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2125
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-static {v4, v3, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2126
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v3}, Lcom/android/incallui/service/SecCallPopupContainer;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2127
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhotoContainer:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/SecOpenThemeUtils;->setPopupBackgroundResource(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2128
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2129
    :cond_4
    iget-boolean v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 2130
    invoke-virtual {p0, v3}, Lcom/android/incallui/service/SecCallPopupContainer;->updateGradientView(Landroid/graphics/drawable/Drawable;)V

    .line 2131
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-static {v4, v3, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2132
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v3}, Lcom/android/incallui/service/SecCallPopupContainer;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2133
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhotoContainer:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/SecOpenThemeUtils;->setPopupBackgroundResource(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2134
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2135
    :cond_5
    if-eqz v1, :cond_6

    iget-object v4, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 2136
    const-string v4, "CallerImage From ContactAgent"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2137
    iget-object v4, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/incallui/service/SecCallPopupContainer;->updateGradientView(Landroid/graphics/drawable/Drawable;)V

    .line 2138
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    iget-object v5, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v4, v5, v2}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2139
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v3}, Lcom/android/incallui/service/SecCallPopupContainer;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2140
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhotoContainer:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/SecOpenThemeUtils;->setPopupBackgroundResource(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2141
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2143
    :cond_6
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setPrimaryMessage(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setprimaryMessage - message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2232
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallMessageStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2234
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2235
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallMessage:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2236
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2237
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallMessageStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2243
    :cond_0
    :goto_0
    return-void

    .line 2240
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallMessageStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2030
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2031
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2033
    :cond_0
    return-void
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneNumberLocator"    # Ljava/lang/String;

    .prologue
    .line 2184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2186
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2187
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2189
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2190
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2200
    :cond_1
    :goto_0
    return-void

    .line 2193
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 2194
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocator:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2196
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2197
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSecCallPopupService(Lcom/android/incallui/service/SecCallPopupService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/incallui/service/SecCallPopupService;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    .line 245
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mContext:Landroid/content/Context;

    .line 246
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->init()V

    .line 247
    return-void
.end method

.method public startGradientAnimation()V
    .locals 2

    .prologue
    .line 2375
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v0, :cond_0

    .line 2376
    const-string v0, "SecCallPopupContainer"

    const-string v1, "animateForStream: mGradientAnimationView is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    :goto_0
    return-void

    .line 2379
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->animateForStream()V

    goto :goto_0
.end method

.method public stopGradientAnimation()V
    .locals 2

    .prologue
    .line 2383
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v0, :cond_0

    .line 2384
    const-string v0, "SecCallPopupContainer"

    const-string v1, "stopStreamAnimation: mGradientAnimationView is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    :goto_0
    return-void

    .line 2387
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->stopStreamAnimation()V

    goto :goto_0
.end method

.method toggleRejectMsgContent()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1825
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtn:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1826
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->isShowingRejectMsgContent()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mIsRejectMsgContentShowing:Z

    .line 1838
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_0

    .line 1839
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v2, v1}, Lcom/android/incallui/RejectMsgContentPopup;->setVisibility(I)V

    .line 1840
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v1}, Lcom/android/incallui/RejectMsgContentPopup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1841
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/incallui/service/SecCallPopupContainer$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/service/SecCallPopupContainer$4;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1857
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :goto_0
    return-void

    .line 1854
    :cond_0
    iget-boolean v3, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mIsRejectMsgContentShowing:Z

    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->animateForToggleRejectMsg(Z)V

    .line 1855
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public updateAnswerMemoRecordTime()V
    .locals 8

    .prologue
    .line 1544
    const-string v4, "updateAnswerMemoRecordTime"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1545
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v4}, Lcom/android/incallui/service/SecCallPopupService;->getAnswerMemoRecorderManager()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAnswerMemoRecordTime mAnsMemoRecorderMgr.isRecording() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupService;->getAnswerMemoRecorderManager()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1547
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordTime:Landroid/widget/Chronometer;

    if-eqz v4, :cond_0

    .line 1548
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v4}, Lcom/android/incallui/service/SecCallPopupService;->getAnswerMemoRecorderManager()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->getRecordTime()J

    move-result-wide v2

    .line 1550
    .local v2, "duration":J
    const-wide/16 v0, -0x1

    .line 1551
    .local v0, "baseTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v4, v2

    .line 1552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAnswerMemoRecordTime baseTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1553
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 1554
    const-string v4, "start record time"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1555
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v4, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    .line 1556
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v4}, Landroid/widget/Chronometer;->start()V

    .line 1563
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordTime:Landroid/widget/Chronometer;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/service/SecCallPopupContainer;->setTTS(JLandroid/widget/Chronometer;)V

    .line 1569
    .end local v0    # "baseTime":J
    .end local v2    # "duration":J
    :cond_0
    :goto_1
    return-void

    .line 1559
    .restart local v0    # "baseTime":J
    .restart local v2    # "duration":J
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordTime:Landroid/widget/Chronometer;

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Lcom/android/incallui/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    .line 1560
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v4}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0

    .line 1566
    .end local v0    # "baseTime":J
    .end local v2    # "duration":J
    :cond_2
    const-string v4, "updateAnswerMemoRecordTime recordmgr is null or not recording"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1567
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordTime:Landroid/widget/Chronometer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mAmRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v4}, Landroid/widget/Chronometer;->stop()V

    goto :goto_1
.end method

.method updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 7
    .param p1, "inCallState"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 790
    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRingingCallPopupButtons:Landroid/view/View;

    if-nez v5, :cond_1

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    iget-boolean v5, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mIsAnswerProcessing:Z

    if-nez v5, :cond_0

    .line 793
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v5

    if-nez v5, :cond_0

    .line 796
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 797
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_4

    move v1, v4

    .line 800
    .local v1, "isDisconnected":Z
    :goto_1
    const/4 v2, 0x1

    .line 829
    .local v2, "showRingingCallButtons":Z
    if-eqz v2, :cond_2

    .line 830
    invoke-direct {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->updateRingingCallButtons()V

    .line 840
    :cond_2
    const-string v5, "automatic_answering_machine"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 841
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCallButtons : isAutoAnswered - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 842
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 843
    const/4 v2, 0x1

    .line 848
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRingingCallPopupButtons:Landroid/view/View;

    if-eqz v2, :cond_5

    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 856
    if-ne v2, v4, :cond_6

    .line 857
    const-string v3, "set FLAG_TURN_SCREEN_ON"

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 858
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x200000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 859
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupService;->updateViewLayout()V

    goto :goto_0

    .end local v1    # "isDisconnected":Z
    .end local v2    # "showRingingCallButtons":Z
    :cond_4
    move v1, v3

    .line 798
    goto :goto_1

    .line 848
    .restart local v1    # "isDisconnected":Z
    .restart local v2    # "showRingingCallButtons":Z
    :cond_5
    const/16 v3, 0x8

    goto :goto_2

    .line 861
    :cond_6
    const-string v3, "remove FLAG_TURN_SCREEN_ON"

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 862
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, -0x200001

    and-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 863
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupService;->updateViewLayout()V

    goto/16 :goto_0
.end method

.method public updateGradientView(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2391
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-nez v2, :cond_0

    .line 2392
    const-string v2, "SecCallPopupContainer"

    const-string v3, "updateGradientView: mGradientAnimationView is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    :goto_0
    return-void

    .line 2396
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    .line 2397
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v2}, Lcom/android/incallui/widget/GradientAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2398
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2399
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v2, v1}, Lcom/android/incallui/widget/GradientAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2400
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method public updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 11
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    const/4 v4, 0x0

    .line 1869
    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    .line 1870
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePrimaryDisplayInfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/service/SecCallPopupContainer;->log(Ljava/lang/String;)V

    .line 1871
    const/4 v3, 0x0

    .line 1872
    .local v3, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1874
    .local v6, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1875
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09024d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1876
    const/4 v0, 0x0

    .line 1877
    .local v0, "childCallSize":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1878
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v8

    .line 1879
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "secConferenceCallLabel"

    .line 1878
    invoke-virtual {v8, v9, v10}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%d"

    .line 1879
    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1897
    .end local v0    # "childCallSize":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    iget-object v7, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    .line 1898
    .local v4, "nameIsNumber":Z
    :cond_1
    const-string v7, "feature_dcm"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v7, v7, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v7, v7, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v7, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    if-eqz v7, :cond_2

    .line 1899
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 1900
    const-string v3, ""

    .line 1902
    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryName(Ljava/lang/String;Z)V

    .line 1903
    invoke-direct {p0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 1905
    const-string v7, "ecid_enable"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "feature_vzw"

    .line 1906
    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "feature_spr"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1907
    :cond_3
    iget-object v7, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/incallui/service/SecCallPopupContainer;->setCityInfo(Ljava/lang/String;)V

    .line 1908
    if-eqz v4, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1909
    const-string v7, ""

    invoke-direct {p0, v7}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 1913
    :cond_4
    iget-object v7, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryLabel(Ljava/lang/String;)V

    .line 1914
    invoke-virtual {p0, p2}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 1915
    iget-wide v8, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    invoke-direct {p0, v8, v9}, Lcom/android/incallui/service/SecCallPopupContainer;->setProfileIcon(J)V

    .line 1917
    const-string v7, "ecid_enable"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "geo_description_disable"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "feature_spr"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1919
    iget-object v7, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mCityId:Landroid/widget/TextView;

    invoke-static {v7, p2}, Lcom/android/incallui/operator/usa/InCallUIExtension;->setPrimaryGeoDescription(Landroid/widget/TextView;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 1921
    :cond_5
    const-string v7, "ims_support_multimedia_caller_id"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1922
    iget-object v7, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    invoke-virtual {p0, v7, v4}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryMessage(Ljava/lang/String;Z)V

    .line 1924
    :cond_6
    invoke-direct {p0, p2, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimarylabelAndNumber(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Ljava/lang/String;)V

    .line 1926
    iget-object v7, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSmartCallPopupUI:Lcom/android/incallui/service/ui/SmartCallPopupUI;

    if-eqz v7, :cond_7

    .line 1927
    iget-object v7, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mSmartCallPopupUI:Lcom/android/incallui/service/ui/SmartCallPopupUI;

    invoke-virtual {v7, p1, p2}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 1930
    :cond_7
    iget-object v7, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1931
    .local v5, "nameLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhotoContainer:Landroid/view/View;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_a

    .line 1932
    const/4 v7, -0x1

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1933
    iget-object v7, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1939
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nameIsNumber":Z
    .end local v5    # "nameLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "number":Ljava/lang/String;
    :cond_8
    :goto_1
    return-void

    .line 1881
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v6    # "number":Ljava/lang/String;
    :cond_9
    invoke-direct {p0, p2}, Lcom/android/incallui/service/SecCallPopupContainer;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v3

    .line 1882
    invoke-direct {p0, p2}, Lcom/android/incallui/service/SecCallPopupContainer;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v6

    .line 1884
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    .line 1885
    .local v2, "displaycall":Lcom/android/incallui/Call;
    if-eqz v2, :cond_0

    .line 1887
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v1

    .line 1888
    .local v1, "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    if-eqz v1, :cond_0

    .line 1889
    iget-object v7, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1890
    iget-object v3, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    .line 1891
    iget-object v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto/16 :goto_0

    .line 1934
    .end local v1    # "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    .end local v2    # "displaycall":Lcom/android/incallui/Call;
    .restart local v4    # "nameIsNumber":Z
    .restart local v5    # "nameLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_a
    iget-object v7, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhotoContainer:Landroid/view/View;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_8

    .line 1935
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0091

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1936
    iget-object v7, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method updateRejectMsgContent(Lcom/android/incallui/Call;)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 1332
    if-nez p1, :cond_1

    .line 1357
    :cond_0
    :goto_0
    return-void

    .line 1334
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_7

    .line 1335
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v4, :cond_3

    .line 1336
    const/4 v1, 0x0

    .line 1337
    .local v1, "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "support_smart_call"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1338
    invoke-static {p1}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_4

    .line 1339
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getBlockReportMessage()Ljava/util/List;

    move-result-object v1

    .line 1343
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v4, v1}, Lcom/android/incallui/RejectMsgContentPopup;->configureRejectMsgList(Ljava/util/List;)V

    .line 1345
    .end local v1    # "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtnContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1346
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v0, 0x1

    .line 1347
    .local v0, "show":Z
    :goto_2
    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtnContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    :goto_3
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1341
    .end local v0    # "show":Z
    .restart local v1    # "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .end local v1    # "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    move v0, v2

    .line 1346
    goto :goto_2

    .restart local v0    # "show":Z
    :cond_6
    move v2, v3

    .line 1347
    goto :goto_3

    .line 1350
    .end local v0    # "show":Z
    :cond_7
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v2, :cond_8

    .line 1351
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v2, v3}, Lcom/android/incallui/RejectMsgContentPopup;->setVisibility(I)V

    .line 1353
    :cond_8
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtnContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1354
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtnContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateSmartCallRejectMsg(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 2367
    invoke-static {p1}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 2368
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 2369
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2372
    :cond_0
    return-void
.end method
