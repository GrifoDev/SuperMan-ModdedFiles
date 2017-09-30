.class Lcom/android/incallui/RejectMsgContent$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/RejectMsgContent;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/RejectMsgContent;


# direct methods
.method constructor <init>(Lcom/android/incallui/RejectMsgContent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/RejectMsgContent$3;->this$0:Lcom/android/incallui/RejectMsgContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "AnswerMemo Button clicked"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContent$3;->this$0:Lcom/android/incallui/RejectMsgContent;

    iget-object v0, v0, Lcom/android/incallui/RejectMsgContent;->mOnAnswerMemoClickListener:Lcom/android/incallui/RejectMsgContent$OnAnswerMemoClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContent$3;->this$0:Lcom/android/incallui/RejectMsgContent;

    iget-object v0, v0, Lcom/android/incallui/RejectMsgContent;->mOnAnswerMemoClickListener:Lcom/android/incallui/RejectMsgContent$OnAnswerMemoClickListener;

    invoke-interface {v0}, Lcom/android/incallui/RejectMsgContent$OnAnswerMemoClickListener;->rejectWithAnswerMemo()V

    :cond_0
    return-void
.end method
