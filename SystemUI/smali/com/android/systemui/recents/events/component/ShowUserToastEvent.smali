.class public Lcom/android/systemui/recents/events/component/ShowUserToastEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "ShowUserToastEvent.java"


# instance fields
.field public final msgLength:I

.field public final msgResId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;->msgResId:I

    iput p2, p0, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;->msgLength:I

    return-void
.end method
