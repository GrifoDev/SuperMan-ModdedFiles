.class Lcom/android/incallui/fragment/EndCallButtonFragment$2$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/EndCallButtonFragment$2;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/fragment/EndCallButtonFragment$2;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/EndCallButtonFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment$2$1;->this$1:Lcom/android/incallui/fragment/EndCallButtonFragment$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment$2$1;->this$1:Lcom/android/incallui/fragment/EndCallButtonFragment$2;

    iget-object v0, v0, Lcom/android/incallui/fragment/EndCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/EndCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->updateEndCallButtons()V

    return-void
.end method
