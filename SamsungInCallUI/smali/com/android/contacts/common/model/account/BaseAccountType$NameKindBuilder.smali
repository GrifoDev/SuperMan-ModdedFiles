.class Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;
.super Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;-><init>()V

    return-void
.end method

.method private static a(ZLjava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    return-object v0
.end method

.method public a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    const-string v1, "supportsDisplayName"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->a(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "supportsPrefix"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->a(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "supportsMiddleName"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lcom/android/contacts/common/model/account/BaseAccountType;->a(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "supportsSuffix"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5}, Lcom/android/contacts/common/model/account/BaseAccountType;->a(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "supportsPhoneticFamilyName"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v5, v6}, Lcom/android/contacts/common/model/account/BaseAccountType;->a(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "supportsPhoneticMiddleName"

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v6, v7}, Lcom/android/contacts/common/model/account/BaseAccountType;->a(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "supportsPhoneticGivenName"

    const/4 v8, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v7, v8}, Lcom/android/contacts/common/model/account/BaseAccountType;->a(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "supportsDisplayName"

    invoke-static {v1, v8}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->a(ZLjava/lang/String;)V

    const-string v1, "supportsPrefix"

    invoke-static {v2, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->a(ZLjava/lang/String;)V

    const-string v1, "supportsMiddleName"

    invoke-static {v3, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->a(ZLjava/lang/String;)V

    const-string v1, "supportsSuffix"

    invoke-static {v4, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->a(ZLjava/lang/String;)V

    const-string v1, "supportsPhoneticFamilyName"

    invoke-static {v5, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->a(ZLjava/lang/String;)V

    const-string v1, "supportsPhoneticMiddleName"

    invoke-static {v6, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->a(ZLjava/lang/String;)V

    const-string v1, "supportsPhoneticGivenName"

    invoke-static {v7, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->a(ZLjava/lang/String;)V

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v13

    const/4 v5, 0x0

    const-string v6, "vnd.android.cursor.item/name"

    const/4 v7, 0x0

    const v8, 0x7f09023f

    const/4 v9, -0x1

    new-instance v10, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const v1, 0x7f09023f

    invoke-direct {v10, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    new-instance v11, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v11, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v11}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->a(Lcom/android/contacts/common/model/dataitem/DataKind;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data1"

    const v5, 0x7f090175

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data4"

    const v5, 0x7f090247

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->c(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data3"

    const v5, 0x7f090240

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->c(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data5"

    const v5, 0x7f090242

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->c(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data2"

    const v5, 0x7f090241

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->c(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data6"

    const v5, 0x7f09024a

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->c(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data9"

    const v5, 0x7f090244

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data8"

    const v5, 0x7f090246

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data7"

    const v4, 0x7f090245

    const/16 v5, 0xc1

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    const-string v6, "#displayName"

    const/4 v7, 0x0

    const v8, 0x7f09023f

    const/4 v9, -0x1

    new-instance v10, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const v1, 0x7f09023f

    invoke-direct {v10, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    new-instance v11, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v11, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v11}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->l:I

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data1"

    const v5, 0x7f090175

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->b(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v12, :cond_0

    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data4"

    const v5, 0x7f090247

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->c(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data3"

    const v5, 0x7f090240

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->c(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data5"

    const v5, 0x7f090242

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->c(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data2"

    const v5, 0x7f090241

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->c(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data6"

    const v4, 0x7f09024a

    const/16 v5, 0x2061

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditField;->c(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v5, 0x1

    const-string v6, "#phoneticName"

    const/4 v7, 0x0

    const v8, 0x7f090243

    const/4 v9, -0x1

    new-instance v10, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const v1, 0x7f09023f

    invoke-direct {v10, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    new-instance v11, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v11, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v11}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->l:I

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "#phoneticName"

    const v5, 0x7f090243

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->b(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data9"

    const v5, 0x7f090244

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->c(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data8"

    const v5, 0x7f090246

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->c(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data7"

    const v4, 0x7f090245

    const/16 v5, 0xc1

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditField;->c(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v13

    :cond_0
    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data4"

    const v5, 0x7f090247

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->c(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data2"

    const v5, 0x7f090241

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->c(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data5"

    const v5, 0x7f090242

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->c(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data3"

    const v5, 0x7f090240

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->c(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data6"

    const v4, 0x7f09024a

    const/16 v5, 0x2061

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditField;->c(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
