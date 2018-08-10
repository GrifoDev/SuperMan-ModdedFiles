.class public Landroid/util/BoostFramework;
.super Ljava/lang/Object;
.source "BoostFramework.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/BoostFramework$Draw;,
        Landroid/util/BoostFramework$Launch;,
        Landroid/util/BoostFramework$Scroll;
    }
.end annotation


# static fields
.field private static final PERFORMANCE_CLASS:Ljava/lang/String; = "com.qualcomm.qti.Performance"

.field private static final PERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/QPerformance.jar"

.field private static final TAG:Ljava/lang/String; = "BoostFramework"

.field public static final VENDOR_HINT_ACTIVITY_BOOST:I = 0x1084

.field public static final VENDOR_HINT_ANIM_BOOST:I = 0x1083

.field public static final VENDOR_HINT_DRAG_BOOST:I = 0x1087

.field public static final VENDOR_HINT_FIRST_DRAW:I = 0x1042

.field public static final VENDOR_HINT_FIRST_LAUNCH_BOOST:I = 0x1081

.field public static final VENDOR_HINT_MTP_BOOST:I = 0x1086

.field public static final VENDOR_HINT_SCROLL_BOOST:I = 0x1080

.field public static final VENDOR_HINT_SUBSEQ_LAUNCH_BOOST:I = 0x1082

.field public static final VENDOR_HINT_TOUCH_BOOST:I = 0x1085

.field private static mAcquireFunc:Ljava/lang/reflect/Method;

.field private static mIOPStart:Ljava/lang/reflect/Method;

.field private static mIOPStop:Ljava/lang/reflect/Method;

.field private static mIopv2:I

.field private static mIsLoaded:Z

.field private static mPerfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mPerfHintFunc:Ljava/lang/reflect/Method;

.field private static mReleaseFunc:Ljava/lang/reflect/Method;

.field private static mReleaseHandlerFunc:Ljava/lang/reflect/Method;

.field private static mUXEngine_events:Ljava/lang/reflect/Method;

.field private static mUXEngine_trigger:Ljava/lang/reflect/Method;


