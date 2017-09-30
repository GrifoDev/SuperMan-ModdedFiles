.class Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;


# direct methods
.method constructor <init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver$1;->this$1:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver$1;->this$1:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexerObserver;->mDataInvalid:Z

    return-void
.end method
