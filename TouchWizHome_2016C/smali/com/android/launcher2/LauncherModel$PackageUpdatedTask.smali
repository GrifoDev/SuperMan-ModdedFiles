.class Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUpdatedTask"
.end annotation


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_AVAILABLE:I = 0x4

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_SUSPEND:I = 0x6

.field public static final OP_UNAVAILABLE:I = 0x5

.field public static final OP_UNSUSPEND:I = 0x7

.field public static final OP_UPDATE:I = 0x2


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field mUser:Lcom/android/launcher2/compat/UserHandleCompat;

.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher2/compat/UserHandleCompat;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v22, v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/16 v28, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWorkFolder()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-static {v5, v4}, Lcom/android/launcher2/ManagedProfileHeuristic;->get(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/ManagedProfileHeuristic;

    move-result-object v28

    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_0
    const/16 v23, 0x0

    const/16 v41, 0x0

    const/16 v32, 0x0

    sget-boolean v4, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_2

    const-string v4, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update Size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v7, v7, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v7, v7, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v7, v7, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v7, v7, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v7, v7, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v7, v7, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v4, v4, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v0, v4, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v4, v4, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v0, v4, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v4, v4, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v0, v4, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    :cond_5
    sget-boolean v4, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_6

    const-string v4, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v7, v7, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v7, v7, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v7, v7, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v7, v7, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v7, v7, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v7, v7, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v29, 0x0

    :goto_1
    move/from16 v0, v29

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    aget-object v4, v36, v29

    aput-object v4, v27, v29

    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    :pswitch_0
    const/16 v29, 0x0

    :goto_2
    move/from16 v0, v29

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    sget-boolean v4, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_7

    const-string v4, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMenuAppLoader.updatePackage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v36, v29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    aget-object v6, v36, v29

    move-object/from16 v0, v21

    invoke-virtual {v4, v6, v0}, Lcom/android/launcher2/MenuAppLoader;->getPAIcachePackage(Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    aget-object v6, v36, v29

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/launcher2/MenuAppLoader;->updatePackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->createSkiplistByMetadata()Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    aget-object v6, v36, v29

    invoke-virtual {v4, v6}, Lcom/android/launcher2/MenuAppModel;->makeDisableAppListFromMeta(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$2200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/HomeLoader;

    move-result-object v4

    sget-object v6, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    aget-object v7, v36, v29

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual/range {v4 .. v12}, Lcom/android/launcher2/HomeLoader;->updatePackage(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/launcher2/compat/UserHandleCompat;)V

    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    :cond_a
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWorkFolder()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v28, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/android/launcher2/ManagedProfileHeuristic;->processPackageAdd([Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v11}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    :pswitch_1
    const/16 v29, 0x0

    :goto_3
    move/from16 v0, v29

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    sget-boolean v4, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_b

    const-string v4, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMenuAppLoader.removePackage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v36, v29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    aget-object v6, v36, v29

    move-object/from16 v0, v21

    invoke-virtual {v4, v6, v0}, Lcom/android/launcher2/MenuAppLoader;->getPAIcachePackage(Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    aget-object v6, v36, v29

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/MenuAppLoader;->removePackage(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$2200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/HomeLoader;

    move-result-object v4

    sget-object v6, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    aget-object v7, v36, v29

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v4, v6, v7, v8, v12}, Lcom/android/launcher2/HomeLoader;->removePackage(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Lcom/android/launcher2/compat/UserHandleCompat;)V

    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    :cond_c
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWorkFolder()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v28, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/android/launcher2/ManagedProfileHeuristic;->processPackageRemoved([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_e

    const/16 v16, 0x1

    :goto_4
    const/16 v29, 0x0

    :goto_5
    move/from16 v0, v29

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    sget-boolean v4, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_d

    const-string v4, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMenuAppLoader.updatePackageAvailability "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v36, v29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    aget-object v6, v36, v29

    move-object/from16 v0, v21

    invoke-virtual {v4, v6, v0}, Lcom/android/launcher2/MenuAppLoader;->getPAIcachePackage(Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    aget-object v6, v36, v29

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher2/compat/UserHandleCompat;

    move/from16 v0, v16

    invoke-virtual {v4, v5, v6, v0, v7}, Lcom/android/launcher2/MenuAppLoader;->updatePackageAvailability(Landroid/content/Context;Ljava/lang/String;ZLcom/android/launcher2/compat/UserHandleCompat;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$2200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/HomeLoader;

    move-result-object v12

    sget-object v14, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    aget-object v15, v36, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v20, v0

    move-object v13, v5

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v11

    invoke-virtual/range {v12 .. v20}, Lcom/android/launcher2/HomeLoader;->updatePackageAvailability(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/launcher2/compat/UserHandleCompat;)V

    add-int/lit8 v29, v29, 0x1

    goto :goto_5

    :cond_e
    const/16 v16, 0x0

    goto :goto_4

    :cond_f
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getWidgetLoader()Lcom/android/launcher2/MenuWidgetsLoader;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgetsLoader;->packageChanged([Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_10

    invoke-static {}, Lcom/android/launcher2/customer/PostPosition;->getInstance()Lcom/android/launcher2/customer/PostPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/customer/PostPosition;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, v36

    array-length v6, v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v6, :cond_10

    aget-object v37, v36, v4

    invoke-static {}, Lcom/android/launcher2/customer/PostPosition;->getInstance()Lcom/android/launcher2/customer/PostPosition;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v0, v37

    invoke-virtual {v7, v0, v12}, Lcom/android/launcher2/customer/PostPosition;->runHomeWidgetAdd(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_10
    if-nez v23, :cond_11

    if-eqz v41, :cond_12

    :cond_11
    move-object/from16 v24, v23

    move-object/from16 v42, v41

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v6, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v42

    invoke-direct {v6, v0, v1, v2}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, v6}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_12
    if-eqz v32, :cond_13

    move-object/from16 v33, v32

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v6, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v6, v0, v1}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/util/List;)V

    invoke-virtual {v4, v6}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1a

    :cond_14
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const/16 v34, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v6, v4, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    if-eqz v4, :cond_17

    new-instance v38, Ljava/util/HashSet;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-static {v0, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/launcher2/PkgResCache$CacheKey;

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/launcher2/PkgResCache$CacheKey;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mUser:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v4, v12}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/launcher2/PkgResCache$CacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    :goto_9
    or-int v34, v34, v4

    goto :goto_8

    :cond_15
    const/16 v34, 0x0

    goto :goto_7

    :cond_16
    const/4 v4, 0x0

    goto :goto_9

    :cond_17
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v34, :cond_19

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_19

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    array-length v12, v7

    const/4 v4, 0x0

    move v6, v4

    :goto_a
    if-ge v6, v12, :cond_19

    aget-object v37, v7, v6

    new-instance v4, Landroid/content/Intent;

    const-string v13, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/4 v13, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v13}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    const/4 v4, 0x1

    :goto_b
    or-int v34, v34, v4

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_a

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_18
    const/4 v4, 0x0

    goto :goto_b

    :cond_19
    if-eqz v34, :cond_1a

    new-instance v4, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_1a
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportPAI()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1c

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1b
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    const-string v47, "itemType = 1003 AND intent like ?"

    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v44, v0

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "%component="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "/%"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v44, v6

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    move-object/from16 v0, v47

    move-object/from16 v1, v44

    invoke-virtual {v6, v7, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v43

    sget-boolean v6, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v6, :cond_1b

    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PackageUpdateTask PAI cache delete, "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", result: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v43

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v4, v4, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    if-eqz v4, :cond_1e

    const-string v4, "Launcher.Model"

    const-string v6, "RefreshRequired"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_d
    return-void

    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v0, v4, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1f

    invoke-virtual/range {v35 .. v35}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_20

    :cond_1f
    const-string v4, "Launcher.Model"

    const-string v6, "Nobody to tell about the app changes. Launcher is not running."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_20
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v6, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v6, v0, v1, v9}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/lang/ref/WeakReference;Ljava/util/List;)V

    invoke-virtual {v4, v6}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_21
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v6, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v6, v0, v1, v8}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$5;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/lang/ref/WeakReference;Ljava/util/List;)V

    invoke-virtual {v4, v6}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_22
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v6, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v6, v0, v1, v10}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$6;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/lang/ref/WeakReference;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_23
    const-string v45, ""

    if-eqz v41, :cond_24

    const-string v45, "removed"

    move-object/from16 v31, v41

    :goto_e
    move-object/from16 v46, v45

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v6, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v46

    move-object/from16 v3, v31

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$7;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/LauncherModel$Callbacks;

    if-eqz v26, :cond_1d

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/PkgResCache$CacheKey;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/android/launcher2/PkgResCache$CacheKey;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/android/launcher2/PkgResCache$CacheKey;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    sget-object v13, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v26

    # invokes: Lcom/android/launcher2/LauncherModel;->addShortcutHomeOnly(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/LauncherModel$Callbacks;Lcom/android/launcher2/BaseItem$Type;)V
    invoke-static {v6, v7, v12, v0, v13}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/LauncherModel$Callbacks;Lcom/android/launcher2/BaseItem$Type;)V

    goto :goto_f

    :cond_24
    if-eqz v32, :cond_25

    const-string v45, "changed"

    move-object/from16 v31, v32

    goto :goto_e

    :cond_25
    if-eqz v23, :cond_26

    const-string v45, "added"

    move-object/from16 v31, v23

    goto :goto_e

    :cond_26
    const/16 v31, 0x0

    goto :goto_e

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
