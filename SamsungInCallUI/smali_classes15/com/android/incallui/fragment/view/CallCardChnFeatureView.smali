.class public Lcom/android/incallui/fragment/view/CallCardChnFeatureView;
.super Ljava/lang/Object;
.source "CallCardChnFeatureView.java"

# interfaces
.implements Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallCardChnFeatureView"


# instance fields
.field private mCardSubscriber:Landroid/widget/TextView;

.field private mCardSubscriberStub:Landroid/view/ViewStub;

.field private mCdmaMultipartyBtn:Landroid/widget/Button;

.field private mCdmaMultipartyStub:Landroid/view/ViewStub;

.field private mElapsedTimeCTC:Landroid/widget/TextView;

.field private mElapsedTimeTitle:Landroid/widget/TextView;

.field private mElapsedTimeTitleStub:Landroid/view/ViewStub;

.field private final mFragment:Lcom/android/incallui/fragment/CallCardFragment;

.field private mInflateElapsedTimeTitle:Z

.field private mIsRichScreen:Z

.field private mOldCallState:I

.field private mPhoneNumberLocator:Landroid/widget/TextView;

.field private mPhoneNumberLocatorName:Landroid/widget/TextView;

.field private mPhoneNumberLocatorNumber:Landroid/widget/TextView;

.field private mPhoneNumberLocatorStub:Landroid/view/ViewStub;

.field private mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

.field private mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mInflateElapsedTimeTitle:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mIsRichScreen:Z

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mOldCallState:I

    .line 77
    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/view/CallCardChnFeatureView;)Lcom/android/incallui/fragment/CallCardFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    return-object v0
.end method

