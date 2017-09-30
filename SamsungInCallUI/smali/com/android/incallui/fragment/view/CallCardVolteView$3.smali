.class Lcom/android/incallui/fragment/view/CallCardVolteView$3;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/view/CallCardVolteView;->animateEpdgNotifyInfoForAnswer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/view/CallCardVolteView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardVolteView$3;->this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView$3;->this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->access$300(Lcom/android/incallui/fragment/view/CallCardVolteView;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView$3;->this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;

    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardVolteView;->access$300(Lcom/android/incallui/fragment/view/CallCardVolteView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardVolteView$3;->this$0:Lcom/android/incallui/fragment/view/CallCardVolteView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/fragment/view/CallCardVolteView;->access$402(Lcom/android/incallui/fragment/view/CallCardVolteView;Z)Z

    return-void
.end method
