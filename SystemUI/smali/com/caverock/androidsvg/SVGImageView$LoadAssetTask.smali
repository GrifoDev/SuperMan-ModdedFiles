.class Lcom/caverock/androidsvg/SVGImageView$LoadAssetTask;
.super Landroid/os/AsyncTask;
.source "SVGImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAssetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Picture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caverock/androidsvg/SVGImageView;


# direct methods
.method private constructor <init>(Lcom/caverock/androidsvg/SVGImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGImageView$LoadAssetTask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/caverock/androidsvg/SVGImageView;Lcom/caverock/androidsvg/SVGImageView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$LoadAssetTask;-><init>(Lcom/caverock/androidsvg/SVGImageView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Picture;
    .locals 6

    :try_start_0
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGImageView$LoadAssetTask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVG;->getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object v3

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error loading file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SVGImageView"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v4, 0x0

    return-object v4

    :catch_1
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "File not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SVGImageView"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to load asset file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SVGImageView"

    invoke-static {v5, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$LoadAssetTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Picture;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGImageView$LoadAssetTask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGImageView;->access$300(Lcom/caverock/androidsvg/SVGImageView;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGImageView$LoadAssetTask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    new-instance v1, Landroid/graphics/drawable/PictureDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Picture;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$LoadAssetTask;->onPostExecute(Landroid/graphics/Picture;)V

    return-void
.end method
