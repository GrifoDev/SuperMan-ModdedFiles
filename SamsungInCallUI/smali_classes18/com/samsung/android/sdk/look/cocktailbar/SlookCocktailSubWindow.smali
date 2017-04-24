.class public final Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailSubWindow;
.super Ljava/lang/Object;
.source "SlookCocktailSubWindow.java"


# static fields
.field private static mSlook:Lcom/samsung/android/sdk/look/Slook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailSubWindow;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSubWindow(Landroid/app/Activity;)Landroid/view/Window;
    .locals 3

    sget-object v1, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailSubWindow;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "activity is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getSubWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "activity is invalid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public static setSubContentView(Landroid/app/Activity;I)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailSubWindow;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getSubWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setSubContentView(I)V

    :cond_2
    return-void
.end method

.method public static setSubContentView(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailSubWindow;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getSubWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setSubContentView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public static setTransientCocktailBar(Landroid/app/Activity;Z)V
    .locals 3

    sget-object v1, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailSubWindow;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "activity is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTransientCocktailBar(Z)V

    :cond_1
    return-void
.end method
