.class public Lcom/samsung/android/settings/deviceinfo/IMEIBarcodeDisplayActivity;
.super Lcom/android/settings/InstrumentedActivity;
.source "IMEIBarcodeDisplayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;

.field strImei:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/IMEIBarcodeDisplayActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private makeBarcode(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 19

    const-string/jumbo v14, ""

    :try_start_0
    new-instance v15, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string/jumbo v6, "ISO-8859-1"

    invoke-direct {v15, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v15

    :goto_0
    new-instance v16, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct/range {v16 .. v16}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    const/4 v13, 0x0

    :try_start_1
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    const/16 v6, 0x780

    const/16 v7, 0x140

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v4, v6, v7}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    :goto_1
    if-nez v13, :cond_0

    const/4 v4, 0x0

    return-object v4

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Lcom/google/zxing/WriterException;->printStackTrace()V

    goto :goto_1

    :cond_0
    invoke-virtual {v13}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v5

    invoke-virtual {v13}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v9

    mul-int v4, v5, v9

    new-array v3, v4, [I

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v0, v9, :cond_3

    mul-int v12, v18, v5

    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v0, v5, :cond_2

    add-int v6, v12, v17

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_1

    const/high16 v4, -0x1000000

    :goto_4
    aput v4, v3, v6

    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :cond_1
    const/4 v4, -0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    :cond_3
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Setting_SupportMenuImeiBarCode"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/IMEIBarcodeDisplayActivity;->finish()V

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/deviceinfo/IMEIBarcodeDisplayActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/IMEIBarcodeDisplayActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/deviceinfo/IMEIBarcodeDisplayActivity;->strImei:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/IMEIBarcodeDisplayActivity;->strImei:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/IMEIBarcodeDisplayActivity;->strImei:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/IMEIBarcodeDisplayActivity;->finish()V

    :goto_0
    return-void

    :cond_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b1392

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/IMEIBarcodeDisplayActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040135

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1103dc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v4, 0x7f1103dd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/IMEIBarcodeDisplayActivity;->strImei:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/deviceinfo/IMEIBarcodeDisplayActivity;->makeBarcode(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/IMEIBarcodeDisplayActivity;->strImei:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/IMEIBarcodeDisplayActivity;->finish()V

    return-void
.end method
