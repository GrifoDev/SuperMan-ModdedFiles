.class public final enum Landroid/view/SurfaceEffects$EffectTarget;
.super Ljava/lang/Enum;
.source "SurfaceEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EffectTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/SurfaceEffects$EffectTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/SurfaceEffects$EffectTarget;

.field public static final enum BEHIND:Landroid/view/SurfaceEffects$EffectTarget;

.field public static final enum SELF_AND_BEHIND:Landroid/view/SurfaceEffects$EffectTarget;


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Landroid/view/SurfaceEffects$EffectTarget;

    const-string/jumbo v1, "BEHIND"

    invoke-direct {v0, v1, v3, v2}, Landroid/view/SurfaceEffects$EffectTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$EffectTarget;->BEHIND:Landroid/view/SurfaceEffects$EffectTarget;

    new-instance v0, Landroid/view/SurfaceEffects$EffectTarget;

    const-string/jumbo v1, "SELF_AND_BEHIND"

    invoke-direct {v0, v1, v2, v4}, Landroid/view/SurfaceEffects$EffectTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$EffectTarget;->SELF_AND_BEHIND:Landroid/view/SurfaceEffects$EffectTarget;

    new-array v0, v4, [Landroid/view/SurfaceEffects$EffectTarget;

    sget-object v1, Landroid/view/SurfaceEffects$EffectTarget;->BEHIND:Landroid/view/SurfaceEffects$EffectTarget;

    aput-object v1, v0, v3

    sget-object v1, Landroid/view/SurfaceEffects$EffectTarget;->SELF_AND_BEHIND:Landroid/view/SurfaceEffects$EffectTarget;

    aput-object v1, v0, v2

    sput-object v0, Landroid/view/SurfaceEffects$EffectTarget;->$VALUES:[Landroid/view/SurfaceEffects$EffectTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/view/SurfaceEffects$EffectTarget;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/SurfaceEffects$EffectTarget;
    .locals 1

    const-class v0, Landroid/view/SurfaceEffects$EffectTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceEffects$EffectTarget;

    return-object v0
.end method

.method public static values()[Landroid/view/SurfaceEffects$EffectTarget;
    .locals 1

    sget-object v0, Landroid/view/SurfaceEffects$EffectTarget;->$VALUES:[Landroid/view/SurfaceEffects$EffectTarget;

    return-object v0
.end method
