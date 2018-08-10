.class Lcom/android/systemui/pip/phone/PipMotionHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PipMotionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/pip/phone/PipMotionHelper;->animateDismiss(Landroid/graphics/Rect;FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/graphics/Rect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMotionHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper$1;->this$0:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper$1;->this$0:Lcom/android/systemui/pip/phone/PipMotionHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->dismissPip(Z)V

    return-void
.end method
