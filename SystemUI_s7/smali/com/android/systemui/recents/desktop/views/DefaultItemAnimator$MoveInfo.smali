.class Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->fromX:I

    iput p3, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->fromY:I

    iput p4, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->toX:I

    iput p5, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->toY:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIILcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method
