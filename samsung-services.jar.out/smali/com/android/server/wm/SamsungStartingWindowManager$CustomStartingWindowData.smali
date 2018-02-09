.class Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
.super Ljava/lang/Object;
.source "SamsungStartingWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SamsungStartingWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomStartingWindowData"
.end annotation


# static fields
.field private static final CUSTOM_STARTING_WINDOW_FILE_NAME:Ljava/lang/String; = "CustomStartingWindowImage"

.field public static final CUSTOM_STARTING_WINDOW_IMAGE_PATH:Ljava/lang/String; = "com.samsung.android.startingwindow.IMAGE_PATH"

.field public static final CUSTOM_STARTING_WINDOW_IMAGE_PATH_QUALIFIER:Ljava/lang/String; = "com.samsung.android.startingwindow.IMAGE_PATH_QUALIFIER"

.field public static final CUSTOM_STARTING_WINDOW_LAYOUT_RESID:Ljava/lang/String; = "com.samsung.android.startingwindow.LAYOUT_RESID"

.field public static final CUSTOM_STARTING_WINDOW_REVERSE_LAYOUT_RESID:Ljava/lang/String; = "com.samsung.android.startingwindow.REVERSE_LAYOUT_RESID"

.field private static final TAG:Ljava/lang/String; = "CustomStartingWindowData"


# instance fields
.field public bitmapIsLoaded:Z

.field public customImage:Ljava/lang/String;

.field private customImageQualifier:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field public resIdOfDefaultLayout:I

.field public resIdOfReverseLayout:I

.field public taskUserId:I

.field final synthetic this$0:Lcom/android/server/wm/SamsungStartingWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SamsungStartingWindowManager;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->key:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->packageName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->taskUserId:I

    iput v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfDefaultLayout:I

    iput v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfReverseLayout:I

    iput-object v2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->bitmapIsLoaded:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/SamsungStartingWindowManager;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->key:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->packageName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->taskUserId:I

    iput v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfDefaultLayout:I

    iput v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfReverseLayout:I

    iput-object v2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->bitmapIsLoaded:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->taskUserId:I

    if-eqz p3, :cond_4

    const-string/jumbo v0, "com.samsung.android.startingwindow.LAYOUT_RESID"

    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfDefaultLayout:I

    iget v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfDefaultLayout:I

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CustomStartingWindowData"

    const-string/jumbo v1, "CustomStartingWindow DefaultLayout support app"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v0, "com.samsung.android.startingwindow.REVERSE_LAYOUT_RESID"

    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfReverseLayout:I

    iget v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfReverseLayout:I

    if-eqz v0, :cond_2

    const-string/jumbo v0, "CustomStartingWindowData"

    const-string/jumbo v1, "CustomStartingWindow Reverse Layout support app"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v0, "com.samsung.android.startingwindow.IMAGE_PATH"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImage:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.startingwindow.IMAGE_PATH_QUALIFIER"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImage:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    if-eqz v0, :cond_4

    :cond_3
    const-string/jumbo v0, "CustomStartingWindowData"

    const-string/jumbo v1, "CustomStartingWindow custom Image Path support app"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private getQualifierFilePath(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 10

    if-eqz p1, :cond_3

    const-string/jumbo v3, "qualifier"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    const/4 v6, 0x0

    array-length v7, v4

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v2, v4, v6

    const-string/jumbo v8, "locale"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "font"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/server/wm/SamsungStartingWindowManager;->-get0()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p2, v0

    :cond_3
    return-object p2
.end method


# virtual methods
.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 14

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImage:Ljava/lang/String;

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    if-nez v7, :cond_0

    const/4 v7, 0x0

    return-object v7

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImage:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImage:Ljava/lang/String;

    const-string/jumbo v8, "auto"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    if-eqz v7, :cond_6

    :cond_2
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/data/custom_image/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->taskUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "CustomStartingWindowData"

    const-string/jumbo v8, "CustomStartingWindow system takes"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImageQualifier:Ljava/lang/String;

    invoke-virtual {p0, v7, v3, p1}, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->getBitmapFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    move-result-object v5

    :cond_3
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    :try_start_0
    new-instance v7, Landroid/graphics/BitmapFactory;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-boolean v7, Lcom/android/server/wm/SamsungStartingWindowManager;->SAFE_DEBUG:Z

    if-eqz v7, :cond_4

    const-string/jumbo v7, "CustomStartingWindowData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CustomStartingWindow getImageFromCustomFile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", bitmap : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v2

    :cond_5
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/data/user/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->taskUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/custom_image/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->customImage:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    sget-boolean v7, Lcom/android/server/wm/SamsungStartingWindowManager;->SAFE_DEBUG:Z

    if-eqz v7, :cond_7

    const-string/jumbo v7, "CustomStartingWindowData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CustomStartingWindow taking bitmap from custom file is fail by OOM. just show original starting window. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v7, 0x0

    return-object v7

    :cond_8
    sget-boolean v7, Lcom/android/server/wm/SamsungStartingWindowManager;->SAFE_DEBUG:Z

    if-eqz v7, :cond_9

    const-string/jumbo v7, "CustomStartingWindowData"

    const-string/jumbo v8, "CustomStartingWindow getTaskImage from file is failed. file not exists"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v7, 0x0

    return-object v7
.end method

.method getBitmapFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->getQualifierFilePath(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "CustomStartingWindowImage.jpg"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "CustomStartingWindowImage_rotated.jpg"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
