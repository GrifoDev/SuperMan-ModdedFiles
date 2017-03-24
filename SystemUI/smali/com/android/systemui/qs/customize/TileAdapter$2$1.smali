.class Lcom/android/systemui/qs/customize/TileAdapter$2$1;
.super Ljava/lang/Object;
.source "TileAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/TileAdapter$2;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/customize/TileAdapter$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$2$1;->this$1:Lcom/android/systemui/qs/customize/TileAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$2$1;->this$1:Lcom/android/systemui/qs/customize/TileAdapter$2;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$2$1;->this$1:Lcom/android/systemui/qs/customize/TileAdapter$2;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->-get3(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyItemChanged(I)V

    return-void
.end method
