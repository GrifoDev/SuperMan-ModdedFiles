.class Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback$1;
.super Ljava/lang/Object;
.source "AnswerMemoRecorderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->messageCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;


# direct methods
.method constructor <init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback$1;->this$1:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback$1;->this$1:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;

    iget-object v0, v0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->onAMRecorderStateChanged()V

    .line 376
    return-void
.end method
