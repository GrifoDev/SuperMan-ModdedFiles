.class Lcom/samsung/android/visualeffect/circle/Circle$5;
.super Ljava/lang/Object;
.source "Circle.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/circle/Circle;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/circle/Circle;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/circle/Circle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/Circle$5;->this$0:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle$5;->this$0:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/visualeffect/circle/Circle;->-set2(Lcom/samsung/android/visualeffect/circle/Circle;F)F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle$5;->this$0:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/circle/Circle;->invalidate()V

    return-void
.end method
