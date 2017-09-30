.class public Lcom/android/contacts/common/model/account/ExternalAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;


# static fields
.field private static final i:[Ljava/lang/String;


# instance fields
.field private final j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.provider.ALTERNATE_CONTACTS_STRUCTURE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.provider.CONTACTS_STRUCTURE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/model/account/ExternalAccountType;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/common/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/res/XmlResourceParser;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/res/XmlResourceParser;)V
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    iput-boolean p3, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->j:Z

    iput-object p2, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->d:Ljava/lang/String;

    if-nez p4, :cond_0

    invoke-static {p1, p2}, Lcom/android/contacts/common/model/account/ExternalAccountType;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p4

    :cond_0
    if-eqz p4, :cond_1

    :try_start_0
    invoke-virtual {p0, p1, p4}, Lcom/android/contacts/common/model/account/ExternalAccountType;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->x:Z

    if-eqz v0, :cond_4

    const-string v0, "vnd.android.cursor.item/name"

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/ExternalAccountType;->b(Ljava/lang/String;)V

    const-string v0, "#displayName"

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/ExternalAccountType;->b(Ljava/lang/String;)V

    const-string v0, "#phoneticName"

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/ExternalAccountType;->b(Ljava/lang/String;)V

    const-string v0, "vnd.android.cursor.item/photo"

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/ExternalAccountType;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p4, :cond_2

    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->t:Ljava/util/List;

    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->d:Ljava/lang/String;

    const-string v3, "inviteContactActionLabel"

    invoke-static {p1, v0, v2, v3}, Lcom/android/contacts/common/model/account/ExternalAccountType;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->o:I

    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->d:Ljava/lang/String;

    const-string v3, "viewGroupActionLabel"

    invoke-static {p1, v0, v2, v3}, Lcom/android/contacts/common/model/account/ExternalAccountType;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->s:I

    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->d:Ljava/lang/String;

    const-string v3, "accountTypeLabel"

    invoke-static {p1, v0, v2, v3}, Lcom/android/contacts/common/model/account/ExternalAccountType;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->e:I

    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->v:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->d:Ljava/lang/String;

    const-string v3, "accountTypeIcon"

    invoke-static {p1, v0, v2, v3}, Lcom/android/contacts/common/model/account/ExternalAccountType;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->f:I

    iput-boolean v1, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->g:Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->c(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->d(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->e(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->l(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    :try_end_2
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, v2

    :goto_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem reading XML"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5

    if-eqz p4, :cond_5

    const-string v1, " in line "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, " for external package "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ExternalAccountType"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p4, :cond_3

    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz p4, :cond_6

    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v0

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_1

    const-string v1, "ExternalAccountType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be a resource name beginnig with \'@\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ExternalAccountType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "ExternalAccountType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 10

    const/4 v9, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.SyncAdapter"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x84

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_0

    sget-object v6, Lcom/android/contacts/common/model/account/ExternalAccountType;->i:[Ljava/lang/String;

    array-length v7, v6

    move v1, v2

    :goto_0
    if-ge v1, v7, :cond_0

    aget-object v8, v6, v1

    invoke-virtual {v5, v3, v8}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "ExternalAccountType"

    invoke-static {v1, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ExternalAccountType"

    const-string v3, "Metadata loaded from: %s, %s, %s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    aput-object v6, v4, v2

    const/4 v2, 0x1

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x2

    aput-object v8, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->a(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    :cond_0
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v9, :cond_1

    if-ne v0, v8, :cond_0

    :cond_1
    if-eq v0, v9, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    const-string v2, "Problem reading XML"

    invoke-direct {v1, v2, v0}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ContactsAccountType"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ContactsSource"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Top level element must be ContactsAccountType, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    const-string v2, "Problem reading XML"

    invoke-direct {v1, v2, v0}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_3
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->w:Z

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_11

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ExternalAccountType"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "ExternalAccountType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v5, "editContactActivity"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iput-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->k:Ljava/lang/String;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const-string v5, "createContactActivity"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iput-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->l:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v5, "inviteContactActivity"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iput-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->m:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v5, "inviteContactActionLabel"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iput-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->n:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v5, "viewContactNotifyService"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iput-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->p:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const-string v5, "viewGroupActivity"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iput-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->q:Ljava/lang/String;

    goto :goto_1

    :cond_a
    const-string v5, "viewGroupActionLabel"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iput-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->r:Ljava/lang/String;

    goto :goto_1

    :cond_b
    const-string v5, "dataSet"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iput-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->b:Ljava/lang/String;

    goto :goto_1

    :cond_c
    const-string v5, "extensionPackageNames"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v3, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->t:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_d
    const-string v5, "accountType"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iput-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->a:Ljava/lang/String;

    goto :goto_1

    :cond_e
    const-string v5, "accountTypeLabel"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iput-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->u:Ljava/lang/String;

    goto :goto_1

    :cond_f
    const-string v5, "accountTypeIcon"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    iput-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->v:Ljava/lang/String;

    goto :goto_1

    :cond_10
    const-string v4, "ExternalAccountType"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported attribute "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_11
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_12
    :goto_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-ne v2, v10, :cond_13

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_17

    :cond_13
    if-eq v2, v8, :cond_17

    if-ne v2, v9, :cond_12

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    if-ne v2, v3, :cond_12

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EditSchema"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->x:Z

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    goto :goto_2

    :cond_14
    const-string v3, "ContactsDataKind"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/android/incallui/R$styleable;->ContactsDataKind:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-direct {v3}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->b:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    new-instance v5, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v5, v4}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v5, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->h:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    :cond_15
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_16

    new-instance v5, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v5, v4}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v5, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->j:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    :cond_16
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/model/account/ExternalAccountType;->a(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :cond_17
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->j:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->x:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->m:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->p:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->t:Ljava/util/List;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->w:Z

    return v0
.end method