.method private arrangePrimaryLayout(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 23
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;

    .prologue
    .line 255
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    .line 257
    .local v5, "call":Lcom/android/incallui/Call;
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallInfoContainer()Landroid/view/View;

    move-result-object v6

    .line 259
    .local v6, "callInfoContainer":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 260
    .local v8, "infoLP":Landroid/widget/RelativeLayout$LayoutParams;
    iget v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 261
    .local v9, "infoMarginBottom":I
    iget v10, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 262
    .local v10, "infoMarginTop":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhotoContainer()Landroid/view/View;

    move-result-object v15

    .line 264
    .local v15, "photoContainer":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 265
    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->updatePhoneNumberLocatorTextColor(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    .line 268
    :cond_0
    const-string v19, "rich_call_screen_cmcc"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mIsRichScreen:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 269
    const/16 v19, 0xc

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a04a7

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v9, v0

    .line 272
    :cond_1
    iput v10, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 273
    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 275
    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    const-string v19, "rich_call_screen_cmcc"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mIsRichScreen:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPrimaryName()Landroid/widget/TextView;

    move-result-object v16

    .line 279
    .local v16, "primaryName":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v14

    .line 280
    .local v14, "phoneNumber":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getNumberLabel()Landroid/widget/TextView;

    move-result-object v13

    .line 281
    .local v13, "numberLabel":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v7

    .line 282
    .local v7, "callNumberAndLabel":Landroid/view/View;
    if-eqz v16, :cond_3

    .line 283
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_6

    const/4 v11, 0x1

    .line 284
    .local v11, "isPhotoVisible":Z
    :goto_0
    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v19

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    :cond_2
    const/4 v12, 0x1

    .line 285
    .local v12, "isRinging":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a055c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 287
    .end local v11    # "isPhotoVisible":Z
    .end local v12    # "isRinging":Z
    :cond_3
    if-eqz v16, :cond_4

    if-eqz v7, :cond_4

    .line 288
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 290
    .local v18, "rcsNameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 291
    .local v17, "rcsCallNumberAndLabel":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v15, :cond_8

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    .line 292
    const/16 v19, 0x44

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 293
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    const/16 v19, 0x44

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 295
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    .end local v17    # "rcsCallNumberAndLabel":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v18    # "rcsNameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    :goto_2
    if-eqz v14, :cond_5

    if-eqz v13, :cond_5

    .line 304
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0f0142

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0f0142

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    .end local v7    # "callNumberAndLabel":Landroid/view/View;
    .end local v13    # "numberLabel":Landroid/widget/TextView;
    .end local v14    # "phoneNumber":Landroid/widget/TextView;
    .end local v16    # "primaryName":Landroid/widget/TextView;
    :cond_5
    return-void

    .line 283
    .restart local v7    # "callNumberAndLabel":Landroid/view/View;
    .restart local v13    # "numberLabel":Landroid/widget/TextView;
    .restart local v14    # "phoneNumber":Landroid/widget/TextView;
    .restart local v16    # "primaryName":Landroid/widget/TextView;
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 284
    .restart local v11    # "isPhotoVisible":Z
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 297
    .end local v11    # "isPhotoVisible":Z
    .restart local v17    # "rcsCallNumberAndLabel":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v18    # "rcsNameLP":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_8
    const/16 v19, 0x10

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 298
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    const/16 v19, 0x10

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 300
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method private cdmaMultipartyButtonClicked()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 427
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 428
    .local v1, "call":Lcom/android/incallui/Call;
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    if-nez v3, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    if-nez v1, :cond_2

    .line 430
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 434
    :cond_2
    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubId(Lcom/android/incallui/Call;)I

    move-result v2

    .line 435
    .local v2, "subId":I
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 436
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 440
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "btnText":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v3}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090296

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 442
    const-string v3, "CallCardChnFeatureView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Swap Clicked, callId =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v3}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090285

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    const-string v3, "CallCardChnFeatureView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Merge Clicked, callId =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    .line 448
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    if-eqz v3, :cond_5

    .line 449
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 452
    :cond_5
    const-string v3, "voice_call_recording"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 453
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    goto/16 :goto_0
.end method

.method private inflateElapsedTimeTitleViewForCtcCallTime(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 311
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mInflateElapsedTimeTitle:Z

    if-ne v0, v1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mInflateElapsedTimeTitle:Z

    if-nez v0, :cond_2

    .line 315
    iput-boolean v1, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mInflateElapsedTimeTitle:Z

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    if-nez v0, :cond_3

    .line 318
    const v0, 0x7f100308

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    .line 320
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 322
    const v0, 0x7f100114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitle:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private manageCdmaMultipartyCallBtn()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 529
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 530
    .local v0, "call":Lcom/android/incallui/Call;
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    if-nez v4, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 532
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 536
    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 537
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 541
    :cond_4
    invoke-virtual {v0, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    .line 542
    .local v3, "showSwap":Z
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    .line 543
    .local v2, "showMerge":Z
    if-eqz v3, :cond_5

    .line 544
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090296

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 553
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v4}, Lcom/android/incallui/fragment/CallCardFragment;->getOnScreenMenuIcon()Landroid/widget/ImageButton;

    move-result-object v1

    .line 554
    .local v1, "onScreenMenuIcon":Landroid/widget/ImageButton;
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    .line 556
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 557
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 546
    .end local v1    # "onScreenMenuIcon":Landroid/widget/ImageButton;
    :cond_5
    if-eqz v2, :cond_6

    .line 547
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090285

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 551
    :cond_6
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private manageElapsedTimeTitle(I)V
    .locals 8
    .param p1, "state"    # I

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 460
    const-string v1, "CallCardChnFeatureView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manageElapsedTimeTitle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/CallCardFragment;->getCallStateLabel()Landroid/widget/TextView;

    move-result-object v0

    .line 462
    .local v0, "callStateLabel":Landroid/widget/TextView;
    if-eq v7, p1, :cond_0

    if-ne v6, p1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 463
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setPrimaryCallElapsedTimeTitle(Z)V

    .line 472
    :goto_0
    return-void

    .line 464
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_2

    if-eq v5, p1, :cond_2

    .line 465
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setPrimaryCallElapsedTimeTitle(Z)V

    goto :goto_0

    .line 466
    :cond_2
    const/4 v1, 0x3

    if-eq v1, p1, :cond_3

    if-eq v5, p1, :cond_3

    if-eq v6, p1, :cond_3

    if-ne v7, p1, :cond_4

    .line 468
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setPrimaryCallElapsedTimeTitle(Z)V

    goto :goto_0

    .line 470
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setPrimaryCallElapsedTimeTitle(Z)V

    goto :goto_0
.end method

.method private managePhoneNumberLocator(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 10
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "state"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v9, 0x8

    .line 383
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isPhoneNumberLocatorOn()Z

    move-result v1

    .line 384
    .local v1, "isPnlOn":Z
    const/4 v7, 0x4

    if-eq v7, p2, :cond_0

    const/4 v7, 0x5

    if-eq v7, p2, :cond_0

    .line 386
    invoke-static {p2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 387
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v2, v5

    .line 388
    .local v2, "needToShow":Z
    :goto_0
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    move v2, v5

    .line 390
    :goto_1
    const-string v5, "CallCardChnFeatureView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "managePhoneNumberLocator, needToShow="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isPnlOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v0

    .line 392
    .local v0, "callNumberAndLabel":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v3

    .line 393
    .local v3, "phoneNumber":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPrimaryName()Landroid/widget/TextView;

    move-result-object v4

    .line 394
    .local v4, "primaryName":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_1

    .line 395
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    .line 396
    const-string v5, "rich_call_screen_cmcc"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mIsRichScreen:Z

    if-eqz v5, :cond_5

    .line 397
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 398
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 399
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;

    invoke-virtual {v5, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 400
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    invoke-virtual {v5, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 401
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a055e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 424
    :cond_1
    :goto_2
    return-void

    .end local v0    # "callNumberAndLabel":Landroid/view/View;
    .end local v2    # "needToShow":Z
    .end local v3    # "phoneNumber":Landroid/widget/TextView;
    .end local v4    # "primaryName":Landroid/widget/TextView;
    :cond_2
    move v2, v6

    .line 387
    goto :goto_0

    .restart local v2    # "needToShow":Z
    :cond_3
    move v2, v6

    .line 388
    goto :goto_1

    .line 403
    .restart local v0    # "callNumberAndLabel":Landroid/view/View;
    .restart local v3    # "phoneNumber":Landroid/widget/TextView;
    .restart local v4    # "primaryName":Landroid/widget/TextView;
    :cond_4
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    invoke-virtual {v5, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 404
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;

    invoke-virtual {v5, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 405
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a055f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_2

    .line 408
    :cond_5
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_2

    .line 411
    :cond_6
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 412
    const-string v5, "rich_call_screen_cmcc"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 413
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;

    if-eqz v5, :cond_7

    .line 414
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;

    invoke-virtual {v5, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 415
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a055d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 417
    :cond_7
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    if-eqz v5, :cond_1

    .line 418
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    invoke-virtual {v5, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 419
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a055c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_2
.end method

.method private onViewCreated(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V
    .locals 7
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0a055a

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v1

    .line 136
    .local v1, "phoneNumber":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getNumberLabel()Landroid/widget/TextView;

    move-result-object v0

    .line 138
    .local v0, "numberLabel":Landroid/widget/TextView;
    const v2, 0x7f100309

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    .line 140
    const-string v2, "rich_call_screen_cmcc"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mIsRichScreen:Z

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 143
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v3

    div-float/2addr v2, v3

    .line 144
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v3

    mul-float/2addr v2, v3

    .line 141
    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 146
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 147
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v3

    div-float/2addr v2, v3

    .line 148
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v3

    mul-float/2addr v2, v3

    .line 145
    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 151
    :cond_0
    const-string v2, "phone_number_locator"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    const v2, 0x7f10014d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    .line 153
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 155
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 156
    const v2, 0x7f10014e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    .line 158
    :cond_1
    const-string v2, "rich_call_screen_cmcc"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    const v2, 0x7f100330

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;

    .line 160
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    .line 161
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 162
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;

    invoke-virtual {v2, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 163
    const v2, 0x7f100150

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    .line 165
    :cond_2
    const v2, 0x7f10032e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    .line 166
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    if-eqz v2, :cond_3

    .line 167
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 168
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    invoke-virtual {v2, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 169
    const v2, 0x7f10014f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    .line 175
    :cond_3
    iput-boolean v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mInflateElapsedTimeTitle:Z

    .line 176
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayCtcCallTimeDuration(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 177
    invoke-direct {p0, p2}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->inflateElapsedTimeTitleViewForCtcCallTime(Landroid/view/View;)V

    .line 179
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->displayCtcSubscriberName()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 180
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCardSubscriberStub:Landroid/view/ViewStub;

    if-nez v2, :cond_4

    .line 181
    const v2, 0x7f100207

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCardSubscriberStub:Landroid/view/ViewStub;

    .line 183
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCardSubscriberStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_5

    .line 184
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCardSubscriberStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 185
    const v2, 0x7f10023a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCardSubscriber:Landroid/widget/TextView;

    .line 190
    :cond_5
    const-string v2, "china_cdma_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 191
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyStub:Landroid/view/ViewStub;

    if-nez v2, :cond_6

    .line 192
    const v2, 0x7f10030b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyStub:Landroid/view/ViewStub;

    .line 193
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_6

    .line 194
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 195
    const v2, 0x7f10023b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    .line 196
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    :cond_6
    return-void
.end method

.method private setCallState(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 5
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "state"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 212
    const-string v0, "phone_number_locator"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->managePhoneNumberLocator(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    .line 216
    :cond_0
    invoke-static {p2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayCtcCallTimeDuration(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->inflateElapsedTimeTitleViewForCtcCallTime(Landroid/view/View;)V

    .line 225
    invoke-direct {p0, p2}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->manageElapsedTimeTitle(I)V

    .line 228
    :cond_4
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->displayCtcSubscriberName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 229
    invoke-virtual {p0, p2}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->manageCardName(I)V

    .line 232
    :cond_5
    const-string v0, "china_cdma_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 233
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->manageCdmaMultipartyCallBtn()V

    .line 236
    :cond_6
    iget v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mOldCallState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/16 v0, 0xa

    if-ne p2, v0, :cond_7

    .line 237
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayCtcCallTimeDuration(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 238
    invoke-virtual {p0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isElapsedTimeCTCVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 239
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    :cond_7
    return-void
.end method

.method private setCardName()V
    .locals 6

    .prologue
    .line 519
    const-string v1, ""

    .line 520
    .local v1, "cardName":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 521
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 522
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v2

    .line 523
    .local v2, "simSlot":I
    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    .line 525
    .end local v2    # "simSlot":I
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCardSubscriber:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCardSubscriber:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    :cond_1
    return-void
.end method

.method private setPrimary(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 4
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 203
    const-string v1, "phone_number_locator"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 205
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->managePhoneNumberLocator(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    .line 209
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    return-void
.end method

.method private setPrimaryCallElapsedTimeTitle(Z)V
    .locals 11
    .param p1, "show"    # Z

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 491
    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v7}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 493
    .local v0, "context":Landroid/content/Context;
    const v7, 0x7f0900dd

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, "mConversationTitle":Ljava/lang/String;
    const v7, 0x7f0900b8

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "mCallOutTitle":Ljava/lang/String;
    const-string v5, ""

    .line 496
    .local v5, "timeText":Ljava/lang/String;
    const/4 v1, 0x0

    .line 497
    .local v1, "lineCtrl":B
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {v7, v10, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v4

    .line 498
    .local v4, "showingCall":Lcom/android/incallui/Call;
    if-eqz v4, :cond_0

    .line 499
    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->getLineCtrlEvent(Lcom/android/incallui/Call;)B

    move-result v1

    .line 502
    :cond_0
    const/4 v7, 0x1

    if-ne v1, v7, :cond_2

    .line 503
    move-object v5, v3

    .line 507
    :goto_0
    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitle:Landroid/widget/TextView;

    if-eqz v7, :cond_1

    .line 508
    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v10, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v7, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 511
    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v7}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0207

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    .line 512
    .local v6, "timeTextHeightNormal":I
    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setHeight(I)V

    .line 515
    .end local v6    # "timeTextHeightNormal":I
    :cond_1
    return-void

    .line 505
    :cond_2
    move-object v5, v2

    goto :goto_0

    :cond_3
    move v7, v9

    .line 509
    goto :goto_1

    :cond_4
    move v8, v9

    .line 510
    goto :goto_2
.end method

.method private updatePhoneNumberLocatorTextColor(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 3
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "state"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public animateForSwap()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->arrangePrimaryLayout(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    .line 107
    :cond_0
    return-void
.end method

.method public getPhoneNumberLocatorHeight()I
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    .line 614
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    .line 615
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 618
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCdmaMultipartyBtnVisible()Z
    .locals 2

    .prologue
    .line 575
    const-string v0, "china_cdma_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    .line 576
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 577
    const/4 v0, 0x1

    .line 579
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isElapsedTimeCTCVisible()Z
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRichScreen()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mIsRichScreen:Z

    return v0
.end method

.method public manageCardName(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCardSubscriber:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 477
    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    const/4 v0, 0x5

    if-eq v0, p1, :cond_0

    .line 479
    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setCardName()V

    .line 482
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCardSubscriber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    :cond_1
    :goto_0
    return-void

    .line 484
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCardSubscriber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 124
    .local v0, "id":I
    const-string v1, "CallCardChnFeatureView"

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

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 127
    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->cdmaMultipartyButtonClicked()V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x7f10023b
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->onViewCreated(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V

    .line 85
    :cond_0
    return-void
.end method

.method public setCallState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setCallState(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    .line 92
    :cond_0
    iput p1, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mOldCallState:I

    .line 93
    return-void
.end method

.method public setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setPrimary(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 100
    :cond_0
    return-void
.end method

.method public setPrimaryCallElapsedTime(Lcom/android/incallui/fragment/VoiceCallCardFragment;ZLjava/lang/String;)Z
    .locals 6
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "show"    # Z
    .param p3, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0x8

    .line 583
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtils;->displayCtcCallTimeDuration(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 584
    if-eqz p2, :cond_2

    .line 585
    invoke-virtual {p1, p3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setLastestCallTime(Ljava/lang/String;)V

    .line 586
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 588
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 589
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallStateLabel()Landroid/widget/TextView;

    move-result-object v1

    .line 590
    .local v1, "callStateLabel":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 591
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    .end local v1    # "callStateLabel":Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    invoke-virtual {p1, p3, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setTTS(Ljava/lang/String;Landroid/view/View;)V

    .line 596
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 597
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {v0, p2, p3}, Lcom/android/incallui/InCallActivity;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    .line 598
    const/4 v2, 0x1

    .line 609
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_1
    :goto_0
    return v2

    .line 600
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 601
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 605
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 606
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 607
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumberLocator(Lcom/android/incallui/fragment/VoiceCallCardFragment;Ljava/lang/String;)V
    .locals 9
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "phoneNumberLocator"    # Ljava/lang/String;

    .prologue
    const v8, 0x7f0f0142

    const/16 v5, 0x8

    const/4 v7, 0x0

    .line 328
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 331
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 332
    const-string v4, "rich_call_screen_cmcc"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mIsRichScreen:Z

    if-eqz v4, :cond_5

    .line 333
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 335
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v1

    .line 336
    .local v1, "callNumberAndLabel":Landroid/view/View;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 337
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;

    invoke-virtual {v4, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 338
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 339
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    .line 342
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a055a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 341
    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 359
    .end local v1    # "callNumberAndLabel":Landroid/view/View;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 360
    .local v0, "callList":Lcom/android/incallui/CallList;
    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 364
    .local v3, "primaryCall":Lcom/android/incallui/Call;
    if-eqz v3, :cond_3

    .line 365
    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->managePhoneNumberLocator(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    .line 368
    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 369
    .local v2, "incomingCall":Lcom/android/incallui/Call;
    if-eqz v2, :cond_0

    .line 370
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    new-instance v5, Lcom/android/incallui/fragment/view/CallCardChnFeatureView$1;

    invoke-direct {v5, p0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView$1;-><init>(Lcom/android/incallui/fragment/view/CallCardChnFeatureView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 344
    .end local v0    # "callList":Lcom/android/incallui/CallList;
    .end local v2    # "incomingCall":Lcom/android/incallui/Call;
    .end local v3    # "primaryCall":Lcom/android/incallui/Call;
    .restart local v1    # "callNumberAndLabel":Landroid/view/View;
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    invoke-virtual {v4, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 345
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 346
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    .line 349
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a008c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 348
    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 352
    .end local v1    # "callNumberAndLabel":Landroid/view/View;
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 356
    :cond_6
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setRichScreen(Z)V
    .locals 0
    .param p1, "isRichScreen"    # Z

    .prologue
    .line 562
    iput-boolean p1, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mIsRichScreen:Z

    .line 563
    return-void
.end method
