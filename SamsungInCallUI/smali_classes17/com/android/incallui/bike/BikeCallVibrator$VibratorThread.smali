.class Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;
.super Ljava/lang/Thread;
.source "BikeCallVibrator.java"


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

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->this$0:Lcom/android/incallui/bike/BikeCallVibrator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->mContinueVibrating:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/bike/BikeCallVibrator;Lcom/android/incallui/bike/BikeCallVibrator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/bike/BikeCallVibrator;
    .param p2, "x1"    # Lcom/android/incallui/bike/BikeCallVibrator$1;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;-><init>(Lcom/android/incallui/bike/BikeCallVibrator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBikeCallVibratorUri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->this$0:Lcom/android/incallui/bike/BikeCallVibrator;

    # getter for: Lcom/android/incallui/bike/BikeCallVibrator;->mBikeCallVibratorUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/incallui/bike/BikeCallVibrator;->access$300(Lcom/android/incallui/bike/BikeCallVibrator;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/incallui/bike/BikeCallVibrator;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/incallui/bike/BikeCallVibrator;->access$100(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->this$0:Lcom/android/incallui/bike/BikeCallVibrator;

    # getter for: Lcom/android/incallui/bike/BikeCallVibrator;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/incallui/bike/BikeCallVibrator;->access$200(Lcom/android/incallui/bike/BikeCallVibrator;)Landroid/os/Vibrator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mContinueVibrating : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->mContinueVibrating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/incallui/bike/BikeCallVibrator;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/incallui/bike/BikeCallVibrator;->access$100(Ljava/lang/String;)V

    .line 130
    iget-boolean v0, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->mContinueVibrating:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->this$0:Lcom/android/incallui/bike/BikeCallVibrator;

    # getter for: Lcom/android/incallui/bike/BikeCallVibrator;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/incallui/bike/BikeCallVibrator;->access$200(Lcom/android/incallui/bike/BikeCallVibrator;)Landroid/os/Vibrator;

    move-result-object v0

    const v1, 0xc373

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const-string v0, "mVibrator == null : "

    # invokes: Lcom/android/incallui/bike/BikeCallVibrator;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/incallui/bike/BikeCallVibrator;->access$100(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopThread()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopThread : mContinueVibrating :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->mContinueVibrating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/incallui/bike/BikeCallVibrator;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/incallui/bike/BikeCallVibrator;->access$100(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->mContinueVibrating:Z

    .line 123
    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->this$0:Lcom/android/incallui/bike/BikeCallVibrator;

    # getter for: Lcom/android/incallui/bike/BikeCallVibrator;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/incallui/bike/BikeCallVibrator;->access$200(Lcom/android/incallui/bike/BikeCallVibrator;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 124
    return-void
.end method
