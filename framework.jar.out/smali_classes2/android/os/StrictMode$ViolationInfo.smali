.class public Landroid/os/StrictMode$ViolationInfo;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViolationInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StrictMode$ViolationInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public broadcastIntentAction:Ljava/lang/String;

.field public final crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field public durationMillis:I

.field public final message:Ljava/lang/String;

.field public numAnimationsRunning:I

.field public numInstances:J

.field public final policy:I

.field public tags:[Ljava/lang/String;

.field public violationNumThisLoop:I

.field public violationUptimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/StrictMode$ViolationInfo$1;

    invoke-direct {v0}, Landroid/os/StrictMode$ViolationInfo$1;-><init>()V

    sput-object v0, Landroid/os/StrictMode$ViolationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    iput-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->message:Ljava/lang/String;

    iput-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Z)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->message:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v1, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz p2, :cond_1

    const v1, -0x400001

    and-int/2addr v1, v0

    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    goto :goto_0

    :cond_1
    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 8

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, -0x1

    iput v5, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    iput v6, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    iput-object p1, p0, Landroid/os/StrictMode$ViolationInfo;->message:Ljava/lang/String;

    new-instance v5, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v5, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    iput-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    iput p3, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    invoke-static {}, Landroid/animation/ValueAnimator;->getCurrentAnimationsCount()I

    move-result v5

    iput v5, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    invoke-static {}, Landroid/app/ActivityThread;->getIntentBeingBroadcast()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->-get6()Ljava/lang/ThreadLocal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/StrictMode$ThreadSpanState;

    instance-of v5, p2, Landroid/os/StrictMode$InstanceCountViolation;

    if-eqz v5, :cond_1

    check-cast p2, Landroid/os/StrictMode$InstanceCountViolation;

    iget-wide v6, p2, Landroid/os/StrictMode$InstanceCountViolation;->mInstances:J

    iput-wide v6, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    :cond_1
    monitor-enter v4

    :try_start_0
    iget v3, v4, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    const/16 v5, 0x14

    if-le v3, v5, :cond_2

    const/16 v3, 0x14

    :cond_2
    if-eqz v3, :cond_3

    new-array v5, v3, [Ljava/lang/String;

    iput-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    iget-object v2, v4, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    const/4 v1, 0x0

    :goto_0
    if-eqz v2, :cond_3

    if-ge v1, v3, :cond_3

    iget-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    invoke-static {v2}, Landroid/os/StrictMode$Span;->-get0(Landroid/os/StrictMode$Span;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2}, Landroid/os/StrictMode$Span;->-get1(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    goto :goto_0

    :cond_3
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/os/StrictMode$ViolationInfo;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 8

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-virtual {v4, p1, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "policy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget v4, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "durationMillis: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_1
    iget-wide v4, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "numInstances: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_2
    iget v4, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "violationNumThisLoop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_3
    iget v4, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "numAnimationsRunning: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "violationUptimeMillis: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "broadcastIntentAction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_5
    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    if-eqz v4, :cond_6

    const/4 v0, 0x0

    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v3, v5, :cond_6

    aget-object v2, v4, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "tag["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_6
    return-void
.end method

.method public hashCode()I
    .locals 7

    const/4 v2, 0x0

    const/16 v0, 0x11

    iget-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v3, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/lit16 v0, v3, 0x275

    :cond_0
    iget v3, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    if-eqz v3, :cond_1

    mul-int/lit8 v0, v0, 0x25

    :cond_1
    iget-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    if-eqz v3, :cond_2

    mul-int/lit8 v3, v0, 0x25

    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    :cond_2
    iget-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v1, v3, v2

    mul-int/lit8 v5, v0, 0x25

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    add-int v0, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->message:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-virtual {v2, p1, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iget v2, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    sub-int v1, v2, v0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
