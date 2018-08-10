.class Lcom/android/systemui/statusbar/phone/DozeScrimController$4;
.super Ljava/lang/Object;
.source "DozeScrimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DozeScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->-get3(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->-get5(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DozeScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Pulse out, mDozing="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->-get2(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->-get2(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->-get1(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->-get1(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOutDuration()I

    move-result v0

    int-to-long v4, v0

    sget-object v6, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->-get6(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->-wrap4(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method
