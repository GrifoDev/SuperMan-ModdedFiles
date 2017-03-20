.class Lcom/android/incallui/RejectMsgContentPopup$2;
.super Ljava/lang/Object;
.source "RejectMsgContentPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/RejectMsgContentPopup;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/RejectMsgContentPopup;


# direct methods
.method constructor <init>(Lcom/android/incallui/RejectMsgContentPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/RejectMsgContentPopup;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/incallui/RejectMsgContentPopup$2;->this$0:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    const-string v0, "AnswerMemo Button clicked"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup$2;->this$0:Lcom/android/incallui/RejectMsgContentPopup;

    iget-object v0, v0, Lcom/android/incallui/RejectMsgContentPopup;->mOnAnswerMemoClickListener:Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup$2;->this$0:Lcom/android/incallui/RejectMsgContentPopup;

    iget-object v0, v0, Lcom/android/incallui/RejectMsgContentPopup;->mOnAnswerMemoClickListener:Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;

    invoke-interface {v0}, Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;->rejectWithAnswerMemo()V

    .line 84
    :cond_0
    return-void
.end method
