.class public Lcom/samsung/android/os/SemPerfManager;
.super Ljava/lang/Object;
.source "SemPerfManager.java"


# static fields
.field public static final AMS_RESUME_BOOST_TYPE_ACQUIRE:I = 0x1

.field public static final AMS_RESUME_BOOST_TYPE_RELEASE:I = 0x2

.field public static final AMS_RESUME_BOOST_TYPE_TAIL:I = 0x3

.field static final BASE_MODEL:Ljava/lang/String; = "hrl"

.field static BOARD_PLATFORM:Ljava/lang/String; = null

.field public static final COMMAND_ACTIVITY_EXECUTION:Ljava/lang/String; = "EXEC_ACTIVITY"

.field public static final COMMAND_BROWSER_DASH_MODE:Ljava/lang/String; = "SBROWSER_DASH_MODE"

.field public static final COMMAND_BROWSER_PAGE_LOADING:Ljava/lang/String; = "SBROWSER_PAGE_LOADING"

.field public static final COMMAND_BUS_DCVS_GOVERNOR_CHANGE:Ljava/lang/String; = "BUS_DCVS_GOVERNOR"

.field public static final COMMAND_FINGER_HOVER_OFF:Ljava/lang/String; = "FINGER_HOVER_OFF"

.field public static final COMMAND_FINGER_HOVER_ON:Ljava/lang/String; = "FINGER_HOVER_ON"

.field public static final COMMAND_GENERAL_SHELL:Ljava/lang/String; = "GENERAL_SHELL"

.field public static final COMMAND_GESTURE_DETECTED:Ljava/lang/String; = "GESTURE_DETECTED"

.field public static final COMMAND_HOVERING_EVENT:Ljava/lang/String; = "HOVERING_EVENT"

.field public static final COMMAND_REQUEST_CACHE_DROP:Ljava/lang/String; = "REQ_DROP_CACHE"

.field public static final COMMAND_SAMSUNG_SIP:Ljava/lang/String; = "KNOWN_APP_SIP"

.field public static final COMMAND_SCREEN_ROTATION:Ljava/lang/String; = "TYPE_WINDOW_ORIENTATION"

.field public static final COMMAND_SCROLL:Ljava/lang/String; = "TYPE_SCROLL"

.field public static final COMMAND_SMOOTH_SCROLL:Ljava/lang/String; = "SMOOTH_SCROLL"

.field public static final COMMAND_USB_TETHERING:Ljava/lang/String; = "USBTETHERING"

.field static final DEVICE_TYPE:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "SemPerfManager"

.field static final ROTATION_BOOSTING_TIMEOUT:I = 0x1f4

.field static final ROTATION_GPU_BOOSTING_TIMEOUT:I = 0x7d0

.field static final SIOP_MODEL:Ljava/lang/String; = "ssrm_hero2l_xx"

.field private static volatile mAMSCState:Lcom/samsung/android/os/SemDvfsManager;

.field private static volatile mAMSCStateTail:Lcom/samsung/android/os/SemDvfsManager;

.field static mRotationCPUCoreNumBooster:Lcom/samsung/android/os/SemDvfsManager;

.field static mRotationGPUBooster:Lcom/samsung/android/os/SemDvfsManager;

.field static volatile sCfmsService:Landroid/os/ICustomFrequencyManager;

.field static sIsDebugLevelHigh:Z


