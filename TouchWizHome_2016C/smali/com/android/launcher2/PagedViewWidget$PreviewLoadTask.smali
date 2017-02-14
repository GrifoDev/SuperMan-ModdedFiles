.class Lcom/android/launcher2/PagedViewWidget$PreviewLoadTask;
.super Ljava/lang/Object;
.source "PagedViewWidget.java"

# interfaces
.implements Lcom/android/launcher2/utils/common/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedViewWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher2/utils/common/ThreadPool$Job",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHeight:I

.field private final mObject:Ljava/lang/Object;

.field private final mWidth:I

.field final synthetic this$0:Lcom/android/launcher2/PagedViewWidget;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/PagedViewWidget;Ljava/lang/Object;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PagedViewWidget$PreviewLoadTask;->this$0:Lcom/android/launcher2/PagedViewWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher2/PagedViewWidget$PreviewLoadTask;->mObject:Ljava/lang/Object;

    iput p3, p0, Lcom/android/launcher2/PagedViewWidget$PreviewLoadTask;->mWidth:I

    iput p4, p0, Lcom/android/launcher2/PagedViewWidget$PreviewLoadTask;->mHeight:I

    return-void
.end method


# virtual methods
.method public run(Lcom/android/launcher2/utils/common/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 4

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-interface {p1}, Lcom/android/launcher2/utils/common/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget$PreviewLoadTask;->this$0:Lcom/android/launcher2/PagedViewWidget;

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget$PreviewLoadTask;->mObject:Ljava/lang/Object;

    iget v2, p0, Lcom/android/launcher2/PagedViewWidget$PreviewLoadTask;->mWidth:I

    iget v3, p0, Lcom/android/launcher2/PagedViewWidget$PreviewLoadTask;->mHeight:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/launcher2/PagedViewWidget;->loadPreview(Lcom/android/launcher2/utils/common/ThreadPool$JobContext;Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
