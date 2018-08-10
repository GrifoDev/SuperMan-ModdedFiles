.class Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "IntentTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/IntentTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BytesIcon"
.end annotation


# instance fields
.field private final mBytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;->mBytes:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;->mBytes:[B

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;->mBytes:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;->mBytes:[B

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;->mBytes:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "BytesIcon[len=%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;->mBytes:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
