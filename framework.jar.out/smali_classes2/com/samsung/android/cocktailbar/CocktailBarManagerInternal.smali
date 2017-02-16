.class public abstract Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
.super Ljava/lang/Object;
.source "CocktailBarManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract turnOffWakupCocktailBarFromPowerManager(ILjava/lang/String;)V
.end method

.method public abstract updateCocktailBarStateFromWindowManager(I)V
.end method

.method public abstract updateSysfsGripDisableFromWindowManager(Z)V
.end method

.method public abstract wakupCocktailBarFromWindowManager(ZII)V
.end method
