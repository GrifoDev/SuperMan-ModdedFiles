.class public Lcom/android/server/am/SchedPolicyManager;
.super Ljava/lang/Object;
.source "SchedPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SchedPolicyManager$1;,
        Lcom/android/server/am/SchedPolicyManager$GroupPolicy;,
        Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;
    }
.end annotation


# static fields
.field private static final CHIP_NAME:Ljava/lang/String;

.field static DEBUG_CPUSET:Z = false

.field static ENABLE_CPUSET:Z = false

.field private static final MESSAGE_CHECK_SCPM:I = 0x2

.field private static final MESSAGE_UPDATE_SCPM:I = 0x1

.field private static final MODEL_NAME:Ljava/lang/String;

.field private static final MODEL_NUMBER:Ljava/lang/String;

.field private static final PROCESS_STATE_MAX:I = 0x10

.field private static final PROCESS_STATE_MIN:I = -0x1

.field private static final SCPM_BROADCAST_MESSAGE_SCHED:Ljava/lang/String; = "sec.app.policy.UPDATE.SchedPolicy"

.field private static final SCPM_POLICY_NAME_SCHED:Ljava/lang/String; = "SchedPolicy"

.field private static final SCPM_URI_POLICY:Landroid/net/Uri;

.field private static final SCPM_URI_TABLE_SCHED:Landroid/net/Uri;

.field static final TAG:Ljava/lang/String; = "SchedPolicyManager"

.field private static manager:Lcom/android/server/am/SchedPolicyManager;


# instance fields
.field private final mAm:Lcom/android/server/am/ActivityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mDefaultIMEPackage:Ljava/lang/String;

.field private final mListGroupPolicy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/SchedPolicyManager$GroupPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgGroupPolicyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/SchedPolicyManager$GroupPolicy;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProcGroupPolicyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/SchedPolicyManager$GroupPolicy;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mScpmHandler:Landroid/os/Handler;

.field private final mSystemPackage:Ljava/lang/String;

.field private scpmVersion:J


# direct methods
.method static synthetic -get0(Lcom/android/server/am/SchedPolicyManager;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/SchedPolicyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SchedPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/SchedPolicyManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->needToUpdateScpm()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/SchedPolicyManager;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->getDefaultIMEPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/am/SchedPolicyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->checkScpmWithHandler()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/SchedPolicyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->init()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/am/SchedPolicyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->updateScpm()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->isCpusetEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/SchedPolicyManager;->ENABLE_CPUSET:Z

    const-string/jumbo v0, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SchedPolicyManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.sm.policy/policy_item/SchedPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SchedPolicyManager;->SCPM_URI_TABLE_SCHED:Landroid/net/Uri;

    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SchedPolicyManager;->MODEL_NAME:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SchedPolicyManager;->MODEL_NUMBER:Ljava/lang/String;

    const-string/jumbo v0, "ro.chipname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SchedPolicyManager;->CHIP_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mListGroupPolicy:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mPkgGroupPolicyMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mProcGroupPolicyMap:Ljava/util/Map;

    new-instance v0, Lcom/android/server/am/SchedPolicyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/SchedPolicyManager$1;-><init>(Lcom/android/server/am/SchedPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mScpmHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/am/SchedPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mSystemPackage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->registerScpmReceiver()V

    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->registerDefaultInputMethodChanged()V

    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->getDefaultIMEPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->init()V

    return-void
.end method

.method private addPolicyToMap(Ljava/lang/String;Lcom/android/server/am/SchedPolicyManager$GroupPolicy;Z)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/server/am/SchedPolicyManager;->mPkgGroupPolicyMap:Ljava/util/Map;

    :goto_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/SchedPolicyManager;->mProcGroupPolicyMap:Ljava/util/Map;

    goto :goto_0
.end method

.method private checkScpmWithHandler()V
    .locals 3

    sget-boolean v1, Lcom/android/server/am/SchedPolicyManager;->DEBUG_CPUSET:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SchedPolicyManager"

    const-string/jumbo v2, "checkScpmWithHandler()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/am/SchedPolicyManager;->mScpmHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private createPolicyByCategory(Ljava/lang/String;)Lcom/android/server/am/SchedPolicyManager$GroupPolicy;
    .locals 14

    const/4 v11, 0x0

    const/4 v13, 0x5

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v11

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, -0x1

    const/16 v6, 0x10

    const/4 v7, -0x3

    const/4 v8, 0x5

    const-string/jumbo v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x0

    array-length v11, v10

    :goto_0
    if-ge v0, v11, :cond_a

    aget-object v9, v10, v0

    const-string/jumbo v12, "hpri_on"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v1, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v12, "con_off"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const-string/jumbo v12, "cmin_"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12, v3}, Lcom/android/server/am/SchedPolicyManager;->getGroupByString(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    :cond_5
    const-string/jumbo v12, "cmax_"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12, v4}, Lcom/android/server/am/SchedPolicyManager;->getGroupByString(Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    :cond_6
    const-string/jumbo v12, "smin_"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12, v5}, Lcom/android/server/am/SchedPolicyManager;->getStateByString(Ljava/lang/String;I)I

    move-result v5

    goto :goto_1

    :cond_7
    const-string/jumbo v12, "smax_"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12, v6}, Lcom/android/server/am/SchedPolicyManager;->getStateByString(Ljava/lang/String;I)I

    move-result v6

    goto :goto_1

    :cond_8
    const-string/jumbo v12, "amin_"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12, v7}, Lcom/android/server/am/SchedPolicyManager;->getGroupByString(Ljava/lang/String;I)I

    move-result v7

    goto :goto_1

    :cond_9
    const-string/jumbo v12, "amax_"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12, v8}, Lcom/android/server/am/SchedPolicyManager;->getGroupByString(Ljava/lang/String;I)I

    move-result v8

    goto :goto_1

    :cond_a
    new-instance v0, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;-><init>(ZZIIIIII)V

    return-object v0
