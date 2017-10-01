.class public Lcom/android/server/am/DynamicHiddenApp;
.super Ljava/lang/Object;
.source "DynamicHiddenApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/DynamicHiddenApp$HotnessValue;,
        Lcom/android/server/am/DynamicHiddenApp$ILS_Q;
    }
.end annotation


# static fields
.field static final AREs_EMERGENCY_TRIGGER_COOLTIME:I = 0xdbba0

.field static final BG_COUNT_CACHED:I = 0x1

.field static final BG_COUNT_CACHED_HIDDEN:I = 0x3

.field static final BG_COUNT_EMPTY:I = 0x2

.field static final BG_COUNT_NON_CACHED:I = 0x4

.field static DEBUG:Z = false

.field static DEBUG_Component:Z = false

.field static final DECREASE_SCORE_THREAD_TIME_INTERNAL:J = 0x5265c00L

.field static DHA_ADJ_CACHED_FACTOR:Z = false

.field static final DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

.field static DHA_HOTNESS_ENABLE:Z = false

.field static DHA_HOTNESS_LFU_MINCachedRate:F = 0.0f

.field static DHA_HOTNESS_LFU_MINEmptyRate:F = 0.0f

.field static DHA_HOTNESS_LRU_PROTECT_MIN:I = 0x0

.field static final DHA_HOTNESS_PROTECT_TIME:J = 0x1388L

.field static DHA_INCREASE_THRESHOLD:J = 0x0L

.field static final DHA_MAX_MARGIN:J = 0x800000L

.field static final DHA_MIN_MARGIN:J = 0x400000L

.field static DHA_PACKAGE_ENABLE:Z = false

.field static final DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

.field static ES_LRU_BASE_ENABLE:Z = false

.field static FALL_PREVENT_ENABLE:Z = false

.field static FHA_ENABLE:Z = false

.field static final HOTNESS_ACTIVITY:I = 0x0

.field static final HOTNESS_EMPTY:I = 0x1

.field static INIT_CACHED_APPS:I = 0x0

.field static INIT_EMPTY_APPS:I = 0x0

.field static LDHA_ES_ENABLE:Z = false

.field static LDHA_SPC_ENABLE:Z = false

.field static MAX_CACHED_APPS:I = 0x0

.field static MAX_EMPTY_APPS:I = 0x0

.field static MIN_CACHED_APPS:I = 0x0

.field static MIN_EMPTY_APPS:I = 0x0

.field static final TAG:Ljava/lang/String;

.field static final TAG_DHA:Ljava/lang/String; = "DynamicHiddenApp"

.field static final TAG_HOTNESS:Ljava/lang/String;

.field static curTopApp:Lcom/android/server/am/ProcessRecord;

.field static debuggingR:Lcom/android/server/am/ProcessRecord;

.field static dha_amsexcept_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static dha_keepempty_key:I

.field static dha_keepempty_key_knox:I

.field static dha_keepempty_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static isLogPrinted:Z

.field static mAMSExceptionEnable:Z

.field static mDhaKeepEmptyEnable:I

.field static mDhaKeepEmptyEnableKnox:I

.field static mILS_2nd_Enable:Z

.field static mILS_Enable:Z

.field static mKnoxAMSExceptionEnable:Z

.field static mLMKArray:Ljava/lang/String;

.field static mLMKScale:F

.field static mSzILSFlag:Z

.field static mSzILSRate:F

.field static mSzILS_SDHARate:F

.field static mb64bitLMKEnable:Z

.field static strPrevAppForActivityHotness:Ljava/lang/String;

.field static strPrevAppForEmptyHotness:Ljava/lang/String;


# instance fields
.field private DHA_HOTNESS_MAX_VALUE:I

.field private SLUGGISH_AGING_TIME:J

.field hotnessCached:I

.field hotnessEmpty:I

.field killingProcessesUss:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field killingProcessesUssTotal:J

.field mAm:Lcom/android/server/am/ActivityManagerService;

.field mContext:Landroid/content/Context;

.field private mDecreaseHotnessScoreThread:Ljava/lang/Thread;

.field mDidStepUp:Z

.field mDynamicLMKFlag:Z

.field private final mHotnessAdjMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/DynamicHiddenApp$HotnessValue;",
            ">;"
        }
    .end annotation
.end field

.field private final mHotnessLFU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcom/android/internal/util/MemInfoReader;

.field private final mLastKillTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mLastTimeTriggerAREs:J

.field mMaxCached:I

.field mMaxEmpty:I

.field mMax_ES_Total:I

.field mNumCachedHiddenProcs:I

.field mNumNonCachedProcs:I

