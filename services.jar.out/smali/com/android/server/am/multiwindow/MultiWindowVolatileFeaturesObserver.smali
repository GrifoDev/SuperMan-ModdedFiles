.class public Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;
.super Ljava/lang/Object;
.source "MultiWindowVolatileFeaturesObserver.java"

# interfaces
.implements Lcom/android/server/am/multiwindow/MultiWindowFeaturesObserver;


# static fields
.field private static final sIntegerDefaultKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sVolatileFeaturesRepository:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sVolatileFeaturesToTypeMapForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mController:Lcom/android/server/am/MultiWindowFeaturesController;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sVolatileFeaturesRepository:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sVolatileFeaturesToTypeMapForUser:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sIntegerDefaultKeyMap:Ljava/util/Map;

    sget-object v0, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sVolatileFeaturesToTypeMapForUser:Ljava/util/Map;

    const-string/jumbo v1, "multi_window_enabled"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sIntegerDefaultKeyMap:Ljava/util/Map;

    const-string/jumbo v1, "multi_window_enabled"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/am/MultiWindowFeaturesController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->mController:Lcom/android/server/am/MultiWindowFeaturesController;

    return-void
.end method

.method private populate(Landroid/os/Bundle;Ljava/util/Map;I)Z
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;I)Z"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Class;

    const-class v20, Ljava/lang/String;

    move-object/from16 v0, v20

    if-ne v14, v0, :cond_2

    sget-object v20, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sVolatileFeaturesRepository:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    if-eqz v12, :cond_1

    const-string/jumbo v20, ""

    move/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    :goto_1
    if-eqz v17, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v17, ""

    goto :goto_1

    :cond_2
    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v14, v0, :cond_5

    sget-object v20, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sIntegerDefaultKeyMap:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_2
    sget-object v20, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sVolatileFeaturesRepository:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    if-eqz v10, :cond_4

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v16

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    goto :goto_3

    :cond_5
    sget-object v20, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v14, v0, :cond_7

    sget-object v20, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sVolatileFeaturesRepository:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    if-eqz v9, :cond_6

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v15

    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v20

    cmpl-float v20, v15, v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v15}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v15, 0x0

    goto :goto_4

    :cond_7
    sget-object v20, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v14, v0, :cond_0

    sget-object v20, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sVolatileFeaturesRepository:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    if-eqz v11, :cond_8

    const-wide/16 v20, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    cmp-long v20, v18, v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_8
    const-wide/16 v18, 0x0

    goto :goto_5

    :cond_9
    return v4
.end method


# virtual methods
.method synthetic lambda$-com_android_server_am_multiwindow_MultiWindowVolatileFeaturesObserver_6514(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->mController:Lcom/android/server/am/MultiWindowFeaturesController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFeaturesController;->notifyFeaturesChanged(I)V

    return-void
.end method

.method public populateFeatures(Landroid/os/Bundle;I)I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    sget-object v2, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sVolatileFeaturesToTypeMapForUser:Ljava/util/Map;

    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    or-int/lit8 v0, v1, 0x0

    return v0
.end method

.method public removeFeaturesForUser(I)V
    .locals 4

    sget-object v3, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sVolatileFeaturesRepository:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setFeature(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;IZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "IZZ)V"
        }
    .end annotation

    sget-object v5, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sVolatileFeaturesRepository:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const-class v5, Ljava/lang/String;

    if-ne p2, v5, :cond_3

    sget-object v5, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sVolatileFeaturesRepository:Ljava/util/Map;

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    const-class v5, Ljava/lang/String;

    if-ne p2, v5, :cond_7

    sget-object v5, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sVolatileFeaturesRepository:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v4, p4, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    if-eqz p5, :cond_2

    if-eqz p6, :cond_a

    iget-object v5, p0, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->mController:Lcom/android/server/am/MultiWindowFeaturesController;

    invoke-virtual {v5, p4}, Lcom/android/server/am/MultiWindowFeaturesController;->notifyFeaturesChanged(I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v5, :cond_4

    sget-object v5, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sVolatileFeaturesRepository:Ljava/util/Map;

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v5, :cond_5

    sget-object v5, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sVolatileFeaturesRepository:Ljava/util/Map;

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v5, :cond_6

    sget-object v5, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sVolatileFeaturesRepository:Ljava/util/Map;

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    return-void

    :cond_7
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v5, :cond_8

    sget-object v5, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sVolatileFeaturesRepository:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, p4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_8
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v5, :cond_9

    sget-object v5, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sVolatileFeaturesRepository:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, p4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_9
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v5, :cond_1

    sget-object v5, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->sVolatileFeaturesRepository:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, p4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    iget-object v5, p0, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/am/multiwindow/-$Lambda$SnY45q4PO3andfpNso3xIL7_WZU;

    invoke-direct {v6, p4, p0}, Lcom/android/server/am/multiwindow/-$Lambda$SnY45q4PO3andfpNso3xIL7_WZU;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2
.end method
