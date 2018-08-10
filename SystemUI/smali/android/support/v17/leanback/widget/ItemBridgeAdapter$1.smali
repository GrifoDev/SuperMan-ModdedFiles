.class Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;
.super Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;
.source "ItemBridgeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;->this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;->this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;->this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;->this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;->this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
