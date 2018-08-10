.class public Lcom/altamirasoft/path_animation/PaintLineModelFactory;
.super Ljava/lang/Object;
.source "PaintLineModelFactory.java"


# instance fields
.field defaultLineCap:Landroid/graphics/Paint$Cap;

.field defaultLineColor:I

.field defaultLineWidth:I

.field listener:Lcom/altamirasoft/path_animation/PathListener;

.field mLineCap:[Landroid/graphics/Paint$Cap;

.field mLineColor:[I

.field mLineWidth:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineWidth:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineColor:I

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineCap:Landroid/graphics/Paint$Cap;

    new-instance v0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;

    invoke-direct {v0, p0}, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;-><init>(Lcom/altamirasoft/path_animation/PaintLineModelFactory;)V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->listener:Lcom/altamirasoft/path_animation/PathListener;

    return-void
.end method

.method public static newInstance(IILandroid/graphics/Paint$Cap;)Lcom/altamirasoft/path_animation/PaintLineModelFactory;
    .locals 1

    new-instance v0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    invoke-direct {v0}, Lcom/altamirasoft/path_animation/PaintLineModelFactory;-><init>()V

    invoke-virtual {v0, p0}, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->setDefaultLineWidth(I)Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    invoke-virtual {v0, p1}, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->setDefaultLineColor(I)Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    invoke-virtual {v0, p2}, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->setDefaultLineCap(Landroid/graphics/Paint$Cap;)Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/altamirasoft/path_animation/PathListener;
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->listener:Lcom/altamirasoft/path_animation/PathListener;

    return-object v0
.end method

.method public setDefaultLineCap(Landroid/graphics/Paint$Cap;)Lcom/altamirasoft/path_animation/PaintLineModelFactory;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->mLineCap:[Landroid/graphics/Paint$Cap;

    iput-object p1, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineCap:Landroid/graphics/Paint$Cap;

    return-object p0
.end method

.method public setDefaultLineColor(I)Lcom/altamirasoft/path_animation/PaintLineModelFactory;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->mLineColor:[I

    iput p1, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineColor:I

    return-object p0
.end method

.method public setDefaultLineWidth(I)Lcom/altamirasoft/path_animation/PaintLineModelFactory;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->mLineWidth:[I

    iput p1, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineWidth:I

    return-object p0
.end method
