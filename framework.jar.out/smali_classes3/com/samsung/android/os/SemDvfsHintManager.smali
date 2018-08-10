.class Lcom/samsung/android/os/SemDvfsHintManager;
.super Lcom/samsung/android/os/SemDvfsManager;
.source "SemDvfsHintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/os/SemDvfsHintManager$1;
    }
.end annotation


# instance fields
.field private ACTION_RESOLUTION_CHANGED:Ljava/lang/String;

.field final APP_LAUNCH_BOOSTING_TIMEOUT_L:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_LL:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_LM:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_M:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_S:I

.field mAppLaunchBoostTime:I

.field private final mAppLaunchPackages:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mHint:Ljava/lang/String;

.field private mHintList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/os/SemDvfsManager;",
            ">;"
        }
    .end annotation
.end field

.field private mHintTimeout:I

.field private mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

.field mTagName:Ljava/lang/String;

.field mType:I

.field private volatile sCfmsService:Landroid/os/ICustomFrequencyManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, -0x1

    const/16 v5, 0x1c

    const/4 v2, 0x0

    const/16 v4, 0x13

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mTagName:Ljava/lang/String;

    const/16 v1, 0xfa0

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_LL:I

    const/16 v1, 0x7d0

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_L:I

    const/16 v1, 0xbb8

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_LM:I

    const/16 v1, 0x1f4

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_S:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_M:I

    iput v3, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mType:I

    iput v6, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchBoostTime:I

    iput v3, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string/jumbo v1, "com.samsung.ssrm.RESOLUTION_CHANGED"

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->ACTION_RESOLUTION_CHANGED:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/os/SemDvfsHintManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/os/SemDvfsHintManager$1;-><init>(Lcom/samsung/android/os/SemDvfsHintManager;)V

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/16 v2, 0x1e

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/16 v2, 0x15

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-array v2, v5, [I

    fill-array-data v2, :array_4

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-array v2, v5, [I

    fill-array-data v2, :array_7

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const/16 v2, 0x19

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const/16 v2, 0x19

    new-array v2, v2, [I

    fill-array-data v2, :array_9

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const/16 v2, 0x17

    new-array v2, v2, [I

    fill-array-data v2, :array_a

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_b

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_c

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const/16 v2, 0x12

    new-array v2, v2, [I

    fill-array-data v2, :array_d

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_e

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchPackages:[Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mContext:Landroid/content/Context;

    const-class v1, Lcom/samsung/android/os/SemDvfsHintManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/os/SemDvfsHintManager;->createHintNotifier(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->ACTION_RESOLUTION_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0x9
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x54
        0x19
        0x12
        0x8
        0x15
        0x17
        0x1f
    .end array-data

    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x17
    .end array-data

    :array_4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1f
        0x17
        0x1b
        0x13
        0x16
        0x54
        0xf
        0x13
    .end array-data

    :array_5
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0x1b
        0x19
        0x1f
        0x18
        0x15
        0x15
        0x11
        0x54
        0x11
        0x1b
        0xe
        0x1b
        0x14
        0x1b
    .end array-data

    :array_6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x1f
        0x14
        0x1e
        0x13
        0x14
        0x1d
    .end array-data

    :array_7
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1f
        0xc
        0x1f
        0x8
        0x1d
        0x16
        0x1b
        0x1e
        0x1f
        0x9
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    :array_8
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    :array_9
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x1b
        0x16
        0x16
        0x1f
        0x8
        0x3
        0x49
        0x1e
    .end array-data

    :array_a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x17
        0x1b
        0xa
        0x9
    .end array-data

    :array_b
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x1f
        0x1b
        0x8
        0x19
        0x12
    .end array-data

    :array_c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x13
        0x14
        0x1b
        0x54
        0xd
        0x1f
        0x13
        0x18
        0x15
    .end array-data

    :array_d
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x38
        0x1b
        0x13
        0x1e
        0xf
        0x37
        0x1b
        0xa
    .end array-data

    :array_e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0xd
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/16 v4, 0x1c

    const/4 v1, 0x0

    const/16 v3, 0x13

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mTagName:Ljava/lang/String;

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_LL:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_L:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_LM:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_S:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_M:I

    iput v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mType:I

    iput v5, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchBoostTime:I

    iput v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string/jumbo v0, "com.samsung.ssrm.RESOLUTION_CHANGED"

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->ACTION_RESOLUTION_CHANGED:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/os/SemDvfsHintManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/os/SemDvfsHintManager$1;-><init>(Lcom/samsung/android/os/SemDvfsHintManager;)V

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x1e

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x15

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_4

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_7

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x19

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x19

    new-array v1, v1, [I

    fill-array-data v1, :array_9

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0x17

    new-array v1, v1, [I

    fill-array-data v1, :array_a

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_c

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v1, 0x12

    new-array v1, v1, [I

    fill-array-data v1, :array_d

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchPackages:[Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mContext:Landroid/content/Context;

    const-class v0, Lcom/samsung/android/os/SemDvfsHintManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/os/SemDvfsHintManager;->createHintNotifier(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0x9
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x54
        0x19
        0x12
        0x8
        0x15
        0x17
        0x1f
    .end array-data

    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x17
    .end array-data

    :array_4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1f
        0x17
        0x1b
        0x13
        0x16
        0x54
        0xf
        0x13
    .end array-data

    :array_5
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0x1b
        0x19
        0x1f
        0x18
        0x15
        0x15
        0x11
        0x54
        0x11
        0x1b
        0xe
        0x1b
        0x14
        0x1b
    .end array-data

    :array_6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x1f
        0x14
        0x1e
        0x13
        0x14
        0x1d
    .end array-data

    :array_7
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1f
        0xc
        0x1f
        0x8
        0x1d
        0x16
        0x1b
        0x1e
        0x1f
        0x9
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    :array_8
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    :array_9
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x1b
        0x16
        0x16
        0x1f
        0x8
        0x3
        0x49
        0x1e
    .end array-data

    :array_a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x17
        0x1b
        0xa
        0x9
    .end array-data

    :array_b
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x1f
        0x1b
        0x8
        0x19
        0x12
    .end array-data

    :array_c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x13
        0x14
        0x1b
        0x54
        0xd
        0x1f
        0x13
        0x18
        0x15
    .end array-data

    :array_d
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x38
        0x1b
        0x13
        0x1e
        0xf
        0x37
        0x1b
        0xa
    .end array-data

    :array_e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0xd
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
    .end array-data
.end method

.method private createHintNotifier(Landroid/content/Context;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v12, :cond_2

    :try_start_0
    const-string/jumbo v12, "CustomFrequencyManagerService"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v12, :cond_2

    return-void

    :catch_0
    move-exception v4

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v13, "createHintNotifier:: failed to get cfms service."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v12, :cond_2

    return-void

    :catchall_0
    move-exception v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v13, :cond_1

    return-void

    :cond_1
    throw v12

    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/os/SemDvfsHintManager;->mHint:Ljava/lang/String;

    const/4 v10, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Landroid/os/ICustomFrequencyManager;->getDvfsPolicyByHint(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    :goto_0
    if-eqz v10, :cond_13

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    const-string/jumbo v8, ""

    const/4 v12, 0x1

    new-array v5, v12, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v12, v5, v13

    const-string/jumbo v12, "CPU_MIN"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    new-instance v9, Lcom/samsung/android/os/SemDvfsCpuManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "@CPU_MIN"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xc

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v12, v13}, Lcom/samsung/android/os/SemDvfsCpuManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v8, "CPU"

    invoke-virtual {v9}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v5

    :cond_4
    :goto_2
    if-eqz v9, :cond_3

    const-string/jumbo v12, "max"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string/jumbo v12, "0"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    :cond_5
    if-eqz v5, :cond_6

    const/4 v12, 0x0

    aget v12, v5, v12

    invoke-virtual {v9, v12}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v12, :cond_7

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Max_hint : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", moduleName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", freq = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget v14, v5, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", timeOut = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_1
    move-exception v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v13, "createHintNotifier:: failed to call getDvfsPolicyByHint."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v12, "GPU_MIN"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    new-instance v9, Lcom/samsung/android/os/SemDvfsGpuManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "@GPU_MIN"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x10

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v12, v13}, Lcom/samsung/android/os/SemDvfsGpuManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v8, "GPU"

    invoke-virtual {v9}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v5

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v12, "BUS_MIN"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    const-string/jumbo v8, "BUS"

    new-instance v9, Lcom/samsung/android/os/SemDvfsBusManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "@BUS_MIN"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x13

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v12, v13}, Lcom/samsung/android/os/SemDvfsBusManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v9}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v5

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v12, "CORE_NUM_MIN"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    new-instance v9, Lcom/samsung/android/os/SemDvfsCpuCoreManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "@CORE_NUM_MIN"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xe

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v12, v13}, Lcom/samsung/android/os/SemDvfsCpuCoreManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v8, "CORE_NUM"

    invoke-virtual {v9}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v5

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v12, "POWER_COLLAPSE"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    new-instance v9, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "@POWER_COLLAPSE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x17

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v12, v13}, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v8, "POWER_COLLAPSE"

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v12, "SCHEDTUNE_POLICY"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    new-instance v9, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "@SCHEDTUNE_POLICY"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x1d

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v12, v13}, Lcom/samsung/android/os/SemDvfsSchedTunePolicyManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v8, "SCHEDTUNE_POLICY"

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v12, "LPM_BIAS"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    new-instance v9, Lcom/samsung/android/os/SemDvfsLpmBiasManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "@LPM_BIAS"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x1e

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v12, v13}, Lcom/samsung/android/os/SemDvfsLpmBiasManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v8, "LPM_BIAS"

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v12, "timeout"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    const-string/jumbo v12, "CPU"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    const-string/jumbo v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    invoke-virtual {v9, v12, v13}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "hint(%) : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", moduleName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", freq = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "%"

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v11, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v14, v14, v16

    invoke-virtual {v9, v14, v15}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", timeOut = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_10
    const-string/jumbo v12, "GPU"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    const-string/jumbo v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    invoke-virtual {v9, v12, v13}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "hint(%) : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", moduleName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", freq = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "%"

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v11, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v14, v14, v16

    invoke-virtual {v9, v14, v15}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", timeOut = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_11
    const-string/jumbo v12, "BUS"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string/jumbo v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    invoke-virtual {v9, v12, v13}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "hint(%) : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", moduleName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", freq = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "%"

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v11, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v14, v14, v16

    invoke-virtual {v9, v14, v15}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", timeOut = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_12
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyForSsrm(I)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "hint(Normal) : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", moduleName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", freq = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", timeOut = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_13
    return-void
.end method

.method private isPackageExistInAppLaunch(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchPackages:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private x([I)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget v2, p1, v0

    xor-int/lit8 v2, v2, 0x7a

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public acquire()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsHintManager;->acquire(I)V

    return-void
.end method

.method public acquire(I)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/os/SemDvfsManager;

    const-string/jumbo v2, "CPU"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "CPU_CORE"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "GPU"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "BUS"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "SCHEDTUNE_POLICY"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "POWER_COLLAPSE"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "LPM_BIAS"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    iget v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public acquire(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchBoostTime:I

    const-string/jumbo v2, "com.sec.android.app.camera"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x3e8

    iput v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchBoostTime:I

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/os/SemDvfsManager;

    const-string/jumbo v2, "CPU"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "CPU_CORE"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "GPU"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "BUS"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "SCHEDTUNE_POLICY"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "POWER_COLLAPSE"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "LPM_BIAS"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    iget v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    iget v3, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchBoostTime:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/os/SemDvfsHintManager;->isPackageExistInAppLaunch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xbb8

    iput v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchBoostTime:I

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public clearDvfsValue()V
    .locals 1

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mDvfsValue:I

    return-void
.end method

.method public getApproximateFrequencyByPercentForSSRM(D)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public release()V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/os/SemDvfsManager;

    const-string/jumbo v2, "CPU"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "CPU_CORE"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "GPU"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "BUS"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "SCHEDTUNE_POLICY"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "POWER_COLLAPSE"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "LPM_BIAS"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setDvfsValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mDvfsValue:I

    return-void
.end method

.method public setDvfsValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setValueAtUpdate(Lcom/samsung/android/os/SemDvfsManager;[ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    const-string/jumbo v0, "CPU"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CPU_CORE"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GPU"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "BUS"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SCHEDTUNE_POLICY"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "POWER_COLLAPSE"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LPM_BIAS"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object p2

    :cond_1
    const-string/jumbo v0, "max"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "0"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    if-eqz p2, :cond_3

    aget v0, p2, v3

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValueAtUpdateHint Max_hint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mgr.getName() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", timeOut = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string/jumbo v0, "%"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "CPU"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "%"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    div-double/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-boolean v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValueAtUpdateHint(%) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mgr.getName() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    div-double/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", timeOut = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "GPU"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "%"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    div-double/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-boolean v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValueAtUpdateHint(%) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mgr.getName() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    div-double/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", timeOut = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "BUS"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "%"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    div-double/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-boolean v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValueAtUpdateHint(%) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mgr.getName() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    div-double/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", timeOut = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyForSsrm(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-boolean v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValueAtUpdateHint(Normal) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mgr.getName() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", timeOut = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public update(Landroid/content/Context;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v14, :cond_2

    :try_start_0
    const-string/jumbo v14, "CustomFrequencyManagerService"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v14, :cond_2

    return-void

    :catch_0
    move-exception v4

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v15, "createHintNotifier:: failed to get cfms service."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v14, :cond_2

    return-void

    :catchall_0
    move-exception v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v15, :cond_1

    return-void

    :cond_1
    throw v14

    :cond_2
    const/4 v12, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/ICustomFrequencyManager;->getDvfsPolicyByHint(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v12

    :goto_0
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v11, ""

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Check Updatehint update Key : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", value : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/os/SemDvfsManager;

    const/4 v14, 0x1

    new-array v5, v14, [I

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v14, v5, v15

    const-string/jumbo v8, ""

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    :cond_6
    invoke-virtual {v9}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v9, v5, v13, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->setValueAtUpdate(Lcom/samsung/android/os/SemDvfsManager;[ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sIsDebugLevelHigh:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Updatehint update Key : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", mgr.getName() : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_1
    move-exception v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v15, "createHintNotifier:: failed to call getDvfsPolicyByHint."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    return-void
.end method
