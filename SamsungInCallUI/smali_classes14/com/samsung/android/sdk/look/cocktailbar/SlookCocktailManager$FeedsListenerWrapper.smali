.class Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;
.super Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;
.source "SlookCocktailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedsListenerWrapper"
.end annotation


# instance fields
.field private mOnFeedUpdatedListener:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnFeedUpdatedListener;

.field final synthetic this$0:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnFeedUpdatedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;->this$0:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;->mOnFeedUpdatedListener:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnFeedUpdatedListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;->mOnFeedUpdatedListener:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnFeedUpdatedListener;

    return-void
.end method


# virtual methods
.method public onFeedsUpdated(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/FeedsInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;->mOnFeedUpdatedListener:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnFeedUpdatedListener;

    if-eqz v4, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;->mOnFeedUpdatedListener:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnFeedUpdatedListener;

    invoke-interface {v4, p1, v2, v1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnFeedUpdatedListener;->onFeedUpdated(ILjava/util/List;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/FeedsInfo;

    new-instance v5, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo$Builder;

    iget-object v6, v0, Lcom/samsung/android/cocktailbar/FeedsInfo;->feedsText:Ljava/lang/CharSequence;

    invoke-direct {v5, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo$Builder;-><init>(Ljava/lang/CharSequence;)V

    iget v6, v0, Lcom/samsung/android/cocktailbar/FeedsInfo;->icon:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo$Builder;->setIcon(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo$Builder;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/cocktailbar/FeedsInfo;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo$Builder;->build()Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/cocktailbar/FeedsInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOnFeedsUpdatedListener(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnFeedUpdatedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;->mOnFeedUpdatedListener:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnFeedUpdatedListener;

    return-void
.end method
