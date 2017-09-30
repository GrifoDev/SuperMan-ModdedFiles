.class Lcom/android/incallui/agif/AgifSlidingTrayIcons$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/agif/AgifSlidingTrayIcons;->getTrayIconAnimation(Landroid/animation/AnimatorSet;Lcom/android/incallui/agif/AgifSlidingTrayIcons$TayIconView;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mIsCancel:Z

.field final synthetic this$0:Lcom/android/incallui/agif/AgifSlidingTrayIcons;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/AgifSlidingTrayIcons;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons$2;->this$0:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons$2;->mIsCancel:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons$2;->mIsCancel:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons$2;->mIsCancel:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifSlidingTrayIcons$2;->mIsCancel:Z

    return-void
.end method
