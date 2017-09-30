.class public Lcom/android/incallui/remotecall/RemoteCallActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;


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

.field isMultiwindowMode:Z

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

    const-class v0, Lcom/android/incallui/remotecall/RemoteCallActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->isMultiPartyCall:Z

    iput-boolean v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->isMultiwindowMode:Z

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->ALPHA_PULLABLE:I

    const/16 v0, 0x87

    iput v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->ALPHA_NOT_PULLABLE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->CALL_CARD_FRAGMENT:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->MULTI_PARTY_CALL_CARD_FRAGMENT:I

    iput v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mCurrentCard:I

    iput v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->EVENT_UPDATE_UI:I

    new-instance v0, Lcom/android/incallui/remotecall/RemoteCallActivity$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/remotecall/RemoteCallActivity$1;-><init>(Lcom/android/incallui/remotecall/RemoteCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private animateForActivityClosed()V
    .locals 2

    const v0, 0x7f05000a

    const v1, 0x7f05000b

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/remotecall/RemoteCallActivity;->overridePendingTransition(II)V

    return-void
.end method

.method private getCallCardType()I
    .locals 3

    iget v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mCurrentCard:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/remotecall/utils/RemoteCallUtils;->needToShowMultiparty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

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

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private initialize()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->initializeReomoteCallCardFragment()V

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->initializeRemoteCallButtonFragment()V

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->initializeRemoteCallEndButtonFragment()V

    return-void
.end method

.method private initializeRemoteCallButtonFragment()V
    .locals 1

    const v0, 0x7f100248

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallPullButtonContainer:Landroid/view/View;

    const v0, 0x7f100249

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->btnPull:Landroid/widget/ImageButton;

    const v0, 0x7f10024a

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mPullButtonTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->btnPull:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeRemoteCallEndButtonFragment()V
    .locals 1

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mEndCallButtonsLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f100245

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f100246

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mMessageButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mMessageButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f100247

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mVideoCallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private initializeRemoteMultiPartyCallCardFragment()V
    .locals 4

    const/4 v3, 0x2

    const-string v0, "initializeRemoteMultiPartyCallCardFragment().."

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteMultiPartyCallCardFragment:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    invoke-direct {v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteMultiPartyCallCardFragment:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteMultiPartyCallCardFragment:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mCurrentCard:I

    if-eq v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f10024c

    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteMultiPartyCallCardFragment:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteMultiPartyCallCardFragment:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteMultiPartyCallCardFragment:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "executePendingTransactions to MULTI_PARTY_CALL_CARD_FRAGMENT"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_4
    iput v3, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mCurrentCard:I

    goto :goto_0
.end method

.method private initializeReomoteCallCardFragment()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "initializeReomoteCallCardFragment().."

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    invoke-direct {v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mCurrentCard:I

    if-eq v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f10024c

    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "executePendingTransactions to CALL_CARD_FRAGMENT"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_4
    iput v3, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mCurrentCard:I

    goto :goto_0
.end method

.method private messageClicked()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    const-string v1, "primaryCall is null."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "smsto"

    const-string v4, ""

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p0, v1}, Lcom/android/incallui/util/InCallUtils;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "sms"

    invoke-static {v3, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x14000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/remotecall/RemoteCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivity() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/remotecall/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.popupuireceiver"

    const-string v2, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_package_name"

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getMessagePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivity() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/remotecall/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private showStatusBarWhiteIcon(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method private updateGradientBackground(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    const-string v1, "updateGradientBackground"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    const-string v1, "updateGradientBackground: photo is exist"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColorExceptCall(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->hasLiveCallToDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    const-string v1, "updateGradientBackground: hide"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->animateForHide(I)V

    :cond_1
    return-void
.end method

.method private updateUI()V
    .locals 2

    const-string v0, "update UI at RemoteCallActivity"

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->initialize()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private videoCallClicked()V
    .locals 5

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    const-string v1, "primaryCall is null."

    invoke-static {v0, v1, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "videocall"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v1, :cond_0

    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private voiceCallClicked()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    const-string v1, "primaryCall is null."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    const-string v2, "tel"

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->setExcludeFromRecents(Z)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->animateForActivityClosed()V

    return-void
.end method

.method protected isNormalWindow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->isMultiwindowMode:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

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

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    const-string v1, "onClick: unexpected"

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->voiceCallClicked()V

    invoke-static {v4}, Lcom/android/incallui/util/CommonAppLogging;->mep_callButton(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->videoCallClicked()V

    invoke-static {v4}, Lcom/android/incallui/util/CommonAppLogging;->mep_videocallButton(Z)V

    goto :goto_0

    :pswitch_3
    invoke-static {v4}, Lcom/android/incallui/util/CommonAppLogging;->mep_messageButton(Z)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->requestPulling()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->finish()V

    invoke-static {v4}, Lcom/android/incallui/util/CommonAppLogging;->mep_pullCall(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f100245
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0400a5

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->setContentView(I)V

    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->addListener(Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;)V

    const v0, 0x7f10024c

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mSecCallCardContainer:Landroid/view/View;

    const v0, 0x7f10024b

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/GradientAnimationView;

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0, v6}, Lcom/android/incallui/widget/GradientAnimationView;->setUp(Z)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColorExceptCall(Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->updateNavigationBarFlag()V

    const v0, -0x7fd78000

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    :try_start_0
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "semSetNavigationBarIconColor"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00fe

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/incallui/remotecall/RemoteCallActivity;->setRequestedOrientation(I)V

    return-void

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->tearDown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;

    :cond_0
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->removeListener(Lcom/android/incallui/remotecall/RemoteCallPresenter$RemoteCallListener;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

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

    iput-boolean p1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->isMultiwindowMode:Z

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->updateIndicatorArea(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->updateNavigationBarFlag()V

    return-void
.end method

.method public onRemoteCallAdded()V
    .locals 0

    return-void
.end method

.method public onRemoteCallEnded()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->finish()V

    return-void
.end method

.method public onRemoteCallRemoved()V
    .locals 0

    return-void
.end method

.method public onRemoteCallStateChanged(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->updateUI()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->initialize()V

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->updateUI()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    const-string v0, "onStart()..."

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->hasLiveCallToDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->finish()V

    :cond_0
    return-void
.end method

.method public setExcludeFromRecents(Z)V
    .locals 6

    sget-object v0, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExcludeFromRecents : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getTaskId()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    :try_start_0
    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    iget v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v4, v3, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    const-string v5, "IllegalArgumentException when excluding task from recents."

    invoke-static {v4, v5, v0}, Lcom/android/incallui/remotecall/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v4, Lcom/android/incallui/remotecall/RemoteCallActivity;->TAG:Ljava/lang/String;

    const-string v5, "RuntimeException when excluding task from recents."

    invoke-static {v4, v5, v0}, Lcom/android/incallui/remotecall/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public updateButton(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->btnPull:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isPullAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "set Button as Pullable state"

    invoke-static {p0, v0, v4}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/16 v0, 0xff

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->btnPull:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setClickable(Z)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Button Alpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " clickable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isPullAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->hasLiveCallToDisplay()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->btnPull:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mPullButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mEndCallButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v0, "set Button as NOT Pullable state"

    invoke-static {p0, v0, v4}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/16 v0, 0x87

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->btnPull:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->btnPull:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mPullButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mEndCallButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->btnPull:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mPullButtonTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mPullButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0
.end method

.method public updateNavigationBarFlag()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->isNormalWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    or-int/lit16 v1, v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, -0x401

    and-int/lit16 v1, v1, -0x201

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public updateStatusBarWhiteIcon(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->showStatusBarWhiteIcon(Z)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->showStatusBarWhiteIcon(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public updateUI(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getPrimaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getSecondaryCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v1

    if-nez v0, :cond_1

    const-string v2, "updateUI is failed. primaryCall is null"

    invoke-static {p0, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-nez v1, :cond_2

    const-string v1, "secondaryCall is null"

    invoke-static {p0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getCallCardType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const-string v1, "Call Card type is CALL_CARD_FRAGMENT, setting call card..."

    invoke-static {p0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->initializeReomoteCallCardFragment()V

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    if-nez v1, :cond_3

    const-string v0, "remoteCallCardFragment updateUI Failed. mRemoteCallCardFragment is null."

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void

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

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUI Secondary Call : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteCallCardFragment:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    invoke-virtual {v1, p1}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->updateUI(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V

    :cond_4
    :goto_3
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->updateButton(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->updateGradientBackground(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->updateStatusBarWhiteIcon(I)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->getCallCardType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const-string v1, "Call Card type is MULTI_PARTY_CALL_CARD_FRAGMENT, setting call card..."

    invoke-static {p0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallActivity;->initializeRemoteMultiPartyCallCardFragment()V

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteMultiPartyCallCardFragment:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    if-nez v1, :cond_6

    const-string v0, "mRemoteMultiPartyCallCardFragment updateUI Failed. mRemoteMultiPartyCallCardFragment is null."

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteMultiPartyCallCardFragment:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallActivity;->mRemoteMultiPartyCallCardFragment:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    invoke-virtual {v1, p1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->updateUI(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V

    goto :goto_3
.end method
