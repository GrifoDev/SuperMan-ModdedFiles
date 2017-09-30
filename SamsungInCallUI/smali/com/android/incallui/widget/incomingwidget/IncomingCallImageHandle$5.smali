.class Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$5;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->animateForArrowContainer()V
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

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$5;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$5;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateForArrowContainer..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$5;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

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

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$5;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$1300(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$5;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$1300(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$5;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$1400(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
