.class Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IncomingCallImageHandle.java"


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
    .param p1, "this$0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$4;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 1286
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$4;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateForArrowContainer..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$4;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

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

    .line 1287
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$4;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$1300(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1288
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$4;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$1300(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1289
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$4;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$1400(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1290
    return-void
.end method