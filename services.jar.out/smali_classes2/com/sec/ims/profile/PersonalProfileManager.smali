.class public Lcom/sec/ims/profile/PersonalProfileManager;
.super Ljava/lang/Object;
.source "PersonalProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/profile/PersonalProfileManager$Notify;,
        Lcom/sec/ims/profile/PersonalProfileManager$NotifyRelay;,
        Lcom/sec/ims/profile/PersonalProfileManager$OwnNumberListenerRelay;,
        Lcom/sec/ims/profile/PersonalProfileManager$ProfileUpdateListenerRelay;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field public static mService:Lcom/sec/ims/profile/IPersonalProfileService;


# instance fields
.field private mOwnNumberListenerRelay:Lcom/sec/ims/profile/PersonalProfileManager$OwnNumberListenerRelay;

.field private mOwnNumberListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/ims/profile/PersonalProfileManager$Notify;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileUpdateListenerRelay:Lcom/sec/ims/profile/PersonalProfileManager$ProfileUpdateListenerRelay;

.field private mProfileUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/ims/profile/PersonalProfileManager$Notify;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sec/ims/profile/PersonalProfileManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mOwnNumberListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/ims/profile/PersonalProfileManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mProfileUpdateListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/ims/profile/PersonalProfileManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/profile/PersonalProfileManager;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/ims/profile/PersonalProfileManager;->mService:Lcom/sec/ims/profile/IPersonalProfileService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mOwnNumberListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mProfileUpdateListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/ims/profile/PersonalProfileManager$OwnNumberListenerRelay;

    invoke-direct {v1, p0, v2}, Lcom/sec/ims/profile/PersonalProfileManager$OwnNumberListenerRelay;-><init>(Lcom/sec/ims/profile/PersonalProfileManager;Lcom/sec/ims/profile/PersonalProfileManager$OwnNumberListenerRelay;)V

    iput-object v1, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mOwnNumberListenerRelay:Lcom/sec/ims/profile/PersonalProfileManager$OwnNumberListenerRelay;

    new-instance v1, Lcom/sec/ims/profile/PersonalProfileManager$ProfileUpdateListenerRelay;

    invoke-direct {v1, p0, v2}, Lcom/sec/ims/profile/PersonalProfileManager$ProfileUpdateListenerRelay;-><init>(Lcom/sec/ims/profile/PersonalProfileManager;Lcom/sec/ims/profile/PersonalProfileManager$ProfileUpdateListenerRelay;)V

    iput-object v1, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mProfileUpdateListenerRelay:Lcom/sec/ims/profile/PersonalProfileManager$ProfileUpdateListenerRelay;

    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "PersonalProfileManager() start "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.imsservice"

    const-string/jumbo v2, "com.sec.internal.ims.imsservice.PersonalProfileService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/sec/ims/profile/PersonalProfileManager$1;

    invoke-direct {v1, p0}, Lcom/sec/ims/profile/PersonalProfileManager$1;-><init>(Lcom/sec/ims/profile/PersonalProfileManager;)V

    sget-object v2, Lcom/sec/ims/extensions/ContextExt;->OWNER:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v3, v2}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method private exceptionNotify(Ljava/lang/String;Lcom/sec/ims/profile/PersonalProfileManager$Notify;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/16 v0, -0xa

    invoke-interface {p2, p1, v0, v1, v1}, Lcom/sec/ims/profile/PersonalProfileManager$Notify;->onNotify(Ljava/lang/String;ILjava/lang/String;Lcom/sec/ims/profile/ProfileInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public deRegisterOwnNumberListener(Lcom/sec/ims/profile/PersonalProfileManager$Notify;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/ims/profile/PersonalProfileManager;->isServiceEnable()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "deRegisterOwnNumberListener() fail, personal profile service is not active"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mOwnNumberListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mOwnNumberListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mOwnNumberListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->mService:Lcom/sec/ims/profile/IPersonalProfileService;

    iget-object v3, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mOwnNumberListenerRelay:Lcom/sec/ims/profile/PersonalProfileManager$OwnNumberListenerRelay;

    invoke-interface {v1, v3}, Lcom/sec/ims/profile/IPersonalProfileService;->deRegisterOwnNumberListener(Lcom/sec/ims/profile/IPersonalProfileNotify;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "deRegisterOwnNumberListener() fail"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public deRegisterProfileUpdateListener(Lcom/sec/ims/profile/PersonalProfileManager$Notify;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/ims/profile/PersonalProfileManager;->isServiceEnable()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "deRegisterProfileUpdateListener() fail, personal profile service is not active"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mProfileUpdateListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mProfileUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mProfileUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->mService:Lcom/sec/ims/profile/IPersonalProfileService;

    iget-object v3, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mProfileUpdateListenerRelay:Lcom/sec/ims/profile/PersonalProfileManager$ProfileUpdateListenerRelay;

    invoke-interface {v1, v3}, Lcom/sec/ims/profile/IPersonalProfileService;->deRegisterProfileUpdateListener(Lcom/sec/ims/profile/IPersonalProfileNotify;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "deRegisterProfileUpdateListener() fail"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getFriendProfile(Ljava/lang/String;Lcom/sec/ims/profile/PersonalProfileManager$Notify;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/ims/profile/PersonalProfileManager;->isServiceEnable()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getFriendProfile() fail, personal profile service is not active"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->mService:Lcom/sec/ims/profile/IPersonalProfileService;

    new-instance v2, Lcom/sec/ims/profile/PersonalProfileManager$NotifyRelay;

    invoke-direct {v2, p0, p2}, Lcom/sec/ims/profile/PersonalProfileManager$NotifyRelay;-><init>(Lcom/sec/ims/profile/PersonalProfileManager;Lcom/sec/ims/profile/PersonalProfileManager$Notify;)V

    invoke-interface {v1, p1, v2}, Lcom/sec/ims/profile/IPersonalProfileService;->getFriendProfile(Ljava/lang/String;Lcom/sec/ims/profile/IPersonalProfileNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getFriendProfile() fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    invoke-direct {p0, p1, p2}, Lcom/sec/ims/profile/PersonalProfileManager;->exceptionNotify(Ljava/lang/String;Lcom/sec/ims/profile/PersonalProfileManager$Notify;)V

    goto :goto_0
.end method

.method public getFriendProfileById(JLcom/sec/ims/profile/PersonalProfileManager$Notify;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/ims/profile/PersonalProfileManager;->isServiceEnable()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getFriendProfileById() fail, personal profile service is not active"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->mService:Lcom/sec/ims/profile/IPersonalProfileService;

    new-instance v2, Lcom/sec/ims/profile/PersonalProfileManager$NotifyRelay;

    invoke-direct {v2, p0, p3}, Lcom/sec/ims/profile/PersonalProfileManager$NotifyRelay;-><init>(Lcom/sec/ims/profile/PersonalProfileManager;Lcom/sec/ims/profile/PersonalProfileManager$Notify;)V

    invoke-interface {v1, p1, p2, v2}, Lcom/sec/ims/profile/IPersonalProfileService;->getFriendProfileById(JLcom/sec/ims/profile/IPersonalProfileNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getFriendProfileById() fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p3}, Lcom/sec/ims/profile/PersonalProfileManager;->exceptionNotify(Ljava/lang/String;Lcom/sec/ims/profile/PersonalProfileManager$Notify;)V

    goto :goto_0
.end method

.method public getOwnProfile(Lcom/sec/ims/profile/PersonalProfileManager$Notify;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/ims/profile/PersonalProfileManager;->isServiceEnable()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getOwnProfile() fail, personal profile service is not active"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->mService:Lcom/sec/ims/profile/IPersonalProfileService;

    new-instance v2, Lcom/sec/ims/profile/PersonalProfileManager$NotifyRelay;

    invoke-direct {v2, p0, p1}, Lcom/sec/ims/profile/PersonalProfileManager$NotifyRelay;-><init>(Lcom/sec/ims/profile/PersonalProfileManager;Lcom/sec/ims/profile/PersonalProfileManager$Notify;)V

    invoke-interface {v1, v2}, Lcom/sec/ims/profile/IPersonalProfileService;->getOwnProfile(Lcom/sec/ims/profile/IPersonalProfileNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getOwnProfile() fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/sec/ims/profile/PersonalProfileManager;->exceptionNotify(Ljava/lang/String;Lcom/sec/ims/profile/PersonalProfileManager$Notify;)V

    goto :goto_0
.end method

.method public isServiceEnable()Z
    .locals 1

    sget-object v0, Lcom/sec/ims/profile/PersonalProfileManager;->mService:Lcom/sec/ims/profile/IPersonalProfileService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public registerOwnNumberListener(Lcom/sec/ims/profile/PersonalProfileManager$Notify;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/ims/profile/PersonalProfileManager;->isServiceEnable()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerOwnNumberListener() fail, personal profile service is not active"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mOwnNumberListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mOwnNumberListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mOwnNumberListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->mService:Lcom/sec/ims/profile/IPersonalProfileService;

    iget-object v3, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mOwnNumberListenerRelay:Lcom/sec/ims/profile/PersonalProfileManager$OwnNumberListenerRelay;

    invoke-interface {v1, v3}, Lcom/sec/ims/profile/IPersonalProfileService;->registerOwnNumberListener(Lcom/sec/ims/profile/IPersonalProfileNotify;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerOwnNumberListener() fail"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mOwnNumberListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mOwnNumberListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public registerProfileUpdateListener(Lcom/sec/ims/profile/PersonalProfileManager$Notify;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/ims/profile/PersonalProfileManager;->isServiceEnable()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerProfileUpdateListener() fail, personal profile service is not active"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mProfileUpdateListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mProfileUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mProfileUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->mService:Lcom/sec/ims/profile/IPersonalProfileService;

    iget-object v3, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mProfileUpdateListenerRelay:Lcom/sec/ims/profile/PersonalProfileManager$ProfileUpdateListenerRelay;

    invoke-interface {v1, v3}, Lcom/sec/ims/profile/IPersonalProfileService;->registerProfileUpdateListener(Lcom/sec/ims/profile/IPersonalProfileNotify;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerProfileUpdateListener() fail"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mProfileUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/ims/profile/PersonalProfileManager;->mProfileUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setOwnProfile(Lcom/sec/ims/profile/ProfileInfo;Lcom/sec/ims/profile/PersonalProfileManager$Notify;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/ims/profile/PersonalProfileManager;->isServiceEnable()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "setOwnProfile() fail, personal profile service is not active"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->mService:Lcom/sec/ims/profile/IPersonalProfileService;

    new-instance v2, Lcom/sec/ims/profile/PersonalProfileManager$NotifyRelay;

    invoke-direct {v2, p0, p2}, Lcom/sec/ims/profile/PersonalProfileManager$NotifyRelay;-><init>(Lcom/sec/ims/profile/PersonalProfileManager;Lcom/sec/ims/profile/PersonalProfileManager$Notify;)V

    invoke-interface {v1, p1, v2}, Lcom/sec/ims/profile/IPersonalProfileService;->setOwnProfile(Lcom/sec/ims/profile/ProfileInfo;Lcom/sec/ims/profile/IPersonalProfileNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/ims/profile/PersonalProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "setOwnProfile() fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p2}, Lcom/sec/ims/profile/PersonalProfileManager;->exceptionNotify(Ljava/lang/String;Lcom/sec/ims/profile/PersonalProfileManager$Notify;)V

    goto :goto_0
.end method
