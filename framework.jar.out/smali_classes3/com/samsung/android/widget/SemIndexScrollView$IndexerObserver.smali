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

    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->INDEX_UPDATE_DELAY:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->mDataInvalid:Z

    new-instance v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver$1;-><init>(Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    return-void
.end method

.method private notifyDataSetChange()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->mDataInvalid:Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemIndexScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemIndexScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public hasIndexerDataValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->mDataInvalid:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onChanged()V
    .locals 0

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->notifyDataSetChange()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexerObserver;->notifyDataSetChange()V

    return-void
.end method
