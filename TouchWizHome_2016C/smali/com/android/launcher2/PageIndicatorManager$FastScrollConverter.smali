.class Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;
.super Ljava/lang/Object;
.source "PageIndicatorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PageIndicatorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FastScrollConverter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/PageIndicatorManager;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/PageIndicatorManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;->this$0:Lcom/android/launcher2/PageIndicatorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/PageIndicatorManager;Lcom/android/launcher2/PageIndicatorManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;-><init>(Lcom/android/launcher2/PageIndicatorManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;->this$0:Lcom/android/launcher2/PageIndicatorManager;

    # getter for: Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z
    invoke-static {v0}, Lcom/android/launcher2/PageIndicatorManager;->access$100(Lcom/android/launcher2/PageIndicatorManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;->this$0:Lcom/android/launcher2/PageIndicatorManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/PageIndicatorManager;->access$102(Lcom/android/launcher2/PageIndicatorManager;Z)Z

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;->this$0:Lcom/android/launcher2/PageIndicatorManager;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;->this$0:Lcom/android/launcher2/PageIndicatorManager;

    # getter for: Lcom/android/launcher2/PageIndicatorManager;->mLastMotionX:F
    invoke-static {v1}, Lcom/android/launcher2/PageIndicatorManager;->access$200(Lcom/android/launcher2/PageIndicatorManager;)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;->this$0:Lcom/android/launcher2/PageIndicatorManager;

    # getter for: Lcom/android/launcher2/PageIndicatorManager;->mLastMotionY:F
    invoke-static {v2}, Lcom/android/launcher2/PageIndicatorManager;->access$300(Lcom/android/launcher2/PageIndicatorManager;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->checkPageIndicatorLongPress(FF)Z

    :cond_0
    return-void
.end method
