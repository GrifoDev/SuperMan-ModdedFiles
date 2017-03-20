.class public Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;
.super Ljava/lang/Object;
.source "CallCardTwoPhoneView.java"

# interfaces
.implements Lcom/android/incallui/fragment/view/ICallCardViewAdapter;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallCardTwoPhoneView"


# instance fields
.field private final mFragment:Lcom/android/incallui/fragment/CallCardFragment;

.field private mKTtwophoneStub:Landroid/view/ViewStub;

.field private mTwophoneIcon:Landroid/widget/ImageView;

.field private mTwophoneText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    .line 49
    return-void
.end method

.method private arrangePrimaryLayout(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 9
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    const/4 v8, 0x0

    .line 121
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 122
    .local v0, "call":Lcom/android/incallui/Call;
    const-string v5, "support_twophone"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 123
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->updateTwoPhoneColor(Lcom/android/incallui/fragment/CallCardFragment;I)V

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getPhotoContainer()Landroid/view/View;

    move-result-object v1

    .line 127
    .local v1, "photoContainer":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 128
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f1001da

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 129
    .local v2, "photoContainerLayout":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 131
    .local v3, "photoLP":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "photoLP":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 135
    .restart local v3    # "photoLP":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    if-eqz v1, :cond_2

    .line 136
    const-string v5, "CallCardTwoPhoneView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPhotoContainer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 138
    const-string v5, "CallCardTwoPhoneView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTwophoneText "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_5

    if-eqz v1, :cond_5

    .line 140
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    .line 141
    invoke-virtual {p0}, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->isTwoPhoneTextVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 142
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getCallerInfoView()Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->isMessageViewVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 143
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02d4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 144
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getPrimaryName()Landroid/widget/TextView;

    move-result-object v4

    .line 145
    .local v4, "primaryName":Landroid/widget/TextView;
    if-eqz v4, :cond_4

    .line 147
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 146
    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 149
    :cond_4
    const-string v5, "CallCardTwoPhoneView"

    const-string v6, "arrangePrimaryLayout: resize twophone"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    if-eqz v2, :cond_6

    .line 151
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    .end local v1    # "photoContainer":Landroid/view/View;
    .end local v2    # "photoContainerLayout":Landroid/view/ViewGroup;
    .end local v3    # "photoLP":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "primaryName":Landroid/widget/TextView;
    :cond_5
    :goto_0
    return-void

    .line 153
    .restart local v1    # "photoContainer":Landroid/view/View;
    .restart local v2    # "photoContainerLayout":Landroid/view/ViewGroup;
    .restart local v3    # "photoLP":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v4    # "primaryName":Landroid/widget/TextView;
    :cond_6
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private onViewCreated(Lcom/android/incallui/fragment/CallCardFragment;Landroid/view/View;)V
    .locals 1
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 89
    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const v0, 0x7f10024a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mKTtwophoneStub:Landroid/view/ViewStub;

    .line 91
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mKTtwophoneStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mKTtwophoneStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 93
    const v0, 0x7f10012e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneIcon:Landroid/widget/ImageView;

    .line 94
    const v0, 0x7f10012f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    .line 97
    :cond_0
    return-void
.end method

.method private setPrimary(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->updateTwoPhoneLayout(Lcom/android/incallui/fragment/CallCardFragment;)V

    .line 101
    return-void
.end method

.method private updateTwoPhoneColor(Lcom/android/incallui/fragment/CallCardFragment;I)V
    .locals 6
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "state"    # I

    .prologue
    const v5, 0x7f0f0133

    const v4, 0x7f0f012d

    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    .line 104
    invoke-static {p2}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 106
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    :goto_0
    const/16 v0, 0x8

    if-ne p2, v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 113
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 118
    :goto_1
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 109
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 116
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1
.end method

.method private updateTwoPhoneLayout(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 9
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    const v8, 0x7f0900ba

    const v7, 0x7f02036a

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 162
    const-string v5, "support_twophone"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 163
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v2

    .line 164
    .local v2, "isMultiparty":Z
    const/4 v1, 0x0

    .line 165
    .local v1, "isConference":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 166
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    .line 169
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegisteredForCall()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 170
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_a

    .line 171
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 173
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mKTtwophoneStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mKTtwophoneStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 174
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    .line 175
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 179
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_5
    const-string v3, "CallCardTwoPhoneView"

    const-string v4, "one phone mode, Call is two phone line"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "isConference":Z
    .end local v2    # "isMultiparty":Z
    :cond_6
    :goto_0
    return-void

    .line 185
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v1    # "isConference":Z
    .restart local v2    # "isMultiparty":Z
    :cond_7
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    :cond_8
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    :cond_9
    const-string v3, "CallCardTwoPhoneView"

    const-string v4, "mKTtwophoneStub GONE"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_a
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mKTtwophoneStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mKTtwophoneStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 191
    :cond_b
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    :cond_c
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    if-eqz v5, :cond_f

    .line 193
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    if-nez v2, :cond_d

    if-eqz v1, :cond_e

    :cond_d
    move v3, v4

    :cond_e
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    :cond_f
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 197
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_10

    .line 198
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    :cond_10
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    if-eqz v3, :cond_11

    .line 200
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_11
    const-string v3, "CallCardTwoPhoneView"

    const-string v4, "two phone mode, Call is two phone line"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_12
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_13

    .line 205
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020369

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :cond_13
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    if-eqz v3, :cond_14

    .line 207
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :cond_14
    const-string v3, "CallCardTwoPhoneView"

    const-string v4, "two phone mode, Call is one phone line"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :cond_15
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    :cond_16
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public animateForSwap()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->arrangePrimaryLayout(Lcom/android/incallui/fragment/CallCardFragment;)V

    .line 74
    :cond_0
    return-void
.end method

.method public isTwoPhoneTextVisible()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mTwophoneText:Landroid/widget/TextView;

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

.method public onResume()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->onViewCreated(Lcom/android/incallui/fragment/CallCardFragment;Landroid/view/View;)V

    .line 56
    :cond_0
    return-void
.end method

.method public setCallState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 60
    return-void
.end method

.method public setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardTwoPhoneView;->setPrimary(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 67
    :cond_0
    return-void
.end method
