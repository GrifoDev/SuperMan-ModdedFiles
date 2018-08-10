.class Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;
.super Ljava/util/HashMap;
.source "HwrLanguageID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/HwrLanguageID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 74

    invoke-direct/range {p0 .. p0}, Ljava/util/HashMap;-><init>()V

    const/16 v69, 0x0

    const/16 v41, 0x1

    const/16 v42, 0x2

    const/16 v18, 0xa

    const/16 v27, 0xb

    const/16 v13, 0xc

    const/16 v37, 0xd

    const/16 v54, 0xe

    const/16 v19, 0xf

    const/16 v57, 0x10

    const/16 v38, 0x53

    const/16 v70, 0x54

    const/16 v71, 0x55

    const/16 v3, 0x56

    const/16 v48, 0x57

    const/16 v65, 0x58

    const/16 v31, 0x59

    const/16 v64, 0x5a

    const/16 v5, 0x5b

    const/16 v24, 0x5c

    const/16 v56, 0x5d

    const/16 v10, 0x5e

    const/16 v52, 0x5f

    const/16 v59, 0x60

    const/16 v11, 0x61

    const/16 v49, 0x62

    const/16 v51, 0x63

    const/16 v63, 0x64

    const/16 v28, 0x65

    const/16 v33, 0x66

    const/16 v43, 0x67

    const/16 v9, 0x68

    const/16 v6, 0x69

    const/16 v68, 0x6a

    const/16 v8, 0x6b

    const/16 v40, 0x6c

    const/16 v66, 0x6d

    const/16 v14, 0x6e

    const/16 v39, 0x6f

    const/16 v67, 0x70

    const/16 v30, 0x71

    const/16 v60, 0xc8

    const/16 v34, 0xc9

    const/16 v32, 0xca

    const/16 v25, 0xcb

    const/16 v36, 0xcc

    const/16 v58, 0xce

    const/16 v4, 0xcf

    const/16 v44, 0xd0

    const/16 v46, 0xd1

    const/16 v22, 0xd2

    const/16 v47, 0xd3

    const/16 v7, 0xd4

    const/16 v23, 0xd5

    const/16 v29, 0xd6

    const/16 v45, 0xd7

    const/16 v62, 0xd8

    const/16 v61, 0xd9

    const/16 v17, 0x12c

    const/16 v15, 0x12d

    const/16 v16, 0x12e

    const/16 v21, 0x136

    const/16 v20, 0x137

    const/16 v26, 0x140

    const/16 v53, 0x14a

    const/16 v12, 0x154

    const/16 v35, 0x15e

    const/16 v50, 0x168

    const/16 v55, 0x3e8

    const/16 v72, 0xa

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "en_US"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xa

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "eng"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x1

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "ko_KR"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x1

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "kor"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x1

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "ko_KR-nh"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x2

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "ko_KR_NoHanJa"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "zh_CN"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "chn"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x54

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "zh_HK"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x55

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "zh_TW"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x53

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "ja_JP"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xb

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "fr_FR"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xc

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "de_DE"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xd

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "it_IT"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xf

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "es_ES"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xe

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "pt_PT"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x10

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "ru_RU"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x57

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "ms_MY"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x15e

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "id_ID"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x58

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "tr_TR"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x59

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "hi_IN"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x5b

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "ar"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x5c

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "fa_IR"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x5a

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "th_TH"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x6b

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "bg_BG"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x6c

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "kk_KZ"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x6d

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "uk_UA"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x6f

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "ka_GE"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x6e

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "el_GR"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x71

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "he_IL"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x70

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "ur_PK"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x6a

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "vi_VN"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x69

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "az_AZ"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x68

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "ca_ES"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x5e

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "cs_CZ"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x61

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "da_DK"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x65

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "ga_IE"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x66

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "hu_HU"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x67

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "lt_LT"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x62

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "nb_NO"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x63

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "nl_NL"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x5f

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "pl_PL"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x5d

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "ro_RO"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x60

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "sl_SI"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x64

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "sv_SE"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xcf

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "af_ZA"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x136

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "es_US"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xd2

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "et_EE"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xcb

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "fi_FI"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x140

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "fr_CA"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xca

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "hr_HR"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xc9

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "hy_AM"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xcc

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "is_IS"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xd0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "lv_LV"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xd1

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "mn_MN"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xd3

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "mr_IN"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x14a

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "pt_BR"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xce

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "sk_SK"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xc8

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "sq_AL"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xd9

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "sr_Cyrl_RS"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xd8

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "sr_Latn_RS"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xd8

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "sr_RS"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xd4

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "be_BY"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x154

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "de_AT"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x12d

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "en_AU"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x12e

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "en_CA"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x12c

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "en_GB"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x137

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "es_MX"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x168

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "nl_BE"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xd5

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "eu_ES"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xd6

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "gl_ES"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0xd7

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "mk_MK"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x56

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "numeric"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v72, 0x3e8

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    const-string/jumbo v73, "resList"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
