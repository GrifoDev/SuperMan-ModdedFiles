.class Lcom/samsung/android/visualeffect/circle/Circle$2;
.super Ljava/lang/Object;
.source "Circle.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle$2;->this$0:Lcom/samsung/android/visualeffect/circle/Circle;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/circle/Circle;->-set1(Lcom/samsung/android/visualeffect/circle/Circle;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle$2;->this$0:Lcom/samsung/android/visualeffect/circle/Circle;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/circle/Circle;->-set1(Lcom/samsung/android/visualeffect/circle/Circle;Z)Z

    return-void
.end method
