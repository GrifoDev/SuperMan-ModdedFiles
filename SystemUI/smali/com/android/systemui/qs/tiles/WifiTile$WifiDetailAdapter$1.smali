.class Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->-get0(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->val$visible:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f038d

    :goto_0
    const v2, 0x7f0201e5

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(II)V

    return-void

    :cond_0
    const v0, 0x7f0f038e

    goto :goto_0
.end method
