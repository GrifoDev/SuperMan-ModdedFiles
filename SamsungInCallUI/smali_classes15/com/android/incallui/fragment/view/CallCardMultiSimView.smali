.class public Lcom/android/incallui/fragment/view/CallCardMultiSimView;
.super Ljava/lang/Object;
.source "CallCardMultiSimView.java"

# interfaces
.implements Lcom/android/incallui/fragment/view/ICallCardViewAdapter;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallCardMultiSimView"


# instance fields
.field private mCarrierImage:Landroid/widget/ImageView;

.field private final mFragment:Lcom/android/incallui/fragment/CallCardFragment;

.field private mSimIconLabel:Landroid/widget/ImageView;

.field private mSimIconLabelLarge:Landroid/widget/ImageView;

.field private mSimIconLabelLargeStub:Landroid/view/ViewStub;

.field private mSimIconLabelStub:Landroid/view/ViewStub;

.field private mSubIconLabel:Landroid/widget/ImageView;

.field private mSubIconLabelStub:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    .line 57
    return-void
.end method

.method private getSubIdIcon(I)I
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 216
    const-string v1, "CallCardMultiSimView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubIdIcon subId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    packed-switch p1, :pswitch_data_0

    .line 229
    const v0, 0x7f0202b1

    .line 232
    .local v0, "Image":I
    :goto_0
    return v0

    .line 220
    .end local v0    # "Image":I
    :pswitch_0
    const v0, 0x7f0202b1

    .line 221
    .restart local v0    # "Image":I
    goto :goto_0

    .line 223
    .end local v0    # "Image":I
    :pswitch_1
    const v0, 0x7f0202b2

    .line 224
    .restart local v0    # "Image":I
    goto :goto_0

    .line 226
    .end local v0    # "Image":I
    :pswitch_2
    const v0, 0x7f0202b3

    .line 227
    .restart local v0    # "Image":I
    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private inflateSimIconLabel(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 170
    const v0, 0x7f100210

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelStub:Landroid/view/ViewStub;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    .line 173
    const v0, 0x7f10020d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 181
    :cond_3
    const v0, 0x7f10042b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabel:Landroid/widget/ImageView;

    .line 182
    const v0, 0x7f10042c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    .line 183
    return-void
.end method

.method private onResume(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    .line 280
    return-void
.end method

.method private onViewCreated(Lcom/android/incallui/fragment/CallCardFragment;Landroid/view/View;)V
    .locals 1
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 100
    const-string v0, "multi_number_cmcc"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const v0, 0x7f100316

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f100313

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    .line 105
    :cond_0
    const-string v0, "feature_multisim_display_sim_icon"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-direct {p0, p2}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->inflateSimIconLabel(Landroid/view/View;)V

    .line 110
    :cond_1
    const-string v0, "feature_multisim_carrier_match"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    const v0, 0x7f100319

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mCarrierImage:Landroid/widget/ImageView;

    .line 113
    :cond_2
    return-void
.end method

.method private setPrimary(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 12
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    const/16 v11, 0x8

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 117
    const/4 v5, 0x0

    .line 118
    .local v5, "subNumberId":I
    const/4 v4, 0x0

    .line 119
    .local v4, "simId":I
    const-string v6, ""

    .line 121
    .local v6, "subPre":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v8, v10, v9}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 122
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 123
    const-string v8, "CallCardMultiSimView"

    const-string v10, "call is null"

    invoke-static {v8, v10}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    const-string v8, "feature_multisim_display_sim_icon"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 128
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v4

    .line 130
    :cond_1
    const-string v8, "multi_number_cmcc"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 132
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "sub_number_enable_cmcc"

    .line 131
    invoke-static {v8, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v2, :cond_8

    .line 133
    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->isOneSimMultiNumber()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 134
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v8, p2}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v8, p2}, Lcom/android/incallui/CallCardPresenter;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "number":Ljava/lang/String;
    if-eqz v1, :cond_6

    iget-object v8, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 137
    .local v2, "nameIsNumber":Z
    :goto_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getSubNumberId()I

    move-result v5

    .line 138
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v4, v5, v8}, Lcom/android/incallui/InCallUISystemDB;->getSubPrefix(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 139
    if-lez v5, :cond_2

    if-eqz v6, :cond_2

    iget-boolean v8, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v8, :cond_2

    .line 140
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 141
    .local v7, "sublength":I
    if-eqz v2, :cond_7

    .line 142
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {p1, v1, v2}, Lcom/android/incallui/fragment/CallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 149
    .end local v7    # "sublength":I
    :cond_2
    :goto_1
    invoke-direct {p0, v5, v2}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->setPrimarySubImage(IZ)V

    .line 158
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "nameIsNumber":Z
    .end local v3    # "number":Ljava/lang/String;
    :cond_3
    :goto_2
    const-string v8, "feature_multisim_display_sim_icon"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 159
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v8

    invoke-virtual {p0, p1, v8, p2}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->setPrimarySimIconLabel(Lcom/android/incallui/fragment/CallCardFragment;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 163
    :cond_4
    const-string v8, "feature_multisim_carrier_match"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 164
    iget-object v8, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->setPrimaryCarrierImage(Ljava/lang/String;Z)V

    .line 166
    :cond_5
    return-void

    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "number":Ljava/lang/String;
    :cond_6
    move v2, v9

    .line 136
    goto :goto_0

    .line 144
    .restart local v2    # "nameIsNumber":Z
    .restart local v7    # "sublength":I
    :cond_7
    if-eqz v3, :cond_2

    .line 145
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-virtual {p1, v3}, Lcom/android/incallui/fragment/CallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    goto :goto_1

    .line 151
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "nameIsNumber":Z
    .end local v3    # "number":Ljava/lang/String;
    .end local v7    # "sublength":I
    :cond_8
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    if-eqz v8, :cond_9

    .line 152
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    :cond_9
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    .line 154
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private setPrimaryCarrierImage(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "isConference"    # Z

    .prologue
    const/16 v5, 0x8

    .line 237
    if-nez p2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 238
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v4}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/incallui/CarrierMatchUtils;->queryCarrierCodeFromDb(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 239
    .local v2, "carrierInfo":I
    invoke-static {v2}, Lcom/android/incallui/CarrierMatchUtils;->getCarrierCode(I)I

    move-result v0

    .line 240
    .local v0, "carrierCode":I
    invoke-static {v2}, Lcom/android/incallui/CarrierMatchUtils;->getCarrierType(I)I

    move-result v3

    .line 241
    .local v3, "carrierType":I
    invoke-static {v0, v3}, Lcom/android/incallui/CarrierMatchUtils;->getCarrierImage(II)I

    move-result v1

    .line 242
    .local v1, "carrierImage":I
    if-lez v1, :cond_1

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mCarrierImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 243
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mCarrierImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mCarrierImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    .end local v0    # "carrierCode":I
    .end local v1    # "carrierImage":I
    .end local v2    # "carrierInfo":I
    .end local v3    # "carrierType":I
    :cond_0
    :goto_0
    return-void

    .line 246
    .restart local v0    # "carrierCode":I
    .restart local v1    # "carrierImage":I
    .restart local v2    # "carrierInfo":I
    .restart local v3    # "carrierType":I
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mCarrierImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 247
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mCarrierImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 251
    .end local v0    # "carrierCode":I
    .end local v1    # "carrierImage":I
    .end local v2    # "carrierInfo":I
    .end local v3    # "carrierType":I
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mCarrierImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 252
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mCarrierImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPrimarySubImage(IZ)V
    .locals 5
    .param p1, "subType"    # I
    .param p2, "nameIsNumber"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 186
    const-string v0, "CallCardMultiSimView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPrimarySubImage   subType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    if-lez p1, :cond_2

    .line 188
    if-eqz p2, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->getSubIdIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->getSubIdIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public animateForSwap()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 94
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->onResume(Lcom/android/incallui/fragment/CallCardFragment;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->onViewCreated(Lcom/android/incallui/fragment/CallCardFragment;Landroid/view/View;)V

    .line 62
    return-void
.end method

.method public setCallState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 66
    return-void
.end method

.method public setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->setPrimary(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 73
    :cond_0
    return-void
.end method

.method public setPrimarySimIconLabel(Lcom/android/incallui/fragment/CallCardFragment;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 6
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;
    .param p2, "simId"    # I
    .param p3, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 259
    if-gez p2, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v0

    .line 263
    .local v0, "callNumberAndLabel":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    if-nez v1, :cond_3

    :cond_2
    if-eqz p3, :cond_5

    iget-object v1, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->time:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 264
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-static {p2, v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    const-string v1, "rich_call_screen_cmcc"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 266
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getChnFeatureView()Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 267
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getChnFeatureView()Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isRichScreen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 268
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-static {p2, v4}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 272
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabel:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-static {p2, v4}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
