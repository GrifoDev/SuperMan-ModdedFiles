.class public Lcom/android/server/SamsungCoreServicesCreator;
.super Ljava/lang/Object;
.source "SamsungCoreServicesCreator.java"

# interfaces
.implements Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;


# static fields
.field private static final synthetic -com-android-server-SamsungCoreServices$ServiceTagSwitchesValues:[I = null

.field private static final SAMSUNG_MULTISCREEN_MANAGER_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.android.server.am.MultiScreenManagerService"

.field private static final TAG:Ljava/lang/String; = "SamsungCoreServicesCreator"


# instance fields
.field private mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/SamsungCoreServices$ServiceTag;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom-android-server-SamsungCoreServices$ServiceTagSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/SamsungCoreServicesCreator;->-com-android-server-SamsungCoreServices$ServiceTagSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/SamsungCoreServicesCreator;->-com-android-server-SamsungCoreServices$ServiceTagSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/SamsungCoreServices$ServiceTag;->values()[Lcom/android/server/SamsungCoreServices$ServiceTag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_AOD_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-virtual {v1}, Lcom/android/server/SamsungCoreServices$ServiceTag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_11

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_DSS_CONTROLLER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-virtual {v1}, Lcom/android/server/SamsungCoreServices$ServiceTag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_10

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_EDGE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-virtual {v1}, Lcom/android/server/SamsungCoreServices$ServiceTag;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_f

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_HORIZONTAL_MODE_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-virtual {v1}, Lcom/android/server/SamsungCoreServices$ServiceTag;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_e

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTISCREEN_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-virtual {v1}, Lcom/android/server/SamsungCoreServices$ServiceTag;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_d

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTITAPKEY_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-virtual {v1}, Lcom/android/server/SamsungCoreServices$ServiceTag;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_c

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTIWINDOW_FOCUSED_FRAME_CONTROLLER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-virtual {v1}, Lcom/android/server/SamsungCoreServices$ServiceTag;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_b

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTIWINDOW_MANAGER_INTERNAL:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-virtual {v1}, Lcom/android/server/SamsungCoreServices$ServiceTag;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_a

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTIWINDOW_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-virtual {v1}, Lcom/android/server/SamsungCoreServices$ServiceTag;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_9

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTIWINDOW_PHONE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-virtual {v1}, Lcom/android/server/SamsungCoreServices$ServiceTag;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_8

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTIWINDOW_STACK_COLOR_LAYER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-virtual {v1}, Lcom/android/server/SamsungCoreServices$ServiceTag;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_7

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_PACKAGE_CONFIGURATION_CONTROLLER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-virtual {v1}, Lcom/android/server/SamsungCoreServices$ServiceTag;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_6

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_REDUCE_SCREEN_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-virtual {v1}, Lcom/android/server/SamsungCoreServices$ServiceTag;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_5

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_PHONE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-virtual {v1}, Lcom/android/server/SamsungCoreServices$ServiceTag;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_4

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_STARTING_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-virtual {v1}, Lcom/android/server/SamsungCoreServices$ServiceTag;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_3

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_WINDOW_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-virtual {v1}, Lcom/android/server/SamsungCoreServices$ServiceTag;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_WINDOW_STATE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-virtual {v1}, Lcom/android/server/SamsungCoreServices$ServiceTag;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_1

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_TSP_STATE_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-virtual {v1}, Lcom/android/server/SamsungCoreServices$ServiceTag;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_0

    :goto_11
    sput-object v0, Lcom/android/server/SamsungCoreServicesCreator;->-com-android-server-SamsungCoreServices$ServiceTagSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_11

    :catch_1
    move-exception v1

    goto :goto_10

    :catch_2
    move-exception v1

    goto :goto_f

    :catch_3
    move-exception v1

    goto :goto_e

    :catch_4
    move-exception v1

    goto :goto_d

    :catch_5
    move-exception v1

    goto :goto_c

    :catch_6
    move-exception v1

    goto :goto_b

    :catch_7
    move-exception v1

    goto :goto_a

    :catch_8
    move-exception v1

    goto :goto_9

    :catch_9
    move-exception v1

    goto :goto_8

    :catch_a
    move-exception v1

    goto :goto_7

    :catch_b
    move-exception v1

    goto/16 :goto_6

    :catch_c
    move-exception v1

    goto/16 :goto_5

    :catch_d
    move-exception v1

    goto/16 :goto_4

    :catch_e
    move-exception v1

    goto/16 :goto_3

    :catch_f
    move-exception v1

    goto/16 :goto_2

    :catch_10
    move-exception v1

    goto/16 :goto_1

    :catch_11
    move-exception v1

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SamsungCoreServicesCreator;->mServices:Ljava/util/HashMap;

    return-void
.end method

.method private createService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SamsungCoreServicesCreator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not created this class : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public createActivityManagerServiceBridge(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/IActivityManagerServiceBridge;
    .locals 1

    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService;

    invoke-direct {v0, p1, p2}, Lcom/android/server/am/SamsungActivityManagerService;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    return-object v0
.end method

.method public createAlarmManagerServiceBridge(Landroid/content/Context;Lcom/android/server/AlarmManagerService;)Lcom/android/server/IAlarmManagerServiceBridge;
    .locals 1

    new-instance v0, Lcom/android/server/SamsungAlarmManagerService;

    invoke-direct {v0, p1, p2}, Lcom/android/server/SamsungAlarmManagerService;-><init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;)V

    return-object v0
.end method

.method public createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;
    .locals 4

    iget-object v1, p0, Lcom/android/server/SamsungCoreServicesCreator;->mServices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "SamsungCoreServicesCreator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Already created this service : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/SamsungCoreServicesCreator;->-getcom-android-server-SamsungCoreServices$ServiceTagSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/SamsungCoreServices$ServiceTag;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/server/SamsungCoreServicesCreator;->mServices:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-direct {v0}, Lcom/android/server/wm/SamsungWindowManagerService;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/android/server/wm/SamsungWindowState;

    invoke-direct {v0}, Lcom/android/server/wm/SamsungWindowState;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/android/server/policy/MultitapKeyManager;

    invoke-direct {v0}, Lcom/android/server/policy/MultitapKeyManager;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/android/server/policy/ReduceScreenManager;

    invoke-direct {v0}, Lcom/android/server/policy/ReduceScreenManager;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/android/server/policy/EdgeWindowManager;

    invoke-direct {v0}, Lcom/android/server/policy/EdgeWindowManager;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/android/server/policy/AODWindowManager;

    invoke-direct {v0}, Lcom/android/server/policy/AODWindowManager;-><init>()V

    goto :goto_0

    :pswitch_7
    const-string/jumbo v1, "com.android.server.am.MultiScreenManagerService"

    invoke-direct {p0, v1}, Lcom/android/server/SamsungCoreServicesCreator;->createService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "MultiScreen"

    move-object v1, v0

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/android/server/wm/HorizontalModeController;

    invoke-direct {v0}, Lcom/android/server/wm/HorizontalModeController;-><init>()V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {v0}, Lcom/android/server/am/MultiWindowManagerService;-><init>()V

    const-string/jumbo v2, "multiwindow"

    move-object v1, v0

    check-cast v1, Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-direct {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;-><init>()V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lcom/android/server/wm/MultiWindowFocusedFrameController;

    invoke-direct {v0}, Lcom/android/server/wm/MultiWindowFocusedFrameController;-><init>()V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lcom/android/server/wm/MultiWindowStackColorLayer;

    invoke-direct {v0}, Lcom/android/server/wm/MultiWindowStackColorLayer;-><init>()V

    goto :goto_0

    :pswitch_d
    new-instance v0, Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-direct {v0}, Lcom/android/server/policy/MultiPhoneWindowManager;-><init>()V

    goto :goto_0

    :pswitch_e
    new-instance v0, Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-direct {v0}, Lcom/android/server/wm/SamsungStartingWindowManager;-><init>()V

    goto :goto_0

    :pswitch_f
    new-instance v0, Lcom/android/server/DssControllerImpl;

    invoke-direct {v0}, Lcom/android/server/DssControllerImpl;-><init>()V

    goto :goto_0

    :pswitch_10
    new-instance v0, Lcom/android/server/policy/TspStateManager;

    invoke-direct {v0}, Lcom/android/server/policy/TspStateManager;-><init>()V

    goto/16 :goto_0

    :pswitch_11
    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl;

    invoke-direct {v0}, Lcom/android/server/PackageConfigurationControllerImpl;-><init>()V

    goto/16 :goto_0

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Request wrong service : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_f
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_d
        :pswitch_c
        :pswitch_11
        :pswitch_4
        :pswitch_2
        :pswitch_e
        :pswitch_0
        :pswitch_1
        :pswitch_10
    .end packed-switch
.end method

.method public getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;
    .locals 4

    iget-object v1, p0, Lcom/android/server/SamsungCoreServicesCreator;->mServices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not created this service : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method public isAvailable(Lcom/android/server/SamsungCoreServices$ServiceTag;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/SamsungCoreServicesCreator;->mServices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
