.class Lcom/android/systemui/qs/tiles/EbookTile$1;
.super Landroid/database/ContentObserver;
.source "EbookTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/EbookTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/EbookTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/EbookTile;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/EbookTile$1;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile$1;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/EbookTile;->-get2(Lcom/android/systemui/qs/tiles/EbookTile;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/android/systemui/qs/tiles/EbookTile;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Feature onChange "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile$1;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/EbookTile;->-get2(Lcom/android/systemui/qs/tiles/EbookTile;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile$1;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/EbookTile;->-get1(Lcom/android/systemui/qs/tiles/EbookTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, -0x2

    invoke-static {v2, v0, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile$1;->this$0:Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/tiles/EbookTile;->refreshState()V

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    return-void
.end method
