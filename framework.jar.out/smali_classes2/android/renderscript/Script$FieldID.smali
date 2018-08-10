.class public final Landroid/renderscript/Script$FieldID;
.super Landroid/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldID"
.end annotation


# instance fields
.field mScript:Landroid/renderscript/Script;

.field mSlot:I


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object p4, p0, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    iput p5, p0, Landroid/renderscript/Script$FieldID;->mSlot:I

    iget-object v0, p0, Landroid/renderscript/Script$FieldID;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method
