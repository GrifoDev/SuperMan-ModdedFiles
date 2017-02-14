.class Landroid/widget/ProgressBar$1;
.super Landroid/util/FloatProperty;
.source "ProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Landroid/widget/ProgressBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Landroid/widget/ProgressBar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ProgressBar$1;->this$0:Landroid/widget/ProgressBar;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/widget/ProgressBar;)Ljava/lang/Float;
    .locals 1

    invoke-static {p1}, Landroid/widget/ProgressBar;->-get1(Landroid/widget/ProgressBar;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar$1;->get(Landroid/widget/ProgressBar;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Landroid/widget/ProgressBar;F)V
    .locals 1

    const v0, 0x102000d

    invoke-static {p1, v0, p2}, Landroid/widget/ProgressBar;->-wrap1(Landroid/widget/ProgressBar;IF)V

    invoke-static {p1, p2}, Landroid/widget/ProgressBar;->-set1(Landroid/widget/ProgressBar;F)F

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ProgressBar$1;->setValue(Landroid/widget/ProgressBar;F)V

    return-void
.end method
