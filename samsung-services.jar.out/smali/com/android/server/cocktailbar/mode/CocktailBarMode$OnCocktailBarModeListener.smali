.class public interface abstract Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;
.super Ljava/lang/Object;
.source "CocktailBarMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/mode/CocktailBarMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCocktailBarModeListener"
.end annotation


# virtual methods
.method public abstract getCurrentModeId()I
.end method

.method public abstract onResetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
.end method

.method public abstract onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
.end method

.method public abstract onSetModeForcely(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
.end method
