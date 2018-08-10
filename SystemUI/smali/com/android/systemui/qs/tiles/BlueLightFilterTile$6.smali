.class Lcom/android/systemui/qs/tiles/BlueLightFilterTile$6;
.super Landroid/database/ContentObserver;
.source "BlueLightFilterTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BlueLightFilterTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$6;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Feature onChange( Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$6;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-get5(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$6;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-get6(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$6;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->refreshState()V

    return-void
.end method
