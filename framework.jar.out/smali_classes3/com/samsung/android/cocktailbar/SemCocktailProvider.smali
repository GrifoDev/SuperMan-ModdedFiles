.class public Lcom/samsung/android/cocktailbar/SemCocktailProvider;
.super Landroid/content/BroadcastReceiver;
.source "SemCocktailProvider.java"


# static fields
.field private static final ACTION_COCKTAIL_DISABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

.field private static final ACTION_COCKTAIL_ENABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

.field private static final ACTION_COCKTAIL_UPDATE:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

.field private static final ACTION_COCKTAIL_UPDATE_V2:Ljava/lang/String; = "com.samsung.android.cocktail.v2.action.COCKTAIL_UPDATE"

.field private static final ACTION_COCKTAIL_VISIBILITY_CHANGED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

.field private static final EXTRA_COCKTAIL_ID:Ljava/lang/String; = "cocktailId"

.field private static final EXTRA_COCKTAIL_IDS:Ljava/lang/String; = "cocktailIds"

.field private static final EXTRA_COCKTAIL_VISIBILITY:Ljava/lang/String; = "cocktailVisibility"

.field private static final TAG:Ljava/lang/String; = "SemCocktailProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onCocktailDisabled(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onCocktailEnabled(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onCocktailUpdate(Landroid/content/Context;Lcom/samsung/android/cocktailbar/SemCocktailBarManager;[I)V
    .locals 0

    return-void
.end method

.method public onCocktailVisibilityChanged(Landroid/content/Context;II)V
    .locals 0

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "com.samsung.android.cocktail.v2.action.COCKTAIL_UPDATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v5, "cocktailIds"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "cocktailIds"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v2}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onCocktailUpdate(Landroid/content/Context;Lcom/samsung/android/cocktailbar/SemCocktailBarManager;[I)V

    invoke-static {p1}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v2}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onUpdate(Landroid/content/Context;Lcom/samsung/android/cocktailbar/SemCocktailBarManager;[I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v5, "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onCocktailEnabled(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onEnabled(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p1}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onCocktailDisabled(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onDisabled(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v5, "cocktailId"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "cocktailId"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v5, "cocktailVisibility"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "cocktailVisibility"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, p1, v1, v4}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onCocktailVisibilityChanged(Landroid/content/Context;II)V

    invoke-virtual {p0, p1, v1, v4}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onVisibilityChanged(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Lcom/samsung/android/cocktailbar/SemCocktailBarManager;[I)V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(Landroid/content/Context;II)V
    .locals 0

    return-void
.end method
