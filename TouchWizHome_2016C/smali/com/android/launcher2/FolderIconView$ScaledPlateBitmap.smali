.class Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;
.super Ljava/lang/Object;
.source "FolderIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/FolderIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaledPlateBitmap"
.end annotation


# instance fields
.field openFolderBitmap:Landroid/graphics/Bitmap;

.field scaledPlateBitmap:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;->scaledPlateBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;->openFolderBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/FolderIconView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;-><init>()V

    return-void
.end method
