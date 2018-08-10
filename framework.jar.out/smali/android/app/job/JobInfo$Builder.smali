.class public final Landroid/app/job/JobInfo$Builder;
.super Ljava/lang/Object;
.source "JobInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBackoffPolicy:I

.field private mBackoffPolicySet:Z

.field private mClipData:Landroid/content/ClipData;

.field private mClipGrantFlags:I

.field private mConstraintFlags:I

.field private mExtras:Landroid/os/PersistableBundle;

.field private mFlags:I

.field private mFlexMillis:J

.field private mHasEarlyConstraint:Z

.field private mHasLateConstraint:Z

.field private mInitialBackoffMillis:J

.field private mIntervalMillis:J

.field private mIsPeriodic:Z

.field private mIsPersisted:Z

.field private final mJobId:I

.field private final mJobService:Landroid/content/ComponentName;

.field private mMaxExecutionDelayMillis:J

.field private mMinLatencyMillis:J

.field private mNetworkType:I

.field private mPriority:I

.field private mTransientExtras:Landroid/os/Bundle;

.field private mTriggerContentMaxDelay:J

.field private mTriggerContentUpdateDelay:J

.field private mTriggerContentUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/job/JobInfo$TriggerContentUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/app/job/JobInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    return v0
.end method

.method static synthetic -get1(Landroid/app/job/JobInfo$Builder;)Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method static synthetic -get10(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    return-wide v0
.end method

.method static synthetic -get11(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    return v0
.end method

.method static synthetic -get12(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    return v0
.end method

.method static synthetic -get13(Landroid/app/job/JobInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    return v0
.end method

.method static synthetic -get14(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get15(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    return-wide v0
.end method

.method static synthetic -get16(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    return-wide v0
.end method

.method static synthetic -get17(Landroid/app/job/JobInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    return v0
.end method

.method static synthetic -get18(Landroid/app/job/JobInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    return v0
.end method

.method static synthetic -get19(Landroid/app/job/JobInfo$Builder;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/job/JobInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mClipGrantFlags:I

    return v0
.end method

.method static synthetic -get20(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    return-wide v0
.end method

.method static synthetic -get21(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    return-wide v0
.end method

.method static synthetic -get22(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Landroid/app/job/JobInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    return v0
.end method

.method static synthetic -get4(Landroid/app/job/JobInfo$Builder;)Landroid/os/PersistableBundle;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method static synthetic -get5(Landroid/app/job/JobInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    return v0
.end method

.method static synthetic -get6(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    return-wide v0
.end method

.method static synthetic -get7(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    return v0
.end method

.method static synthetic -get8(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    return v0
.end method

.method static synthetic -get9(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    return-wide v0
.end method

.method public constructor <init>(ILandroid/content/ComponentName;)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    iput v2, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    iput-wide v4, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    iput-wide v4, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    const/4 v0, 0x1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    iput-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    iput-object p2, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    return-void
.end method


# virtual methods
.method public addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/app/job/JobInfo;
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    iget-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "You\'re trying to build a job with no constraints, this is not allowed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    if-eqz v2, :cond_3

    iget-wide v2, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Can\'t call setOverrideDeadline() on a periodic job."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-wide v2, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Can\'t call setMinimumLatency() on a periodic job"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Can\'t call addTriggerContentUri() on a periodic job"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Can\'t call addTriggerContentUri() on a persisted job"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget-object v2, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Can\'t call setTransientExtras() on a persisted job"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    iget-object v2, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Can\'t call setClipData() on a persisted job"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    iget-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "An idle mode job will not respect any back-off policy, so calling setBackoffCriteria with setRequiresDeviceIdle is an error."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-instance v1, Landroid/app/job/JobInfo;

    invoke-direct {v1, p0, v4}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo;)V

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v1}, Landroid/app/job/JobInfo;->-get2(Landroid/app/job/JobInfo;)J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Specified interval for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v2, ". Clamped to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    invoke-static {}, Landroid/app/job/JobInfo;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {v1}, Landroid/app/job/JobInfo;->-get1(Landroid/app/job/JobInfo;)J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Specified flex for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v2, ". Clamped to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    invoke-static {}, Landroid/app/job/JobInfo;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-object v1
.end method

.method public setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    iput p3, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    return-object p0
.end method

.method public setClipData(Landroid/content/ClipData;I)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    iput p2, p0, Landroid/app/job/JobInfo$Builder;->mClipGrantFlags:I

    return-object p0
.end method

.method public setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public setFlags(I)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    return-object p0
.end method

.method public setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
    .locals 1

    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    return-object p0
.end method

.method public setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    .locals 1

    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    return-object p0
.end method

.method public setPeriodic(J)Landroid/app/job/JobInfo$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    iput-wide p3, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    return-object p0
.end method

.method public setPersisted(Z)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    return-object p0
.end method

.method public setPriority(I)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    return-object p0
.end method

.method public setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    return-object p0
.end method

.method public setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;
    .locals 2

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v1, v0, -0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;
    .locals 2

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;
    .locals 2

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;
    .locals 2

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v1, v0, -0x9

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;
    .locals 1

    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    return-object p0
.end method

.method public setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;
    .locals 1

    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    return-object p0
.end method
