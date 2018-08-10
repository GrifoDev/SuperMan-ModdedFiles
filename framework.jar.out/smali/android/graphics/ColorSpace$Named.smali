.class public final enum Landroid/graphics/ColorSpace$Named;
.super Ljava/lang/Enum;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Named"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/ColorSpace$Named;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/ColorSpace$Named;

.field public static final enum ACES:Landroid/graphics/ColorSpace$Named;

.field public static final enum ACESCG:Landroid/graphics/ColorSpace$Named;

.field public static final enum ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

.field public static final enum BT2020:Landroid/graphics/ColorSpace$Named;

.field public static final enum BT709:Landroid/graphics/ColorSpace$Named;

.field public static final enum CIE_LAB:Landroid/graphics/ColorSpace$Named;

.field public static final enum CIE_XYZ:Landroid/graphics/ColorSpace$Named;

.field public static final enum DCI_P3:Landroid/graphics/ColorSpace$Named;

.field public static final enum DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

.field public static final enum EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

.field public static final enum LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

.field public static final enum LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

.field public static final enum NTSC_1953:Landroid/graphics/ColorSpace$Named;

.field public static final enum PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

.field public static final enum SMPTE_C:Landroid/graphics/ColorSpace$Named;

.field public static final enum SRGB:Landroid/graphics/ColorSpace$Named;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string/jumbo v1, "SRGB"

    invoke-direct {v0, v1, v3}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string/jumbo v1, "LINEAR_SRGB"

    invoke-direct {v0, v1, v4}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string/jumbo v1, "EXTENDED_SRGB"

    invoke-direct {v0, v1, v5}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string/jumbo v1, "LINEAR_EXTENDED_SRGB"

    invoke-direct {v0, v1, v6}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string/jumbo v1, "BT709"

    invoke-direct {v0, v1, v7}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->BT709:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string/jumbo v1, "BT2020"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->BT2020:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string/jumbo v1, "DCI_P3"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string/jumbo v1, "DISPLAY_P3"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string/jumbo v1, "NTSC_1953"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->NTSC_1953:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string/jumbo v1, "SMPTE_C"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->SMPTE_C:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string/jumbo v1, "ADOBE_RGB"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string/jumbo v1, "PRO_PHOTO_RGB"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string/jumbo v1, "ACES"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->ACES:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string/jumbo v1, "ACESCG"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->ACESCG:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string/jumbo v1, "CIE_XYZ"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->CIE_XYZ:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string/jumbo v1, "CIE_LAB"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    const/16 v0, 0x10

    new-array v0, v0, [Landroid/graphics/ColorSpace$Named;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/ColorSpace$Named;->LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v5

    sget-object v1, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v6

    sget-object v1, Landroid/graphics/ColorSpace$Named;->BT709:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v7

    sget-object v1, Landroid/graphics/ColorSpace$Named;->BT2020:Landroid/graphics/ColorSpace$Named;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/ColorSpace$Named;->NTSC_1953:Landroid/graphics/ColorSpace$Named;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SMPTE_C:Landroid/graphics/ColorSpace$Named;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/ColorSpace$Named;->PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/ColorSpace$Named;->ACES:Landroid/graphics/ColorSpace$Named;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/ColorSpace$Named;->ACESCG:Landroid/graphics/ColorSpace$Named;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/ColorSpace$Named;->CIE_XYZ:Landroid/graphics/ColorSpace$Named;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Landroid/graphics/ColorSpace$Named;->$VALUES:[Landroid/graphics/ColorSpace$Named;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/ColorSpace$Named;
    .locals 1

    const-class v0, Landroid/graphics/ColorSpace$Named;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorSpace$Named;

    return-object v0
.end method

.method public static values()[Landroid/graphics/ColorSpace$Named;
    .locals 1

    sget-object v0, Landroid/graphics/ColorSpace$Named;->$VALUES:[Landroid/graphics/ColorSpace$Named;

    return-object v0
.end method
