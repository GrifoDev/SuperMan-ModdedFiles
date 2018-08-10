.class public abstract Lcom/samsung/android/srib/vecmath/Tuple3f;
.super Ljava/lang/Object;
.source "Tuple3f.java"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/srib/vecmath/Tuple3f;->x:F

    iput v0, p0, Lcom/samsung/android/srib/vecmath/Tuple3f;->y:F

    iput v0, p0, Lcom/samsung/android/srib/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/srib/vecmath/Tuple3f;->x:F

    iput p2, p0, Lcom/samsung/android/srib/vecmath/Tuple3f;->y:F

    iput p3, p0, Lcom/samsung/android/srib/vecmath/Tuple3f;->z:F

    return-void
.end method


# virtual methods
.method public final set(FFF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/srib/vecmath/Tuple3f;->x:F

    iput p2, p0, Lcom/samsung/android/srib/vecmath/Tuple3f;->y:F

    iput p3, p0, Lcom/samsung/android/srib/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public final set(Lcom/samsung/android/srib/vecmath/Tuple3f;)V
    .locals 1

    iget v0, p1, Lcom/samsung/android/srib/vecmath/Tuple3f;->x:F

    iput v0, p0, Lcom/samsung/android/srib/vecmath/Tuple3f;->x:F

    iget v0, p1, Lcom/samsung/android/srib/vecmath/Tuple3f;->y:F

    iput v0, p0, Lcom/samsung/android/srib/vecmath/Tuple3f;->y:F

    iget v0, p1, Lcom/samsung/android/srib/vecmath/Tuple3f;->z:F

    iput v0, p0, Lcom/samsung/android/srib/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/srib/vecmath/Tuple3f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/srib/vecmath/Tuple3f;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/srib/vecmath/Tuple3f;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
