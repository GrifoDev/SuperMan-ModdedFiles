.class abstract Landroid/animation/PathKeyframes$SimpleKeyframes;
.super Ljava/lang/Object;
.source "PathKeyframes.java"

# interfaces
.implements Landroid/animation/Keyframes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PathKeyframes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SimpleKeyframes"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/animation/PathKeyframes$SimpleKeyframes;)V
    .locals 0

    invoke-direct {p0}, Landroid/animation/PathKeyframes$SimpleKeyframes;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/Keyframes;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/animation/Keyframes;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/animation/PathKeyframes$SimpleKeyframes;->clone()Landroid/animation/Keyframes;

    move-result-object v0

    return-object v0
.end method

.method public getKeyframes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/animation/PathKeyframes;->-get0()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKeyframes()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Landroid/animation/PathKeyframes$SimpleKeyframes;->getKeyframes()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 0

    return-void
.end method
