.class public final Lcom/samsung/android/graphics/SemImageFilter$ShadowFilterType;
.super Ljava/lang/Object;
.source "SemImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShadowFilterType"
.end annotation


# static fields
.field public static final DROP_SHADOW:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

.field public static final VIGNETTE:Lcom/samsung/android/graphics/SemImageFilter$FilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x37

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$ShadowFilterType;->DROP_SHADOW:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    const/16 v1, 0x32

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V

    sput-object v0, Lcom/samsung/android/graphics/SemImageFilter$ShadowFilterType;->VIGNETTE:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
