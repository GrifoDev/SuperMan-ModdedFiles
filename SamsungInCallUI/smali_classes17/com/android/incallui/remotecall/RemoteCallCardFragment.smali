.class public Lcom/android/incallui/remotecall/RemoteCallCardFragment;
.super Landroid/app/Fragment;
.source "RemoteCallCardFragment.java"

# interfaces
.implements Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final EVENT_UPDATE_UI:I

.field private mAddCallMenuStub:Landroid/view/ViewStub;

.field private mAddCallMenuText:Landroid/widget/TextView;

.field protected mBelowButtonLayout:Landroid/view/View;

.field protected mCallInfoContainer:Landroid/view/View;

.field protected mCallNumberAndLabel:Landroid/view/View;

.field protected mCallStateLabel:Landroid/widget/TextView;

.field protected mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

.field private mColorAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mContactExist:Z

.field protected mElapsedTime:Landroid/widget/TextView;

.field protected mEndCallContactBtn:Landroid/widget/Button;

.field private mEndCallRepeatCount:I

.field protected mEriInfoText:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field protected mIndicatorArea:Landroid/view/ViewGroup;

.field private mIsActivityCreated:Z

.field protected mLastestCallStateLabel:Ljava/lang/CharSequence;

.field protected mLastestCallTime:Ljava/lang/String;

.field protected mMoreButtonContainer:Landroid/view/View;

.field protected mNumberLabel:Landroid/widget/TextView;

.field protected mPhoneNumber:Landroid/widget/TextView;

.field protected mPhoto:Landroid/widget/ImageView;

.field protected mPhotoContainer:Landroid/view/View;

.field protected mPrimaryCallCardContainer:Landroid/view/View;

.field protected mPrimaryName:Landroid/widget/TextView;

.field private oldState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mIsActivityCreated:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->oldState:I

    iput v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->EVENT_UPDATE_UI:I

    new-instance v0, Lcom/android/incallui/remotecall/RemoteCallCardFragment$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment$2;-><init>(Lcom/android/incallui/remotecall/RemoteCallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private arrangePrimaryLayout()V
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0086

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    iget-boolean v7, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mContactExist:Z

    if-nez v7, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01cb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    :goto_0
    iget-object v7, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v7, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f1001dc

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_0
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a008d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private initMenuBtn(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/incallui/remotecall/RemoteCallCardFragment$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment$1;-><init>(Lcom/android/incallui/remotecall/RemoteCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setCallerInfo(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isContactExist()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mContactExist:Z

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mContactExist:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoneLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->setPrimaryImage(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->updateEriInfoText()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showEndCallContactBtn(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->hasLiveCallToDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isContactExist()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090246

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public arrangeLayout(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->initMenuBtn(I)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->updateCallStateSubInfo(I)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->updateTextColor(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPresenter()Lcom/android/incallui/remotecall/RemoteCallPresenter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    return-object v0
.end method

.method public isActivityCreated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mIsActivityCreated:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "onActivityCreated"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mIsActivityCreated:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const v6, 0x7f090092

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    packed-switch v1, :pswitch_data_0

    const-string v2, "onClick: call super onClick"

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090292

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPersonId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/incallui/util/PackageHelpers;->viewContactClicked(J)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/PackageHelpers;->createContactClicked(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100324
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->addListener(Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f040091

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->removeListener(Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onRemoteCallAdded()V
    .locals 0

    return-void
.end method

.method public onRemoteCallEnded()V
    .locals 0

    return-void
.end method

.method public onRemoteCallRemoved()V
    .locals 0

    return-void
.end method

.method public onRemoteCallStateChanged(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->updateIndicatorArea(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->updateUI()V

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f100246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    const v0, 0x7f100198

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const v0, 0x7f1000e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const v0, 0x7f10010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const v0, 0x7f1001da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const v0, 0x7f1000a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const v0, 0x7f100193

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const v0, 0x7f100197

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const v0, 0x7f100199

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const v0, 0x7f1000a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    const v0, 0x7f100248

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    const v0, 0x7f100208

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    const v0, 0x7f1002da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mAddCallMenuStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mAddCallMenuStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mAddCallMenuStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100417

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    const v0, 0x7f1002f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    const v0, 0x7f100324

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->setVisible(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->arrangeLayout(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    return-void
.end method

.method public setPrimaryImage(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0550

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    invoke-static {v1, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x3

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateCallStateSubInfo(I)V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090560

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090562

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090561

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public updateEriInfoText()V
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01ed

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v4, Landroid/graphics/Point;->y:I

    if-ge v6, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateIndicatorArea(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateTextColor(I)V
    .locals 10

    const/4 v9, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0133

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0132

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f011c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f012e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f012d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v5, 0x1

    if-eq p1, v5, :cond_0

    if-ne p1, v9, :cond_b

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    :goto_0
    if-ne p1, v9, :cond_11

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f007f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_7
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_8
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_9
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_a
    :goto_1
    return-void

    :cond_b
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_f
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_10
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_11
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_12
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_13
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_14
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1
.end method

.method public updateUI()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateUI(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "update UI Fail: not isAdded"

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v2, "update UI Fail: call is null"

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update UI from call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v1

    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->setCallerInfo(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->arrangeLayout(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->showEndCallContactBtn(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->oldState:I

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v2

    iput v2, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->oldState:I

    goto :goto_0
.end method
