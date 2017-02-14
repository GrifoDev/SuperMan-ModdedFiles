.class public final enum Landroid/widget/Editor$SFEffectsAPI$PixEffectType;
.super Ljava/lang/Enum;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SFEffectsAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PixEffectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/Editor$SFEffectsAPI$PixEffectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

.field public static final enum BLUR:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

.field public static final enum MAGNIFIER:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

.field public static final enum NONE:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

.field public static final enum PIXELATE:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

.field public static final enum POSTERIZE:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

.field public static final enum REGION:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

.field public static final enum REGION_BLUR:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

.field public static final enum SATURATE:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;


# instance fields
.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->NONE:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    const-string/jumbo v1, "BLUR"

    invoke-direct {v0, v1, v5, v5}, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->BLUR:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    const-string/jumbo v1, "SATURATE"

    invoke-direct {v0, v1, v6, v6}, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->SATURATE:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    const-string/jumbo v1, "POSTERIZE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->POSTERIZE:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    const-string/jumbo v1, "PIXELATE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v8}, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->PIXELATE:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    const-string/jumbo v1, "REGION_BLUR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->REGION_BLUR:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    const-string/jumbo v1, "REGION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v8, v2}, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->REGION:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    const-string/jumbo v1, "MAGNIFIER"

    const/4 v2, 0x7

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->MAGNIFIER:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->NONE:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->BLUR:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->SATURATE:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->POSTERIZE:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->PIXELATE:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->REGION_BLUR:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    aput-object v1, v0, v7

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->REGION:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    aput-object v1, v0, v8

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->MAGNIFIER:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->$VALUES:[Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/Editor$SFEffectsAPI$PixEffectType;
    .locals 1

    const-class v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    return-object v0
.end method

.method public static values()[Landroid/widget/Editor$SFEffectsAPI$PixEffectType;
    .locals 1

    sget-object v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->$VALUES:[Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    return-object v0
.end method
