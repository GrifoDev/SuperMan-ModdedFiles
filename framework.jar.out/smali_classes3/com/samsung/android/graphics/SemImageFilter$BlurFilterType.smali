.class public final Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;
.super Ljava/lang/Object;
.source "SemImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlurFilterType"
.end annotation


# static fields
.field public static final BOX:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

.field public static final COSINE:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

.field public static final DIRECTIONAL:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

.field public static final GAUSSIAN:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

.field public static final KAWASE:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

.field public static final RADIAL:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

.field public static final SGI:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

.field public static final TILT_SHIFT:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

.field public static final UNFOCUS:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

.field public static final ZOOM:Lcom/samsung/android/graphics/SemImageFilter$FilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->GAUSSIAN:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->COSINE:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->SGI:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->DIRECTIONAL:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->ZOOM:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x42

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->RADIAL:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x38

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->TILT_SHIFT:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x43

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->UNFOCUS:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x40

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->BOX:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x41

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->KAWASE:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
