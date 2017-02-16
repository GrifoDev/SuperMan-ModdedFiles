.class public Lcom/android/incallui/richscreen/RichScreenCallCardFragment;
.super Lcom/android/incallui/fragment/VoiceCallCardFragment;
.source "RichScreenCallCardFragment.java"

# interfaces
.implements Lcom/android/incallui/CallCardUi;


# instance fields
.field private mContactCid:Ljava/lang/String;

.field private mDisplayingView:Landroid/view/View;

.field private mRichInfoUri:Ljava/lang/String;

.field private mRichScreenGreetingString:Ljava/lang/String;

.field private mRichScreenImageView:Landroid/widget/ImageView;

.field private mRichScreenMovieView:Lcom/android/incallui/richscreen/MovieImageView;

.field private mRichScreenNumNamePNLBg:Landroid/widget/ImageView;

.field private mRichScreenSaveButton:Landroid/widget/Button;

.field private mRichScreenText:Landroid/widget/TextView;

.field public mRichScreenType:Ljava/lang/String;

.field private mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

.field private mRichScreenVideoViewStub:Landroid/view/ViewStub;

.field private mScreenActionReceiver:Lcom/android/incallui/richscreen/ScreenActionReceiver;

.field private mStopPosition:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;-><init>()V

    return-void
.end method

