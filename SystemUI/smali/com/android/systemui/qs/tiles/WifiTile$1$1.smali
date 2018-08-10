.class Lcom/android/systemui/qs/tiles/WifiTile$1$1;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WifiTile$1;->onChanged(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/WifiTile$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$1$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$1;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->-get6(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getSecureWifiState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->-wrap0(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;I)V

    return-void
.end method
