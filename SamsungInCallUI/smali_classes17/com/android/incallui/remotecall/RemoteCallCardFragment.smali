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

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 81
    iput-boolean v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mIsActivityCreated:Z

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->oldState:I

    .line 464
    iput v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->EVENT_UPDATE_UI:I

    .line 466
    new-instance v0, Lcom/android/incallui/remotecall/RemoteCallCardFragment$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment$2;-><init>(Lcom/android/incallui/remotecall/RemoteCallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private arrangePrimaryLayout()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 328
    iget-object v7, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 330
    const/4 v5, 0x0

    .local v5, "nameTextSize":F
    const/4 v6, 0x0

    .local v6, "numberTextSize":F
    const/4 v4, 0x0

    .line 331
    .local v4, "nameSpamTextSize":F
    const/4 v3, 0x0

    .line 332
    .local v3, "nameMarginTop":I
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0086

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    .line 334
    .local v2, "nameMarginSide":I
    iget-boolean v7, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mContactExist:Z

    if-nez v7, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01cb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 340
    :goto_0
    iget-object v7, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v7, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 342
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f1001dc

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 343
    .local v0, "mPrimaryNameLayout":Landroid/view/ViewGroup;
    iget-object v7, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 344
    .local v1, "nameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "nameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 348
    .restart local v1    # "nameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 349
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 350
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 351
    if-eqz v0, :cond_2

    .line 352
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    :goto_1
    return-void

    .line 337
    .end local v0    # "mPrimaryNameLayout":Landroid/view/ViewGroup;
    .end local v1    # "nameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a008d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_0

    .line 354
    .restart local v0    # "mPrimaryNameLayout":Landroid/view/ViewGroup;
    .restart local v1    # "nameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    iget-object v7, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private initMenuBtn(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/incallui/remotecall/RemoteCallCardFragment$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment$1;-><init>(Lcom/android/incallui/remotecall/RemoteCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setCallerInfo(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    .line 165
    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isContactExist()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mContactExist:Z

    .line 168
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getName()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "mName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mContactExist:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 173
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoneLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->setPrimaryImage(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->updateEriInfoText()V

    .line 178
    .end local v0    # "mName":Ljava/lang/String;
    :cond_1
    return-void

    .line 172
    .restart local v0    # "mName":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 271
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 272
    :cond_0
    const/4 v0, 0x0

    .line 275
    :goto_0
    return v0

    .line 274
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showEndCallContactBtn(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    const/4 v3, 0x0

    .line 440
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 441
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

    .line 447
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isContactExist()Z

    move-result v0

    if-nez v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    .line 449
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090246

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public arrangeLayout(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    .line 304
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v0

    .line 306
    .local v0, "state":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->initMenuBtn(I)V

    .line 307
    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->updateCallStateSubInfo(I)V

    .line 308
    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->updateTextColor(I)V

    .line 310
    return-void

    .line 304
    .end local v0    # "state":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPresenter()Lcom/android/incallui/remotecall/RemoteCallPresenter;
    .locals 1

    .prologue
    .line 457
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    return-object v0
.end method

.method public isActivityCreated()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mIsActivityCreated:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    const-string v0, "onActivityCreated"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mIsActivityCreated:Z

    .line 104
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v6, 0x7f090092

    const/4 v5, 0x0

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 479
    .local v1, "id":I
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

    .line 480
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    .line 481
    .local v0, "call":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    packed-switch v1, :pswitch_data_0

    .line 506
    const-string v2, "onClick: call super onClick"

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 483
    :pswitch_0
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090292

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 485
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 486
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 487
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 489
    :cond_1
    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPersonId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/incallui/util/PackageHelpers;->viewContactClicked(J)V

    goto :goto_0

    .line 495
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->isContactsApplicationEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 496
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 497
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 499
    :cond_3
    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/PackageHelpers;->createContactClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :pswitch_data_0
    .packed-switch 0x7f100324
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->addListener(Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;)V

    .line 96
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 122
    const v0, 0x7f040091

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->removeListener(Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;)V

    .line 109
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 110
    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 128
    return-void
.end method

.method public onRemoteCallAdded()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public onRemoteCallEnded()V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method public onRemoteCallRemoved()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public onRemoteCallStateChanged(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V
    .locals 0
    .param p1, "remoteCallList"    # Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    .prologue
    .line 369
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->updateIndicatorArea(Z)V

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->updateUI()V

    .line 285
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 286
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 133
    const v0, 0x7f100246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    .line 134
    const v0, 0x7f100198

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f1000e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f10010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f1001da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhotoContainer:Landroid/view/View;

    .line 138
    const v0, 0x7f1000a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    .line 139
    const v0, 0x7f100193

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f100197

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    .line 141
    const v0, 0x7f100199

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f1000a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    .line 145
    const v0, 0x7f100248

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    .line 147
    const v0, 0x7f100208

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f1002da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mAddCallMenuStub:Landroid/view/ViewStub;

    .line 150
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mAddCallMenuStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mAddCallMenuStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 152
    const v0, 0x7f100417

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 157
    const v0, 0x7f1002f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    .line 158
    const v0, 0x7f100324

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    .line 159
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEndCallContactBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->setVisible(Z)V

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->arrangeLayout(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    .line 162
    return-void
.end method

.method public setPrimaryImage(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    .line 256
    if-nez p1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 259
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 260
    .local v1, "image":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0550

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 262
    .local v0, "diameter":I
    invoke-static {v1, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 263
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    .line 264
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 266
    .end local v0    # "diameter":I
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "nameDirection":I
    if-eqz p2, :cond_2

    .line 231
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 232
    const/4 v0, 0x3

    .line 233
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 239
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 215
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 248
    :cond_0
    if-eqz p1, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateCallStateSubInfo(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 313
    const-string v0, ""

    .line 315
    .local v0, "CallStateString":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090560

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    return-void

    .line 317
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090562

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_1
    const/16 v1, 0xc

    if-ne p1, v1, :cond_2

    .line 320
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090561

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public updateEriInfoText()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 182
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 184
    .local v1, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 185
    .local v4, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01ed

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 188
    .local v3, "mMinHeightForEri":I
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v4, Landroid/graphics/Point;->y:I

    if-ge v6, v3, :cond_1

    const/4 v2, 0x1

    .line 189
    .local v2, "isMultiWindow":Z
    :goto_1
    if-nez v2, :cond_2

    .line 190
    iget-object v6, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v2    # "isMultiWindow":Z
    :cond_1
    move v2, v5

    .line 188
    goto :goto_1

    .line 192
    .restart local v2    # "isMultiWindow":Z
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateIndicatorArea(Z)V
    .locals 2
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 512
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 513
    return-void

    .line 512
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateTextColor(I)V
    .locals 10
    .param p1, "state"    # I

    .prologue
    const/4 v9, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3ecccccd    # 0.4f

    .line 403
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0133

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 404
    .local v3, "bannerTextColor":I
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0132

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 406
    .local v2, "bannerSubTextColor":I
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f011c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 407
    .local v4, "endCallLabelColor":I
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f012e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 408
    .local v1, "bannerDefaultTextColor":I
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f012d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 410
    .local v0, "bannerDefaultSubTextColor":I
    const/4 v5, 0x1

    if-eq p1, v5, :cond_0

    if-ne p1, v9, :cond_b

    .line 411
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 412
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 413
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 415
    :cond_4
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 416
    :cond_5
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 426
    :cond_6
    :goto_0
    if-ne p1, v9, :cond_11

    .line 427
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f007f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 428
    :cond_7
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 429
    :cond_8
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 430
    :cond_9
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 437
    :cond_a
    :goto_1
    return-void

    .line 418
    :cond_b
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 419
    :cond_c
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 420
    :cond_d
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 421
    :cond_e
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 422
    :cond_f
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    :cond_10
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 432
    :cond_11
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 433
    :cond_12
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 434
    :cond_13
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 435
    :cond_14
    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1
.end method

.method public updateUI()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 462
    return-void
.end method

.method public updateUI(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V
    .locals 4
    .param p1, "remoteCallList"    # Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    .prologue
    .line 377
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v2

    if-nez v2, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 381
    const-string v2, "update UI Fail: not isAdded"

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    .line 386
    .local v0, "call":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    if-nez v0, :cond_3

    .line 387
    const-string v2, "update UI Fail: call is null"

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 390
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

    .line 391
    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v1

    .line 393
    .local v1, "state":I
    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->setCallerInfo(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    .line 394
    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->arrangeLayout(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    .line 395
    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->showEndCallContactBtn(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    .line 397
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->oldState:I

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 398
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v2

    iput v2, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->oldState:I

    goto :goto_0
.end method
