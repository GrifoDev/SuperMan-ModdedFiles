.class Landroid/support/v17/leanback/widget/RecyclerViewParallax$2;
.super Ljava/lang/Object;
.source "RecyclerViewParallax.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/RecyclerViewParallax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/RecyclerViewParallax;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/RecyclerViewParallax;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$2;->this$0:Landroid/support/v17/leanback/widget/RecyclerViewParallax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$2;->this$0:Landroid/support/v17/leanback/widget/RecyclerViewParallax;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->updateValues()V

    return-void
.end method
