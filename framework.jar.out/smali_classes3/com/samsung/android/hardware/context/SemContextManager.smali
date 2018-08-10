.class public Lcom/samsung/android/hardware/context/SemContextManager;
.super Ljava/lang/Object;
.source "SemContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemContextManager"


# instance fields
.field private mAvailableServiceMap:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClientInfo:Ljava/lang/String;

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;

.field private final mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/hardware/context/SemContextManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/hardware/context/SemContextManager;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/hardware/context/SemContextManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    const-string/jumbo v0, "scontext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/ISemContextService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mMainLooper:Landroid/os/Looper;

    return-void
.end method

.method private checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "SemContextManager"

    const-string/jumbo v1, "Listener is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    return v0
.end method

.method private getAvailableServiceMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    if-nez v3, :cond_0

    const-string/jumbo v3, "SemContextManager"

    const-string/jumbo v4, "SemContextService is null. Please check SENSORHUB feature."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v3}, Lcom/samsung/android/hardware/context/ISemContextService;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SemContextManager"

    const-string/jumbo v4, "RemoteException in getAvailableServiceMap: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-object v4

    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->getListener()Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v0

    :cond_3
    return-object v2
.end method


# virtual methods
.method public changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;II)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1

    :cond_1
    const/16 v1, 0x21

    if-ne p2, v1, :cond_0

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;

    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;-><init>(I)V

    goto :goto_0
.end method

