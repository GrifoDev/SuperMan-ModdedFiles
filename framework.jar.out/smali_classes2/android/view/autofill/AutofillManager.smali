.class public final Landroid/view/autofill/AutofillManager;
.super Ljava/lang/Object;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/AutofillManager$AutofillCallback;,
        Landroid/view/autofill/AutofillManager$AutofillClient;,
        Landroid/view/autofill/AutofillManager$AutofillManagerClient;,
        Landroid/view/autofill/AutofillManager$TrackedViews;
    }
.end annotation


# static fields
.field public static final ACTION_START_SESSION:I = 0x1

.field public static final ACTION_VALUE_CHANGED:I = 0x4

.field public static final ACTION_VIEW_ENTERED:I = 0x2

.field public static final ACTION_VIEW_EXITED:I = 0x3

.field private static final AUTHENTICATION_ID_DATASET_ID_MASK:I = 0xffff

.field private static final AUTHENTICATION_ID_DATASET_ID_SHIFT:I = 0x10

.field public static final AUTHENTICATION_ID_DATASET_ID_UNDEFINED:I = 0xffff

.field public static final EXTRA_ASSIST_STRUCTURE:Ljava/lang/String; = "android.view.autofill.extra.ASSIST_STRUCTURE"

.field public static final EXTRA_AUTHENTICATION_RESULT:Ljava/lang/String; = "android.view.autofill.extra.AUTHENTICATION_RESULT"

.field public static final EXTRA_CLIENT_STATE:Ljava/lang/String; = "android.view.autofill.extra.CLIENT_STATE"

.field public static final FLAG_ADD_CLIENT_DEBUG:I = 0x2

.field public static final FLAG_ADD_CLIENT_ENABLED:I = 0x1

.field public static final FLAG_ADD_CLIENT_VERBOSE:I = 0x4

.field static final LAST_AUTOFILLED_DATA_TAG:Ljava/lang/String; = "android:lastAutoFilledData"

.field public static final NO_SESSION:I = -0x80000000

.field static final SESSION_ID_TAG:Ljava/lang/String; = "android:sessionId"

.field private static final TAG:Ljava/lang/String; = "AutofillManager"


# instance fields
.field private mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mFillableIds:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private mLastAutofilledData:Landroid/view/autofill/ParcelableMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mService:Landroid/view/autofill/IAutoFillManager;

