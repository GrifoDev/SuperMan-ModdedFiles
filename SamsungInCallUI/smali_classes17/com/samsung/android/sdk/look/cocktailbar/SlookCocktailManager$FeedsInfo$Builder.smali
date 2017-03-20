.class public final Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo$Builder;
.super Ljava/lang/Object;
.source "SlookCocktailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFeedsText:Ljava/lang/CharSequence;

.field private mIcon:I

.field private mLargeIcon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "feedsText"    # Ljava/lang/CharSequence;

    .prologue
    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    iput-object p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo$Builder;->mFeedsText:Ljava/lang/CharSequence;

    .line 789
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;
    .locals 5

    .prologue
    .line 802
    new-instance v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;

    iget v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo$Builder;->mIcon:I

    iget-object v2, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo$Builder;->mFeedsText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;-><init>(ILjava/lang/CharSequence;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;)V

    return-object v0
.end method

.method public setIcon(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo$Builder;
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 792
    iput p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo$Builder;->mIcon:I

    .line 793
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 797
    iput-object p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 798
    return-object p0
.end method
