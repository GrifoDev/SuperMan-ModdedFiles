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

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onCocktailDisabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    return-void
.end method

.method public onCocktailEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    return-void
.end method

.method public onCocktailUpdate(Landroid/content/Context;Lcom/samsung/android/cocktailbar/SemCocktailBarManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktailManager"    # Lcom/samsung/android/cocktailbar/SemCocktailBarManager;
    .param p3, "cocktailIds"    # [I

    .prologue
    .line 210
    return-void
.end method

.method public onCocktailVisibilityChanged(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktailId"    # I
    .param p3, "visibility"    # I

    .prologue
    .line 248
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "com.samsung.android.cocktail.v2.action.COCKTAIL_UPDATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 110
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 111
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    const-string/jumbo v5, "cocktailIds"

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    const-string/jumbo v5, "cocktailIds"

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 113
    .local v2, "cocktailIds":[I
    invoke-static {p1}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v2}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onCocktailUpdate(Landroid/content/Context;Lcom/samsung/android/cocktailbar/SemCocktailBarManager;[I)V

    .line 114
    invoke-static {p1}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v2}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onUpdate(Landroid/content/Context;Lcom/samsung/android/cocktailbar/SemCocktailBarManager;[I)V

    .line 106
    .end local v2    # "cocktailIds":[I
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    const-string/jumbo v5, "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 117
    invoke-virtual {p0, p1}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onCocktailEnabled(Landroid/content/Context;)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onEnabled(Landroid/content/Context;)V

    goto :goto_0

    .line 119
    :cond_3
    const-string/jumbo v5, "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 120
    invoke-virtual {p0, p1}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onCocktailDisabled(Landroid/content/Context;)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onDisabled(Landroid/content/Context;)V

    goto :goto_0

    .line 122
    :cond_4
    const-string/jumbo v5, "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 124
    .restart local v3    # "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    const-string/jumbo v5, "cocktailId"

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    const-string/jumbo v5, "cocktailId"

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 126
    .local v1, "cocktailId":I
    const-string/jumbo v5, "cocktailVisibility"

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 127
    const-string/jumbo v5, "cocktailVisibility"

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 128
    .local v4, "visibility":I
    invoke-virtual {p0, p1, v1, v4}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onCocktailVisibilityChanged(Landroid/content/Context;II)V

    .line 129
    invoke-virtual {p0, p1, v1, v4}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onVisibilityChanged(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Lcom/samsung/android/cocktailbar/SemCocktailBarManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktailManager"    # Lcom/samsung/android/cocktailbar/SemCocktailBarManager;
    .param p3, "cocktailIds"    # [I

    .prologue
    .line 150
    return-void
.end method

.method public onVisibilityChanged(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktailId"    # I
    .param p3, "visibility"    # I

    .prologue
    .line 194
    return-void
.end method
