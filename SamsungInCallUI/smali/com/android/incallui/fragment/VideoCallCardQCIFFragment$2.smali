.class Lcom/android/incallui/fragment/VideoCallCardQCIFFragment$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->animateForCallerInfoContainer(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment$2;->this$0:Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment$2;->this$0:Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->access$002(Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment$2;->this$0:Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;->access$002(Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;Z)Z

    return-void
.end method
