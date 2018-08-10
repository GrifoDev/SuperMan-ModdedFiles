.class public Lcom/android/server/policy/TspStateManager;
.super Ljava/lang/Object;
.source "TspStateManager.java"

# interfaces
.implements Lcom/android/server/policy/TspStateManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/TspStateManager$H;,
        Lcom/android/server/policy/TspStateManager$SettingObserver;,
        Lcom/android/server/policy/TspStateManager$TspDebug;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_3RDPARTY_DEAD_ZONE:I = 0xa

.field private static final DEFAULT_3RDPARTY_EDGE_ZONE:I = 0x28

.field private static final SETTING_TSP_DEBUG:Ljava/lang/String; = "setting_tsp_debug"

.field private static final SETTING_TSP_LAST_GRIP_CMD:Ljava/lang/String; = "setting_last_grip_cmd"

.field private static final SETTING_TSP_THRESHOLD:Ljava/lang/String; = "setting_tsp_threshold"

.field private static final SET_TUNNING_DATA:Ljava/lang/String; = "set_grip_data,"

.field private static final TAG:Ljava/lang/String; = "TspStateManagerInternal"

.field private static final TSP_COMMAND_TYPE_HOLE:I = 0x3

.field private static final TSP_COMMAND_TYPE_LAND:I = 0x2

.field private static final TSP_COMMAND_TYPE_PORT:I = 0x1

.field private static final TSP_COMMAND_TYPE_SAME:I = 0x4


# instance fields
.field private final m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

.field private mContext:Landroid/content/Context;

.field private final mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

.field private final mCustomTspCommand:Lcom/android/server/policy/TspGripCommand;

.field private final mDeviceDefaultTspCommand:Lcom/android/server/policy/TspGripCommand;

.field private final mH:Lcom/android/server/policy/TspStateManager$H;

.field private mHeight:I

.field private mHoleMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mInitHeight:I

.field private mInitWidth:I

.field private mIsEnabledCustomSetting:Z

.field private mLastDeadZoneHole:Ljava/lang/String;

.field private mLastLandCmd:Ljava/lang/String;

.field private mLastPortCmd:Ljava/lang/String;

.field private mPortrait:Z

.field private mReserveLandCmd:Ljava/lang/String;

.field private mReservePortCmd:Ljava/lang/String;

.field private mSettingObserver:Lcom/android/server/policy/TspStateManager$SettingObserver;

.field private mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

.field private mWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/TspStateManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/TspStateManager;)Lcom/android/server/policy/TspStateManager$TspDebug;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/TspStateManager;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/TspStateManager;->_updateInputMethodPolicy(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/TspStateManager;Landroid/view/WindowManagerPolicy$WindowState;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/TspStateManager;->_updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/TspStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->createDebugObjectIfNeeded()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/TspStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->updateCustomValue()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/16 v8, 0x5a0

    const/16 v5, 0x28

    const/4 v3, 0x0

    const/16 v1, 0xa

    const/4 v7, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    iput-boolean v3, p0, Lcom/android/server/policy/TspStateManager;->mIsEnabledCustomSetting:Z

    new-instance v0, Lcom/android/server/policy/TspGripCommand;

    invoke-direct {v0}, Lcom/android/server/policy/TspGripCommand;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mDeviceDefaultTspCommand:Lcom/android/server/policy/TspGripCommand;

    new-instance v0, Lcom/android/server/policy/TspGripCommand;

    move v2, v1

    move v4, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    new-instance v0, Lcom/android/server/policy/TspGripCommand;

    move v1, v7

    move v2, v7

    move v3, v7

    move v4, v7

    move v5, v7

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mCustomTspCommand:Lcom/android/server/policy/TspGripCommand;

    new-instance v0, Lcom/android/server/policy/TspGripCommand;

    invoke-direct {v0}, Lcom/android/server/policy/TspGripCommand;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iput v8, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    const/16 v0, 0xa00

    iput v0, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    iput v8, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    const/16 v0, 0xa00

    iput v0, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/policy/TspStateManager$H;

    invoke-direct {v0, p0}, Lcom/android/server/policy/TspStateManager$H;-><init>(Lcom/android/server/policy/TspStateManager;)V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    return-void
.end method

.method private _updateInputMethodPolicy(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 7

    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v0}, Lcom/android/server/policy/TspGripCommand;->reset()V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string/jumbo v0, "SamsungKeypad"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspGripCommand;->set(Lcom/android/server/policy/TspGripCommand;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/view/IWindowStateBridge;->getTspDeadzone()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILandroid/os/Bundle;)Z

    :cond_3
    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v1, "TspStateManagerInternal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInputMethodPolicy command="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",inputMethodWindow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-direct {p0, v0}, Lcom/android/server/policy/TspStateManager;->updateTspCommand(Lcom/android/server/policy/TspGripCommand;)V

    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;Ljava/lang/String;)V
    .locals 17

    sget-boolean v1, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/TspStateManager;->mDeviceDefaultTspCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/TspGripCommand;->set(Lcom/android/server/policy/TspGripCommand;)V

    const/4 v14, 0x0

    if-eqz p1, :cond_3

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_6

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0xbb7

    if-gt v1, v2, :cond_5

    const/4 v14, 0x1

    :goto_0
    if-nez v14, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/view/IWindowStateBridge;->isHomeTask()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v1, "com.sec.android.app.launcher"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "com.sec.android.app.easylauncher"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    :cond_1
    :goto_1
    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/TspGripCommand;->set(Lcom/android/server/policy/TspGripCommand;)V

    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/view/IWindowStateBridge;->getDefaultTspDeadzone()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;)Z

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/view/IWindowStateBridge;->getTspDeadzone()Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILandroid/os/Bundle;)Z

    :cond_3
    sget-boolean v1, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "TspStateManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWindowPolicy focusedWindow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isDeviceDefault="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",command="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspCommand(Lcom/android/server/policy/TspGripCommand;)V

    return-void

    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    const-string/jumbo v1, "com.sec.android."

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    const-string/jumbo v1, "com.samsung."

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    :goto_2
    if-nez v14, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/view/IWindowStateBridge;->isDeviceDefaultTheme()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    goto/16 :goto_1

    :cond_a
    const/4 v14, 0x1

    goto :goto_2

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private createDebugObjectIfNeeded()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "setting_tsp_debug"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/policy/TspStateManager$TspDebug;

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/TspStateManager$TspDebug;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v3, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    goto :goto_0
.end method

