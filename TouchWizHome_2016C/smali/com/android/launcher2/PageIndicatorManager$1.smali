.class Lcom/android/launcher2/PageIndicatorManager$1;
.super Ljava/lang/Object;
.source "PageIndicatorManager.java"

# interfaces
.implements Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PageIndicatorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/PageIndicatorManager;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PageIndicatorManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicatorManager$1;->this$0:Lcom/android/launcher2/PageIndicatorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager$1;->this$0:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->layoutPageIndicator()V

    :cond_0
    return-void
.end method
