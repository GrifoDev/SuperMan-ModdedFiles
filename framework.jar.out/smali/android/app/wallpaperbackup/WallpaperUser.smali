.class public Landroid/app/wallpaperbackup/WallpaperUser;
.super Ljava/lang/Object;
.source "WallpaperUser.java"


# instance fields
.field private mComponent:Ljava/lang/String;

.field private mHeight:I

.field private mImagePath:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mUserId:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "component"    # Ljava/lang/String;
    .param p5, "imagePath"    # Ljava/lang/String;
    .param p6, "userId"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mWidth:I

    .line 40
    iput p2, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mHeight:I

    .line 41
    iput-object p3, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mName:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mImagePath:Ljava/lang/String;

    .line 44
    iput p6, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mUserId:I

    .line 38
    return-void
.end method


# virtual methods
.method public getComponent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mHeight:I

    return v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mUserId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mWidth:I

    return v0
.end method

.method public setComponent(Ljava/lang/String;)V
    .locals 0
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 58
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mHeight:I

    .line 57
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mImagePath:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 86
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mUserId:I

    .line 85
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 51
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUser;->mWidth:I

    .line 50
    return-void
.end method
