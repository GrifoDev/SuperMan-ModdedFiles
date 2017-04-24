.class Lcom/android/systemui/screenshot/GlobalScreenshot;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationType:I

.field private mAnimationView:Landroid/view/View;

.field private mBackgroundView:Landroid/widget/ImageView;

.field private mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

.field private mNotificationIconSize:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOnAnimation:Z

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenBitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenshotLayout:Landroid/view/View;

.field private mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

.field private mScreenshotView:Landroid/widget/ImageView;

.field final mShutterEffectLock:Ljava/lang/Object;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/screenshot/GlobalScreenshot;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenCaptureHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotSelectorView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/ScreenCaptureHelper;)Lcom/android/systemui/screenshot/ScreenCaptureHelper;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/screenshot/GlobalScreenshot;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/content/Context;I)Lcom/android/systemui/screenshot/ScreenCaptureHelper;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getScreenCaptureHelper(Landroid/content/Context;I)Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->playCaptureSound()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    iput-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Landroid/view/View;

    iput-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "ro.build.scafe"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const-string/jumbo v4, "ro.build.scafe.version"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    :goto_0
    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v4, 0x7f04003c

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v5, 0x7f13012c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    if-ne v4, v9, :cond_6

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v5, 0x7f13012e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v5, 0x7f13012f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v4, v8}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v4, v8}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->setFocusableInTouchMode(Z)V

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v5, Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string/jumbo v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    const-string/jumbo v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    const v4, 0x1050006

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    new-instance v4, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {v4, v7}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->load(I)V

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    iput-boolean v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    return-void

    :cond_2
    const-string/jumbo v4, "capuccino"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "latte"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_3
    iput v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x4

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x7e0

    if-lt v4, v5, :cond_1

    const-string/jumbo v4, "2016A"

    const/4 v5, 0x5

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    goto/16 :goto_0

    :cond_5
    iput v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    goto/16 :goto_0

    :cond_6
    iget v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    if-ne v4, v10, :cond_7

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    const v5, 0x7f0b011f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v5, 0x7f13012e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v5, 0x7f13012d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    goto/16 :goto_1
.end method

