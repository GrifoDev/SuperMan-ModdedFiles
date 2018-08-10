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

.field private mCommonUse:Z

.field private final mEffect:Landroid/os/VibrationEffect;

.field private mEngineData:[I

.field private mFrequency:I

.field private mMagnitude:I

.field private mMagnitudeType:Ljava/lang/String;

.field private final mOpPkg:Ljava/lang/String;

.field private mPattern:[J

.field private mRepeat:I

.field private final mStartTime:J

.field private mTimeout:J

.field private final mToken:Landroid/os/IBinder;

.field private final mUid:I

.field private final mUsageHint:I

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method static synthetic -get0(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/VibratorService$Vibration;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/VibratorService$Vibration;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    return-wide v0
.end method

.method static synthetic -get11(Lcom/android/server/VibratorService$Vibration;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    return-wide v0
.end method

.method static synthetic -get12(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mUsageHint:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/VibratorService$Vibration;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mEngineData:[I

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/VibratorService$Vibration;)[J
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    return v0
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    iput-object v3, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    iput-object v3, p0, Lcom/android/server/VibratorService$Vibration;->mEngineData:[I

    iput v2, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    iput v2, p0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    sget-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v0}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    iput p4, p0, Lcom/android/server/VibratorService$Vibration;->mUsageHint:I

    iput p5, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    iput-object p6, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    const/16 v0, 0x270f

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    iput-object v3, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    iput-object v3, p0, Lcom/android/server/VibratorService$Vibration;->mEngineData:[I

    iput v2, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    iput v2, p0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    sget-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v0}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    iput p4, p0, Lcom/android/server/VibratorService$Vibration;->mUsageHint:I

    iput p5, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    iput-object p6, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;IILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    iput-object v3, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    iput-object v3, p0, Lcom/android/server/VibratorService$Vibration;->mEngineData:[I

    iput v2, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    iput v2, p0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    sget-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v0}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    iput p4, p0, Lcom/android/server/VibratorService$Vibration;->mUsageHint:I

    iput p5, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    iput-object p6, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    iput p8, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    iput-object p9, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;IILjava/lang/String;Lcom/android/server/VibratorService$Vibration;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;ILcom/android/server/VibratorService$Vibration;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;J[JIIIILjava/lang/String;[I)V
    .locals 5

    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    const/4 v2, -0x2

    iput v2, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/VibratorService$Vibration;->mEngineData:[I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    sget-object v2, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v2}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    iput p4, p0, Lcom/android/server/VibratorService$Vibration;->mUsageHint:I

    iput p5, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    iput-object p6, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/VibratorService$Vibration;->mCommonUse:Z

    iput-wide p7, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    iput-object p9, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    iput p10, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    move/from16 v0, p11

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitude:I

    move/from16 v0, p12

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mFrequency:I

    move/from16 v0, p13

    iput v0, p0, Lcom/android/server/VibratorService$Vibration;->mCommonType:I

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mMagnitudeType:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mEngineData:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;J[JIIIILjava/lang/String;[ILcom/android/server/VibratorService$Vibration;)V
    .locals 1

    invoke-direct/range {p0 .. p15}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;J[JIIIILjava/lang/String;[I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Lcom/android/server/VibratorService$Vibration;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get13(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

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

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get13(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get6(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v0

    if-ne p0, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap2(Lcom/android/server/VibratorService;)V

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap7(Lcom/android/server/VibratorService;)V
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

.method public hasLongerTimeout(J)Z
    .locals 7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$OneShot;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    iget-wide v2, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getTiming()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public isSystemHapticFeedback()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    instance-of v3, v3, Landroid/os/VibrationEffect$Waveform;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    check-cast v1, Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v3

    if-gez v3, :cond_3

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    if-nez v3, :cond_4

    :cond_1
    :goto_1
    xor-int/lit8 v2, v0, 0x1

    :cond_2
    return v2

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "com.android.systemui"

    iget-object v4, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1
.end method
