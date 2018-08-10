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
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$1;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->getItemViewType(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x3

    :cond_1
    return v1
.end method
