.class public Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DividerStartSnapModeEvent.java"


# instance fields
.field public mReason:I

.field public final mSendToSerivce:Z

.field public final mStart:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mStart:Z

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mSendToSerivce:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mReason:I

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mStart:Z

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mSendToSerivce:Z

    iput p3, p0, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mReason:I

    return-void
.end method
