.class public final enum Landroid/view/SurfaceEffects$PixEffectType;
.super Ljava/lang/Enum;
.source "SurfaceEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PixEffectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/SurfaceEffects$PixEffectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/SurfaceEffects$PixEffectType;

.field public static final enum BLUR:Landroid/view/SurfaceEffects$PixEffectType;

.field public static final enum MAGNIFIER:Landroid/view/SurfaceEffects$PixEffectType;

.field public static final enum NONE:Landroid/view/SurfaceEffects$PixEffectType;

.field public static final enum SATURATE:Landroid/view/SurfaceEffects$PixEffectType;


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/view/SurfaceEffects$PixEffectType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3, v3}, Landroid/view/SurfaceEffects$PixEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$PixEffectType;->NONE:Landroid/view/SurfaceEffects$PixEffectType;

    new-instance v0, Landroid/view/SurfaceEffects$PixEffectType;

    const-string/jumbo v1, "BLUR"

    invoke-direct {v0, v1, v4, v4}, Landroid/view/SurfaceEffects$PixEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$PixEffectType;->BLUR:Landroid/view/SurfaceEffects$PixEffectType;

    new-instance v0, Landroid/view/SurfaceEffects$PixEffectType;

    const-string/jumbo v1, "SATURATE"

    invoke-direct {v0, v1, v5, v5}, Landroid/view/SurfaceEffects$PixEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$PixEffectType;->SATURATE:Landroid/view/SurfaceEffects$PixEffectType;

    new-instance v0, Landroid/view/SurfaceEffects$PixEffectType;

    const-string/jumbo v1, "MAGNIFIER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v6, v2}, Landroid/view/SurfaceEffects$PixEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$PixEffectType;->MAGNIFIER:Landroid/view/SurfaceEffects$PixEffectType;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/SurfaceEffects$PixEffectType;

    sget-object v1, Landroid/view/SurfaceEffects$PixEffectType;->NONE:Landroid/view/SurfaceEffects$PixEffectType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/view/SurfaceEffects$PixEffectType;->BLUR:Landroid/view/SurfaceEffects$PixEffectType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/view/SurfaceEffects$PixEffectType;->SATURATE:Landroid/view/SurfaceEffects$PixEffectType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/view/SurfaceEffects$PixEffectType;->MAGNIFIER:Landroid/view/SurfaceEffects$PixEffectType;

    aput-object v1, v0, v6

    sput-object v0, Landroid/view/SurfaceEffects$PixEffectType;->$VALUES:[Landroid/view/SurfaceEffects$PixEffectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/view/SurfaceEffects$PixEffectType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/SurfaceEffects$PixEffectType;
    .locals 1

    const-class v0, Landroid/view/SurfaceEffects$PixEffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceEffects$PixEffectType;

    return-object v0
.end method

.method public static values()[Landroid/view/SurfaceEffects$PixEffectType;
    .locals 1

    sget-object v0, Landroid/view/SurfaceEffects$PixEffectType;->$VALUES:[Landroid/view/SurfaceEffects$PixEffectType;

    return-object v0
.end method
