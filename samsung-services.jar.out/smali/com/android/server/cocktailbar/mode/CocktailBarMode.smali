.class public interface abstract Lcom/android/server/cocktailbar/mode/CocktailBarMode;
.super Ljava/lang/Object;
.source "CocktailBarMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;
    }
.end annotation


# static fields
.field public static final COCKTAIL_BAR_TYPE_DISABLE:I = 0x2

.field public static final COCKTAIL_BAR_TYPE_ENABLE:I = 0x1

.field public static final COCKTAIL_TYPE_ALONE:I = 0x2

.field public static final COCKTAIL_TYPE_OVERLAY:I = 0x1

.field public static final COCKTAIL_TYPE_UNKNOWN:I = 0x0

.field public static final PRIVATE_MODE_ACTION_TYPE_INVALID:I = 0x0

.field public static final PRIVATE_MODE_ACTION_TYPE_NONE:I = 0x1

.field public static final PRIVATE_MODE_ACTION_TYPE_RESET:I = 0x3

.field public static final PRIVATE_MODE_ACTION_TYPE_SET:I = 0x2

.field public static final REGISTRATION_TYPE_BROADCAST_RECEIVER:I = 0x1

.field public static final REGISTRATION_TYPE_CONTENT_OBSERVER:I = 0x2

.field public static final REGISTRATION_TYPE_NONE:I


# virtual methods
.method public abstract getCocktailBarType()I
.end method

.method public abstract getCocktailType()I
.end method

.method public abstract getModeId()I
.end method

.method public abstract getModeName()Ljava/lang/String;
.end method

.method public abstract getRegistrationType()I
.end method

.method public abstract onBroadcastReceived(Landroid/content/Intent;)I
.end method

.method public abstract renewMode(I)I
.end method
