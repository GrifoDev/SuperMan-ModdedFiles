.class final Landroid/widget/Switch$1;
.super Landroid/util/FloatProperty;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Switch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Landroid/widget/Switch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1525
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/widget/Switch;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Landroid/widget/Switch;

    .prologue
    .line 1528
    invoke-static {p1}, Landroid/widget/Switch;->-get0(Landroid/widget/Switch;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1527
    check-cast p1, Landroid/widget/Switch;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/widget/Switch$1;->get(Landroid/widget/Switch;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Landroid/widget/Switch;F)V
    .locals 0
    .param p1, "object"    # Landroid/widget/Switch;
    .param p2, "value"    # F

    .prologue
    .line 1533
    invoke-static {p1, p2}, Landroid/widget/Switch;->-wrap0(Landroid/widget/Switch;F)V

    .line 1532
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # F

    .prologue
    .line 1532
    check-cast p1, Landroid/widget/Switch;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/widget/Switch$1;->setValue(Landroid/widget/Switch;F)V

    return-void
.end method
