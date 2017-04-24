.class public Lcom/samsung/android/settings/WarrantyInfo;
.super Lcom/android/internal/app/AlertActivity;
.source "WarrantyInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private readCSCFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v9, Ljava/io/InputStreamReader;

    const-string/jumbo v12, "UTF-8"

    invoke-direct {v9, v7, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v1

    move-object v8, v9

    move-object v6, v7

    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_0

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_0
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_2
    :goto_2
    const/4 v12, 0x0

    return-object v12

    :cond_3
    :try_start_6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v12

    if-eqz v7, :cond_4

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_4
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_6
    :goto_3
    return-object v12

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v3

    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v6, :cond_7

    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    :cond_8
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v4

    :goto_5
    :try_start_a
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v6, :cond_9

    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    :cond_a
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_2

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_6
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v12

    :goto_6
    if-eqz v6, :cond_b

    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_b
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_d
    :goto_7
    throw v12

    :catch_7
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v12

    move-object v6, v7

    goto :goto_6

    :catchall_2
    move-exception v12

    move-object v8, v9

    move-object v6, v7

    goto :goto_6

    :catchall_3
    move-exception v12

    move-object v0, v1

    move-object v8, v9

    move-object v6, v7

    goto :goto_6

    :catch_8
    move-exception v2

    goto/16 :goto_1

    :catch_9
    move-exception v2

    move-object v6, v7

    goto/16 :goto_1

    :catch_a
    move-exception v2

    move-object v8, v9

    move-object v6, v7

    goto/16 :goto_1

    :catch_b
    move-exception v4

    move-object v6, v7

    goto :goto_5

    :catch_c
    move-exception v4

    move-object v8, v9

    move-object v6, v7

    goto :goto_5

    :catch_d
    move-exception v4

    move-object v0, v1

    move-object v8, v9

    move-object v6, v7

    goto :goto_5

    :catch_e
    move-exception v3

    move-object v6, v7

    goto :goto_4

    :catch_f
    move-exception v3

    move-object v8, v9

    move-object v6, v7

    goto :goto_4

    :catch_10
    move-exception v3

    move-object v0, v1

    move-object v8, v9

    move-object v6, v7

    goto :goto_4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v7, "Option"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v7, "WarrantyInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "option "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v7, 0x7f040313

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f110706

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string/jumbo v1, ""

    iget-object v0, p0, Lcom/samsung/android/settings/WarrantyInfo;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    packed-switch v6, :pswitch_data_0

    :goto_0
    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v7, 0x104000a

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->setupAlert()V

    return-void

    :pswitch_0
    const-string/jumbo v7, "system/serviceinfo/general_terms.txt"

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b050a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v7, "system/serviceinfo/warranty_exceptions.txt"

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0506

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v7, "system/serviceinfo/product_warranty.txt"

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0505

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v7, "system/serviceinfo/contact_us.txt"

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b04bc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method
