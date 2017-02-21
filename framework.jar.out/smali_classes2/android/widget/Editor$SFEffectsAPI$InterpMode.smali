.class public final enum Landroid/widget/Editor$SFEffectsAPI$InterpMode;
.super Ljava/lang/Enum;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SFEffectsAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InterpMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/Editor$SFEffectsAPI$InterpMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/Editor$SFEffectsAPI$InterpMode;

.field public static final enum kInterpCosine:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

.field public static final enum kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

.field public static final enum kInterpLinear:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

.field public static final enum kInterpSine:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

.field public static final enum kInterpSmooth:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

.field public static final enum kInterpSmoothIn:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

.field public static final enum kInterpSmoothOut:Landroid/widget/Editor$SFEffectsAPI$InterpMode;


# instance fields
.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    const-string/jumbo v1, "kInterpHold"

    invoke-direct {v0, v1, v5, v5}, Landroid/widget/Editor$SFEffectsAPI$InterpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    const-string/jumbo v1, "kInterpLinear"

    invoke-direct {v0, v1, v6, v6}, Landroid/widget/Editor$SFEffectsAPI$InterpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpLinear:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    const-string/jumbo v1, "kInterpSine"

    invoke-direct {v0, v1, v3, v3}, Landroid/widget/Editor$SFEffectsAPI$InterpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpSine:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    const-string/jumbo v1, "kInterpCosine"

    invoke-direct {v0, v1, v4, v4}, Landroid/widget/Editor$SFEffectsAPI$InterpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpCosine:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    const-string/jumbo v1, "kInterpSmooth"

    invoke-direct {v0, v1, v7, v7}, Landroid/widget/Editor$SFEffectsAPI$InterpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpSmooth:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    const-string/jumbo v1, "kInterpSmoothOut"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SFEffectsAPI$InterpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpSmoothOut:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    const-string/jumbo v1, "kInterpSmoothIn"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/Editor$SFEffectsAPI$InterpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpSmoothIn:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpLinear:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    aput-object v1, v0, v6

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpSine:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpCosine:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpSmooth:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    aput-object v1, v0, v7

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpSmoothOut:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpSmoothIn:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->$VALUES:[Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/Editor$SFEffectsAPI$InterpMode;
    .locals 1

    const-class v0, Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    return-object v0
.end method

.method public static values()[Landroid/widget/Editor$SFEffectsAPI$InterpMode;
    .locals 1

    sget-object v0, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->$VALUES:[Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    return-object v0
.end method
