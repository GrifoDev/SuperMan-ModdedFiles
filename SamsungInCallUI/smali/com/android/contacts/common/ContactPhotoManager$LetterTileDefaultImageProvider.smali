.class Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;
.super Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LetterTileDefaultImageProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/ContactPhotoManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;-><init>(Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    :goto_0
    iget v1, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->c:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->a(I)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    iget v1, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->d:F

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->a(F)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    iget v1, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->e:F

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->b(F)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    iget-boolean v1, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->f:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->a(Z)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;->a(Landroid/content/res/Resources;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