.end method

.method private getDefaultIMEPackage()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/am/SchedPolicyManager;->mContext:Landroid/content/Context;

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

.method private getGroupByString(Ljava/lang/String;I)I
    .locals 3

    const/4 v2, 0x5

    const/4 v1, -0x3

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "MN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string/jumbo v0, "AB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string/jumbo v0, "CA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x2

    return v0

    :cond_3
    const-string/jumbo v0, "BG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    const-string/jumbo v0, "FG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    return v0

    :cond_5
    const-string/jumbo v0, "RF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    const-string/jumbo v0, "MX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    :cond_7
    return p2
.end method

.method static getManager()Lcom/android/server/am/SchedPolicyManager;
    .locals 1

    sget-object v0, Lcom/android/server/am/SchedPolicyManager;->manager:Lcom/android/server/am/SchedPolicyManager;

    return-object v0
.end method

.method static getManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/SchedPolicyManager;
    .locals 1

    invoke-static {p0}, Lcom/android/server/am/SchedPolicyManager;->prepareManager(Lcom/android/server/am/ActivityManagerService;)Z

    invoke-static {}, Lcom/android/server/am/SchedPolicyManager;->getManager()Lcom/android/server/am/SchedPolicyManager;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/SchedPolicyManager;->DEBUG_CPUSET:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SchedPolicyManager"

    const-string/jumbo v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mListGroupPolicy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mPkgGroupPolicyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mProcGroupPolicyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->initSystemPolicy()V

    invoke-direct {p0}, Lcom/android/server/am/SchedPolicyManager;->updateScpmWithHandler()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initSystemPolicy()V
    .locals 7

    const/4 v4, 0x5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/server/am/SchedPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;

    const/4 v1, 0x0

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;-><init>(ZZIIII)V

    iget-object v1, p0, Lcom/android/server/am/SchedPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/am/SchedPolicyManager;->addPolicyToMap(Ljava/lang/String;Lcom/android/server/am/SchedPolicyManager$GroupPolicy;Z)V

    :cond_0
    return-void
.end method

