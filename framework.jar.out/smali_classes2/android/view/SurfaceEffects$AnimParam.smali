.class public final enum Landroid/view/SurfaceEffects$AnimParam;
.super Ljava/lang/Enum;
.source "SurfaceEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/SurfaceEffects$AnimParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum ALPHA:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum BLUR_ALPHA:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum REGION_CORNER_SIZE:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum REGION_FACTOR_X:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum REGION_FACTOR_Y:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum REGION_OFFSET_X:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum REGION_OFFSET_Y:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum REGION_POS_X:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum REGION_POS_Y:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum REGION_SIZE_X:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum REGION_SIZE_Y:Landroid/view/SurfaceEffects$AnimParam;

.field public static final enum SATURATION:Landroid/view/SurfaceEffects$AnimParam;


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0xd

    const/16 v4, 0xc

    new-instance v0, Landroid/view/SurfaceEffects$AnimParam;

    const-string/jumbo v1, "ALPHA"

    invoke-direct {v0, v1, v6, v4}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimParam;->ALPHA:Landroid/view/SurfaceEffects$AnimParam;

    new-instance v0, Landroid/view/SurfaceEffects$AnimParam;

    const-string/jumbo v1, "BLUR_RADIUS"

    invoke-direct {v0, v1, v7, v5}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    new-instance v0, Landroid/view/SurfaceEffects$AnimParam;

    const-string/jumbo v1, "BLUR_SATURATION"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v8, v2}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimParam;->BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    new-instance v0, Landroid/view/SurfaceEffects$AnimParam;

    const-string/jumbo v1, "BLUR_ALPHA"

    const/4 v2, 0x3

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimParam;->BLUR_ALPHA:Landroid/view/SurfaceEffects$AnimParam;

    new-instance v0, Landroid/view/SurfaceEffects$AnimParam;

    const-string/jumbo v1, "SATURATION"

    const/4 v2, 0x4

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimParam;->SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    new-instance v0, Landroid/view/SurfaceEffects$AnimParam;

    const-string/jumbo v1, "REGION_SIZE_X"

    const/4 v2, 0x5

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimParam;->REGION_SIZE_X:Landroid/view/SurfaceEffects$AnimParam;

    new-instance v0, Landroid/view/SurfaceEffects$AnimParam;

    const-string/jumbo v1, "REGION_SIZE_Y"

    const/4 v2, 0x6

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimParam;->REGION_SIZE_Y:Landroid/view/SurfaceEffects$AnimParam;

    new-instance v0, Landroid/view/SurfaceEffects$AnimParam;

    const-string/jumbo v1, "REGION_CORNER_SIZE"

    const/4 v2, 0x7

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimParam;->REGION_CORNER_SIZE:Landroid/view/SurfaceEffects$AnimParam;

    new-instance v0, Landroid/view/SurfaceEffects$AnimParam;

    const-string/jumbo v1, "REGION_POS_X"

    const/16 v2, 0x8

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimParam;->REGION_POS_X:Landroid/view/SurfaceEffects$AnimParam;

    new-instance v0, Landroid/view/SurfaceEffects$AnimParam;

    const-string/jumbo v1, "REGION_POS_Y"

    const/16 v2, 0x9

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimParam;->REGION_POS_Y:Landroid/view/SurfaceEffects$AnimParam;

    new-instance v0, Landroid/view/SurfaceEffects$AnimParam;

    const-string/jumbo v1, "REGION_FACTOR_X"

    const/16 v2, 0xa

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimParam;->REGION_FACTOR_X:Landroid/view/SurfaceEffects$AnimParam;

    new-instance v0, Landroid/view/SurfaceEffects$AnimParam;

    const-string/jumbo v1, "REGION_FACTOR_Y"

    const/16 v2, 0xb

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimParam;->REGION_FACTOR_Y:Landroid/view/SurfaceEffects$AnimParam;

    new-instance v0, Landroid/view/SurfaceEffects$AnimParam;

    const-string/jumbo v1, "REGION_OFFSET_X"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v4, v2}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimParam;->REGION_OFFSET_X:Landroid/view/SurfaceEffects$AnimParam;

    new-instance v0, Landroid/view/SurfaceEffects$AnimParam;

    const-string/jumbo v1, "REGION_OFFSET_Y"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v5, v2}, Landroid/view/SurfaceEffects$AnimParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimParam;->REGION_OFFSET_Y:Landroid/view/SurfaceEffects$AnimParam;

    const/16 v0, 0xe

    new-array v0, v0, [Landroid/view/SurfaceEffects$AnimParam;

    sget-object v1, Landroid/view/SurfaceEffects$AnimParam;->ALPHA:Landroid/view/SurfaceEffects$AnimParam;

    aput-object v1, v0, v6

    sget-object v1, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    aput-object v1, v0, v7

    sget-object v1, Landroid/view/SurfaceEffects$AnimParam;->BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    aput-object v1, v0, v8

    sget-object v1, Landroid/view/SurfaceEffects$AnimParam;->BLUR_ALPHA:Landroid/view/SurfaceEffects$AnimParam;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/SurfaceEffects$AnimParam;->SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/SurfaceEffects$AnimParam;->REGION_SIZE_X:Landroid/view/SurfaceEffects$AnimParam;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/SurfaceEffects$AnimParam;->REGION_SIZE_Y:Landroid/view/SurfaceEffects$AnimParam;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/SurfaceEffects$AnimParam;->REGION_CORNER_SIZE:Landroid/view/SurfaceEffects$AnimParam;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/SurfaceEffects$AnimParam;->REGION_POS_X:Landroid/view/SurfaceEffects$AnimParam;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/SurfaceEffects$AnimParam;->REGION_POS_Y:Landroid/view/SurfaceEffects$AnimParam;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/SurfaceEffects$AnimParam;->REGION_FACTOR_X:Landroid/view/SurfaceEffects$AnimParam;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/SurfaceEffects$AnimParam;->REGION_FACTOR_Y:Landroid/view/SurfaceEffects$AnimParam;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/SurfaceEffects$AnimParam;->REGION_OFFSET_X:Landroid/view/SurfaceEffects$AnimParam;

    aput-object v1, v0, v4

    sget-object v1, Landroid/view/SurfaceEffects$AnimParam;->REGION_OFFSET_Y:Landroid/view/SurfaceEffects$AnimParam;

    aput-object v1, v0, v5

    sput-object v0, Landroid/view/SurfaceEffects$AnimParam;->$VALUES:[Landroid/view/SurfaceEffects$AnimParam;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/view/SurfaceEffects$AnimParam;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/SurfaceEffects$AnimParam;
    .locals 1

    const-class v0, Landroid/view/SurfaceEffects$AnimParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceEffects$AnimParam;

    return-object v0
.end method

.method public static values()[Landroid/view/SurfaceEffects$AnimParam;
    .locals 1

    sget-object v0, Landroid/view/SurfaceEffects$AnimParam;->$VALUES:[Landroid/view/SurfaceEffects$AnimParam;

    return-object v0
.end method
