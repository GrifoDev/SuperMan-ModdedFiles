.class Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;
.super Ljava/lang/Object;
.source "AnimationBuilder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->-get3(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)J

    move-result-wide v4

    sub-long v4, v2, v4

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-static {v6}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->-get0(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->-set2(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;J)J

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget v4, v4, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    add-int/lit8 v4, v4, -0x2

    if-ge v0, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v1, v0

    new-instance v4, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    invoke-direct {v4, p0, v5, v1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;Lcom/android/systemui/wallpaper/theme/view/FrameImageView;I)V

    new-array v5, v8, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->-get1(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    const/4 v5, -0x1

    invoke-static {v4, v5}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->-set1(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;I)I

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->-get2(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
