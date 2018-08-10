.class Lcom/android/systemui/qs/tiles/FlashlightTile$3;
.super Landroid/database/ContentObserver;
.source "FlashlightTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/FlashlightTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/FlashlightTile;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$3;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$3;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get2(Lcom/android/systemui/qs/tiles/FlashlightTile;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$3;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get0(Lcom/android/systemui/qs/tiles/FlashlightTile;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Feature onChange "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$3;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get1(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v3, v0, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$3;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-get5(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v3, v3, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$3;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    xor-int/lit8 v4, v2, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/qs/tiles/FlashlightTile;->-wrap2(Lcom/android/systemui/qs/tiles/FlashlightTile;Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method
