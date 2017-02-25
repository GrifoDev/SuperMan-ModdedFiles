.class public Lcom/android/server/cocktailbar/mode/NormalMode;
.super Ljava/lang/Object;
.source "NormalMode.java"

# interfaces
.implements Lcom/android/server/cocktailbar/mode/CocktailBarMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCocktailBarType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCocktailType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getModeId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getModeName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRegistrationType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public renewMode(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/mode/NormalMode;->getModeId()I

    move-result v0

    return v0
.end method
