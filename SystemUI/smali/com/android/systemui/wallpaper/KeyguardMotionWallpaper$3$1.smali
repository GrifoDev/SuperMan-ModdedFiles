.class Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;
.super Landroid/os/AsyncTask;
.source "KeyguardMotionWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->onPostExecute(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;
    .locals 12

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    aget-object v5, p1, v7

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getType()I

    move-result v7

    if-nez v7, :cond_2

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v7, v7, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v7}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get9(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "drawable"

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v10, v10, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get10(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v7, v7, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v7}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get9(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v1, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setImage(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v7, v7, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-wrap0(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eq v0, v7, :cond_1

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->recycle()V

    invoke-virtual {v5, v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setImage(Landroid/graphics/Bitmap;)V

    :cond_1
    const-string/jumbo v7, "KeyguardMotionWallpaper"

    const-string/jumbo v8, "layer process finishied"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v7, v7, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v7}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get8(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x1e

    invoke-virtual {v5, v7}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setStayPoint(I)V

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->init()V

    invoke-virtual {v5, v11}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setBitmapLoaded(Z)V

    return-object v5

    :catch_0
    move-exception v2

    const-string/jumbo v7, "KeyguardMotionWallpaper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadDrawable exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->-get3(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)I

    move-result v7

    if-ne v7, v11, :cond_4

    new-instance v4, Ljava/io/File;

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_3

    :try_start_1
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v8, v8, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v8}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get9(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setImage(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    return-object v10

    :cond_3
    return-object v10

    :cond_4
    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->-get3(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-virtual {v5, v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setImage(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->doInBackground([Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)V
    .locals 2

    const-string/jumbo v0, "KeyguardMotionWallpaper"

    const-string/jumbo v1, "asyncTask cancelled!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setBitmapLoaded(Z)V

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->recycle()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->onCancelled(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)V

    return-void
.end method

.method protected onPostExecute(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v4, "KeyguardMotionWallpaper"

    const-string/jumbo v5, "null bitmap returned"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get8(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get8(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getBitmapLoaded()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v1, 0x0

    :cond_1
    const-string/jumbo v4, "KeyguardMotionWallpaper"

    const-string/jumbo v5, "asyncTask onPostExecute!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get2(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    const-string/jumbo v4, "KeyguardMotionWallpaper"

    const-string/jumbo v5, "BITMAP LOAD FINISH"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get8(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get8(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get8(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get8(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get8(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get8(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get8(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    mul-int/lit8 v5, v2, 0x1e

    invoke-virtual {v4, v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setStayPoint(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "KeyguardMotionWallpaper"

    const-string/jumbo v5, "CloneNotSupportedException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get14(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get14(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    move-result-object v5

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get8(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v5, v4, v7}, Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-wrap3(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4, v8}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-set2(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Z)Z

    :cond_5
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;->onPostExecute(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;)V

    return-void
.end method
