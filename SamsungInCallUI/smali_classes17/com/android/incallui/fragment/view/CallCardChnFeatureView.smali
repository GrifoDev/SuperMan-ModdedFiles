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

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mInflateElapsedTimeTitle:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mIsRichScreen:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mOldCallState:I

    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/view/CallCardChnFeatureView;)Lcom/android/incallui/fragment/CallCardFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    return-object v0
.end method

.method private arrangePrimaryLayout(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 23

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallInfoContainer()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    iget v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v10, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhotoContainer()Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->updatePhoneNumberLocatorTextColor(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    :cond_0
    const-string v19, "rich_call_screen_cmcc"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mIsRichScreen:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    const/16 v19, 0xc

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a04ac

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v9, v0

    :cond_1
    iput v10, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v19, "rich_call_screen_cmcc"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mIsRichScreen:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPrimaryName()Landroid/widget/TextView;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getNumberLabel()Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v7

    if-eqz v16, :cond_3

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_6

    const/4 v11, 0x1

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

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0566

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_3
    if-eqz v16, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v15, :cond_8

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    const/16 v19, 0x44

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

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

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_2
    if-eqz v14, :cond_5

    if-eqz v13, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0f0142

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0f0142

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    return-void

    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v19, 0x10

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

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

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method private cdmaMultipartyButtonClicked()V
    .locals 7

    const/16 v6, 0x8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubId(Lcom/android/incallui/Call;)I

    move-result v2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v3}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090297

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

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

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v3}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090286

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

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

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    const-string v3, "voice_call_recording"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    goto/16 :goto_0
.end method

