.class Landroid/support/v17/leanback/app/BackgroundManager$EmptyDrawable;
.super Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;
.source "BackgroundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmptyDrawable"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-void
.end method
