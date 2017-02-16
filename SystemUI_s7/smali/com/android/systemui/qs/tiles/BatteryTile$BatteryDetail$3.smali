.class Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$3;
.super Ljava/lang/Object;
.source "BatteryTile.java"

# interfaces
.implements Lcom/android/settingslib/BatteryInfo$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->bindView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$3;->this$1:Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryInfoLoaded(Lcom/android/settingslib/BatteryInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$3;->this$1:Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->-get0(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$3;->this$1:Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->-wrap0(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;Lcom/android/settingslib/BatteryInfo;)V

    :cond_0
    return-void
.end method
