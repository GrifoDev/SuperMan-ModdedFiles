.class public Lcom/android/incallui/remotecall/RemoteCallActivity;
.super Landroid/app/Activity;
.source "RemoteCallActivity.java"

# interfaces
.implements Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ALPHA_NOT_PULLABLE:I

.field private final ALPHA_PULLABLE:I

.field private final CALL_CARD_FRAGMENT:I

.field private final EVENT_UPDATE_UI:I

.field private final MULTI_PARTY_CALL_CARD_FRAGMENT:I

.field private btnPull:Landroid/widget/ImageButton;

.field isMultiPartyCall:Z

.field private mCurrentCard:I

.field private mEndCallButtonsLayout:Landroid/widget/LinearLayout;

.field private mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

.field mHandler:Landroid/os/Handler;

.field private mInCallCardContainer:Landroid/view/View;

.field private mMessageButton:Landroid/widget/Button;

.field private mPullButtonTextView:Landroid/widget/TextView;

.field mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

.field private mRemoteCallPullButtonContainer:Landroid/view/View;

.field mRemoteMultiPartyCallCardFragment:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

.field private mSecCallCardContainer:Landroid/view/View;

.field private mSecPrimaryCallCard:Landroid/view/View;

.field private mVideoCallButton:Landroid/widget/Button;

