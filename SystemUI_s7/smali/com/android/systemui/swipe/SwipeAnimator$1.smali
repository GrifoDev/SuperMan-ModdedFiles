.class Lcom/android/systemui/swipe/SwipeAnimator$1;
.super Ljava/lang/Object;
.source "SwipeAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/swipe/SwipeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/swipe/SwipeAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/swipe/SwipeAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$1;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$1;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/swipe/SwipeAnimator;->-wrap0(Lcom/android/systemui/swipe/SwipeAnimator;Z)V

    return-void
.end method
