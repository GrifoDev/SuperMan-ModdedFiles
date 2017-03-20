.class Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IncomingCallImageHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->animateForInCallArrowContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;


# direct methods
.method constructor <init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 1378
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateForRedialArrowContainer..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I
    invoke-static {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$800(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onAnimationEnd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    .line 1379
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$1700(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1380
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$1700(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1381
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$1800(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1382
    return-void
.end method
