.class public final enum Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;
.super Ljava/lang/Enum;
.source "SemImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureWrapping"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;

.field public static final enum CLAMP_TO_EDGE:Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;

.field public static final enum MIRRORING:Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;

.field public static final enum REPEATE:Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;


# instance fields
.field private wrapping:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;

    const-string/jumbo v1, "CLAMP_TO_EDGE"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;->CLAMP_TO_EDGE:Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;

    const-string/jumbo v1, "REPEATE"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;->REPEATE:Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;

    const-string/jumbo v1, "MIRRORING"

    invoke-direct {v0, v1, v3, v5}, Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;->MIRRORING:Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;

    new-array v0, v5, [Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;->CLAMP_TO_EDGE:Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;->REPEATE:Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;->MIRRORING:Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;->$VALUES:[Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;->wrapping:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;
    .locals 1

    const-class v0, Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;
    .locals 1

    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;->$VALUES:[Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;

    return-object v0
.end method


# virtual methods
.method public getWrapping()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemImageFilter$TextureWrapping;->wrapping:I

    return v0
.end method
