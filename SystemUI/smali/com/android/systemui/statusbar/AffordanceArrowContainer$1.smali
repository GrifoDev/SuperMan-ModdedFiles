.class Lcom/android/systemui/statusbar/AffordanceArrowContainer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AffordanceArrowContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/AffordanceArrowContainer;->setAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/AffordanceArrowContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer$1;->this$0:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer$1;->this$0:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->-get2(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer$1;->this$0:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->-set2(Lcom/android/systemui/statusbar/AffordanceArrowContainer;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer$1;->this$0:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->-get2(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->-set1(Lcom/android/systemui/statusbar/AffordanceArrowContainer;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer$1;->this$0:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->-get3(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
