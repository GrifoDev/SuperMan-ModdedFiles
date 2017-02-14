.class Lcom/android/launcher2/Folder$FolderAnimationInfo;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FolderAnimationInfo"
.end annotation


# instance fields
.field location:[I

.field scaleBy:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher2/Folder$FolderAnimationInfo;->scaleBy:[F

    return-void
.end method
