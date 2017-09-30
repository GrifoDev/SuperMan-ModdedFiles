.class Lcom/android/incallui/fragment/view/CallCardSmartCallView$3;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/view/CallCardSmartCallView;->animateAlphaMoveForSmartCallText(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView$3;->this$0:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    iput-object p2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView$3;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
