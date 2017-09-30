.class Lcom/android/incallui/agif/AgifSlidingTrayIcons$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/agif/AgifSlidingTrayIcons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/AgifSlidingTrayIcons;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/AgifSlidingTrayIcons;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons$1;->this$0:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons$1;->this$0:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    invoke-static {v0, p1}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->access$000(Lcom/android/incallui/agif/AgifSlidingTrayIcons;Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
