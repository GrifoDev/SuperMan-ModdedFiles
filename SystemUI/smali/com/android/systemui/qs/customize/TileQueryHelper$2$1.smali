.class Lcom/android/systemui/qs/customize/TileQueryHelper$2$1;
.super Ljava/lang/Object;
.source "TileQueryHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/TileQueryHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/customize/TileQueryHelper$2;

.field final synthetic val$host:Lcom/android/systemui/statusbar/phone/QSTileHost;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileQueryHelper$2;Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$2$1;->this$1:Lcom/android/systemui/qs/customize/TileQueryHelper$2;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$2$1;->val$host:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$2$1;->this$1:Lcom/android/systemui/qs/customize/TileQueryHelper$2;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$2;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Collection;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$2$1;->val$host:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
