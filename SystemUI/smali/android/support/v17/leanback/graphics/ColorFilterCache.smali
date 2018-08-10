.class public final Landroid/support/v17/leanback/graphics/ColorFilterCache;
.super Ljava/lang/Object;
.source "ColorFilterCache.java"


# static fields
.field private static final sColorToFiltersMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v17/leanback/graphics/ColorFilterCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/graphics/ColorFilterCache;->sColorToFiltersMap:Landroid/util/SparseArray;

    return-void
.end method
