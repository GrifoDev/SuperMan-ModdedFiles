.class Lcom/android/launcher2/PagedViewWidget$PreviewJobListener;
.super Ljava/lang/Object;
.source "PagedViewWidget.java"

# interfaces
.implements Lcom/android/launcher2/utils/common/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedViewWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewJobListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher2/utils/common/FutureListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHeight:I

.field private final mLayout:Lcom/android/launcher2/PagedViewGridLayout;

.field private final mWidth:I

.field final synthetic this$0:Lcom/android/launcher2/PagedViewWidget;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/PagedViewWidget;Lcom/android/launcher2/PagedViewGridLayout;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PagedViewWidget$PreviewJobListener;->this$0:Lcom/android/launcher2/PagedViewWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher2/PagedViewWidget$PreviewJobListener;->mLayout:Lcom/android/launcher2/PagedViewGridLayout;

    iput p3, p0, Lcom/android/launcher2/PagedViewWidget$PreviewJobListener;->mWidth:I

    iput p4, p0, Lcom/android/launcher2/PagedViewWidget$PreviewJobListener;->mHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/PagedViewWidget$PreviewJobListener;)Lcom/android/launcher2/PagedViewGridLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget$PreviewJobListener;->mLayout:Lcom/android/launcher2/PagedViewGridLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/PagedViewWidget$PreviewJobListener;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedViewWidget$PreviewJobListener;->mWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/PagedViewWidget$PreviewJobListener;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedViewWidget$PreviewJobListener;->mHeight:I

    return v0
.end method


# virtual methods
.method public onFutureDone(Lcom/android/launcher2/utils/common/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/utils/common/Future",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget$PreviewJobListener;->this$0:Lcom/android/launcher2/PagedViewWidget;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher2/PagedViewWidget;->mLoadTask:Lcom/android/launcher2/utils/common/Future;

    invoke-interface {p1}, Lcom/android/launcher2/utils/common/Future;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/launcher2/utils/common/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget$PreviewJobListener;->this$0:Lcom/android/launcher2/PagedViewWidget;

    new-instance v2, Lcom/android/launcher2/PagedViewWidget$PreviewJobListener$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher2/PagedViewWidget$PreviewJobListener$1;-><init>(Lcom/android/launcher2/PagedViewWidget$PreviewJobListener;Lcom/android/launcher2/utils/common/Future;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedViewWidget;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
