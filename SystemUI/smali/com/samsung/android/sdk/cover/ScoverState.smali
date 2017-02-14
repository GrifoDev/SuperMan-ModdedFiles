.class public Lcom/samsung/android/sdk/cover/ScoverState;
.super Ljava/lang/Object;
.source "ScoverState.java"


# instance fields
.field public attached:Z

.field public color:I

.field private fakeCover:Z

.field private heightPixel:I

.field public model:I

.field private switchState:Z

.field public type:I

.field private widthPixel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    iput v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    iput v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    iput v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    iput v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    iput v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    return-void
.end method

.method public constructor <init>(ZIIIIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    iput-boolean p6, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    iput v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    return-void
.end method

.method public constructor <init>(ZIIIIZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    iput-boolean p6, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    iput p7, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    return-void
.end method

.method public constructor <init>(ZIIIIZIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    iput-boolean p6, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    iput p7, p0, Lcom/samsung/android/sdk/cover/ScoverState;->model:I

    iput-boolean p8, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    return-void
.end method


# virtual methods
.method public getSwitchState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "ScoverState(switchState=%b type=%d color=%d widthPixel=%d heightPixel=%d attached=%b fakeCover=%b)"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->fakeCover:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
