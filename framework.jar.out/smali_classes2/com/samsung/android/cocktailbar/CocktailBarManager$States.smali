.class public Lcom/samsung/android/cocktailbar/CocktailBarManager$States;
.super Ljava/lang/Object;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "States"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final COCKTAIL_BAR_BACKGROUND_DIM:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COCKTAIL_BAR_BACKGROUND_OPAQUE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COCKTAIL_BAR_BACKGROUND_TRANSPARENT:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COCKTAIL_BAR_BACKGROUND_UNKNOWN:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COCKTAIL_BAR_FULLSCREEN_TYPE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COCKTAIL_BAR_LOCK_HIDE:I = 0x2

.field public static final COCKTAIL_BAR_LOCK_NONE:I = 0x0

.field public static final COCKTAIL_BAR_LOCK_RESTRICT:I = 0x4

.field public static final COCKTAIL_BAR_LOCK_SHOW:I = 0x1

.field public static final COCKTAIL_BAR_MINIMIZE_TYPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COCKTAIL_BAR_MODE_IMMERSIVE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COCKTAIL_BAR_MODE_MULTITASKING:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COCKTAIL_BAR_MODE_UNKNOWN:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COCKTAIL_BAR_POSITION_BOTTOM:I = 0x4

.field public static final COCKTAIL_BAR_POSITION_LEFT:I = 0x1

.field public static final COCKTAIL_BAR_POSITION_RIGHT:I = 0x2

.field public static final COCKTAIL_BAR_POSITION_TOP:I = 0x3

.field public static final COCKTAIL_BAR_POSITION_UNKNOWN:I = 0x0

.field public static final COCKTAIL_BAR_STATE_INVISIBLE:I = 0x2

.field public static final COCKTAIL_BAR_STATE_VISIBLE:I = 0x1

.field public static final COCKTAIL_BAR_TYPE_FULLSCREEN:I = 0x2

.field public static final COCKTAIL_BAR_TYPE_MINIMIZE:I = 0x1

.field public static final COCKTAIL_BAR_UNKNOWN_TYPE:I


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/cocktailbar/CocktailBarManager;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$States;->this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