.method private inflateElapsedTimeTitleViewForCtcCallTime(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mInflateElapsedTimeTitle:Z

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mInflateElapsedTimeTitle:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mInflateElapsedTimeTitle:Z

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    if-nez v0, :cond_3

    const v0, 0x7f100312

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitle:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private manageCdmaMultipartyCallBtn()V
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0x8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090297

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v4}, Lcom/android/incallui/fragment/CallCardFragment;->getOnScreenMenuIcon()Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090286

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private manageElapsedTimeTitle(I)V
    .locals 8

    const/16 v7, 0xa

    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x0

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

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/CallCardFragment;->getCallStateLabel()Landroid/widget/TextView;

    move-result-object v0

    if-eq v7, p1, :cond_0

    if-ne v6, p1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setPrimaryCallElapsedTimeTitle(Z)V

    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_2

    if-eq v5, p1, :cond_2

    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setPrimaryCallElapsedTimeTitle(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-eq v1, p1, :cond_3

    if-eq v5, p1, :cond_3

    if-eq v6, p1, :cond_3

    if-ne v7, p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setPrimaryCallElapsedTimeTitle(Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v4}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setPrimaryCallElapsedTimeTitle(Z)V

    goto :goto_0
.end method

.method private managePhoneNumberLocator(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v9, 0x8

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isPhoneNumberLocatorOn()Z

    move-result v1

    const/4 v7, 0x4

    if-eq v7, p2, :cond_0

    const/4 v7, 0x5

    if-eq v7, p2, :cond_0

    invoke-static {p2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v2, v5

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

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPrimaryName()Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_1

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    const-string v5, "rich_call_screen_cmcc"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mIsRichScreen:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;

    invoke-virtual {v5, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    invoke-virtual {v5, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0568

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v6

    goto :goto_0

    :cond_3
    move v2, v6

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    invoke-virtual {v5, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;

    invoke-virtual {v5, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0569

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    const-string v5, "rich_call_screen_cmcc"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;

    invoke-virtual {v5, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0567

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_7
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    invoke-virtual {v5, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0566

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_2
.end method

.method private onViewCreated(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V
    .locals 7

    const v6, 0x7f0a0564

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getNumberLabel()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f100313

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    const-string v2, "rich_call_screen_cmcc"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mIsRichScreen:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getDensity()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->setTextSizeUntilLargeSize()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    const-string v2, "phone_number_locator"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f10014d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    const v2, 0x7f10014e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    :cond_1
    const-string v2, "rich_call_screen_cmcc"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f10033a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;

    invoke-virtual {v2, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    const v2, 0x7f100150

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    :cond_2
    const v2, 0x7f100338

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    invoke-virtual {v2, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    const v2, 0x7f10014f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    :cond_3
    iput-boolean v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mInflateElapsedTimeTitle:Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayCtcCallTimeDuration(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p2}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->inflateElapsedTimeTitleViewForCtcCallTime(Landroid/view/View;)V

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->displayCtcSubscriberName()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCardSubscriberStub:Landroid/view/ViewStub;

    if-nez v2, :cond_4

    const v2, 0x7f100213

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCardSubscriberStub:Landroid/view/ViewStub;

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCardSubscriberStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCardSubscriberStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v2, 0x7f100248

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCardSubscriber:Landroid/widget/TextView;

    :cond_5
    const-string v2, "china_cdma_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyStub:Landroid/view/ViewStub;

    if-nez v2, :cond_6

    const v2, 0x7f100315

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v2, 0x7f100249

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void
.end method

.method private setCallState(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x8

    const-string v0, "phone_number_locator"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->managePhoneNumberLocator(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    :cond_0
    invoke-static {p2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayCtcCallTimeDuration(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->inflateElapsedTimeTitleViewForCtcCallTime(Landroid/view/View;)V

    invoke-direct {p0, p2}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->manageElapsedTimeTitle(I)V

    :cond_4
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->displayCtcSubscriberName()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p2}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->manageCardName(I)V

    :cond_5
    const-string v0, "china_cdma_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->manageCdmaMultipartyCallBtn()V

    :cond_6
    iget v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mOldCallState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/16 v0, 0xa

    if-ne p2, v0, :cond_7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayCtcCallTimeDuration(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isElapsedTimeCTCVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method private setCardName()V
    .locals 6

    const-string v1, ""

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCardSubscriber:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCardSubscriber:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setPrimary(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 4

    const-string v1, "phone_number_locator"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->managePhoneNumberLocator(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    :cond_0
    return-void
.end method

.method private setPrimaryCallElapsedTimeTitle(Z)V
    .locals 11

    const/16 v9, 0x8

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v7}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v7, 0x7f0900dd

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f0900b8

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {v7, v10, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->getLineCtrlEvent(Lcom/android/incallui/Call;)B

    move-result v1

    :cond_0
    const/4 v7, 0x1

    if-ne v1, v7, :cond_2

    move-object v5, v3

    :goto_0
    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitle:Landroid/widget/TextView;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v7, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v7}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0207

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setHeight(I)V

    :cond_1
    return-void

    :cond_2
    move-object v5, v2

    goto :goto_0

    :cond_3
    move v7, v9

    goto :goto_1

    :cond_4
    move v8, v9

    goto :goto_2
.end method

.method private updatePhoneNumberLocatorTextColor(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 0

    return-void
.end method

.method public animateForSwap()V
    .locals 0

    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->arrangePrimaryLayout(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    :cond_0
    return-void
.end method

.method public getPhoneNumberLocatorHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCdmaMultipartyBtnVisible()Z
    .locals 2

    const-string v0, "china_cdma_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCdmaMultipartyBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isElapsedTimeCTCVisible()Z
    .locals 1

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

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mIsRichScreen:Z

    return v0
.end method

.method public manageCardName(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCardSubscriber:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    const/4 v0, 0x5

    if-eq v0, p1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setCardName()V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCardSubscriber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mCardSubscriber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

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

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->cdmaMultipartyButtonClicked()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100249
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->onViewCreated(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setCallState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setCallState(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    :cond_0
    iput p1, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mOldCallState:I

    return-void
.end method

.method public setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->setPrimary(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    return-void
.end method

.method public setPrimaryCallElapsedTime(Lcom/android/incallui/fragment/VoiceCallCardFragment;ZLjava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    const/16 v5, 0x8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtils;->displayCtcCallTimeDuration(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p1, p3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setLastestCallTime(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallStateLabel()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    invoke-virtual {p1, p3, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setTTS(Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p2, p3}, Lcom/android/incallui/InCallActivity;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeCTC:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mElapsedTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumberLocator(Lcom/android/incallui/fragment/VoiceCallCardFragment;Ljava/lang/String;)V
    .locals 9

    const v8, 0x7f0f0142

    const/16 v5, 0x8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    const-string v4, "rich_call_screen_cmcc"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mIsRichScreen:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;

    invoke-virtual {v4, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

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

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0564

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->managePhoneNumberLocator(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    new-instance v5, Lcom/android/incallui/fragment/view/CallCardChnFeatureView$1;

    invoke-direct {v5, p0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView$1;-><init>(Lcom/android/incallui/fragment/view/CallCardChnFeatureView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubName:Landroid/view/ViewStub;

    invoke-virtual {v4, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorStubNumber:Landroid/view/ViewStub;

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

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

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocatorName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a008c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mPhoneNumberLocator:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setRichScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->mIsRichScreen:Z

    return-void
.end method
