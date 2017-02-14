.class public Lcom/android/settings/applications/AppOpsState;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppOpsState$1;,
        Lcom/android/settings/applications/AppOpsState$2;,
        Lcom/android/settings/applications/AppOpsState$AppEntry;,
        Lcom/android/settings/applications/AppOpsState$AppOpEntry;,
        Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    }
.end annotation


# static fields
.field public static final ALL_TEMPLATES:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final DEVICE_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final LABEL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCATION_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final MEDIA_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final MESSAGING_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final PERSONAL_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final RECENCY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;


# instance fields
.field final mAppOps:Landroid/app/AppOpsManager;

.field final mContext:Landroid/content/Context;

.field final mOpLabels:[Ljava/lang/CharSequence;

.field final mOpSummaries:[Ljava/lang/CharSequence;

.field final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v2, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    new-array v2, v2, [Z

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v5, [I

    fill-array-data v1, :array_2

    new-array v2, v5, [Z

    fill-array-data v2, :array_3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v6, [I

    fill-array-data v1, :array_4

    new-array v2, v6, [Z

    fill-array-data v2, :array_5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    const/16 v2, 0xe

    new-array v2, v2, [Z

    fill-array-data v2, :array_7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    const/16 v2, 0xa

    new-array v2, v2, [Z

    fill-array-data v2, :array_9

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v4, [I

    const/16 v2, 0x3f

    aput v2, v1, v3

    new-array v2, v4, [Z

    aput-boolean v3, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    sget-object v1, Lcom/android/settings/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/AppOpsState;->RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->ALL_TEMPLATES:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-instance v0, Lcom/android/settings/applications/AppOpsState$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppOpsState$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->RECENCY_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings/applications/AppOpsState$2;

    invoke-direct {v0}, Lcom/android/settings/applications/AppOpsState$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->LABEL_COMPARATOR:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0xa
        0xc
        0x29
        0x2a
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x1d
        0x1e
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 4
        0xe
        0x10
        0x11
        0x12
        0x13
        0xf
        0x14
        0x15
        0x16
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_6
    .array-data 4
        0x3
        0x1a
        0x1b
        0x1c
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x2c
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_8
    .array-data 4
        0xb
        0x19
        0xd
        0x17
        0x18
        0x28
        0x2e
        0x2f
        0x31
        0x32
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/AppOpsState;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mOpSummaries:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    return-void
.end method

.method private addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;",
            "Landroid/app/AppOpsManager$PackageOps;",
            "Lcom/android/settings/applications/AppOpsState$AppEntry;",
            "Landroid/app/AppOpsManager$OpEntry;",
            "ZI)V"
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    if-eqz p5, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    invoke-virtual {v2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v4

    if-ne v4, p3, :cond_2

    invoke-virtual {v2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-ne v3, v1, :cond_2

    invoke-virtual {v2, p4}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v4

    invoke-virtual {p3, v4}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getOpSwitch(I)Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p4}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    return-void

    :cond_3
    new-instance v0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    invoke-direct {v0, p2, p4, p3, p6}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;-><init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/settings/applications/AppOpsState$AppEntry;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/AppOpsState$AppEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/AppOpsState$AppEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Lcom/android/settings/applications/AppOpsState$AppEntry;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppOpsState$AppEntry;

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2200

    invoke-virtual {v2, p3, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    :cond_0
    new-instance v0, Lcom/android/settings/applications/AppOpsState$AppEntry;

    invoke-direct {v0, p0, p4}, Lcom/android/settings/applications/AppOpsState$AppEntry;-><init>(Lcom/android/settings/applications/AppOpsState;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/AppOpsState$AppEntry;->loadLabel(Landroid/content/Context;)V

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AppOpsState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to find info for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method


# virtual methods
.method public buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/AppOpsState$OpsTemplate;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/applications/AppOpsState;->RECENCY_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/settings/applications/AppOpsState;->buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;Ljava/util/Comparator;)Ljava/util/List;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/AppOpsState$OpsTemplate;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsState;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x41

    new-array v0, v3, [I

    move-object/from16 v26, v0

    const/16 v23, 0x0

    :goto_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    array-length v3, v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->showPerms:[Z

    aget-boolean v3, v3, v23

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v23

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v23

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v23

    aput v23, v26, v3

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v1, v8}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v32

    :goto_2
    if-eqz v32, :cond_8

    const/16 v23, 0x0

    :goto_3
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_8

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/settings/applications/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v6

    if-nez v6, :cond_5

    :cond_3
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    invoke-virtual {v3, v8}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v32

    goto :goto_2

    :cond_5
    const/16 v24, 0x0

    :goto_4
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_3

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v3

    move/from16 v0, v24

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$OpEntry;

    if-nez p3, :cond_6

    const/4 v8, 0x1

    :goto_5
    if-nez p3, :cond_7

    const/4 v9, 0x0

    :goto_6
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/settings/applications/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v3

    aget v9, v26, v3

    goto :goto_6

    :cond_8
    if-eqz p3, :cond_a

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v8, 0x1000

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    const/16 v23, 0x0

    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_13

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/settings/applications/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v6

    if-nez v6, :cond_b

    :cond_9
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    :cond_a
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v3, v0, v8}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v19

    goto :goto_7

    :cond_b
    const/16 v21, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_9

    const/16 v24, 0x0

    :goto_9
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_9

    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v3, :cond_d

    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v24

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_d

    :cond_c
    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    :cond_d
    const/16 v25, 0x0

    :goto_a
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v25

    if-ge v0, v3, :cond_c

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v8, v8, v24

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_e
    :goto_b
    add-int/lit8 v25, v25, 0x1

    goto :goto_a

    :cond_f
    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/android/settings/applications/AppOpsState$AppEntry;->hasOp(I)Z

    move-result v3

    if-nez v3, :cond_e

    if-nez v21, :cond_10

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Landroid/app/AppOpsManager$PackageOps;

    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v21

    invoke-direct {v5, v3, v8, v0}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    :cond_10
    new-instance v7, Landroid/app/AppOpsManager$OpEntry;

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    invoke-direct/range {v7 .. v16}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_11

    const/4 v8, 0x1

    :goto_c
    if-nez p3, :cond_12

    const/4 v9, 0x0

    :goto_d
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/settings/applications/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    goto :goto_b

    :cond_11
    const/4 v8, 0x0

    goto :goto_c

    :cond_12
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v3

    aget v9, v26, v3

    goto :goto_d

    :cond_13
    move-object/from16 v0, p4

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v4

    :catch_0
    move-exception v22

    goto/16 :goto_7
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method