.method public changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;IIDD)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>(IDD)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;IIIII)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    const/4 v1, 0x1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>(IIIII)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    return v4

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v2

    if-nez v2, :cond_2

    return v4

    :cond_2
    if-eq p2, v5, :cond_3

    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_5

    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "  .changeParameters : SemContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    const/16 v2, 0x21

    if-eq p2, v2, :cond_3

    const/16 v2, 0x23

    if-eq p2, v2, :cond_3

    const/16 v2, 0x27

    if-eq p2, v2, :cond_3

    const/16 v2, 0x2f

    if-eq p2, v2, :cond_3

    const/16 v2, 0x33

    if-eq p2, v2, :cond_3

    const/16 v2, 0x35

    if-eq p2, v2, :cond_3

    const/16 v2, 0x36

    if-eq p2, v2, :cond_3

    return v4

    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, v1, p2, p3}, Lcom/samsung/android/hardware/context/ISemContextService;->changeParameters(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "SemContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  .changeParameters : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "RemoteException in changeParameters: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFeatureLevel(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initializeSemContextService(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .locals 5

    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "  .initializeSemContextService : SemContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, v1, p2}, Lcom/samsung/android/hardware/context/ISemContextService;->initializeService(Landroid/os/IBinder;I)V

    const-string/jumbo v2, "SemContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  .initializeSemContextService : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "RemoteException in initializeSemContextService: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isAvailableService(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2f

    if-ne p1, v1, :cond_2

    const-string/jumbo v1, "BCM4773_SLOCATION_CORE"

    const-string/jumbo v2, "ro.gps.chip.vendor.slocation"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z
    .locals 2

    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getDefaultAttribute(I)Lcom/samsung/android/hardware/context/SemContextAttribute;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;II)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;

    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;-><init>(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1

    :cond_1
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;

    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;-><init>(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x10

    if-ne p2, v1, :cond_3

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;

    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;-><init>(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x21

    if-ne p2, v1, :cond_4

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;

    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;-><init>(I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x24

    if-ne p2, v1, :cond_0

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;

    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;-><init>(I)V

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIDD)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>(IDD)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;III)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xc

    if-ne p2, v1, :cond_0

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;

    invoke-direct {v0, p3, p4}, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;-><init>(II)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIII)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v4, 0x5dc

    const/4 v0, 0x0

    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    move v1, p3

    move v2, p4

    move v3, p5

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>(IIIII)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIIII)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1c

    if-ne p2, v1, :cond_0

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;

    invoke-direct {v0, p3, p4, p5, p6}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;-><init>(IIII)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIIIII)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-ne p2, v1, :cond_1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;-><init>(IIIII)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1

    :cond_1
    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>(IIIII)V

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILandroid/os/Looper;)Z
    .locals 2

    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getDefaultAttribute(I)Lcom/samsung/android/hardware/context/SemContextAttribute;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;Landroid/os/Looper;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x30

    if-ne p2, v2, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v2

    return v2

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_1
    return v4

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v2

    if-nez v2, :cond_3

    return v4

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-direct {v1, p0, p1, v3}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;-><init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;)V

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, v1, p2, p3}, Lcom/samsung/android/hardware/context/ISemContextService;->registerCallback(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)V

    const-string/jumbo v2, "SemContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  .registerListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "RemoteException in registerListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;Landroid/os/Looper;)Z
    .locals 5

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    return v3

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-direct {v1, p0, p1, p4}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;-><init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;)V

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, v1, p2, p3}, Lcom/samsung/android/hardware/context/ISemContextService;->registerCallback(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)V

    const-string/jumbo v2, "SemContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  .registerListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "RemoteException in registerListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I[I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1b

    if-ne p2, v1, :cond_0

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;

    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;-><init>([I)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I[II)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1e

    if-ne p2, v1, :cond_0

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;

    invoke-direct {v0, p3, p4}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;-><init>([II)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public requestHistoryData(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .locals 5

    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/16 v2, 0x21

    if-eq p2, v2, :cond_1

    const/16 v2, 0x1a

    if-eq p2, v2, :cond_1

    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "  .requestHistoryData : This service is not supported!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "  .requestHistoryData : This listener is currently using other services. You should create a new listener to request history data."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;-><init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Z)V

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, v1, p2}, Lcom/samsung/android/hardware/context/ISemContextService;->requestHistoryData(Landroid/os/IBinder;I)V

    const-string/jumbo v2, "SemContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  .requestHistoryData : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "RemoteException in requestHistoryData: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestToUpdate(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .locals 5

    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/16 v2, 0x19

    if-eq p2, v2, :cond_1

    const/16 v2, 0x1a

    if-eq p2, v2, :cond_1

    const/16 v2, 0x32

    if-eq p2, v2, :cond_1

    const/16 v2, 0x33

    if-eq p2, v2, :cond_1

    const/16 v2, 0x34

    if-eq p2, v2, :cond_1

    const/16 v2, 0x36

    if-eq p2, v2, :cond_1

    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "  .requestToUpdate : This service is not supported!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "  .requestToUpdate : SemContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, v1, p2}, Lcom/samsung/android/hardware/context/ISemContextService;->requestToUpdate(Landroid/os/IBinder;I)V

    const-string/jumbo v2, "SemContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  .requestToUpdate : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "RemoteException in requestToUpdate: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setClientInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    return-void
.end method

.method public setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z
    .locals 11

    const/16 v9, 0x30

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    if-eqz v8, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v10

    :cond_1
    const/4 v6, 0x0

    if-ne p1, v9, :cond_2

    invoke-virtual {p2, v9}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    return v10

    :cond_2
    invoke-virtual {p2, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_3
    sparse-switch p1, :sswitch_data_0

    :goto_1
    return v6

    :sswitch_0
    :try_start_0
    const-string/jumbo v8, "net_data"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "gram_data"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5

    :cond_4
    return v10

    :cond_5
    const-string/jumbo v8, "net_data"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const-string/jumbo v8, "gram_data"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v5, :cond_6

    if-nez v2, :cond_7

    :cond_6
    return v10

    :cond_7
    iget-object v8, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const/4 v9, 0x1

    invoke-interface {v8, p1, v9, v5}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(II[B)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const/4 v9, 0x2

    invoke-interface {v8, p1, v9, v2}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(II[B)Z

    move-result v6

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v8, "luminance_config_data"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    return v10

    :cond_9
    const-string/jumbo v8, "luminance_config_data"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_a

    return v10

    :cond_a
    iget-object v8, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const/4 v9, 0x0

    invoke-interface {v8, p1, v9, v4}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(II[B)Z

    move-result v6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v8, "interrupt_gyro"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string/jumbo v8, "SemContextManager"

    const-string/jumbo v9, "Bundle is not contained key data"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_b
    const/4 v8, 0x1

    new-array v7, v8, [B

    const-string/jumbo v8, "interrupt_gyro"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    int-to-byte v8, v8

    const/4 v9, 0x0

    aput-byte v8, v7, v9

    const-string/jumbo v8, "SemContextManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sysfs data : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v10, v7, v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const/16 v9, 0x30

    invoke-interface {v8, p1, v9, v7}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(II[B)Z

    move-result v6

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v8, "display_status"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string/jumbo v8, "SemContextManager"

    const-string/jumbo v9, "Bundle is not contained key data"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_c
    const/4 v8, 0x1

    new-array v3, v8, [B

    const-string/jumbo v8, "display_status"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    int-to-byte v8, v8

    const/4 v9, 0x0

    aput-byte v8, v3, v9

    const-string/jumbo v8, "SemContextManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Hall Sensor Data : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v10, v3, v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const/16 v9, 0x2b

    invoke-interface {v8, p1, v9, v3}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v8, "SemContextManager"

    const-string/jumbo v9, "RemoteException in initializeSemContextService: "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x27 -> :sswitch_1
        0x2b -> :sswitch_3
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method public setReferenceData(I[B[B)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    const/16 v1, 0x10

    if-ne p1, v1, :cond_2

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;

    invoke-direct {v0, p2, p3}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;-><init>([B[B)V

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v2, "SemContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  .unregisterListener : SemContextListener is null!, manager = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, v1, p2}, Lcom/samsung/android/hardware/context/ISemContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    const-string/jumbo v2, "SemContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  .unregisterListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "RemoteException in unregisterListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
