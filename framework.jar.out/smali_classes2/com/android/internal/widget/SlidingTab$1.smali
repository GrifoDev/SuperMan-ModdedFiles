.class Lcom/android/internal/widget/SlidingTab$1;
.super Ljava/lang/Object;
.source "SlidingTab.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SlidingTab;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SlidingTab;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/SlidingTab$1;->this$0:Lcom/android/internal/widget/SlidingTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$1;->this$0:Lcom/android/internal/widget/SlidingTab;

    invoke-static {v0}, Lcom/android/internal/widget/SlidingTab;->-wrap0(Lcom/android/internal/widget/SlidingTab;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
