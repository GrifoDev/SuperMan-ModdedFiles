.class Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;
.super Ljava/lang/Object;
.source "AnimationBuilder.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->buildAnimation(Lcom/android/systemui/wallpaper/theme/view/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

.field final synthetic val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;Lcom/android/systemui/wallpaper/theme/view/FrameImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->-set0(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;Z)Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->-set2(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;J)J

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->-set0(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;Z)Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method
