.class final Landroid/transition/ChangeTransform$1;
.super Landroid/util/Property;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/transition/ChangeTransform$PathAnimatorMatrix;",
        "[F>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous1"    # Ljava/lang/String;

    .prologue
    .line 66
    .local p1, "$anonymous0":Ljava/lang/Class;, "Ljava/lang/Class<[F>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/transition/ChangeTransform$1;->get(Landroid/transition/ChangeTransform$PathAnimatorMatrix;)[F

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/transition/ChangeTransform$PathAnimatorMatrix;)[F
    .locals 1
    .param p1, "object"    # Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Landroid/transition/ChangeTransform$PathAnimatorMatrix;[F)V
    .locals 0
    .param p1, "object"    # Landroid/transition/ChangeTransform$PathAnimatorMatrix;
    .param p2, "value"    # [F

    .prologue
    .line 74
    invoke-virtual {p1, p2}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->setValues([F)V

    .line 73
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p1, Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p2, [F

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/transition/ChangeTransform$1;->set(Landroid/transition/ChangeTransform$PathAnimatorMatrix;[F)V

    return-void
.end method