# instance fields
.field mSupportedCPUCoreNum:[I

.field mSupportedCPUCoreNumForSSRM:[I

.field mSupportedCPUFrequency:[I

.field mSupportedCPUFrequencyForSSRM:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 18
    const-string/jumbo v0, "0x4948"

    .line 19
    const-string/jumbo v1, "ro.debug_level"

    const-string/jumbo v2, "0x4f4c"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/os/SemPerfManager;->sIsDebugLevelHigh:Z

    .line 104
    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemPerfManager;->BOARD_PLATFORM:Ljava/lang/String;

    .line 105
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemPerfManager;->DEVICE_TYPE:Ljava/lang/String;

    .line 117
    sput-object v3, Lcom/samsung/android/os/SemPerfManager;->mRotationCPUCoreNumBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 118
    sput-object v3, Lcom/samsung/android/os/SemPerfManager;->mRotationGPUBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 178
    sput-object v3, Lcom/samsung/android/os/SemPerfManager;->mAMSCState:Lcom/samsung/android/os/SemDvfsManager;

    .line 179
    sput-object v3, Lcom/samsung/android/os/SemPerfManager;->mAMSCStateTail:Lcom/samsung/android/os/SemDvfsManager;

    .line 217
    sput-object v3, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 16
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object v0, p0, Lcom/samsung/android/os/SemPerfManager;->mSupportedCPUCoreNum:[I

    .line 107
    iput-object v0, p0, Lcom/samsung/android/os/SemPerfManager;->mSupportedCPUCoreNumForSSRM:[I

    .line 108
    iput-object v0, p0, Lcom/samsung/android/os/SemPerfManager;->mSupportedCPUFrequency:[I

    .line 109
    iput-object v0, p0, Lcom/samsung/android/os/SemPerfManager;->mSupportedCPUFrequencyForSSRM:[I

    .line 113
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 256
    sget-boolean v0, Lcom/samsung/android/os/SemPerfManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_0

    .line 257
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    return-void
.end method

.method public static onActivityResumeEvent(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 184
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->mAMSCState:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_0

    .line 186
    const/16 v1, 0x17

    .line 185
    invoke-static {p0, p1, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/os/SemPerfManager;->mAMSCState:Lcom/samsung/android/os/SemDvfsManager;

    .line 188
    :cond_0
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->mAMSCStateTail:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_1

    .line 190
    const-string/jumbo v1, "AMS_RESUME_TAIL_CSTATE"

    const/16 v2, 0x15

    .line 189
    invoke-static {p0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/os/SemPerfManager;->mAMSCStateTail:Lcom/samsung/android/os/SemDvfsManager;

    .line 193
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 210
    :try_start_0
    const-string/jumbo v1, "SemPerfManager"

    const-string/jumbo v2, "onActivityResumeEvent:: type is not defined"

    invoke-static {v1, v2}, Lcom/samsung/android/os/SemPerfManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_2
    :goto_0
    return-void

    .line 195
    :pswitch_0
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->mAMSCState:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_2

    .line 196
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->mAMSCState:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->mAMSCState:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_2

    .line 201
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->mAMSCState:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    goto :goto_0

    .line 205
    :pswitch_2
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->mAMSCStateTail:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_2

    .line 206
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->mAMSCStateTail:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static onScrollEvent(Z)V
    .locals 2
    .param p0, "isScroll"    # Z

    .prologue
    .line 222
    const-string/jumbo v1, "TYPE_SCROLL"

    if-eqz p0, :cond_0

    const-string/jumbo v0, "TRUE"

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void

    .line 222
    :cond_0
    const-string/jumbo v0, "FALSE"

    goto :goto_0
.end method

.method public static onSmoothScrollEvent(Z)V
    .locals 2
    .param p0, "isScroll"    # Z

    .prologue
    .line 228
    const-string/jumbo v1, "SMOOTH_SCROLL"

    if-eqz p0, :cond_0

    const-string/jumbo v0, "TRUE"

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void

    .line 228
    :cond_0
    const-string/jumbo v0, "FALSE"

    goto :goto_0
.end method

.method public static onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 123
    sget-object v2, Lcom/samsung/android/os/SemPerfManager;->mRotationCPUCoreNumBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_0

    .line 125
    const/16 v2, 0xe

    .line 124
    invoke-static {p0, p1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/os/SemPerfManager;->mRotationCPUCoreNumBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 126
    sget-object v2, Lcom/samsung/android/os/SemPerfManager;->mRotationCPUCoreNumBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v0

    .line 127
    .local v0, "coreTable":[I
    if-eqz v0, :cond_7

    .line 128
    sget-object v2, Lcom/samsung/android/os/SemPerfManager;->mRotationCPUCoreNumBooster:Lcom/samsung/android/os/SemDvfsManager;

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 133
    .end local v0    # "coreTable":[I
    :cond_0
    :goto_0
    sget-object v2, Lcom/samsung/android/os/SemPerfManager;->mRotationCPUCoreNumBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v2, :cond_1

    .line 134
    sget-object v2, Lcom/samsung/android/os/SemPerfManager;->mRotationCPUCoreNumBooster:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 136
    :cond_1
    const-string/jumbo v2, "exynos4"

    sget-object v3, Lcom/samsung/android/os/SemPerfManager;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "exynos5"

    sget-object v3, Lcom/samsung/android/os/SemPerfManager;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 137
    const-string/jumbo v2, "hf"

    const-string/jumbo v3, "hrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "tablet"

    sget-object v3, Lcom/samsung/android/os/SemPerfManager;->DEVICE_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 136
    if-nez v2, :cond_3

    .line 138
    :cond_2
    const-string/jumbo v2, "msm8226"

    sget-object v3, Lcom/samsung/android/os/SemPerfManager;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 136
    if-eqz v2, :cond_6

    .line 139
    :cond_3
    sget-object v2, Lcom/samsung/android/os/SemPerfManager;->mRotationGPUBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_5

    .line 141
    const/16 v2, 0x10

    .line 140
    invoke-static {p0, p1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/os/SemPerfManager;->mRotationGPUBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 142
    sget-object v2, Lcom/samsung/android/os/SemPerfManager;->mRotationGPUBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v1

    .line 143
    .local v1, "gpuTable":[I
    if-eqz v1, :cond_a

    .line 144
    const-string/jumbo v2, "ssrm_hero2l_xx"

    const-string/jumbo v3, "zl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "exynos4"

    sget-object v3, Lcom/samsung/android/os/SemPerfManager;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 145
    :cond_4
    sget-object v2, Lcom/samsung/android/os/SemPerfManager;->mRotationGPUBooster:Lcom/samsung/android/os/SemDvfsManager;

    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 155
    .end local v1    # "gpuTable":[I
    :cond_5
    :goto_1
    sget-object v2, Lcom/samsung/android/os/SemPerfManager;->mRotationGPUBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v2, :cond_6

    .line 156
    sget-object v2, Lcom/samsung/android/os/SemPerfManager;->mRotationGPUBooster:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 122
    :cond_6
    return-void

    .line 130
    .restart local v0    # "coreTable":[I
    :cond_7
    const-string/jumbo v2, "SemPerfManager"

    const-string/jumbo v3, "onWindowRotationEvent:: coreTable is null"

    invoke-static {v2, v3}, Lcom/samsung/android/os/SemPerfManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    .end local v0    # "coreTable":[I
    .restart local v1    # "gpuTable":[I
    :cond_8
    const-string/jumbo v2, "msm8226"

    sget-object v3, Lcom/samsung/android/os/SemPerfManager;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 147
    sget-object v2, Lcom/samsung/android/os/SemPerfManager;->mRotationGPUBooster:Lcom/samsung/android/os/SemDvfsManager;

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    goto :goto_1

    .line 149
    :cond_9
    sget-object v2, Lcom/samsung/android/os/SemPerfManager;->mRotationGPUBooster:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    goto :goto_1

    .line 152
    :cond_a
    const-string/jumbo v2, "SemPerfManager"

    const-string/jumbo v3, "onWindowRotationEvent:: gpuTable is null"

    invoke-static {v2, v3}, Lcom/samsung/android/os/SemPerfManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 239
    :try_start_0
    sget-object v2, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 240
    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 241
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 242
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 245
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    sget-object v2, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1

    .line 246
    sget-object v2, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2, p0, p1}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
