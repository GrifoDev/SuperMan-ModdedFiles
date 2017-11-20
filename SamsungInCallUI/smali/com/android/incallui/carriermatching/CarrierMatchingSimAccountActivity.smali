.class public Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/InCallPresenter$OnDismissCarrierMatchingDialogListener;
.implements Lcom/android/incallui/carriermatching/CircularCountDownProgress$OnFinishListener;


# static fields
.field private static final ACTION_SERVICE_STATE:Ljava/lang/String; = "android.intent.action.SERVICE_STATE"

.field private static final ANIMATION_DURATION_TIME:I = 0x96

.field private static final BUTTON_DISABLE_OPACITY:I = 0x42

.field private static final BUTTON_ENABLE_OPACITY:I = 0xff

.field private static final MAX_TIME:I = 0xbb8


# instance fields
.field private TAG:Ljava/lang/String;

.field private isNeedShowDialingInfo:Z

.field private isProcessCalling:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

.field private mContext:Landroid/content/Context;

.field private mImageSim1:Landroid/widget/ImageView;

.field private mImageSim2:Landroid/widget/ImageView;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProgressBarSim1:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

.field private mProgressBarSim2:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

.field private mResources:Landroid/content/res/Resources;

.field private mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private mTextCallingSim:Landroid/widget/TextView;

.field private mTextOperatorSim1:Landroid/widget/TextView;

.field private mTextOperatorSim2:Landroid/widget/TextView;

.field private mTextSuggestSim:Landroid/widget/TextView;

.field private mWindowManager:Landroid/view/WindowManager;

.field private removeSuggestSimText:Z

.field private slotIdCarrierMatching:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "CarrierMatchingSimAccountActivity"

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->slotIdCarrierMatching:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->isProcessCalling:Z

    iput-boolean v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->removeSuggestSimText:Z

    iput-boolean v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->isNeedShowDialingInfo:Z

    new-instance v0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$1;-><init>(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)V

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$6;-><init>(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)V

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)Lcom/android/incallui/carriermatching/CarrierMatchingUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->cancelCallAndDismissDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->setOperatorSimCardName()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->autoSelectAccountHandler()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->dismissDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->slotIdCarrierMatching:I

    return v0
.end method

.method private attemptFinish()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "attemptFinish()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->semIsResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "bike_mode"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isBMOutCallHandled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->finish()V

    :cond_1
    return-void
.end method

