.class Landroid/widget/RadialTimePickerView$1;
.super Landroid/util/FloatProperty;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Landroid/widget/RadialTimePickerView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RadialTimePickerView;


# direct methods
.method constructor <init>(Landroid/widget/RadialTimePickerView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RadialTimePickerView$1;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/widget/RadialTimePickerView;)Ljava/lang/Float;
    .locals 1

    invoke-static {p1}, Landroid/widget/RadialTimePickerView;->-get2(Landroid/widget/RadialTimePickerView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/widget/RadialTimePickerView;

    invoke-virtual {p0, p1}, Landroid/widget/RadialTimePickerView$1;->get(Landroid/widget/RadialTimePickerView;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Landroid/widget/RadialTimePickerView;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/widget/RadialTimePickerView;->-set0(Landroid/widget/RadialTimePickerView;F)F

    invoke-virtual {p1}, Landroid/widget/RadialTimePickerView;->invalidate()V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroid/widget/RadialTimePickerView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/RadialTimePickerView$1;->setValue(Landroid/widget/RadialTimePickerView;F)V

    return-void
.end method
