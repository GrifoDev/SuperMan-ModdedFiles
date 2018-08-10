.class public Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;
.super Ljava/lang/Object;
.source "ManagedProfileControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ManagedProfileController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$1;,
        Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$2;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mEnabledProfiles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListening:Z

.field private final mProfiles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateReceiver:Landroid/os/ContainerStateReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->reloadManagedProfiles()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mStateReceiver:Landroid/os/ContainerStateReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mUserManager:Landroid/os/UserManager;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mEnabledProfiles:Ljava/util/LinkedList;

    return-void
.end method

.method private reloadManagedProfiles()V
    .locals 8

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v5}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    const-class v6, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v6, v3}, Lcom/android/systemui/KnoxStateMonitor;->isLegacyContainer(Landroid/content/pm/UserInfo;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v6

    :goto_2
    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mEnabledProfiles:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-nez v6, :cond_4

    if-eqz v2, :cond_4

    iget v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCurrentUser:I

    if-ne v5, v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;->onManagedProfileRemoved()V

    goto :goto_3

    :cond_4
    iput v5, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCurrentUser:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    return-void
.end method

.method private setListening(Z)V
    .locals 7

    const/4 v4, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mListening:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->reloadManagedProfiles()V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mStateReceiver:Landroid/os/ContainerStateReceiver;

    invoke-static {v0, v1}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mStateReceiver:Landroid/os/ContainerStateReceiver;

    invoke-static {v0, v1}, Landroid/os/ContainerStateReceiver;->unregister(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->setListening(Z)V

    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;->onManagedProfileChanged()V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->addCallback(Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;)V

    return-void
.end method

.method public hasActiveProfile()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mListening:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->reloadManagedProfiles()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hasPremiumContainer()Z
    .locals 5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mListening:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->reloadManagedProfiles()V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v4

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSuperLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    const/4 v0, 0x1

    const/4 v3, 0x1

    monitor-exit v4

    return v3

    :cond_4
    const/4 v3, 0x0

    monitor-exit v4

    return v3

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public hasUserInEnabledProfiles(I)Z
    .locals 5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mListening:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->reloadManagedProfiles()V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mEnabledProfiles:Ljava/util/LinkedList;

    monitor-enter v4

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mEnabledProfiles:Ljava/util/LinkedList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v4

    return v0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public isWorkModeEnabled()Z
    .locals 4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mListening:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->reloadManagedProfiles()V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_2
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;)V

    return-void
.end method

.method public setWorkModeEnabled(Z)V
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mUserManager:Landroid/os/UserManager;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/os/UserManager;->trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "statusbar"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mUserManager:Landroid/os/UserManager;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/os/UserManager;->setQuietModeEnabled(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit v4

    return-void
.end method
