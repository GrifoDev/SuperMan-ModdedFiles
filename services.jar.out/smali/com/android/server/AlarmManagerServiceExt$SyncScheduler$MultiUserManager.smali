.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiUserManager"
.end annotation


# instance fields
.field private final DELAY_TIME_FOR_BOOTINIT:I

.field private final DELAY_TIME_FOR_USERINIT:I

.field private mSFReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

.field private mSecureFolder:Landroid/os/UserHandle;

.field private final multiUserfilter:Landroid/content/IntentFilter;

.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->initInstalledPackages()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->DELAY_TIME_FOR_BOOTINIT:I

    const v0, 0xea60

    iput v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->DELAY_TIME_FOR_USERINIT:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->multiUserfilter:Landroid/content/IntentFilter;

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSFReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    invoke-virtual {p0, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->updateSecureFolderUser(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSecureFolder:Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSecureFolder:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->initPackageReceiver(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->multiUserfilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->multiUserfilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->multiUserfilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->multiUserfilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->multiUserfilter:Landroid/content/IntentFilter;

    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initInstalledPackages()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->initInstalledPackages(I)V

    return-void
.end method

.method private initInstalledPackages(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSecureFolder:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get17(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get17(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSecureFolder:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->initInstalledPackagesAsUser(II)V

    :cond_0
    return-void
.end method

.method private initPackageReceiver(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSecureFolder:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSFReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSFReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->clear(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSFReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    :cond_1
    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSecureFolder:Landroid/os/UserHandle;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;Landroid/os/UserHandle;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSFReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    return-void
.end method

.method private removeInstalledPackages()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSecureFolder:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get17(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get17(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSecureFolder:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->removeInstalledPackageAsUser(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isOnReceiveSecureFolder()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSecureFolder:Landroid/os/UserHandle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSFReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->isOnReceiveSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->updateSecureFolderUser(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->initPackageReceiver(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSecureFolder:Landroid/os/UserHandle;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSecureFolder:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->updateSecureFolderUser(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSFReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSFReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->clear(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSFReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    :cond_3
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->removeInstalledPackages()V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->updateSecureFolderUser(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "android.intent.extra.USER"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "android.intent.extra.USER"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSecureFolder:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0xea60

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->initInstalledPackages(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->updateSecureFolderUser(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSFReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSFReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->clear(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSFReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    goto/16 :goto_0
.end method

.method public updateSecureFolderUser(Landroid/content/Context;)Landroid/os/UserHandle;
    .locals 10

    const/4 v9, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v7, "user"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    const-string/jumbo v7, "persona"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    if-eqz v1, :cond_1

    iget v7, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    iget v7, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    const/16 v8, 0x96

    if-gt v8, v7, :cond_0

    iget v7, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    const/16 v8, 0xa0

    if-gt v7, v8, :cond_0

    :cond_2
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :cond_3
    iput-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSecureFolder:Landroid/os/UserHandle;

    return-object v2

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v7, "AlarmManagerEXT"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSecureFolder:Landroid/os/UserHandle;

    return-object v9

    :catchall_0
    move-exception v7

    iput-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->mSecureFolder:Landroid/os/UserHandle;

    return-object v9
.end method
