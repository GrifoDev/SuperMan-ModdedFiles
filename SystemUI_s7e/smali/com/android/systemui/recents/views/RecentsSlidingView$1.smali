.class Lcom/android/systemui/recents/views/RecentsSlidingView$1;
.super Ljava/lang/Object;
.source "RecentsSlidingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsSlidingView;->bindViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsSlidingView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsSlidingView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView$1;->this$0:Lcom/android/systemui/recents/views/RecentsSlidingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView$1;->this$0:Lcom/android/systemui/recents/views/RecentsSlidingView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->toggleScrollVertical()V

    return-void
.end method
