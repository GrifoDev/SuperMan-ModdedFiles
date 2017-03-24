.class Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;
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

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-get1(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "blue_light_filter_opacity"

    const/4 v3, 0x5

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-get2(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/qs/QSTile$DetailAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-get3(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-get2(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/qs/QSTile$DetailAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->updateOpacity(I)V

    :cond_0
    return-void
.end method
