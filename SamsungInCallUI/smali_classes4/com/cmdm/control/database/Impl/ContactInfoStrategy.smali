.class public Lcom/cmdm/control/database/Impl/ContactInfoStrategy;
.super Lcom/cmdm/control/database/IDBStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cmdm/control/database/IDBStrategy",
        "<",
        "Lcom/cmdm/control/bean/ContactInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final columns:[Ljava/lang/String;

.field private final tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/cmdm/control/database/IDBStrategy;-><init>(Landroid/content/Context;)V

    const-string v0, "contact_info"

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->tableName:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "autoid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contactnum"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contactname"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "defaultcontactnum"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contactid"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "statu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "namepinyin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photouri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "shortnum"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "set_time"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "photoType"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->columns:[Ljava/lang/String;

    const-string v0, "contact_info"

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->columns:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/ContactInfo;
    .locals 3

    new-instance v0, Lcom/cmdm/control/bean/ContactInfo;

    invoke-direct {v0}, Lcom/cmdm/control/bean/ContactInfo;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "contactid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cmdm/control/bean/ContactInfo;->contactid:Ljava/lang/String;

    const-string v2, "contactnum"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    const-string v2, "contactname"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    const-string v2, "statu"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cmdm/control/bean/ContactInfo;->statu:Ljava/lang/String;

    const-string v2, "shortnum"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/ContactInfo;->setBindingShortNum(Ljava/lang/String;)V

    const-string v2, "defaultcontactnum"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cmdm/control/bean/ContactInfo;->defaultcontactnum:Ljava/lang/String;

    const-string v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cmdm/control/bean/ContactInfo;->type:Ljava/lang/String;

    const-string v2, "photouri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/ContactInfo;->setPhotoUri(Ljava/lang/String;)V

    const-string v2, "set_time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cmdm/control/bean/ContactInfo;->set_time:Ljava/lang/String;

    const-string v2, "namepinyin"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/ContactInfo;->setNamePinyin(Ljava/lang/String;)V

    const-string v2, "photoType"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cmdm/control/bean/ContactInfo;->photoType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/ContactInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/ContactInfo;
    .locals 3

    new-instance v0, Lcom/cmdm/control/bean/ContactInfo;

    invoke-direct {v0}, Lcom/cmdm/control/bean/ContactInfo;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "contactid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cmdm/control/bean/ContactInfo;->contactid:Ljava/lang/String;

    const-string v2, "contactnum"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    const-string v2, "contactname"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    const-string v2, "statu"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cmdm/control/bean/ContactInfo;->statu:Ljava/lang/String;

    const-string v2, "defaultcontactnum"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cmdm/control/bean/ContactInfo;->defaultcontactnum:Ljava/lang/String;

    const-string v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cmdm/control/bean/ContactInfo;->type:Ljava/lang/String;

    const-string v2, "photouri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/ContactInfo;->setPhotoUri(Ljava/lang/String;)V

    const-string v2, "set_time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cmdm/control/bean/ContactInfo;->set_time:Ljava/lang/String;

    const-string v2, "namepinyin"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmdm/control/bean/ContactInfo;->setNamePinyin(Ljava/lang/String;)V

    const-string v2, "photoType"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cmdm/control/bean/ContactInfo;->photoType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/ContactInfo;

    move-result-object v0

    return-object v0
.end method

.method protected insert(Lcom/cmdm/control/bean/ContactInfo;)Z
    .locals 6

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "contactid"

    iget-object v4, p1, Lcom/cmdm/control/bean/ContactInfo;->contactid:Ljava/lang/String;

    invoke-static {v4}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "contactnum"

    iget-object v4, p1, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-static {v4}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "contactname"

    iget-object v4, p1, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statu"

    iget-object v4, p1, Lcom/cmdm/control/bean/ContactInfo;->statu:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "defaultcontactnum"

    iget-object v4, p1, Lcom/cmdm/control/bean/ContactInfo;->defaultcontactnum:Ljava/lang/String;

    invoke-static {v4}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    iget-object v4, p1, Lcom/cmdm/control/bean/ContactInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "namepinyin"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/ContactInfo;->getNamePinyin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "photouri"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/ContactInfo;->getPhotoUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "shortnum"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/ContactInfo;->getBindingShortNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "photoType"

    iget-object v4, p1, Lcom/cmdm/control/bean/ContactInfo;->photoType:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    const-string v4, "contact_info"

    invoke-virtual {v1, v0, v4}, Lcom/cmdm/control/database/DBHelper;->insert(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic insert(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/cmdm/control/bean/ContactInfo;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->insert(Lcom/cmdm/control/bean/ContactInfo;)Z

    move-result v0

    return v0
.end method

.method public update()V
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    const-string v1, "update contact_info set type=-1 where 1=1"

    invoke-virtual {v0, v1}, Lcom/cmdm/control/database/DBHelper;->excute(Ljava/lang/String;)V

    return-void
.end method

.method public update(Lcom/cmdm/control/bean/ContactInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update contact_info set statu="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/cmdm/control/bean/ContactInfo;->statu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where contactid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/cmdm/control/bean/ContactInfo;->contactid:Ljava/lang/String;

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/database/DBHelper;->excute(Ljava/lang/String;)V

    return-void
.end method

.method public updateShrotnum(Lcom/cmdm/control/bean/ContactInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/cmdm/control/database/Impl/ContactInfoStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update contact_info set shortnum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cmdm/control/bean/ContactInfo;->getBindingShortNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where contactid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/cmdm/control/bean/ContactInfo;->contactid:Ljava/lang/String;

    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmdm/control/database/DBHelper;->excute(Ljava/lang/String;)V

    return-void
.end method