.field private mVoiceCallButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/incallui/remotecall/RemoteCallActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    iput-boolean v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->isMultiPartyCall:Z

    .line 56
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->ALPHA_PULLABLE:I

    .line 57
    const/16 v0, 0x87

    iput v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->ALPHA_NOT_PULLABLE:I

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->CALL_CARD_FRAGMENT:I

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->MULTI_PARTY_CALL_CARD_FRAGMENT:I

    .line 62
    iput v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mCurrentCard:I

    .line 316
    iput v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->EVENT_UPDATE_UI:I

    .line 318
    new-instance v0, Lcom/android/incallui/remotecall/RemoteCallActivity$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/remotecall/RemoteCallActivity$1;-><init>(Lcom/android/incallui/remotecall/RemoteCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private animateForActivityClosed()V
    .locals 2

    .prologue
    .line 306
    const v0, 0x7f05000a

    const v1, 0x7f05000b

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/remotecall/RemoteCallActivity;->overridePendingTransition(II)V

    .line 307
    return-void
.end method

.method private getCallCardType()I
    .locals 3

    .prologue
    .line 333
    iget v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mCurrentCard:I

    if-nez v1, :cond_0

    .line 334
    const/4 v0, 0x0

    .line 344
    :goto_0
    return v0

    .line 337
    :cond_0
    invoke-static {}, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->needToShowMultiparty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    const/4 v0, 0x2

    .line 343
    .local v0, "ret":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get CallCard Type as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    .end local v0    # "ret":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "ret":I
    goto :goto_1
.end method

.method private initialize()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->initializeReomoteCallCardFragment()V

    .line 130
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->initializeRemoteCallButtonFragment()V

    .line 131
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->initializeRemoteCallEndButtonFragment()V

    .line 132
    return-void
.end method

.method private initializeRemoteCallButtonFragment()V
    .locals 1

    .prologue
    .line 175
    const v0, 0x7f1001d1

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallPullButtonContainer:Landroid/view/View;

    .line 177
    const v0, 0x7f1001d2

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->btnPull:Landroid/widget/ImageButton;

    .line 178
    const v0, 0x7f1001d3

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mPullButtonTextView:Landroid/widget/TextView;

    .line 179
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->btnPull:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    return-void
.end method

.method private initializeRemoteCallEndButtonFragment()V
    .locals 1

    .prologue
    .line 183
    const v0, 0x7f1001cd

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mEndCallButtonsLayout:Landroid/widget/LinearLayout;

    .line 184
    const v0, 0x7f1001ce

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mVoiceCallButton:Landroid/widget/Button;

    .line 185
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :cond_0
    const v0, 0x7f1001cf

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mMessageButton:Landroid/widget/Button;

    .line 187
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mMessageButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    :cond_1
    const v0, 0x7f1001d0

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mVideoCallButton:Landroid/widget/Button;

    .line 189
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    :cond_2
    return-void
.end method

.method private initializeRemoteMultiPartyCallCardFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 155
    const-string v1, "initializeRemoteMultiPartyCallCardFragment().."

    invoke-static {p0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteMultiPartyCallCardFragment:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    if-nez v1, :cond_0

    .line 158
    new-instance v1, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    invoke-direct {v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteMultiPartyCallCardFragment:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteMultiPartyCallCardFragment:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    if-nez v1, :cond_2

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 162
    :cond_2
    iget v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mCurrentCard:I

    if-eq v1, v3, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 164
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7f1001d5

    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteMultiPartyCallCardFragment:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 165
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteMultiPartyCallCardFragment:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteMultiPartyCallCardFragment:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    .line 166
    :cond_3
    const-string v1, "executePendingTransactions to MULTI_PARTY_CALL_CARD_FRAGMENT"

    invoke-static {p0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 170
    :cond_4
    iput v3, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mCurrentCard:I

    goto :goto_0
.end method

.method private initializeReomoteCallCardFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 135
    const-string v1, "initializeReomoteCallCardFragment().."

    invoke-static {p0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    invoke-direct {v1}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    if-nez v1, :cond_2

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 142
    :cond_2
    iget v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mCurrentCard:I

    if-eq v1, v3, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 144
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7f1001d5

    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 145
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    .line 146
    :cond_3
    const-string v1, "executePendingTransactions to CALL_CARD_FRAGMENT"

    invoke-static {p0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 149
    :cond_4
    iput v3, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mCurrentCard:I

    goto :goto_0
.end method

.method private messageClicked()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 402
    const/4 v3, 0x0

    .line 403
    .local v3, "number":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v4

    .line 404
    .local v4, "primaryCall":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    if-nez v4, :cond_1

    .line 405
    sget-object v5, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    const-string v6, "primaryCall is null."

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-virtual {v4}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 409
    if-eqz v3, :cond_0

    .line 410
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "smsto"

    const-string v7, ""

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 411
    .local v0, "checkIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/android/incallui/util/InCallUtils;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 412
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "sms"

    invoke-static {v6, v3, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 413
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x14000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 415
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/incallui/remotecall/RemoteCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v5, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startActivity() failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/remotecall/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 420
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 421
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v5, "com.sec.android.app.popupuireceiver"

    const-string v6, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    const-string v5, "app_package_name"

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getMessagePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 425
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/incallui/remotecall/RemoteCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 426
    :catch_1
    move-exception v1

    .line 427
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    sget-object v5, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startActivity() failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/remotecall/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private showStatusBarWhiteIcon(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 454
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 455
    if-eqz p1, :cond_1

    .line 456
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method private updateGradientBackground(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    const/4 v3, 0x1

    .line 434
    sget-object v0, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    const-string v1, "updateGradientBackground"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 435
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    sget-object v0, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    const-string v1, "updateGradientBackground: photo is exist"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 437
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColorExceptCall(Landroid/graphics/drawable/Drawable;Z)V

    .line 439
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 440
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->hasLiveCallToDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_1

    .line 442
    sget-object v0, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    const-string v1, "updateGradientBackground: hide"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 443
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->animateForHide(I)V

    .line 450
    :cond_1
    return-void
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 310
    const-string v0, "update UI at RemoteCallActivity"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    if-nez v0, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->initialize()V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 314
    return-void
.end method

.method private videoCallClicked()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 386
    const/4 v1, 0x0

    .line 387
    .local v1, "number":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v2

    .line 388
    .local v2, "primaryCall":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    if-nez v2, :cond_1

    .line 389
    sget-object v4, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    const-string v5, "primaryCall is null."

    invoke-static {v4, v5, v6}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-virtual {v2}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 393
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 394
    .local v0, "extras":Landroid/os/Bundle;
    const-string v4, "videocall"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 395
    if-eqz v1, :cond_0

    .line 396
    const-string v4, "telecom"

    invoke-virtual {p0, v4}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    .line 397
    .local v3, "tm":Landroid/telecom/TelecomManager;
    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private voiceCallClicked()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "number":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v1

    .line 374
    .local v1, "primaryCall":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    if-nez v1, :cond_1

    .line 375
    sget-object v3, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    const-string v4, "primaryCall is null."

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_0

    .line 380
    const-string v3, "telecom"

    invoke-virtual {p0, v3}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 381
    .local v2, "tm":Landroid/telecom/TelecomManager;
    const-string v3, "tel"

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 301
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 302
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->animateForActivityClosed()V

    .line 303
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 350
    .local v0, "id":I
    sget-object v1, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

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

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    packed-switch v0, :pswitch_data_0

    .line 366
    :pswitch_0
    sget-object v1, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    const-string v2, "onClick: unexpected"

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 353
    :pswitch_2
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->voiceCallClicked()V

    goto :goto_0

    .line 356
    :pswitch_3
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->videoCallClicked()V

    goto :goto_0

    .line 361
    :pswitch_4
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->requestPulling()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->finish()V

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x7f1001ce
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v2, 0x7f040093

    invoke-virtual {p0, v2}, Lcom/android/incallui/remotecall/RemoteCallActivity;->setContentView(I)V

    .line 70
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->addListener(Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;)V

    .line 71
    const v2, 0x7f1001d5

    invoke-virtual {p0, v2}, Lcom/android/incallui/remotecall/RemoteCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mSecCallCardContainer:Landroid/view/View;

    .line 72
    const v2, 0x7f1001d4

    invoke-virtual {p0, v2}, Lcom/android/incallui/remotecall/RemoteCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/widget/GradientAnimationView;

    iput-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    .line 73
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v2}, Lcom/android/incallui/widget/GradientAnimationView;->setUp()V

    .line 74
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColorExceptCall(Landroid/graphics/drawable/Drawable;Z)V

    .line 76
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x400

    or-int/lit16 v2, v2, 0x200

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 82
    :cond_0
    const v1, -0x7fd78000

    .line 86
    .local v1, "flags":I
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 90
    invoke-virtual {p0, v5}, Lcom/android/incallui/remotecall/RemoteCallActivity;->setRequestedOrientation(I)V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->tearDown()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    .line 99
    :cond_0
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->removeListener(Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;)V

    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 101
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->hasLiveCallToDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->setExcludeFromRecents(Z)V

    .line 104
    :cond_1
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiWindowModeChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->updateIndicatorArea(Z)V

    .line 126
    return-void
.end method

.method public onRemoteCallAdded()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public onRemoteCallEnded()V
    .locals 0

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->finish()V

    .line 210
    return-void
.end method

.method public onRemoteCallRemoved()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public onRemoteCallStateChanged(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V
    .locals 0
    .param p1, "remoteCallList"    # Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->updateUI()V

    .line 205
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->initialize()V

    .line 118
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->updateUI()V

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 120
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 108
    const-string v0, "onStart()..."

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 110
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->hasLiveCallToDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->finish()V

    .line 113
    :cond_0
    return-void
.end method

.method public setExcludeFromRecents(Z)V
    .locals 9
    .param p1, "exclude"    # Z

    .prologue
    .line 465
    sget-object v6, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setExcludeFromRecents : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 467
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v5

    .line 468
    .local v5, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getTaskId()I

    move-result v4

    .line 469
    .local v4, "taskId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 470
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$AppTask;

    .line 472
    .local v3, "task":Landroid/app/ActivityManager$AppTask;
    :try_start_0
    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v6

    iget v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v6, v4, :cond_0

    .line 473
    invoke-virtual {v3, p1}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 469
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 475
    :catch_0
    move-exception v1

    .line 476
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v6, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    const-string v7, "IllegalArgumentException when excluding task from recents."

    invoke-static {v6, v7, v1}, Lcom/android/incallui/remotecall/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 477
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 478
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v6, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    const-string v7, "RuntimeException when excluding task from recents."

    invoke-static {v6, v7, v1}, Lcom/android/incallui/remotecall/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 481
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "task":Landroid/app/ActivityManager$AppTask;
    :cond_1
    return-void
.end method

.method public updateButton(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 7
    .param p1, "call"    # Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 265
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->btnPull:Landroid/widget/ImageButton;

    if-nez v2, :cond_0

    .line 295
    :goto_0
    return-void

    .line 267
    :cond_0
    const/4 v0, 0x0

    .line 268
    .local v0, "alpha":I
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isPullAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    const-string v2, "set Button as Pullable state"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 270
    const/16 v0, 0xff

    .line 271
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->btnPull:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 277
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set Button Alpha:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clickable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isPullAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 279
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v1

    .line 281
    .local v1, "state":I
    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->hasLiveCallToDisplay()Z

    move-result v2

    if-nez v2, :cond_2

    .line 282
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->btnPull:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 283
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mPullButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mEndCallButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 273
    .end local v1    # "state":I
    :cond_1
    const-string v2, "set Button as NOT Pullable state"

    invoke-static {p0, v2, v5}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 274
    const/16 v0, 0x87

    .line 275
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->btnPull:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto :goto_1

    .line 287
    .restart local v1    # "state":I
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->btnPull:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 288
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mPullButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mEndCallButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->btnPull:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 293
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mPullButtonTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mPullButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0
.end method

.method public updateStatusBarWhiteIcon(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 484
    packed-switch p1, :pswitch_data_0

    .line 489
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->showStatusBarWhiteIcon(Z)V

    .line 492
    :goto_0
    return-void

    .line 486
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public updateUI(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V
    .locals 4
    .param p1, "remoteCallList"    # Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    .prologue
    .line 213
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    .line 214
    .local v0, "primaryCall":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getSecondaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v1

    .line 216
    .local v1, "secondaryCall":Lcom/android/incallui/remotecall/remotecall/RemoteCall;
    if-nez v0, :cond_1

    .line 217
    const-string v2, "updateUI is failed. primaryCall is null"

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    :goto_0
    if-nez v1, :cond_2

    .line 222
    const-string v2, "secondaryCall is null"

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getCallCardType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 228
    const-string v2, "Call Card type is CALL_CARD_FRAGMENT, setting call card..."

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->initializeReomoteCallCardFragment()V

    .line 231
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    if-nez v2, :cond_3

    .line 232
    const-string v2, "remoteCallCardFragment updateUI Failed. mRemoteCallCardFragment is null."

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    :cond_0
    :goto_2
    return-void

    .line 219
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUI Primary Call : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUI Secondary Call : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 236
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    invoke-virtual {v2, p1}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->updateUI(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V

    .line 256
    :cond_4
    :goto_3
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->updateButton(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    .line 260
    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->updateGradientBackground(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    .line 261
    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/remotecall/RemoteCallActivity;->updateStatusBarWhiteIcon(I)V

    goto :goto_2

    .line 241
    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getCallCardType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 242
    const-string v2, "Call Card type is MULTI_PARTY_CALL_CARD_FRAGMENT, setting call card..."

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->initializeRemoteMultiPartyCallCardFragment()V

    .line 245
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteMultiPartyCallCardFragment:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    if-nez v2, :cond_6

    .line 246
    const-string v2, "mRemoteMultiPartyCallCardFragment updateUI Failed. mRemoteMultiPartyCallCardFragment is null."

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 250
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteMultiPartyCallCardFragment:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteMultiPartyCallCardFragment:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    invoke-virtual {v2, p1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->updateUI(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V

    goto :goto_3
.end method
