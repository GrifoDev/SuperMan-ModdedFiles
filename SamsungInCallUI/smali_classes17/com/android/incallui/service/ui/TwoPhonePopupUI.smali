.class public Lcom/android/incallui/service/ui/TwoPhonePopupUI;
.super Lcom/android/incallui/service/ui/PopupUI;
.source "TwoPhonePopupUI.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mKTBusiness:Landroid/widget/ImageView;

.field private mKTPersonal:Landroid/widget/ImageView;

.field private mKTtwophoneStub:Landroid/view/ViewStub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/service/ui/TwoPhonePopupUI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/service/ui/TwoPhonePopupUI;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/service/ui/PopupUI;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/TwoPhonePopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f10021a

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/service/ui/TwoPhonePopupUI;->mKTtwophoneStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/service/ui/TwoPhonePopupUI;->mKTtwophoneStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/ui/TwoPhonePopupUI;->mKTtwophoneStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/TwoPhonePopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100130

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/TwoPhonePopupUI;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/TwoPhonePopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100131

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/TwoPhonePopupUI;->mKTPersonal:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegisteredForCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/ui/TwoPhonePopupUI;->mKTBusiness:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/ui/TwoPhonePopupUI;->mKTPersonal:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/ui/TwoPhonePopupUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/ui/TwoPhonePopupUI;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/TwoPhonePopupUI;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/ui/TwoPhonePopupUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/ui/TwoPhonePopupUI;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/TwoPhonePopupUI;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/ui/TwoPhonePopupUI;->mKTBusiness:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/ui/TwoPhonePopupUI;->mKTPersonal:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
