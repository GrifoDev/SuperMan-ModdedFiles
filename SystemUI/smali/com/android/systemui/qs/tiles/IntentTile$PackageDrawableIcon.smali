.class Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "IntentTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/IntentTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageDrawableIcon"
.end annotation


# instance fields
.field private final mPackage:Ljava/lang/String;

.field private final mResId:I

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/IntentTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/IntentTile;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->this$0:Lcom/android/systemui/qs/tiles/IntentTile;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mPackage:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mResId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mPackage:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mResId:I

    iget v3, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mResId:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mPackage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mResId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->this$0:Lcom/android/systemui/qs/tiles/IntentTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/IntentTile;->-get0(Lcom/android/systemui/qs/tiles/IntentTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error loading package drawable pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mResId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "PackageDrawableIcon[pkg=%s,id=0x%08x]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mPackage:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;->mResId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
