.class public Lcom/android/incallui/service/SecVideoPopupService;
.super Lcom/android/incallui/service/MiniModeCallService;
.source "SecVideoPopupService.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Landroid/widget/Chronometer$OnChronometerTickListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


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

.field private mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

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

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    .line 86
    iput v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallEndBlinkCnt:I

    .line 87
    iput-boolean v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mShowingCallEndBlink:Z

    .line 89
    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    .line 90
    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/SecVideoPopupService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/SecVideoPopupService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/service/SecVideoPopupService;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/service/SecVideoPopupService;)Landroid/app/SemStatusBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/SecVideoPopupService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/service/SecVideoPopupService;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/SecVideoPopupService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method

.method private getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;
    .locals 1
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 432
    if-nez p1, :cond_1

    .line 433
    const/4 v0, 0x0

    .line 443
    :cond_0
    :goto_0
    return-object v0

    .line 435
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 436
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_2

    .line 437
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 439
    :cond_2
    if-nez v0, :cond_0

    .line 440
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_0
.end method

.method private getPhotoDrawable(Lcom/android/incallui/Call;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 228
    if-nez p1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-object v1

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    .line 233
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 235
    .local v0, "contactCacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 239
    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v2, :cond_0

    .line 242
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private goInCallScreen()V
    .locals 5

    .prologue
    .line 484
    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZ)Landroid/content/Intent;

    move-result-object v1

    .line 488
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    .line 505
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 494
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    if-eqz v1, :cond_0

    .line 495
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 496
    invoke-virtual {p0, v1}, Lcom/android/incallui/service/SecVideoPopupService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 502
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goInCallScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 498
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/service/SecVideoPopupService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static isConference(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 219
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
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 628
    const-string v0, "SecVideoPopupService"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "always"    # Z

    .prologue
    .line 632
    const-string v0, "SecVideoPopupService"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 633
    return-void
.end method

.method private setCallPhoto()V
    .locals 7

    .prologue
    const v6, 0x7f0200b4

    .line 246
    iget-object v3, p0, Lcom/android/incallui/service/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    .line 263
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 249
    .local v1, "callList":Lcom/android/incallui/CallList;
    invoke-direct {p0, v1}, Lcom/android/incallui/service/SecVideoPopupService;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 251
    .local v0, "call":Lcom/android/incallui/Call;
    const-string v3, "SecVideoPopupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isConference(call) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/incallui/service/SecVideoPopupService;->isConference(Lcom/android/incallui/Call;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {v0}, Lcom/android/incallui/service/SecVideoPopupService;->isConference(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/service/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 256
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/incallui/service/SecVideoPopupService;->getPhotoDrawable(Lcom/android/incallui/Call;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 257
    .local v2, "photo":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_3

    .line 258
    iget-object v3, p0, Lcom/android/incallui/service/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 260
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/service/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setCallTime()V
    .locals 12

    .prologue
    .line 281
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    .line 282
    .local v4, "callList":Lcom/android/incallui/CallList;
    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v5

    .line 283
    .local v5, "inCall":Lcom/android/incallui/Call;
    const-wide/high16 v6, -0x8000000000000000L

    .line 285
    .local v6, "connectedTime":J
    const/4 v8, 0x2

    .line 287
    .local v8, "state":I
    if-eqz v5, :cond_0

    .line 288
    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    .line 291
    :cond_0
    if-eqz v5, :cond_2

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 292
    invoke-virtual {v5}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v6

    .line 297
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v6

    .line 298
    .local v2, "callDuration":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v0, v10, v2

    .line 299
    .local v0, "baseTime":J
    const-wide/16 v10, -0x1

    cmp-long v9, v6, v10

    if-lez v9, :cond_3

    .line 300
    iget-object v9, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v9, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    .line 301
    iget-object v9, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v9, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    .line 302
    iget-object v9, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v9}, Landroid/widget/Chronometer;->start()V

    .line 309
    :cond_1
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/incallui/service/SecVideoPopupService;->checkCallStatus(I)V

    .line 310
    return-void

    .line 294
    .end local v0    # "baseTime":J
    .end local v2    # "callDuration":J
    :cond_2
    const-wide/16 v6, -0x1

    goto :goto_0

    .line 304
    .restart local v0    # "baseTime":J
    .restart local v2    # "callDuration":J
    :cond_3
    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v9

    if-nez v9, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->stopSelf()V

    goto :goto_1
.end method

.method private setCallTypeImage()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallIconView:Landroid/widget/ImageView;

    const v1, 0x7f020092

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setPopupVisibility()V
    .locals 4

    .prologue
    .line 272
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 273
    .local v1, "callList":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 274
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->showPopup()V

    .line 278
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->hidePopup()V

    goto :goto_0
.end method

.method private shouldDismiss(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z
    .locals 2
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v0, 0x1

    .line 417
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_0

    if-nez p2, :cond_1

    .line 425
    :cond_0
    :goto_0
    return v0

    .line 421
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/incallui/service/SecVideoPopupService;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 425
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showGreenBar()V
    .locals 4

    .prologue
    .line 223
    const-string v0, "showGreenBar: "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 225
    return-void
.end method


# virtual methods
.method public checkCallStatus(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 313
    if-ne p1, v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f020249

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 322
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f02024a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public controlOverlayCallLayout(Z)V
    .locals 3
    .param p1, "showVideo"    # Z

    .prologue
    .line 533
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 535
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 536
    if-eqz p1, :cond_1

    .line 537
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 541
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void

    .line 539
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method protected getSecUiAdapter()Lcom/android/incallui/UiAdapter;
    .locals 1

    .prologue
    .line 613
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    return-object v0
.end method

.method public hidePopup()V
    .locals 2

    .prologue
    .line 203
    const-string v0, "SecVideoPopupService"

    const-string v1, "hidePopup "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    const-string v0, "SecVideoPopupService"

    const-string v1, "popup is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected initCustomLayout(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 176
    const-string v1, "SecVideoPopupService"

    const-string v2, "initCustomLayout "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 178
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040126

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    .line 179
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f100399

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    .line 180
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f10039e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeContainer:Landroid/view/View;

    .line 182
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f10039a

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    .line 183
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f10039f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallIconView:Landroid/widget/ImageView;

    .line 184
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f1003a0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    .line 185
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f10039d

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    .line 187
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f10039c

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    .line 188
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f10039b

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    .line 189
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    const v2, 0x3f800054    # 1.00001f

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setScaleX(F)V

    .line 191
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 192
    const-string v1, "SecVideoPopupService"

    const-string v2, "add setSurfaceTextureListener"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->showOrHideOverlayCallVideo()V

    .line 196
    invoke-direct {p0}, Lcom/android/incallui/service/SecVideoPopupService;->setCallTime()V

    .line 199
    invoke-direct {p0}, Lcom/android/incallui/service/SecVideoPopupService;->setPopupVisibility()V

    .line 200
    return-void
.end method

.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 8
    .param p1, "chronometer"    # Landroid/widget/Chronometer;

    .prologue
    .line 344
    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v0

    .line 345
    .local v0, "base":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 346
    .local v2, "cur":J
    sub-long v4, v2, v0

    .line 347
    .local v4, "time":J
    const-wide/32 v6, 0x36ee80

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    .line 348
    iget-object v6, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallIconView:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    :goto_0
    invoke-virtual {p0, v4, v5}, Lcom/android/incallui/service/SecVideoPopupService;->setTTS(J)V

    .line 353
    return-void

    .line 350
    :cond_0
    iget-object v6, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallIconView:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 98
    iput-object p0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->setVideoPopup(Lcom/android/incallui/service/SecVideoPopupService;)V

    .line 100
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mContext:Landroid/content/Context;

    const-string v1, "sem_statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 103
    new-instance v0, Lcom/android/incallui/service/SecVideoPopupService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/SecVideoPopupService$1;-><init>(Lcom/android/incallui/service/SecVideoPopupService;)V

    iput-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    .line 132
    invoke-direct {p0}, Lcom/android/incallui/service/SecVideoPopupService;->showGreenBar()V

    .line 133
    invoke-super {p0}, Lcom/android/incallui/service/MiniModeCallService;->onCreate()V

    .line 134
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/16 v3, 0x65

    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    .line 140
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setVideoPopup(Lcom/android/incallui/service/SecVideoPopupService;)V

    .line 141
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 142
    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 144
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallIconView:Landroid/widget/ImageView;

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 164
    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    if-eqz v0, :cond_5

    .line 168
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 169
    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    .line 172
    :cond_5
    invoke-super {p0}, Lcom/android/incallui/service/MiniModeCallService;->onDestroy()V

    .line 173
    return-void
.end method

.method protected onLongTouchEvent()V
    .locals 7

    .prologue
    .line 459
    const v2, 0x7f090046

    .line 460
    .local v2, "positiveButtonResId":I
    const v1, 0x7f0900c6

    .line 462
    .local v1, "negativeButtonResId":I
    new-instance v3, Landroid/app/AlertDialog$Builder;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/incallui/service/SecVideoPopupService;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0010

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/incallui/service/SecVideoPopupService$3;

    invoke-direct {v4, p0}, Lcom/android/incallui/service/SecVideoPopupService$3;-><init>(Lcom/android/incallui/service/SecVideoPopupService;)V

    .line 463
    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/service/SecVideoPopupService$2;

    invoke-direct {v4, p0}, Lcom/android/incallui/service/SecVideoPopupService$2;-><init>(Lcom/android/incallui/service/SecVideoPopupService;)V

    .line 468
    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 472
    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v4

    .line 473
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "incall_popup_call_remove_title"

    .line 472
    invoke-virtual {v4, v5, v6}, Lcom/android/incallui/StringManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 474
    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v4

    .line 475
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "incall_popup_call_remove_message"

    .line 474
    invoke-virtual {v4, v5, v6}, Lcom/android/incallui/StringManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 476
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/service/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    .line 477
    iget-object v3, p0, Lcom/android/incallui/service/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 478
    iget-object v3, p0, Lcom/android/incallui/service/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 479
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 389
    const-string v1, "SecVideoPopupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChange... oldState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iput-object p2, p0, Lcom/android/incallui/service/SecVideoPopupService;->mState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 393
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->showOrHideOverlayCallVideo()V

    .line 395
    invoke-direct {p0, p2, p3}, Lcom/android/incallui/service/SecVideoPopupService;->shouldDismiss(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 396
    iget-boolean v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mShowingCallEndBlink:Z

    if-nez v1, :cond_2

    .line 397
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mShowingCallEndBlink:Z

    .line 398
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f020248

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 403
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->showCallEndBlink()V

    .line 414
    :cond_2
    :goto_0
    return-void

    .line 408
    :cond_3
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 409
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    if-eqz v1, :cond_4

    .line 410
    invoke-direct {p0}, Lcom/android/incallui/service/SecVideoPopupService;->setCallTime()V

    .line 413
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/service/SecVideoPopupService;->setCallPhoto()V

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 586
    const-string v1, "onSurfaceTextureAvailable..."

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/service/SecVideoPopupService;->log(Ljava/lang/String;Z)V

    .line 587
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq v1, p1, :cond_0

    .line 588
    iput-object p1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 589
    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurface:Landroid/view/Surface;

    .line 591
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getForegroundCallForVT()Lcom/android/incallui/Call;

    move-result-object v0

    .line 592
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 593
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setDisplaySurface(Landroid/view/Surface;)V

    .line 595
    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v3, 0x1

    .line 599
    const-string v1, "onSurfaceTextureDestroyed..."

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/service/SecVideoPopupService;->log(Ljava/lang/String;Z)V

    .line 600
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getForegroundCallForVT()Lcom/android/incallui/Call;

    move-result-object v0

    .line 601
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/vt/VideoCallAdapter;->checkAndDestroySurface(Landroid/view/Surface;)V

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->setDoneWithSurface()V

    .line 605
    return v3
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 581
    const-string v0, "onSurfaceTextureSizeChanged..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/SecVideoPopupService;->log(Ljava/lang/String;Z)V

    .line 582
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 610
    return-void
.end method

.method protected onTouchEvent()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/android/incallui/service/SecVideoPopupService;->goInCallScreen()V

    .line 456
    return-void
.end method

.method public setDoneWithSurface()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 617
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 619
    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurface:Landroid/view/Surface;

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 623
    iput-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 625
    :cond_1
    return-void
.end method

.method public setLandscapeOverlayCallVideoLayout()V
    .locals 3

    .prologue
    .line 569
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 571
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0175

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 573
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0176

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 574
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public setQCIFOverlayCallVideoLayout()V
    .locals 3

    .prologue
    .line 547
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 549
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0170

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 551
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a016f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 552
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public setQVGAOverlayCallVideoLayout()V
    .locals 3

    .prologue
    .line 558
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 560
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 562
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0171

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 563
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method setTTS(J)V
    .locals 19
    .param p1, "time"    # J

    .prologue
    .line 356
    const-wide/32 v14, 0x36ee80

    div-long v14, p1, v14

    long-to-int v6, v14

    .line 357
    .local v6, "hours":I
    const-wide/32 v14, 0x36ee80

    rem-long v14, p1, v14

    const-wide/32 v16, 0xea60

    div-long v14, v14, v16

    long-to-int v7, v14

    .line 358
    .local v7, "minutes":I
    const-wide/32 v14, 0xea60

    rem-long v14, p1, v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v9, v14

    .line 359
    .local v9, "seconds":I
    if-eqz v6, :cond_1

    const/4 v13, 0x1

    .line 361
    .local v13, "usingHour":Z
    :goto_0
    const/4 v14, 0x1

    new-array v2, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "%d"

    aput-object v15, v2, v14

    .line 363
    .local v2, "SRC_TAGS":[Ljava/lang/String;
    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v14

    .line 364
    .local v11, "strMinutes":[Ljava/lang/String;
    const v14, 0x7f0902d8

    .line 365
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/service/SecVideoPopupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 364
    invoke-static {v14, v2, v11}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 367
    .local v4, "charMinutes":Ljava/lang/CharSequence;
    const/4 v14, 0x1

    new-array v12, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    .line 368
    .local v12, "strSeconds":[Ljava/lang/String;
    const v14, 0x7f0902da

    .line 369
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/service/SecVideoPopupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 368
    invoke-static {v14, v2, v12}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 371
    .local v5, "charSeconds":Ljava/lang/CharSequence;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 372
    .local v8, "sb":Ljava/lang/StringBuffer;
    if-eqz v13, :cond_0

    .line 373
    const/4 v14, 0x1

    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    .line 374
    .local v10, "strHours":[Ljava/lang/String;
    const v14, 0x7f0902d7

    .line 375
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/service/SecVideoPopupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 374
    invoke-static {v14, v2, v10}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 376
    .local v3, "charHours":Ljava/lang/CharSequence;
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 379
    .end local v3    # "charHours":Ljava/lang/CharSequence;
    .end local v10    # "strHours":[Ljava/lang/String;
    :cond_0
    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 381
    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 383
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/service/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/Chronometer;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 385
    return-void

    .line 359
    .end local v2    # "SRC_TAGS":[Ljava/lang/String;
    .end local v4    # "charMinutes":Ljava/lang/CharSequence;
    .end local v5    # "charSeconds":Ljava/lang/CharSequence;
    .end local v8    # "sb":Ljava/lang/StringBuffer;
    .end local v11    # "strMinutes":[Ljava/lang/String;
    .end local v12    # "strSeconds":[Ljava/lang/String;
    .end local v13    # "usingHour":Z
    :cond_1
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public showCallEndBlink()V
    .locals 4

    .prologue
    .line 325
    iget v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallEndBlinkCnt:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->stopSelf()V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 330
    iget v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallEndBlinkCnt:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    :cond_1
    iget v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallEndBlinkCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallEndBlinkCnt:I

    .line 339
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 341
    :cond_2
    return-void

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showOrHideOverlayCallVideo()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, "showVideo":Z
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isActiveVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    const/4 v0, 0x1

    .line 512
    :cond_0
    const-string v1, "SecVideoPopupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showOrHideOverlayCallVideo showVideo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    if-eqz v1, :cond_2

    .line 514
    invoke-virtual {p0, v0}, Lcom/android/incallui/service/SecVideoPopupService;->controlOverlayCallLayout(Z)V

    .line 515
    if-eqz v0, :cond_6

    .line 516
    const-string v1, "QCIF"

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 517
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->setQCIFOverlayCallVideoLayout()V

    .line 523
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 524
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 530
    :cond_2
    :goto_1
    return-void

    .line 518
    :cond_3
    const-string v1, "QVGA"

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "QVGALAND"

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 519
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->setQVGAOverlayCallVideoLayout()V

    goto :goto_0

    .line 520
    :cond_5
    const-string v1, "VGALAND"

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    invoke-virtual {p0}, Lcom/android/incallui/service/SecVideoPopupService;->setLandscapeOverlayCallVideoLayout()V

    goto :goto_0

    .line 526
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 527
    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public showPopup()V
    .locals 2

    .prologue
    .line 211
    const-string v0, "SecVideoPopupService"

    const-string v1, "showPopup "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    const-string v0, "SecVideoPopupService"

    const-string v1, "popup is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected supportEntireScreen()Z
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method protected supportScreenOutSide()Z
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method
