.class Landroid/widget/Editor$SFEffectsAPI$Animation;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SFEffectsAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Animation"
.end annotation


# instance fields
.field public animParam:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

.field public frame:I

.field public mode:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

.field public value:F


# direct methods
.method public constructor <init>(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$SFEffectsAPI$Animation;->animParam:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    iput p2, p0, Landroid/widget/Editor$SFEffectsAPI$Animation;->frame:I

    iput p3, p0, Landroid/widget/Editor$SFEffectsAPI$Animation;->value:F

    iput-object p4, p0, Landroid/widget/Editor$SFEffectsAPI$Animation;->mode:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    return-void
.end method
