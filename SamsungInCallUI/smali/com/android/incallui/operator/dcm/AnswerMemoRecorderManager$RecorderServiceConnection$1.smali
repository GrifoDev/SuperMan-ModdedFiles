.class Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection$1;->this$1:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection$1;->this$1:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;

    iget-object v0, v0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->onAMRecorderStateChanged()V

    return-void
.end method
