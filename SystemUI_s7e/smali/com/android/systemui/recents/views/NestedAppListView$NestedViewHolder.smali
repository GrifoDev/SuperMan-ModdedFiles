.class public Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;
.super Lcom/android/systemui/recents/views/BaseAppListViewHolder;
.source "NestedAppListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/NestedAppListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NestedViewHolder"
.end annotation


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

.field final synthetic this$0:Lcom/android/systemui/recents/views/NestedAppListView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/NestedAppListView;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->this$0:Lcom/android/systemui/recents/views/NestedAppListView;

    invoke-direct {p0, p2}, Lcom/android/systemui/recents/views/BaseAppListViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f1301ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->labelView:Landroid/widget/TextView;

    const v0, 0x7f130093

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->iconView:Landroid/widget/ImageView;

    return-void
.end method

.method private startApp(I)V
    .locals 4

    new-instance v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder$1;-><init>(Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;I)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->startApp(I)V

    return-void
.end method
