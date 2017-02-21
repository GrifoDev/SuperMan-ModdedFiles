.class public Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;
.super Ljava/lang/Object;
.source "SemCocktailBarStateInfo.java"


# static fields
.field public static final BACKGROUND_DIM:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKGROUND_OPAQUE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKGROUND_TRANSPARENT:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKGROUND_UNKNOWN:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSITION_BOTTOM:I = 0x4

.field public static final POSITION_LEFT:I = 0x1

.field public static final POSITION_RIGHT:I = 0x2

.field public static final POSITION_TOP:I = 0x3

.field public static final POSITION_UNKNOWN:I = 0x0

.field public static final STATE_INVISIBLE:I = 0x2

.field public static final STATE_VISIBLE:I = 0x1

.field public static final WINDOW_TYPE_FULLSCREEN:I = 0x2

.field public static final WINDOW_TYPE_MINIMIZE:I = 0x1

.field public static final WINDOW_TYPE_UNKNOWN:I


# instance fields
.field public background:I

.field public position:I

.field public visibility:I

.field public windowType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->background:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->position:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->windowType:I

    return-void
.end method
