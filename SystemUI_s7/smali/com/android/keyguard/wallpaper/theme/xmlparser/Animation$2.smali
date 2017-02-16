.class Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

.field final synthetic val$view:Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    iput-object p2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;

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

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-static {v4}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->-get3(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;)J

    move-result-wide v4

    sub-long v4, v2, v4

    iget-object v6, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-static {v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->-get0(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->-set2(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;J)J

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;

    iget-object v4, v4, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;

    iget-object v4, v4, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;

    iget-object v4, v4, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;

    iget-object v4, v4, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    iget v4, v4, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->length:I

    add-int/lit8 v4, v4, -0x2

    if-ge v0, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;

    iget-object v4, v4, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v1, v0

    new-instance v4, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2$1;

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2;->val$view:Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;

    invoke-direct {v4, p0, v5, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2$1;-><init>(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2;Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;I)V

    new-array v5, v8, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-static {v4}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->-get1(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    const/4 v5, -0x1

    invoke-static {v4, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->-set1(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;I)I

    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$2;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-static {v4}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->-get2(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
