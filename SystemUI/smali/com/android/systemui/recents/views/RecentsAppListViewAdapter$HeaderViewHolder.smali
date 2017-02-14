.class public Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$HeaderViewHolder;
.super Lcom/android/systemui/recents/views/BaseAppListViewHolder;
.source "RecentsAppListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$HeaderViewHolder;->this$0:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-direct {p0, p2}, Lcom/android/systemui/recents/views/BaseAppListViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f1301ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$HeaderViewHolder;->labelView:Landroid/widget/TextView;

    const v0, 0x7f13031f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$HeaderViewHolder;->lineView:Landroid/view/View;

    return-void
.end method
