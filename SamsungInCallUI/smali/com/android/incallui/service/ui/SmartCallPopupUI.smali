.class public Lcom/android/incallui/service/ui/SmartCallPopupUI;
.super Lcom/android/incallui/service/ui/PopupUI;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SmartCallPopupUI"


# instance fields
.field private mIsDefaultPhoto:Z

.field mIsSmamCallUpdated:Z

.field private mPreviousState:I

.field private mSmartCallInfoStub:Landroid/view/ViewStub;

.field private mSmartCallName:Landroid/widget/TextView;

.field private mSmartCallNumber:Landroid/widget/TextView;

.field private mSmartCallPhoto:Landroid/widget/ImageView;

.field private mSmartCallSmallIcon:Landroid/widget/ImageView;

.field private mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

.field private mSmartCallStatusText:Landroid/widget/TextView;

.field private mSmartCalllIcon:Landroid/view/ViewStub;

.field private mSmartCalllIconOnPicture:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/service/ui/PopupUI;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mIsSmamCallUpdated:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mPreviousState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mIsDefaultPhoto:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/ui/SmartCallPopupUI;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    return-object v0
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

.method private setSmartCallPhotoFilter(I)V
    .locals 5

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v0, "SmartCallPopupUI"

    const-string v1, "setSmartCallPhotoFilter()"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne p1, v3, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mPreviousState:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/service/ui/SmartCallPopupUI$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI$1;-><init>(Lcom/android/incallui/service/ui/SmartCallPopupUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mIsDefaultPhoto:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0221

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method


# virtual methods
.method public canShowSpamCallPhotoPre(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "spam_call_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    :goto_0
    if-ne v3, v0, :cond_2

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->spamCallInfo:Lcom/android/incallui/operator/chn/SpamCallInfo;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->spamCallInfo:Lcom/android/incallui/operator/chn/SpamCallInfo;

    iget-boolean v2, v2, Lcom/android/incallui/operator/chn/SpamCallInfo;->isSpam:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->spamCallInfo:Lcom/android/incallui/operator/chn/SpamCallInfo;

    iget-object v2, v2, Lcom/android/incallui/operator/chn/SpamCallInfo;->spamTagName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v2, :cond_2

    iget-boolean v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    if-nez v2, :cond_2

    iget-boolean v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v2, :cond_2

    const-string v1, "SmartCallPopupUI"

    const-string v2, "canShowSpamCallPhotoPre true "

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    const-string v2, "SmartCallPopupUI"

    const-string v3, "canShowSpamCallPhotoPre false"

    invoke-static {v2, v3, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_1
.end method

.method public init()V
    .locals 3

    const-string v0, "SmartCallPopupUI"

    const-string v1, "init()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mIsSmamCallUpdated:Z

    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100298

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f10029b

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100287

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f1002a0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallInfoStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f1004c0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100299

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCalllIcon:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCalllIcon:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCalllIcon:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f1003f4

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100288

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCalllIconOnPicture:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCalllIconOnPicture:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCalllIconOnPicture:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f1003f5

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    :cond_3
    return-void
.end method

.method onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public setPrimarySpamInfo(Lcom/android/incallui/operator/chn/SpamCallInfo;ZZZ)V
    .locals 8

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/SecOpenThemeUtils;->setPopupYpBackgroundResource(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lcom/android/incallui/operator/chn/SpamCallInfo;->spamTagName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/incallui/operator/chn/SpamCallInfo;->spamNumber:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/android/incallui/operator/chn/SpamCallInfo;->isSpam:Z

    iget v3, p1, Lcom/android/incallui/operator/chn/SpamCallInfo;->spamCount:I

    iget v4, p1, Lcom/android/incallui/operator/chn/SpamCallInfo;->spamTagType:I

    const-string v5, "SmartCallPopupUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPrimarySpamInfo mTagName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isSpam : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTagType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mNumber : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " isContactExist : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " isYellowPage : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " isVoiceMail :"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    invoke-static {v5, v1, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a052b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    if-nez p2, :cond_6

    if-nez p3, :cond_6

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    if-eqz p4, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamReportOwn()I

    move-result v5

    if-le v4, v5, :cond_9

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    invoke-static {v0, v1}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallRegisterImage(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCallTagName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09034d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCallTagName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    const/4 v5, 0x1

    if-eq v4, v5, :cond_a

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    invoke-static {v0, v1}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallRegisterImage(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09034f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v4}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCallTagName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    const/4 v4, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 7

    const/16 v6, 0xa

    const/16 v5, 0x9

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "SmartCallPopupUI"

    const-string v3, "updatePrimaryDisplayInfo()"

    invoke-static {v0, v3, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "spam_call_enable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v2

    :goto_0
    if-ne v3, v2, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-eq v0, v5, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-eq v0, v6, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->spamCallInfo:Lcom/android/incallui/operator/chn/SpamCallInfo;

    iget-boolean v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    iget-boolean v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    iget-boolean v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->setPrimarySpamInfo(Lcom/android/incallui/operator/chn/SpamCallInfo;ZZZ)V

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-eq v0, v5, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-ne v0, v6, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->updateSmartCallInfo()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->updateTextColor(I)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->setSmartCallPhotoFilter(I)V

    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mPreviousState:I

    return-void

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public updateSmartCallInfo()V
    .locals 11

    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v9, 0x8

    const/4 v1, 0x0

    const-string v0, "SmartCallPopupUI"

    const-string v4, "updateSmartCallInfo()"

    invoke-static {v0, v4, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v3, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v0, :cond_3

    iget-boolean v0, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const-string v0, "SmartCallPopupUI"

    const-string v6, "updateSmartCallInfo"

    invoke-static {v0, v6, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v4}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v6

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v7, 0x9

    if-eq v0, v7, :cond_5

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v7, 0xa

    if-ne v0, v7, :cond_b

    :cond_5
    move v0, v2

    :goto_1
    iget-object v7, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    if-eqz v7, :cond_6

    invoke-virtual {v4, v1}, Lcom/android/incallui/Call;->setSmartCallSearching(Z)V

    :cond_6
    if-eqz v7, :cond_16

    iget-object v8, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v6, :cond_16

    :cond_7
    iget-object v0, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    if-eqz v0, :cond_c

    if-gt v6, v2, :cond_c

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v4, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a052b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    invoke-static {v8, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v5, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v4}, Lcom/android/incallui/util/GraphicResourceUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v4, v4}, Lcom/android/incallui/util/GraphicResourceUtils;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/GraphicResourceUtils;->getDrawableFromBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-boolean v1, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mIsDefaultPhoto:Z

    :goto_2
    move-object v3, v0

    move v0, v1

    :goto_3
    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/incallui/util/SecOpenThemeUtils;->setPopupSmartBackgroundResource(Landroid/content/Context;Z)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getNameLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0092

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/android/incallui/smartcall/SmartCallUtil;->setSmartAppLogging(ILandroid/content/Context;)V

    iget-object v0, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    if-gt v6, v10, :cond_11

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    iget-object v3, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v3, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_a

    iget-object v0, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    const v4, 0x7f09033a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto/16 :goto_1

    :cond_c
    if-eqz v6, :cond_10

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a052b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    if-ne v6, v2, :cond_e

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020480

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_d
    :goto_6
    move v0, v2

    goto/16 :goto_3

    :cond_e
    if-ne v6, v10, :cond_f

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020483

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_6

    :cond_f
    const/4 v4, 0x3

    if-ne v6, v4, :cond_d

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020482

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v0, v1

    goto/16 :goto_3

    :cond_11
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    iget-object v3, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_12
    iget-object v0, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->managerMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    iget-object v2, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->managerMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_13
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_14
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCountry:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v7, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_15
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_16
    iget-object v2, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v0, :cond_17

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getSmartCallSearching()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09033b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_18
    move-object v0, v3

    goto/16 :goto_2
.end method

.method public updateTextColor(I)V
    .locals 12

    const/16 v11, 0x8

    const/4 v10, 0x0

    const v9, 0x3ecccccd    # 0.4f

    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const-string v0, "SmartCallPopupUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTextColor() state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e019c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0170

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e016e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0170

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x9

    if-ne p1, v6, :cond_a

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_4
    :goto_0
    if-ne p1, v11, :cond_e

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_9
    :goto_1
    return-void

    :cond_a
    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    iget v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mPreviousState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :cond_e
    const/4 v0, 0x3

    if-ne p1, v0, :cond_14

    iget v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mPreviousState:I

    if-ne v0, v11, :cond_14

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v8, [F

    aput v7, v3, v10

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_f
    iget-object v1, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v8, [F

    aput v7, v3, v10

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_10
    iget-object v1, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v8, [F

    aput v7, v3, v10

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_11
    iget-object v1, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v8, [F

    aput v7, v3, v10

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_12
    iget-object v1, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v8, [F

    aput v7, v3, v10

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_13
    iget-object v1, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    :cond_14
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_15
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_16
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_17
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_18
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_1
.end method
