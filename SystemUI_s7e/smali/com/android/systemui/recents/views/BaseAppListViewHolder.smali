.class public abstract Lcom/android/systemui/recents/views/BaseAppListViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BaseAppListViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public asyncTask:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field public contentView:Landroid/widget/LinearLayout;

.field public iconView:Landroid/widget/ImageView;

.field public labelView:Landroid/widget/TextView;

.field public lineView:Landroid/view/View;

.field public nestedAppListView:Lcom/android/systemui/recents/views/NestedAppListView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f13031d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->contentView:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setAsyncTask(Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->asyncTask:Ljava/lang/ref/WeakReference;

    return-void
.end method
