.class public Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
.super Ljava/lang/Object;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailBarStateListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCocktailBarBackgroundTypeChanged(I)V
    .locals 0
    .param p1, "bgType"    # I

    .prologue
    .line 2153
    return-void
.end method

.method public onCocktailBarPositionChanged(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 2161
    return-void
.end method

.method public onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .locals 0
    .param p1, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    .line 2137
    return-void
.end method

.method public onCocktailBarVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 2145
    return-void
.end method

.method public onCocktailBarWindowTypeChanged(I)V
    .locals 0
    .param p1, "windowType"    # I

    .prologue
    .line 2169
    return-void
.end method
