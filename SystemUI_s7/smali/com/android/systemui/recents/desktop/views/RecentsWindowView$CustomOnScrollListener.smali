.class Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecentsWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/desktop/views/RecentsWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomOnScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-static {v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->-wrap0(Lcom/android/systemui/recents/desktop/views/RecentsWindowView;)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method
