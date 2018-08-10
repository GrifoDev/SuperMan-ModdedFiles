.class Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest$1;
.super Ljava/lang/Object;
.source "NeonAnimationTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->BRIGHT:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->-get0(Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;)Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->getBrightnessState()Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->-get2(Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;)Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->-get0(Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;)Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->DARK:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->setBrightnessState(Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->-get1(Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->-get2(Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;->-get0(Lcom/sec/android/cover/neoncover/animation/NeonAnimationTest;)Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->BRIGHT:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->setBrightnessState(Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;)V

    goto :goto_0
.end method