.field private mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mServiceClientCleaner:Lsun/misc/Cleaner;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSessionId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/View;)Landroid/view/autofill/AutofillId;
    .locals 1

    invoke-static {p0}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;
    .locals 1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method static synthetic -wrap11(Landroid/view/autofill/AutofillManager;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->setState(ZZZ)V

    return-void
.end method

.method static synthetic -wrap12(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->setTrackedViews(I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/view/autofill/AutofillManager;[Landroid/view/autofill/AutofillId;)[I
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getViewIds([Landroid/view/autofill/AutofillId;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/view/autofill/AutofillManager;Ljava/util/List;)[I
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getViewIds(Ljava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->autofill(ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/view/autofill/AutofillManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->finishSessionLocked()V

    return-void
.end method

.method static synthetic -wrap7(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/autofill/IAutoFillManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const-string/jumbo v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    return-void
.end method

.method private authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 3

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3, p4}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillCallbackAuthenticate(ILandroid/content/IntentSender;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private autofill(ILjava/util/List;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    move/from16 v16, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    monitor-exit v17

    return-void

    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-nez v3, :cond_1

    monitor-exit v17

    return-void

    :cond_1
    :try_start_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/view/autofill/AutofillManager;->getViewIds(Ljava/util/List;)[I

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->findViewsByAutofillIdTraversal([I)[Landroid/view/View;

    move-result-object v14

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_7

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillId;

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v5}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v13

    aget-object v12, v14, v4

    if-nez v12, :cond_2

    const-string/jumbo v16, "AutofillManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "autofill(): no View with id "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Landroid/view/autofill/AutofillId;->isVirtual()Z

    move-result v16

    if-eqz v16, :cond_5

    if-nez v15, :cond_3

    new-instance v15, Landroid/util/ArrayMap;

    const/16 v16, 0x1

    invoke-direct/range {v15 .. v16}, Landroid/util/ArrayMap;-><init>(I)V

    :cond_3
    invoke-virtual {v15, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    if-nez v11, :cond_4

    new-instance v11, Landroid/util/SparseArray;

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-direct {v11, v0}, Landroid/util/SparseArray;-><init>(I)V

    invoke-virtual {v15, v12, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v5}, Landroid/view/autofill/AutofillId;->getVirtualChildId()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v16

    monitor-exit v17

    throw v16

    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    move-object/from16 v16, v0

    if-nez v16, :cond_6

    new-instance v16, Landroid/view/autofill/ParcelableMap;

    sub-int v18, v6, v4

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/view/autofill/ParcelableMap;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v10}, Landroid/view/autofill/ParcelableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12, v10}, Landroid/view/View;->autofill(Landroid/view/autofill/AutofillValue;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10}, Landroid/view/autofill/AutofillManager;->setAutofilledIfValuesIs(Landroid/view/View;Landroid/view/autofill/AutofillValue;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    if-eqz v15, :cond_8

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v4, v0, :cond_8

    invoke-virtual {v15, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v15, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/view/View;->autofill(Landroid/util/SparseArray;)V

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v16

    add-int v8, v8, v16

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    new-instance v7, Landroid/metrics/LogMaker;

    const/16 v16, 0x391

    move/from16 v0, v16

    invoke-direct {v7, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v18, 0x392

    move/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v18, 0x393

    move/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v17

    return-void
.end method

.method private cancelSessionLocked()V
    .locals 4

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AutofillManager"

    const-string/jumbo v2, "cancelSessionLocked()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/autofill/IAutoFillManager;->cancelSession(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->resetSessionLocked()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private ensureServiceClientAddedIfNeededLocked()V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v7

    if-nez v7, :cond_0

    return-void

    :cond_0
    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    if-nez v7, :cond_1

    new-instance v7, Landroid/view/autofill/AutofillManager$AutofillManagerClient;

    invoke-direct {v7, p0}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;-><init>(Landroid/view/autofill/AutofillManager;)V

    iput-object v7, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    :try_start_0
    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v4

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v8, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v7, v8, v4}, Landroid/view/autofill/IAutoFillManager;->addClient(Landroid/view/autofill/IAutoFillManagerClient;I)I

    move-result v1

    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_2

    move v7, v5

    :goto_0
    iput-boolean v7, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    and-int/lit8 v7, v1, 0x2

    if-eqz v7, :cond_3

    move v7, v5

    :goto_1
    sput-boolean v7, Landroid/view/autofill/Helper;->sDebug:Z

    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_4

    :goto_2
    sput-boolean v5, Landroid/view/autofill/Helper;->sVerbose:Z

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    new-instance v5, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$3;

    invoke-direct {v5, v4, v2, v3}, Landroid/view/autofill/-$Lambda$6ub2tg3C-4hyczXTkY_CEW2ET8I$3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v5}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v5

    iput-object v5, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :cond_2
    move v7, v6

    goto :goto_0

    :cond_3
    move v7, v6

    goto :goto_1

    :cond_4
    move v5, v6

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method private findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private finishSessionLocked()V
    .locals 4

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AutofillManager"

    const-string/jumbo v2, "finishSessionLocked()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/autofill/IAutoFillManager;->finishSession(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;
    .locals 2

    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0}, Landroid/view/View;->getAutofillViewId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/autofill/AutofillId;-><init>(I)V

    return-object v0
.end method

.method private static getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;
    .locals 2

    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0}, Landroid/view/View;->getAutofillViewId()I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/view/autofill/AutofillId;-><init>(II)V

    return-object v0
.end method

.method private getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/view/autofill/AutofillManager$AutofillClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/view/autofill/AutofillManager$AutofillClient;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getComponentNameFromContext()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDatasetIdFromAuthenticationId(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static getRequestIdFromAuthenticationId(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method private getViewIds(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/autofill/AutofillId;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private getViewIds([Landroid/view/autofill/AutofillId;)[I
    .locals 4

    array-length v1, p1

    new-array v2, v1, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method static synthetic lambda$-android_view_autofill_AutofillManager_32561(Landroid/view/autofill/IAutoFillManager;Landroid/view/autofill/IAutoFillManagerClient;I)V
    .locals 1

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/view/autofill/IAutoFillManager;->removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static makeAuthenticationId(II)I
    .locals 2

    shl-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method private notifyNoFillUi(ILandroid/view/autofill/AutofillId;)V
    .locals 5

    const/4 v4, 0x3

    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v2, p1, :cond_1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtual()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->getVirtualChildId()I

    move-result v2

    invoke-virtual {v1, v0, v2, v4}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3
    invoke-virtual {v1, v0, v4}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private notifyViewEntered(Landroid/view/View;I)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x0

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v0, :cond_1

    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v7

    if-eqz v6, :cond_2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v3, p2}, Landroid/view/autofill/AutofillManager;->startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_4
    const/4 v2, 0x0

    const/4 v4, 0x2

    move-object v0, p0

    move v5, p2

    :try_start_2
    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x0

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v0, :cond_1

    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v7

    if-eqz v6, :cond_2

    const/4 v0, 0x3

    invoke-virtual {v6, p1, p2, v0}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v1

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    invoke-direct {p0, v1, p3, v0, p4}, Landroid/view/autofill/AutofillManager;->startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object v0, p0

    move-object v2, p3

    move v5, p4

    :try_start_2
    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private post(Ljava/lang/Runnable;)V
    .locals 3

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-nez v0, :cond_1

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AutofillManager"

    const-string/jumbo v2, "ignoring post() because client is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestHideFillUi(Landroid/view/autofill/AutofillId;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestHideFillUi("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): anchor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V

    return-void
.end method

.method private requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillCallbackRequestHideFillUi()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->isVirtual()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getVirtualChildId()I

    move-result v2

    invoke-virtual {v0, p2, v2, v4}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    invoke-virtual {v0, p2, v4}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 9

    const/4 v8, 0x1

    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x0

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v2, p1, :cond_1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-eqz v0, :cond_1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillCallbackRequestShowFillUi(Landroid/view/View;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v2, :cond_1

    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v7

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtual()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->getVirtualChildId()I

    move-result v2

    invoke-virtual {v6, v1, v2, v8}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v7

    throw v2

    :cond_3
    invoke-virtual {v6, v1, v8}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private resetSessionLocked()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    return-void
.end method

.method private setAutofilledIfValuesIs(Landroid/view/View;Landroid/view/autofill/AutofillValue;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/autofill/ParcelableMap;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/view/autofill/ParcelableMap;-><init>(I)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    :cond_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Landroid/view/autofill/ParcelableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-virtual {p1, v4}, Landroid/view/View;->setAutofilled(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private setState(ZZZ)V
    .locals 2

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->resetSessionLocked()V

    :cond_1
    if-eqz p3, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setTrackedViews(I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V
    .locals 5

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v1, p1, :cond_3

    if-eqz p3, :cond_1

    new-instance v1, Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-direct {v1, p0, p2}, Landroid/view/autofill/AutofillManager$TrackedViews;-><init>(Landroid/view/autofill/AutofillManager;[Landroid/view/autofill/AutofillId;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    :goto_0
    if-eqz p4, :cond_3

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/ArraySet;

    array-length v3, p4

    invoke-direct {v1, v3}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    :cond_0
    const/4 v1, 0x0

    array-length v3, p4

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, p4, v1

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    :try_start_1
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTrackedViews(): fillableIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mFillableIds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v2

    return-void
.end method

.method private startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V
    .locals 13

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSessionLocked(): id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getComponentNameFromContext()Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_1

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSessionLocked(): context is not activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v3}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v7

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v4, :cond_3

    const/4 v8, 0x1

    :goto_0
    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v9, p4

    invoke-interface/range {v1 .. v10}, Landroid/view/autofill/IAutoFillManager;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;)I

    move-result v1

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillCallbackResetableStateAvailable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    .locals 17

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    move/from16 v0, p4

    if-eq v0, v1, :cond_0

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSessionLocked(): id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_1

    const/16 v16, 0x1

    :goto_0
    if-eqz v16, :cond_6

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->getComponentNameFromContext()Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_2

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSessionLocked(): context is not activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v3}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v4, :cond_5

    const/4 v8, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v9, p5

    move/from16 v12, p4

    invoke-interface/range {v1 .. v12}, Landroid/view/autofill/IAutoFillManager;->updateOrRestartSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;II)I

    move-result v15

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq v15, v1, :cond_4

    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Session restarted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillCallbackResetableStateAvailable()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v8}, Landroid/view/autofill/IAutoFillManager;->updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v14

    invoke-virtual {v14}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public cancel()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelSessionLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public commit()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->finishSessionLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public disableAutofillServices()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/autofill/IAutoFillManager;->disableOwnedAutofillServices(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disableOwnedAutofillServices()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->disableAutofillServices()V

    return-void
.end method

.method public getFillEventHistory()Landroid/service/autofill/FillEventHistory;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1}, Landroid/view/autofill/IAutoFillManager;->getFillEventHistory()Landroid/service/autofill/FillEventHistory;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return-object v1
.end method

.method public hasAutofillFeature()Z
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnabledAutofillServices()Z
    .locals 4

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/autofill/IAutoFillManager;->isServiceEnabled(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAutofillSupported()Z
    .locals 3

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/autofill/IAutoFillManager;->isServiceSupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isEnabled()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notifyValueChanged(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAutofilled(Z)V

    :goto_0
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_5

    :cond_1
    monitor-exit v7

    return-void

    :cond_2
    :try_start_1
    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object v1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0, v1}, Landroid/view/autofill/ParcelableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    const/4 v6, 0x1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0, v1}, Landroid/view/autofill/ParcelableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAutofilled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setAutofilled(Z)V

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0, v1}, Landroid/view/autofill/ParcelableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAutofilled(Z)V

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object v1

    :cond_6
    if-nez v6, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    :cond_7
    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    return-void
.end method

.method public notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_2

    :cond_1
    monitor-exit v6

    return-void

    :cond_2
    :try_start_1
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public notifyViewEntered(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;I)V

    return-void
.end method

.method public notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V

    return-void
.end method

.method public notifyViewExited(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public notifyViewExited(Landroid/view/View;I)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public notifyViewVisibilityChange(Landroid/view/View;Z)V
    .locals 5

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_2

    if-nez p2, :cond_1

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Hidding UI when view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " became invisible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-virtual {v1, p1, p2}, Landroid/view/autofill/AutofillManager$TrackedViews;->notifyViewVisibilityChange(Landroid/view/View;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onAuthenticationResult(ILandroid/content/Intent;)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "AutofillManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAuthenticationResult(): d="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_2

    if-nez p2, :cond_3

    :cond_2
    monitor-exit v4

    return-void

    :cond_3
    :try_start_1
    const-string/jumbo v3, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v5, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-interface {v3, v1, v5, p1, v6}, Landroid/view/autofill/IAutoFillManager;->setAuthenticationResult(Landroid/os/Bundle;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v4

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v3, "AutofillManager"

    const-string/jumbo v5, "Error delivering authentication result"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/high16 v6, -0x80000000

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "android:lastAutoFilledData"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/ParcelableMap;

    iput-object v3, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq v3, v6, :cond_1

    const-string/jumbo v3, "AutofillManager"

    const-string/jumbo v5, "New session was started before onCreate()"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v3, "android:sessionId"

    const/high16 v5, -0x80000000

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq v3, v6, :cond_2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v5, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v7}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Landroid/view/autofill/IAutoFillManager;->restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v3, "AutofillManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " could not be restored"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v3, -0x80000000

    iput v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v4

    return-void

    :cond_3
    :try_start_3
    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "AutofillManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " was restored"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillCallbackResetableStateAvailable()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    const-string/jumbo v3, "AutofillManager"

    const-string/jumbo v5, "Could not figure out if there was an autofill session"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    const-string/jumbo v0, "android:sessionId"

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "android:lastAutoFilledData"

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onVisibleForAutofill()V
    .locals 3

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager$TrackedViews;->onVisibleForAutofillLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-nez p1, :cond_1

    monitor-exit v3

    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :goto_0
    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :try_start_1
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v4, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v5, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    const/4 v6, 0x1

    invoke-interface {v2, v4, v5, v6}, Landroid/view/autofill/IAutoFillManager;->setHasCallback(IIZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v3

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public requestAutofill(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;I)V

    return-void
.end method

.method public requestAutofill(Landroid/view/View;ILandroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V

    return-void
.end method

.method public unregisterCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :cond_1
    monitor-exit v2

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/view/autofill/IAutoFillManager;->setHasCallback(IIZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
