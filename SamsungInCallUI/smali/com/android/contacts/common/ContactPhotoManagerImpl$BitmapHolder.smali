.class Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapHolder"
.end annotation


# instance fields
.field final a:[B

.field final b:I

.field volatile c:Z

.field d:Landroid/graphics/Bitmap;

.field e:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field f:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->a:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->c:Z

    iput p2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->b:I

    return-void
.end method
