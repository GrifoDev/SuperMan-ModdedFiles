.class Lcom/android/server/VibratorService$Vibration;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vibration"
.end annotation


# instance fields
.field private mCommonType:I

.field private final mEngineData:[I

.field private mFrequency:I

.field private mMagnitude:I

.field private mMagnitudeType:Ljava/lang/String;

.field private final mOpPkg:Ljava/lang/String;

.field private final mPattern:[J

.field private final mRepeat:I

.field private final mStartTime:J

.field private final mTimeout:J

.field private final mToken:Landroid/os/IBinder;

.field private final mUid:I

.field private final mUsageHint:I

.field private mUseMagnitude:Z

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method static synthetic -get0(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/VibratorService$Vibration;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mEngineData:[I

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mUsageHint:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/VibratorService$Vibration;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/VibratorService$Vibration;->mUseMagnitude:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/VibratorService$Vibration;)[J
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/VibratorService$Vibration;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    return-wide v0
.end method

.method static synthetic -get9(Lcom/android/server/VibratorService$Vibration;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    return-wide v0
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;)V
    .locals 11

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIIILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;II[II[JLjava/lang/String;)V
    .locals 15

    if-gez p11, :cond_0

    move-wide/from16 v6, p3

    :goto_0
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p12

    move/from16 v9, p11

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p10

    invoke-direct/range {v3 .. v14}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIIILjava/lang/String;I[I)V

    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/VibratorService$Vibration;->mUseMagnitude:Z

    move/from16 v0, p9

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    return-void

    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;II[ILjava/lang/String;)V
    .locals 15

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p10

    invoke-direct/range {v3 .. v14}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIIILjava/lang/String;I[I)V

    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/VibratorService$Vibration;->mUseMagnitude:Z

    move/from16 v0, p9

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIIILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    iput-boolean v0, p0, Lcom/android/server/VibratorService$Vibration;->mUseMagnitude:Z

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get13(Lcom/android/server/VibratorService;)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    sget-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v0}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    iput-wide p3, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    iput-object p5, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    iput p6, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    iput p7, p0, Lcom/android/server/VibratorService$Vibration;->mUsageHint:I

    iput p8, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    iput-object p9, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mEngineData:[I

    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIIILjava/lang/String;I[I)V
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    iput-boolean v0, p0, Lcom/android/server/VibratorService$Vibration;->mUseMagnitude:Z

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get13(Lcom/android/server/VibratorService;)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    sget-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v0}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    iput-wide p3, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    iput-object p5, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    iput p6, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    iput p7, p0, Lcom/android/server/VibratorService$Vibration;->mUsageHint:I

    iput p8, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    iput-object p9, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    iput p10, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    iput-object p11, p0, Lcom/android/server/VibratorService$Vibration;->mEngineData:[I

    return-void
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;)V
    .locals 11

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIIILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;II)V
    .locals 13

    const-wide/16 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v3 .. v12}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIIILjava/lang/String;)V

    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    move/from16 v0, p9

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;IIILjava/lang/String;)V
    .locals 13

    const-wide/16 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v3 .. v12}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIIILjava/lang/String;)V

    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/VibratorService$Vibration;->mUseMagnitude:Z

    move/from16 v0, p9

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    move/from16 v0, p10

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get14(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/VibratorService;->-get3()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VibratorService"

    const-string/jumbo v2, "binderDied()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get14(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get6(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v0

    if-ne p0, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap0(Lcom/android/server/VibratorService;)V

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap3(Lcom/android/server/VibratorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    return-object v0
.end method

.method public hasLongerTimeout(J)Z
    .locals 5

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return v4

    :cond_0
    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    iget-wide v2, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    return v4

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isSystemHapticFeedback()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    if-gez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    const-string/jumbo v1, "com.android.systemui"

    iget-object v2, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method public printInfo()V
    .locals 6

    const-string/jumbo v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Token : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Uid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PackageName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Timeout : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "StartTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Repeat : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    if-eqz v2, :cond_0

    const-string/jumbo v2, "VibratorService"

    const-string/jumbo v3, "Pattern info : "

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pattern.length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    array-length v2, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const-string/jumbo v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pattern["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
