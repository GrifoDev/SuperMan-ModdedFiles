.class public final Landroid/renderscript/ScriptGroup$Future;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Future"
.end annotation


# instance fields
.field mClosure:Landroid/renderscript/ScriptGroup$Closure;

.field mFieldID:Landroid/renderscript/Script$FieldID;

.field mValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .locals 0
    .param p1, "closure"    # Landroid/renderscript/ScriptGroup$Closure;
    .param p2, "fieldID"    # Landroid/renderscript/Script$FieldID;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Future;->mClosure:Landroid/renderscript/ScriptGroup$Closure;

    .line 343
    iput-object p2, p0, Landroid/renderscript/ScriptGroup$Future;->mFieldID:Landroid/renderscript/Script$FieldID;

    .line 344
    iput-object p3, p0, Landroid/renderscript/ScriptGroup$Future;->mValue:Ljava/lang/Object;

    .line 341
    return-void
.end method


# virtual methods
.method getClosure()Landroid/renderscript/ScriptGroup$Closure;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Future;->mClosure:Landroid/renderscript/ScriptGroup$Closure;

    return-object v0
.end method

.method getFieldID()Landroid/renderscript/Script$FieldID;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Future;->mFieldID:Landroid/renderscript/Script$FieldID;

    return-object v0
.end method

.method getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Future;->mValue:Ljava/lang/Object;

    return-object v0
.end method
