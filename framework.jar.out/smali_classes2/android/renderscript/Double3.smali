.class public Landroid/renderscript/Double3;
.super Ljava/lang/Object;
.source "Double3.java"


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/renderscript/Double3;->x:D

    iput-wide p3, p0, Landroid/renderscript/Double3;->y:D

    iput-wide p5, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Double3;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p1, Landroid/renderscript/Double3;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p1, Landroid/renderscript/Double3;->z:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public static add(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .locals 5

    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    add-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    add-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    add-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static add(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .locals 6

    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->x:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->y:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->z:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static div(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .locals 5

    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    div-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    div-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    div-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static div(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .locals 6

    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->x:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->y:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->z:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)D
    .locals 6

    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    iget-wide v4, p0, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    iget-wide v4, p0, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static mul(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .locals 5

    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .locals 6

    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .locals 5

    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    sub-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    sub-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    sub-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .locals 6

    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->x:D

    sub-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->y:D

    sub-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->z:D

    sub-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method


# virtual methods
.method public add(D)V
    .locals 3

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public add(Landroid/renderscript/Double3;)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public addAt(ID)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    return-void

    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    return-void

    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Double3;D)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public copyTo([DI)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    aput-wide v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    aput-wide v2, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    aput-wide v2, p1, v0

    return-void
.end method

.method public div(D)V
    .locals 3

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public div(Landroid/renderscript/Double3;)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Double3;)D
    .locals 6

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public elementSum()D
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public get(I)D
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    return-wide v0

    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    return-wide v0

    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public length()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public mul(D)V
    .locals 3

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public mul(Landroid/renderscript/Double3;)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public negate()V
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public set(Landroid/renderscript/Double3;)V
    .locals 2

    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p1, Landroid/renderscript/Double3;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p1, Landroid/renderscript/Double3;->z:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public setAt(ID)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput-wide p2, p0, Landroid/renderscript/Double3;->x:D

    return-void

    :pswitch_1
    iput-wide p2, p0, Landroid/renderscript/Double3;->y:D

    return-void

    :pswitch_2
    iput-wide p2, p0, Landroid/renderscript/Double3;->z:D

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setValues(DDD)V
    .locals 1

    iput-wide p1, p0, Landroid/renderscript/Double3;->x:D

    iput-wide p3, p0, Landroid/renderscript/Double3;->y:D

    iput-wide p5, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public sub(D)V
    .locals 3

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public sub(Landroid/renderscript/Double3;)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method
