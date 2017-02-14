.class Lcom/android/systemui/qs/customize/TileAdapter$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "TileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/TileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$1;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 4

    const/4 v3, 0x4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$1;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->getItemViewType(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$1;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->-get1(Lcom/android/systemui/qs/customize/TileAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    const-string/jumbo v2, "qs_tile_column"

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v1

    :cond_1
    return v1
.end method
