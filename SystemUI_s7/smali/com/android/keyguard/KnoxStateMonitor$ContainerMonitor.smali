.class Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;
.super Ljava/lang/Object;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$1;,
        Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;,
        Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$3;,
        Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;,
        Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$PersonaObserver;
    }
.end annotation


# instance fields
.field private final ACTION_RCP_POLICY_CHANGED:Ljava/lang/String;

.field private final KNOX_DEBUG:Z

.field private final KNOX_EXPORT_DATA:I

.field private final KNOX_IMPORT_DATA:I

.field private final KNOX_NO_SANITIZING:I

.field private final KNOX_SANITIZING:I

.field private final KNOX_SANITIZING_LOCKSCREEN:I

.field private final MYKNOX_PKG:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContainerObserver:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$PersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mExportDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mImportDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsContainerKioskMode:Z

.field private final mKnoxInLockMode:Landroid/util/SparseBooleanArray;

.field private final mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

.field private mLockscreenPublicMode:Z

.field private final mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

.field private final mPersonaRemovalStartedReceiver:Landroid/content/BroadcastReceiver;

.field private mPersonas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/SemPersonaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field private final mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private final mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/keyguard/KnoxStateMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Lcom/samsung/android/knox/SemPersonaManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->isContainerKioskMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->isPersona(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->getKnoxName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->getContainerIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->getPersonalManager()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->registerPersonaObserver(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->setContainerKioskMode(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    iput-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mLockscreenPublicMode:Z

    const-string/jumbo v0, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->ACTION_RCP_POLICY_CHANGED:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.knoxpb.mdm"

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->MYKNOX_PKG:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mContainerObserver:Landroid/util/SparseArray;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_IMPORT_DATA:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_EXPORT_DATA:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_SANITIZING:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_NO_SANITIZING:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_SANITIZING_LOCKSCREEN:I

    new-instance v0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$1;-><init>(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;-><init>(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonaRemovalStartedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$3;-><init>(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;-><init>(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->registerCallback()V

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->registerReceivers()V

    return-void
.end method

.method private getContainerIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaInfo;

    iget v3, v1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getKnoxName(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->getPersonalManager()V

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPersonalManager()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    return-void
.end method

.method private getPolicy(ILjava/lang/String;I)Z
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string/jumbo v1, "true"

    const-string/jumbo v0, "false"

    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->isPersona(I)Z

    move-result v8

    if-nez v8, :cond_0

    return v6

    :cond_0
    const/4 v2, 0x0

    sparse-switch p3, :sswitch_data_0

    return v7

    :sswitch_0
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    :goto_0
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_3

    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->getPersonalManager()V

    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    const-string/jumbo v9, "persona_policy"

    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaPolicyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    return v7

    :sswitch_1
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    goto :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v8, "Notifications"

    invoke-virtual {v4, p1, v8, p2}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "true"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "false"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    invoke-virtual {v2, p1, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    iget-boolean v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v8, :cond_4

    const-string/jumbo v8, "KnoxStateMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPolicy: policy value returned = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v8, "true"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :goto_2
    return v6

    :catch_0
    move-exception v3

    const-string/jumbo v8, "KnoxStateMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPolicy: threw an exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_5
    move v6, v7

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_0
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private isContainerKioskMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    return v0
.end method

.method private isPersona(I)Z
    .locals 1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/16 v0, 0xc8

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isPersonaInKioskMode(I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->getPersonalManager()V

    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private knoxContainerInLockMode(I)Z
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->isPersona(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get KnoxInLockMode for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v4

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_3

    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get KnoxInLockMode for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v4

    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get KnoxInLockMode for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    return v1
.end method

.method private knoxContainerInSuperLockMode(I)Z
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->isPersona(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get knoxInSuperLockMode for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v4

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_3

    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get knoxInSuperLockMode for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v4

    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get knoxInSuperLockMode for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    return v1
.end method

.method private registerCallback()V
    .locals 0

    return-void
.end method

.method private registerPersonaObserver(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mContainerObserver:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$PersonaObserver;

    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$PersonaObserver;-><init>(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;Landroid/content/Context;II)V

    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mContainerObserver:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "register container observer for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private registerReceivers()V
    .locals 12

    const/4 v11, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v8, "com.sec.knox.SETUP_COMPLETE"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v8, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v8}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v8, "com.sec.knox.container.action.launchinfo"

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v8}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v10, "com.samsung.container.LAUNCH_INFO"

    invoke-virtual {v8, v9, v6, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v8, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v8}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->getPersonalManager()V

    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v5

    :cond_0
    if-eqz v5, :cond_6

    const/4 v3, 0x0

    :goto_0
    array-length v8, v5

    if-ge v3, v8, :cond_6

    aget v8, v5, v3

    invoke-direct {p0, v8}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->isPersona(I)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    aget v9, v5, v3

    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->getState()Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v1

    sget-object v8, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    if-eq v1, v8, :cond_1

    sget-object v8, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    if-ne v1, v8, :cond_5

    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    aget v9, v5, v3

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    sget-object v8, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    if-ne v1, v8, :cond_3

    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    aget v9, v5, v3

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_3
    aget v8, v5, v3

    invoke-direct {p0, v8}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->registerPersonaObserver(I)V

    aget v8, v5, v3

    invoke-direct {p0, v8}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->setContainerKioskMode(I)V

    iget-boolean v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v8, :cond_4

    const-string/jumbo v8, "KnoxStateMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "add container observer="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " for userId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v5, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " No. of users="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    sget-object v8, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v8, :cond_2

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v8, "KnoxStateMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "start: threw an exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v8, "com.sec.knox.container.action.containerremovalstarted"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v8}, Lcom/android/keyguard/KnoxStateMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonaRemovalStartedReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v10, "com.samsung.container.OBSERVER"

    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private setContainerKioskMode(I)V
    .locals 3

    const/16 v2, 0x139d

    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->isPersonaInKioskMode(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public filterOutForKnoxContainer(ILjava/lang/String;Z)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    const-string/jumbo v6, "com.android.incallui"

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.android.server.telecom"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    iget-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eqz v2, :cond_6

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    if-nez p1, :cond_6

    const-string/jumbo v2, "com.android.mms"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "com.samsung.android.messaging"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "com.kddi.android.cmail"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v4, "----- filterOutForKnoxContainer:  Skipping com.android.mms notif for COM + ADMIN_LOCKED case"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3

    :cond_4
    const-string/jumbo v2, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "android"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.android.systemui"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.android.mms"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.samsung.android.messaging"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.kddi.android.cmail"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.android.settings"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.android.phone"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaInfo;

    iget v1, v2, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    goto/16 :goto_0

    :cond_6
    if-eqz p3, :cond_7

    if-eqz p2, :cond_7

    const-string/jumbo v2, "com.sec.knox.switcher"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_1
    return v2

    :cond_7
    move v2, v4

    goto :goto_1
.end method

.method public isKnoxNotificationSanitizeNeeded(IILjava/lang/String;ZZ)Z
    .locals 6

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    const-string/jumbo v3, "com.samsung.knox.knoxtrustagent"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v5

    :cond_0
    const-string/jumbo v3, "knox-sanitize-data"

    const/4 v4, 0x4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->getPolicy(ILjava/lang/String;I)Z

    move-result v1

    const-string/jumbo v3, "knox-sanitize-data-lockscreen"

    const/16 v4, 0x10

    invoke-direct {p0, p1, v3, v4}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->getPolicy(ILjava/lang/String;I)Z

    move-result v2

    invoke-direct {p0, p1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->knoxContainerInLockMode(I)Z

    move-result v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    if-nez p5, :cond_7

    :cond_1
    if-eqz v2, :cond_2

    if-nez p5, :cond_7

    :cond_2
    iget-boolean v3, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_3

    if-nez p4, :cond_7

    :cond_3
    if-eqz v1, :cond_4

    if-nez v0, :cond_7

    :cond_4
    const-string/jumbo v3, "com.samsung.android.email.provider"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "com.samsung.android.email.sync"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "com.samsung.android.email.ui"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "com.samsung.android.email.composer"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "com.android.email"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    if-nez v0, :cond_7

    if-eqz p5, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    return v5

    :cond_7
    const/4 v3, 0x1

    return v3
.end method

.method public isLockScreenDisabledbyKNOX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isQuickConnectEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSkipShowingNotificationForHeadsUp(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaInfo;

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "com.android.mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "com.samsung.android.messaging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "com.kddi.android.cmail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
