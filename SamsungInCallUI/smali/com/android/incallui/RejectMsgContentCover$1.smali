.class Lcom/android/incallui/RejectMsgContentCover$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/RejectMsgContentCover;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/RejectMsgContentCover;


# direct methods
.method constructor <init>(Lcom/android/incallui/RejectMsgContentCover;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/RejectMsgContentCover$1;->this$0:Lcom/android/incallui/RejectMsgContentCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "AnswerMemo Button clicked"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover$1;->this$0:Lcom/android/incallui/RejectMsgContentCover;

    iget-object v0, v0, Lcom/android/incallui/RejectMsgContentCover;->mOnAnswerMemoClickListener:Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover$1;->this$0:Lcom/android/incallui/RejectMsgContentCover;

    iget-object v0, v0, Lcom/android/incallui/RejectMsgContentCover;->mOnAnswerMemoClickListener:Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;

    invoke-interface {v0}, Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;->rejectWithAnswerMemo()V

    :cond_0
    return-void
.end method
