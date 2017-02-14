.class Lcom/samsung/android/visualeffect/circle/Circle$2;
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

    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/Circle$2;->this$0:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle$2;->this$0:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-static {v1, v0}, Lcom/samsung/android/visualeffect/circle/Circle;->-wrap0(Lcom/samsung/android/visualeffect/circle/Circle;F)V

    return-void
.end method
