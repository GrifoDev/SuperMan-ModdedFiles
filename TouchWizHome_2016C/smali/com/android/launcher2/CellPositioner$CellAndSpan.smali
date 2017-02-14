.class Lcom/android/launcher2/CellPositioner$CellAndSpan;
.super Ljava/lang/Object;
.source "CellPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellAndSpan"
.end annotation


# instance fields
.field spanX:I

.field spanY:I

.field final synthetic this$0:Lcom/android/launcher2/CellPositioner;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/android/launcher2/CellPositioner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/CellPositioner;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iput p3, p0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iput p4, p0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    iput p5, p0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    return-void
.end method


# virtual methods
.method public copy(Lcom/android/launcher2/CellPositioner$CellAndSpan;)V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iput v0, p1, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v0, p0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iput v0, p1, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v0, p0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    iput v0, p1, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    iget v0, p0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    iput v0, p1, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
