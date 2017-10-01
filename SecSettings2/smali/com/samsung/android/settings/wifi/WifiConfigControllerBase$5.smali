.class Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;
.super Landroid/os/AsyncTask;
.source "WifiConfigControllerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addGatewayRow(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field responseCode:I

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

.field urlConnection:Ljava/net/HttpURLConnection;

.field final synthetic val$group:Landroid/view/ViewGroup;

.field final synthetic val$name:I

.field final synthetic val$webpage:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;Landroid/view/ViewGroup;ILjava/lang/StringBuilder;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->val$group:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->val$name:I

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->val$webpage:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->responseCode:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6

    :try_start_0
    new-instance v2, Ljava/net/URL;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->urlConnection:Ljava/net/HttpURLConnection;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->urlConnection:Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->urlConnection:Ljava/net/HttpURLConnection;

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->responseCode:I

    const-string/jumbo v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Go To Webpage: HTTP Response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->responseCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->responseCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "Go to Webpage: reach to finally"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v3

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v3, "WifiConfigController"

    const-string/jumbo v4, "Go to Webpage: Error opening connection"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v3, "WifiConfigController"

    const-string/jumbo v4, "Go to Webpage: reach to finally"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_0
    const/4 v3, 0x0

    return-object v3

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "WifiConfigController"

    const-string/jumbo v4, "Go to Webpage: Error getting URL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string/jumbo v3, "WifiConfigController"

    const-string/jumbo v4, "Go to Webpage: reach to finally"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v3

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "Go to Webpage: reach to finally"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 7

    const v6, 0x7f11040e

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    sget v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    sget v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->val$group:Landroid/view/ViewGroup;

    const v4, 0x7f040353

    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11027d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->val$name:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->val$webpage:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5$1;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->val$group:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkViewed:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v2, "WifiConfigController"

    const-string/jumbo v3, "Go to Webpage: HTTP response is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