.method private getAnimationMode(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAnimationMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getScreenCaptureHelper(Landroid/content/Context;I)Lcom/android/systemui/screenshot/ScreenCaptureHelper;
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isMobildKeyboardCovered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForMobileKeypad;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForMobileKeypad;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isEasyOneHandRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForEasyOneHand;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForEasyOneHand;-><init>()V

    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    new-instance v0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForPartial;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForPartial;-><init>()V

    return-object v0

    :cond_2
    const/16 v0, 0x64

    if-ne p2, v0, :cond_3

    new-instance v0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;-><init>()V

    return-object v0

    :cond_3
    new-instance v0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;-><init>()V

    return-object v0
.end method

.method private isAvailableCapacity()Z
    .locals 15

    const v14, 0x7f0f027d

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "storage"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageManager;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_3

    :try_start_0
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    mul-long v2, v0, v4

    sget-object v10, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "GlobalScreenshot availableSpace = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "GlobalScreenshot [UBS Enabled Mode]"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v14}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    return v13

    :catch_0
    move-exception v6

    const-string/jumbo v10, "ScreenCapture"

    const-string/jumbo v11, "isAvailableCapacity"

    invoke-static {v10, v11, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v14}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    return v13

    :cond_0
    const-wide/32 v10, 0x200000

    cmp-long v10, v2, v10

    if-gez v10, :cond_1

    sget-object v10, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "GlobalScreenshot available Space = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showMemoryFullDialog()V

    return v13

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v10

    const-string/jumbo v11, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {v10, v11, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Could not screen apture in live demo binary!!!"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v14}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    return v13

    :cond_2
    const/4 v10, 0x1

    return v10

    :cond_3
    sget-object v10, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "GlobalScreenshot extStoragePath == null"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v14}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    return v13
.end method

.method static notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 8

    const v7, 0x7f0f027e

    const v5, 0x7f0f027d

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f020570

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string/jumbo v4, "err"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x106005a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v1

    const v3, 0x7f13003a

    invoke-virtual {p1, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private playCaptureSound()V
    .locals 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v7, "service.camera.running"

    const-string/jumbo v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v7, "service.camera.rec.running"

    const-string/jumbo v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v7, "service.camera.sfs.running"

    const-string/jumbo v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isVideoCall(Landroid/content/Context;)Z

    move-result v6

    sget-object v7, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isCameraRunning = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", isRecordRunning = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", isSmartStayRunning = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", isVtCallRunning = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v10, "CscFeature_Framework_EnableScrCaptureSoundOnlyInCamera"

    invoke-virtual {v7, v10, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v3, :cond_0

    if-eqz v4, :cond_3

    move v10, v8

    :goto_0
    if-eqz v5, :cond_4

    move v7, v8

    :goto_1
    and-int/2addr v7, v10

    if-nez v7, :cond_1

    :cond_0
    if-eqz v6, :cond_2

    :cond_1
    sget-object v7, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "[CSCFEATURE_FRAMEWORK_ENABLESCRCAPTURESOUNDONLYINCAMERA] Camera is running!!!!"

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->play(IZ)V

    :cond_2
    return-void

    :cond_3
    move v10, v9

    goto :goto_0

    :cond_4
    move v7, v9

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "audio"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "csc_pref_camera_forced_shuttersound_key"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_9

    move v2, v9

    :goto_2
    if-eqz v2, :cond_a

    if-eqz v3, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    if-eqz v6, :cond_a

    :cond_7
    sget-object v7, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "[forcedShutterSound] Camera is running!!!!"

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->play(IZ)V

    :cond_8
    :goto_3
    return-void

    :cond_9
    move v2, v8

    goto :goto_2

    :cond_a
    const/4 v7, 0x2

    if-ne v1, v7, :cond_b

    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {v7, v8, v8}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->play(IZ)V

    goto :goto_3

    :cond_b
    if-ne v1, v9, :cond_8

    sget-object v7, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mVibrator.semIsHapticSupported() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v9}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v7}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    sget-object v8, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v9, 0xc36c

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    goto :goto_3
.end method

.method private saveScreenshotInWorkerThread(Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V
    .locals 12

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_1

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string/jumbo v9, "com.samsung.palmswipetutorial.PalmSwipeActivity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "com.samsung.pickuptutorial.PalmSwipeTutorial"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v9}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenCaptureOrigin()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v3, 0x0

    const v9, 0x7f0d01e2

    :try_start_0
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    if-gtz v3, :cond_2

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v9}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getDisplayWidth()I

    move-result v3

    :cond_2
    move v5, v3

    const v9, 0x7f0d01c5

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    new-instance v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-direct {v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iput-object v9, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iput-object p2, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    iget v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    iput v9, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    iput-object p1, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    iput v5, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewWidth:I

    iput v4, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewheight:I

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v9}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenCaptureOrigin()I

    move-result v9

    iput v9, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->capturedOrigin:I

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    iput v9, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->rotation:I

    new-instance v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-object v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {v9, v10, v1, v11}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;)V

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v9, v10}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private showMemoryFullDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const v3, 0x7f10022e

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0f0280

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0f0281

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showToast(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private startAnimation(Ljava/lang/Runnable;ZZ)V
    .locals 11

    iget-object v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    sget-object v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startAnimation start!!! mAnimationType : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getAnimationWindowType()I

    move-result v3

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getAnimationWindowFlag()I

    move-result v4

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string/jumbo v1, "ScreenshotAnimation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    new-instance v8, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Landroid/view/View;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    new-instance v9, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

    invoke-direct {v9, p0, v8, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/widget/FrameLayout;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/screenshot/CaptureEffectView;->setOnCaptureAnimationListener(Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$4;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v10

    return-void

    :cond_0
    :try_start_5
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    iget v1, v1, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSweepDirection:I

    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getAnimationMode(I)I

    move-result v6

    new-instance v1, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v6}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Landroid/view/View;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1

    :cond_1
    :try_start_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AnimationType is wrong. animationType = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_0
    move-exception v7

    sget-object v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mScreenshotLayout "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method stopScreenshot()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->stopSelection()V

    :cond_0
    return-void
.end method

.method takeScreenshot(Ljava/lang/Runnable;ZZ)V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Capture is not executed while animation is playing."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    if-nez v3, :cond_2

    :cond_1
    sget-object v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mHelper :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", mContext :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0f0283

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isUPSMCaptureSupported()Z

    move-result v11

    if-nez v11, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1040819

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1040818

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->isAvailableCapacity()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenCaptureOrigin()I

    move-result v12

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    if-ne v12, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "SCOR"

    const-string/jumbo v7, "SCKE"

    invoke-static {v3, v4, v7}, Lcom/android/systemui/screenshot/UsabilityLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenshotRectToCapture()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenNativeWidth()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenNativeHeight()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenshotMinLayer()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenshotMaxLayer()I

    move-result v6

    sget-object v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "screenWidth = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", screenHeight = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", rectToCapture = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", screenNativeWidth = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", screenNativeHeight = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", minLayer ="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", maxLayer = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v16

    float-to-int v3, v0

    float-to-int v4, v15

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gtz v3, :cond_b

    :cond_7
    sget-object v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "mScreenBitmap is not available"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0f0283

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_8
    const/4 v3, 0x2

    if-ne v12, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "SCOR"

    const-string/jumbo v7, "SCPA"

    invoke-static {v3, v4, v7}, Lcom/android/systemui/screenshot/UsabilityLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const/4 v3, 0x3

    if-ne v12, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "SCOR"

    const-string/jumbo v7, "SCQP"

    invoke-static {v3, v4, v7}, Lcom/android/systemui/screenshot/UsabilityLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const/4 v3, 0x4

    if-ne v12, v3, :cond_6

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenDegrees()F

    move-result v10

    const/4 v3, 0x0

    cmpl-float v3, v10, v3

    if-lez v3, :cond_d

    const/4 v13, 0x1

    :goto_1
    if-eqz v13, :cond_c

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    invoke-static {v0, v14, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    new-instance v9, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->rotate(F)V

    move/from16 v0, v16

    neg-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    neg-float v4, v15

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v9, v3, v4, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->onPostScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->prepareToDraw()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method takeScreenshot(Ljava/lang/Runnable;ZZIII)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getScreenCaptureHelper(Landroid/content/Context;I)Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->initiallize(Landroid/content/Context;Landroid/view/Display;III)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    return-void
.end method

.method takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V
    .locals 8

    const/16 v5, 0x8

    const/4 v3, 0x0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7f4

    const v6, 0x1080500

    const/4 v7, -0x3

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/systemui/screenshot/GlobalScreenshot$2;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;ZZ)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$3;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method takeScreenshotWindow(Ljava/lang/Runnable;ZZIIILandroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getScreenCaptureHelper(Landroid/content/Context;I)Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->initiallize(Landroid/content/Context;Landroid/view/Display;IIILandroid/os/Bundle;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    return-void
.end method
