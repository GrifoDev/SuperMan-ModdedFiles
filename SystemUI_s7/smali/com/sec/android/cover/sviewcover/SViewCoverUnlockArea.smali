.class public Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;
.super Landroid/widget/LinearLayout;
.source "SViewCoverUnlockArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$1;,
        Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$2;,
        Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;
    }
.end annotation


# static fields
.field private static final synthetic -com-sec-android-cover-sviewcover-SViewCoverUnlockArea$ContainerSwitchesValues:[I

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private final MSG_THEME_UPDATE:I

.field private mChargingTextView:Landroid/widget/TextView;

.field private mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

.field private mPreviewRootView:Landroid/view/ViewGroup;

.field private mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

.field private mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static synthetic -getcom-sec-android-cover-sviewcover-SViewCoverUnlockArea$ContainerSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->-com-sec-android-cover-sviewcover-SViewCoverUnlockArea$ContainerSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->-com-sec-android-cover-sviewcover-SViewCoverUnlockArea$ContainerSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->values()[Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->All_Shortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->None:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->-com-sec-android-cover-sviewcover-SViewCoverUnlockArea$ContainerSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->refreshChildView()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    iput-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    const/16 v5, 0x3e8

    iput v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->MSG_THEME_UPDATE:I

    new-instance v5, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$1;

    invoke-direct {v5, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;)V

    iput-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mUpdateHandler:Landroid/os/Handler;

    new-instance v5, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$2;

    invoke-direct {v5, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;)V

    iput-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v2, :cond_0

    move v4, v3

    :goto_0
    int-to-float v5, v4

    const/high16 v6, 0x44870000    # 1080.0f

    div-float v1, v5, v6

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "screenWidth : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "screenHeight : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ratio : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v4, v2

    goto :goto_0
.end method

.method private refreshChildView()V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "refreshChildView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->refreshChildView()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->refreshChildView()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$color;->sview_cover_theme_charging_text_font_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private updateViewVisibility(ZLcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;)V
    .locals 3

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    invoke-static {}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->-getcom-sec-android-cover-sviewcover-SViewCoverUnlockArea$ContainerSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setAlpha(F)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setAlpha(F)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleHide()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->setVisibility(I)V

    return-void
.end method

.method public handleShow()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->setVisibility(I)V

    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->updateViewVisibility(ZLcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;)V

    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->updateViewVisibility(ZLcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;)V

    return-void
.end method

.method public initMultiTouched()V
    .locals 2

    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->updateViewVisibility(ZLcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$Container;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cleanUp()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cleanUp()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/sec/android/sviewcover/R$id;->sec_cover_camera_circle:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    sget v0, Lcom/sec/android/sviewcover/R$id;->sec_cover_contact_circle:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->init()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->init()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->setShorcutsVisibility(I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->reset()V

    :cond_1
    return-void
.end method

.method public setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->battery_charging:I

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setSViewCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setAnimatingViews([Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setSViewCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setAnimatingViews([Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setPreviewRootView(Landroid/widget/FrameLayout;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setPreviewViewGroup(Landroid/view/ViewGroup;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setPreviewViewGroup(Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method

.method public setShorcutsVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setVisibility(I)V

    :cond_1
    return-void
.end method
