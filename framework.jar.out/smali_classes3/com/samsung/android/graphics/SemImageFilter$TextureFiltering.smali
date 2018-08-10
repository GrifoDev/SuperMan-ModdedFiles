.class public final enum Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;
.super Ljava/lang/Enum;
.source "SemImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureFiltering"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;

.field public static final enum ANTIALIASING_DISABLED:Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;

.field public static final enum ANTIALIASING_ENABLED:Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;


# instance fields
.field private filtering:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;

    const-string/jumbo v1, "ANTIALIASING_ENABLED"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;->ANTIALIASING_ENABLED:Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;

    const-string/jumbo v1, "ANTIALIASING_DISABLED"

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;->ANTIALIASING_DISABLED:Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;

    new-array v0, v4, [Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;->ANTIALIASING_ENABLED:Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;->ANTIALIASING_DISABLED:Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;->$VALUES:[Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;->filtering:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;
    .locals 1

    const-class v0, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;
    .locals 1

    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;->$VALUES:[Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;

    return-object v0
.end method


# virtual methods
.method public getFiltering()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemImageFilter$TextureFiltering;->filtering:I

    return v0
.end method
