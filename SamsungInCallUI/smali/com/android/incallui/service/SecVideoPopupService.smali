.class public Lcom/android/incallui/service/SecVideoPopupService;
.super Lcom/android/incallui/service/MiniModeCallService;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/widget/Chronometer$OnChronometerTickListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "SecVideoPopupService"

.field static final ONE_HOUR:J = 0x36ee80L

.field private static final SHOW_CALL_END_BLINK:I = 0x65

.field private static final SHOW_CALL_END_BLINK_DELAY:I = 0x3e8

.field private static final SHOW_GREEN_BAR:I = 0x64

.field private static final SHOW_GREEN_BAR_DELAY:I = 0x3e8


# instance fields
.field private mCallEndBlinkCnt:I

.field private mCallIconView:Landroid/widget/ImageView;

.field private mCallStatusText:Landroid/widget/TextView;

.field private mCallTimeContainer:Landroid/view/View;

.field private mCallTimeText:Landroid/widget/Chronometer;

.field private mDeletePopup:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mOverlayCall:Landroid/widget/RelativeLayout;

.field private mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

.field private mOverlayCallVideo:Landroid/view/TextureView;

.field private mOverlayCallVideoContainter:Landroid/view/ViewGroup;

.field private mSavedSurface:Landroid/view/Surface;

.field private mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mShowingCallEndBlink:Z

.field private mState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private mStatusBarManager:Landroid/app/SemStatusBarManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    iput v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallEndBlinkCnt:I

    iput-boolean v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mShowingCallEndBlink:Z

    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/SecVideoPopupService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/service/SecVideoPopupService;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/service/SecVideoPopupService;)Landroid/app/SemStatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/service/SecVideoPopupService;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method

.method private getPhotoDrawable(Lcom/android/incallui/Call;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private goInCallScreen()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZ)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/SecVideoPopupService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goInCallScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isConference(Lcom/android/incallui/Call;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SecVideoPopupService"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "SecVideoPopupService"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private setCallPhoto()V
    .locals 5

    const v4, 0x7f020103

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "SecVideoPopupService"

    const-string v1, "setCallPhoto : Call is not alive "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "SecVideoPopupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallPhoto : isConference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/incallui/service/SecVideoPopupService;->isConference(Lcom/android/incallui/Call;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isIMSConferenceCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/incallui/service/SecVideoPopupService;->isConference(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/incallui/service/SecVideoPopupService;->getPhotoDrawable(Lcom/android/incallui/Call;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setCallTime()V
    .locals 10

    const-wide/16 v2, -0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    const/4 v0, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v0, 0x3

    if-ne v4, v0, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v6, v8, v6

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v0, v6, v7}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v0, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    :cond_0
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/incallui/service/SecVideoPopupService;->checkCallStatus(I)V

    return-void

    :cond_1
    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->stopSelf()V

    goto :goto_1

    :cond_2
    move-wide v0, v2

    goto :goto_0

    :cond_3
    move v4, v0

    move-wide v0, v2

    goto :goto_0
.end method

.method private setPopupVisibility()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->showPopup()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->hidePopup()V

    goto :goto_0
.end method

