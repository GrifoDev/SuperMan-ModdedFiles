.class Lcom/android/systemui/qs/tiles/WifiCallingTile$2;
.super Landroid/database/ContentObserver;
.source "WifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiCallingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_UNIFIEDWFC:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-set0(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-wrap1(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-wrap2(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V

    return-void
.end method