.method private isInvokedModel(Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return v4

    :cond_1
    const/4 v1, 0x0

    const-string/jumbo v5, "\\|"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_9

    aget-object v2, v3, v4

    const/4 v0, 0x0

    const-string/jumbo v6, "!"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string/jumbo v6, "ALL"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-boolean v6, Lcom/android/server/am/SchedPolicyManager;->ENABLE_CPUSET:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "CS_ON"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_3
    sget-boolean v6, Lcom/android/server/am/SchedPolicyManager;->ENABLE_CPUSET:Z

    if-nez v6, :cond_4

    const-string/jumbo v6, "CS_OFF"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_4
    sget-object v6, Lcom/android/server/am/SchedPolicyManager;->MODEL_NAME:Ljava/lang/String;

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/server/am/SchedPolicyManager;->MODEL_NAME:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    sget-object v6, Lcom/android/server/am/SchedPolicyManager;->MODEL_NUMBER:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Lcom/android/server/am/SchedPolicyManager;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    if-eqz v0, :cond_8

    const/4 v1, 0x0

    :cond_7
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_1

    :cond_9
    return v1
.end method

.method private needToUpdateScpm()Z
    .locals 13

    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/SchedPolicyManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "policyName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "SchedPolicy"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "policyVersion"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    const-wide/16 v10, 0x0

    if-eqz v12, :cond_1

    :try_start_1
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    :cond_1
    :goto_0
    :try_start_2
    const-string/jumbo v0, "SchedPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "needToUpdateScpm: policyName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , newVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , oldVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/SchedPolicyManager;->scpmVersion:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/server/am/SchedPolicyManager;->scpmVersion:J

    cmp-long v0, v10, v0

    if-lez v0, :cond_2

    iput-wide v10, p0, Lcom/android/server/am/SchedPolicyManager;->scpmVersion:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x1

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    const-string/jumbo v0, "SchedPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "needToUpdateScpm() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :catch_0
    move-exception v7

    :try_start_3
    const-string/jumbo v0, "SchedPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scpm version parsing err : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v7

    :try_start_4
    const-string/jumbo v0, "SchedPolicyManager"

    const-string/jumbo v1, "needToUpdateScpm: policy list is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private parseListToAddPolicy(Ljava/lang/String;Lcom/android/server/am/SchedPolicyManager$GroupPolicy;)V
    .locals 9

    const-string/jumbo v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "common"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/server/am/SchedPolicyManager;->mListGroupPolicy:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string/jumbo v6, "\\|"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    array-length v7, v5

    :goto_0
    if-ge v6, v7, :cond_6

    aget-object v4, v5, v6

    const/4 v1, 0x0

    const-string/jumbo v8, "pkg="

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v1, 0x1

    :goto_1
    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/server/am/SchedPolicyManager;->mPkgGroupPolicyMap:Ljava/util/Map;

    :goto_2
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v8, "prc="

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/server/am/SchedPolicyManager;->mProcGroupPolicyMap:Ljava/util/Map;

    goto :goto_2

    :cond_6
    return-void
.end method

.method static prepareManager(Lcom/android/server/am/ActivityManagerService;)Z
    .locals 1

    sget-object v0, Lcom/android/server/am/SchedPolicyManager;->manager:Lcom/android/server/am/SchedPolicyManager;

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Lcom/android/server/am/SchedPolicyManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/SchedPolicyManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/SchedPolicyManager;->manager:Lcom/android/server/am/SchedPolicyManager;

    const/4 v0, 0x1

    return v0
.end method

.method private registerDefaultInputMethodChanged()V
    .locals 5

    new-instance v0, Lcom/android/server/am/SchedPolicyManager$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/SchedPolicyManager$2;-><init>(Lcom/android/server/am/SchedPolicyManager;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/am/SchedPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_input_method"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/SchedPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private registerScpmReceiver()V
    .locals 6

    const/4 v4, 0x0

    new-instance v1, Lcom/android/server/am/SchedPolicyManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/am/SchedPolicyManager$3;-><init>(Lcom/android/server/am/SchedPolicyManager;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "sec.app.policy.UPDATE.SchedPolicy"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private updateScpm()V
    .locals 14

    const/4 v7, 0x0

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "item"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string/jumbo v0, "category"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string/jumbo v0, "data1"

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-string/jumbo v0, "data2"

    const/4 v1, 0x3

    aput-object v0, v2, v1

    const-string/jumbo v0, "data3"

    const/4 v1, 0x4

    aput-object v0, v2, v1

    const-string/jumbo v0, "data4"

    const/4 v1, 0x5

    aput-object v0, v2, v1

    const-string/jumbo v0, "data5"

    const/4 v1, 0x6

    aput-object v0, v2, v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/SchedPolicyManager;->SCPM_URI_TABLE_SCHED:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_5

    :cond_0
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v12, :cond_0

    if-eqz v6, :cond_0

    const-string/jumbo v0, "GroupPolicy-"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v12}, Lcom/android/server/am/SchedPolicyManager;->isInvokedModel(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/am/SchedPolicyManager;->createPolicyByCategory(Ljava/lang/String;)Lcom/android/server/am/SchedPolicyManager$GroupPolicy;

    move-result-object v13

    if-eqz v13, :cond_0

    const-string/jumbo v9, ""

    const/4 v11, 0x2

    :goto_3
    const/4 v0, 0x6

    if-gt v11, v0, :cond_3

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :catch_0
    move-exception v10

    const-string/jumbo v0, "SchedPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception with contentResolver : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    invoke-direct {p0, v9, v13}, Lcom/android/server/am/SchedPolicyManager;->parseListToAddPolicy(Ljava/lang/String;Lcom/android/server/am/SchedPolicyManager$GroupPolicy;)V

    goto/16 :goto_1

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const-string/jumbo v0, "SchedPolicyManager"

    const-string/jumbo v1, "updateScpm() working!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    :cond_5
    const-string/jumbo v0, "SchedPolicyManager"

    const-string/jumbo v1, "updateScpm() error, no database!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private updateScpmWithHandler()V
    .locals 3

    sget-boolean v1, Lcom/android/server/am/SchedPolicyManager;->DEBUG_CPUSET:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SchedPolicyManager"

    const-string/jumbo v2, "updateScpmWithHandler()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/am/SchedPolicyManager;->mScpmHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method applyPolicyToRecord(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mPkgGroupPolicyMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->listGroupPolicyPkg:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager;->mProcGroupPolicyMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->listGroupPolicyProc:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getSchedGroupByPolicy(Lcom/android/server/am/ProcessRecord;Z)I
    .locals 2

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/SchedPolicyManager;->getSchedGroupByPolicy(Lcom/android/server/am/ProcessRecord;ZII)I

    move-result v0

    return v0
.end method

.method getSchedGroupByPolicy(Lcom/android/server/am/ProcessRecord;ZII)I
    .locals 7

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->listGroupPolicyPkg:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->listGroupPolicyProc:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/SchedPolicyManager;->mListGroupPolicy:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    return p3

    :cond_0
    const/4 v3, -0x3

    const/4 v2, 0x5

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/SchedPolicyManager;->mListGroupPolicy:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->listGroupPolicyPkg:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->listGroupPolicyPkg:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->listGroupPolicyProc:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->listGroupPolicyProc:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;

    iget-boolean v6, v4, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->allowConnection:Z

    if-ne v6, p2, :cond_3

    iget-boolean v6, v4, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->isHighPriority:Z

    if-eqz v6, :cond_6

    if-nez v0, :cond_4

    const/4 v0, 0x1

    const/4 v3, -0x3

    const/4 v2, 0x5

    :cond_4
    iget v6, v4, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->condStateOver:I

    if-lt p4, v6, :cond_3

    iget v6, v4, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->condStateBelow:I

    if-gt p4, v6, :cond_3

    iget v6, v4, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->condGroupOver:I

    if-lt p3, v6, :cond_3

    iget v6, v4, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->condGroupBelow:I

    if-gt p3, v6, :cond_3

    iget v6, v4, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->actGroupMin:I

    if-ge v3, v6, :cond_5

    iget v3, v4, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->actGroupMin:I

    :cond_5
    iget v6, v4, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->actGroupMax:I

    if-le v2, v6, :cond_3

    iget v2, v4, Lcom/android/server/am/SchedPolicyManager$GroupPolicy;->actGroupMax:I

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_6
    if-eqz v0, :cond_4

    goto :goto_0

    :cond_7
    if-le p3, v2, :cond_8

    move p3, v2

    :cond_8
    if-ge p3, v3, :cond_9

    move p3, v3

    :cond_9
    return p3
.end method

.method public getStateByString(Ljava/lang/String;I)I
    .locals 3

    const/16 v2, 0x10

    const/4 v1, -0x1

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "MN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string/jumbo v0, "N"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string/jumbo v0, "P"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    const-string/jumbo v0, "PU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    const-string/jumbo v0, "T"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    return v0

    :cond_5
    const-string/jumbo v0, "SB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    return v0

    :cond_6
    const-string/jumbo v0, "SF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    return v0

    :cond_7
    const-string/jumbo v0, "TS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    return v0

    :cond_8
    const-string/jumbo v0, "IF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    return v0

    :cond_9
    const-string/jumbo v0, "IB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x7

    return v0

    :cond_a
    const-string/jumbo v0, "BU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x8

    return v0

    :cond_b
    const-string/jumbo v0, "HW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x9

    return v0

    :cond_c
    const-string/jumbo v0, "S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xa

    return v0

    :cond_d
    const-string/jumbo v0, "R"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0xb

    return v0

    :cond_e
    const-string/jumbo v0, "HO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xc

    return v0

    :cond_f
    const-string/jumbo v0, "LA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0xd

    return v0

    :cond_10
    const-string/jumbo v0, "CA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0xe

    return v0

    :cond_11
    const-string/jumbo v0, "Ca"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xf

    return v0

    :cond_12
    const-string/jumbo v0, "CE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v2

    :cond_13
    const-string/jumbo v0, "MX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v2

    :cond_14
    return p2
.end method
