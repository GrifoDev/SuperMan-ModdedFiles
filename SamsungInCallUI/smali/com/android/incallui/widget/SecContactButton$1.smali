.class Lcom/android/incallui/widget/SecContactButton$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/widget/SecContactButton;->setEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/widget/SecContactButton;


# direct methods
.method constructor <init>(Lcom/android/incallui/widget/SecContactButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/SecContactButton$1;->this$0:Lcom/android/incallui/widget/SecContactButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/widget/SecContactButton$1;->this$0:Lcom/android/incallui/widget/SecContactButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecContactButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/SecContactButton$1;->this$0:Lcom/android/incallui/widget/SecContactButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/widget/SecContactButton;->access$002(Lcom/android/incallui/widget/SecContactButton;Z)Z

    return-void
.end method
