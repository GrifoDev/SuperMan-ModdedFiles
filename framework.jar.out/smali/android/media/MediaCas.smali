.class public final Landroid/media/MediaCas;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCas$1;,
        Landroid/media/MediaCas$2;,
        Landroid/media/MediaCas$EventHandler;,
        Landroid/media/MediaCas$EventListener;,
        Landroid/media/MediaCas$ParcelableCasData;,
        Landroid/media/MediaCas$ParcelableCasPluginDescriptor;,
        Landroid/media/MediaCas$PluginDescriptor;,
        Landroid/media/MediaCas$Session;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCas"

.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/media/IMediaCasService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBinder:Landroid/media/ICasListener$Stub;

.field private final mCasData:Landroid/media/MediaCas$ParcelableCasData;

.field private mEventHandler:Landroid/media/MediaCas$EventHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mICas:Landroid/media/ICas;

.field private mListener:Landroid/media/MediaCas$EventListener;


# direct methods
.method static synthetic -get0(Landroid/media/MediaCas;)Landroid/media/MediaCas$ParcelableCasData;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCas;->mCasData:Landroid/media/MediaCas$ParcelableCasData;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/MediaCas;)Landroid/media/ICas;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/media/ICas;

    return-object v0
.end method

.method static synthetic -get3(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/MediaCas;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/media/MediaCas;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/MediaCas$1;

    invoke-direct {v0}, Landroid/media/MediaCas$1;-><init>()V

    sput-object v0, Landroid/media/MediaCas;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/media/MediaCas$ParcelableCasData;

    invoke-direct {v1}, Landroid/media/MediaCas$ParcelableCasData;-><init>()V

    iput-object v1, p0, Landroid/media/MediaCas;->mCasData:Landroid/media/MediaCas$ParcelableCasData;

    new-instance v1, Landroid/media/MediaCas$2;

    invoke-direct {v1, p0}, Landroid/media/MediaCas$2;-><init>(Landroid/media/MediaCas;)V

    iput-object v1, p0, Landroid/media/MediaCas;->mBinder:Landroid/media/ICasListener$Stub;

    :try_start_0
    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/media/IMediaCasService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCas;->mBinder:Landroid/media/ICasListener$Stub;

    invoke-interface {v1, p1, v2}, Landroid/media/IMediaCasService;->createPlugin(ILandroid/media/ICasListener;)Landroid/media/ICas;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/media/ICas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/media/ICas;

    if-nez v1, :cond_1

    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported CA_system_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "MediaCas"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to create plugin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/media/ICas;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/media/ICas;

    if-nez v1, :cond_1

    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported CA_system_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/media/ICas;

    if-nez v2, :cond_0

    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported CA_system_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    throw v1

    :cond_1
    return-void
.end method

.method private cleanupAndRethrowIllegalState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/media/ICas;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static enumeratePlugins()[Landroid/media/MediaCas$PluginDescriptor;
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/media/IMediaCasService;

    move-result-object v4

    if-eqz v4, :cond_2

    :try_start_0
    invoke-interface {v4}, Landroid/media/IMediaCasService;->enumeratePlugins()[Landroid/media/MediaCas$ParcelableCasPluginDescriptor;

    move-result-object v0

    array-length v5, v0

    if-nez v5, :cond_0

    return-object v6

    :cond_0
    array-length v5, v0

    new-array v3, v5, [Landroid/media/MediaCas$PluginDescriptor;

    const/4 v2, 0x0

    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_1

    aget-object v5, v0, v2

    aput-object v5, v3, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v3

    :catch_0
    move-exception v1

    :cond_2
    return-object v6
.end method

.method static getService()Landroid/media/IMediaCasService;
    .locals 1

    sget-object v0, Landroid/media/MediaCas;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/IMediaCasService;

    return-object v0
.end method

.method public static isSystemIdSupported(I)Z
    .locals 3

    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/media/IMediaCasService;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p0}, Landroid/media/IMediaCasService;->isSystemIdSupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private validateInternalStates()V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/media/ICas;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/media/ICas;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/media/ICas;

    invoke-interface {v1}, Landroid/media/ICas;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/media/ICas;

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    iput-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/media/ICas;

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method createFromSessionId([B)Landroid/media/MediaCas$Session;
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Landroid/media/MediaCas$Session;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaCas$Session;-><init>(Landroid/media/MediaCas;[B)V

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaCas;->close()V

    return-void
.end method

.method getBinder()Landroid/os/IBinder;
    .locals 1

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/media/ICas;

    invoke-interface {v0}, Landroid/media/ICas;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public openSession()Landroid/media/MediaCas$Session;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/media/ICas;

    invoke-interface {v2}, Landroid/media/ICas;->openSession()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/MediaCas;->createFromSessionId([B)Landroid/media/MediaCas$Session;
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    :goto_0
    const/4 v2, 0x0

    return-object v2

    :catch_1
    move-exception v1

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptions(Landroid/os/ServiceSpecificException;)V

    goto :goto_0
.end method

.method public processEmm([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/MediaCas;->processEmm([BII)V

    return-void
.end method

.method public processEmm([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaCas;->mCasData:Landroid/media/MediaCas$ParcelableCasData;

    invoke-virtual {v2, p1, p2, p3}, Landroid/media/MediaCas$ParcelableCasData;->set([BII)V

    iget-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/media/ICas;

    iget-object v3, p0, Landroid/media/MediaCas;->mCasData:Landroid/media/MediaCas$ParcelableCasData;

    invoke-interface {v2, v3}, Landroid/media/ICas;->processEmm(Landroid/media/MediaCas$ParcelableCasData;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptions(Landroid/os/ServiceSpecificException;)V

    goto :goto_0
.end method

.method public provision(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/media/ICas;

    invoke-interface {v2, p1}, Landroid/media/ICas;->provision(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptions(Landroid/os/ServiceSpecificException;)V

    goto :goto_0
.end method

.method public refreshEntitlements(I[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/media/ICas;

    invoke-interface {v2, p1, p2}, Landroid/media/ICas;->refreshEntitlements(I[B)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptions(Landroid/os/ServiceSpecificException;)V

    goto :goto_0
.end method

.method public sendEvent(II[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/media/ICas;

    invoke-interface {v2, p1, p2, p3}, Landroid/media/ICas;->sendEvent(II[B)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptions(Landroid/os/ServiceSpecificException;)V

    goto :goto_0
.end method

.method public setEventListener(Landroid/media/MediaCas$EventListener;Landroid/os/Handler;)V
    .locals 4

    const/4 v2, 0x0

    iput-object p1, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    iget-object v1, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    if-nez v1, :cond_0

    iput-object v2, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    return-void

    :cond_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "MediaCasEventThread"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    :cond_2
    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :cond_3
    new-instance v1, Landroid/media/MediaCas$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaCas$EventHandler;-><init>(Landroid/media/MediaCas;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPrivateData([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/media/ICas;

    invoke-interface {v2, p1}, Landroid/media/ICas;->setPrivateData([B)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptions(Landroid/os/ServiceSpecificException;)V

    goto :goto_0
.end method
