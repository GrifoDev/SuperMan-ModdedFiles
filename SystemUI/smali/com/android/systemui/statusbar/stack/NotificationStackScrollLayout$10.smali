.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationStackScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startBottomAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$10;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$10;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get9(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/graphics/Rect;

    move-result-object v0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$10;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/graphics/Rect;

    move-result-object v0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$10;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-set0(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method
