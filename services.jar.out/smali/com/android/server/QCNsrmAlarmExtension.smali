.class public final Lcom/android/server/QCNsrmAlarmExtension;
.super Ljava/lang/Object;
.source "QCNsrmAlarmExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;
    }
.end annotation


# static fields
.field private static final BLOCKED_UID_CHECK_INTERVAL:I = 0x3e8

.field static final TAG:Ljava/lang/String; = "QCNsrmAlarmExtn"

.field static final localLOGV:Z

.field private static final mBlockedUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTriggeredUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private almHandle:Lcom/android/server/AlarmManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/QCNsrmAlarmExtension;)Lcom/android/server/AlarmManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/QCNsrmAlarmExtension;->almHandle:Lcom/android/server/AlarmManagerService;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/server/QCNsrmAlarmExtension;->mBlockedUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/server/QCNsrmAlarmExtension;->mTriggeredUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/QCNsrmAlarmExtension;->mTriggeredUids:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/QCNsrmAlarmExtension;->mBlockedUids:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/QCNsrmAlarmExtension;->almHandle:Lcom/android/server/AlarmManagerService;

    return-void
.end method


# virtual methods
.method protected addTriggeredUid(I)V
    .locals 2

    sget-object v0, Lcom/android/server/QCNsrmAlarmExtension;->mTriggeredUids:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected hasBlockedUid(I)Z
    .locals 2

    sget-object v0, Lcom/android/server/QCNsrmAlarmExtension;->mBlockedUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected processBlockedUids(IZLandroid/os/PowerManager$WakeLock;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    sget-object v1, Lcom/android/server/QCNsrmAlarmExtension;->mBlockedUids:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;-><init>(Lcom/android/server/QCNsrmAlarmExtension;ILandroid/os/PowerManager$WakeLock;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/server/QCNsrmAlarmExtension;->mBlockedUids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method protected removeTriggeredUid(I)V
    .locals 2

    sget-object v0, Lcom/android/server/QCNsrmAlarmExtension;->mTriggeredUids:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
