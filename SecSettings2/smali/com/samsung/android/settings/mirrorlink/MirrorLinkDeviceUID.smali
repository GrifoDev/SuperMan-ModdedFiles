.class public Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MirrorLinkDeviceUID.java"


# instance fields
.field private mTextViewNumber:Landroid/widget/TextView;

.field private mTextViewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewTitle:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewNumber:Landroid/widget/TextView;

    return-void
.end method

.method private updateDeviceUID()V
    .locals 21

    const/4 v14, 0x0

    const-string/jumbo v16, " "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    const-string/jumbo v17, "ril.serialnumber"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    const-string/jumbo v17, "00000000000"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    :cond_0
    const-string/jumbo v17, "ro.serialno"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_1
    if-eqz v14, :cond_4

    :try_start_0
    const-string/jumbo v17, "SHA-1"

    invoke-static/range {v17 .. v17}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    const-string/jumbo v3, "6ba7b8129dad11d180b400c04fd430c8"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    new-array v4, v0, [B

    const/4 v8, 0x0

    :goto_0
    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_2

    mul-int/lit8 v17, v8, 0x2

    mul-int/lit8 v18, v8, 0x2

    add-int/lit8 v18, v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v17, "UTF-8"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v0, v4

    move/from16 v17, v0

    array-length v0, v5

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    new-array v9, v0, [B

    array-length v0, v4

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v4, v0, v9, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v0, v4

    move/from16 v17, v0

    array-length v0, v5

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v5, v0, v9, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {v10, v9}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v17, 0x8

    aget-byte v15, v12, v17

    and-int/lit8 v17, v15, 0x3f

    move/from16 v0, v17

    int-to-byte v15, v0

    or-int/lit16 v0, v15, 0x80

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    const/16 v18, 0x8

    aput-byte v17, v12, v18

    const/4 v8, 0x0

    :goto_1
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_3

    aget-byte v17, v12, v8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v17, "5"

    const/16 v18, 0xc

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v13, v0, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v17, "%s-%s-%s-%s-%s"

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    const/16 v19, 0x8

    const/16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    aput-object v19, v18, v20

    const/16 v19, 0xc

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    aput-object v19, v18, v20

    const/16 v19, 0x10

    const/16 v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x3

    aput-object v19, v18, v20

    const/16 v19, 0x14

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x4

    aput-object v19, v18, v20

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const v1, 0x7f040181

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f110497

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f110498

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->updateDeviceUID()V

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method
