.class public Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;
.super Landroid/os/AsyncTask;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconDownloader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Handler;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field mDeviceId:Ljava/lang/String;

.field mRetBitmap:Landroid/graphics/Bitmap;

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mDeviceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs declared-synchronized doInBackground([Landroid/os/Handler;)Ljava/lang/Object;
    .locals 10

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v6, :cond_0

    monitor-exit p0

    return-object v9

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    new-instance v4, Ljava/net/URL;

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_1

    const-string/jumbo v6, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " while retrieving bitmap"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object v9

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v6, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " while retrieving entity"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v9

    :cond_2
    :try_start_3
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mRetBitmap:Landroid/graphics/Bitmap;

    sget-object v6, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mRetBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    monitor-exit p0

    return-object v9

    :catchall_0
    move-exception v6

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v1

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    const-string/jumbo v6, "WifiDisplaySettings"

    const-string/jumbo v7, "Error while retrieving bitmap"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->doInBackground([Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized onPostExecute(Ljava/lang/Object;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v6, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onPostExecute : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mRetBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-ge v3, v6, :cond_2

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v6, v4, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;

    if-eqz v6, :cond_1

    move-object v0, v4

    check-cast v0, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;

    move-object v1, v0

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mDeviceId:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->-get0(Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;)Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->-get0(Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;)Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->mRetBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings$DlnaPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
