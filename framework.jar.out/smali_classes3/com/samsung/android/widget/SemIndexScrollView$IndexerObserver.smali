.class Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;
.super Landroid/database/DataSetObserver;
.source "SemIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexerObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver$1;
    }
.end annotation


# instance fields
.field private final INDEX_UPDATE_DELAY:J

.field mDataInvalid:Z

.field mUpdateIndex:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/samsung/android/widget/SemIndexScrollView;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemIndexScrollView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemIndexScrollView;

    .prologue
    .line 1278
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1280
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->INDEX_UPDATE_DELAY:J

    .line 1281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->mDataInvalid:Z

    .line 1301
    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver$1;-><init>(Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    .line 1278
    return-void
.end method

.method private notifyDataSetChange()V
    .locals 4

    .prologue
    .line 1296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->mDataInvalid:Z

    .line 1297
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1298
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1299
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-wrap0(Lcom/samsung/android/widget/SemIndexScrollView;)V

    .line 1295
    return-void
.end method


# virtual methods
.method public hasIndexerDataValid()Z
    .locals 1

    .prologue
    .line 1293
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->mDataInvalid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onChanged()V
    .locals 0

    .prologue
    .line 1284
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 1285
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->notifyDataSetChange()V

    .line 1283
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 1289
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 1290
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->notifyDataSetChange()V

    .line 1288
    return-void
.end method
