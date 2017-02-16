.class public Lcom/android/contacts/common/list/ContactTileStarredView;
.super Lcom/android/contacts/common/list/ContactTileView;
.source "ContactTileStarredView.java"


# static fields
.field private static final DEFAULT_IMAGE_LETTER_SCALE:F = 0.8f


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/ContactTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected getApproximateImageSize()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileStarredView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    invoke-interface {v0}, Lcom/android/contacts/common/list/ContactTileView$Listener;->getApproximateTileWidth()I

    move-result v0

    return v0
.end method

.method protected getDefaultImageRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .locals 7
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "lookupKey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 53
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    const v4, 0x3f4ccccd    # 0.8f

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IFFZ)V

    return-object v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
