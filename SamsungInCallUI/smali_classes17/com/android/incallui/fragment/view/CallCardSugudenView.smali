.class public Lcom/android/incallui/fragment/view/CallCardSugudenView;
.super Ljava/lang/Object;
.source "CallCardSugudenView.java"

# interfaces
.implements Lcom/android/incallui/fragment/view/ICallCardViewAdapter;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallCardSugudenView"


# instance fields
.field private final mFragment:Lcom/android/incallui/fragment/CallCardFragment;

.field private mSugudenGuideCheckBox:Landroid/widget/CheckBox;

.field private mSugudenGuideView:Landroid/view/View;

.field private mSugudenGuideViewStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    .line 47
    return-void
.end method

.method private onResume(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 2
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;

    .prologue
    .line 107
    const-string v1, "feature_dcm"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mSugudenGuideCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/SystemServiceUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 111
    .local v0, "isEnabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mSugudenGuideCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 113
    .end local v0    # "isEnabled":Z
    :cond_0
    return-void

    .line 110
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCallState(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V
    .locals 1
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "state"    # I

    .prologue
    .line 92
    const-string v0, "feature_dcm"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/view/CallCardSugudenView;->showSugudenGuideView(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    .line 96
    :cond_0
    return-void
.end method

.method private setPrimary(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 99
    const-string v0, "feature_dcm"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/view/CallCardSugudenView;->showSugudenGuideView(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    .line 104
    :cond_0
    return-void
.end method

.method private showSugudenGuideView(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 6
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;

    .prologue
    const/4 v3, 0x0

    .line 116
    const/4 v1, 0x0

    .line 118
    .local v1, "show":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 119
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    .line 120
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->getSugudenAnswerSetting(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "SugudenGuideShowNeverAgain"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isAnswerProcessing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    const/4 v1, 0x1

    .line 125
    :cond_0
    const-string v2, "CallCardSugudenView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSugudenGuideView show:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mSugudenGuideViewStub:Landroid/view/ViewStub;

    if-nez v2, :cond_2

    .line 128
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v4, 0x7f100416

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mSugudenGuideViewStub:Landroid/view/ViewStub;

    .line 129
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mSugudenGuideViewStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 131
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mSugudenGuideView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 132
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v4, 0x7f10035b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mSugudenGuideView:Landroid/view/View;

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mSugudenGuideCheckBox:Landroid/widget/CheckBox;

    if-nez v2, :cond_2

    .line 135
    invoke-virtual {p1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v4, 0x7f10035d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mSugudenGuideCheckBox:Landroid/widget/CheckBox;

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mSugudenGuideCheckBox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mSugudenGuideCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mSugudenGuideCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "SugudenGuideShowNeverAgain"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mSugudenGuideView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 143
    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mSugudenGuideView:Landroid/view/View;

    if-eqz v1, :cond_5

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :cond_4
    return-void

    .line 143
    :cond_5
    const/16 v2, 0x8

    goto :goto_0
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "feature_dcm"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardSugudenView;->showSugudenGuideView(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    .line 85
    :cond_0
    return-void
.end method

.method public animateForSwap()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardSugudenView;->onResume(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    .line 75
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 51
    return-void
.end method

.method public setCallState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 56
    return-void
.end method

.method public setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSugudenView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardSugudenView;->setPrimary(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 63
    :cond_0
    return-void
.end method
