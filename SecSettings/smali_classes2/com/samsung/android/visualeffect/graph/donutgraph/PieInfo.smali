.class public Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;
.super Ljava/lang/Object;
.source "PieInfo.java"


# instance fields
.field private color:Ljava/lang/String;

.field private data:F

.field private line_x:I

.field private line_y:I


# direct methods
.method public constructor <init>(FLjava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->data:F

    iput-object p2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->color:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->line_x:I

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->line_y:I

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getData()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->data:F

    return v0
.end method

.method public getLineX()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->line_x:I

    return v0
.end method

.method public getLineY()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->line_y:I

    return v0
.end method
