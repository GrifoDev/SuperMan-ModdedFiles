.class Lcom/android/incallui/fragment/AnswerFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/AnswerFragment;->onFinishInflate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/AnswerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/AnswerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/AnswerFragment$4;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimateClose()V
    .locals 3

    const-string v0, "AnswerFragment"

    const-string v1, "onAnimateClose"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$4;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/AnswerFragment;->access$100(Lcom/android/incallui/fragment/AnswerFragment;)V

    return-void
.end method

.method public onAnimateOpen()V
    .locals 3

    const-string v0, "AnswerFragment"

    const-string v1, "onAnimateOpen"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$4;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/AnswerFragment;->access$200(Lcom/android/incallui/fragment/AnswerFragment;)V

    return-void
.end method
