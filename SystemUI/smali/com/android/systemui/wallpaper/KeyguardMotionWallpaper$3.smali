.class Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;
.super Landroid/os/AsyncTask;
.source "KeyguardMotionWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->updateWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
            ">;"
        }
    .end annotation

    const/4 v13, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v9}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get4(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v9}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get10(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get3(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-set7(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_0
    :try_start_1
    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get3(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v11}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get10(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-set6(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Landroid/content/Context;)Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v9}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get9(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get16(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "layout"

    iget-object v12, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v12}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get10(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "KeyguardMotionWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pkg name ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v11}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get10(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") xml name("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v11}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get16(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_4

    const-string/jumbo v9, "KeyguardMotionWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ERROR - chosen xml name("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v11}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get16(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") resource is not exist !!!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_1
    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    const-string/jumbo v10, "motion"

    invoke-static {v9, v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-set9(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :goto_2
    return-object v5

    :cond_2
    :try_start_3
    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v9}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get15(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/WallpaperManager;->getLockWallpaperType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get15(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/WallpaperManager;->getMotionWallpaperPkgName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-set7(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    const-string/jumbo v10, "motion"

    invoke-static {v9, v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-set9(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    :catch_1
    move-exception v4

    const/4 v5, 0x0

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    :cond_3
    :try_start_4
    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get3(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-set7(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get15(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/WallpaperManager;->getPreloadWallpaperColorCode()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-set9(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v9}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get16(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {}, Landroid/app/WallpaperManager;->getDeviceColor()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-set9(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v9}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get16(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get3(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getDefaultColorCodeFromResource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-set9(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v9, "KeyguardMotionWallpaper"

    const-string/jumbo v10, "Color Code is not set, so set default color code."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_2
    move-exception v2

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    :try_start_5
    const-string/jumbo v9, "KeyguardMotionWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "NameNotFoundException mPkgName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v11}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get10(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v3

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_2

    :cond_4
    :try_start_6
    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v9}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get7(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I

    move-result v9

    if-ne v8, v9, :cond_5

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v9}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get10(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v9}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get10(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get6(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string/jumbo v9, "KeyguardMotionWallpaper"

    const-string/jumbo v10, "XML already parsed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_5
    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v9}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get7(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-virtual {v9}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->recycleBitmap()V

    :cond_6
    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v9, v8}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-set4(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;I)I

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get10(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-set3(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v9}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get9(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v9, v6}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-wrap1(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v5

    goto/16 :goto_2
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->onCancelled(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onCancelled(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v2, "KeyguardMotionWallpaper"

    const-string/jumbo v3, "parent asyncTask cancelled!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string/jumbo v2, "KeyguardMotionWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "layerList size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setBitmapLoaded(Z)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v3, "KeyguardMotionWallpaper"

    const-string/jumbo v4, "PARSE FAILED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-set5(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v3, "KeyguardMotionWallpaper"

    const-string/jumbo v4, "PARSE FINISH - BITMAP LOAD START"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get8(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get1(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v5, v3, [Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-get8(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    aput-object v3, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
