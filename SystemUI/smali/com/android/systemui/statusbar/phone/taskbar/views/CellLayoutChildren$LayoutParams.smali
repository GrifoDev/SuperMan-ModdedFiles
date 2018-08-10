.class public Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayoutChildren.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams$1;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams$2;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams$3;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams$4;
    }
.end annotation


# static fields
.field public static final HEIGHT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;",
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
            "Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;",
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
            "Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;",
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
            "Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public screen:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

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

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams$1;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->WIDTH:Landroid/util/Property;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams$2;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->HEIGHT:Landroid/util/Property;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams$3;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "x"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->X:Landroid/util/Property;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams$4;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "y"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->Y:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->screen:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->width:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->y:I

    return-void
.end method

.method public setup(IIIIZ)V
    .locals 2

    if-eqz p5, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->screen:I

    add-int v1, p1, p3

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->x:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->topMargin:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->y:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->leftMargin:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->width:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->topMargin:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->bottomMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->height:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->screen:I

    add-int v1, p2, p4

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->y:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->leftMargin:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->x:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->leftMargin:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->width:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