.method private arrangeRichScreenInfoView(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v9, 0x7f0a011f

    const v8, 0x7f0a0560

    const/4 v5, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 267
    .local v2, "paddingStart":I
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01eb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 268
    .local v3, "paddingTop":I
    iget-object v6, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v6}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 269
    .local v4, "videoViewLP":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_3

    .line 270
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 271
    .local v0, "call":Lcom/android/incallui/Call;
    const/4 v1, 0x0

    .line 272
    .local v1, "isIncoming":Z
    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_4

    :cond_0
    const/4 v1, 0x1

    .line 274
    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    .line 275
    iget-object v6, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    if-ne p1, v6, :cond_2

    .line 276
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0495

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 277
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0496

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 278
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v6, v5, v7, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 279
    iget-object v6, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v6, v4}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a055e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 282
    invoke-virtual {p1, v2, v3, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 292
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "isIncoming":Z
    :cond_3
    :goto_1
    return-void

    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v1    # "isIncoming":Z
    :cond_4
    move v1, v5

    .line 273
    goto :goto_0

    .line 284
    :cond_5
    iget-object v6, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    if-ne p1, v6, :cond_6

    .line 285
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0497

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 286
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v6, v5, v7, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 287
    iget-object v6, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v6, v4}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    :cond_6
    invoke-virtual {p1, v2, v3, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method

.method private setDisplayingView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mDisplayingView:Landroid/view/View;

    .line 324
    return-void
.end method


# virtual methods
.method public RCSVideoPause()V
    .locals 1

    .prologue
    .line 295
    const-string v0, "RCSVideoPause"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

    invoke-virtual {v0}, Lcom/android/incallui/richscreen/CustomerVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mStopPosition:I

    .line 297
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

    invoke-virtual {v0}, Lcom/android/incallui/richscreen/CustomerVideoView;->stopPlayback()V

    .line 298
    return-void
.end method

.method public RCSVideoReplay()V
    .locals 2

    .prologue
    .line 301
    const-string v0, "RCSVideoReplay"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

    iget v1, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mStopPosition:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/richscreen/CustomerVideoView;->seekTo(I)V

    .line 303
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mStopPosition:I

    .line 304
    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 241
    invoke-super {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangePrimaryLayout()V

    .line 242
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 243
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 244
    const/4 v4, 0x0

    .line 245
    .local v4, "nameMarginTop":I
    const/4 v3, 0x0

    .line 246
    .local v3, "nameMarginSide":I
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0559

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    .line 248
    .local v5, "nameTextSize":I
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f1001dc

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 249
    .local v1, "mPrimaryNameLayout":Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 250
    .local v2, "nameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "nameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 253
    .restart local v2    # "nameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 254
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 255
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 256
    if-eqz v1, :cond_2

    .line 257
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    :goto_0
    iget-object v6, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    int-to-float v7, v5

    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 263
    .end local v1    # "mPrimaryNameLayout":Landroid/view/ViewGroup;
    .end local v2    # "nameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3    # "nameMarginSide":I
    .end local v4    # "nameMarginTop":I
    .end local v5    # "nameTextSize":I
    :cond_1
    return-void

    .line 259
    .restart local v1    # "mPrimaryNameLayout":Landroid/view/ViewGroup;
    .restart local v2    # "nameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v3    # "nameMarginSide":I
    .restart local v4    # "nameMarginTop":I
    .restart local v5    # "nameTextSize":I
    :cond_2
    iget-object v6, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 209
    .local v1, "id":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick(View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 211
    .local v0, "call":Lcom/android/incallui/Call;
    packed-switch v1, :pswitch_data_0

    .line 217
    const-string v3, "onClick: call super onClick"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->onClick(Landroid/view/View;)V

    .line 221
    :goto_0
    return-void

    .line 213
    :pswitch_0
    new-instance v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;

    invoke-direct {v2}, Lcom/android/incallui/richscreen/RichCallScreenUtils;-><init>()V

    .line 214
    .local v2, "mRichCallScreenUtils":Lcom/android/incallui/richscreen/RichCallScreenUtils;
    iget-object v3, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mContactCid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/richscreen/RichCallScreenUtils;->CollectRichScrnObj(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x7f10032c
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    return-void
.end method

.method public onCreateRichScreenView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 102
    sget-object v5, Lcom/android/incallui/richscreen/RichCallScreenUtils;->SourceType:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenType:Ljava/lang/String;

    .line 103
    sget-object v5, Lcom/android/incallui/richscreen/RichCallScreenUtils;->Greeting:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenGreetingString:Ljava/lang/String;

    .line 104
    sget-object v5, Lcom/android/incallui/richscreen/RichCallScreenUtils;->Cid:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mContactCid:Ljava/lang/String;

    .line 105
    sget-object v5, Lcom/android/incallui/richscreen/RichCallScreenUtils;->URL:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichInfoUri:Ljava/lang/String;

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RCSType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ;RCSUrl : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichInfoUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ;mRCSGreeting :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenGreetingString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ;mContactCid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mContactCid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenGreetingString:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 108
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenGreetingString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenType:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 110
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenType:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 111
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenMovieView:Lcom/android/incallui/richscreen/MovieImageView;

    invoke-virtual {v5, v7}, Lcom/android/incallui/richscreen/MovieImageView;->setVisibility(I)V

    .line 112
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 113
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichInfoUri:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 116
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichInfoUri:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, "is":Ljava/io/FileInputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v5}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->arrangeRichScreenInfoView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "is":Ljava/io/FileInputStream;
    :goto_0
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v5}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->setDisplayingView(Landroid/view/View;)V

    .line 170
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenSaveButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenNumNamePNLBg:Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    .line 172
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenNumNamePNLBg:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    :cond_2
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateRichScreenView: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenType:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 127
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 129
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichInfoUri:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 131
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichInfoUri:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 132
    .local v3, "isMovie":Ljava/io/FileInputStream;
    invoke-static {v3}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v4

    .line 133
    .local v4, "movie":Landroid/graphics/Movie;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 134
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenMovieView:Lcom/android/incallui/richscreen/MovieImageView;

    invoke-virtual {v5, v4}, Lcom/android/incallui/richscreen/MovieImageView;->setImageMovie(Landroid/graphics/Movie;)V

    .line 135
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenMovieView:Lcom/android/incallui/richscreen/MovieImageView;

    invoke-direct {p0, v5}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->arrangeRichScreenInfoView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    .end local v3    # "isMovie":Ljava/io/FileInputStream;
    .end local v4    # "movie":Landroid/graphics/Movie;
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenMovieView:Lcom/android/incallui/richscreen/MovieImageView;

    invoke-virtual {v5, v8}, Lcom/android/incallui/richscreen/MovieImageView;->setVisibility(I)V

    .line 141
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenMovieView:Lcom/android/incallui/richscreen/MovieImageView;

    invoke-direct {p0, v5}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->setDisplayingView(Landroid/view/View;)V

    goto :goto_1

    .line 136
    :catch_1
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateRichScreenView: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenType:Ljava/lang/String;

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenMovieView:Lcom/android/incallui/richscreen/MovieImageView;

    invoke-virtual {v5, v7}, Lcom/android/incallui/richscreen/MovieImageView;->setVisibility(I)V

    .line 144
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_6

    .line 146
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f10034e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/richscreen/CustomerVideoView;

    iput-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

    .line 149
    :cond_6
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichInfoUri:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 150
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

    iget-object v6, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichInfoUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/incallui/richscreen/CustomerVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 151
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

    invoke-virtual {v5}, Lcom/android/incallui/richscreen/CustomerVideoView;->start()V

    .line 152
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

    new-instance v6, Lcom/android/incallui/richscreen/RichScreenCallCardFragment$1;

    invoke-direct {v6, p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment$1;-><init>(Lcom/android/incallui/richscreen/RichScreenCallCardFragment;)V

    invoke-virtual {v5, v6}, Lcom/android/incallui/richscreen/CustomerVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 161
    :cond_7
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_8

    .line 162
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    invoke-direct {p0, v5}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->arrangeRichScreenInfoView(Landroid/view/View;)V

    .line 164
    :cond_8
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

    if-eqz v5, :cond_9

    .line 165
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

    invoke-virtual {v5, v8}, Lcom/android/incallui/richscreen/CustomerVideoView;->setVisibility(I)V

    .line 167
    :cond_9
    iget-object v5, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    invoke-direct {p0, v5}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->setDisplayingView(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setRichScreen(Z)V

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 81
    const v0, 0x7f040107

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 198
    const-string v0, "onDestroyView..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 202
    :cond_0
    invoke-super {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->onDestroyView()V

    .line 203
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mChnFeatureView:Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setRichScreen(Z)V

    .line 204
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->onResume()V

    .line 180
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->onCreateRichScreenView()V

    .line 181
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mScreenActionReceiver:Lcom/android/incallui/richscreen/ScreenActionReceiver;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/android/incallui/richscreen/ScreenActionReceiver;

    invoke-direct {v0}, Lcom/android/incallui/richscreen/ScreenActionReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mScreenActionReceiver:Lcom/android/incallui/richscreen/ScreenActionReceiver;

    .line 183
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mScreenActionReceiver:Lcom/android/incallui/richscreen/ScreenActionReceiver;

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/richscreen/ScreenActionReceiver;->registerScreenActionReceiver(Landroid/content/Context;)V

    .line 185
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 189
    const-string v0, "onStop..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-super {p0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->onStop()V

    .line 191
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mScreenActionReceiver:Lcom/android/incallui/richscreen/ScreenActionReceiver;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mScreenActionReceiver:Lcom/android/incallui/richscreen/ScreenActionReceiver;

    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/richscreen/ScreenActionReceiver;->unRegisterScreenActionReceiver(Landroid/content/Context;)V

    .line 194
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    const v0, 0x7f10032b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenText:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f10032c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenSaveButton:Landroid/widget/Button;

    .line 90
    const v0, 0x7f10034e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/richscreen/CustomerVideoView;

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoView:Lcom/android/incallui/richscreen/CustomerVideoView;

    .line 91
    const v0, 0x7f100326

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    .line 92
    const v0, 0x7f100327

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenImageView:Landroid/widget/ImageView;

    .line 93
    const v0, 0x7f100328

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/richscreen/MovieImageView;

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenMovieView:Lcom/android/incallui/richscreen/MovieImageView;

    .line 94
    const v0, 0x7f100329

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenNumNamePNLBg:Landroid/widget/ImageView;

    .line 95
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mRichScreenVideoViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 99
    :cond_0
    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 1
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
    .line 318
    invoke-super/range {p0 .. p10}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V

    .line 319
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mDisplayingView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->arrangeRichScreenInfoView(Landroid/view/View;)V

    .line 320
    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "isConference"    # Z
    .param p5, "canManageConference"    # Z
    .param p6, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p7, "isWorkCall"    # Z

    .prologue
    .line 226
    invoke-super/range {p0 .. p7}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 227
    invoke-virtual {p0}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->onCreateRichScreenView()V

    .line 228
    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 3
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    .line 232
    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 234
    move v0, p2

    .line 235
    .local v0, "showPhotoContainer":Z
    iget-object v2, p0, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    return-void

    .line 235
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method
