.class final Lcom/google/android/gms/common/images/ImageManager$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final av:Lcom/google/android/gms/common/images/ImageManager$b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$e;->av:Lcom/google/android/gms/common/images/ImageManager$b;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$e;->av:Lcom/google/android/gms/common/images/ImageManager$b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager$b;->evictAll()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$e;->av:Lcom/google/android/gms/common/images/ImageManager$b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager$b;->evictAll()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$e;->av:Lcom/google/android/gms/common/images/ImageManager$b;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$e;->av:Lcom/google/android/gms/common/images/ImageManager$b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/ImageManager$b;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/images/ImageManager$b;->trimToSize(I)V

    goto :goto_0
.end method