.method private initDefaultValue()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040227

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mDeviceDefaultTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;)Z

    invoke-direct {p0, v5}, Lcom/android/server/policy/TspStateManager;->parse3rdPartyCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v6, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v7, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v8, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v9, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v10, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/TspGripCommand;->convertToRation(II)V

    goto :goto_0
.end method

.method private makeLandCommand(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "2,1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makePortCommand(IIII)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parse3rdPartyCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v3

    :cond_0
    const-string/jumbo v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    return-object v3

    :cond_1
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private registerSettingObserver()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mSettingObserver:Lcom/android/server/policy/TspStateManager$SettingObserver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/policy/TspStateManager$SettingObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/TspStateManager$SettingObserver;-><init>(Lcom/android/server/policy/TspStateManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mSettingObserver:Lcom/android/server/policy/TspStateManager$SettingObserver;

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "setting_tsp_threshold"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mSettingObserver:Lcom/android/server/policy/TspStateManager$SettingObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "setting_tsp_debug"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mSettingObserver:Lcom/android/server/policy/TspStateManager$SettingObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private updateCustomValue()V
    .locals 11

    const/16 v5, 0x28

    const/16 v1, 0xa

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "setting_tsp_threshold"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "TspStateManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDefaultValue customSetting="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/server/policy/TspStateManager;->mIsEnabledCustomSetting:Z

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    move v2, v1

    move v4, v1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->set(IIIIII)V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/TspGripCommand;->convertToRation(II)V

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/TspStateManager;->mCustomTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v5, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v6, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v7, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v8, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mIsEnabledCustomSetting:Z

    invoke-direct {p0, v9}, Lcom/android/server/policy/TspStateManager;->parse3rdPartyCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;)Z

    return-void
.end method

.method private updateTspCommand(Lcom/android/server/policy/TspGripCommand;)V
    .locals 6

    iget-boolean v2, p0, Lcom/android/server/policy/TspStateManager;->mIsEnabledCustomSetting:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mCustomTspCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {p1, v2}, Lcom/android/server/policy/TspGripCommand;->set(Lcom/android/server/policy/TspGripCommand;)V

    :cond_0
    iget v2, p1, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iget v3, p1, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    iget v4, p1, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    iget v5, p1, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/policy/TspStateManager;->makePortCommand(IIII)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    :cond_1
    iput-object v1, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    iget v3, p1, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/TspStateManager;->makeLandCommand(II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    if-nez v2, :cond_2

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    :cond_2
    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    return-void
.end method

.method private updateTspState(Ljava/lang/String;I)V
    .locals 3

    sget-boolean v1, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/TspStateManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/TspStateManager$1;-><init>(Lcom/android/server/policy/TspStateManager;Ljava/lang/String;I)V

    const-string/jumbo v2, "tspStateManager"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3

    sget-boolean v1, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_TSP_STATE_MANAGER"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object p1, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->registerSettingObserver()V

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->initDefaultValue()V

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->updateCustomValue()V

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->createDebugObjectIfNeeded()V

    :cond_0
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "TspStateManagerInternal"

    const-string/jumbo v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDeadzoneHole(Landroid/os/Bundle;)V
    .locals 14

    const/16 v13, 0x2c

    const/4 v12, 0x0

    const/4 v11, 0x0

    sget-boolean v9, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v9, :cond_0

    return-void

    :cond_0
    sget-boolean v9, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string/jumbo v9, "TspStateManagerInternal"

    const-string/jumbo v10, "setPortraitDeadzoneHole "

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p1, :cond_2

    const-string/jumbo v9, "TspStateManagerInternal"

    const-string/jumbo v10, "setPortraitDeadzoneHole: hole is null"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v9, "dead_zone_process_name"

    invoke-virtual {p1, v9, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    const-string/jumbo v9, "TspStateManagerInternal"

    const-string/jumbo v10, "setPortraitDeadzoneHole: invalid name key"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v9, "dead_zone_direction"

    invoke-virtual {p1, v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v9, "dead_zone_port_y1"

    invoke-virtual {p1, v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v9, "dead_zone_port_y2"

    invoke-virtual {p1, v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ltz v8, :cond_4

    if-gez v4, :cond_7

    :cond_4
    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_0
    const v8, 0x7fffffff

    const/4 v4, 0x0

    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_9

    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    iget-object v10, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    if-eqz v7, :cond_6

    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    if-eq v8, v4, :cond_4

    if-ge v8, v4, :cond_8

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v11, v8, v11, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_2
    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_8
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v11, v4, v11, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    :cond_9
    if-nez v4, :cond_a

    const/4 v3, 0x0

    :cond_a
    const v9, 0x7fffffff

    if-ne v8, v9, :cond_b

    move v8, v4

    :cond_b
    iget v9, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v10, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v11, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v12, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-static {v9, v10, v11, v12, v8}, Lcom/android/server/policy/TspGripCommand;->getTspHeightPixel(IIIII)I

    move-result v8

    iget v9, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v10, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v11, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v12, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-static {v9, v10, v11, v12, v4}, Lcom/android/server/policy/TspGripCommand;->getTspHeightPixel(IIIII)I

    move-result v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "0,"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v9, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v9, :cond_c

    const-string/jumbo v9, "TspStateManagerInternal"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setDeadzoneHole: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/policy/TspStateManager;->mLastDeadZoneHole:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mLastDeadZoneHole:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    return-void

    :cond_d
    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastDeadZoneHole:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mLastDeadZoneHole:Ljava/lang/String;

    const/4 v10, 0x3

    invoke-direct {p0, v9, v10}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    return-void
.end method

.method public setInitialDisplaySize(IIII)V
    .locals 3

    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TspStateManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInitialDisplaySize initWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",initHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iput p2, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    iput p3, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iput p4, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->initDefaultValue()V

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->updateCustomValue()V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/TspStateManager$TspDebug;->setInitDisplaySize(II)V

    :cond_1
    return-void
.end method

.method public setPortrait(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    iget-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "TspStateManagerInternal"

    const-string/jumbo v1, "setPortrait: mReservePortCmd is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v0, "2,0"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string/jumbo v0, "TspStateManagerInternal"

    const-string/jumbo v1, "setPortrait: mReserveLandCmd is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateInputMethodPolicy(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v1, v3}, Lcom/android/server/policy/TspStateManager$H;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v1, v3}, Lcom/android/server/policy/TspStateManager$H;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/TspStateManager$H;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/TspStateManager$H;->removeMessages(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/TspStateManager$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/TspStateManager$H;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/TspStateManager$H;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v1, v3}, Lcom/android/server/policy/TspStateManager$H;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-virtual {v1, v3}, Lcom/android/server/policy/TspStateManager$H;->removeMessages(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mH:Lcom/android/server/policy/TspStateManager$H;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/policy/TspStateManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
