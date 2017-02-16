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

    .prologue
    .line 50
    const-class v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 1
    .param p1, "secCallPopupContainer"    # Lcom/android/incallui/service/SecCallPopupContainer;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/incallui/service/ui/PopupUI;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mIsSmamCallUpdated:Z

    .line 67
    return-void
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 325
    if-nez p1, :cond_0

    .line 329
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mIsSmamCallUpdated:Z

    .line 74
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f10020f

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100211

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    .line 77
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100200

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100216

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallInfoStub:Landroid/view/ViewStub;

    .line 80
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 82
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f10042b

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f10020a

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCalllIcon:Landroid/view/ViewStub;

    .line 86
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCalllIcon:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCalllIcon:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 88
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100353

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    .line 91
    :cond_2
    return-void
.end method

.method onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;
    .param p4, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 333
    return-void
.end method

.method public setPrimarySpamInfo(Ljava/lang/String;ZIILjava/lang/String;ZZZ)V
    .locals 7
    .param p1, "mTagName"    # Ljava/lang/String;
    .param p2, "isSpam"    # Z
    .param p3, "mCount"    # I
    .param p4, "mTagType"    # I
    .param p5, "mNumber"    # Ljava/lang/String;
    .param p6, "isContactExist"    # Z
    .param p7, "isYellowPage"    # Z
    .param p8, "isVoiceMail"    # Z

    .prologue
    .line 95
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

    .line 98
    if-eqz p7, :cond_0

    .line 99
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

    .line 100
    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0203e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 101
    .local v0, "image":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/SecOpenThemeUtils;->setPopupYpBackgroundResource(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    .end local v0    # "image":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 107
    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallInfoStub:Landroid/view/ViewStub;

    if-nez v3, :cond_3

    .line 140
    :cond_2
    :goto_0
    return-void

    .line 112
    :cond_3
    const/4 v1, 0x0

    .line 113
    .local v1, "reportText":Ljava/lang/String;
    const/4 v2, 0x0

    .line 114
    .local v2, "reportTitle":Ljava/lang/String;
    if-nez p6, :cond_4

    if-nez p7, :cond_4

    const/4 v3, 0x1

    if-eq p4, v3, :cond_4

    if-eqz p8, :cond_5

    .line 115
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_5
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamReportOwn()I

    move-result v3

    if-le p4, v3, :cond_6

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    .line 120
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

    .line 121
    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902c4

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

    .line 131
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupContainer;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 122
    :cond_6
    const/4 v3, 0x1

    if-eq p4, v3, :cond_7

    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    .line 123
    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
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

    .line 126
    :cond_7
    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 11
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 144
    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "spam_call_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 146
    .local v10, "spamEnable":I
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const/4 v9, 0x1

    .line 147
    .local v9, "isEmergencyMode":Z
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

    .line 148
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamTagName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam()Z

    move-result v2

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCount()I

    move-result v3

    .line 149
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamTagType()I

    move-result v4

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamNumber()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    iget-boolean v7, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    iget-boolean v8, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    move-object v0, p0

    .line 148
    invoke-virtual/range {v0 .. v8}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->setPrimarySpamInfo(Ljava/lang/String;ZIILjava/lang/String;ZZZ)V

    .line 151
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 154
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .end local v9    # "isEmergencyMode":Z
    .end local v10    # "spamEnable":I
    :cond_3
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->updateSmartCallInfo()V

    .line 164
    :cond_4
    return-void

    .line 146
    .restart local v10    # "spamEnable":I
    :cond_5
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public updateSmartCallInfo()V
    .locals 24

    .prologue
    .line 167
    const-string v2, "SmartCallPopupUI"

    const-string v3, "updateSmartCallInfo "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v11

    .line 169
    .local v11, "call":Lcom/android/incallui/Call;
    if-nez v11, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v16

    .line 172
    .local v16, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v16, :cond_0

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
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

    .line 180
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v2, :cond_3

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-eqz v2, :cond_4

    .line 181
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getName()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 192
    :cond_4
    const-string v2, "updateSmartCallInfo"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-static {v11}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v21

    .line 194
    .local v21, "mSmartCallRegisterState":I
    invoke-virtual {v11}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_5

    invoke-virtual {v11}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_f

    :cond_5
    const/16 v20, 0x1

    .line 195
    .local v20, "mEndCallState":Z
    :goto_1
    const/16 v17, 0x0

    .line 197
    .local v17, "exsitSpamLevel":Z
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    move-object/from16 v23, v0

    .line 198
    .local v23, "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    if-eqz v23, :cond_6

    .line 199
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/android/incallui/Call;->setSmartCallSearching(Z)V

    .line 202
    :cond_6
    if-eqz v23, :cond_22

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v21, :cond_22

    .line 203
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mIsSmamCallUpdated:Z

    if-nez v2, :cond_8

    .line 204
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mIsSmamCallUpdated:Z

    .line 205
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_10

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    :goto_2
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    if-eqz v4, :cond_11

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationTypeCode:Ljava/lang/String;

    :goto_3
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    if-eqz v5, :cond_12

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryCode:Ljava/lang/String;

    :goto_4
    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    if-eqz v6, :cond_13

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUrl:Ljava/lang/String;

    :goto_5
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderName:Ljava/lang/String;

    if-eqz v7, :cond_14

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderName:Ljava/lang/String;

    :goto_6
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderImageUrl:Ljava/lang/String;

    if-eqz v8, :cond_15

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderImageUrl:Ljava/lang/String;

    :goto_7
    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    if-eqz v9, :cond_16

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->contentProviderUrl:Ljava/lang/String;

    :goto_8
    move-object/from16 v0, v23

    iget-object v10, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    if-eqz v10, :cond_17

    move-object/from16 v0, v23

    iget-object v10, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    :goto_9
    invoke-virtual/range {v2 .. v10}, Lcom/android/incallui/TelecomAdapter;->setSmartCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_8
    const/16 v19, 0x0

    .line 215
    .local v19, "mDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    move/from16 v0, v21

    if-gt v0, v2, :cond_18

    .line 216
    new-instance v22, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 217
    .local v22, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a038a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v14, v2

    .line 220
    .local v14, "diameter":I
    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v15, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 221
    .local v15, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v15, :cond_9

    .line 222
    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    .line 223
    .local v18, "mBitmap":Landroid/graphics/Bitmap;
    if-eqz v18, :cond_9

    .line 224
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

    .line 227
    .end local v18    # "mBitmap":Landroid/graphics/Bitmap;
    :cond_9
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_a

    .line 228
    const-string v2, "SmartCallPopupUI"

    const-string v3, "updateSmartCallInfo show small one for safe contact "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    .end local v14    # "diameter":I
    .end local v15    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v22    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_a
    :goto_a
    if-eqz v19, :cond_b

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    .line 250
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

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v1}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    move/from16 v0, v21

    invoke-static {v0, v2}, Lcom/android/incallui/smartcall/SmartCallUtil;->setSmartAppLogging(ILandroid/content/Context;)V

    .line 260
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 v2, 0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_c

    if-nez v21, :cond_1d

    .line 263
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :cond_d
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallInfoStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_e

    .line 276
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0902b4

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

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    :cond_e
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getName()Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 194
    .end local v17    # "exsitSpamLevel":Z
    .end local v19    # "mDrawable":Landroid/graphics/drawable/Drawable;
    .end local v20    # "mEndCallState":Z
    .end local v23    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_f
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 205
    .restart local v17    # "exsitSpamLevel":Z
    .restart local v20    # "mEndCallState":Z
    .restart local v23    # "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    :cond_10
    const-string v3, ""

    goto/16 :goto_2

    :cond_11
    const-string v4, ""

    goto/16 :goto_3

    :cond_12
    const-string v5, ""

    goto/16 :goto_4

    :cond_13
    const-string v6, ""

    goto/16 :goto_5

    :cond_14
    const-string v7, ""

    goto/16 :goto_6

    :cond_15
    const-string v8, ""

    goto/16 :goto_7

    :cond_16
    const-string v9, ""

    goto/16 :goto_8

    :cond_17
    const-string v10, ""

    goto/16 :goto_9

    .line 232
    .restart local v19    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :cond_18
    if-eqz v21, :cond_1c

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a038a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v14, v2

    .line 234
    .restart local v14    # "diameter":I
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_1a

    .line 235
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0203bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3, v14}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 241
    :cond_19
    :goto_d
    const/16 v17, 0x1

    .line 242
    goto/16 :goto_a

    .line 236
    :cond_1a
    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_1b

    .line 237
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0203c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3, v14}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    goto :goto_d

    .line 238
    :cond_1b
    const/4 v2, 0x3

    move/from16 v0, v21

    if-ne v0, v2, :cond_19

    .line 239
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0203bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3, v14}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    goto :goto_d

    .line 243
    .end local v14    # "diameter":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    .line 268
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    invoke-static/range {v21 .. v21}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 279
    :cond_1e
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->managerMessage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->managerMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 282
    :cond_1f
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v2

    if-nez v2, :cond_20

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    .line 283
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 284
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

    .line 285
    .local v12, "cityandstate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 287
    .end local v12    # "cityandstate":Ljava/lang/String;
    :cond_20
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCountry:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    .line 288
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 289
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

    .line 290
    .local v13, "countryandcity":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 293
    .end local v13    # "countryandcity":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 303
    .end local v19    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    if-nez v20, :cond_23

    invoke-virtual {v11}, Lcom/android/incallui/Call;->getSmartCallSearching()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getName()Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 316
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getName()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
