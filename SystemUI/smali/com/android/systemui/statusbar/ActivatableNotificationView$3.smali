.class Lcom/android/systemui/statusbar/ActivatableNotificationView$3;
.super Ljava/lang/Object;
.source "ActivatableNotificationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ActivatableNotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$3;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$3;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateOutlineAlpha()V

    return-void
.end method