.method private shouldDismiss(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showGreenBar()V
    .locals 4

    const-string v0, "showGreenBar: "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public checkCallStatus(I)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0202d0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0202d1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public controlOverlayCallLayout(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a016b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public hidePopup()V
    .locals 2

    const-string v0, "SecVideoPopupService"

    const-string v1, "hidePopup "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SecVideoPopupService"

    const-string v1, "popup is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected initCustomLayout(Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "SecVideoPopupService"

    const-string v1, "initCustomLayout "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040143

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v1, 0x7f100433

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v1, 0x7f100438

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v1, 0x7f100434

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v1, 0x7f100439

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v1, 0x7f10043a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v1, 0x7f100437

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v1, 0x7f100436

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v1, 0x7f100435

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    const v1, 0x3f800054    # 1.00001f

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const-string v0, "SecVideoPopupService"

    const-string v1, "add setSurfaceTextureListener"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->showOrHideOverlayCallVideo()V

    invoke-direct {p0}, Lcom/android/incallui/service/SecVideoPopupService;->setCallTime()V

    invoke-direct {p0}, Lcom/android/incallui/service/SecVideoPopupService;->setPopupVisibility()V

    return-void
.end method

.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x36ee80

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallIconView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/service/SecVideoPopupService;->setTTS(J)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallIconView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    iput-object p0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->setVideoPopup(Lcom/android/incallui/service/SecVideoPopupService;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mContext:Landroid/content/Context;

    const-string v1, "sem_statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    new-instance v0, Lcom/android/incallui/service/SecVideoPopupService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/SecVideoPopupService$1;-><init>(Lcom/android/incallui/service/SecVideoPopupService;)V

    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/incallui/service/SecVideoPopupService;->showGreenBar()V

    invoke-super {p0}, Lcom/android/incallui/service/MiniModeCallService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/16 v3, 0x65

    const/16 v2, 0x64

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/service/MiniModeCallService;->onDestroy()V

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setVideoPopup(Lcom/android/incallui/service/SecVideoPopupService;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallIconView:Landroid/widget/ImageView;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    :cond_5
    return-void
.end method

.method protected onLongTouchEvent()V
    .locals 6

    const v0, 0x7f090065

    const v1, 0x7f090105

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/incallui/service/SecVideoPopupService;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0010

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/incallui/service/SecVideoPopupService$3;

    invoke-direct {v3, p0}, Lcom/android/incallui/service/SecVideoPopupService$3;-><init>(Lcom/android/incallui/service/SecVideoPopupService;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/incallui/service/SecVideoPopupService$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/SecVideoPopupService$2;-><init>(Lcom/android/incallui/service/SecVideoPopupService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "incall_popup_call_remove_title"

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/StringManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "incall_popup_call_remove_message"

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/StringManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 3

    const-string v0, "SecVideoPopupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange... oldState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/incallui/service/SecVideoPopupService;->mState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->showOrHideOverlayCallVideo()V

    invoke-direct {p0, p2, p3}, Lcom/android/incallui/service/SecVideoPopupService;->shouldDismiss(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mShowingCallEndBlink:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mShowingCallEndBlink:Z

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0202cf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->showCallEndBlink()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/service/SecVideoPopupService;->setCallTime()V

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/service/SecVideoPopupService;->setCallPhoto()V

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string v0, "onSurfaceTextureAvailable..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/SecVideoPopupService;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurface:Landroid/view/Surface;

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setDisplaySurface(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "onSurfaceTextureDestroyed..."

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/service/SecVideoPopupService;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->checkAndDestroyDisplaySurface(Landroid/view/Surface;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->setDoneWithSurface()V

    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string v0, "onSurfaceTextureSizeChanged..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/SecVideoPopupService;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method protected onTouchEvent()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/SecVideoPopupService;->goInCallScreen()V

    return-void
.end method

.method public setDoneWithSurface()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    return-void
.end method

.method public setLandscapeOverlayCallVideoLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0173

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0174

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setQCIFOverlayCallVideoLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a016e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setQVGAOverlayCallVideoLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0170

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a016f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method setTTS(J)V
    .locals 11

    const-wide/32 v8, 0x36ee80

    const-wide/32 v6, 0xea60

    const/4 v1, 0x1

    const/4 v2, 0x0

    div-long v4, p1, v8

    long-to-int v3, v4

    rem-long v4, p1, v8

    div-long/2addr v4, v6

    long-to-int v4, v4

    rem-long v6, p1, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v5, v6

    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "%d"

    aput-object v7, v6, v2

    new-array v7, v1, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    const v4, 0x7f090364

    invoke-virtual {p0, v4}, Lcom/android/incallui/service/SecVideoPopupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v6, v7}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    new-array v7, v1, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    const v5, 0x7f090366

    invoke-virtual {p0, v5}, Lcom/android/incallui/service/SecVideoPopupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, v6, v7}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f090363

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/SecVideoPopupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v6, v0}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public showCallEndBlink()V
    .locals 4

    iget v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallEndBlinkCnt:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->stopSelf()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallEndBlinkCnt:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09018f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallEndBlinkCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallEndBlinkCnt:I

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showOrHideOverlayCallVideo()V
    .locals 6

    const/16 v5, 0x8

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isActiveVideoCall()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    const-string v2, "SecVideoPopupService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showOrHideOverlayCallVideo showVideo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/SecVideoPopupService;->controlOverlayCallLayout(Z)V

    if-eqz v0, :cond_5

    const-string v0, "QCIF"

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->setQCIFOverlayCallVideoLayout()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const-string v0, "QVGA"

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "QVGALAND"

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->setQVGAOverlayCallVideoLayout()V

    goto :goto_1

    :cond_4
    const-string v0, "VGALAND"

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->setLandscapeOverlayCallVideoLayout()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public showPopup()V
    .locals 2

    const-string v0, "SecVideoPopupService"

    const-string v1, "showPopup "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SecVideoPopupService"

    const-string v1, "popup is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected supportEntireScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected supportScreenOutSide()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
