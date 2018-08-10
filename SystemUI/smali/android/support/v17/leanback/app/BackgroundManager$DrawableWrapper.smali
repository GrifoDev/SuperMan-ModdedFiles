.class final Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;
.super Ljava/lang/Object;
.source "BackgroundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DrawableWrapper"
.end annotation


# instance fields
.field mAlpha:I

.field final mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mAlpha:I

    iput-object p1, p0, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mAlpha:I

    iput-object p2, p0, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p1, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mAlpha:I

    iput v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mAlpha:I

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
