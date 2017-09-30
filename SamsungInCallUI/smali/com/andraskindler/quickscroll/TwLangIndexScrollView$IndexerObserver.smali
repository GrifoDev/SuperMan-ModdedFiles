.class Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;
.super Landroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andraskindler/quickscroll/TwLangIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexerObserver"
.end annotation


# instance fields
.field private final INDEX_UPDATE_DELAY:J

.field mDataInvalid:Z

.field mUpdateIndex:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;


# direct methods
.method constructor <init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)V
    .locals 2

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;->INDEX_UPDATE_DELAY:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;->mDataInvalid:Z

    new-instance v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver$1;

    invoke-direct {v0, p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver$1;-><init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    return-void
.end method

.method private notifyDataSetChange()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;->mDataInvalid:Z

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1600(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)V

    return-void
.end method


# virtual methods
.method public hasIndexerDataValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;->mDataInvalid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChanged()V
    .locals 0

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;->notifyDataSetChange()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;->notifyDataSetChange()V

    return-void
.end method
