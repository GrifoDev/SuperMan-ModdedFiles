.class public Lcom/android/launcher2/PkgResCache$TitleIconInfo;
.super Ljava/lang/Object;
.source "PkgResCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PkgResCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitleIconInfo"
.end annotation


# instance fields
.field public mIcon:Landroid/graphics/Bitmap;

.field public mIconWithTray:Z

.field public mTitle:Ljava/lang/String;

.field public mUsePackageIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconWithTray:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mUsePackageIcon:Z

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconWithTray:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mUsePackageIcon:Z

    iput-object v1, p0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    return-void
.end method
