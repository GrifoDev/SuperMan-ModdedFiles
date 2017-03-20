.class public Lcom/android/contacts/common/util/LocalizedNameResolver;
.super Ljava/lang/Object;
.source "LocalizedNameResolver.java"


# static fields
.field private static final CONTACTS_DATA_KIND:Ljava/lang/String; = "ContactsDataKind"

.field private static final TAG:Ljava/lang/String; = "LocalizedNameResolver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllContactsName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 53
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/android/contacts/common/util/LocalizedNameResolver;->resolveAllContactsName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static loadAllContactsNameFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 89
    :try_start_0
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 91
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v10, 0x2

    if-eq v8, v10, :cond_1

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    .line 96
    :cond_1
    const/4 v10, 0x2

    if-eq v8, v10, :cond_2

    .line 97
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "No start tag found"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "type":I
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Problem reading XML"

    invoke-direct {v10, v11, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 100
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v8    # "type":I
    :cond_2
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 101
    .local v1, "depth":I
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v10, 0x3

    if-ne v8, v10, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v1, :cond_7

    :cond_4
    const/4 v10, 0x1

    if-eq v8, v10, :cond_7

    .line 103
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "name":Ljava/lang/String;
    const/4 v10, 0x2

    if-ne v8, v10, :cond_3

    const-string v10, "ContactsDataKind"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 105
    sget-object v10, Lcom/android/incallui/R$styleable;->ContactsDataKind:[I

    invoke-virtual {p0, v0, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 109
    .local v9, "typedArray":Landroid/content/res/TypedArray;
    const/4 v10, 0x5

    :try_start_2
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 111
    .local v5, "nonResourceString":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 135
    :try_start_3
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 139
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "nonResourceString":Ljava/lang/String;
    .end local v9    # "typedArray":Landroid/content/res/TypedArray;
    :goto_0
    return-object v5

    .line 117
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "nonResourceString":Ljava/lang/String;
    .restart local v9    # "typedArray":Landroid/content/res/TypedArray;
    :cond_5
    const/4 v10, 0x5

    const/4 v11, 0x0

    :try_start_4
    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    .line 119
    .local v3, "id":I
    if-nez v3, :cond_6

    const/4 v5, 0x0

    .line 135
    .end local v5    # "nonResourceString":Ljava/lang/String;
    :try_start_5
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 142
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v1    # "depth":I
    .end local v3    # "id":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "typedArray":Landroid/content/res/TypedArray;
    :catch_1
    move-exception v2

    .line 143
    .local v2, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Problem reading XML"

    invoke-direct {v10, v11, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 122
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v1    # "depth":I
    .restart local v3    # "id":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "nonResourceString":Ljava/lang/String;
    .restart local v8    # "type":I
    .restart local v9    # "typedArray":Landroid/content/res/TypedArray;
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v6

    .line 125
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_7
    invoke-virtual {v6, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v7

    .line 130
    .local v7, "resources":Landroid/content/res/Resources;
    :try_start_8
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v5

    .line 135
    .end local v5    # "nonResourceString":Ljava/lang/String;
    :try_start_9
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 126
    .end local v7    # "resources":Landroid/content/res/Resources;
    .restart local v5    # "nonResourceString":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 127
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x0

    .line 135
    .end local v5    # "nonResourceString":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 131
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "nonResourceString":Ljava/lang/String;
    .restart local v7    # "resources":Landroid/content/res/Resources;
    :catch_3
    move-exception v2

    .line 132
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v5, 0x0

    .line 135
    .end local v5    # "nonResourceString":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "id":I
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v10

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    throw v10
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 139
    .end local v4    # "name":Ljava/lang/String;
    .end local v9    # "typedArray":Landroid/content/res/TypedArray;
    :cond_7
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static resolveAllContactsName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 65
    .local v0, "am":Landroid/accounts/AccountManager;
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 66
    .local v1, "auth":Landroid/accounts/AuthenticatorDescription;
    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    iget-object v2, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/contacts/common/util/LocalizedNameResolver;->resolveAllContactsNameFromMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .end local v1    # "auth":Landroid/accounts/AuthenticatorDescription;
    :goto_1
    return-object v2

    .line 65
    .restart local v1    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static resolveAllContactsNameFromMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->loadContactsXml(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 80
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v0, :cond_0

    .line 81
    invoke-static {p0, v0, p1}, Lcom/android/contacts/common/util/LocalizedNameResolver;->loadAllContactsNameFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
