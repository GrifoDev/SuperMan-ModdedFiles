.class Lcom/android/systemui/qs/customize/TileQueryHelper$2;
.super Ljava/lang/Object;
.source "TileQueryHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/TileQueryHelper;->addSystemTiles(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field final synthetic val$host:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field final synthetic val$mainHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$2;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$2;->val$mainHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$2;->val$host:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$2;->val$mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/customize/TileQueryHelper$2$1;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$2;->val$host:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/customize/TileQueryHelper$2$1;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper$2;Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
