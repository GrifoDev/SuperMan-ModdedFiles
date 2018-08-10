.class Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;
.super Landroid/os/AsyncTask;
.source "SamsungKnoxPrivacyNotice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EulaDownloader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 19

    const/4 v12, 0x0

    :try_start_0
    const-string/jumbo v5, "https://eula.secb2b.com"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v15}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-wrap1(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "china"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string/jumbo v5, "https://eula.secb2b.com.cn"

    :cond_0
    :goto_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/EULA"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/PPInfo"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getEulaFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v15, v11}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-wrap0(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;Lorg/json/JSONObject;)Z

    move-result v14

    const-string/jumbo v15, "KnoxNotice"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Samsung Knox Privacy Policy is Need update : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_8

    const-string/jumbo v15, "GDPR"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryIso()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-get0()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-set1(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;I)I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/GDPR"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ".html"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ".html"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/default.html"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "korea"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-get2()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-set1(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;I)I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "ko"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "korea_ko.html"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    move-object v10, v6

    :cond_1
    :goto_2
    const/4 v15, 0x3

    new-array v13, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v10, v13, v15

    const/4 v15, 0x1

    aput-object v8, v13, v15

    const/4 v15, 0x2

    aput-object v6, v13, v15

    const-string/jumbo v15, "KnoxNotice"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Get Knox Privacy Policy try locale = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    const/16 v16, 0x0

    aget-object v16, v13, v16

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getEulaFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_2

    const-string/jumbo v15, "KnoxNotice"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Get Knox Privacy Policy try laguage = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    const/16 v16, 0x1

    aget-object v16, v13, v16

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getEulaFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_2
    if-nez v12, :cond_3

    const-string/jumbo v15, "KnoxNotice"

    const-string/jumbo v16, "Get Knox Privacy Policy try default"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    const/16 v16, 0x2

    aget-object v16, v13, v16

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getEulaFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_3
    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    const-string/jumbo v16, "version"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-set2(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-set0(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;Z)Z

    :goto_3
    return-object v12

    :cond_5
    const-string/jumbo v5, "https://eula-dev.secb2b.com"

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-get1()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-set1(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;I)I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/KLMS"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "korea_en.html"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v8, v6

    move-object v10, v6

    goto/16 :goto_2

    :cond_8
    const/4 v15, 0x0

    return-object v15

    :catch_0
    move-exception v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-set0(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;Z)Z

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const-string/jumbo v3, "KnoxNotice"

    const-string/jumbo v4, "Knox Privacy Policy result == null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-get5(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "LATEST_EULA"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-wrap2(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-get5(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v3, "LATEST_EULA"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "DOWNLOAD_LANGUAGE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "DEVICE_TYPE"

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-get4(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "LATEST_VERSION"

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-get6(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-get6(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "DEVICE_TYPE"

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v5}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-get4(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v3, "KnoxNotice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveVersion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v5}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-get6(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-get3(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "LATEST_VERSION"

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v5}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-get6(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v3, p1}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->-wrap2(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "KnoxNotice"

    const-string/jumbo v4, "onPostExecute : json Error"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
