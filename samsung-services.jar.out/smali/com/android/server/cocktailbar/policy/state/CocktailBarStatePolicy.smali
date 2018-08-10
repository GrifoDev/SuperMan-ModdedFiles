.class public interface abstract Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;
.super Ljava/lang/Object;
.source "CocktailBarStatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;
    }
.end annotation


# static fields
.field public static final COCKTAIL_BAR_STATE_MASK:I = 0xffff

.field public static final COCKTAIL_BAR_STATE_RESERVE:I = 0x10000


# virtual methods
.method public abstract dump()Ljava/lang/String;
.end method

.method public abstract getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
.end method

.method public abstract getLockState()I
.end method

.method public abstract getWindowType()I
.end method

.method public abstract initialize()V
.end method

.method public abstract notifyStateToBinder(Landroid/os/IBinder;)V
.end method

.method public abstract setLockState(IZ)V
.end method

.method public abstract setLockState(IZI)V
.end method

.method public abstract updateActivate(Z)V
.end method

.method public abstract updateCocktailBarWindowType(ILjava/lang/String;)V
.end method

.method public abstract updatePosition(I)V
.end method

.method public abstract updateVisibility(I)V
.end method
