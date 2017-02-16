.class public Landroid/hardware/location/ContextHubService;
.super Landroid/hardware/location/IContextHubService$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ContextHubService$1;
    }
.end annotation


# static fields
.field public static final ANY_HUB:I = -0x1

.field private static final APP_ID_ACTIVITY_RECOGNITION:J = 0x476f6f676c001000L

.field public static final CONTEXTHUB_SERVICE:Ljava/lang/String; = "contexthub_service"

.field private static final ENFORCE_HW_PERMISSION_MESSAGE:Ljava/lang/String; = "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ContextHub Hardware"

.field private static final HARDWARE_PERMISSION:Ljava/lang/String; = "android.permission.LOCATION_HARDWARE"

.field private static final MSG_FIELD_APP_INSTANCE:I = 0x3

.field private static final MSG_FIELD_HUB_HANDLE:I = 0x2

.field private static final MSG_FIELD_TYPE:I = 0x0

.field private static final MSG_FIELD_VERSION:I = 0x1

.field private static final MSG_HEADER_SIZE:I = 0x4

.field public static final MSG_LOAD_NANO_APP:I = 0x3

.field public static final MSG_UNLOAD_NANO_APP:I = 0x4

.field private static final OS_APP_INSTANCE:I = -0x1

.field private static final PRE_LOADED_APP_MEM_REQ:I = 0x0

.field private static final PRE_LOADED_APP_NAME:Ljava/lang/String; = "Preloaded app, unknown"

.field private static final PRE_LOADED_APP_PUBLISHER:Ljava/lang/String; = "Preloaded app, unknown"

.field private static final PRE_LOADED_GENERIC_UNKNOWN:Ljava/lang/String; = "Preloaded app, unknown"

.field private static final TAG:Ljava/lang/String; = "ContextHubService"


# instance fields
.field private final mCallbacksList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/hardware/location/IContextHubCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

