.class Lcom/android/launcher2/MovieDrawable$1;
.super Ljava/lang/Object;
.source "MovieDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MovieDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MovieDrawable;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MovieDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MovieDrawable$1;->this$0:Lcom/android/launcher2/MovieDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/launcher2/MovieDrawable$1;->this$0:Lcom/android/launcher2/MovieDrawable;

    # getter for: Lcom/android/launcher2/MovieDrawable;->mMovie:Landroid/graphics/Movie;
    invoke-static {v3}, Lcom/android/launcher2/MovieDrawable;->access$000(Lcom/android/launcher2/MovieDrawable;)Landroid/graphics/Movie;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Movie;->duration()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MovieDrawable$1;->this$0:Lcom/android/launcher2/MovieDrawable;

    # getter for: Lcom/android/launcher2/MovieDrawable;->mCurrentCycle:I
    invoke-static {v3}, Lcom/android/launcher2/MovieDrawable;->access$100(Lcom/android/launcher2/MovieDrawable;)I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MovieDrawable$1;->this$0:Lcom/android/launcher2/MovieDrawable;

    iget-object v4, p0, Lcom/android/launcher2/MovieDrawable$1;->this$0:Lcom/android/launcher2/MovieDrawable;

    # getter for: Lcom/android/launcher2/MovieDrawable;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/launcher2/MovieDrawable;->access$200(Lcom/android/launcher2/MovieDrawable;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MovieDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/launcher2/MovieDrawable$1;->this$0:Lcom/android/launcher2/MovieDrawable;

    # setter for: Lcom/android/launcher2/MovieDrawable;->mCurrentCycle:I
    invoke-static {v3, v6}, Lcom/android/launcher2/MovieDrawable;->access$102(Lcom/android/launcher2/MovieDrawable;I)I

    iget-object v3, p0, Lcom/android/launcher2/MovieDrawable$1;->this$0:Lcom/android/launcher2/MovieDrawable;

    # setter for: Lcom/android/launcher2/MovieDrawable;->mStartTime:J
    invoke-static {v3, v8, v9}, Lcom/android/launcher2/MovieDrawable;->access$302(Lcom/android/launcher2/MovieDrawable;J)J

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/launcher2/MovieDrawable$1;->this$0:Lcom/android/launcher2/MovieDrawable;

    # getter for: Lcom/android/launcher2/MovieDrawable;->mStartTime:J
    invoke-static {v3}, Lcom/android/launcher2/MovieDrawable;->access$300(Lcom/android/launcher2/MovieDrawable;)J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MovieDrawable$1;->this$0:Lcom/android/launcher2/MovieDrawable;

    # setter for: Lcom/android/launcher2/MovieDrawable;->mStartTime:J
    invoke-static {v3, v0, v1}, Lcom/android/launcher2/MovieDrawable;->access$302(Lcom/android/launcher2/MovieDrawable;J)J

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/MovieDrawable$1;->this$0:Lcom/android/launcher2/MovieDrawable;

    # getter for: Lcom/android/launcher2/MovieDrawable;->mStartTime:J
    invoke-static {v3}, Lcom/android/launcher2/MovieDrawable;->access$300(Lcom/android/launcher2/MovieDrawable;)J

    move-result-wide v4

    sub-long v4, v0, v4

    long-to-int v3, v4

    iget-object v4, p0, Lcom/android/launcher2/MovieDrawable$1;->this$0:Lcom/android/launcher2/MovieDrawable;

    # getter for: Lcom/android/launcher2/MovieDrawable;->mMovie:Landroid/graphics/Movie;
    invoke-static {v4}, Lcom/android/launcher2/MovieDrawable;->access$000(Lcom/android/launcher2/MovieDrawable;)Landroid/graphics/Movie;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Movie;->duration()I

    move-result v4

    rem-int v2, v3, v4

    iget-object v3, p0, Lcom/android/launcher2/MovieDrawable$1;->this$0:Lcom/android/launcher2/MovieDrawable;

    # getter for: Lcom/android/launcher2/MovieDrawable;->mMovie:Landroid/graphics/Movie;
    invoke-static {v3}, Lcom/android/launcher2/MovieDrawable;->access$000(Lcom/android/launcher2/MovieDrawable;)Landroid/graphics/Movie;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Movie;->setTime(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/MovieDrawable$1;->this$0:Lcom/android/launcher2/MovieDrawable;

    const/4 v4, 0x1

    # setter for: Lcom/android/launcher2/MovieDrawable;->mNewFrame:Z
    invoke-static {v3, v4}, Lcom/android/launcher2/MovieDrawable;->access$402(Lcom/android/launcher2/MovieDrawable;Z)Z

    iget-object v3, p0, Lcom/android/launcher2/MovieDrawable$1;->this$0:Lcom/android/launcher2/MovieDrawable;

    invoke-virtual {v3}, Lcom/android/launcher2/MovieDrawable;->invalidateSelf()V

    iget-object v3, p0, Lcom/android/launcher2/MovieDrawable$1;->this$0:Lcom/android/launcher2/MovieDrawable;

    # getter for: Lcom/android/launcher2/MovieDrawable;->mRelTime:I
    invoke-static {v3}, Lcom/android/launcher2/MovieDrawable;->access$500(Lcom/android/launcher2/MovieDrawable;)I

    move-result v3

    if-gt v3, v2, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/MovieDrawable$1;->this$0:Lcom/android/launcher2/MovieDrawable;

    # setter for: Lcom/android/launcher2/MovieDrawable;->mRelTime:I
    invoke-static {v3, v2}, Lcom/android/launcher2/MovieDrawable;->access$502(Lcom/android/launcher2/MovieDrawable;I)I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/MovieDrawable$1;->this$0:Lcom/android/launcher2/MovieDrawable;

    # setter for: Lcom/android/launcher2/MovieDrawable;->mRelTime:I
    invoke-static {v3, v6}, Lcom/android/launcher2/MovieDrawable;->access$502(Lcom/android/launcher2/MovieDrawable;I)I

    iget-object v3, p0, Lcom/android/launcher2/MovieDrawable$1;->this$0:Lcom/android/launcher2/MovieDrawable;

    # operator++ for: Lcom/android/launcher2/MovieDrawable;->mCurrentCycle:I
    invoke-static {v3}, Lcom/android/launcher2/MovieDrawable;->access$108(Lcom/android/launcher2/MovieDrawable;)I

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/MovieDrawable$1;->this$0:Lcom/android/launcher2/MovieDrawable;

    iget-object v4, p0, Lcom/android/launcher2/MovieDrawable$1;->this$0:Lcom/android/launcher2/MovieDrawable;

    # getter for: Lcom/android/launcher2/MovieDrawable;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/launcher2/MovieDrawable;->access$200(Lcom/android/launcher2/MovieDrawable;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x10

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/launcher2/MovieDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
