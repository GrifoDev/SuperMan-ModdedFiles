.class public Lcom/android/launcher2/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final HEIGHT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/CellLayout$LayoutParams;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIDTH:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/CellLayout$LayoutParams;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/CellLayout$LayoutParams;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/CellLayout$LayoutParams;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field dropped:Z

.field public isLockedToGrid:Z

.field public tmpCellX:I

.field public tmpCellY:I

.field public useTmpCoords:Z

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/CellLayout$LayoutParams$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/CellLayout$LayoutParams;->WIDTH:Landroid/util/Property;

    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams$2;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/CellLayout$LayoutParams$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/CellLayout$LayoutParams;->HEIGHT:Landroid/util/Property;

    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams$3;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "x"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/CellLayout$LayoutParams$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/CellLayout$LayoutParams;->X:Landroid/util/Property;

    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams$4;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "y"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/CellLayout$LayoutParams$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/CellLayout$LayoutParams;->Y:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput p2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iput p2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iput p3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput p4, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method


# virtual methods
.method public containsPt(II)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    if-lt p2, v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iget v2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget v2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    add-int/2addr v1, v2

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public containsPtwithScale(IIF)Z
    .locals 4

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v1, v3

    iget v3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v0, v3

    iget v3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    if-lt p1, v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    if-lt p2, v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    add-int/2addr v3, v1

    if-gt p1, v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    add-int/2addr v3, v0

    if-gt p2, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    return-void
.end method

.method public setup(IIIII)V
    .locals 4

    iget-boolean v2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_3

    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_4

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    :goto_1
    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v2, :cond_0

    sub-int v2, p5, v0

    iget v3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    sub-int v0, v2, v3

    :cond_0
    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v2, :cond_1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    add-int v2, p1, p3

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    add-int v2, p2, p4

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget v2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    mul-int/2addr v2, p1

    iget v3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, p3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    mul-int/2addr v2, p2

    iget v3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, p4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
