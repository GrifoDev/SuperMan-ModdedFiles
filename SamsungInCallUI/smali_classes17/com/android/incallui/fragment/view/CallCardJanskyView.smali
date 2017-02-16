.class public Lcom/android/incallui/fragment/view/CallCardJanskyView;
.super Ljava/lang/Object;
.source "CallCardJanskyView.java"

# interfaces
.implements Lcom/android/incallui/fragment/view/ICallCardViewAdapter;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallCardJanskyView"


# instance fields
.field private final mFragment:Lcom/android/incallui/fragment/CallCardFragment;

.field private mMultiLineIcon:Landroid/widget/ImageView;

.field private mMultiLineName:Landroid/widget/TextView;

.field private mMultiLineStub:Landroid/view/ViewStub;

.field private mSharedLineList:Landroid/widget/TextView;

.field private mSharedLineStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/view/CallCardJanskyView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/view/CallCardJanskyView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineName:Landroid/widget/TextView;

    return-object v0
.end method

.method private onViewCreated(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V
    .locals 1
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 95
    const-string v0, "jansky_info_for_tmo"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const v0, 0x7f10030c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineStub:Landroid/view/ViewStub;

    .line 97
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 100
    :cond_0
    const v0, 0x7f1002d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineName:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f1002d7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineIcon:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f100320

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mSharedLineStub:Landroid/view/ViewStub;

    .line 103
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mSharedLineStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mSharedLineStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 106
    :cond_1
    const v0, 0x7f100352

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mSharedLineList:Landroid/widget/TextView;

    .line 108
    :cond_2
    return-void
.end method

.method private setCallState(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "state"    # I

    .prologue
    .line 111
    invoke-direct {p0, p2}, Lcom/android/incallui/fragment/view/CallCardJanskyView;->updateSharedDeviceView(I)V

    .line 112
    return-void
.end method

.method private updateSharedDeviceView(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 116
    const-string v1, "jansky_info_for_tmo"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getSharedDeviceList()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "sharedList":Ljava/lang/String;
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mSharedLineStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_3

    .line 120
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mSharedLineStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mSharedLineList:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mSharedLineList:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mSharedLineList:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mSharedLineStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 125
    const-string v1, "CallCardJanskyView"

    const-string v2, "sharedList"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v0    # "sharedList":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 127
    .restart local v0    # "sharedList":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mSharedLineStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 131
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mSharedLineStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_4

    .line 132
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mSharedLineStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 133
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mSharedLineList:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mSharedLineList:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public animateForSwap()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public getSharedLineListHeight()I
    .locals 1

    .prologue
    .line 182
    const-string v0, "jansky_info_for_tmo"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mSharedLineList:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mSharedLineList:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mSharedLineList:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardJanskyView;->onViewCreated(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V

    .line 64
    :cond_0
    return-void
.end method

.method public setCallState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardJanskyView;->setCallState(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    .line 71
    :cond_0
    return-void
.end method

.method public setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 76
    return-void
.end method

.method public updateJanskyInfo()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 140
    const-string v5, "jansky_info_for_tmo"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->isActiveJanskyAccount()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 141
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    .line 142
    invoke-virtual {v5}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getJanskyInfo(Ljava/lang/String;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;

    move-result-object v1

    .line 143
    .local v1, "entry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    const/4 v4, 0x0

    .line 144
    .local v4, "multiLineIcon":Ljava/lang/String;
    const/4 v3, 0x0

    .line 145
    .local v3, "multiLineColor":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v9}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 146
    .local v0, "call":Lcom/android/incallui/Call;
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineName:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 147
    if-eqz v1, :cond_0

    .line 148
    iget-object v5, v1, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 149
    const-string v5, "CallCardJanskyView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setJanskyMultiLineInfo"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineName:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineName:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 159
    iget-object v4, v1, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineIcon:Ljava/lang/String;

    .line 160
    iget-object v3, v1, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineColor:Ljava/lang/String;

    .line 162
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v3}, Lcom/android/incallui/util/GraphicResourceUtils;->getJanskyLineIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 163
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    .line 164
    if-eqz v2, :cond_4

    .line 165
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "entry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "multiLineColor":Ljava/lang/String;
    .end local v4    # "multiLineIcon":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 154
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v1    # "entry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    .restart local v3    # "multiLineColor":Ljava/lang/String;
    .restart local v4    # "multiLineIcon":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineName:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 168
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 172
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "entry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "multiLineColor":Ljava/lang/String;
    .end local v4    # "multiLineIcon":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_6

    .line 173
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    :cond_6
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineName:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 176
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineName:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateMultiLineColor(IZ)V
    .locals 11
    .param p1, "state"    # I
    .param p2, "animated"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 191
    const-string v8, "jansky_info_for_tmo"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 192
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineName:Landroid/widget/TextView;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineName:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 193
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0120

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 194
    .local v0, "accentColor":I
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0121

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 195
    .local v1, "accentDefaultColor":I
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v2

    .line 196
    .local v2, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->isBackgroundShowing()Z

    move-result v8

    if-eqz v8, :cond_2

    move v4, v6

    .line 197
    .local v4, "isBackgroundShowing":Z
    :goto_0
    if-eqz v4, :cond_3

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v8

    if-nez v8, :cond_0

    const/16 v8, 0x9

    if-ne p1, v8, :cond_3

    .line 198
    :cond_0
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineName:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineName:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    .end local v0    # "accentColor":I
    .end local v1    # "accentDefaultColor":I
    .end local v2    # "activity":Lcom/android/incallui/InCallActivity;
    .end local v4    # "isBackgroundShowing":Z
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "accentColor":I
    .restart local v1    # "accentDefaultColor":I
    .restart local v2    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_2
    move v4, v7

    .line 196
    goto :goto_0

    .line 200
    .restart local v4    # "isBackgroundShowing":Z
    :cond_3
    if-eqz p2, :cond_4

    .line 201
    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v8}, Lcom/android/incallui/fragment/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d002b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 202
    .local v3, "duration":I
    new-instance v8, Landroid/animation/ArgbEvaluator;

    invoke-direct {v8}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    invoke-static {v8, v9}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 203
    .local v5, "multiLineColorAnimator":Landroid/animation/ValueAnimator;
    int-to-long v6, v3

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 204
    new-instance v6, Lcom/android/incallui/fragment/view/CallCardJanskyView$1;

    invoke-direct {v6, p0}, Lcom/android/incallui/fragment/view/CallCardJanskyView$1;-><init>(Lcom/android/incallui/fragment/view/CallCardJanskyView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 210
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 212
    .end local v3    # "duration":I
    .end local v5    # "multiLineColorAnimator":Landroid/animation/ValueAnimator;
    :cond_4
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineName:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineName:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
