.class public Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;
.super Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;
.source "RecentsWindowItemAnimator.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;->setRemoveDuration(J)V

    return-void
.end method


# virtual methods
.method public animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    invoke-super/range {v0 .. v5}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;)V
    .locals 1

    iget v0, p1, Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;->removeViewOrigX:I

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->removeViewOrigX:I

    iget v0, p1, Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;->removeViewOrigY:I

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->removeViewOrigY:I

    return-void
.end method