# instance fields
.field private mPerf:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "iop.enable_uxe"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/util/BoostFramework;->mIopv2:I

    sput-boolean v2, Landroid/util/BoostFramework;->mIsLoaded:Z

    sput-object v1, Landroid/util/BoostFramework;->mPerfClass:Ljava/lang/Class;

    sput-object v1, Landroid/util/BoostFramework;->mAcquireFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->mPerfHintFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->mReleaseFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->mReleaseHandlerFunc:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->mIOPStart:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->mIOPStop:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->mUXEngine_events:Ljava/lang/reflect/Method;

    sput-object v1, Landroid/util/BoostFramework;->mUXEngine_trigger:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const-class v4, Landroid/util/BoostFramework;

    monitor-enter v4

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/system/framework/QPerformance.jar"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return-void

    :cond_0
    :try_start_1
    sget-boolean v3, Landroid/util/BoostFramework;->mIsLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    :try_start_2
    const-string/jumbo v3, "com.qualcomm.qti.Performance"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Landroid/util/BoostFramework;->mPerfClass:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v3, v0, v5

    const-class v3, [I

    const/4 v5, 0x1

    aput-object v3, v0, v5

    sget-object v3, Landroid/util/BoostFramework;->mPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "perfLockAcquire"

    invoke-virtual {v3, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/util/BoostFramework;->mAcquireFunc:Ljava/lang/reflect/Method;

    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v3, v0, v5

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v0, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v3, v0, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x3

    aput-object v3, v0, v5

    sget-object v3, Landroid/util/BoostFramework;->mPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "perfHint"

    invoke-virtual {v3, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/util/BoostFramework;->mPerfHintFunc:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Class;

    sget-object v3, Landroid/util/BoostFramework;->mPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "perfLockRelease"

    invoke-virtual {v3, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/util/BoostFramework;->mReleaseFunc:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v3, v0, v5

    sget-object v3, Landroid/util/BoostFramework;->mPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "perfLockReleaseHandler"

    invoke-virtual {v3, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/util/BoostFramework;->mReleaseHandlerFunc:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v3, v0, v5

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v0, v5

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v3, v0, v5

    sget-object v3, Landroid/util/BoostFramework;->mPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "perfIOPrefetchStart"

    invoke-virtual {v3, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/util/BoostFramework;->mIOPStart:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Class;

    sget-object v3, Landroid/util/BoostFramework;->mPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "perfIOPrefetchStop"

    invoke-virtual {v3, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/util/BoostFramework;->mIOPStop:Ljava/lang/reflect/Method;

    sget v3, Landroid/util/BoostFramework;->mIopv2:I

    if-ne v3, v6, :cond_1

    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v3, v0, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v0, v5

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v3, v0, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x3

    aput-object v3, v0, v5

    sget-object v3, Landroid/util/BoostFramework;->mPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "perfUXEngine_events"

    invoke-virtual {v3, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/util/BoostFramework;->mUXEngine_events:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v3, v0, v5

    sget-object v3, Landroid/util/BoostFramework;->mPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "perfUXEngine_trigger"

    invoke-virtual {v3, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/util/BoostFramework;->mUXEngine_trigger:Ljava/lang/reflect/Method;

    :cond_1
    const/4 v3, 0x1

    sput-boolean v3, Landroid/util/BoostFramework;->mIsLoaded:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v4

    :try_start_3
    sget-object v3, Landroid/util/BoostFramework;->mPerfClass:Ljava/lang/Class;

    if-eqz v3, :cond_3

    sget-object v3, Landroid/util/BoostFramework;->mPerfClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v1

    :try_start_4
    const-string/jumbo v3, "BoostFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "BoostFramework() : Exception_1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_1
    move-exception v1

    const-string/jumbo v3, "BoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BoostFramework() : Exception_2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public perfHint(ILjava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public perfHint(ILjava/lang/String;I)I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public perfHint(ILjava/lang/String;II)I
    .locals 8

    const/4 v4, 0x1

    const/4 v1, -0x1

    sget-object v3, Landroid/util/BoostFramework;->mPerfHintFunc:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    return v4

    :cond_0
    :try_start_0
    sget-object v3, Landroid/util/BoostFramework;->mPerfHintFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "BoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/4 v4, 0x1

    const/4 v1, -0x1

    sget-object v3, Landroid/util/BoostFramework;->mIOPStart:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    return v4

    :cond_0
    :try_start_0
    sget-object v3, Landroid/util/BoostFramework;->mIOPStart:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "BoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public perfIOPrefetchStop()I
    .locals 6

    const/4 v1, -0x1

    sget-object v3, Landroid/util/BoostFramework;->mIOPStop:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    :try_start_0
    sget-object v3, Landroid/util/BoostFramework;->mIOPStop:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "BoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs perfLockAcquire(I[I)I
    .locals 8

    const/4 v4, 0x1

    const/4 v1, -0x1

    sget-object v3, Landroid/util/BoostFramework;->mAcquireFunc:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    return v4

    :cond_0
    :try_start_0
    sget-object v3, Landroid/util/BoostFramework;->mAcquireFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "BoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public perfLockRelease()I
    .locals 6

    const/4 v1, -0x1

    sget-object v3, Landroid/util/BoostFramework;->mReleaseFunc:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    :try_start_0
    sget-object v3, Landroid/util/BoostFramework;->mReleaseFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "BoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public perfLockReleaseHandler(I)I
    .locals 8

    const/4 v4, 0x1

    const/4 v1, -0x1

    sget-object v3, Landroid/util/BoostFramework;->mReleaseHandlerFunc:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    return v4

    :cond_0
    :try_start_0
    sget-object v3, Landroid/util/BoostFramework;->mReleaseHandlerFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "BoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public perfUXEngine_events(IILjava/lang/String;I)I
    .locals 8

    const/4 v4, 0x1

    const/4 v1, -0x1

    sget-object v3, Landroid/util/BoostFramework;->mUXEngine_events:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    return v4

    :cond_0
    :try_start_0
    sget v3, Landroid/util/BoostFramework;->mIopv2:I

    if-eqz v3, :cond_1

    sget-object v3, Landroid/util/BoostFramework;->mUXEngine_events:Ljava/lang/reflect/Method;

    if-nez v3, :cond_2

    :cond_1
    return v1

    :cond_2
    sget-object v3, Landroid/util/BoostFramework;->mUXEngine_events:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "BoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public perfUXEngine_trigger(I)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    sget-object v4, Landroid/util/BoostFramework;->mUXEngine_trigger:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    sget v4, Landroid/util/BoostFramework;->mIopv2:I

    if-eqz v4, :cond_1

    sget-object v4, Landroid/util/BoostFramework;->mUXEngine_trigger:Ljava/lang/reflect/Method;

    if-nez v4, :cond_2

    :cond_1
    return-object v2

    :cond_2
    sget-object v4, Landroid/util/BoostFramework;->mUXEngine_trigger:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v4, "BoostFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
