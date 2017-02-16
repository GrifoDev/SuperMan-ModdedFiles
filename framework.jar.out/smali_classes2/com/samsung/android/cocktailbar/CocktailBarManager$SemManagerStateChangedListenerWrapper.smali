.class public Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;
.super Ljava/lang/Object;
.source "CocktailBarManager.java"

# interfaces
.implements Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemManagerStateChangedListenerWrapper"
.end annotation


# instance fields
.field public final mSemlistener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

.field final synthetic this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/cocktailbar/CocktailBarManager;
    .param p2, "listener"    # Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    .prologue
    .line 2099
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;->this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2100
    iput-object p2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;->mSemlistener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    .line 2099
    return-void
.end method


# virtual methods
.method public onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .locals 2
    .param p1, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    .line 2105
    new-instance v0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;-><init>()V

    .line 2106
    .local v0, "semStateInfo":Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->background:I

    .line 2107
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->position:I

    .line 2108
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->visibility:I

    .line 2109
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->windowType:I

    .line 2110
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;->mSemlistener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;)V

    .line 2104
    return-void
.end method
