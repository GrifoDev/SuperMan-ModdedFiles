.class public Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;,
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;,
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;,
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$4;,
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;,
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;,
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdaptiveDisplayColorService"


# instance fields
.field private final ANIMATION_DEBOUNCE_MILLIS:J

.field private final ANIMATION_MAX_COUNT:F

.field private final APP_MANAGER_NAME:Ljava/lang/String;

.field private final BLUE_LIGHT_FILTER:Ljava/lang/String;

.field private final BROWSER_MODE_DEBOUNCE_MILLIS:J

.field private final BROWSER_NAMES:[Ljava/lang/String;

.field private final DEBUG:Z

.field private final EBOOK_NAMES:[Ljava/lang/String;

.field private final FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

.field private final FOREGROUND_THREAD_DELAY_MILLIS:J

.field private final LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

.field private final LIGHT_SENSOR_READ_DELAY:I

.field private final MAX_RGB_SENSOR_COUNT:I

.field private final MDNIE_BROWSER_MODE_NUMBER:Ljava/lang/String;

.field private final MDNIE_READING_MODE_NUMBER:Ljava/lang/String;

.field private final MDNIE_VIDEO_MODE_NUMBER:Ljava/lang/String;

.field private final MEDIA_PLAYER_NAMES:[Ljava/lang/String;

.field private final MSG_ANIMATE_SCR_RGB:I

.field private final MSG_FOREGROUND_APP:I

.field private final MSG_RESCAN_FOREGROUND_APP:I

.field private final MSG_RGB_DEBOUNCE:I

.field private final MSG_SEND_RGB_AVERAGE:I

.field private final MSG_SET_BROWSER_MODE:I

.field private final MSG_SET_EBOOK_MODE:I

.field private final MSG_SET_VIDEO_MODE:I

.field private final MSG_TERMINATE_SCR_RGB:I

.field private final MSG_TERMINATE_VIDEO_MODE:I

.field private final MULTI_SCREEN_DEBOUNCE_MILLIS:J

.field private final NUMBER_COEFFICIENT_VALUE:I

.field private final RGB_DEBOUNCE_MILLIS:J

.field private final RGB_FLOAT_MAX:F

.field private final RGB_INTEGER_MAX:I

.field private final SBROWSER_NAME:Ljava/lang/String;

.field private final SCENARIO_FILE_PATH:Ljava/lang/String;

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private final SCR_FILE_PATH:Ljava/lang/String;

.field private final SETUP_WIZARD_NAME:Ljava/lang/String;

.field private final TEST_RGB_EXPONENTIAL:I

.field private final VIDEO_MODE_DEBOUNCE_MILLIS:J

.field private exitHomeDelay:I

.field private exitHomeDelayTime:J

.field private exitMenuDelay:I

.field private exitMenuDelayTime:J

.field private foregroundDelayTime:J

.field private isLockScreenOn:Z

.field private mAceessibilityEnabled:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAutoModeEnabled:Z

.field private mAvgB:F

.field private mAvgG:F

.field private mAvgR:F

.field private mBlueFilterEnabled:Z

.field private mBrowserScenarioEnabled:Z

.field private mCoefficientValueArray:[F

.field private mColorBlindEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mCountAnimationValue:I

.field private mCountSensorValue:I

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Z

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDefaultAdjustB:I

.field private mDefaultAdjustG:I

.field private mDefaultAdjustR:I

.field private mDefaultB:I

.field private mDefaultEbookB:I

.field private mDefaultEbookG:I

.field private mDefaultEbookR:I

.field private mDefaultG:I

.field private mDefaultR:I

.field private mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field private mDuration:I

.field private mEBookScenarioIntented:Z

.field private mEbookAdjustB:I

.field private mEbookAdjustG:I

.field private mEbookAdjustR:I

.field private mEbookScenarioEnabled:Z

.field private mEnableCondition:Z

.field private mEnvironmentDisplayColorServiceEnable:Z

.field private mFinalIntAvgB:I

.field private mFinalIntAvgG:I

.field private mFinalIntAvgR:I

.field private mForegroundThreadWork:Z

.field private mGreyScaleModeEnabled:Z

.field private mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private mIsFirstStart:Z

.field private mLastAvgB:F

.field private mLastAvgG:F

.field private mLastAvgR:F

.field private mLastChangedRgbTime:J

.field private mLightSensorB:I

.field private mLightSensorDelay:I

.field private mLightSensorG:I

.field private mLightSensorR:I

.field private mMultiWindowOn:Z

.field private mNegativeColorEnabled:Z

.field private mPowerSavingEnabled:Z

.field private mPrevContorlZone:I

.field private mPrevIntAvgB:I

.field private mPrevIntAvgG:I

.field private mPrevIntAvgR:I

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mRgbSensor:Landroid/hardware/Sensor;

.field private mRgbSensorListener:Landroid/hardware/SensorEventListener;

.field private mRgbThreshold:F

.field private mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mScrFileExists:Z

.field private mScreenCurtainEnabled:Z

.field private mScreenMode:I

.field private mScreenStateOn:Z

.field private mScreenWatchingReceiver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;

.field private mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mSensorEnabled:Z

.field private mSensorHubSupportInterrupt:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorValueValid:Z

.field private mSettingCondition:Z

.field private mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

.field private mSumCCT:I

.field private mSumLux:J

.field private mTempIntAvgB:I

.field private mTempIntAvgG:I

.field private mTempIntAvgR:I

.field private mTestScrB:I

.field private mTestScrG:I

.field private mTestScrR:I

.field private mUltraPowerSavingModeEnabled:Z

.field private mUseAdaptiveDisplayColorServiceConfig:Z

.field private mUseEnvironmentDisplayColorConfig:Z

.field private mValidZone:Z

.field private mVideoScenarioEnabled:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorB:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorG:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorR:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/SensorEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    return p1
.end method

.method static synthetic -set10(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverState:Z

    return p1
.end method

.method static synthetic -set6(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    return-object p1
.end method

.method static synthetic -set7(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return p1
.end method

.method static synthetic -set8(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/hardware/display/SemMdnieManager;)Lcom/samsung/android/hardware/display/SemMdnieManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    return-object p1
.end method

.method static synthetic -set9(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumCCT:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->animateScrRGB()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->getRgbFromLightSensor()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setting_is_changed()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->terminateScrRGB()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->terminateVideoMode()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->handleRgbSensorEvent(IIIII)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->monitorForegroundBrowser(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->sendRgbAverage()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setBrowserMode()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setEbookMode()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setVideoMode()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 17

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v14, "eng"

    sget-object v15, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->RGB_INTEGER_MAX:I

    const/high16 v14, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->RGB_FLOAT_MAX:F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_FOREGROUND_APP:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_RESCAN_FOREGROUND_APP:I

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_SEND_RGB_AVERAGE:I

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_ANIMATE_SCR_RGB:I

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_SET_EBOOK_MODE:I

    const/4 v14, 0x5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_SET_VIDEO_MODE:I

    const/4 v14, 0x6

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_SET_BROWSER_MODE:I

    const/4 v14, 0x7

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_TERMINATE_VIDEO_MODE:I

    const/16 v14, 0x8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_TERMINATE_SCR_RGB:I

    const/16 v14, 0x9

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_RGB_DEBOUNCE:I

    const/high16 v14, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->ANIMATION_MAX_COUNT:F

    const v14, 0x989680

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->TEST_RGB_EXPONENTIAL:I

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->LIGHT_SENSOR_READ_DELAY:I

    const/16 v14, 0x14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MAX_RGB_SENSOR_COUNT:I

    const/16 v14, 0x24

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->NUMBER_COEFFICIENT_VALUE:I

    const-wide/16 v14, 0x2710

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->RGB_DEBOUNCE_MILLIS:J

    const-wide/16 v14, 0xfa

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->ANIMATION_DEBOUNCE_MILLIS:J

    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->FOREGROUND_THREAD_DELAY_MILLIS:J

    const-wide/16 v14, 0x1f4

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->VIDEO_MODE_DEBOUNCE_MILLIS:J

    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BROWSER_MODE_DEBOUNCE_MILLIS:J

    const-wide/16 v14, 0x2bc

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MULTI_SCREEN_DEBOUNCE_MILLIS:J

    const-wide/16 v14, 0x3e8

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

    const-string/jumbo v14, "screen_mode_automatic_setting"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    const-string/jumbo v14, "screen_mode_setting"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    const-string/jumbo v14, "blue_light_filter"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BLUE_LIGHT_FILTER:Ljava/lang/String;

    const-string/jumbo v14, "1"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MDNIE_VIDEO_MODE_NUMBER:Ljava/lang/String;

    const-string/jumbo v14, "8"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MDNIE_BROWSER_MODE_NUMBER:Ljava/lang/String;

    const-string/jumbo v14, "9"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MDNIE_READING_MODE_NUMBER:Ljava/lang/String;

    const-string/jumbo v14, "/sys/class/mdnie/mdnie/sensorRGB"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SCR_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v14, "/sys/class/mdnie/mdnie/scenario"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SCENARIO_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v14, "/sys/class/sensors/light_sensor/raw_data"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

    const-string/jumbo v14, "com.sec.android.app.SecSetupWizard"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SETUP_WIZARD_NAME:Ljava/lang/String;

    const-string/jumbo v14, "com.android.systemui"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->APP_MANAGER_NAME:Ljava/lang/String;

    const-string/jumbo v14, "com.sec.android.app.sbrowser"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SBROWSER_NAME:Ljava/lang/String;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const-string/jumbo v15, "com.google.android.apps.books"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->EBOOK_NAMES:[Ljava/lang/String;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const-string/jumbo v15, "com.sec.android.app.sbrowser"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const-string/jumbo v15, "com.android.chrome"

    const/16 v16, 0x1

    aput-object v15, v14, v16

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    const/16 v14, 0x9

    new-array v14, v14, [Ljava/lang/String;

    const-string/jumbo v15, "com.zgz.supervideo"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const-string/jumbo v15, "com.kmplayer"

    const/16 v16, 0x1

    aput-object v15, v14, v16

    const-string/jumbo v15, "com.pg.gom"

    const/16 v16, 0x2

    aput-object v15, v14, v16

    const-string/jumbo v15, "com.gretech.gomplayer"

    const/16 v16, 0x3

    aput-object v15, v14, v16

    const-string/jumbo v15, "com.mxtech.videoplayer"

    const/16 v16, 0x4

    aput-object v15, v14, v16

    const-string/jumbo v15, "com.nhn.android.naverplayer"

    const/16 v16, 0x5

    aput-object v15, v14, v16

    const-string/jumbo v15, "com.inisoft.mediaplayer"

    const/16 v16, 0x6

    aput-object v15, v14, v16

    const-string/jumbo v15, "com.google.android.youtube"

    const/16 v16, 0x7

    aput-object v15, v14, v16

    const-string/jumbo v15, "com.google.android.videos"

    const/16 v16, 0x8

    aput-object v15, v14, v16

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAceessibilityEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mForegroundThreadWork:Z

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverState:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBlueFilterEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEBookScenarioIntented:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mGreyScaleModeEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenMode:I

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevContorlZone:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    const v14, 0x3d8f5c29    # 0.07f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    const/16 v14, 0x23

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDuration:I

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumCCT:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgR:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgG:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgB:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultAdjustR:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultAdjustG:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultAdjustB:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustR:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustG:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustB:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    new-instance v14, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    new-instance v14, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    new-instance v14, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    new-instance v14, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$4;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/os/HandlerThread;

    const-string/jumbo v15, "AdaptiveDisplayColorServiceThread"

    invoke-direct {v14, v15}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->start()V

    new-instance v14, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v15}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x11200d1

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x11200d2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    const-string/jumbo v14, "AdaptiveDisplayColorService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mUseEnvironmentDisplayColorConfig : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", mUseEnvironmentDisplayColorConfig : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    new-instance v14, Lcom/samsung/android/cover/CoverManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const-string/jumbo v14, "lcd_curtain"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v0, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v14, "high_contrast"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v0, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v14, "color_blind"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v0, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v14, "psm_switch"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v0, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v14, "ultra_powersaving_mode"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v0, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v14, "screen_mode_automatic_setting"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v0, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v14, "blue_light_filter"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v0, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v14, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v14, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v14, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v14, "android.intent.action.USER_PRESENT"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;)V

    invoke-virtual {v14, v15, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "activity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    if-eqz v11, :cond_1

    const-string/jumbo v14, "com.sec.feature.sensorhub"

    invoke-virtual {v11, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string/jumbo v14, "com.sec.feature.scontext_lite"

    invoke-virtual {v11, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "scontext"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/scontext/SContextManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v15, 0x2c

    invoke-virtual {v14, v15}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-nez v14, :cond_2

    new-instance v14, Landroid/hardware/SystemSensorManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->getLooper()Landroid/os/Looper;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107008a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    const/4 v14, 0x0

    aget v14, v2, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustR:I

    const/4 v14, 0x1

    aget v14, v2, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustG:I

    const/4 v14, 0x2

    aget v14, v2, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustB:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107008b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v13

    const/4 v14, 0x0

    aget v14, v13, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    const/4 v14, 0x1

    aget v14, v13, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    const/4 v14, 0x2

    aget v14, v13, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00ba

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->foregroundDelayTime:J

    if-eqz v7, :cond_3

    int-to-long v14, v7

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->foregroundDelayTime:J

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00bb

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    if-eqz v5, :cond_4

    int-to-long v14, v5

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00bc

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const-wide/16 v14, 0x2bc

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    if-eqz v6, :cond_5

    int-to-long v14, v6

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107008c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/16 v14, 0x24

    new-array v14, v14, [F

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/4 v8, 0x0

    :goto_0
    array-length v14, v3

    if-ge v8, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    aget-object v15, v3, v8

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    aput v15, v14, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_6
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustR:I

    add-int/lit16 v14, v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustG:I

    add-int/lit16 v14, v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustB:I

    add-int/lit16 v14, v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setting_is_changed()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v10, v14}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_1
    return-void

    :catch_0
    move-exception v4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v14, :cond_8

    const-string/jumbo v14, "AdaptiveDisplayColorService"

    const-string/jumbo v15, "failed to registerProcessObserver"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private animateScrRGB()V
    .locals 14

    const/4 v13, 0x3

    const/high16 v12, 0x41a00000    # 20.0f

    const/16 v11, 0xff

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isInBoundary()I

    move-result v4

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    if-lez v4, :cond_1

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    const/16 v10, 0x14

    if-ne v7, v10, :cond_3

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    iget v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    if-lez v3, :cond_1

    if-gt v3, v11, :cond_1

    if-lez v1, :cond_1

    if-gt v1, v11, :cond_1

    if-lez v0, :cond_1

    if-gt v0, v11, :cond_1

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v3, v7, :cond_0

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-eq v1, v7, :cond_2

    :cond_0
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {p0, v7, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v0, v7, :cond_1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    const/4 v5, 0x0

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    iget v10, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgR:I

    sub-int v2, v7, v10

    int-to-float v7, v2

    div-float/2addr v7, v12

    iget v10, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v7, v10

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgR:I

    float-to-int v10, v5

    add-int v3, v7, v10

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    iget v10, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgG:I

    sub-int v2, v7, v10

    int-to-float v7, v2

    div-float/2addr v7, v12

    iget v10, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v7, v10

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgG:I

    float-to-int v10, v5

    add-int v1, v7, v10

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    iget v10, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgB:I

    sub-int v2, v7, v10

    int-to-float v7, v2

    div-float/2addr v7, v12

    iget v10, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v7, v10

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgB:I

    float-to-int v10, v5

    add-int v0, v7, v10

    if-lez v3, :cond_5

    if-gt v3, v11, :cond_5

    if-lez v1, :cond_5

    if-gt v1, v11, :cond_5

    if-lez v0, :cond_5

    if-gt v0, v11, :cond_5

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v3, v7, :cond_4

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-eq v1, v7, :cond_6

    :cond_4
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {p0, v7, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v7, v13}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v10, 0xfa

    add-long/2addr v10, v8

    invoke-virtual {v7, v13, v10, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_1

    :cond_6
    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v0, v7, :cond_5

    goto :goto_2
.end method

.method private enableRgbSensor(Z)V
    .locals 11

    const/16 v10, 0x2c

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/16 v7, 0xff

    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "AdaptiveDisplayColorService"

    const-string/jumbo v5, "StatFs returns null."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enableRgbSensor : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_4

    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    add-int/2addr v4, v5

    int-to-float v2, v4

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    iput v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevContorlZone:I

    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    iput v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v4, :cond_2

    new-instance v0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;

    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDuration:I

    invoke-direct {v0, v4, v5}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;-><init>(FI)V

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v4, v5, v10}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    return-void

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    iget-object v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v4, v5, v6, v9, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    :cond_4
    iput v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    iput v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    iput v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v4, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v4, v5, v10}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v3, 0x0

    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "AdaptiveDisplayColorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fileWriteString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v5, "AdaptiveDisplayColorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fileWriteString : file not found : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method private getRgbFromLightSensor()V
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v4, "/sys/class/sensors/light_sensor/raw_data"

    invoke-direct {p0, v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    const/4 v4, 0x0

    :try_start_1
    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorR:I

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorG:I

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorB:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NumberFormatException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :try_start_3
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v12, 0x80

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x80

    new-array v1, v12, [B

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v12, :cond_0

    aput-byte v11, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_2

    :try_start_1
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-eqz v8, :cond_1

    new-instance v10, Ljava/lang/String;

    add-int/lit8 v11, v8, -0x1

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v13, 0x0

    invoke-direct {v10, v1, v13, v11, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v9, v10

    :cond_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    if-eqz v7, :cond_3

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    move-object v6, v7

    :cond_4
    :goto_2
    return-object v9

    :catch_0
    move-exception v3

    const-string/jumbo v11, "AdaptiveDisplayColorService"

    const-string/jumbo v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v11, "AdaptiveDisplayColorService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_4

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    const-string/jumbo v11, "AdaptiveDisplayColorService"

    const-string/jumbo v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception v4

    :goto_4
    :try_start_5
    const-string/jumbo v11, "AdaptiveDisplayColorService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "FileNotFoundException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_4

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception v3

    const-string/jumbo v11, "AdaptiveDisplayColorService"

    const-string/jumbo v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v6, :cond_5

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_5
    :goto_6
    throw v11

    :catch_5
    move-exception v3

    const-string/jumbo v12, "AdaptiveDisplayColorService"

    const-string/jumbo v13, "File Close error"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_1
    move-exception v11

    move-object v6, v7

    goto :goto_5

    :catch_6
    move-exception v4

    move-object v6, v7

    goto :goto_4

    :catch_7
    move-exception v2

    move-object v6, v7

    goto :goto_3
.end method

.method private handleRgbSensorEvent(IIIII)V
    .locals 7

    const/16 v6, 0x9

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isInBoundary()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevContorlZone:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevContorlZone:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    :cond_0
    if-lez v0, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v5, 0x2c

    invoke-virtual {v1, v4, v5}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->handleRgbSensorValue(IIIII)V

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v1, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v4, 0x2710

    add-long/2addr v4, v2

    invoke-virtual {v1, v6, v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private handleRgbSensorValue(IIIII)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x2

    add-int v6, p1, p2

    add-int v3, v6, p3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    int-to-float v6, p1

    int-to-float v7, v3

    div-float v2, v6, v7

    int-to-float v6, p2

    int-to-float v7, v3

    div-float v1, v6, v7

    int-to-float v6, p3

    int-to-float v7, v3

    div-float v0, v6, v7

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    :cond_0
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    if-lez v6, :cond_2

    iput v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    int-to-long v6, p4

    iput-wide v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    iput p5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumCCT:I

    iput v9, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v8}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v8, v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :goto_0
    return-void

    :cond_1
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    iput v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v8}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    goto :goto_0
.end method

.method private initRgbAverage()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    iput v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumCCT:I

    iput v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    return-void
.end method

.method private isInBoundary()I
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private max_num(II)I
    .locals 0

    if-lt p1, p2, :cond_0

    return p1

    :cond_0
    return p2
.end method

.method private min_num(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    return p2
.end method

.method private monitorForegroundBrowser(Ljava/lang/String;II)V
    .locals 10

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverState:Z

    if-eqz v6, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v3, 0x1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v7, 0x8

    invoke-virtual {v6, v7, v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_4
    :goto_2
    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_3
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->EBOOK_NAMES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->EBOOK_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v2, 0x1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    if-eqz v2, :cond_d

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v6, :cond_4

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v6, :cond_a

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    :goto_4
    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v6, :cond_c

    :cond_9
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->foregroundDelayTime:J

    add-long/2addr v8, v4

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_2

    :cond_a
    const/4 v6, 0x1

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    goto :goto_4

    :cond_c
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto :goto_5

    :cond_d
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v6, :cond_f

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    const-string/jumbo v6, "com.android.systemui"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    add-long/2addr v8, v4

    const/16 v7, 0x8

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :goto_6
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto/16 :goto_2

    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    add-long/2addr v8, v4

    const/16 v7, 0x8

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_6

    :cond_f
    if-eqz v3, :cond_10

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    if-nez v6, :cond_4

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v8, 0x1f4

    add-long/2addr v8, v4

    const/4 v7, 0x5

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_2

    :cond_10
    if-eqz v1, :cond_15

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-nez v6, :cond_4

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v6, :cond_13

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    if-eqz v6, :cond_13

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v6, :cond_12

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    :goto_7
    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    if-eqz v6, :cond_11

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v6, :cond_14

    :cond_11
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->foregroundDelayTime:J

    add-long/2addr v8, v4

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_2

    :cond_12
    const/4 v6, 0x1

    goto :goto_7

    :cond_13
    const/4 v6, 0x0

    goto :goto_7

    :cond_14
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto :goto_8

    :cond_15
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    if-eqz v6, :cond_17

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_16
    :goto_9
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto/16 :goto_2

    :cond_17
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v6, :cond_16

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    const-string/jumbo v6, "com.android.systemui"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    add-long/2addr v8, v4

    const/16 v7, 0x8

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_9

    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    add-long/2addr v8, v4

    const/16 v7, 0x8

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_9
.end method

.method private receive_multi_window_on_intent()V
    .locals 5

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AdaptiveDisplayColorService"

    const-string/jumbo v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private receive_screen_off_intent()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private receive_screen_on_intent()V
    .locals 5

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "AdaptiveDisplayColorService"

    const-string/jumbo v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendForcedRGB(IIIII)V
    .locals 4

    add-int v1, p1, p2

    add-int v0, v1, p3

    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    int-to-float v1, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    int-to-float v1, p3

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    int-to-long v2, p4

    iput-wide v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    iput p5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumCCT:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->sendRgbAverage()V

    return-void
.end method

.method private sendRgbAverage()V
    .locals 38

    const/16 v27, 0x0

    const/16 v26, 0x0

    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v12, 0x1

    const-wide/16 v8, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    move/from16 v33, v0

    if-lez v33, :cond_7

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    :goto_0
    int-to-long v12, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    move/from16 v33, v0

    int-to-float v0, v10

    move/from16 v34, v0

    div-float v20, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    move/from16 v33, v0

    int-to-float v0, v10

    move/from16 v34, v0

    div-float v14, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    move/from16 v33, v0

    int-to-float v0, v10

    move/from16 v34, v0

    div-float v7, v33, v34

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    move-wide/from16 v34, v0

    div-long v8, v34, v12

    const-string/jumbo v33, "AdaptiveDisplayColorService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "AvgR : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ", AvgG : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ", AvgB : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ", avg lux : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    :try_start_0
    const-string/jumbo v33, "/sys/class/mdnie/mdnie/sensorRGB"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const/16 v33, 0x0

    aget-object v33, v25, v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    const/16 v33, 0x1

    aget-object v33, v25, v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    const/16 v33, 0x2

    aget-object v33, v25, v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1

    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    :goto_1
    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    :goto_2
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    :cond_2
    move-wide/from16 v18, v8

    const/16 v16, -0x1

    const-wide/16 v34, 0x4

    cmp-long v33, v8, v34

    if-ltz v33, :cond_3

    const-wide/16 v34, 0x3e8

    cmp-long v33, v8, v34

    if-lez v33, :cond_a

    :cond_3
    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v24, v0

    :goto_3
    if-eqz v27, :cond_6

    if-eqz v26, :cond_6

    if-eqz v24, :cond_6

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    move/from16 v33, v0

    if-eqz v33, :cond_4

    const-string/jumbo v33, "AdaptiveDisplayColorService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "scrR : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ", scrG : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ", scrB : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v33, v0

    move/from16 v0, v27

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v33, v0

    move/from16 v0, v26

    move/from16 v1, v33

    if-eq v0, v1, :cond_14

    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgR:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgG:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgB:I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->animateScrRGB()V

    :cond_6
    return-void

    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v11

    :try_start_1
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1

    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    goto/16 :goto_1

    :catchall_0
    move-exception v33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v34, v0

    if-eqz v34, :cond_8

    const/16 v34, 0xff

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    const/16 v34, 0xff

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    const/16 v34, 0xff

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    :cond_8
    throw v33

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v33, v34, v36

    if-ltz v33, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v33, v34, v36

    if-ltz v33, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v33, v34, v36

    if-ltz v33, :cond_3

    :goto_5
    const-wide/16 v34, 0x0

    cmp-long v33, v18, v34

    if-eqz v33, :cond_c

    const/16 v33, 0x1

    shr-long v18, v18, v33

    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    move/from16 v24, v0

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    move/from16 v33, v0

    if-nez v33, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    move/from16 v33, v0

    if-eqz v33, :cond_13

    :cond_d
    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustR:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustG:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustB:I

    :goto_6
    const v33, 0x4b189680    # 1.0E7f

    mul-float v33, v33, v20

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    move/from16 v34, v0

    div-int v31, v33, v34

    const v33, 0x4b189680    # 1.0E7f

    mul-float v33, v33, v14

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    move/from16 v34, v0

    div-int v30, v33, v34

    const v33, 0x4b189680    # 1.0E7f

    mul-float v33, v33, v7

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    move/from16 v34, v0

    div-int v29, v33, v34

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v31

    if-ne v0, v1, :cond_f

    const/16 v27, 0xff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget v33, v33, v34

    mul-float v33, v33, v20

    mul-float v33, v33, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget v34, v34, v35

    mul-float v34, v34, v14

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x2

    aget v34, v34, v35

    mul-float v34, v34, v20

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x3

    aget v34, v34, v35

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x4

    aget v34, v34, v35

    mul-float v34, v34, v20

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x5

    aget v34, v34, v35

    add-float v28, v33, v34

    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v26, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0x6

    aget v33, v33, v34

    mul-float v33, v33, v20

    mul-float v33, v33, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x7

    aget v34, v34, v35

    mul-float v34, v34, v7

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x8

    aget v34, v34, v35

    mul-float v34, v34, v20

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x9

    aget v34, v34, v35

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0xa

    aget v34, v34, v35

    mul-float v34, v34, v20

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0xb

    aget v34, v34, v35

    add-float v28, v33, v34

    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v24, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v24

    :goto_7
    add-int v23, v27, v6

    add-int v22, v26, v5

    add-int v21, v24, v4

    const-wide/16 v34, 0x190

    cmp-long v33, v8, v34

    if-gez v33, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    move/from16 v33, v0

    if-eqz v33, :cond_11

    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v23

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v27, v33, 0x8

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v27

    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v22

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v26, v33, 0x8

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v26

    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v21

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v24, v33, 0x8

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v24

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    move/from16 v33, v0

    move/from16 v0, v33

    add-int/lit16 v6, v0, -0xff

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    move/from16 v33, v0

    move/from16 v0, v33

    add-int/lit16 v5, v0, -0xff

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    move/from16 v33, v0

    move/from16 v0, v33

    add-int/lit16 v4, v0, -0xff

    goto/16 :goto_6

    :cond_f
    move/from16 v0, v17

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0xc

    aget v33, v33, v34

    mul-float v33, v33, v20

    mul-float v33, v33, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0xd

    aget v34, v34, v35

    mul-float v34, v34, v7

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0xe

    aget v34, v34, v35

    mul-float v34, v34, v20

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0xf

    aget v34, v34, v35

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x10

    aget v34, v34, v35

    mul-float v34, v34, v20

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x11

    aget v34, v34, v35

    add-float v28, v33, v34

    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v27, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0x12

    aget v33, v33, v34

    mul-float v33, v33, v14

    mul-float v33, v33, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x13

    aget v34, v34, v35

    mul-float v34, v34, v7

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x14

    aget v34, v34, v35

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x15

    aget v34, v34, v35

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x16

    aget v34, v34, v35

    mul-float v34, v34, v14

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x17

    aget v34, v34, v35

    add-float v28, v33, v34

    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v26, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v26

    const/16 v24, 0xff

    goto/16 :goto_7

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0x18

    aget v33, v33, v34

    mul-float v33, v33, v20

    mul-float v33, v33, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x19

    aget v34, v34, v35

    mul-float v34, v34, v14

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1a

    aget v34, v34, v35

    mul-float v34, v34, v20

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1b

    aget v34, v34, v35

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1c

    aget v34, v34, v35

    mul-float v34, v34, v20

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1d

    aget v34, v34, v35

    add-float v28, v33, v34

    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v27, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v27

    const/16 v26, 0xff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0x1e

    aget v33, v33, v34

    mul-float v33, v33, v14

    mul-float v33, v33, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1f

    aget v34, v34, v35

    mul-float v34, v34, v7

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x20

    aget v34, v34, v35

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x21

    aget v34, v34, v35

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x22

    aget v34, v34, v35

    mul-float v34, v34, v14

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x23

    aget v34, v34, v35

    add-float v28, v33, v34

    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v24, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v24

    goto/16 :goto_7

    :cond_11
    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v23

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v27, v33, 0x8

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v27

    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v22

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v26, v33, 0x8

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v26

    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v21

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v24, v33, 0x8

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v24

    goto/16 :goto_3

    :cond_12
    move/from16 v27, v23

    move/from16 v26, v22

    move/from16 v24, v21

    goto/16 :goto_3

    :cond_13
    const/16 v27, 0x0

    const/16 v26, 0x0

    const/16 v24, 0x0

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v33, v0

    move/from16 v0, v24

    move/from16 v1, v33

    if-eq v0, v1, :cond_6

    goto/16 :goto_4
.end method

.method private setAverageValue(IIIII)V
    .locals 10

    add-int v6, p1, p2

    add-int v3, v6, p3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    int-to-float v6, p1

    int-to-float v7, v3

    div-float v2, v6, v7

    int-to-float v6, p2

    int-to-float v7, v3

    div-float v1, v6, v7

    int-to-float v6, p3

    int-to-float v7, v3

    div-float v0, v6, v7

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    :cond_0
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    add-float/2addr v6, v2

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    add-float/2addr v6, v1

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    add-float/2addr v6, v0

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    iget-wide v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    int-to-long v8, p4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumCCT:I

    add-int/2addr v6, p5

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumCCT:I

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    const/16 v7, 0x14

    if-lt v6, v7, :cond_1

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    :cond_1
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    if-nez v6, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v8, 0x2710

    add-long/2addr v8, v4

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method private setBrowserMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    :cond_0
    return-void
.end method

.method private setEbookMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    :cond_0
    return-void
.end method

.method private setVideoMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    :cond_0
    return-void
.end method

.method private setting_is_changed()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lcd_curtain"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    const-string/jumbo v2, "high_contrast"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    const-string/jumbo v2, "color_blind"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    const-string/jumbo v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_7

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_8

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_9

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    const-string/jumbo v2, "blue_light_filter"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_a

    :goto_6
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBlueFilterEnabled:Z

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    if-eqz v2, :cond_b

    :cond_0
    move v2, v4

    :goto_7
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v2, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_8
    return-void

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_2

    :cond_7
    move v2, v4

    goto :goto_3

    :cond_8
    move v2, v4

    goto :goto_4

    :cond_9
    move v2, v4

    goto :goto_5

    :cond_a
    move v3, v4

    goto :goto_6

    :cond_b
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBlueFilterEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    goto :goto_7

    :catch_0
    move-exception v0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "AdaptiveDisplayColorService"

    const-string/jumbo v3, "failed to onForegroundActivitiesChanged"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    goto :goto_8
.end method

.method private terminateScrRGB()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    :cond_0
    return-void
.end method

.method private terminateVideoMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    :cond_0
    return-void
.end method

.method private updateScreen()V
    .locals 6

    :try_start_0
    const-string/jumbo v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string/jumbo v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v3, 0x3ee

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-boolean v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "AdaptiveDisplayColorService"

    const-string/jumbo v4, "failed to updateScreen"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
