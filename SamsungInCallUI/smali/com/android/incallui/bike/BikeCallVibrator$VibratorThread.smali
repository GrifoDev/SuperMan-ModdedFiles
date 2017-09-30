.class Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/bike/BikeCallVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field private mContinueVibrating:Z

.field final synthetic this$0:Lcom/android/incallui/bike/BikeCallVibrator;


# direct methods
.method private constructor <init>(Lcom/android/incallui/bike/BikeCallVibrator;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->this$0:Lcom/android/incallui/bike/BikeCallVibrator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->mContinueVibrating:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/bike/BikeCallVibrator;Lcom/android/incallui/bike/BikeCallVibrator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;-><init>(Lcom/android/incallui/bike/BikeCallVibrator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->this$0:Lcom/android/incallui/bike/BikeCallVibrator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBikeCallVibratorUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->this$0:Lcom/android/incallui/bike/BikeCallVibrator;

    invoke-static {v2}, Lcom/android/incallui/bike/BikeCallVibrator;->access$300(Lcom/android/incallui/bike/BikeCallVibrator;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/bike/BikeCallVibrator;->access$100(Lcom/android/incallui/bike/BikeCallVibrator;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->this$0:Lcom/android/incallui/bike/BikeCallVibrator;

    invoke-static {v0}, Lcom/android/incallui/bike/BikeCallVibrator;->access$200(Lcom/android/incallui/bike/BikeCallVibrator;)Landroid/os/Vibrator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->this$0:Lcom/android/incallui/bike/BikeCallVibrator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContinueVibrating : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->mContinueVibrating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/bike/BikeCallVibrator;->access$100(Lcom/android/incallui/bike/BikeCallVibrator;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->mContinueVibrating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->this$0:Lcom/android/incallui/bike/BikeCallVibrator;

    invoke-static {v0}, Lcom/android/incallui/bike/BikeCallVibrator;->access$200(Lcom/android/incallui/bike/BikeCallVibrator;)Landroid/os/Vibrator;

    move-result-object v0

    const v1, 0xc373

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->this$0:Lcom/android/incallui/bike/BikeCallVibrator;

    const-string v1, "mVibrator == null : "

    invoke-static {v0, v1, v3}, Lcom/android/incallui/bike/BikeCallVibrator;->access$100(Lcom/android/incallui/bike/BikeCallVibrator;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public stopThread()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->this$0:Lcom/android/incallui/bike/BikeCallVibrator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopThread : mContinueVibrating :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->mContinueVibrating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/bike/BikeCallVibrator;->access$100(Lcom/android/incallui/bike/BikeCallVibrator;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->mContinueVibrating:Z

    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->this$0:Lcom/android/incallui/bike/BikeCallVibrator;

    invoke-static {v0}, Lcom/android/incallui/bike/BikeCallVibrator;->access$200(Lcom/android/incallui/bike/BikeCallVibrator;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method
