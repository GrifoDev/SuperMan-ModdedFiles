.class final Lcom/android/systemui/infinity/preview/ParticleModel$1;
.super Ljava/lang/Object;
.source "ParticleModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/preview/ParticleModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/infinity/preview/ParticleModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/infinity/preview/ParticleModel;Lcom/android/systemui/infinity/preview/ParticleModel;)I
    .locals 4

    const/4 v3, 0x0

    iget v1, p2, Lcom/android/systemui/infinity/preview/ParticleModel;->tz:F

    iget v2, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->tz:F

    sub-float v0, v1, v2

    cmpl-float v1, v0, v3

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    cmpg-float v1, v0, v3

    if-gez v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/systemui/infinity/preview/ParticleModel;

    check-cast p2, Lcom/android/systemui/infinity/preview/ParticleModel;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/infinity/preview/ParticleModel$1;->compare(Lcom/android/systemui/infinity/preview/ParticleModel;Lcom/android/systemui/infinity/preview/ParticleModel;)I

    move-result v0

    return v0
.end method
