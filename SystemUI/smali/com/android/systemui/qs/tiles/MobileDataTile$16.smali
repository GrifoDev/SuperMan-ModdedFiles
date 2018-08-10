.class Lcom/android/systemui/qs/tiles/MobileDataTile$16;
.super Ljava/lang/Object;
.source "MobileDataTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;->setDataRoaming(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$16;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$16;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$16;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->-get3(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "data_roaming"

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$16;->val$enable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$16;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
