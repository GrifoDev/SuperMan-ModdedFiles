.class public Lcom/android/systemui/stackdivider/events/DividerPopupVisibleEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DividerPopupVisibleEvent.java"


# instance fields
.field private flag:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/stackdivider/events/DividerPopupVisibleEvent;->flag:I

    return-void
.end method


# virtual methods
.method public isRemove()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/stackdivider/events/DividerPopupVisibleEvent;->flag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/stackdivider/events/DividerPopupVisibleEvent;->flag:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
