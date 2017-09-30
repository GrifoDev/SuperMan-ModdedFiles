.class Lcom/android/incallui/fragment/VoiceCallCardFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/Chronometer$OnChronometerTickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallCardFragment;->inflateRecordInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setTTS(JLandroid/view/View;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->makeBeepSound(J)V

    :cond_0
    return-void
.end method
