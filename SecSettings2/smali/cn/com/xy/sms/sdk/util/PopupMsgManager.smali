.class public Lcn/com/xy/sms/sdk/util/PopupMsgManager;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static businessSmsList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static hasPhoneThird:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static hasRemoveData:Z

.field public static removePhoneNumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->hasRemoveData:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->removePhoneNumList:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->hasPhoneThird:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addAllToFirst(Ljava/util/LinkedList;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;",
            ">;)I"
        }
    .end annotation

    const-class v4, Lcn/com/xy/sms/sdk/util/PopupMsgManager;

    monitor-enter v4

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    if-gez v3, :cond_1

    :cond_0
    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->removePhoneNumList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "next addAllToFirst size: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return v1

    :cond_1
    :try_start_1
    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "size: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " size2: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v2, v3

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    const-string/jumbo v6, "opensms_enable"

    invoke-virtual {v0, v6}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v6, :cond_4

    :cond_2
    sget-object v6, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->removePhoneNumList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_1
    if-eqz v5, :cond_6

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_4
    const-string/jumbo v8, "false"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_5
    sget-object v6, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_3

    :cond_6
    if-nez v3, :cond_3

    sget-object v1, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static addThirdPopupMsgData(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "phoneNumber"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    if-nez v0, :cond_3

    :cond_0
    move-object v0, v1

    move v1, v2

    :goto_0
    if-nez v1, :cond_7

    :cond_1
    new-instance v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;-><init>()V

    iput-object p0, v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->valueMap:Ljava/util/Map;

    iput-object v4, v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->originatingAddress:Ljava/lang/String;

    :cond_2
    :goto_1
    if-nez v0, :cond_8

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "addThirdPopupMsgData phoneNumber"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " size :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return v3

    :cond_3
    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v0, v1

    :cond_4
    if-nez v5, :cond_6

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->messageBody:Ljava/lang/String;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_1

    iput-object p0, v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->valueMap:Ljava/util/Map;

    iput-object v4, v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->originatingAddress:Ljava/lang/String;

    sget-object v1, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->hasPhoneThird:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->hasPhoneThird:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    sget-object v1, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static declared-synchronized clearBusinessMessage(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;",
            ">;)V"
        }
    .end annotation

    const-class v1, Lcn/com/xy/sms/sdk/util/PopupMsgManager;

    monitor-enter v1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6e05\u9664\u6240\u6709\u77ed\u4fe1 \u6570: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " \u5269\u4f59: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p0}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static clearPhoneThird()V
    .locals 1

    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->hasPhoneThird:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public static clearPopup()V
    .locals 1

    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->clearPopup()V

    return-void
.end method

.method public static declared-synchronized clearUserClickBusinessMessage()I
    .locals 6

    const/4 v0, 0x0

    const-class v2, Lcn/com/xy/sms/sdk/util/PopupMsgManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    const-string/jumbo v5, "opensms_enable"

    invoke-virtual {v0, v5}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "false"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    monitor-exit v2

    return v0

    :cond_3
    :try_start_2
    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    monitor-exit v2

    return v0
.end method

.method public static containsPhoneThird(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->hasPhoneThird:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getBusinessMessageSize()I
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/util/PopupMsgManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getBussinessMessageByIndex(I)Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;
    .locals 5

    const-class v1, Lcn/com/xy/sms/sdk/util/PopupMsgManager;

    monitor-enter v1

    if-gez p0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getBussinessMessageByIndex: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getHasRemoveData()Z
    .locals 1

    sget-boolean v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->hasRemoveData:Z

    return v0
.end method

.method public static declared-synchronized removeBusinessMessage(Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;)Z
    .locals 5

    const-class v1, Lcn/com/xy/sms/sdk/util/PopupMsgManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6e05\u9664\u77ed\u4fe1: phone "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->originatingAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "removeBusinessMessage: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeBusinessMessageByIndex(I)Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;
    .locals 5

    const-class v1, Lcn/com/xy/sms/sdk/util/PopupMsgManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "removeBusinessMessageByIndex: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static removeBusinessMessageByNum(Landroid/content/Context;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_4

    if-eqz p2, :cond_3

    iget-object v0, v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->messageBody:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removeBusinessMessageByNum: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_1
    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->removePhoneNumList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->hasRemoveData:Z

    goto :goto_1

    :cond_5
    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->removePhoneNumList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_6
    return-void
.end method

.method public static removePhoneThird(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->hasPhoneThird:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setHasRemoveData(Z)V
    .locals 0

    sput-boolean p0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->hasRemoveData:Z

    return-void
.end method
