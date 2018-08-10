.class public final Lcom/samsung/android/graphics/SemImageFilter$FilterType;
.super Ljava/lang/Object;
.source "SemImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilterType"
.end annotation


# instance fields
.field private mFilterType:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->mFilterType:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/samsung/android/graphics/SemImageFilter$FilterType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemImageFilter$FilterType;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemImageFilter$FilterType;->mFilterType:I

    return v0
.end method
