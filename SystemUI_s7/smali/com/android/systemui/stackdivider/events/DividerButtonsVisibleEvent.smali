.class public Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DividerButtonsVisibleEvent.java"


# static fields
.field public static FLAG_ANIMATE:I

.field public static FLAG_INVISIBLE:I

.field public static FLAG_ONCE:I

.field public static FLAG_VISIBLE:I


# instance fields
.field private flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->FLAG_INVISIBLE:I

    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->FLAG_VISIBLE:I

    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->FLAG_ANIMATE:I

    const/4 v0, 0x4

    sput v0, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->FLAG_ONCE:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->flag:I

    return-void
.end method


# virtual methods
.method public isAnimate()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->flag:I

    sget v2, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->FLAG_ANIMATE:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isOnce()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->flag:I

    sget v2, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->FLAG_ONCE:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isVisible()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->flag:I

    sget v2, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->FLAG_VISIBLE:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
