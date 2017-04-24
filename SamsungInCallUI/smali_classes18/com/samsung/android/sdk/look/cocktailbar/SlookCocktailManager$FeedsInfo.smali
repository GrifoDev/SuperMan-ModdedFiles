.class public Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;
.super Ljava/lang/Object;
.source "SlookCocktailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedsInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo$Builder;
    }
.end annotation


# instance fields
.field feedsText:Ljava/lang/CharSequence;

.field icon:I

.field largeIcon:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(ILjava/lang/CharSequence;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;->icon:I

    iput-object p2, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;->feedsText:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;->largeIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/CharSequence;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;-><init>(ILjava/lang/CharSequence;Landroid/graphics/Bitmap;)V

    return-void
.end method
