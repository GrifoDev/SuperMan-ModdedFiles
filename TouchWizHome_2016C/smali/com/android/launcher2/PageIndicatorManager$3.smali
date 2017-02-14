.class Lcom/android/launcher2/PageIndicatorManager$3;
.super Ljava/lang/Object;
.source "PageIndicatorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/PageIndicatorManager;->checkPageIndicatorTouch(FF)Z
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

    iput-object p1, p0, Lcom/android/launcher2/PageIndicatorManager$3;->this$0:Lcom/android/launcher2/PageIndicatorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager$3;->this$0:Lcom/android/launcher2/PageIndicatorManager;

    iget-object v0, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    return-void
.end method
