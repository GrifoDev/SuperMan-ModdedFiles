.class Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;
.super Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventKindBuilder"
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

    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "yearOptional"

    invoke-static {p1, v0, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->a(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "birthday"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->a(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType$EditType;->a(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "anniversary"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->a(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "other"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->a(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "custom"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v3, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->a(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType$EditType;->a(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    const-string v1, "data3"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/account/AccountType$EditType;->a(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "event"

    return-object v0
.end method

.method public a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 12
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

    const v7, 0x7f09016e

    const/4 v11, 0x1

    const/4 v4, 0x0

    const-string v5, "vnd.android.cursor.item/contact_event"

    const-string v6, "data2"

    const/16 v8, 0x78

    new-instance v9, Lcom/android/contacts/common/model/account/BaseAccountType$EventActionInflater;

    invoke-direct {v9}, Lcom/android/contacts/common/model/account/BaseAccountType$EventActionInflater;-><init>()V

    new-instance v10, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string v0, "data1"

    invoke-direct {v10, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v10}, Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->n:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v3, "data1"

    invoke-direct {v2, v3, v7, v11}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "dateWithTime"

    invoke-static {p3, v1, v4}, Lcom/android/contacts/common/model/account/BaseAccountType;->a(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/contacts/common/util/CommonDateUtils;->d:Ljava/text/SimpleDateFormat;

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->p:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/android/contacts/common/util/CommonDateUtils;->c:Ljava/text/SimpleDateFormat;

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->q:Ljava/text/SimpleDateFormat;

    :goto_0
    new-array v1, v11, [Lcom/android/contacts/common/model/dataitem/DataKind;

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/google/a/b/u;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v1, Lcom/android/contacts/common/util/CommonDateUtils;->a:Ljava/text/SimpleDateFormat;

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->p:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/android/contacts/common/util/CommonDateUtils;->b:Ljava/text/SimpleDateFormat;

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->q:Ljava/text/SimpleDateFormat;

    goto :goto_0
.end method
