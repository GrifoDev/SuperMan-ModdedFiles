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
    accessFlags = 0x9
    name = "SemManagerStateChangedListenerWrapper"
.end annotation


# instance fields
.field public final mSemlistener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;->mSemlistener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    return-void
.end method


# virtual methods
.method public onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;-><init>()V

    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->background:I

    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->position:I

    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->visibility:I

    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->windowType:I

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;->mSemlistener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;)V

    return-void
.end method
