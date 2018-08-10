.class Lcom/android/server/pm/PackageManagerService$EMPackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EMPackageHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerService$EMPackageHandler$1;
    }
.end annotation


# static fields
.field public static final EM_PKG_HADNLER_ID:Ljava/lang/String; = "EM_PKG_HADNLER_ID"

.field public static final ID_INVALID:I = -0x1


# instance fields
.field protected final TIMEOUT:J

.field protected emComponents:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected emCurrentPosition:I

.field protected emDontKillFlags:[Z

.field protected emID:I

.field protected emNewState:[I

.field protected emPackages:[Ljava/lang/String;

.field protected emPreviousID:I

.field protected emProgression:I

.field protected emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

.field protected emSize:I

.field protected emTotSize:I

.field protected emUids:[I

.field protected emUserId:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPreviousID:I

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->TIMEOUT:J

    new-instance v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler$1;-><init>(Lcom/android/server/pm/PackageManagerService$EMPackageHandler;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 15

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "EM_MAKE_PENDING_BROADCAST Start"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->initForPendingBroadcast(I)V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcastsForBurst:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcastsForBurst:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->size()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    if-gtz v2, :cond_0

    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pending size ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] EM_MAKE_PENDING_BROADCAST Cancel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emProgression:I

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    new-array v2, v2, [Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUids:[I

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emDontKillFlags:[Z

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emNewState:[I

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v14

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUids:[I

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emDontKillFlags:[Z

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emNewState:[I

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->-wrap27(Lcom/android/server/pm/PackageManagerService;[Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v14

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessage(I)Z

    :cond_1
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "EM_MAKE_PENDING_BROADCAST End"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v14

    throw v2

    :pswitch_1
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "EM_SEND_PENDING_BROADCAST Start"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->removeMessages(I)V

    :cond_2
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    if-lt v2, v3, :cond_4

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emProgression:I

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPreviousID:I

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SKIP EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED emPrevioudID["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPreviousID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] emID["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/4 v13, 0x0

    const/4 v10, 0x0

    :goto_1
    const/16 v2, 0xa

    if-ge v10, v2, :cond_c

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    if-ge v2, v3, :cond_c

    const/4 v11, 0x0

    const/4 v9, -0x1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object v13, v0

    if-eqz v13, :cond_5

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUserId:I

    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    :cond_5
    monitor-exit v3

    const/16 v2, 0x9

    if-eq v10, v2, :cond_6

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_7

    :cond_6
    const/4 v11, 0x1

    :cond_7
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emNewState:[I

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget v2, v2, v3

    if-ne v9, v2, :cond_9

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emProgression:I

    if-eqz v11, :cond_8

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x3

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emDontKillFlags:[Z

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-boolean v4, v4, v5

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUids:[I

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->-wrap62(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V

    :goto_2
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_8
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emDontKillFlags:[Z

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-boolean v4, v4, v5

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUids:[I

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget v6, v6, v7

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->-wrap62(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V

    goto :goto_2

    :cond_9
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SKIP EM_SEND_PENDING_BROADCAST ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] / ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] name["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] curr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]  now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emNewState:[I

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]  emUserId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    if-eq v10, v2, :cond_a

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_b

    :cond_a
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessage(I)Z

    :cond_b
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "EM_SEND_PENDING_BROADCAST End"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "EM_CHECK_TIMEOUT_OF_BROADCAST"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->resetTask()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "cancelEMHandlerSendPendingBroadcast : Nothing to do"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->removeMessages(I)V

    :cond_e
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->removeMessages(I)V

    :cond_f
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->removeMessages(I)V

    :cond_10
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "EM_CANCEL_SENDING_BROADCAST"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getProgressionOfPackageChanged()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emProgression:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method

.method public initForPendingBroadcast(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->makeNewID()V

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPreviousID:I

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUids:[I

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emDontKillFlags:[Z

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emNewState:[I

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    iput p1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUserId:I

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emProgression:I

    return-void
.end method

.method public isCanceled()Z
    .locals 2

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPreviousID:I

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public makeNewID()V
    .locals 3

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeNewID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetTask()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->makeNewID()V

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPreviousID:I

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUids:[I

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emDontKillFlags:[Z

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emNewState:[I

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emProgression:I

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "EMPackageHandler memory references are released"

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
