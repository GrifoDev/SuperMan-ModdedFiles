.class Lcom/android/server/wm/SplashScreenStartingData;
.super Lcom/android/server/wm/StartingData;
.source "SplashScreenStartingData.java"


# instance fields
.field private final mCompatInfo:Landroid/content/res/CompatibilityInfo;

.field private final mIcon:I

.field private final mLabelRes:I

.field private final mLogo:I

.field private final mMergedOverrideConfiguration:Landroid/content/res/Configuration;

.field private final mNonLocalizedLabel:Ljava/lang/CharSequence;

.field private final mPkg:Ljava/lang/String;

.field private final mTheme:I

.field private final mWindowFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/StartingData;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object p2, p0, Lcom/android/server/wm/SplashScreenStartingData;->mPkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/wm/SplashScreenStartingData;->mTheme:I

    iput-object p4, p0, Lcom/android/server/wm/SplashScreenStartingData;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iput-object p5, p0, Lcom/android/server/wm/SplashScreenStartingData;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    iput p6, p0, Lcom/android/server/wm/SplashScreenStartingData;->mLabelRes:I

    iput p7, p0, Lcom/android/server/wm/SplashScreenStartingData;->mIcon:I

    iput p8, p0, Lcom/android/server/wm/SplashScreenStartingData;->mLogo:I

    iput p9, p0, Lcom/android/server/wm/SplashScreenStartingData;->mWindowFlags:I

    iput-object p10, p0, Lcom/android/server/wm/SplashScreenStartingData;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method createStartingSurface(Lcom/android/server/wm/AppWindowToken;)Landroid/view/WindowManagerPolicy$StartingSurface;
    .locals 20

    const/4 v15, -0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/SplashScreenStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSamsungStartingWindowManager:Lcom/android/server/wm/IStartingWindowManagerBridge;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/android/server/wm/IStartingWindowManagerBridge;->canAddSamsungStartingWindow(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v0, v2, Lcom/android/server/wm/Task;->mUserId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/SplashScreenStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSamsungStartingWindowManager:Lcom/android/server/wm/IStartingWindowManagerBridge;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowKey:Ljava/lang/String;

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v2, v3, v0, v1}, Lcom/android/server/wm/IStartingWindowManagerBridge;->getCustomStartingBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/SplashScreenStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSamsungStartingWindowManager:Lcom/android/server/wm/IStartingWindowManagerBridge;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowKey:Ljava/lang/String;

    const/4 v4, 0x1

    move/from16 v0, v19

    invoke-interface {v2, v3, v4, v0}, Lcom/android/server/wm/IStartingWindowManagerBridge;->setCustomBitmapLoaded(Ljava/lang/String;ZI)Z

    :cond_0
    :goto_0
    const/16 v16, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v18

    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    move/from16 v16, v0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/SplashScreenStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SplashScreenStartingData;->mPkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/SplashScreenStartingData;->mTheme:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/SplashScreenStartingData;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/SplashScreenStartingData;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/SplashScreenStartingData;->mLabelRes:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/SplashScreenStartingData;->mIcon:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/SplashScreenStartingData;->mLogo:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/SplashScreenStartingData;->mWindowFlags:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/SplashScreenStartingData;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v13

    invoke-interface/range {v2 .. v16}, Landroid/view/WindowManagerPolicy;->addSplashScreen(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;ILandroid/graphics/Bitmap;II)Landroid/view/WindowManagerPolicy$StartingSurface;

    move-result-object v2

    return-object v2

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/SplashScreenStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSamsungStartingWindowManager:Lcom/android/server/wm/IStartingWindowManagerBridge;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowKey:Ljava/lang/String;

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v2, v3, v0, v1}, Lcom/android/server/wm/IStartingWindowManagerBridge;->getStartingWindowLayoutResId(Ljava/lang/String;II)I

    move-result v15

    goto :goto_0
.end method