.method private autoSelectAccountHandler()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "autoSelectAccountHandler()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->isProcessCalling:Z

    iget v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->slotIdCarrierMatching:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    iget-boolean v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->isNeedShowDialingInfo:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->setNeedShowDialingInfo(Z)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    iget v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->slotIdCarrierMatching:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->makeCallWithCarrierMatching(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->cancelAccountSelection()V

    goto :goto_0
.end method

.method private cancelCallAndDismissDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "cancelCallAndDismissDialog()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->stopCountDown()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->cancelAccountSelection()V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    invoke-virtual {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->resetVariable()V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->dismissDialog()V

    return-void
.end method

.method private configDisplayViewDialog()V
    .locals 4

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->slotIdCarrierMatching:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mResources:Landroid/content/res/Resources;

    const-string v1, "alertTitle"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextCallingSim:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextSuggestSim:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextOperatorSim1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextOperatorSim2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method private configProgressBar()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0403

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0409

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    div-int/lit8 v3, v1, 0x2

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "progressSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mImageSim1:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mImageSim1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v4, v2

    invoke-virtual {v0, v6, v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mImageSim1:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mImageSim1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mImageSim2:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mImageSim2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v4, v2

    invoke-virtual {v0, v6, v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mImageSim2:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mImageSim2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim1:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim1:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-virtual {v0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v4, v3, 0x2

    sub-int v4, v1, v4

    sub-int/2addr v4, v2

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v4, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim1:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-virtual {v4, v0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim1:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-virtual {v0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->requestLayout()V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim2:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim2:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-virtual {v0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim2:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-virtual {v1, v0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim2:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-virtual {v0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->requestLayout()V

    :cond_3
    return-void
.end method

.method private dismissDialog()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "dismissDialog()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->finish()V

    goto :goto_0
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private selectedAccountHandler(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectedAccountHandler()... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mContext:Landroid/content/Context;

    const-string v1, "CWCM"

    invoke-static {v0, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->isNeedShowDialingInfo:Z

    iput p1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->slotIdCarrierMatching:I

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    invoke-virtual {v0, p1}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->setSlotIdCarrierMatching(I)V

    :cond_0
    return-void
.end method

.method private setOperatorSimCardName()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextOperatorSim1:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextOperatorSim2:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextOperatorSim1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextOperatorSim2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private showAlertDialog()V
    .locals 11

    const/16 v10, 0xbb8

    const/16 v5, 0x17

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "showAlertDialog()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "dialog isShowing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "start showAlertDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->isProcessCalling:Z

    iput-boolean v7, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->removeSuggestSimText:Z

    iput-boolean v7, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->isNeedShowDialingInfo:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f040034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f1000e7

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f1000eb

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f1000e5

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextCallingSim:Landroid/widget/TextView;

    const v2, 0x7f1000e6

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextSuggestSim:Landroid/widget/TextView;

    const v2, 0x7f1000e8

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mImageSim1:Landroid/widget/ImageView;

    const v2, 0x7f1000ec

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mImageSim2:Landroid/widget/ImageView;

    const v2, 0x7f1000ea

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextOperatorSim1:Landroid/widget/TextView;

    const v2, 0x7f1000ee

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextOperatorSim2:Landroid/widget/TextView;

    const v2, 0x7f1000e9

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    iput-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim1:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    const v2, 0x7f1000ed

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    iput-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim2:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->configProgressBar()V

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim1:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-virtual {v0, p0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->setOnFinishListener(Lcom/android/incallui/carriermatching/CircularCountDownProgress$OnFinishListener;)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim2:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-virtual {v0, p0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->setOnFinishListener(Lcom/android/incallui/carriermatching/CircularCountDownProgress$OnFinishListener;)V

    invoke-static {v6, v5}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mImageSim1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v7, v5}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mImageSim2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->setOperatorSimCardName()V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    invoke-virtual {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isCarrierMatchingBy()I

    move-result v2

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setText ... isCarrierMatchingBy = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    const-string v0, ""

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    invoke-virtual {v1}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getDialToOperatorName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    invoke-virtual {v1}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getDialToOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const v1, 0x7f09010e

    invoke-virtual {p0, v1}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    packed-switch v2, :pswitch_data_0

    :goto_2
    :pswitch_0
    iget-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTextCallingSim ... = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTextSuggestSim ... = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextCallingSim:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextSuggestSim:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimfocus ...slotIdCarrierMatching = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->slotIdCarrierMatching:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->slotIdCarrierMatching:I

    packed-switch v0, :pswitch_data_1

    iput-boolean v6, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->removeSuggestSimText:Z

    invoke-direct {p0, v6, v8, v9}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->zoomOutAnimation(IJ)V

    invoke-direct {p0, v7, v8, v9}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->zoomOutAnimation(IJ)V

    :goto_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x10302d2

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090116

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$2;-><init>(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$3;-><init>(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "mAlertDialog TYPE_KEYGUARD_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x80002

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7de

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$4;-><init>(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$5;-><init>(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->configDisplayViewDialog()V

    goto/16 :goto_0

    :cond_3
    const v0, 0x7f09010c

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    invoke-virtual {v4}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getDialToOperatorName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f09010e

    invoke-virtual {p0, v4}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "Show dialog for no service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f090111

    invoke-virtual {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f090115

    invoke-virtual {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_2
    const v0, 0x7f090110

    invoke-virtual {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f090114

    invoke-virtual {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_3
    const v0, 0x7f090112

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    invoke-virtual {v4}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getCallingByOperatorName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_4
    iget-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    invoke-virtual {v2}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isNoMatchingBySimCarrier()Z

    move-result v2

    if-eqz v2, :cond_4

    const v0, 0x7f090113

    invoke-virtual {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f090113

    invoke-virtual {p0, v2}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_5
    iget-object v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    invoke-virtual {v2}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->isNoMatchingBySimCarrier()Z

    move-result v2

    if-eqz v2, :cond_5

    const v0, 0x7f09010f

    invoke-virtual {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f09010f

    invoke-virtual {p0, v2}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_6
    const v0, 0x7f09010d

    invoke-virtual {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_7
    invoke-direct {p0, v7, v8, v9}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->zoomOutAnimation(IJ)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim1:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-virtual {v0, v6}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim1:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-virtual {v0, v10}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->startCountDown(I)V

    goto/16 :goto_3

    :pswitch_8
    invoke-direct {p0, v6, v8, v9}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->zoomOutAnimation(IJ)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim2:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-virtual {v0, v6}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim2:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-virtual {v0, v10}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->startCountDown(I)V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private stopCountDown()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim1:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim1:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-virtual {v0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->stopCountDown()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim2:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim2:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-virtual {v0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->stopCountDown()V

    :cond_1
    return-void
.end method

.method private zoomInAnimation(IJ)V
    .locals 6

    const/16 v4, 0xff

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoomInAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mImageSim1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mImageSim1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextOperatorSim1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextOperatorSim1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mImageSim2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mImageSim2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextOperatorSim2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextOperatorSim2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private zoomOutAnimation(IJ)V
    .locals 6

    const/16 v4, 0x42

    const v3, 0x3f5c28f6    # 0.86f

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoomOutAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mImageSim1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mImageSim1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextOperatorSim1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextOperatorSim1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mImageSim2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mImageSim2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextOperatorSim2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextOperatorSim2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "bike_mode"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0x3e9

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->setStatusBar(Z)V

    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCarrierMatchingDialogDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCarrierMatchingDialogDismiss..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->cancelCallAndDismissDialog()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/16 v1, 0x8

    const/4 v6, 0x0

    const-wide/16 v4, 0x96

    const/4 v3, -0x1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim1:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-virtual {v0, v1}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim2:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-virtual {v0, v1}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim1:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-virtual {v0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->stopCountDown()V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mProgressBarSim2:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-virtual {v0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->stopCountDown()V

    iget-boolean v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->removeSuggestSimText:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTextSuggestSim:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->slotIdCarrierMatching:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_1
    return-void

    :sswitch_0
    invoke-direct {p0, v6, v4, v5}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->zoomInAnimation(IJ)V

    invoke-direct {p0, v2, v4, v5}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->zoomOutAnimation(IJ)V

    invoke-direct {p0, v6}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->selectedAccountHandler(I)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v2, v4, v5}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->zoomInAnimation(IJ)V

    invoke-direct {p0, v6, v4, v5}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->zoomOutAnimation(IJ)V

    invoke-direct {p0, v2}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->selectedAccountHandler(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000e7 -> :sswitch_0
        0x7f1000eb -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mResources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->setOnDismissCarrierMatchingDialog(Lcom/android/incallui/InCallPresenter$OnDismissCarrierMatchingDialogListener;)V

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v0, "bike_mode"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCarrierMatchingUtils()Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mCarrierMatchingUtils:Lcom/android/incallui/carriermatching/CarrierMatchingUtils;

    invoke-virtual {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingUtils;->getSlotIdCarrierMatching()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->slotIdCarrierMatching:I

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sim slot matching = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->slotIdCarrierMatching:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->showAlertDialog()V

    return-void
.end method

.method public onFinish(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->autoSelectAccountHandler()V

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->dismissDialog()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->isProcessCalling:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->cancelCallAndDismissDialog()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->showAlertDialog()V

    const-string v0, "bike_mode"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isBikeMode"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bikeMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v4, :cond_0

    const/16 v0, 0x1a

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    const/4 v0, 0x3

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0x3e9

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    invoke-virtual {p0, v5}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->setStatusBar(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->attemptFinish()V

    goto :goto_0
.end method

.method public setStatusBar(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusBar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    sget v1, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->DISABLE_NONE:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->disable(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    sget v1, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->DISABLE_EXPAND:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->disable(I)V

    goto :goto_0
.end method
