.class public Lcom/android/incallui/service/ui/SmartCallPopupUI;
.super Lcom/android/incallui/service/ui/PopupUI;
.source "SmartCallPopupUI.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mIsSmamCallUpdated:Z

.field private mSmartCallInfoStub:Landroid/view/ViewStub;

.field private mSmartCallName:Landroid/widget/TextView;

.field private mSmartCallNumber:Landroid/widget/TextView;

.field private mSmartCallPhoto:Landroid/widget/ImageView;

.field private mSmartCallSmallIcon:Landroid/widget/ImageView;

.field private mSmartCallStatusText:Landroid/widget/TextView;

.field private mSmartCalllIcon:Landroid/view/ViewStub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/service/ui/PopupUI;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mIsSmamCallUpdated:Z

    return-void
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


# virtual methods
.method public init()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mIsSmamCallUpdated:Z

    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f10021d

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f10021f

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100208

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100224

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

    const v1, 0x7f100437

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100218

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

    const v1, 0x7f10035e

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    :cond_2
    return-void
.end method

.method public isSmartCallPhotoVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public setPrimarySpamInfo(Ljava/lang/String;ZIILjava/lang/String;ZZZ)V
    .locals 7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPrimarySpamInfo mTagName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isSpam : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mTagType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isContactExist : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isYellowPage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isVoiceMail :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p7, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0203fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/SecOpenThemeUtils;->setPopupYpBackgroundResource(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallInfoStub:Landroid/view/ViewStub;

    if-nez v3, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p6, :cond_4

    if-nez p7, :cond_4

    const/4 v3, 0x1

    if-eq p4, v3, :cond_4

    if-eqz p8, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamReportOwn()I

    move-result v3

    if-le p4, v3, :cond_6

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCallTagName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p4}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCallTagName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupContainer;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x1

    if-eq p4, v3, :cond_7

    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCallTagName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 11

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "spam_call_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const/4 v9, 0x1

    :goto_0
    const/4 v0, 0x1

    if-ne v10, v0, :cond_1

    if-nez v9, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamTagName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam()Z

    move-result v2

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCount()I

    move-result v3

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamTagType()I

    move-result v4

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamNumber()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    iget-boolean v7, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    iget-boolean v8, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->setPrimarySpamInfo(Ljava/lang/String;ZIILjava/lang/String;ZZZ)V

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

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

    const/4 v1, 0x0

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

    :cond_4
    return-void

    :cond_5
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public updateSmartCallInfo()V
    .locals 24

    const-string v2, "SmartCallPopupUI"

    const-string v3, "updateSmartCallInfo "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallInfoStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v2, :cond_3

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getName()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    const-string v2, "updateSmartCallInfo"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v21

    invoke-virtual {v11}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_5

    invoke-virtual {v11}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_10

    :cond_5
    const/16 v20, 0x1

    :goto_1
    const/16 v17, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/android/incallui/Call;->setSmartCallSearching(Z)V

    :cond_6
    if-eqz v23, :cond_23

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v21, :cond_23

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mIsSmamCallUpdated:Z

    if-nez v2, :cond_8

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mIsSmamCallUpdated:Z

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_11

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    :goto_2
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    if-eqz v4, :cond_12

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    :goto_3
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    if-eqz v5, :cond_13

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    :goto_4
    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    if-eqz v6, :cond_14

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    :goto_5
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderName:Ljava/lang/String;

    if-eqz v7, :cond_15

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderName:Ljava/lang/String;

    :goto_6
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderImageUrl:Ljava/lang/String;

    if-eqz v8, :cond_16

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderImageUrl:Ljava/lang/String;

    :goto_7
    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    if-eqz v9, :cond_17

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    :goto_8
    move-object/from16 v0, v23

    iget-object v10, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    if-eqz v10, :cond_18

    move-object/from16 v0, v23

    iget-object v10, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    :goto_9
    invoke-virtual/range {v2 .. v10}, Lcom/android/incallui/TelecomAdapter;->setSmartCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/16 v19, 0x0

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    move/from16 v0, v21

    if-gt v0, v2, :cond_19

    new-instance v22, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0385

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v14, v2

    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v15, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    if-eqz v15, :cond_9

    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v0, v14, v14}, Lcom/android/incallui/util/GraphicResourceUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v14, v14}, Lcom/android/incallui/util/GraphicResourceUtils;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/GraphicResourceUtils;->getDrawableFromBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3, v14}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    :cond_9
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_a

    const-string v2, "SmartCallPopupUI"

    const-string v3, "updateSmartCallInfo show small one for safe contact "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    :goto_a
    if-eqz v19, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    move/from16 v0, v17

    invoke-static {v3, v0}, Lcom/android/incallui/util/SecOpenThemeUtils;->setPopupSmartBackgroundResource(Landroid/content/Context;Z)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v1}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    move/from16 v0, v21

    invoke-static {v0, v2}, Lcom/android/incallui/smartcall/SmartCallUtil;->setSmartAppLogging(ILandroid/content/Context;)V

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_c

    if-nez v21, :cond_1e

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallInfoStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_e

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0902c1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_e
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getCityIdView()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getCityIdView()Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getName()Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_10
    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_11
    const-string v3, ""

    goto/16 :goto_2

    :cond_12
    const-string v4, ""

    goto/16 :goto_3

    :cond_13
    const-string v5, ""

    goto/16 :goto_4

    :cond_14
    const-string v6, ""

    goto/16 :goto_5

    :cond_15
    const-string v7, ""

    goto/16 :goto_6

    :cond_16
    const-string v8, ""

    goto/16 :goto_7

    :cond_17
    const-string v9, ""

    goto/16 :goto_8

    :cond_18
    const-string v10, ""

    goto/16 :goto_9

    :cond_19
    if-eqz v21, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0385

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v14, v2

    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_1b

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0203d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3, v14}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    :cond_1a
    :goto_d
    const/16 v17, 0x1

    goto/16 :goto_a

    :cond_1b
    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_1c

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0203d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3, v14}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    goto :goto_d

    :cond_1c
    const/4 v2, 0x3

    move/from16 v0, v21

    if-ne v0, v2, :cond_1a

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0203d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3, v14}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    goto :goto_d

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    invoke-static/range {v21 .. v21}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    :cond_1f
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->managerMessage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->managerMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    :cond_20
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v2

    if-nez v2, :cond_21

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    :cond_21
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v2

    if-eqz v2, :cond_22

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCountry:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v20, :cond_24

    invoke-virtual {v11}, Lcom/android/incallui/Call;->getSmartCallSearching()Z

    move-result v2

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getName()Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getName()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
