.class Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;
.super Ljava/lang/Object;
.source "ProgramFragmentFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Slot"
.end annotation


# instance fields
.field env:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

.field format:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

.field final synthetic this$1:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;


# direct methods
.method constructor <init>(Landroid/renderscript/ProgramFragmentFixedFunction$Builder;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;)V
    .locals 0
    .param p1, "this$1"    # Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .param p2, "_env"    # Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;
    .param p3, "_fmt"    # Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    .prologue
    .line 154
    iput-object p1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;->this$1:Landroid/renderscript/ProgramFragmentFixedFunction$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;->env:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    .line 156
    iput-object p3, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;->format:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    .line 154
    return-void
.end method
