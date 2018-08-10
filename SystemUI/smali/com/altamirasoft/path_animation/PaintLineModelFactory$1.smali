.class Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;
.super Ljava/lang/Object;
.source "PaintLineModelFactory.java"

# interfaces
.implements Lcom/altamirasoft/path_animation/PathListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/altamirasoft/path_animation/PaintLineModelFactory;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;


# direct methods
.method constructor <init>(Lcom/altamirasoft/path_animation/PaintLineModelFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLineCapStyle(I)Landroid/graphics/Paint$Cap;
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->mLineCap:[Landroid/graphics/Paint$Cap;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineCap:Landroid/graphics/Paint$Cap;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->mLineCap:[Landroid/graphics/Paint$Cap;

    array-length v0, v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->mLineCap:[Landroid/graphics/Paint$Cap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineColor(I)I
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->mLineColor:[I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    iget v0, v0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineColor:I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->mLineColor:[I

    array-length v0, v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->mLineColor:[I

    aget v0, v0, p1

    return v0
.end method

.method public getLineWidth(I)I
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->mLineWidth:[I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    iget v0, v0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineWidth:I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->mLineWidth:[I

    array-length v0, v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->mLineWidth:[I

    aget v0, v0, p1

    return v0
.end method
