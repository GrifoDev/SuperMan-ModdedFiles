.class public Lcom/android/incallui/service/vt/VideoCallMetrics;
.super Ljava/lang/Object;
.source "VideoCallMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/service/vt/VideoCallMetrics$AspectRatio;,
        Lcom/android/incallui/service/vt/VideoCallMetrics$ResolutionType;,
        Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;,
        Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;,
        Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;,
        Lcom/android/incallui/service/vt/VideoCallMetrics$Dimension;,
        Lcom/android/incallui/service/vt/VideoCallMetrics$VideoAlign;
    }
.end annotation


# static fields
.field public static final CALL_STATE_DIVIDER_PX:I = 0x2

.field public static final HD_HEIGHT:I = 0x500

.field public static final HD_WIDTH:I = 0x2d0

.field public static final SMALL_VIEW_OFFSET_DP:I = 0xc

.field private static final TAG:Ljava/lang/String; = "VideoCallMetrics - "

.field public static final VGA_HEIGHT:I = 0x280

.field public static final VGA_WIDTH:I = 0x1e0


# instance fields
.field public button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

.field public callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

.field public density:F

.field public heightPixels:I

.field private mDisplay:Landroid/view/Display;

.field private mInCallActivity:Lcom/android/incallui/InCallActivity;

.field public mIsLeftHandRotation:Z

.field public mResolutionType:I

.field public video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

.field public widthPixels:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mIsLeftHandRotation:Z

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mResolutionType:I

    new-instance v2, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;-><init>(Lcom/android/incallui/service/vt/VideoCallMetrics;)V

    iput-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    new-instance v2, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;-><init>(Lcom/android/incallui/service/vt/VideoCallMetrics;)V

    iput-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    new-instance v2, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;-><init>(Lcom/android/incallui/service/vt/VideoCallMetrics;)V

    iput-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mDisplay:Landroid/view/Display;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->density:F

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mIsLeftHandRotation:Z

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->update(Lcom/android/incallui/Call;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/service/vt/VideoCallMetrics;)Landroid/content/Context;
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/service/vt/VideoCallMetrics;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getResizeWidth(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/incallui/service/vt/VideoCallMetrics;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getResizeHeight(I)I

    move-result v0

    return v0
.end method

.method private getActivityContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getResizeHeight(I)I
    .locals 3

    const/16 v0, 0x280

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mResolutionType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v0, 0x500

    :cond_0
    if-ge p1, v0, :cond_1

    move v0, p1

    :cond_1
    return v0
.end method

.method private getResizeWidth(I)I
    .locals 3

    const/16 v0, 0x1e0

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mResolutionType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v0, 0x2d0

    :cond_0
    if-ge p1, v0, :cond_1

    move v0, p1

    :cond_1
    return v0
.end method

.method private getVideoResolution(Lcom/android/incallui/Call;)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getVideoResolution()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method private makeButtonMetrics()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v4

    invoke-static {v1}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v3

    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iput-boolean v12, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->button_on_video:Z

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isInMultiWindowMode()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_0
    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget-object v9, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v9}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a05b1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height:I

    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iput v11, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->bottom_offset:I

    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v9, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    iget-object v10, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v10, v10, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height:I

    sub-int/2addr v9, v10

    iput v9, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->top:I

    iget v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    iget v9, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    if-gt v8, v9, :cond_1

    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iput-boolean v12, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->button_on_video:Z

    :goto_0
    sget v8, Lcom/android/incallui/service/vt/VideoCallCapability;->THREE_WIDGET:I

    invoke-static {v8}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget-object v9, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v9}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a05b2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->answer_bg_height:I

    :goto_1
    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget-object v9, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v9, v9, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height:I

    iget-object v10, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v10, v10, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->bottom_offset:I

    add-int/2addr v9, v10

    iput v9, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height_with_offset:I

    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iput-boolean v11, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->button_on_video:Z

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget-object v9, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v9}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0062

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->answer_bg_height:I

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v5

    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v8}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a03a0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v2, v8

    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v8}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getBigDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v9

    add-int v7, v8, v9

    iget v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    sub-int v6, v8, v7

    if-nez v4, :cond_5

    iget v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mResolutionType:I

    if-ne v8, v12, :cond_5

    if-gt v2, v6, :cond_5

    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iput v6, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height:I

    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iput-boolean v11, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->button_on_video:Z

    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iput v11, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->bottom_offset:I

    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iput v7, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->top:I

    :goto_2
    if-eqz v3, :cond_4

    if-nez v4, :cond_4

    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v9, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->bottom_offset:I

    add-int/2addr v9, v5

    iput v9, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->bottom_offset:I

    :cond_4
    sget v8, Lcom/android/incallui/service/vt/VideoCallCapability;->THREE_WIDGET:I

    invoke-static {v8}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget-object v9, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v9}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a002a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->answer_bg_height:I

    goto/16 :goto_1

    :cond_5
    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget-object v9, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v9}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0061

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height:I

    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iput-boolean v12, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->button_on_video:Z

    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iput v6, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->bottom_offset:I

    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget-object v9, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v9, v9, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->height:I

    sub-int v9, v7, v9

    iput v9, v8, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->top:I

    goto :goto_2

    :cond_6
    iget-object v9, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    if-eqz v4, :cond_7

    iget v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    iget-object v10, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v10}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x7f0d0000

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    mul-int/2addr v8, v10

    div-int/lit16 v8, v8, 0x3e8

    :goto_3
    iput v8, v9, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->answer_bg_height:I

    goto/16 :goto_1

    :cond_7
    iget-object v8, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v8}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0a04fe

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    goto :goto_3
.end method

