.class Lcom/android/systemui/recents/views/TaskStackAnimationHelper$1;
.super Ljava/lang/Object;
.source "TaskStackAnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startEnterAnimation(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

.field final synthetic val$stackLayout:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

.field final synthetic val$stackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/views/TaskStackViewScroller;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$1;->this$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$1;->val$stackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$1;->val$stackLayout:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$1;->val$stackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$1;->val$stackLayout:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILjava/lang/Runnable;)V

    return-void
.end method
