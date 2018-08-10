.class public Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DividerSnapViewVisibleEvent.java"


# instance fields
.field public final mAdjConventionalMode:I

.field public final mDockedRect:Landroid/graphics/Rect;

.field public final mInitSize:I

.field public final mSnapCaller:Ljava/lang/String;

.field public final mSnapTarget:I

.field public final mVisible:Z


# direct methods
.method public constructor <init>(ZILandroid/graphics/Rect;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mVisible:Z

    iput p2, p0, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mSnapTarget:I

    iput-object p3, p0, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mDockedRect:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mInitSize:I

    iput-object p5, p0, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mSnapCaller:Ljava/lang/String;

    iput p6, p0, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mAdjConventionalMode:I

    return-void
.end method

.method public constructor <init>(ZILandroid/graphics/Rect;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mVisible:Z

    iput p2, p0, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mSnapTarget:I

    iput-object p3, p0, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mDockedRect:Landroid/graphics/Rect;

    iput v0, p0, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mInitSize:I

    iput-object p4, p0, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mSnapCaller:Ljava/lang/String;

    iput v0, p0, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mAdjConventionalMode:I

    return-void
.end method
