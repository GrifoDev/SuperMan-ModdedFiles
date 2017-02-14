.class public final Lcn/com/xy/sms/sdk/ui/popu/util/a;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->a:I

    iput v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->b:I

    iput v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->c:I

    iput v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->d:I

    iput v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->e:F

    iput v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->f:F

    iput v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->g:F

    iput v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->h:F

    iput v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->i:I

    iput v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->j:I

    iput v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->k:I

    iput v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->l:I

    iput v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->m:I

    iput v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->n:I

    iput v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->o:I

    iput v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->p:I

    iput v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->q:I

    const/4 v0, -0x1

    iput v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->r:I

    iput v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->s:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcn/com/xy/sms/sdk/ui/popu/util/a;
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    new-instance v1, Lcn/com/xy/sms/sdk/ui/popu/util/a;

    invoke-direct {v1}, Lcn/com/xy/sms/sdk/ui/popu/util/a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    const-string/jumbo v5, "TL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "TR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "BL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "BR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "TP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "SC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "SW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "DW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "DG"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string/jumbo v5, "CX"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string/jumbo v5, "CY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string/jumbo v5, "GT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string/jumbo v5, "GR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string/jumbo v5, "W"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string/jumbo v5, "H"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string/jumbo v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string/jumbo v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string/jumbo v5, "E"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string/jumbo v5, "A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_2
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v1, Lcn/com/xy/sms/sdk/ui/popu/util/a;->e:F
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseColorParamStr: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x2

    :try_start_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v1, Lcn/com/xy/sms/sdk/ui/popu/util/a;->f:F

    goto :goto_2

    :cond_4
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v1, Lcn/com/xy/sms/sdk/ui/popu/util/a;->g:F

    goto :goto_2

    :cond_5
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v1, Lcn/com/xy/sms/sdk/ui/popu/util/a;->h:F

    goto :goto_2

    :cond_6
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcn/com/xy/sms/sdk/ui/popu/util/a;->i:I

    goto/16 :goto_2

    :cond_7
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcn/com/xy/sms/sdk/ui/popu/util/a;->j:I

    goto/16 :goto_2

    :cond_8
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcn/com/xy/sms/sdk/ui/popu/util/a;->k:I

    goto/16 :goto_2

    :cond_9
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcn/com/xy/sms/sdk/ui/popu/util/a;->l:I

    goto/16 :goto_2

    :cond_a
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcn/com/xy/sms/sdk/ui/popu/util/a;->m:I

    goto/16 :goto_2

    :cond_b
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v1, Lcn/com/xy/sms/sdk/ui/popu/util/a;->p:I

    goto/16 :goto_2

    :cond_c
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v1, Lcn/com/xy/sms/sdk/ui/popu/util/a;->q:I

    goto/16 :goto_2

    :cond_d
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcn/com/xy/sms/sdk/ui/popu/util/a;->r:I

    goto/16 :goto_2

    :cond_e
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v1, Lcn/com/xy/sms/sdk/ui/popu/util/a;->s:I

    goto/16 :goto_2

    :cond_f
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v1, Lcn/com/xy/sms/sdk/ui/popu/util/a;->n:I

    goto/16 :goto_2

    :cond_10
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v1, Lcn/com/xy/sms/sdk/ui/popu/util/a;->o:I

    goto/16 :goto_2

    :cond_11
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcn/com/xy/sms/sdk/ui/popu/util/a;->a:I

    goto/16 :goto_2

    :cond_12
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcn/com/xy/sms/sdk/ui/popu/util/a;->b:I

    goto/16 :goto_2

    :cond_13
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcn/com/xy/sms/sdk/ui/popu/util/a;->c:I

    goto/16 :goto_2

    :cond_14
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcn/com/xy/sms/sdk/ui/popu/util/a;->d:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    :try_start_0
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->d:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    packed-switch v1, :pswitch_data_0

    :goto_0
    move-object v3, v0

    :try_start_2
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->b:I

    if-ne v0, v6, :cond_4

    :cond_0
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->c:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v0, v6, :cond_5

    :cond_1
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_6

    :try_start_3
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->a:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    if-ne v0, v6, :cond_7

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_8

    const/16 v0, 0x8

    :try_start_4
    new-array v0, v0, [F

    const/4 v3, 0x0

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->e:F

    aput v4, v0, v3

    const/4 v3, 0x1

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->e:F

    aput v4, v0, v3

    const/4 v3, 0x2

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->f:F

    aput v4, v0, v3

    const/4 v3, 0x3

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->f:F

    aput v4, v0, v3

    const/4 v3, 0x4

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->g:F

    aput v4, v0, v3

    const/4 v3, 0x5

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->g:F

    aput v4, v0, v3

    const/4 v3, 0x6

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->h:F

    aput v4, v0, v3

    const/4 v3, 0x7

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->h:F

    aput v4, v0, v3

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->j:I

    if-ne v0, v6, :cond_9

    :goto_3
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->n:I

    if-gtz v0, :cond_a

    :cond_2
    :goto_4
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->p:I

    if-gtz v0, :cond_b

    :cond_3
    :goto_5
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->r:I

    if-gez v0, :cond_c

    :goto_6
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->s:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    if-gtz v0, :cond_d

    :goto_7
    return-object v1

    :pswitch_0
    :try_start_5
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :pswitch_3
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :pswitch_4
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :pswitch_5
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :pswitch_6
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :pswitch_7
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_6
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getGDrawable: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getGDrawable: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_4
    :try_start_7
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->a:I

    if-eq v0, v6, :cond_0

    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->c:I

    if-eq v0, v6, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->a:I

    aput v4, v0, v1

    const/4 v1, 0x1

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->b:I

    aput v4, v0, v1

    const/4 v1, 0x2

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->c:I

    aput v4, v0, v1

    goto/16 :goto_1

    :cond_5
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->a:I

    if-eq v0, v6, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->a:I

    aput v4, v0, v1

    const/4 v1, 0x1

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->c:I

    aput v4, v0, v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    :cond_6
    :try_start_8
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    :try_start_9
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->i:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :goto_8
    :try_start_a
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getGDrawable: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_2

    :cond_7
    :try_start_b
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    :try_start_c
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->a:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_2

    :cond_8
    return-object v2

    :cond_9
    :try_start_d
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->k:I

    iget v3, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->j:I

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->l:I

    int-to-float v4, v4

    iget v5, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->m:I

    int-to-float v5, v5

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    goto/16 :goto_3

    :cond_a
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->o:I

    if-lez v0, :cond_2

    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->n:I

    iget v3, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->o:I

    invoke-virtual {v1, v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    goto/16 :goto_4

    :cond_b
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->q:I

    if-lez v0, :cond_3

    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->p:I

    int-to-float v0, v0

    iget v3, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->q:I

    int-to-float v3, v3

    invoke-virtual {v1, v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    goto/16 :goto_5

    :cond_c
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->r:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    goto/16 :goto_6

    :cond_d
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/a;->s:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_7

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