.field private final mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/NanoAppInstanceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method static synthetic -get0(Landroid/hardware/location/ContextHubService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/location/ContextHubService;Landroid/hardware/location/NanoAppInstanceInfo;Z)V
    .locals 0
    .param p1, "app"    # Landroid/hardware/location/NanoAppInstanceInfo;
    .param p2, "vrModeEnabled"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/location/ContextHubService;->sendVrStateChangeMessageToApp(Landroid/hardware/location/NanoAppInstanceInfo;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/hardware/location/IContextHubService$Stub;-><init>()V

    .line 67
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 66
    iput-object v3, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 69
    iput-object v3, p0, Landroid/hardware/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 75
    new-instance v3, Landroid/hardware/location/ContextHubService$1;

    invoke-direct {v3, p0}, Landroid/hardware/location/ContextHubService$1;-><init>(Landroid/hardware/location/ContextHubService;)V

    iput-object v3, p0, Landroid/hardware/location/ContextHubService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 88
    iput-object p1, p0, Landroid/hardware/location/ContextHubService;->mContext:Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->nativeInitialize()[Landroid/hardware/location/ContextHubInfo;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    .line 91
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 92
    const-string/jumbo v3, "ContextHubService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ContextHub["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 93
    const-string/jumbo v5, ", name:  "

    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 93
    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/hardware/location/ContextHubInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "android.software.vr.mode"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    const-string/jumbo v3, "vrmanager"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v2

    .line 99
    .local v2, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v2, :cond_1

    .line 101
    :try_start_0
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v2, v3}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v2    # "vrManager":Landroid/service/vr/IVrManager;
    :cond_1
    :goto_1
    return-void

    .line 102
    .restart local v2    # "vrManager":Landroid/service/vr/IVrManager;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "ContextHubService"

    const-string/jumbo v4, "VR state listener registration failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private addAppInstance(IIJI)I
    .locals 5
    .param p1, "hubHandle"    # I
    .param p2, "appInstanceHandle"    # I
    .param p3, "appId"    # J
    .param p5, "appVersion"    # I

    .prologue
    const/4 v4, 0x0

    .line 292
    new-instance v0, Landroid/hardware/location/NanoAppInstanceInfo;

    invoke-direct {v0}, Landroid/hardware/location/NanoAppInstanceInfo;-><init>()V

    .line 294
    .local v0, "appInfo":Landroid/hardware/location/NanoAppInstanceInfo;
    invoke-virtual {v0, p3, p4}, Landroid/hardware/location/NanoAppInstanceInfo;->setAppId(J)V

    .line 295
    invoke-virtual {v0, p5}, Landroid/hardware/location/NanoAppInstanceInfo;->setAppVersion(I)V

    .line 296
    const-string/jumbo v1, "Preloaded app, unknown"

    invoke-virtual {v0, v1}, Landroid/hardware/location/NanoAppInstanceInfo;->setName(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0, p1}, Landroid/hardware/location/NanoAppInstanceInfo;->setContexthubId(I)V

    .line 298
    invoke-virtual {v0, p2}, Landroid/hardware/location/NanoAppInstanceInfo;->setHandle(I)V

    .line 299
    const-string/jumbo v1, "Preloaded app, unknown"

    invoke-virtual {v0, v1}, Landroid/hardware/location/NanoAppInstanceInfo;->setPublisher(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, v4}, Landroid/hardware/location/NanoAppInstanceInfo;->setNeededExecMemBytes(I)V

    .line 301
    invoke-virtual {v0, v4}, Landroid/hardware/location/NanoAppInstanceInfo;->setNeededReadMemBytes(I)V

    .line 302
    invoke-virtual {v0, v4}, Landroid/hardware/location/NanoAppInstanceInfo;->setNeededWriteMemBytes(I)V

    .line 304
    iget-object v1, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string/jumbo v1, "ContextHubService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Added app instance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 306
    const-string/jumbo v3, " version "

    .line 305
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return v4
.end method

.method private checkPermissions()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    const-string/jumbo v2, "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ContextHub Hardware"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method private native nativeInitialize()[Landroid/hardware/location/ContextHubInfo;
.end method

.method private native nativeSendMessage([I[B)I
.end method

.method private onMessageReceipt([I[B)I
    .locals 9
    .param p1, "header"    # [I
    .param p2, "data"    # [B

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 264
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 265
    :cond_0
    const/4 v5, -0x1

    return v5

    .line 264
    :cond_1
    array-length v5, p1

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    .line 267
    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 268
    .local v1, "callbacksCount":I
    if-ge v1, v7, :cond_2

    .line 269
    const-string/jumbo v5, "ContextHubService"

    const-string/jumbo v6, "No message callbacks registered."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return v8

    .line 273
    :cond_2
    new-instance v4, Landroid/hardware/location/ContextHubMessage;

    aget v5, p1, v8

    aget v6, p1, v7

    invoke-direct {v4, v5, v6, p2}, Landroid/hardware/location/ContextHubMessage;-><init>(II[B)V

    .line 274
    .local v4, "message":Landroid/hardware/location/ContextHubMessage;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 275
    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/IContextHubCallback;

    .line 278
    .local v0, "callback":Landroid/hardware/location/IContextHubCallback;
    const/4 v5, 0x2

    :try_start_0
    aget v5, p1, v5

    .line 279
    const/4 v6, 0x3

    aget v6, p1, v6

    .line 277
    invoke-interface {v0, v5, v6, v4}, Landroid/hardware/location/IContextHubCallback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 281
    :catch_0
    move-exception v2

    .line 282
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "ContextHubService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") calling remote callback ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 286
    .end local v0    # "callback":Landroid/hardware/location/IContextHubCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 287
    return v8
.end method

.method private sendVrStateChangeMessageToApp(Landroid/hardware/location/NanoAppInstanceInfo;Z)V
    .locals 7
    .param p1, "app"    # Landroid/hardware/location/NanoAppInstanceInfo;
    .param p2, "vrModeEnabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 312
    const/4 v5, 0x4

    new-array v1, v5, [I

    .line 313
    .local v1, "msgHeader":[I
    aput v4, v1, v4

    .line 314
    aput v4, v1, v3

    .line 315
    const/4 v5, -0x1

    const/4 v6, 0x2

    aput v5, v1, v6

    .line 316
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppInstanceInfo;->getHandle()I

    move-result v5

    const/4 v6, 0x3

    aput v5, v1, v6

    .line 318
    new-array v0, v3, [B

    .line 319
    .local v0, "data":[B
    if-eqz p2, :cond_1

    :goto_0
    int-to-byte v3, v3

    aput-byte v3, v0, v4

    .line 320
    invoke-direct {p0, v1, v0}, Landroid/hardware/location/ContextHubService;->nativeSendMessage([I[B)I

    move-result v2

    .line 321
    .local v2, "ret":I
    if-eqz v2, :cond_0

    .line 322
    const-string/jumbo v3, "ContextHubService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t send VR state change notification ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    return-void

    .end local v2    # "ret":I
    :cond_1
    move v3, v4

    .line 319
    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 235
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    const-string/jumbo v3, "Permission Denial: can\'t dump contexthub_service"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    return-void

    .line 241
    :cond_0
    const-string/jumbo v3, "Dumping ContextHub Service"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    const-string/jumbo v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    const-string/jumbo v3, "=================== CONTEXT HUBS ===================="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/hardware/location/ContextHubInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_1
    const-string/jumbo v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    const-string/jumbo v3, "=================== NANOAPPS ===================="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "nanoAppInstance$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 253
    .local v1, "nanoAppInstance":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/location/NanoAppInstanceInfo;

    invoke-virtual {v3}, Landroid/hardware/location/NanoAppInstanceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 234
    .end local v1    # "nanoAppInstance":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method public findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .locals 7
    .param p1, "hubHandle"    # I
    .param p2, "filter"    # Landroid/hardware/location/NanoAppFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v0, "foundInstances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "nanoAppInstance$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 204
    .local v3, "nanoAppInstance":Ljava/lang/Integer;
    iget-object v6, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/NanoAppInstanceInfo;

    .line 206
    .local v2, "info":Landroid/hardware/location/NanoAppInstanceInfo;
    invoke-virtual {p2, v2}, Landroid/hardware/location/NanoAppFilter;->testMatch(Landroid/hardware/location/NanoAppInstanceInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 207
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    .end local v2    # "info":Landroid/hardware/location/NanoAppInstanceInfo;
    .end local v3    # "nanoAppInstance":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [I

    .line 212
    .local v5, "retArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 213
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v1

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    :cond_2
    return-object v5
.end method

.method public getContextHubHandles()[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    .line 119
    iget-object v2, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    array-length v2, v2

    new-array v1, v2, [I

    .line 121
    .local v1, "returnArray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 122
    aput v0, v1, v0

    .line 123
    const-string/jumbo v2, "ContextHubService"

    const-string/jumbo v3, "Hub %s is mapped to %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 124
    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/hardware/location/ContextHubInfo;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aget v5, v1, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 123
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    return-object v1
.end method

.method public getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .locals 1
    .param p1, "contextHubHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    .line 133
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 134
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_1
    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .locals 2
    .param p1, "nanoAppInstanceHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    .line 191
    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/NanoAppInstanceInfo;

    return-object v0

    .line 194
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .locals 5
    .param p1, "contextHubHandle"    # I
    .param p2, "app"    # Landroid/hardware/location/NanoApp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    .line 144
    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 145
    :cond_0
    const-string/jumbo v1, "ContextHubService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid contextHubhandle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v4

    .line 149
    :cond_1
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 150
    .local v0, "msgHeader":[I
    const/4 v1, 0x2

    aput p1, v0, v1

    .line 151
    aput v4, v0, v3

    .line 152
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 153
    aput v3, v0, v2

    .line 155
    invoke-virtual {p2}, Landroid/hardware/location/NanoApp;->getAppBinary()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/location/ContextHubService;->nativeSendMessage([I[B)I

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    return v4

    .line 159
    :cond_2
    return v2
.end method

.method public registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    .locals 1
    .param p1, "callback"    # Landroid/hardware/location/IContextHubCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    .line 112
    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .locals 3
    .param p1, "hubHandle"    # I
    .param p2, "nanoAppHandle"    # I
    .param p3, "msg"    # Landroid/hardware/location/ContextHubMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    .line 224
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 225
    .local v0, "msgHeader":[I
    const/4 v1, 0x2

    aput p1, v0, v1

    .line 226
    const/4 v1, 0x3

    aput p2, v0, v1

    .line 227
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getVersion()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 228
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 230
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/location/ContextHubService;->nativeSendMessage([I[B)I

    move-result v1

    return v1
.end method

.method public unloadNanoApp(I)I
    .locals 8
    .param p1, "nanoAppInstanceHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 164
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    .line 165
    iget-object v2, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/NanoAppInstanceInfo;

    .line 166
    .local v0, "info":Landroid/hardware/location/NanoAppInstanceInfo;
    if-nez v0, :cond_0

    .line 167
    return v4

    .line 171
    :cond_0
    new-array v1, v6, [I

    .line 172
    .local v1, "msgHeader":[I
    const/4 v2, 0x2

    aput v4, v1, v2

    .line 173
    const/4 v2, 0x3

    aput v4, v1, v2

    .line 174
    const/4 v2, 0x1

    aput v5, v1, v2

    .line 175
    aput v6, v1, v5

    .line 177
    invoke-direct {p0, v1, v7}, Landroid/hardware/location/ContextHubService;->nativeSendMessage([I[B)I

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    return v4

    .line 182
    :cond_1
    return v5
.end method
