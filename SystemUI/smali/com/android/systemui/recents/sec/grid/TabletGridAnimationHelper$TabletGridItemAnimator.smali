.class public Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$TabletGridItemAnimator;
.super Landroid/support/v7/widget/DefaultItemAnimator;
.source "TabletGridAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabletGridItemAnimator"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$TabletGridItemAnimator;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$TabletGridItemAnimator;->setAddDuration(J)V

    const-wide/16 v0, 0xa5

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$TabletGridItemAnimator;->setRemoveDuration(J)V

    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method


# virtual methods
.method public animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 6

    const-string/jumbo v0, "TabletGridItemAnimator"

    const-string/jumbo v1, "animateMove() - pos=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    invoke-super/range {v0 .. v5}, Landroid/support/v7/widget/DefaultItemAnimator;->animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0
.end method
