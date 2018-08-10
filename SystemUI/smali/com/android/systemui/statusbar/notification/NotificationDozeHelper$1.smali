.class Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$1;
.super Ljava/lang/Object;
.source "NotificationDozeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->fadeGrayscale(Landroid/widget/ImageView;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

.field final synthetic val$target:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$1;->val$target:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$1;->val$target:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->updateGrayscale(Landroid/widget/ImageView;F)V

    return-void
.end method
