.class Lcom/android/incallui/service/SecCallPopupContainer$3;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecCallPopupContainer;->animateForBlinkCallTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupContainer;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$206(Lcom/android/incallui/service/SecCallPopupContainer;)I

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$200(Lcom/android/incallui/service/SecCallPopupContainer;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$300(Lcom/android/incallui/service/SecCallPopupContainer;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$400(Lcom/android/incallui/service/SecCallPopupContainer;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$500(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$400(Lcom/android/incallui/service/SecCallPopupContainer;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$500(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$500(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$400(Lcom/android/incallui/service/SecCallPopupContainer;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$500(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$402(Lcom/android/incallui/service/SecCallPopupContainer;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_0
.end method
