.class Lcom/android/systemui/servicebox/utils/SecTransition$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/utils/SecTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/utils/SecTransition;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/utils/SecTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/utils/SecTransition$1;->this$0:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition$1;->this$0:Lcom/android/systemui/servicebox/utils/SecTransition;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->-wrap1(Lcom/android/systemui/servicebox/utils/SecTransition;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition$1;->this$0:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->-get2(Lcom/android/systemui/servicebox/utils/SecTransition;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition$1;->this$0:Lcom/android/systemui/servicebox/utils/SecTransition;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->-wrap1(Lcom/android/systemui/servicebox/utils/SecTransition;Z)V

    return-void
.end method