.method private makeCallCardMetrics()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->indicator_area:I

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isHidingIndicatorArea()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/ScreenControlUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->indicator_area:I

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0578

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->call_state_area:I

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->video_banner_area:I

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->outgoing_info_area:I

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0178

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->camera_effect_area:I

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->call_state_divider:I

    return-void
.end method

.method private makeVideoMetrics()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    iget v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    # invokes: Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->update(II)V
    invoke-static {v0, v1, v2}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->access$000(Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;II)V

    return-void
.end method

.method private update()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mIsLeftHandRotation:Z

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->makeCallCardMetrics()V

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->makeVideoMetrics()V

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->makeButtonMetrics()V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->notifyVideoMetricsChange(Lcom/android/incallui/service/vt/VideoCallMetrics;)V

    return-void
.end method

.method private update(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mResolutionType:I

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->update()V

    return-void
.end method


# virtual methods
.method public checkForVideoResolution(Lcom/android/incallui/Call;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v0

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mResolutionType:I

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCallMetrics - VideoResolution is changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$ResolutionType;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isInMultiWindowMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isInMultiWindowMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->update(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public dump()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallMetrics - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " X "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallMetrics - Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " X "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallMetrics - Rotatoin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsLeftHandRotation= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mIsLeftHandRotation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallMetrics - isShowingNavigationBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/util/ScreenControlUtils;->isShowingNavigationBar(Landroid/app/Activity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " X "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->dump()V

    return-void
.end method

.method public getDefaultCallCardHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v0, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->indicator_area:I

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->call_state_area:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v0, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->indicator_area:I

    return v0
.end method

.method public isDeviceLandScape()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHeightSmallerThanWidth()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHidingIndicatorArea()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInMultiWindowMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeftHandRotation()Z
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRightHandRotation()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContentsViewChanged(II)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_2

    :cond_0
    const-string v0, "VideoCallMetrics - onContentsViewChanged  error. "

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    if-eq p2, v0, :cond_1

    :cond_3
    iput p1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    iput p2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallMetrics - onContentsViewChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " X "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isInMultiWindowMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isInMultiWindowMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->update()V

    goto :goto_0
.end method

.method public onDisplayMetricsChanged()V
    .locals 5

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    if-ne v2, v3, :cond_0

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    if-eq v1, v3, :cond_1

    :cond_0
    iput v2, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VideoCallMetrics - onDisplayMetricsChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " X "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isInMultiWindowMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isInMultiWindowMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->update()V

    :cond_1
    return-void
.end method

.method public onDisplayRotationChanged(I)V
    .locals 3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/util/ScreenControlUtils;->isShowingNavigationBar(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mIsLeftHandRotation:Z

    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCallMetrics - onDisplayRotationChanged is changed rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isInMultiWindowMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isInMultiWindowMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->update()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPeerDimensionChanged(II)V
    .locals 3

    if-le p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v1, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->onPeerVideoOrientationChanged(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCallMetrics - onPeerDimensionChanged is changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isInMultiWindowMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isInMultiWindowMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->update()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tearDown()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/service/vt/VideoCallMetrics;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallNotifier;->notifyVideoMetricsChange(Lcom/android/incallui/service/vt/VideoCallMetrics;)V

    return-void
.end method
