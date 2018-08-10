.class Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$2;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

.field final synthetic val$anim:Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

.field final synthetic val$thisIndex:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$2;->val$anim:Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$2;->val$thisIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$2;->val$anim:Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;)[F

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$2;->val$thisIndex:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v2, v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;)[Landroid/graphics/Rect;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$2;->val$thisIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
