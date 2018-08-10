.class public abstract Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;
.super Ljava/lang/Object;
.source "GuidedAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GuidedAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BuilderBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mActionFlags:I

.field private mCheckSetId:I

.field private mContext:Landroid/content/Context;

.field private mDescriptionEditInputType:I

.field private mDescriptionInputType:I

.field private mEditInputType:I

.field private mEditable:I

.field private mInputType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const v2, 0x80001

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditable:I

    iput v2, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mInputType:I

    iput v2, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mDescriptionInputType:I

    iput v1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mEditInputType:I

    iput v1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mDescriptionEditInputType:I

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mCheckSetId:I

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mContext:Landroid/content/Context;

    const/16 v0, 0x70

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;->mActionFlags:I

    return-void
.end method
