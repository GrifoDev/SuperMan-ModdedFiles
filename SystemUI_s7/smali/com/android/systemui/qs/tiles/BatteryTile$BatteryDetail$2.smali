.class Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$2;
.super Ljava/lang/Object;
.source "BatteryTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->postBindView()V
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

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$2;->this$1:Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$2;->this$1:Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->-wrap1(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)V

    return-void
.end method
