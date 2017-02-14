.class public Lcom/android/server/os/SchedulingPolicyService;
.super Landroid/os/ISchedulingPolicyService$Stub;
.source "SchedulingPolicyService.java"


# static fields
.field private static final PRIORITY_MAX:I = 0x3

.field private static final PRIORITY_MIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SchedulingPolicyService"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/ISchedulingPolicyService$Stub;-><init>()V

    return-void
.end method

.method private isPermittedCallingUid()Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    return v1

    :sswitch_0
    const/4 v1, 0x1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x411 -> :sswitch_0
        0x417 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public requestPriority(III)I
    .locals 5

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-direct {p0}, Lcom/android/server/os/SchedulingPolicyService;->isPermittedCallingUid()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ge p3, v3, :cond_2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0xfa1

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v2

    if-eq v2, p1, :cond_3

    :cond_1
    return v4

    :cond_2
    if-gt p3, v1, :cond_0

    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    :cond_3
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    if-ne v2, p1, :cond_4

    const/4 v1, 0x4

    :cond_4
    invoke-static {p2, v1}, Landroid/os/Process;->setThreadGroup(II)V

    const/4 v1, 0x1

    invoke-static {p2, v1, p3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    return v4
.end method
