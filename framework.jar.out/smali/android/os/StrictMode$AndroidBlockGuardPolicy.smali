.class Landroid/os/StrictMode$AndroidBlockGuardPolicy;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Ldalvik/system/BlockGuard$Policy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidBlockGuardPolicy"
.end annotation


# instance fields
.field private mLastViolationTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyMask:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    return-void
.end method


# virtual methods
.method public getPolicyMask()I
    .locals 1

    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    return v0
.end method

.method handleViolation(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 23

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    :cond_0
    const-string/jumbo v20, "StrictMode"

    const-string/jumbo v21, "unexpected null stacktrace"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    invoke-static {}, Landroid/os/StrictMode;->-get1()Z

    move-result v20

    if-eqz v20, :cond_2

    const-string/jumbo v20, "StrictMode"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "handleViolation; policy="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v20, v0

    const/high16 v21, 0x400000

    and-int v20, v20, v21

    if-eqz v20, :cond_7

    invoke-static {}, Landroid/os/StrictMode;->-get2()Ljava/lang/ThreadLocal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    if-nez v18, :cond_5

    new-instance v18, Ljava/util/ArrayList;

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Landroid/os/StrictMode;->-get2()Ljava/lang/ThreadLocal;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v7, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    return-void

    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    return-void

    :cond_6
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/StrictMode$ViolationInfo;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    if-eqz v19, :cond_8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :cond_8
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-nez v20, :cond_d

    const-wide v14, 0x7fffffffffffffffL

    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v20, v0

    const/high16 v21, 0x10000

    and-int v20, v20, v21

    if-eqz v20, :cond_9

    const-wide/16 v20, 0x3e8

    cmp-long v20, v14, v20

    if-lez v20, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    const-string/jumbo v20, "StrictMode"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "StrictMode policy violation; ~duration="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " ms: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v20, v0

    const/high16 v21, 0x20000

    and-int v20, v20, v21

    if-eqz v20, :cond_a

    const-wide/16 v20, 0x7530

    cmp-long v20, v14, v20

    if-lez v20, :cond_a

    const/high16 v17, 0x20000

    :cond_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v20, v0

    const/high16 v21, 0x200000

    and-int v20, v20, v21

    if-eqz v20, :cond_b

    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-nez v20, :cond_b

    const/high16 v20, 0x200000

    or-int v17, v17, v20

    :cond_b
    if-eqz v17, :cond_11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/os/StrictMode;->-wrap1(Ljava/lang/String;)I

    move-result v16

    or-int v17, v17, v16

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v13

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v20, v0

    const/high16 v21, 0x1770000

    and-int v20, v20, v21

    const/high16 v21, 0x200000

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    const/4 v6, 0x1

    :goto_3
    if-eqz v6, :cond_10

    move/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/os/StrictMode;->-wrap2(ILandroid/os/StrictMode$ViolationInfo;)V

    return-void

    :cond_c
    new-instance v20, Landroid/util/ArrayMap;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/util/ArrayMap;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    goto/16 :goto_0

    :cond_d
    sub-long v14, v10, v8

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v20, "StrictMode"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "StrictMode policy violation: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_f
    const/4 v6, 0x0

    goto :goto_3

    :cond_10
    const/16 v20, 0x0

    :try_start_0
    invoke-static/range {v20 .. v20}, Landroid/os/StrictMode;->-wrap4(I)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v20

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v17

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v13}, Landroid/os/StrictMode;->-wrap4(I)V

    :cond_11
    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v20, v0

    const/high16 v21, 0x40000

    and-int v20, v20, v21

    if-eqz v20, :cond_12

    invoke-static/range {p1 .. p1}, Landroid/os/StrictMode;->-wrap3(Landroid/os/StrictMode$ViolationInfo;)V

    :cond_12
    return-void

    :catch_0
    move-exception v5

    :try_start_1
    instance-of v0, v5, Landroid/os/DeadObjectException;

    move/from16 v20, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v20, :cond_13

    :goto_5
    invoke-static {v13}, Landroid/os/StrictMode;->-wrap4(I)V

    goto :goto_4

    :cond_13
    :try_start_2
    const-string/jumbo v20, "StrictMode"

    const-string/jumbo v21, "RemoteException trying to handle StrictMode violation"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v20

    invoke-static {v13}, Landroid/os/StrictMode;->-wrap4(I)V

    throw v20
.end method

.method handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v4, p1, Landroid/os/StrictMode$ViolationInfo;->policy:I

    const/high16 v5, 0x1770000

    and-int/2addr v4, v5

    const/high16 v5, 0x40000

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v4, -0x1

    iput v4, p1, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {p0, p1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolation(Landroid/os/StrictMode$ViolationInfo;)V

    return-void

    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->-get8()Ljava/lang/ThreadLocal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_3

    return-void

    :cond_3
    iget v4, p1, Landroid/os/StrictMode$ViolationInfo;->policy:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    invoke-static {}, Landroid/os/StrictMode;->-get6()Landroid/util/Singleton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/IWindowManager;

    move-object v3, v4

    :cond_4
    if-eqz v3, :cond_5

    const/4 v4, 0x1

    :try_start_0
    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->showStrictModeViolation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    invoke-static {}, Landroid/os/StrictMode;->-get7()Ljava/lang/ThreadLocal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    new-instance v5, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;

    invoke-direct {v5, p0, v3, v1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;-><init>(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Landroid/view/IWindowManager;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method onCustomSlowCall(Ljava/lang/String;)V
    .locals 2

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->-wrap0()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/os/StrictMode$StrictModeCustomViolation;

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-direct {v0, v1, p1}, Landroid/os/StrictMode$StrictModeCustomViolation;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    return-void
.end method

.method public onNetwork()V
    .locals 3

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v1}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw v1

    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->-wrap0()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-instance v0, Landroid/os/StrictMode$StrictModeNetworkViolation;

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeNetworkViolation;-><init>(I)V

    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    return-void
.end method

.method public onReadFromDisk()V
    .locals 2

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->-wrap0()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/os/StrictMode$StrictModeDiskReadViolation;

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeDiskReadViolation;-><init>(I)V

    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    return-void
.end method

.method onResourceMismatch(Ljava/lang/Object;)V
    .locals 2

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->-wrap0()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/os/StrictMode$StrictModeResourceMismatchViolation;

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-direct {v0, v1, p1}, Landroid/os/StrictMode$StrictModeResourceMismatchViolation;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    return-void
.end method

.method public onWriteToDisk()V
    .locals 2

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->-wrap0()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/os/StrictMode$StrictModeDiskWriteViolation;

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeDiskWriteViolation;-><init>(I)V

    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    return-void
.end method

.method public setPolicyMask(I)V
    .locals 0

    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    return-void
.end method

.method startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V
    .locals 4

    new-instance v0, Landroid/os/StrictMode$ViolationInfo;

    invoke-virtual {p1}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->getPolicy()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Ljava/lang/Throwable;I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AndroidBlockGuardPolicy; mPolicyMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