.field private final mOomAdj:[I

.field mProcessList:Lcom/android/server/am/ProcessList;

.field private mSzDHAStep:I

.field private mSzDHAThreshold:J

.field private mSzDHAThresholdRate:F

.field numCached:I

.field numEmpty:I


# direct methods
.method static synthetic -get0(Lcom/android/server/am/DynamicHiddenApp;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->DEBUG_Component:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->debuggingR:Lcom/android/server/am/ProcessRecord;

    sput-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->isLogPrinted:Z

    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_Hotness"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->curTopApp:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v0, "ro.config.fha_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    const-string/jumbo v0, "ro.config.dha_hotness_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    const-string/jumbo v0, "ro.config.dha_cached_max"

    const-string/jumbo v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->INIT_CACHED_APPS:I

    const-string/jumbo v0, "ro.config.dha_cached_min"

    const-string/jumbo v1, "4"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    const-string/jumbo v0, "ro.config.dha_cached_max"

    const-string/jumbo v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    const-string/jumbo v0, "ro.config.dha_empty_init"

    const-string/jumbo v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->INIT_EMPTY_APPS:I

    const-string/jumbo v0, "ro.config.dha_empty_min"

    const-string/jumbo v1, "8"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    const-string/jumbo v0, "ro.config.dha_empty_max"

    const-string/jumbo v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    const-string/jumbo v0, "ro.config.ldha_es_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    const-string/jumbo v0, "ro.config.ldha_spc_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LDHA_SPC_ENABLE:Z

    const-string/jumbo v0, "ro.config.dha_adj_cached_factor"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_ADJ_CACHED_FACTOR:Z

    const-string/jumbo v0, "ro.config.64bit_lmk_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mb64bitLMKEnable:Z

    const-string/jumbo v0, "ro.config.dha_ils_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mILS_Enable:Z

    const-string/jumbo v0, "ro.config.dha_ils_2nd_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mILS_2nd_Enable:Z

    const-string/jumbo v0, "ro.config.dha_ils_rate"

    const-string/jumbo v1, "1.5"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mSzILSRate:F

    const-string/jumbo v0, "ro.config.dha_ils_sdha_rate"

    const-string/jumbo v1, "1.8"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mSzILS_SDHARate:F

    sput-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    const-string/jumbo v0, "ro.config.dha_pwhitelist_enable"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    const-string/jumbo v0, "ro.config.dha_knox_plist_enable"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnableKnox:I

    const-string/jumbo v0, "ro.config.dha_lmk_scale"

    const-string/jumbo v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const-string/jumbo v0, "ro.config.dha_lmk_array"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const-string/jumbo v0, "ro.config.ams_exception_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mAMSExceptionEnable:Z

    const-string/jumbo v0, "ro.config.ams_knoxexpt_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mKnoxAMSExceptionEnable:Z

    const-string/jumbo v0, "ro.config.fall_prevent_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    const-string/jumbo v0, "ro.config.dha_package_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_PACKAGE_ENABLE:Z

    const-string/jumbo v0, "ro.config.dha_es_lru_en"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->ES_LRU_BASE_ENABLE:Z

    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    const-string/jumbo v0, "ro.config.hotness_LRU_Min"

    const-string/jumbo v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LRU_PROTECT_MIN:I

    const-string/jumbo v0, "ro.config.hotness_LFU_CaRate"

    const-string/jumbo v1, "1.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINCachedRate:F

    const-string/jumbo v0, "ro.config.hotness_LFU_EmRate"

    const-string/jumbo v1, "2.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINEmptyRate:F

    const-string/jumbo v0, "unknown"

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForActivityHotness:Ljava/lang/String;

    const-string/jumbo v0, "unknown"

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForEmptyHotness:Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.sec.android.gallery3d"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.sec.android.app.music"

    aput-object v1, v0, v5

    const-string/jumbo v1, "com.sec.android.app.myfiles"

    aput-object v1, v0, v6

    const-string/jumbo v1, "com.google.android.gm"

    aput-object v1, v0, v7

    const-string/jumbo v1, "Reserved"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Reserved"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.vending"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "Reserved"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.camera"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "MMS"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.music:ui"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.music:main"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "android.process.acore"

    aput-object v2, v1, v3

    const-string/jumbo v2, "2"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "com.samsung.klmsagent"

    aput-object v2, v1, v3

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "CONTACTS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "android.process.media"

    aput-object v2, v1, v3

    const-string/jumbo v2, "2"

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "com.android.managedprovisioning"

    aput-object v2, v1, v3

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "com.tencent.mm"

    aput-object v2, v1, v3

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    const-string/jumbo v0, "ro.config.dha_pwhl_key"

    const-string/jumbo v1, "7682"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key:I

    const-string/jumbo v0, "ro.config.dha_pwhl_key_knox"

    const-string/jumbo v1, "1539"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key_knox:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mOomAdj:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    const-wide/32 v0, 0x2000000

    iput-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->INIT_EMPTY_APPS:I

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->INIT_EMPTY_APPS:I

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->INIT_CACHED_APPS:I

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    iput-boolean v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mDynamicLMKFlag:Z

    iput-wide v4, p0, Lcom/android/server/am/DynamicHiddenApp;->mLastTimeTriggerAREs:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->SLUGGISH_AGING_TIME:J

    iput-boolean v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mDidStepUp:Z

    const v0, 0xf4240

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_MAX_VALUE:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mLastKillTimeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    iput-wide v4, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->hotnessCached:I

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->hotnessEmpty:I

    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    iput-object p3, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->initProperty()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
        0xc8
        0x12c
        0x384
        0x38a
    .end array-data
.end method

.method private final computeHotnessAdjLocked(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    :goto_0
    if-ltz v4, :cond_6

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    :goto_1
    if-ltz v6, :cond_4

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    :goto_2
    if-ltz v5, :cond_3

    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderConnection;

    iget-object v1, v2, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_1
    iget v7, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-ge v7, v8, :cond_0

    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "content provider process:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " hotness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", client process:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " hotness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v7, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iput v7, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_4
    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "app:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " hotness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    if-eqz p4, :cond_1

    const-string/jumbo v0, "MMS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CONTACTS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "MMS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/DynamicHiddenApp;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "CONTACTS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/am/DynamicHiddenApp;->getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getDefaultIMEPackage()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    aget-object v0, v1, v4

    :cond_0
    return-object v0
.end method

.method private getDefaultLauncher(I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.category.HOME"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v5, 0x0

    const/high16 v6, 0x10000

    :try_start_0
    invoke-interface {v3, v2, v5, v6, p1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v5, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " getDefaultLauncher currentLauncher -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v8
.end method

.method private getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v1, "com.android.mms"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    move-object v3, v1

    goto :goto_0
.end method

.method public static isAMSExceptionProcess(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static isDhaKeepEmptyProcess(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private setProcessLimit()V
    .locals 3

    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    :cond_0
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    :cond_1
    return-void
.end method

.method public static updateILS(Ljava/lang/String;)V
    .locals 4

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->mILS_Enable:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->isAppsLaunchFreq(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ILS: FlagChange["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] Before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method final decreaseHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForEmptyHotness:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForEmptyHotness:Ljava/lang/String;

    const-string/jumbo v1, "unknown"

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForActivityHotness:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "decreaseHotnessAdj "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decreaseHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", hotness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v0, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->decreaseHotness(I)V

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decreaseHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", hotness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method decrementEmptyAppCount(II)I
    .locals 2

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    sub-int v0, p1, v1

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    if-le v1, v0, :cond_2

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    if-ge v0, v1, :cond_0

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    :cond_0
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    if-le p2, v1, :cond_1

    add-int/lit8 v1, p2, -0x1

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    goto :goto_0
.end method

.method decrement_ES_AppCount(II)I
    .locals 3

    add-int v1, p1, p2

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    sub-int v0, v1, v2

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    if-le v1, v0, :cond_1

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    add-int v0, v1, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    goto :goto_0
.end method

.method public dhaProcessesLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")V"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    const-wide/32 v26, 0x1b7740

    sub-long v24, v22, v26

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->hotnessCached:I

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->hotnessEmpty:I

    const-wide/16 v12, 0x0

    const/16 v16, 0x0

    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v26, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/DynamicHiddenApp;->setProcessLimit()V

    :cond_0
    add-int/lit8 v15, v10, -0x1

    :goto_0
    if-ltz v15, :cond_4d

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    const/16 v16, 0x0

    iget-boolean v0, v11, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    move/from16 v26, v0

    if-nez v26, :cond_1

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->mAMSExceptionEnable:Z

    if-eqz v26, :cond_3

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v26

    const/16 v27, 0x64

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    iget-boolean v0, v11, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_3

    :cond_1
    :goto_1
    add-int/lit8 v15, v15, -0x1

    goto :goto_0

    :cond_2
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->mKnoxAMSExceptionEnable:Z

    if-eqz v26, :cond_3

    iget-boolean v0, v11, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    move/from16 v26, v0

    if-nez v26, :cond_3

    const/16 v16, 0x1

    :cond_3
    sget v26, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_4

    sget v26, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnableKnox:I

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    :cond_4
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    move/from16 v26, v0

    if-lez v26, :cond_5

    const/16 v16, 0x1

    :cond_5
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->curProcState:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->LDHA_SPC_ENABLE:Z

    if-eqz v26, :cond_1

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v26, v0

    const/16 v27, 0x384

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_1

    if-eqz v16, :cond_2c

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-gtz v26, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setHotness(II)V

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    goto/16 :goto_1

    :pswitch_0
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DHA_PACKAGE_ENABLE:Z

    if-nez v26, :cond_1

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v26, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    const/16 v17, 0x1

    :goto_2
    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v26, v0

    sget v27, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_c

    const/16 v17, 0x1

    :cond_7
    :goto_3
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v26, :cond_8

    sget-object v26, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "CA numC[ "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " ] numE [ "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " ], Total: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " isDHAKill "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " adj "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " pname: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    if-eqz v17, :cond_9

    const-string/jumbo v20, "DHA"

    :cond_9
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v26, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-eqz v26, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getIsHotness(I)Z

    move-result v18

    :goto_5
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v26, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-eqz v26, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getIsHotness(I)Z

    move-result v18

    :goto_6
    if-eqz v18, :cond_14

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    if-eqz v20, :cond_a

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/ProcessRecord;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "_H:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "cached #"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    :cond_a
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v26, :cond_1

    sget-object v26, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "CA hotness protected"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v26, v0

    sget v27, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_e

    const/16 v17, 0x1

    :goto_7
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->ES_LRU_BASE_ENABLE:Z

    if-nez v26, :cond_7

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    move/from16 v27, v0

    sget v28, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    sub-int v27, v27, v28

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_f

    const/16 v17, 0x1

    goto/16 :goto_3

    :cond_e
    const/16 v17, 0x0

    goto :goto_7

    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_11

    const/16 v17, 0x1

    goto/16 :goto_4

    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_5

    :cond_13
    const/16 v18, 0x0

    goto/16 :goto_6

    :cond_14
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v6, v0, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_15
    if-eqz v20, :cond_1a

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v26

    if-eqz v26, :cond_16

    const-string/jumbo v26, "com.android.vending"

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    const-string/jumbo v26, "GATE"

    const-string/jumbo v27, "<GATE-M> MARKET_LAUNCHED_FAIL </GATE-M>"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    if-eqz v16, :cond_18

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    sget-object v26, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "PWHL - "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " in Cached"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ":"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Convert from hidden to empty"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    goto/16 :goto_1

    :cond_17
    sget-object v26, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "PWHL_KNOX - "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " in Cached"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ":"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Convert from hidden to empty knox"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    goto :goto_8

    :cond_18
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v26, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-nez v26, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v26, v0

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/util/MemInfoReader;->getUssByPid(I)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    move-wide/from16 v26, v0

    add-long v26, v26, v12

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    sget-object v26, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "KPU : put ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "] : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-wide/16 v28, 0x400

    div-long v28, v12, v28

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " K"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ":"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "cached #"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_8

    :cond_1a
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v26, :cond_1

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v26, v0

    sget v27, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_1b

    iget-wide v0, v11, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    move-wide/from16 v26, v0

    cmp-long v26, v26, v24

    if-gez v26, :cond_1b

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "empty for "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-wide/32 v28, 0x1b7740

    add-long v28, v28, v24

    iget-wide v0, v11, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "s"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v26, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_1f

    const/16 v17, 0x1

    :goto_9
    if-eqz v17, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v26, v0

    sget v27, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_20

    const/16 v17, 0x1

    :goto_a
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v26, :cond_1c

    sget-object v26, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "CE numC[ "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " ] numE [ "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " ], Total: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " isDHAKill "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " adj "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " pname: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_b
    if-eqz v17, :cond_1d

    const-string/jumbo v20, "DHA"

    :cond_1d
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v26, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-eqz v26, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getIsHotness(I)Z

    move-result v18

    :goto_c
    if-eqz v18, :cond_26

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v7, v0, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    if-eqz v20, :cond_1e

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/ProcessRecord;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "_H:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "empty #"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    :cond_1e
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v26, :cond_1

    sget-object v26, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "EM hotness protected"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1f
    const/16 v17, 0x0

    goto/16 :goto_9

    :cond_20
    const/16 v17, 0x0

    goto/16 :goto_a

    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v26, v0

    sget v27, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_22

    const/16 v17, 0x1

    goto/16 :goto_a

    :cond_22
    const/16 v17, 0x0

    goto/16 :goto_a

    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_24

    const/16 v17, 0x1

    goto/16 :goto_b

    :cond_24
    const/16 v17, 0x0

    goto/16 :goto_b

    :cond_25
    const/16 v18, 0x0

    goto/16 :goto_c

    :cond_26
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v8, v0, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_27
    if-eqz v16, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setHotness(II)V

    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    goto/16 :goto_1

    :cond_29
    if-eqz v20, :cond_2b

    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v26, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-nez v26, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v26, v0

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/util/MemInfoReader;->getUssByPid(I)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    move-wide/from16 v26, v0

    add-long v26, v26, v12

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    sget-object v26, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "KPU : put ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "] : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-wide/16 v28, 0x400

    div-long v28, v12, v28

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " K"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ":"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "empty #"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    goto/16 :goto_1

    :cond_2b
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v26, :cond_1

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v7, v0, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_2c
    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_3e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v26, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_31

    const/16 v17, 0x1

    :goto_d
    if-eqz v17, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v26, v0

    sget v27, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_32

    const/16 v17, 0x1

    :cond_2d
    :goto_e
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v26, :cond_2e

    sget-object v26, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "CAS numC[ "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " ] numE [ "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " ], Total: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " isDHAKill "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " adj "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " pname: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_f
    if-eqz v17, :cond_2f

    const-string/jumbo v20, "DHA"

    :cond_2f
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v26, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-eqz v26, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getIsHotness(I)Z

    move-result v18

    :goto_10
    if-eqz v18, :cond_39

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    if-eqz v20, :cond_30

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/ProcessRecord;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "_H:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "cached #"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    :cond_30
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v26, :cond_1

    sget-object v26, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "CA hotness protected"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_31
    const/16 v17, 0x0

    goto/16 :goto_d

    :cond_32
    const/16 v17, 0x0

    goto/16 :goto_e

    :cond_33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v26, v0

    sget v27, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_34

    const/16 v17, 0x1

    :goto_11
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->ES_LRU_BASE_ENABLE:Z

    if-nez v26, :cond_2d

    if-nez v17, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    move/from16 v27, v0

    sget v28, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    sub-int v27, v27, v28

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_35

    const/16 v17, 0x1

    goto/16 :goto_e

    :cond_34
    const/16 v17, 0x0

    goto :goto_11

    :cond_35
    const/16 v17, 0x0

    goto/16 :goto_e

    :cond_36
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_37

    const/16 v17, 0x1

    goto/16 :goto_f

    :cond_37
    const/16 v17, 0x0

    goto/16 :goto_f

    :cond_38
    const/16 v18, 0x0

    goto/16 :goto_10

    :cond_39
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v6, v0, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3a
    if-eqz v20, :cond_3d

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v26

    if-eqz v26, :cond_3b

    const-string/jumbo v26, "com.android.vending"

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3b

    const-string/jumbo v26, "GATE"

    const-string/jumbo v27, "<GATE-M> MARKET_LAUNCHED_FAIL </GATE-M>"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v26, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-nez v26, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v26, v0

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/util/MemInfoReader;->getUssByPid(I)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    move-wide/from16 v26, v0

    add-long v26, v26, v12

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    sget-object v26, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "KPU : put ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "] : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-wide/16 v28, 0x400

    div-long v28, v12, v28

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " K"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ":"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "SPC_cached #"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    goto/16 :goto_1

    :cond_3d
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v26, :cond_1

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v26, :cond_46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_42

    const/16 v17, 0x1

    :goto_12
    if-eqz v17, :cond_44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v26, v0

    sget v27, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_43

    const/16 v17, 0x1

    :goto_13
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v26, :cond_3f

    sget-object v26, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "CES numC[ "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " ] numE [ "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " ], Total: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " isDHAKill "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " adj "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " pname: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    :goto_14
    if-eqz v17, :cond_40

    const-string/jumbo v20, "DHA"

    :cond_40
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v26, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-eqz v26, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getIsHotness(I)Z

    move-result v18

    :goto_15
    if-eqz v18, :cond_49

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v7, v0, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    if-eqz v20, :cond_41

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/ProcessRecord;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "_H:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "empty #"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    :cond_41
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v26, :cond_1

    sget-object v26, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "EM hotness protected"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_42
    const/16 v17, 0x0

    goto/16 :goto_12

    :cond_43
    const/16 v17, 0x0

    goto/16 :goto_13

    :cond_44
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v26, v0

    sget v27, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_45

    const/16 v17, 0x1

    goto/16 :goto_13

    :cond_45
    const/16 v17, 0x0

    goto/16 :goto_13

    :cond_46
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_47

    const/16 v17, 0x1

    goto/16 :goto_14

    :cond_47
    const/16 v17, 0x0

    goto/16 :goto_14

    :cond_48
    const/16 v18, 0x0

    goto/16 :goto_15

    :cond_49
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v8, v0, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4a
    if-eqz v20, :cond_4c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v26, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-nez v26, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v26, v0

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/util/MemInfoReader;->getUssByPid(I)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    move-wide/from16 v26, v0

    add-long v26, v26, v12

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    sget-object v26, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "KPU : put ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "] : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-wide/16 v28, 0x400

    div-long v28, v12, v28

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " K"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ":"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "SPC_empty #"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    goto/16 :goto_1

    :cond_4c
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v26, :cond_1

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v7, v0, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_4d
    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v26, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v19, v26, -0x1

    :goto_16
    if-ltz v19, :cond_4f

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v26

    move/from16 v0, v26

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    :goto_17
    add-int/lit8 v19, v19, -0x1

    goto :goto_16

    :cond_4e
    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    goto :goto_17

    :cond_4f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v19, v26, -0x1

    :goto_18
    if-ltz v19, :cond_51

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v26

    move/from16 v0, v26

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    :goto_19
    add-int/lit8 v19, v19, -0x1

    goto :goto_18

    :cond_50
    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    goto :goto_19

    :cond_51
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v26

    sget v27, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LRU_PROTECT_MIN:I

    sub-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sget v27, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINCachedRate:F

    mul-float v4, v26, v27

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sget v27, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINEmptyRate:F

    mul-float v27, v27, v4

    sub-float v26, v26, v27

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_54

    sget v26, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINEmptyRate:F

    mul-float v9, v4, v26

    :goto_1a
    const/16 v26, 0x0

    cmpl-float v26, v4, v26

    if-lez v26, :cond_59

    new-instance v26, Lcom/android/server/am/DynamicHiddenApp$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/DynamicHiddenApp$2;-><init>(Lcom/android/server/am/DynamicHiddenApp;)V

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/DynamicHiddenApp;->computeHotnessAdjLocked(Ljava/util/ArrayList;)V

    new-instance v26, Lcom/android/server/am/DynamicHiddenApp$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/DynamicHiddenApp$3;-><init>(Lcom/android/server/am/DynamicHiddenApp;)V

    move-object/from16 v0, v26

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/am/DynamicHiddenApp;->computeHotnessAdjLocked(Ljava/util/ArrayList;)V

    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v26, :cond_52

    sget-object v26, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "CachedLFUMax = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "EmptyLFUMax = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    monitor-enter v27

    :try_start_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v21, v26, -0x1

    :goto_1b
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v28, v4

    cmpl-float v26, v26, v28

    if-ltz v26, :cond_55

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v26, 0x1

    const/16 v28, 0x0

    move/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->hotnessCached:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->hotnessCached:I

    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v26, :cond_53

    sget-object v26, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, " hotnessCachedP "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    add-int/lit8 v21, v21, -0x1

    goto/16 :goto_1b

    :cond_54
    const/4 v9, 0x0

    goto/16 :goto_1a

    :cond_55
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v21, v26, -0x1

    :goto_1c
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v28, v9

    cmpl-float v26, v26, v28

    if-ltz v26, :cond_57

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/16 v26, 0x1

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->hotnessEmpty:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->hotnessEmpty:I

    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v26, :cond_56

    sget-object v26, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, " hotnessEmptyP "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_56
    add-int/lit8 v21, v21, -0x1

    goto/16 :goto_1c

    :cond_57
    monitor-exit v27

    sget-boolean v26, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v26, :cond_58

    sget-object v26, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "hotnessCached = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->hotnessCached:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "hotnessEmpty = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->hotnessEmpty:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    new-instance v27, Lcom/android/server/am/DynamicHiddenApp$4;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/DynamicHiddenApp$4;-><init>(Lcom/android/server/am/DynamicHiddenApp;)V

    invoke-static/range {v26 .. v27}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_59
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/DynamicHiddenApp;->updateHiddenAppNum(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    return-void

    :catchall_0
    move-exception v26

    monitor-exit v27

    throw v26

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public dumpComponent(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-ne p6, v0, :cond_2

    :cond_0
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%-5s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p4, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p7, :cond_1

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "extra :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/DynamicHiddenApp;->getShortString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%-5s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p4, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p5, p6}, Lcom/android/server/am/DynamicHiddenApp;->getShortString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dumpDHALocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v3, "ACTIVITY MANAGER DHA Hotness (dumpsys activity dhahot)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, " hotnessAdj value (mHotnessAdjMap) --"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\tHotnessAdj: activity %8d , empty %8d , skip %s,"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v8}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0, v9}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    iget-boolean v6, v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->skipPackage:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " proc name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getBgProcCount(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    return v0

    :pswitch_1
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    return v0

    :pswitch_2
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    return v0

    :pswitch_3
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string/jumbo v1, "com.android.contacts"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string/jumbo v6, "com.android.contacts"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    move-object v3, v1

    goto :goto_0
.end method

.method getShortString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_8

    move-object v0, p1

    const-string/jumbo v1, "com."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com."

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v1, "android."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "android."

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string/jumbo v1, "samsung."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "samsung."

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string/jumbo v1, "sec."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "sec."

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string/jumbo v1, "app."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "app."

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string/jumbo v1, "google."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "google."

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string/jumbo v1, "org."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "org."

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string/jumbo v1, ".service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, ".service"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%20s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%7s"

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%20s"

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "null"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%7s"

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSluggishAgingTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->SLUGGISH_AGING_TIME:J

    return-wide v0
.end method

.method incrementEmptyAppCount()I
    .locals 4

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    add-int v0, v1, v2

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    :cond_0
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    :cond_1
    return v0
.end method

.method increment_ES_AppCount(I)I
    .locals 4

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    add-int v0, v1, v2

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    :cond_0
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    :cond_1
    return v0
.end method

.method public initForHotness()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->setSkipPackageForLauncher()V

    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->runDecreaseHotnessScoreThread()V

    return-void
.end method

.method public initProperty()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/DynamicHiddenApp;->makeLists(Z)V

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->updateLMKThreshold()V

    const-string/jumbo v0, "ro.config.dha_step"

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    const-string/jumbo v0, "ro.config.dha_th_rate"

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string/jumbo v1, "ro.config.dha_th_level"

    const/16 v2, 0x38a

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    const-string/jumbo v0, "ro.config.dha_increase_th"

    sget-wide v2, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    const-string/jumbo v0, "DHA_PROPERTY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DHA STEP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "DHA_PROPERTY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DHA TH RATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "DHA_PROPERTY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DHA mSzDHAThreshold "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "DHA_PROPERTY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DHA DHA_INCREASE_THRESHOLD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public makeLists(Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_0

    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/am/DynamicHiddenApp;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v4, v4, v7

    sget-object v5, Lcom/android/server/am/DynamicHiddenApp;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    aget-object v5, v5, v1

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v3, v4, v5, p1}, Lcom/android/server/am/DynamicHiddenApp;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_1
    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    sget v3, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnableKnox:I

    if-ne v3, v6, :cond_2

    sget v3, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key_knox:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/am/DynamicHiddenApp;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v5, 0x2

    invoke-direct {p0, v3, v4, v5, p1}, Lcom/android/server/am/DynamicHiddenApp;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    :cond_2
    sget v3, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    if-ne v3, v6, :cond_3

    sget v3, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_map:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/am/DynamicHiddenApp;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {p0, v3, v4, v6, p1}, Lcom/android/server/am/DynamicHiddenApp;->dhaAddPackageName(Ljava/util/HashMap;Ljava/lang/String;IZ)V

    :cond_3
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, v6}, Lcom/android/server/am/DynamicHiddenApp;->setSkipPackage(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public removeKillingProcessUss(ILjava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    iget-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    iput-wide v4, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    :cond_0
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KPU : remove ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] , Remain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method protected runDecreaseHotnessScoreThread()V
    .locals 2

    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$1;

    const-string/jumbo v1, "DecreaseHotnessScoreThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/DynamicHiddenApp$1;-><init>(Lcom/android/server/am/DynamicHiddenApp;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mDecreaseHotnessScoreThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mDecreaseHotnessScoreThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method setCallerHotnessAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_0
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    const-string/jumbo v2, "setCallerHotnessAdj callee is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    if-eqz p2, :cond_3

    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v1, :cond_5

    :cond_3
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    const-string/jumbo v2, "setCallerHotnessAdj caller is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v1

    iput v1, p1, Lcom/android/server/am/ProcessRecord;->callerHotnessAdj:I

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallerHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", hotnessAdj="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->callerHotnessAdj:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_0
    monitor-exit v2

    return-void

    :cond_7
    :try_start_1
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallerHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", hotnessAdj is zero"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_8
    :try_start_2
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallerHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " doesn\'t have activity hotness!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method setSkipPackage(Ljava/lang/String;Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    iput-boolean p2, v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->skipPackage:Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;-><init>(Lcom/android/server/am/DynamicHiddenApp;I)V

    iput-boolean p2, v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->skipPackage:Z

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSkipPackageForLauncher()V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.category.HOME"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v5, 0x80

    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getLauncherPackage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/DynamicHiddenApp;->setSkipPackage(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateDHAParameter()V
    .locals 14

    :try_start_0
    const-string/jumbo v9, ""

    const-string/jumbo v6, ""

    const-string/jumbo v10, ""

    const-string/jumbo v0, "[=:]"

    const-string/jumbo v5, "/data/log/dha_parameter.dat"

    const/4 v1, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v7, 0x0

    sget-object v11, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Start updateDHAParameter"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_25

    sget-object v11, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "updateDHAParameter exist"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_22

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "[=:]"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v11, "[=:]"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "name = [ "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " ], value = [ "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " ]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "MAX_CACHED_APPS"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v11, "MIN_CACHED_APPS"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_2
    const-string/jumbo v11, "MAX_EMPTY_APPS"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v11, "MIN_EMPTY_APPS"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v11, "INIT_EMPTY_APPS"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcom/android/server/am/DynamicHiddenApp;->INIT_EMPTY_APPS:I

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v11, "mSzDHAStep"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v11, "mSzDHAThreshold"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-long v12, v11

    iput-wide v12, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v11, "ro.config.dha_th_rate"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    iput v11, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v11, "DHA_INCREASE_THRESHOLD"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-long v12, v11

    sput-wide v12, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v11, "ro.config.dha_lmk_scale"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    sput v11, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v11, "ro.config.dha_lmk_array"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    sput-object v10, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const/4 v7, 0x1

    sget-object v11, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "dha_lmk_array mLMKArray ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v11, "ro.config.dha_ils_enable"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->mILS_Enable:Z

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v11, "ro.config.dha_ils_rate"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    sput v11, Lcom/android/server/am/DynamicHiddenApp;->mSzILSRate:F

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v11, "ro.config.dha_ils_sdha_rate"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    sput v11, Lcom/android/server/am/DynamicHiddenApp;->mSzILS_SDHARate:F

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v11, "ro.config.dha_pwhitelist_enable"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v11, "ro.config.dha_knox_plist_enable"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnableKnox:I

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v11, "ro.config.dha_pwhl_key"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key:I

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v11, "ro.config.dha_pwhl_key_knox"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key_knox:I

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v11, "ro.config.64bit_lmk_enable"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->mb64bitLMKEnable:Z

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v11, "ro.config.ldha_es_enable"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v11, "ro.config.ldha_spc_enable"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->LDHA_SPC_ENABLE:Z

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v11, "ro.config.ams_exception_enable"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->mAMSExceptionEnable:Z

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v11, "ro.config.ams_knoxexpt_enable"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->mKnoxAMSExceptionEnable:Z

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v11, "ro.config.fha_enable"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v11, "ro.config.dha_adj_cached_factor"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->DHA_ADJ_CACHED_FACTOR:Z

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v11, "ro.config.fall_prevent_enable"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v11, "ro.config.dha_es_lru_en"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->ES_LRU_BASE_ENABLE:Z

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v11, "ro.config.dha_package_enable"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->DHA_PACKAGE_ENABLE:Z

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v11, "ro.config.hotness_LRU_Min"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LRU_PROTECT_MIN:I

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v11, "ro.config.ro.config.hotness_LFU_CaRate"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    sput v11, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINCachedRate:F

    goto/16 :goto_0

    :cond_1e
    const-string/jumbo v11, "ro.config.hotness_LFU_EmRate"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    sput v11, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_LFU_MINEmptyRate:F

    goto/16 :goto_0

    :cond_1f
    const-string/jumbo v11, "ro.config.dha_hotness_enable"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    goto/16 :goto_0

    :cond_20
    const-string/jumbo v11, "ro.config.sluggish_aging_time"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/server/am/DynamicHiddenApp;->SLUGGISH_AGING_TIME:J

    goto/16 :goto_0

    :cond_21
    sget-object v11, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "not matched parameter"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_22
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    if-eqz v8, :cond_23

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/am/DynamicHiddenApp;->makeLists(Z)V

    :cond_23
    if-eqz v7, :cond_24

    iget-object v11, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessList;->updateLMKThreshold()V

    iget-object v11, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string/jumbo v12, "ro.config.dha_th_level"

    const/16 v13, 0x38a

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    :cond_24
    sget-object v11, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "complete parameter"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_25
    sget-object v11, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "file does not exist"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method public updateHiddenAppNum(II)I
    .locals 26

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v13}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v13}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v13}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v16

    add-long v14, v18, v16

    sget-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    :cond_0
    :goto_0
    sget-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    if-eqz v13, :cond_1

    sget-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->mILS_2nd_Enable:Z

    if-eqz v13, :cond_1

    sget v13, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_1
    sget-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v13, :cond_2

    const/4 v9, 0x0

    sget-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    :goto_1
    sget-object v13, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "AvailableMem = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-wide/16 v22, 0x400

    div-long v22, v14, v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "kB (Free: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-wide/16 v22, 0x400

    div-long v22, v18, v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "kB, Cached: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-wide/16 v22, 0x400

    div-long v22, v16, v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "kB) "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "Threshold = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "kB [MaxHidden: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", Current Hidden"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", Current Empty"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "], Frag.Mem = 0KB"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", KPU Total = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "kB"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", ILS Flag: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-boolean v21, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-wide/16 v20, 0x0

    cmp-long v13, v18, v20

    if-gtz v13, :cond_6

    return v12

    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    sget v20, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    move/from16 v0, v20

    if-ge v13, v0, :cond_4

    sget v13, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    sget v20, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    move/from16 v0, v20

    if-le v13, v0, :cond_0

    sget v13, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v20, v0

    add-int v9, v13, v20

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    sget-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    sget v20, Lcom/android/server/am/DynamicHiddenApp;->mSzILSRate:F

    mul-float v8, v13, v20

    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-float v13, v0

    mul-float v7, v13, v8

    const/4 v5, 0x0

    const/4 v4, 0x0

    sget-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v13, :cond_a

    add-int v5, p1, p2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->mMax_ES_Total:I

    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    move-wide/from16 v20, v0

    add-long v20, v20, v14

    move-wide/from16 v0, v20

    long-to-float v13, v0

    cmpg-float v13, v13, v7

    if-gez v13, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sget-boolean v13, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v13}, Lcom/android/server/am/MARsPolicyManager;->getEmergencyKillEnabled()Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mDidStepUp:Z

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    sget v20, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    move/from16 v0, v20

    if-gt v13, v0, :cond_8

    sget v13, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    move/from16 v0, p1

    if-gt v0, v13, :cond_8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mLastTimeTriggerAREs:J

    move-wide/from16 v20, v0

    sub-long v20, v10, v20

    const-wide/32 v22, 0xdbba0

    cmp-long v13, v20, v22

    if-ltz v13, :cond_8

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mDidStepUp:Z

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/am/DynamicHiddenApp;->mLastTimeTriggerAREs:J

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const/high16 v13, 0x40000000    # 2.0f

    invoke-virtual {v6, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v13, "com.android.server.am.ACTION_MEMORY_NOT_ENOUGH_ARES"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v20, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    invoke-virtual {v13, v6, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_8
    sget-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/DynamicHiddenApp;->decrement_ES_AppCount(II)I

    move-result v12

    :goto_3
    sget-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v13, :cond_9

    sget-object v13, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Decrease Hidden App Number from "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    return v12

    :cond_a
    move/from16 v5, p2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/DynamicHiddenApp;->decrementEmptyAppCount(II)I

    move-result v12

    goto :goto_3

    :cond_c
    long-to-float v13, v14

    sget-wide v20, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    add-float v20, v20, v7

    cmpl-float v13, v13, v20

    if-lez v13, :cond_9

    if-lt v5, v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mDidStepUp:Z

    if-nez v13, :cond_d

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mDidStepUp:Z

    :cond_d
    sget-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v13, :cond_e

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/DynamicHiddenApp;->increment_ES_AppCount(I)I

    move-result v12

    :goto_5
    sget-boolean v13, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v13, :cond_9

    sget-object v13, Lcom/android/server/am/DynamicHiddenApp;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Increase Hidden App Number from "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/DynamicHiddenApp;->incrementEmptyAppCount()I

    move-result v12

    goto :goto_5
.end method

.method final updateHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/DynamicHiddenApp;->updateHotnessAdj(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method final updateHotnessAdj(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->curTopApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->curTopApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sget-object v9, Lcom/android/server/am/DynamicHiddenApp;->curTopApp:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    const-string/jumbo v8, "TOP app is same!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForActivityHotness:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    return-void

    :cond_4
    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sput-object v7, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForActivityHotness:Ljava/lang/String;

    const-string/jumbo v7, "unknown"

    sput-object v7, Lcom/android/server/am/DynamicHiddenApp;->strPrevAppForEmptyHotness:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    iget-boolean v7, v3, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->skipPackage:Z

    if-eqz v7, :cond_6

    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    const-string/jumbo v8, "we don\'t need to update hotness"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit v9

    return-void

    :cond_6
    if-ne p2, v11, :cond_d

    :try_start_1
    iget v7, p1, Lcom/android/server/am/ProcessRecord;->callerHotnessAdj:I

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v10

    if-le v7, v10, :cond_7

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->callerHotnessAdj:I

    invoke-virtual {v3, v7, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setHotness(II)V

    :cond_7
    :goto_0
    iget v7, p0, Lcom/android/server/am/DynamicHiddenApp;->hotnessCached:I

    if-lez v7, :cond_9

    invoke-virtual {v3, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v10

    iget-object v7, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-le v10, v7, :cond_9

    iget-object v7, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    :goto_1
    if-ltz v4, :cond_8

    invoke-virtual {v3, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v10

    iget-object v7, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-ge v10, v7, :cond_e

    :cond_8
    iget-object v7, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v7, v10, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v7, 0x1

    invoke-virtual {v3, v7, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    iget-object v10, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v10}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v10}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setIsHotness(ZI)V

    iget-object v10, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessLFU:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v7, :cond_9

    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    const-string/jumbo v10, "hotness LFU changed"

    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v7, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v7, :cond_a

    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hotness updated ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_2
    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_ENABLE:Z

    if-eqz v7, :cond_10

    invoke-virtual {v3, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v7

    iget v10, p0, Lcom/android/server/am/DynamicHiddenApp;->DHA_HOTNESS_MAX_VALUE:I

    if-le v7, v10, :cond_10

    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v7, :cond_b

    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    const-string/jumbo v10, "hotness value reached MAX, the hotness value of all app will be tuned half"

    invoke-static {v7, v10}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v7, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    invoke-virtual {v1, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setHalf(I)V

    iget-object v7, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v7, :cond_c

    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "HotnessMAX! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v7

    monitor-exit v9

    throw v7

    :cond_d
    :try_start_2
    invoke-virtual {v3, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->increaseHotness(I)V

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_1

    :cond_f
    new-instance v3, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    invoke-direct {v3, p0, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;-><init>(Lcom/android/server/am/DynamicHiddenApp;I)V

    iget-object v7, p0, Lcom/android/server/am/DynamicHiddenApp;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v7, :cond_a

    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hotness newly updated ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :cond_10
    monitor-exit v9

    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v7, :cond_11

    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateHotnessAdj ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", hotness="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3, p2}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v7, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->resumedAppForDHALocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    :goto_4
    sput-object v7, Lcom/android/server/am/DynamicHiddenApp;->curTopApp:Lcom/android/server/am/ProcessRecord;

    return-void

    :cond_12
    move-object v7, v8

    goto :goto_4
.end method

.method final updateLastKillTime(Lcom/android/server/am/ProcessRecord;J)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mLastKillTimeMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mLastKillTimeMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->TAG_HOTNESS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLastKillTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
