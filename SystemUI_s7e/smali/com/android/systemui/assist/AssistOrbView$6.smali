.class Lcom/android/systemui/assist/AssistOrbView$6;
.super Ljava/lang/Object;
.source "AssistOrbView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/assist/AssistOrbView;->startEnterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistOrbView;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistOrbView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistOrbView$6;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView$6;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistOrbView$6;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-static {v1}, Lcom/android/systemui/assist/AssistOrbView;->-get0(Lcom/android/systemui/assist/AssistOrbView;)I

    move-result v1

    int-to-float v1, v1

    const-wide/16 v2, 0x12c

    iget-object v6, p0, Lcom/android/systemui/assist/AssistOrbView$6;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-static {v6}, Lcom/android/systemui/assist/AssistOrbView;->-get4(Lcom/android/systemui/assist/AssistOrbView;)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/assist/AssistOrbView;->animateCircleSize(FJJLandroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView$6;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistOrbView$6;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-static {v1}, Lcom/android/systemui/assist/AssistOrbView;->-get5(Lcom/android/systemui/assist/AssistOrbView;)I

    move-result v1

    int-to-float v1, v1

    const-wide/16 v2, 0x190

    sget-object v6, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/assist/AssistOrbView;->-wrap0(Lcom/android/systemui/assist/AssistOrbView;FJJLandroid/view/animation/Interpolator;)V

    return-void
.end method
