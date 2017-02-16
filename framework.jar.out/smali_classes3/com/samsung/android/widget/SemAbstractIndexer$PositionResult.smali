.class Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;
.super Ljava/lang/Object;
.source "SemAbstractIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemAbstractIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PositionResult"
.end annotation


# instance fields
.field exactMatch:Z

.field position:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;->position:I

    .line 620
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;->exactMatch:Z

    .line 618
    return-void
.end method

.method constructor <init>(IZ)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "exact"    # Z

    .prologue
    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    iput p1, p0, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;->position:I

    .line 616
    iput-boolean p2, p0, Lcom/samsung/android/widget/SemAbstractIndexer$PositionResult;->exactMatch:Z

    .line 614
    return-void
.end method
